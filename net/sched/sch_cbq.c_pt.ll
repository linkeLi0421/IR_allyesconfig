; ModuleID = '/llk/IR_all_yes/net/sched/sch_cbq.c_pt.bc'
source_filename = "../net/sched/sch_cbq.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.cbq_class = type { %struct.Qdisc_class_common, ptr, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i64, i64, i32, i32, i64, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, ptr, %struct.tc_cbq_xstats, ptr, ptr, i32, [16 x ptr], [12 x i8] }
%struct.tc_cbq_xstats = type { i32, i32, i32, i32 }
%struct.cbq_sched_data = type { %struct.Qdisc_class_hash, [9 x i32], [9 x i32], [8 x i8], %struct.cbq_class, i32, [9 x ptr], ptr, ptr, ptr, i32, i64, i32, %struct.hrtimer, %struct.qdisc_watchdog, i32, i32, i32, [12 x i8] }
%struct.Qdisc_class_hash = type { ptr, i32, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.qdisc_watchdog = type { i64, %struct.hrtimer, ptr }
%struct.tc_ratespec = type { i8, i8, i16, i16, i16, i32 }
%struct.qdisc_rate_table = type { %struct.tc_ratespec, [256 x i32], ptr, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.tc_cbq_lssopt = type { i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.tc_cbq_wrropt = type { i8, i8, i8, i8, i32, i32 }
%struct.tc_cbq_fopt = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@cbq_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @cbq_class_ops, [16 x i8] c"cbq\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 608, i32 0, ptr @cbq_enqueue, ptr @cbq_dequeue, ptr @qdisc_peek_dequeued, ptr @cbq_init, ptr @cbq_reset, ptr @cbq_destroy, ptr null, ptr null, ptr null, ptr null, ptr @cbq_dump, ptr @cbq_dump_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_cbq__368_1813_cbq_module_init6 = internal global ptr @cbq_module_init, section ".initcall6.init", align 4
@__exitcall_cbq_module_exit = internal global ptr @cbq_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file369 = internal constant [31 x i8] c"sch_cbq.file=net/sched/sch_cbq\00", section ".modinfo", align 1
@__UNIQUE_ID_license370 = internal constant [20 x i8] c"sch_cbq.license=GPL\00", section ".modinfo", align 1
@cbq_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr @cbq_graft, ptr @cbq_leaf, ptr @cbq_qlen_notify, ptr @cbq_find, ptr @cbq_change_class, ptr @cbq_delete, ptr @cbq_walk, ptr @cbq_tcf_block, ptr @cbq_bind_filter, ptr @cbq_unbind_filter, ptr @cbq_dump_class, ptr @cbq_dump_class_stats }, [40 x i8] zeroinitializer }, align 32
@pfifo_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@cbq_change_class.__msg = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Neither overlimit strategy nor policing attributes can be used for changing class params\00", [39 x i8] zeroinitializer }, align 32
@cbq_change_class.__msg.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid parent id\00", [46 x i8] zeroinitializer }, align 32
@cbq_change_class.__msg.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Parent must be root\00", [44 x i8] zeroinitializer }, align 32
@cbq_change_class.__msg.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to replace specified rate estimator\00", [53 x i8] zeroinitializer }, align 32
@cbq_change_class.__msg.5 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"One of the following attributes MUST be specified: WRR, rate or link sharing\00", [51 x i8] zeroinitializer }, align 32
@cbq_change_class.__msg.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Specified class not found\00", [38 x i8] zeroinitializer }, align 32
@cbq_change_class.__msg.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to generate classid\00", [37 x i8] zeroinitializer }, align 32
@cbq_change_class.__msg.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to find parentid\00", [40 x i8] zeroinitializer }, align 32
@cbq_change_class.__msg.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't create new estimator\00", [34 x i8] zeroinitializer }, align 32
@noop_qdisc = external dso_local global %struct.Qdisc, align 128
@cbq_opt_parse.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CBQ options are required for this operation\00", [52 x i8] zeroinitializer }, align 32
@cbq_policy = internal constant { [8 x %struct.nla_policy], [32 x i8] } { [8 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 20, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 12, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 12, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 12, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 1024, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.22 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@cbq_opt_parse.__msg.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"priority is bigger than TC_CBQ_MAXPRIO\00", [57 x i8] zeroinitializer }, align 32
@cbq_normalize_quanta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014CBQ: class %08x has bad quantum==%ld, repaired.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cbq_normalize_quanta\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sched/sch_cbq.c\00", [44 x i8] zeroinitializer }, align 32
@cbq_normalize_quanta._entry_ptr = internal global ptr @cbq_normalize_quanta._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@cbq_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@qdisc_calculate_pkt_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@cbq_init.__msg = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Rate specification missing or incomplete\00", [55 x i8] zeroinitializer }, align 32
@qdisc_root.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 8]
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"cbq_class_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1773, i32 37 }
@___asan_gen_.24 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 596, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1491, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1500, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1504, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1523, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1563, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1576, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1591, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1602, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1623, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1136, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [11 x i8] c"cbq_policy\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1119, i32 32 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1149, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 902, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 991, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 227, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 271, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.84 = private constant [23 x i8] c"../net/sched/sch_cbq.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1173, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_file369, ptr @__UNIQUE_ID_license370, ptr @__exitcall_cbq_module_exit, ptr @__initcall__kmod_sch_cbq__368_1813_cbq_module_init6, ptr @cbq_module_exit, ptr @cbq_normalize_quanta._entry, ptr @cbq_normalize_quanta._entry_ptr, ptr @cbq_class_ops, ptr @.str, ptr @.str.1, ptr @cbq_change_class.__msg, ptr @cbq_change_class.__msg.2, ptr @cbq_change_class.__msg.3, ptr @cbq_change_class.__msg.4, ptr @cbq_change_class.__msg.5, ptr @cbq_change_class.__msg.6, ptr @cbq_change_class.__msg.7, ptr @cbq_change_class.__msg.8, ptr @cbq_change_class.__msg.9, ptr @cbq_opt_parse.__msg, ptr @cbq_policy, ptr @cbq_opt_parse.__msg.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @cbq_init.__msg], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbq_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbq_change_class.__msg to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbq_change_class.__msg.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbq_change_class.__msg.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbq_change_class.__msg.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbq_change_class.__msg.5 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbq_change_class.__msg.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbq_change_class.__msg.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbq_change_class.__msg.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbq_change_class.__msg.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbq_opt_parse.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbq_policy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbq_opt_parse.__msg.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbq_normalize_quanta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbq_init.__msg to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cbq_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @cbq_qdisc_ops) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cbq_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @cbq_qdisc_ops) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbq_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  %res.i = alloca %struct.tcf_result, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %link.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %0 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priority.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i) #16
  %2 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %res.i, align 4, !annotation !69
  %3 = getelementptr inbounds %struct.anon.118, ptr %res.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !69
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %5 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle.i, align 32
  %xor.i = xor i32 %6, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %xor.i)
  %cmp.i = icmp ugt i32 %xor.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i.i = icmp eq i32 %1, 0
  %or.cond145.i = or i1 %tobool.not.i.i.i, %cmp.i
  br i1 %or.cond145.i, label %entry.if.end.i_crit_edge, label %if.end.i.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %entry
  %hashmask.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %7 = ptrtoint ptr %hashmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hashmask.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %1, 8
  %xor.i.i.i.i = xor i32 %shr.i.i.i.i, %1
  %shr1.i.i.i.i = lshr i32 %xor.i.i.i.i, 4
  %xor2.i.i.i.i = xor i32 %shr1.i.i.i.i, %xor.i.i.i.i
  %and.i.i.i.i = and i32 %8, %xor2.i.i.i.i
  %9 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %privdata.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.hlist_head, ptr %10, i32 %and.i.i.i.i
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %12, null
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 -4
  %tobool4.not3033.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool4.not30.i.i.i = or i1 %tobool2.not.i.i.i, %tobool4.not3033.i.i.i
  br i1 %tobool4.not30.i.i.i, label %if.end.i.i.i.if.end.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i

if.end.i.i.i.if.end.i_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %cl.031.i.i.i = phi ptr [ %add.ptr13.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %13 = ptrtoint ptr %cl.031.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cl.031.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %1)
  %cmp.i.i.i = icmp eq i32 %14, %1
  br i1 %cmp.i.i.i, label %for.body.i.i.i.cbq_classify.exit.thread77_crit_edge, label %for.inc.i.i.i

for.body.i.i.i.cbq_classify.exit.thread77_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_classify.exit.thread77

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %hnode.i.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %hnode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hnode.i.i.i, align 4
  %tobool9.not.i.i.i = icmp eq ptr %16, null
  %add.ptr13.i.i.i = getelementptr i8, ptr %16, i32 -4
  %tobool4.not34.i.i.i = icmp eq ptr %add.ptr13.i.i.i, null
  %tobool4.not.i.i.i = or i1 %tobool9.not.i.i.i, %tobool4.not34.i.i.i
  br i1 %tobool4.not.i.i.i, label %for.inc.i.i.i.if.end.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

for.inc.i.i.i.if.end.i_crit_edge:                 ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.i.i.if.end.i_crit_edge, %if.end.i.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %hashmask.i.i105.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %sw.epilog.i.for.cond.i_crit_edge, %if.end.i
  %head.0.i = phi ptr [ %link.i, %if.end.i ], [ %cl.1.i, %sw.epilog.i.for.cond.i_crit_edge ]
  %defaults.i = getelementptr inbounds %struct.cbq_class, ptr %head.0.i, i32 0, i32 37
  %filter_list.i = getelementptr inbounds %struct.cbq_class, ptr %head.0.i, i32 0, i32 34
  %17 = ptrtoint ptr %filter_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %filter_list.i, align 8
  %call4.i = call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %land.lhs.true5.i, label %for.cond.i.do.end13.i_crit_edge

for.cond.i.do.end13.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13.i

land.lhs.true5.i:                                 ; preds = %for.cond.i
  %call6.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true5.i.do.end13.i_crit_edge, label %land.lhs.true8.i

land.lhs.true5.i.do.end13.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true5.i
  %.b103.i = load i1, ptr @cbq_classify.__warned, align 1
  br i1 %.b103.i, label %land.lhs.true8.i.do.end13.i_crit_edge, label %if.then10.i

land.lhs.true8.i.do.end13.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cbq_classify.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 227, ptr noundef nonnull @.str.15) #16
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then10.i, %land.lhs.true8.i.do.end13.i_crit_edge, %land.lhs.true5.i.do.end13.i_crit_edge, %for.cond.i.do.end13.i_crit_edge
  %call15.i = call i32 @tcf_classify(ptr noundef %skb, ptr noundef null, ptr noundef %18, ptr noundef nonnull %res.i, i1 noundef zeroext true) #16
  %tobool16.not.i = icmp eq ptr %18, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp17.i = icmp slt i32 %call15.i, 0
  %or.cond.i = select i1 %tobool16.not.i, i1 true, i1 %cmp17.i
  br i1 %or.cond.i, label %do.end13.i.fallback.i_crit_edge, label %if.end19.i

do.end13.i.fallback.i_crit_edge:                  ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fallback.i

if.end19.i:                                       ; preds = %do.end13.i
  %19 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %res.i, align 4
  %21 = inttoptr i32 %20 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not.i = icmp eq i32 %20, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end19.i.if.end37.i_crit_edge

if.end19.i.if.end37.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37.i

if.then21.i:                                      ; preds = %if.end19.i
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %23)
  %tobool23.not.i = icmp ult i32 %23, 65536
  br i1 %tobool23.not.i, label %if.else.i, label %if.end.i.i116.i

if.end.i.i116.i:                                  ; preds = %if.then21.i
  %24 = ptrtoint ptr %hashmask.i.i105.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hashmask.i.i105.i, align 4
  %shr.i.i.i106.i = lshr i32 %23, 8
  %xor.i.i.i107.i = xor i32 %shr.i.i.i106.i, %23
  %shr1.i.i.i108.i = lshr i32 %xor.i.i.i107.i, 4
  %xor2.i.i.i109.i = xor i32 %shr1.i.i.i108.i, %xor.i.i.i107.i
  %and.i.i.i110.i = and i32 %25, %xor2.i.i.i109.i
  %26 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %privdata.i, align 4
  %arrayidx.i.i111.i = getelementptr %struct.hlist_head, ptr %27, i32 %and.i.i.i110.i
  %28 = ptrtoint ptr %arrayidx.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i111.i, align 4
  %tobool2.not.i.i112.i = icmp eq ptr %29, null
  %add.ptr.i.i113.i = getelementptr i8, ptr %29, i32 -4
  %tobool4.not3033.i.i114.i = icmp eq ptr %add.ptr.i.i113.i, null
  %tobool4.not30.i.i115.i = or i1 %tobool2.not.i.i112.i, %tobool4.not3033.i.i114.i
  br i1 %tobool4.not30.i.i115.i, label %if.end.i.i116.i.fallback.i_crit_edge, label %if.end.i.i116.i.for.body.i.i119.i_crit_edge

if.end.i.i116.i.for.body.i.i119.i_crit_edge:      ; preds = %if.end.i.i116.i
  br label %for.body.i.i119.i

if.end.i.i116.i.fallback.i_crit_edge:             ; preds = %if.end.i.i116.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fallback.i

for.body.i.i119.i:                                ; preds = %for.inc.i.i125.i.for.body.i.i119.i_crit_edge, %if.end.i.i116.i.for.body.i.i119.i_crit_edge
  %cl.031.i.i117.i = phi ptr [ %add.ptr13.i.i122.i, %for.inc.i.i125.i.for.body.i.i119.i_crit_edge ], [ %add.ptr.i.i113.i, %if.end.i.i116.i.for.body.i.i119.i_crit_edge ]
  %30 = ptrtoint ptr %cl.031.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cl.031.i.i117.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %23)
  %cmp.i.i118.i = icmp eq i32 %31, %23
  br i1 %cmp.i.i118.i, label %for.body.i.i119.i.if.end37.i_crit_edge, label %for.inc.i.i125.i

for.body.i.i119.i.if.end37.i_crit_edge:           ; preds = %for.body.i.i119.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37.i

for.inc.i.i125.i:                                 ; preds = %for.body.i.i119.i
  %hnode.i.i120.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i117.i, i32 0, i32 1
  %32 = ptrtoint ptr %hnode.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hnode.i.i120.i, align 4
  %tobool9.not.i.i121.i = icmp eq ptr %33, null
  %add.ptr13.i.i122.i = getelementptr i8, ptr %33, i32 -4
  %tobool4.not34.i.i123.i = icmp eq ptr %add.ptr13.i.i122.i, null
  %tobool4.not.i.i124.i = or i1 %tobool9.not.i.i121.i, %tobool4.not34.i.i123.i
  br i1 %tobool4.not.i.i124.i, label %for.inc.i.i125.i.fallback.i_crit_edge, label %for.inc.i.i125.i.for.body.i.i119.i_crit_edge

for.inc.i.i125.i.for.body.i.i119.i_crit_edge:     ; preds = %for.inc.i.i125.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i119.i

for.inc.i.i125.i.fallback.i_crit_edge:            ; preds = %for.inc.i.i125.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fallback.i

if.else.i:                                        ; preds = %if.then21.i
  %and28.i = and i32 %23, 15
  %arrayidx.i = getelementptr ptr, ptr %defaults.i, i32 %and28.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %cmp29.i = icmp eq ptr %35, null
  br i1 %cmp29.i, label %if.end33.i, label %if.else.i.if.end37.i_crit_edge

if.else.i.if.end37.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37.i

if.end33.i:                                       ; preds = %if.else.i
  %36 = ptrtoint ptr %defaults.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %defaults.i, align 4
  %cmp34.i = icmp eq ptr %37, null
  br i1 %cmp34.i, label %if.end33.i.fallback.i_crit_edge, label %if.end33.i.if.end37.i_crit_edge

if.end33.i.if.end37.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37.i

if.end33.i.fallback.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fallback.i

if.end37.i:                                       ; preds = %if.end33.i.if.end37.i_crit_edge, %if.else.i.if.end37.i_crit_edge, %for.body.i.i119.i.if.end37.i_crit_edge, %if.end19.i.if.end37.i_crit_edge
  %cl.1.i = phi ptr [ %21, %if.end19.i.if.end37.i_crit_edge ], [ %37, %if.end33.i.if.end37.i_crit_edge ], [ %35, %if.else.i.if.end37.i_crit_edge ], [ %cl.031.i.i117.i, %for.body.i.i119.i.if.end37.i_crit_edge ]
  %level.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i, i32 0, i32 24
  %38 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %level.i, align 2
  %level38.i = getelementptr inbounds %struct.cbq_class, ptr %head.0.i, i32 0, i32 24
  %40 = ptrtoint ptr %level38.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %level38.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp40.not.i = icmp ult i8 %39, %41
  br i1 %cmp40.not.i, label %if.end43.i, label %if.end37.i.fallback.i_crit_edge

if.end37.i.fallback.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fallback.i

if.end43.i:                                       ; preds = %if.end37.i
  %42 = zext i32 %call15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call15.i, label %sw.epilog.i [
    i32 5, label %if.end43.i.if.then.thread94_crit_edge
    i32 4, label %if.end43.i.if.then.thread94_crit_edge227
    i32 8, label %if.end43.i.if.then.thread94_crit_edge228
    i32 2, label %if.end43.i.if.then.thread88_crit_edge
    i32 1, label %if.end43.i.for.cond.i.i_crit_edge
  ]

if.end43.i.for.cond.i.i_crit_edge:                ; preds = %if.end43.i
  br label %for.cond.i.i

if.end43.i.if.then.thread88_crit_edge:            ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.thread88

if.end43.i.if.then.thread94_crit_edge228:         ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.thread94

if.end43.i.if.then.thread94_crit_edge227:         ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.thread94

if.end43.i.if.then.thread94_crit_edge:            ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.thread94

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end43.i.for.cond.i.i_crit_edge
  %this.pn.i.i = phi ptr [ %cl.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %cl.1.i, %if.end43.i.for.cond.i.i_crit_edge ]
  %cl.0.in.i.i = getelementptr inbounds %struct.cbq_class, ptr %this.pn.i.i, i32 0, i32 17
  %43 = ptrtoint ptr %cl.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %cl.0.i.i = load ptr, ptr %cl.0.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %cl.0.i.i, null
  br i1 %tobool.not.i.i, label %for.cond.i.i.if.then.thread88_crit_edge, label %for.body.i.i

for.cond.i.i.if.then.thread88_crit_edge:          ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.thread88

for.body.i.i:                                     ; preds = %for.cond.i.i
  %defaults.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0.i.i, i32 0, i32 37
  %44 = ptrtoint ptr %defaults.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %defaults.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %45, null
  %cmp1.not.i.i = icmp eq ptr %45, %cl.1.i
  %or.cond.i.i = or i1 %cmp.not.i.i, %cmp1.not.i.i
  br i1 %or.cond.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.cbq_classify.exit.thread77_crit_edge

for.body.i.i.cbq_classify.exit.thread77_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_classify.exit.thread77

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

sw.epilog.i:                                      ; preds = %if.end43.i
  %cmp49.i = icmp eq i8 %39, 0
  br i1 %cmp49.i, label %sw.epilog.i.cbq_classify.exit_crit_edge, label %sw.epilog.i.for.cond.i_crit_edge

sw.epilog.i.for.cond.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

sw.epilog.i.cbq_classify.exit_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_classify.exit

fallback.i:                                       ; preds = %if.end37.i.fallback.i_crit_edge, %if.end33.i.fallback.i_crit_edge, %for.inc.i.i125.i.fallback.i_crit_edge, %if.end.i.i116.i.fallback.i_crit_edge, %do.end13.i.fallback.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %1)
  %cmp54.i = icmp ult i32 %1, 65536
  br i1 %cmp54.i, label %land.lhs.true56.i, label %fallback.i.if.end66.i_crit_edge

fallback.i.if.end66.i_crit_edge:                  ; preds = %fallback.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66.i

land.lhs.true56.i:                                ; preds = %fallback.i
  %and58.i = and i32 %1, 15
  %arrayidx59.i = getelementptr %struct.cbq_class, ptr %head.0.i, i32 0, i32 37, i32 %and58.i
  %46 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx59.i, align 4
  %tobool60.not.i = icmp eq ptr %47, null
  br i1 %tobool60.not.i, label %land.lhs.true61.i, label %land.lhs.true56.i.if.end66.i_crit_edge

land.lhs.true56.i.if.end66.i_crit_edge:           ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66.i

land.lhs.true61.i:                                ; preds = %land.lhs.true56.i
  %48 = ptrtoint ptr %defaults.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %defaults.i, align 4
  %tobool64.not.i = icmp eq ptr %49, null
  br i1 %tobool64.not.i, label %land.lhs.true61.i.cbq_classify.exit_crit_edge, label %land.lhs.true61.i.if.end66.i_crit_edge

land.lhs.true61.i.if.end66.i_crit_edge:           ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66.i

land.lhs.true61.i.cbq_classify.exit_crit_edge:    ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_classify.exit

if.end66.i:                                       ; preds = %land.lhs.true61.i.if.end66.i_crit_edge, %land.lhs.true56.i.if.end66.i_crit_edge, %fallback.i.if.end66.i_crit_edge
  %cl.2.i = phi ptr [ %47, %land.lhs.true56.i.if.end66.i_crit_edge ], [ %49, %land.lhs.true61.i.if.end66.i_crit_edge ], [ %head.0.i, %fallback.i.if.end66.i_crit_edge ]
  br label %cbq_classify.exit

cbq_classify.exit.thread77:                       ; preds = %for.body.i.i.cbq_classify.exit.thread77_crit_edge, %for.body.i.i.i.cbq_classify.exit.thread77_crit_edge
  %retval.2.i.ph = phi ptr [ %45, %for.body.i.i.cbq_classify.exit.thread77_crit_edge ], [ %cl.031.i.i.i, %for.body.i.i.i.cbq_classify.exit.thread77_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #16
  %rx_class80 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 3
  %50 = ptrtoint ptr %rx_class80 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %retval.2.i.ph, ptr %rx_class80, align 8
  br label %if.end3

cbq_classify.exit:                                ; preds = %if.end66.i, %land.lhs.true61.i.cbq_classify.exit_crit_edge, %sw.epilog.i.cbq_classify.exit_crit_edge
  %retval.2.i = phi ptr [ %cl.2.i, %if.end66.i ], [ %head.0.i, %land.lhs.true61.i.cbq_classify.exit_crit_edge ], [ %cl.1.i, %sw.epilog.i.cbq_classify.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #16
  %rx_class = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 3
  %51 = ptrtoint ptr %rx_class to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %retval.2.i, ptr %rx_class, align 8
  %cmp = icmp eq ptr %retval.2.i, null
  br i1 %cmp, label %cbq_classify.exit.if.then2_crit_edge, label %cbq_classify.exit.if.end3_crit_edge

cbq_classify.exit.if.end3_crit_edge:              ; preds = %cbq_classify.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

cbq_classify.exit.if.then2_crit_edge:             ; preds = %cbq_classify.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then2

if.then.thread88:                                 ; preds = %for.cond.i.i.if.then.thread88_crit_edge, %if.end43.i.if.then.thread88_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #16
  %rx_class7290 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 3
  %52 = ptrtoint ptr %rx_class7290 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %rx_class7290, align 8
  br label %if.then2

if.then.thread94:                                 ; preds = %if.end43.i.if.then.thread94_crit_edge, %if.end43.i.if.then.thread94_crit_edge227, %if.end43.i.if.then.thread94_crit_edge228
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #16
  %rx_class7295 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 3
  %53 = ptrtoint ptr %rx_class7295 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %rx_class7295, align 8
  br label %if.end

if.then2:                                         ; preds = %if.then.thread88, %cbq_classify.exit.if.then2_crit_edge
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %54 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %55, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.thread94
  %ret.07487 = phi i32 [ 131072, %if.then2 ], [ 65536, %if.then.thread94 ]
  %56 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %to_free, align 4
  %58 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  br label %cleanup

if.end3:                                          ; preds = %cbq_classify.exit.if.end3_crit_edge, %cbq_classify.exit.thread77
  %retval.2.i82 = phi ptr [ %retval.2.i.ph, %cbq_classify.exit.thread77 ], [ %retval.2.i, %cbq_classify.exit.if.end3_crit_edge ]
  %q4 = getelementptr inbounds %struct.cbq_class, ptr %retval.2.i82, i32 0, i32 21
  %59 = ptrtoint ptr %q4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %q4, align 4
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i = call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i36 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i36, label %land.lhs.true.i.i, label %if.end3.do.end8.i.i_crit_edge

if.end3.do.end8.i.i_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end3
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @qdisc_calculate_pkt_len.__warned, align 1
  br i1 %.b14.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_calculate_pkt_len.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.15) #16
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %if.end3.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %62, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__qdisc_calculate_pkt_len(ptr noundef %skb, ptr noundef nonnull %62) #16
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %60, align 128
  %call.i = call i32 %64(ptr noundef %skb, ptr noundef %60, ptr noundef %to_free) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp eq i32 %call.i, 0
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %qdisc_enqueue.exit
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %65 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %qlen, align 8
  %inc = add i32 %66, 1
  store i32 %inc, ptr %qlen, align 8
  %toplevel1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 12
  %67 = ptrtoint ptr %toplevel1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %toplevel1.i, align 4
  %level.i37 = getelementptr inbounds %struct.cbq_class, ptr %retval.2.i82, i32 0, i32 24
  %69 = ptrtoint ptr %level.i37 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %level.i37, align 2
  %conv.i = zext i8 %70 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv.i)
  %cmp.i38 = icmp sgt i32 %68, %conv.i
  br i1 %cmp.i38, label %if.then.i, label %if.then7.cbq_mark_toplevel.exit_crit_edge

if.then7.cbq_mark_toplevel.exit_crit_edge:        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_mark_toplevel.exit

if.then.i:                                        ; preds = %if.then7
  %call.i.i.i = call i64 @ktime_get() #16
  %shr.i.i = lshr i64 %call.i.i.i, 6
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.then.i
  %cl.addr.0.i = phi ptr [ %retval.2.i82, %if.then.i ], [ %77, %land.rhs.i.do.body.i_crit_edge ]
  %undertime.i = getelementptr inbounds %struct.cbq_class, ptr %cl.addr.0.i, i32 0, i32 26
  %71 = ptrtoint ptr %undertime.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %undertime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %72, i64 %shr.i.i)
  %cmp3.i = icmp ult i64 %72, %shr.i.i
  br i1 %cmp3.i, label %if.then5.i, label %do.cond.i

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %level6.i = getelementptr inbounds %struct.cbq_class, ptr %cl.addr.0.i, i32 0, i32 24
  %73 = ptrtoint ptr %level6.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %level6.i, align 2
  %conv7.i = zext i8 %74 to i32
  %75 = ptrtoint ptr %toplevel1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv7.i, ptr %toplevel1.i, align 4
  br label %cbq_mark_toplevel.exit

do.cond.i:                                        ; preds = %do.body.i
  %borrow.i = getelementptr inbounds %struct.cbq_class, ptr %cl.addr.0.i, i32 0, i32 18
  %76 = ptrtoint ptr %borrow.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %borrow.i, align 8
  %cmp9.not.i = icmp eq ptr %77, null
  br i1 %cmp9.not.i, label %do.cond.i.cbq_mark_toplevel.exit_crit_edge, label %land.rhs.i

do.cond.i.cbq_mark_toplevel.exit_crit_edge:       ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_mark_toplevel.exit

land.rhs.i:                                       ; preds = %do.cond.i
  %level11.i = getelementptr inbounds %struct.cbq_class, ptr %77, i32 0, i32 24
  %78 = ptrtoint ptr %level11.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %level11.i, align 2
  %conv12.i = zext i8 %79 to i32
  %cmp13.i = icmp sgt i32 %68, %conv12.i
  br i1 %cmp13.i, label %land.rhs.i.do.body.i_crit_edge, label %land.rhs.i.cbq_mark_toplevel.exit_crit_edge

land.rhs.i.cbq_mark_toplevel.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_mark_toplevel.exit

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

cbq_mark_toplevel.exit:                           ; preds = %land.rhs.i.cbq_mark_toplevel.exit_crit_edge, %do.cond.i.cbq_mark_toplevel.exit_crit_edge, %if.then5.i, %if.then7.cbq_mark_toplevel.exit_crit_edge
  %next_alive = getelementptr inbounds %struct.cbq_class, ptr %retval.2.i82, i32 0, i32 1
  %80 = ptrtoint ptr %next_alive to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %next_alive, align 4
  %tobool9.not = icmp eq ptr %81, null
  br i1 %tobool9.not, label %if.then10, label %cbq_mark_toplevel.exit.cleanup_crit_edge

cbq_mark_toplevel.exit.cleanup_crit_edge:         ; preds = %cbq_mark_toplevel.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10:                                        ; preds = %cbq_mark_toplevel.exit
  %qdisc.i = getelementptr inbounds %struct.cbq_class, ptr %retval.2.i82, i32 0, i32 14
  %82 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %qdisc.i, align 8
  %privdata.i.i39 = getelementptr inbounds %struct.Qdisc, ptr %83, i32 0, i32 30
  %cpriority.i = getelementptr inbounds %struct.cbq_class, ptr %retval.2.i82, i32 0, i32 22
  %84 = ptrtoint ptr %cpriority.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %cpriority.i, align 8
  %conv.i40 = zext i8 %85 to i32
  %arrayidx.i41 = getelementptr %struct.cbq_sched_data, ptr %privdata.i.i39, i32 0, i32 6, i32 %conv.i40
  %86 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i41, align 4
  store ptr %retval.2.i82, ptr %arrayidx.i41, align 4
  %cmp.not.i = icmp eq ptr %87, null
  br i1 %cmp.not.i, label %if.else.i43, label %if.then.i42

if.then.i42:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  %next_alive.i = getelementptr inbounds %struct.cbq_class, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %next_alive.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %next_alive.i, align 4
  %90 = ptrtoint ptr %next_alive to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %next_alive, align 4
  store ptr %retval.2.i82, ptr %next_alive.i, align 4
  br label %cleanup

if.else.i43:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  %91 = ptrtoint ptr %next_alive to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %retval.2.i82, ptr %next_alive, align 4
  %shl.i = shl nuw i32 1, %conv.i40
  %activemask.i = getelementptr inbounds %struct.Qdisc, ptr %83, i32 1, i32 25, i32 0, i32 0, i32 4
  %92 = ptrtoint ptr %activemask.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %activemask.i, align 16
  %or.i = or i32 %93, %shl.i
  store i32 %or.i, ptr %activemask.i, align 16
  br label %cleanup

if.end12:                                         ; preds = %qdisc_enqueue.exit
  %and13 = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  %drops.i.i45 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %94 = ptrtoint ptr %drops.i.i45 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %drops.i.i45, align 4
  %inc.i.i46 = add i32 %95, 1
  store i32 %inc.i.i46, ptr %drops.i.i45, align 4
  %toplevel1.i47 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 12
  %96 = ptrtoint ptr %toplevel1.i47 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %toplevel1.i47, align 4
  %level.i48 = getelementptr inbounds %struct.cbq_class, ptr %retval.2.i82, i32 0, i32 24
  %98 = ptrtoint ptr %level.i48 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %level.i48, align 2
  %conv.i49 = zext i8 %99 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %conv.i49)
  %cmp.i50 = icmp sgt i32 %97, %conv.i49
  br i1 %cmp.i50, label %if.then.i53, label %if.then15.cbq_mark_toplevel.exit68_crit_edge

if.then15.cbq_mark_toplevel.exit68_crit_edge:     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_mark_toplevel.exit68

if.then.i53:                                      ; preds = %if.then15
  %call.i.i.i51 = call i64 @ktime_get() #16
  %shr.i.i52 = lshr i64 %call.i.i.i51, 6
  br label %do.body.i57

do.body.i57:                                      ; preds = %land.rhs.i67.do.body.i57_crit_edge, %if.then.i53
  %cl.addr.0.i54 = phi ptr [ %retval.2.i82, %if.then.i53 ], [ %106, %land.rhs.i67.do.body.i57_crit_edge ]
  %undertime.i55 = getelementptr inbounds %struct.cbq_class, ptr %cl.addr.0.i54, i32 0, i32 26
  %100 = ptrtoint ptr %undertime.i55 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %undertime.i55, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %101, i64 %shr.i.i52)
  %cmp3.i56 = icmp ult i64 %101, %shr.i.i52
  br i1 %cmp3.i56, label %if.then5.i60, label %do.cond.i63

if.then5.i60:                                     ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #18
  %level6.i58 = getelementptr inbounds %struct.cbq_class, ptr %cl.addr.0.i54, i32 0, i32 24
  %102 = ptrtoint ptr %level6.i58 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %level6.i58, align 2
  %conv7.i59 = zext i8 %103 to i32
  %104 = ptrtoint ptr %toplevel1.i47 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv7.i59, ptr %toplevel1.i47, align 4
  br label %cbq_mark_toplevel.exit68

do.cond.i63:                                      ; preds = %do.body.i57
  %borrow.i61 = getelementptr inbounds %struct.cbq_class, ptr %cl.addr.0.i54, i32 0, i32 18
  %105 = ptrtoint ptr %borrow.i61 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %borrow.i61, align 8
  %cmp9.not.i62 = icmp eq ptr %106, null
  br i1 %cmp9.not.i62, label %do.cond.i63.cbq_mark_toplevel.exit68_crit_edge, label %land.rhs.i67

do.cond.i63.cbq_mark_toplevel.exit68_crit_edge:   ; preds = %do.cond.i63
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_mark_toplevel.exit68

land.rhs.i67:                                     ; preds = %do.cond.i63
  %level11.i64 = getelementptr inbounds %struct.cbq_class, ptr %106, i32 0, i32 24
  %107 = ptrtoint ptr %level11.i64 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %level11.i64, align 2
  %conv12.i65 = zext i8 %108 to i32
  %cmp13.i66 = icmp sgt i32 %97, %conv12.i65
  br i1 %cmp13.i66, label %land.rhs.i67.do.body.i57_crit_edge, label %land.rhs.i67.cbq_mark_toplevel.exit68_crit_edge

land.rhs.i67.cbq_mark_toplevel.exit68_crit_edge:  ; preds = %land.rhs.i67
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_mark_toplevel.exit68

land.rhs.i67.do.body.i57_crit_edge:               ; preds = %land.rhs.i67
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i57

cbq_mark_toplevel.exit68:                         ; preds = %land.rhs.i67.cbq_mark_toplevel.exit68_crit_edge, %do.cond.i63.cbq_mark_toplevel.exit68_crit_edge, %if.then5.i60, %if.then15.cbq_mark_toplevel.exit68_crit_edge
  %drops = getelementptr inbounds %struct.cbq_class, ptr %retval.2.i82, i32 0, i32 31, i32 2
  %109 = ptrtoint ptr %drops to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %drops, align 8
  %inc16 = add i32 %110, 1
  store i32 %inc16, ptr %drops, align 8
  br label %cleanup

cleanup:                                          ; preds = %cbq_mark_toplevel.exit68, %if.end12.cleanup_crit_edge, %if.else.i43, %if.then.i42, %cbq_mark_toplevel.exit.cleanup_crit_edge, %if.end
  %ret.1 = phi i32 [ %ret.07487, %if.end ], [ 0, %cbq_mark_toplevel.exit.cleanup_crit_edge ], [ %call.i, %cbq_mark_toplevel.exit68 ], [ %call.i, %if.end12.cleanup_crit_edge ], [ 0, %if.then.i42 ], [ 0, %if.else.i43 ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cbq_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %call.i.i = tail call i64 @ktime_get() #16
  %shr.i = lshr i64 %call.i.i, 6
  %tx_class = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4
  %0 = ptrtoint ptr %tx_class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_class, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %tx_len.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4, i32 1, i32 1
  %2 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_len.i, align 4
  %4 = ptrtoint ptr %tx_class to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tx_class, align 4
  %now2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %now2.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %now2.i, align 8
  %R_tab.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %7 = ptrtoint ptr %R_tab.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %R_tab.i, align 8
  %cell_align.i.i = getelementptr inbounds %struct.tc_ratespec, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cell_align.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cell_align.i.i, align 4
  %conv.i.i = sext i16 %10 to i32
  %add.i.i = add i32 %3, %conv.i.i
  %overhead.i.i = getelementptr inbounds %struct.tc_ratespec, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %overhead.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %overhead.i.i, align 2
  %conv2.i.i = zext i16 %12 to i32
  %add3.i.i = add i32 %add.i.i, %conv2.i.i
  %13 = tail call i32 @llvm.smax.i32(i32 %add3.i.i, i32 0) #16
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %8, align 4
  %conv6.i.i = zext i8 %15 to i32
  %shr.i.i = lshr i32 %13, %conv6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %shr.i.i)
  %cmp7.i.i = icmp ugt i32 %shr.i.i, 255
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end14.i.i

if.then9.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i = getelementptr %struct.qdisc_rate_table, ptr %8, i32 0, i32 1, i32 255
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %shr1027.i.i = lshr i32 %shr.i.i, 8
  %mul.i.i = mul i32 %17, %shr1027.i.i
  %and.i.i = and i32 %shr.i.i, 255
  %arrayidx12.i.i = getelementptr %struct.qdisc_rate_table, ptr %8, i32 0, i32 1, i32 %and.i.i
  %18 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx12.i.i, align 4
  %add13.i.i = add i32 %mul.i.i, %19
  br label %for.body.lr.ph.i

if.end14.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx16.i.i = getelementptr %struct.qdisc_rate_table, ptr %8, i32 0, i32 1, i32 %shr.i.i
  %20 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx16.i.i, align 4
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end14.i.i, %if.then9.i.i
  %retval.0.i.i = phi i32 [ %add13.i.i, %if.then9.i.i ], [ %21, %if.end14.i.i ]
  %conv.i = zext i32 %retval.0.i.i to i64
  %add.i = add i64 %6, %conv.i
  %conv4.i = sext i32 %3 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %if.end55.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cl.0171.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %94, %if.end55.i.for.body.i_crit_edge ]
  %avgidle3.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0171.i, i32 0, i32 27
  %22 = ptrtoint ptr %avgidle3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %avgidle3.i, align 16
  %bstats.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0171.i, i32 0, i32 30
  tail call fastcc void @_bstats_update(ptr noundef %bstats.i, i64 noundef %conv4.i, i32 noundef 1) #16
  %last.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0171.i, i32 0, i32 25
  %24 = ptrtoint ptr %last.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %last.i, align 16
  %sub.i = sub i64 %add.i, %25
  %conv5.i = trunc i64 %sub.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %conv5.i)
  %cmp.i = icmp ugt i32 %conv5.i, 134217728
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %maxidle.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0171.i, i32 0, i32 6
  %26 = ptrtoint ptr %maxidle.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %maxidle.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  %R_tab7.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0171.i, i32 0, i32 10
  %28 = ptrtoint ptr %R_tab7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %R_tab7.i, align 8
  %cell_align.i105.i = getelementptr inbounds %struct.tc_ratespec, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cell_align.i105.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cell_align.i105.i, align 4
  %conv.i106.i = sext i16 %31 to i32
  %add.i107.i = add i32 %3, %conv.i106.i
  %overhead.i108.i = getelementptr inbounds %struct.tc_ratespec, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %overhead.i108.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %overhead.i108.i, align 2
  %conv2.i109.i = zext i16 %33 to i32
  %add3.i110.i = add i32 %add.i107.i, %conv2.i109.i
  %34 = tail call i32 @llvm.smax.i32(i32 %add3.i110.i, i32 0) #16
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %29, align 4
  %conv6.i111.i = zext i8 %36 to i32
  %shr.i112.i = lshr i32 %34, %conv6.i111.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %shr.i112.i)
  %cmp7.i113.i = icmp ugt i32 %shr.i112.i, 255
  br i1 %cmp7.i113.i, label %if.then9.i120.i, label %if.end14.i122.i

if.then9.i120.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i114.i = getelementptr %struct.qdisc_rate_table, ptr %29, i32 0, i32 1, i32 255
  %37 = ptrtoint ptr %arrayidx.i114.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i114.i, align 4
  %shr1027.i115.i = lshr i32 %shr.i112.i, 8
  %mul.i116.i = mul i32 %38, %shr1027.i115.i
  %and.i117.i = and i32 %shr.i112.i, 255
  %arrayidx12.i118.i = getelementptr %struct.qdisc_rate_table, ptr %29, i32 0, i32 1, i32 %and.i117.i
  %39 = ptrtoint ptr %arrayidx12.i118.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx12.i118.i, align 4
  %add13.i119.i = add i32 %mul.i116.i, %40
  br label %qdisc_l2t.exit124.i

if.end14.i122.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx16.i121.i = getelementptr %struct.qdisc_rate_table, ptr %29, i32 0, i32 1, i32 %shr.i112.i
  %41 = ptrtoint ptr %arrayidx16.i121.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx16.i121.i, align 4
  br label %qdisc_l2t.exit124.i

qdisc_l2t.exit124.i:                              ; preds = %if.end14.i122.i, %if.then9.i120.i
  %retval.0.i123.i = phi i32 [ %add13.i119.i, %if.then9.i120.i ], [ %42, %if.end14.i122.i ]
  %ewma_log.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0171.i, i32 0, i32 4
  %43 = ptrtoint ptr %ewma_log.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ewma_log.i, align 2
  %conv10.i = zext i8 %44 to i32
  %shr.i44 = ashr i32 %23, %conv10.i
  %.neg = add i32 %23, %conv5.i
  %45 = add i32 %retval.0.i123.i, %shr.i44
  %add12.i = sub i32 %.neg, %45
  br label %if.end.i

if.end.i:                                         ; preds = %qdisc_l2t.exit124.i, %if.then.i
  %avgidle.0.i = phi i32 [ %27, %if.then.i ], [ %add12.i, %qdisc_l2t.exit124.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %avgidle.0.i)
  %cmp13.i = icmp slt i32 %avgidle.0.i, 1
  br i1 %cmp13.i, label %if.then15.i, label %if.else37.i

if.then15.i:                                      ; preds = %if.end.i
  %minidle.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0171.i, i32 0, i32 8
  %46 = ptrtoint ptr %minidle.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %minidle.i, align 16
  %48 = tail call i32 @llvm.smax.i32(i32 %avgidle.0.i, i32 %47) #16
  %sub22.i = sub i32 0, %48
  %49 = ptrtoint ptr %avgidle3.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %avgidle3.i, align 16
  %ewma_log24.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0171.i, i32 0, i32 4
  %50 = ptrtoint ptr %ewma_log24.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ewma_log24.i, align 2
  %conv25.i = zext i8 %51 to i32
  %shr26.i = ashr i32 %sub22.i, %conv25.i
  %52 = ptrtoint ptr %R_tab.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %R_tab.i, align 8
  %cell_align.i125.i = getelementptr inbounds %struct.tc_ratespec, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cell_align.i125.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %cell_align.i125.i, align 4
  %conv.i126.i = sext i16 %55 to i32
  %add.i127.i = add i32 %3, %conv.i126.i
  %overhead.i128.i = getelementptr inbounds %struct.tc_ratespec, ptr %53, i32 0, i32 2
  %56 = ptrtoint ptr %overhead.i128.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %overhead.i128.i, align 2
  %conv2.i129.i = zext i16 %57 to i32
  %add3.i130.i = add i32 %add.i127.i, %conv2.i129.i
  %58 = tail call i32 @llvm.smax.i32(i32 %add3.i130.i, i32 0) #16
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %53, align 4
  %conv6.i131.i = zext i8 %60 to i32
  %shr.i132.i = lshr i32 %58, %conv6.i131.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %shr.i132.i)
  %cmp7.i133.i = icmp ugt i32 %shr.i132.i, 255
  br i1 %cmp7.i133.i, label %if.then9.i140.i, label %if.end14.i142.i

if.then9.i140.i:                                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i134.i = getelementptr %struct.qdisc_rate_table, ptr %53, i32 0, i32 1, i32 255
  %61 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i134.i, align 4
  %shr1027.i135.i = lshr i32 %shr.i132.i, 8
  %mul.i136.i = mul i32 %62, %shr1027.i135.i
  %and.i137.i = and i32 %shr.i132.i, 255
  %arrayidx12.i138.i = getelementptr %struct.qdisc_rate_table, ptr %53, i32 0, i32 1, i32 %and.i137.i
  %63 = ptrtoint ptr %arrayidx12.i138.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx12.i138.i, align 4
  %add13.i139.i = add i32 %mul.i136.i, %64
  br label %qdisc_l2t.exit144.i

if.end14.i142.i:                                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx16.i141.i = getelementptr %struct.qdisc_rate_table, ptr %53, i32 0, i32 1, i32 %shr.i132.i
  %65 = ptrtoint ptr %arrayidx16.i141.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx16.i141.i, align 4
  br label %qdisc_l2t.exit144.i

qdisc_l2t.exit144.i:                              ; preds = %if.end14.i142.i, %if.then9.i140.i
  %retval.0.i143.i = phi i32 [ %add13.i139.i, %if.then9.i140.i ], [ %66, %if.end14.i142.i ]
  %R_tab32.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0171.i, i32 0, i32 10
  %67 = ptrtoint ptr %R_tab32.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %R_tab32.i, align 8
  %cell_align.i145.i = getelementptr inbounds %struct.tc_ratespec, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %cell_align.i145.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %cell_align.i145.i, align 4
  %conv.i146.i = sext i16 %70 to i32
  %add.i147.i = add i32 %3, %conv.i146.i
  %overhead.i148.i = getelementptr inbounds %struct.tc_ratespec, ptr %68, i32 0, i32 2
  %71 = ptrtoint ptr %overhead.i148.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %overhead.i148.i, align 2
  %conv2.i149.i = zext i16 %72 to i32
  %add3.i150.i = add i32 %add.i147.i, %conv2.i149.i
  %73 = tail call i32 @llvm.smax.i32(i32 %add3.i150.i, i32 0) #16
  %74 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %68, align 4
  %conv6.i151.i = zext i8 %75 to i32
  %shr.i152.i = lshr i32 %73, %conv6.i151.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %shr.i152.i)
  %cmp7.i153.i = icmp ugt i32 %shr.i152.i, 255
  br i1 %cmp7.i153.i, label %if.then9.i160.i, label %if.end14.i162.i

if.then9.i160.i:                                  ; preds = %qdisc_l2t.exit144.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i154.i = getelementptr %struct.qdisc_rate_table, ptr %68, i32 0, i32 1, i32 255
  %76 = ptrtoint ptr %arrayidx.i154.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i154.i, align 4
  %shr1027.i155.i = lshr i32 %shr.i152.i, 8
  %mul.i156.i = mul i32 %77, %shr1027.i155.i
  %and.i157.i = and i32 %shr.i152.i, 255
  %arrayidx12.i158.i = getelementptr %struct.qdisc_rate_table, ptr %68, i32 0, i32 1, i32 %and.i157.i
  %78 = ptrtoint ptr %arrayidx12.i158.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx12.i158.i, align 4
  %add13.i159.i = add i32 %mul.i156.i, %79
  br label %qdisc_l2t.exit164.i

if.end14.i162.i:                                  ; preds = %qdisc_l2t.exit144.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx16.i161.i = getelementptr %struct.qdisc_rate_table, ptr %68, i32 0, i32 1, i32 %shr.i152.i
  %80 = ptrtoint ptr %arrayidx16.i161.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx16.i161.i, align 4
  br label %qdisc_l2t.exit164.i

qdisc_l2t.exit164.i:                              ; preds = %if.end14.i162.i, %if.then9.i160.i
  %retval.0.i163.i = phi i32 [ %add13.i159.i, %if.then9.i160.i ], [ %81, %if.end14.i162.i ]
  %82 = add i32 %shr26.i, %48
  %83 = add i32 %82, %retval.0.i143.i
  %add34.i = sub i32 %retval.0.i163.i, %83
  %conv35.i = sext i32 %add34.i to i64
  %add36.i = add i64 %add.i, %conv35.i
  %undertime.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0171.i, i32 0, i32 26
  %84 = ptrtoint ptr %undertime.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %add36.i, ptr %undertime.i, align 8
  br label %if.end48.i

if.else37.i:                                      ; preds = %if.end.i
  %undertime38.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0171.i, i32 0, i32 26
  %85 = ptrtoint ptr %undertime38.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 0, ptr %undertime38.i, align 8
  %maxidle39.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0171.i, i32 0, i32 6
  %86 = ptrtoint ptr %maxidle39.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %maxidle39.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %avgidle.0.i, i32 %87)
  %cmp40.i = icmp sgt i32 %avgidle.0.i, %87
  br i1 %cmp40.i, label %if.then42.i, label %if.else45.i

if.then42.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #18
  %88 = ptrtoint ptr %avgidle3.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %avgidle3.i, align 16
  br label %if.end48.i

if.else45.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #18
  %89 = ptrtoint ptr %avgidle3.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %avgidle.0.i, ptr %avgidle3.i, align 16
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else45.i, %if.then42.i, %qdisc_l2t.exit164.i
  %90 = ptrtoint ptr %last.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %last.i, align 16
  %sub50.i = sub i64 %add.i, %91
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub50.i)
  %cmp51.i = icmp sgt i64 %sub50.i, 0
  br i1 %cmp51.i, label %if.then53.i, label %if.end48.i.if.end55.i_crit_edge

if.end48.i.if.end55.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55.i

if.then53.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #18
  %92 = ptrtoint ptr %last.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %add.i, ptr %last.i, align 16
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then53.i, %if.end48.i.if.end55.i_crit_edge
  %share.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0171.i, i32 0, i32 16
  %93 = ptrtoint ptr %share.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %share.i, align 16
  %tobool.not.i = icmp eq ptr %94, null
  br i1 %tobool.not.i, label %land.lhs.true.i.i, label %if.end55.i.for.body.i_crit_edge

if.end55.i.for.body.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

land.lhs.true.i.i:                                ; preds = %if.end55.i
  %tx_borrowed.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4, i32 1
  %95 = ptrtoint ptr %tx_borrowed.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tx_borrowed.i, align 16
  %toplevel.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 12
  %97 = ptrtoint ptr %toplevel.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %toplevel.i.i, align 4
  %level.i.i = getelementptr inbounds %struct.cbq_class, ptr %96, i32 0, i32 24
  %99 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %level.i.i, align 2
  %conv.i165.i = zext i8 %100 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %conv.i165.i)
  %cmp.not.i.i = icmp slt i32 %98, %conv.i165.i
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %q2.i.i = getelementptr inbounds %struct.cbq_class, ptr %1, i32 0, i32 21
  %101 = ptrtoint ptr %q2.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %q2.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %102, i32 0, i32 17, i32 2
  %103 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %qlen.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp4.i.i = icmp ugt i32 %104, 1
  br i1 %cmp4.i.i, label %if.then.i.i.do.body.i.i_crit_edge, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i.i.do.body.i.i_crit_edge:                ; preds = %if.then.i.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.then.i.i.do.body.i.i_crit_edge
  %borrowed.addr.0.i.i = phi ptr [ %111, %do.cond.i.i.do.body.i.i_crit_edge ], [ %96, %if.then.i.i.do.body.i.i_crit_edge ]
  %undertime.i.i = getelementptr inbounds %struct.cbq_class, ptr %borrowed.addr.0.i.i, i32 0, i32 26
  %105 = ptrtoint ptr %undertime.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %undertime.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %106)
  %cmp7.i166.i = icmp eq i64 %106, 0
  br i1 %cmp7.i166.i, label %if.then9.i167.i, label %do.cond.i.i

if.then9.i167.i:                                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %level10.i.i = getelementptr inbounds %struct.cbq_class, ptr %borrowed.addr.0.i.i, i32 0, i32 24
  %107 = ptrtoint ptr %level10.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %level10.i.i, align 2
  %conv11.i.i = zext i8 %108 to i32
  %109 = ptrtoint ptr %toplevel.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv11.i.i, ptr %toplevel.i.i, align 4
  br label %if.end

do.cond.i.i:                                      ; preds = %do.body.i.i
  %borrow.i.i = getelementptr inbounds %struct.cbq_class, ptr %borrowed.addr.0.i.i, i32 0, i32 18
  %110 = ptrtoint ptr %borrow.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %borrow.i.i, align 8
  %cmp13.not.i.i = icmp eq ptr %111, null
  br i1 %cmp13.not.i.i, label %do.cond.i.i.if.end_crit_edge, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

do.cond.i.i.if.end_crit_edge:                     ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %do.cond.i.i.if.end_crit_edge, %if.then9.i167.i, %if.then.i.i.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %now2 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4, i32 2
  %112 = ptrtoint ptr %now2 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %shr.i, ptr %now2, align 8
  %wd_expires = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 8
  %activemask1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4
  %toplevel = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 12
  %undertime = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end10, %if.end
  %113 = ptrtoint ptr %wd_expires to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %wd_expires, align 8
  %114 = ptrtoint ptr %activemask1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %activemask1.i, align 16
  %and.i = and i32 %115, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not27.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not27.i, label %for.cond.if.end7_crit_edge, label %for.cond.while.body.i_crit_edge

for.cond.while.body.i_crit_edge:                  ; preds = %for.cond
  br label %while.body.i

for.cond.if.end7_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

while.body.i:                                     ; preds = %cbq_dequeue_prio.exit.i.while.body.i_crit_edge, %for.cond.while.body.i_crit_edge
  %activemask.028.i = phi i32 [ %and5.i, %cbq_dequeue_prio.exit.i.while.body.i_crit_edge ], [ %and.i, %for.cond.while.body.i_crit_edge ]
  %116 = tail call i32 @llvm.cttz.i32(i32 %activemask.028.i, i1 true) #16, !range !70
  %shl.i = shl nuw i32 1, %116
  %neg4.i = xor i32 %shl.i, -1
  %and5.i = and i32 %activemask.028.i, %neg4.i
  %arrayidx.i.i45 = getelementptr %struct.cbq_sched_data, ptr %privdata.i, i32 0, i32 6, i32 %116
  %117 = ptrtoint ptr %arrayidx.i.i45 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i.i45, align 4
  %next_alive.i.i = getelementptr inbounds %struct.cbq_class, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %next_alive.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %next_alive.i.i, align 4
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %do.body1.i.i.backedge, %while.body.i
  %cl_tail.1.i.i = phi ptr [ %118, %while.body.i ], [ %cl_tail.3.i.i, %do.body1.i.i.backedge ]
  %cl_prev.1.i.i = phi ptr [ %118, %while.body.i ], [ %cl_prev.1.i.i.be, %do.body1.i.i.backedge ]
  %cl.1.i.i = phi ptr [ %120, %while.body.i ], [ %257, %do.body1.i.i.backedge ]
  %deficit.0.i.i = phi i32 [ 0, %while.body.i ], [ %deficit.0.i.i.be, %do.body1.i.i.backedge ]
  %q2.i.i47 = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 21
  %121 = ptrtoint ptr %q2.i.i47 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %q2.i.i47, align 4
  %qlen.i.i48 = getelementptr inbounds %struct.Qdisc, ptr %122, i32 0, i32 17, i32 2
  %123 = ptrtoint ptr %qlen.i.i48 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %qlen.i.i48, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i.i = icmp eq i32 %124, 0
  br i1 %tobool.not.i.i, label %do.body1.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i49

do.body1.i.i.if.end.i.i_crit_edge:                ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.lhs.true.i.i49:                              ; preds = %do.body1.i.i
  %qdisc.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 14
  %125 = ptrtoint ptr %qdisc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %qdisc.i.i.i, align 8
  %tparent.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 17
  %127 = ptrtoint ptr %tparent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tparent.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %128, null
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i49.cbq_under_limit.exit.i.i_crit_edge, label %if.end.i.i.i

land.lhs.true.i.i49.cbq_under_limit.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i49
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_under_limit.exit.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i49
  %undertime.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 26
  %129 = ptrtoint ptr %undertime.i.i.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %undertime.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %130)
  %cmp1.i.i.i = icmp eq i64 %130, 0
  br i1 %cmp1.i.i.i, label %if.end.i.i.i.if.then4.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.if.then4.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %now.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %126, i32 1, i32 26, i32 0, i32 0, i32 4, i32 2
  %131 = ptrtoint ptr %now.i.i.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %now.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %132, i64 %130)
  %cmp3.not.i.i.i = icmp ult i64 %132, %130
  br i1 %cmp3.not.i.i.i, label %do.body.preheader.i.i.i, label %lor.lhs.false.i.i.i.if.then4.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then4.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4.i.i.i

do.body.preheader.i.i.i:                          ; preds = %lor.lhs.false.i.i.i
  %toplevel.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %126, i32 2, i32 15, i32 12
  br label %do.body.i.i.i

if.then4.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.if.then4.i.i.i_crit_edge, %if.end.i.i.i.if.then4.i.i.i_crit_edge
  %delayed.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 23
  %133 = ptrtoint ptr %delayed.i.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %delayed.i.i.i, align 1
  br label %cbq_under_limit.exit.i.i

do.body.i.i.i:                                    ; preds = %do.cond.i.i.i.do.body.i.i.i_crit_edge, %do.body.preheader.i.i.i
  %cl.addr.0.i.i.i = phi ptr [ %135, %do.cond.i.i.i.do.body.i.i.i_crit_edge ], [ %cl.1.i.i, %do.body.preheader.i.i.i ]
  %borrow.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.addr.0.i.i.i, i32 0, i32 18
  %134 = ptrtoint ptr %borrow.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %borrow.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %135, null
  br i1 %tobool.not.i.i.i, label %if.then6.i.i.i, label %if.end7.i.i.i

if.then6.i.i.i:                                   ; preds = %do.body.i.i.i
  %overlimits.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 31, i32 4
  %136 = ptrtoint ptr %overlimits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %overlimits.i.i.i, align 16
  %inc.i.i.i = add i32 %137, 1
  store i32 %inc.i.i.i, ptr %overlimits.i.i.i, align 16
  %138 = ptrtoint ptr %now.i.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %now.i.i.i, align 8
  %sub.i.i.i.i = sub i64 %130, %139
  %conv.i.i.i.i = trunc i64 %sub.i.i.i.i to i32
  %delayed.i.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 23
  %140 = ptrtoint ptr %delayed.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %delayed.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i.i.i.i = icmp eq i8 %141, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.then6.i.i.i.if.end26.i.i.i.i_crit_edge

if.then6.i.i.i.if.end26.i.i.i.i_crit_edge:        ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then6.i.i.i
  %offtime.i.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 7
  %142 = ptrtoint ptr %offtime.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %offtime.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %143, %conv.i.i.i.i
  %avgidle.i.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 27
  %144 = ptrtoint ptr %avgidle.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %avgidle.i.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp.i.i.i.i = icmp slt i32 %145, 0
  br i1 %cmp.i.i.i.i, label %if.then2.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i.i

if.then2.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub4.i.i.i.i = sub i32 0, %145
  %ewma_log.i.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 4
  %146 = ptrtoint ptr %ewma_log.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %ewma_log.i.i.i.i, align 2
  %conv7.i.i.i.i = zext i8 %147 to i32
  %shr.i.i.i.i = ashr i32 %sub4.i.i.i.i, %conv7.i.i.i.i
  %sub8.neg.i.i.i.i = add i32 %add.i.i.i.i, %145
  %sub9.i.i.i.i = add i32 %sub8.neg.i.i.i.i, %shr.i.i.i.i
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then2.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %delay.0.i.i.i.i = phi i32 [ %sub9.i.i.i.i, %if.then2.i.i.i.i ], [ %add.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  %minidle.i.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 8
  %148 = ptrtoint ptr %minidle.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %minidle.i.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %149)
  %cmp11.i.i.i.i = icmp slt i32 %145, %149
  br i1 %cmp11.i.i.i.i, label %if.then13.i.i.i.i, label %if.end.i.i.i.i.if.end16.i.i.i.i_crit_edge

if.end.i.i.i.i.if.end16.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i.i.i

if.then13.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %150 = ptrtoint ptr %avgidle.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %avgidle.i.i.i.i, align 16
  br label %if.end16.i.i.i.i

if.end16.i.i.i.i:                                 ; preds = %if.then13.i.i.i.i, %if.end.i.i.i.i.if.end16.i.i.i.i_crit_edge
  %151 = tail call i32 @llvm.smax.i32(i32 %delay.0.i.i.i.i, i32 1) #16
  %152 = ptrtoint ptr %now.i.i.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %now.i.i.i, align 8
  %conv22.i.i.i.i = zext i32 %151 to i64
  %add23.i.i.i.i = add i64 %153, %conv22.i.i.i.i
  %154 = ptrtoint ptr %undertime.i.i.i to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %add23.i.i.i.i, ptr %undertime.i.i.i, align 8
  %overactions.i.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 33, i32 1
  %155 = ptrtoint ptr %overactions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %overactions.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %156, 1
  store i32 %inc.i.i.i.i, ptr %overactions.i.i.i.i, align 4
  %157 = ptrtoint ptr %delayed.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %delayed.i.i.i.i, align 1
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end16.i.i.i.i, %if.then6.i.i.i.if.end26.i.i.i.i_crit_edge
  %delay.1.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.then6.i.i.i.if.end26.i.i.i.i_crit_edge ], [ %151, %if.end16.i.i.i.i ]
  %wd_expires.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %126, i32 2, i32 15, i32 8
  %158 = ptrtoint ptr %wd_expires.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %wd_expires.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp27.i.i.i.i = icmp eq i32 %159, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %delay.1.i.i.i.i)
  %cmp30.i.i.i.i = icmp sgt i32 %159, %delay.1.i.i.i.i
  %or.cond.i.i.i.i = select i1 %cmp27.i.i.i.i, i1 true, i1 %cmp30.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.then32.i.i.i.i, label %if.end26.i.i.i.i.if.end34.i.i.i.i_crit_edge

if.end26.i.i.i.i.if.end34.i.i.i.i_crit_edge:      ; preds = %if.end26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.i.i.i.i

if.then32.i.i.i.i:                                ; preds = %if.end26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %160 = ptrtoint ptr %wd_expires.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %delay.1.i.i.i.i, ptr %wd_expires.i.i.i.i, align 8
  br label %if.end34.i.i.i.i

if.end34.i.i.i.i:                                 ; preds = %if.then32.i.i.i.i, %if.end26.i.i.i.i.if.end34.i.i.i.i_crit_edge
  %161 = ptrtoint ptr %toplevel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %toplevel.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %162)
  %cmp35.i.i.i.i = icmp eq i32 %162, 8
  br i1 %cmp35.i.i.i.i, label %if.then37.i.i.i.i, label %if.end34.i.i.i.i.skip_class.i.i_crit_edge

if.end34.i.i.i.i.skip_class.i.i_crit_edge:        ; preds = %if.end34.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip_class.i.i

if.then37.i.i.i.i:                                ; preds = %if.end34.i.i.i.i
  %163 = ptrtoint ptr %wd_expires.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %wd_expires.i.i.i.i, align 8
  %b.0.in92.i.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 18
  %165 = ptrtoint ptr %b.0.in92.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %b.093.i.i.i.i = load ptr, ptr %b.0.in92.i.i.i.i, align 8
  %tobool39.not94.i.i.i.i = icmp eq ptr %b.093.i.i.i.i, null
  br i1 %tobool39.not94.i.i.i.i, label %if.then37.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

if.then37.i.i.i.i.for.end.i.i.i.i_crit_edge:      ; preds = %if.then37.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.then37.i.i.i.i
  %166 = ptrtoint ptr %now.i.i.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %now.i.i.i, align 8
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %b.096.i.i.i.i = phi ptr [ %b.093.i.i.i.i, %for.body.lr.ph.i.i.i.i ], [ %b.0.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %base_delay.095.i.i.i.i = phi i32 [ %164, %for.body.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %undertime40.i.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %b.096.i.i.i.i, i32 0, i32 26
  %168 = ptrtoint ptr %undertime40.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %undertime40.i.i.i.i, align 8
  %sub42.i.i.i.i = sub i64 %169, %167
  %conv43.i.i.i.i = trunc i64 %sub42.i.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %base_delay.095.i.i.i.i, i32 %conv43.i.i.i.i)
  %cmp44.i.i.i.i = icmp sgt i32 %base_delay.095.i.i.i.i, %conv43.i.i.i.i
  %170 = tail call i32 @llvm.smax.i32(i32 %conv43.i.i.i.i, i32 1) #16
  %spec.select.i.i.i.i = select i1 %cmp44.i.i.i.i, i32 %170, i32 %base_delay.095.i.i.i.i
  %b.0.in.i.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %b.096.i.i.i.i, i32 0, i32 18
  %171 = ptrtoint ptr %b.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %b.0.i.i.i.i = load ptr, ptr %b.0.in.i.i.i.i, align 8
  %tobool39.not.i.i.i.i = icmp eq ptr %b.0.i.i.i.i, null
  br i1 %tobool39.not.i.i.i.i, label %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i.i

for.body.i.i.i.i.for.end.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge, %if.then37.i.i.i.i.for.end.i.i.i.i_crit_edge
  %base_delay.0.lcssa.i.i.i.i = phi i32 [ %164, %if.then37.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i, %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge ]
  %172 = ptrtoint ptr %wd_expires.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %base_delay.0.lcssa.i.i.i.i, ptr %wd_expires.i.i.i.i, align 8
  br label %skip_class.i.i

if.end7.i.i.i:                                    ; preds = %do.body.i.i.i
  %level.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %135, i32 0, i32 24
  %173 = ptrtoint ptr %level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %level.i.i.i, align 2
  %conv.i.i.i = zext i8 %174 to i32
  %175 = ptrtoint ptr %toplevel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %toplevel.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %conv.i.i.i)
  %cmp8.i.i.i = icmp slt i32 %176, %conv.i.i.i
  br i1 %cmp8.i.i.i, label %if.end7.i.i.i.skip_class.i.i_crit_edge, label %do.cond.i.i.i

if.end7.i.i.i.skip_class.i.i_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip_class.i.i

do.cond.i.i.i:                                    ; preds = %if.end7.i.i.i
  %undertime12.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %135, i32 0, i32 26
  %177 = ptrtoint ptr %undertime12.i.i.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %undertime12.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %178)
  %cmp13.not.i.i.i = icmp ne i64 %178, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %132, i64 %178)
  %cmp17.i.i.i = icmp ult i64 %132, %178
  %or.cond.i.i.i = select i1 %cmp13.not.i.i.i, i1 %cmp17.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %do.cond.i.i.i.do.body.i.i.i_crit_edge, label %cbq_under_limit.exit.thread161.i.i

do.cond.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

cbq_under_limit.exit.thread161.i.i:               ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %delayed19.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %135, i32 0, i32 23
  %179 = ptrtoint ptr %delayed19.i.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %delayed19.i.i.i, align 1
  br label %if.end.i.i

cbq_under_limit.exit.i.i:                         ; preds = %if.then4.i.i.i, %land.lhs.true.i.i49.cbq_under_limit.exit.i.i_crit_edge
  %cmp.i.i = icmp eq ptr %cl.1.i.i, null
  br i1 %cmp.i.i, label %cbq_under_limit.exit.i.i.skip_class.i.i_crit_edge, label %cbq_under_limit.exit.i.i.if.end.i.i_crit_edge

cbq_under_limit.exit.i.i.if.end.i.i_crit_edge:    ; preds = %cbq_under_limit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

cbq_under_limit.exit.i.i.skip_class.i.i_crit_edge: ; preds = %cbq_under_limit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip_class.i.i

if.end.i.i:                                       ; preds = %cbq_under_limit.exit.i.i.if.end.i.i_crit_edge, %cbq_under_limit.exit.thread161.i.i, %do.body1.i.i.if.end.i.i_crit_edge
  %borrow.0.i.i = phi ptr [ %cl.1.i.i, %cbq_under_limit.exit.i.i.if.end.i.i_crit_edge ], [ %cl.1.i.i, %do.body1.i.i.if.end.i.i_crit_edge ], [ %135, %cbq_under_limit.exit.thread161.i.i ]
  %deficit5.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 28
  %180 = ptrtoint ptr %deficit5.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %deficit5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %181)
  %cmp6.i.i = icmp slt i32 %181, 1
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %quantum.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 12
  %182 = ptrtoint ptr %quantum.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %quantum.i.i, align 16
  %add.i.i50 = add i32 %183, %181
  %184 = ptrtoint ptr %deficit5.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %add.i.i50, ptr %deficit5.i.i, align 4
  br label %do.cond.i.i53

if.end9.i.i:                                      ; preds = %if.end.i.i
  %185 = ptrtoint ptr %q2.i.i47 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %q2.i.i47, align 4
  %dequeue.i.i = getelementptr inbounds %struct.Qdisc, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %dequeue.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dequeue.i.i, align 4
  %call12.i.i = tail call ptr %188(ptr noundef %186) #16
  %cmp13.i.i = icmp eq ptr %call12.i.i, null
  br i1 %cmp13.i.i, label %if.end9.i.i.skip_class.i.i_crit_edge, label %if.end15.i.i

if.end9.i.i.skip_class.i.i_crit_edge:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip_class.i.i

if.end15.i.i:                                     ; preds = %if.end9.i.i
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call12.i.i, i32 0, i32 3
  %189 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %cb.i.i.i.i, align 4
  %191 = ptrtoint ptr %deficit5.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %deficit5.i.i, align 4
  %sub.i.i = sub i32 %192, %190
  store i32 %sub.i.i, ptr %deficit5.i.i, align 4
  %193 = ptrtoint ptr %tx_class to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %cl.1.i.i, ptr %tx_class, align 4
  %tx_borrowed.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4, i32 1
  %194 = ptrtoint ptr %tx_borrowed.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %borrow.0.i.i, ptr %tx_borrowed.i.i, align 16
  %cmp18.not.i.i = icmp eq ptr %borrow.0.i.i, %cl.1.i.i
  br i1 %cmp18.not.i.i, label %if.end15.i.i.if.end23.i.i_crit_edge, label %if.then19.i.i

if.end15.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23.i.i

if.then19.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %xstats.i.i = getelementptr inbounds %struct.cbq_class, ptr %borrow.0.i.i, i32 0, i32 33
  %195 = ptrtoint ptr %xstats.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %xstats.i.i, align 8
  %inc.i.i = add i32 %196, 1
  store i32 %inc.i.i, ptr %xstats.i.i, align 8
  %xstats20.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 33
  %197 = ptrtoint ptr %xstats20.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %xstats20.i.i, align 8
  %inc22.i.i = add i32 %198, 1
  store i32 %inc22.i.i, ptr %xstats20.i.i, align 8
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then19.i.i, %if.end15.i.i.if.end23.i.i_crit_edge
  %199 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %cb.i.i.i.i, align 4
  %tx_len.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4, i32 1, i32 1
  %201 = ptrtoint ptr %tx_len.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %tx_len.i.i, align 4
  %202 = ptrtoint ptr %deficit5.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %deficit5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %203)
  %cmp26.i.i = icmp slt i32 %203, 1
  br i1 %cmp26.i.i, label %if.then27.i.i, label %if.end23.i.i.if.then5_crit_edge

if.end23.i.i.if.then5_crit_edge:                  ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5

if.then27.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %204 = ptrtoint ptr %arrayidx.i.i45 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %cl.1.i.i, ptr %arrayidx.i.i45, align 4
  %next_alive30.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 1
  %205 = ptrtoint ptr %next_alive30.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %next_alive30.i.i, align 4
  %quantum31.i.i = getelementptr inbounds %struct.cbq_class, ptr %206, i32 0, i32 12
  %207 = ptrtoint ptr %quantum31.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %quantum31.i.i, align 16
  %deficit32.i.i = getelementptr inbounds %struct.cbq_class, ptr %206, i32 0, i32 28
  %209 = ptrtoint ptr %deficit32.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %deficit32.i.i, align 4
  %add33.i.i = add i32 %210, %208
  store i32 %add33.i.i, ptr %deficit32.i.i, align 4
  br label %if.then5

skip_class.i.i:                                   ; preds = %if.end9.i.i.skip_class.i.i_crit_edge, %cbq_under_limit.exit.i.i.skip_class.i.i_crit_edge, %if.end7.i.i.i.skip_class.i.i_crit_edge, %for.end.i.i.i.i, %if.end34.i.i.i.i.skip_class.i.i_crit_edge
  %211 = ptrtoint ptr %q2.i.i47 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %q2.i.i47, align 4
  %qlen37.i.i = getelementptr inbounds %struct.Qdisc, ptr %212, i32 0, i32 17, i32 2
  %213 = ptrtoint ptr %qlen37.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %qlen37.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp38.i.i = icmp eq i32 %214, 0
  br i1 %cmp38.i.i, label %skip_class.i.i.if.then41.i.i_crit_edge, label %lor.lhs.false.i.i

skip_class.i.i.if.then41.i.i_crit_edge:           ; preds = %skip_class.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then41.i.i

lor.lhs.false.i.i:                                ; preds = %skip_class.i.i
  %cpriority.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 22
  %215 = ptrtoint ptr %cpriority.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %cpriority.i.i, align 8
  %conv.i.i51 = zext i8 %216 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %conv.i.i51)
  %cmp39.not.i.i = icmp eq i32 %116, %conv.i.i51
  br i1 %cmp39.not.i.i, label %lor.lhs.false.i.i.do.cond.i.i53_crit_edge, label %lor.lhs.false.i.i.if.then41.i.i_crit_edge

lor.lhs.false.i.i.if.then41.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then41.i.i

lor.lhs.false.i.i.do.cond.i.i53_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond.i.i53

if.then41.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then41.i.i_crit_edge, %skip_class.i.i.if.then41.i.i_crit_edge
  %next_alive42.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 1
  %217 = ptrtoint ptr %next_alive42.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %next_alive42.i.i, align 4
  %next_alive43.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl_prev.1.i.i, i32 0, i32 1
  %219 = ptrtoint ptr %next_alive43.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %218, ptr %next_alive43.i.i, align 4
  store ptr null, ptr %next_alive42.i.i, align 4
  %cmp45.i.i = icmp eq ptr %cl.1.i.i, %cl_tail.1.i.i
  br i1 %cmp45.i.i, label %if.then47.i.i, label %if.then41.i.i.if.end62.i.i_crit_edge

if.then41.i.i.if.end62.i.i_crit_edge:             ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62.i.i

if.then47.i.i:                                    ; preds = %if.then41.i.i
  %cmp48.i.i = icmp eq ptr %cl_tail.1.i.i, %cl_prev.1.i.i
  br i1 %cmp48.i.i, label %if.then50.i.i, label %if.end59.i.i

if.then50.i.i:                                    ; preds = %if.then47.i.i
  %220 = ptrtoint ptr %arrayidx.i.i45 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr null, ptr %arrayidx.i.i45, align 4
  %221 = ptrtoint ptr %activemask1.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %activemask1.i, align 16
  %and.i.i52 = and i32 %222, %neg4.i
  store i32 %and.i.i52, ptr %activemask1.i, align 16
  %223 = ptrtoint ptr %q2.i.i47 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %q2.i.i47, align 4
  %qlen55.i.i = getelementptr inbounds %struct.Qdisc, ptr %224, i32 0, i32 17, i32 2
  %225 = ptrtoint ptr %qlen55.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %qlen55.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool56.not.i.i = icmp eq i32 %226, 0
  br i1 %tobool56.not.i.i, label %if.then50.i.i.cbq_dequeue_prio.exit.i_crit_edge, label %if.then57.i.i

if.then50.i.i.cbq_dequeue_prio.exit.i_crit_edge:  ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_dequeue_prio.exit.i

if.then57.i.i:                                    ; preds = %if.then50.i.i
  %qdisc.i140.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl_tail.1.i.i, i32 0, i32 14
  %227 = ptrtoint ptr %qdisc.i140.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %qdisc.i140.i.i, align 8
  %privdata.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %228, i32 0, i32 30
  %cpriority.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl_tail.1.i.i, i32 0, i32 22
  %229 = ptrtoint ptr %cpriority.i.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %cpriority.i.i.i, align 8
  %conv.i141.i.i = zext i8 %230 to i32
  %arrayidx.i.i.i = getelementptr %struct.cbq_sched_data, ptr %privdata.i.i.i.i, i32 0, i32 6, i32 %conv.i141.i.i
  %231 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %arrayidx.i.i.i, align 4
  store ptr %cl_tail.1.i.i, ptr %arrayidx.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %232, null
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %next_alive.i.i.i = getelementptr inbounds %struct.cbq_class, ptr %232, i32 0, i32 1
  %233 = ptrtoint ptr %next_alive.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %next_alive.i.i.i, align 4
  %235 = ptrtoint ptr %next_alive42.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %234, ptr %next_alive42.i.i, align 4
  store ptr %cl_tail.1.i.i, ptr %next_alive.i.i.i, align 4
  br label %cbq_dequeue_prio.exit.i

if.else.i.i.i:                                    ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %236 = ptrtoint ptr %next_alive42.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %cl_tail.1.i.i, ptr %next_alive42.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %conv.i141.i.i
  %activemask.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %228, i32 1, i32 25, i32 0, i32 0, i32 4
  %237 = ptrtoint ptr %activemask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %activemask.i.i.i, align 16
  %or.i.i.i = or i32 %238, %shl.i.i.i
  store i32 %or.i.i.i, ptr %activemask.i.i.i, align 16
  br label %cbq_dequeue_prio.exit.i

if.end59.i.i:                                     ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %239 = ptrtoint ptr %arrayidx.i.i45 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %cl_prev.1.i.i, ptr %arrayidx.i.i45, align 4
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.end59.i.i, %if.then41.i.i.if.end62.i.i_crit_edge
  %cl_tail.2.i.i = phi ptr [ %cl_prev.1.i.i, %if.end59.i.i ], [ %cl_tail.1.i.i, %if.then41.i.i.if.end62.i.i_crit_edge ]
  %240 = ptrtoint ptr %q2.i.i47 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %q2.i.i47, align 4
  %qlen65.i.i = getelementptr inbounds %struct.Qdisc, ptr %241, i32 0, i32 17, i32 2
  %242 = ptrtoint ptr %qlen65.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %qlen65.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool66.not.i.i = icmp eq i32 %243, 0
  br i1 %tobool66.not.i.i, label %if.end62.i.i.do.cond.i.i53_crit_edge, label %if.then67.i.i

if.end62.i.i.do.cond.i.i53_crit_edge:             ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond.i.i53

if.then67.i.i:                                    ; preds = %if.end62.i.i
  %qdisc.i143.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 14
  %244 = ptrtoint ptr %qdisc.i143.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %qdisc.i143.i.i, align 8
  %privdata.i.i144.i.i = getelementptr inbounds %struct.Qdisc, ptr %245, i32 0, i32 30
  %cpriority.i145.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.1.i.i, i32 0, i32 22
  %246 = ptrtoint ptr %cpriority.i145.i.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %cpriority.i145.i.i, align 8
  %conv.i146.i.i = zext i8 %247 to i32
  %arrayidx.i147.i.i = getelementptr %struct.cbq_sched_data, ptr %privdata.i.i144.i.i, i32 0, i32 6, i32 %conv.i146.i.i
  %248 = ptrtoint ptr %arrayidx.i147.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx.i147.i.i, align 4
  store ptr %cl.1.i.i, ptr %arrayidx.i147.i.i, align 4
  %cmp.not.i148.i.i = icmp eq ptr %249, null
  br i1 %cmp.not.i148.i.i, label %if.else.i156.i.i, label %if.then.i151.i.i

if.then.i151.i.i:                                 ; preds = %if.then67.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %next_alive.i149.i.i = getelementptr inbounds %struct.cbq_class, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %next_alive.i149.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %next_alive.i149.i.i, align 4
  %252 = ptrtoint ptr %next_alive42.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %251, ptr %next_alive42.i.i, align 4
  store ptr %cl.1.i.i, ptr %next_alive.i149.i.i, align 4
  br label %do.cond.i.i53

if.else.i156.i.i:                                 ; preds = %if.then67.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %253 = ptrtoint ptr %next_alive42.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %cl.1.i.i, ptr %next_alive42.i.i, align 4
  %shl.i153.i.i = shl nuw i32 1, %conv.i146.i.i
  %activemask.i154.i.i = getelementptr inbounds %struct.Qdisc, ptr %245, i32 1, i32 25, i32 0, i32 0, i32 4
  %254 = ptrtoint ptr %activemask.i154.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %activemask.i154.i.i, align 16
  %or.i155.i.i = or i32 %255, %shl.i153.i.i
  store i32 %or.i155.i.i, ptr %activemask.i154.i.i, align 16
  br label %do.cond.i.i53

do.cond.i.i53:                                    ; preds = %if.else.i156.i.i, %if.then.i151.i.i, %if.end62.i.i.do.cond.i.i53_crit_edge, %lor.lhs.false.i.i.do.cond.i.i53_crit_edge, %if.then7.i.i
  %cl_tail.3.i.i = phi ptr [ %cl_tail.1.i.i, %lor.lhs.false.i.i.do.cond.i.i53_crit_edge ], [ %cl_tail.1.i.i, %if.then7.i.i ], [ %cl_tail.2.i.i, %if.end62.i.i.do.cond.i.i53_crit_edge ], [ %cl_tail.2.i.i, %if.then.i151.i.i ], [ %cl_tail.2.i.i, %if.else.i156.i.i ]
  %cl.3.i.i = phi ptr [ %cl.1.i.i, %lor.lhs.false.i.i.do.cond.i.i53_crit_edge ], [ %cl.1.i.i, %if.then7.i.i ], [ %cl_prev.1.i.i, %if.end62.i.i.do.cond.i.i53_crit_edge ], [ %cl_prev.1.i.i, %if.then.i151.i.i ], [ %cl_prev.1.i.i, %if.else.i156.i.i ]
  %deficit.1.i.i = phi i32 [ %deficit.0.i.i, %lor.lhs.false.i.i.do.cond.i.i53_crit_edge ], [ 1, %if.then7.i.i ], [ %deficit.0.i.i, %if.end62.i.i.do.cond.i.i53_crit_edge ], [ %deficit.0.i.i, %if.then.i151.i.i ], [ %deficit.0.i.i, %if.else.i156.i.i ]
  %next_alive70.i.i = getelementptr inbounds %struct.cbq_class, ptr %cl.3.i.i, i32 0, i32 1
  %256 = ptrtoint ptr %next_alive70.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %next_alive70.i.i, align 4
  %cmp71.not.i.i = icmp eq ptr %cl.3.i.i, %cl_tail.3.i.i
  br i1 %cmp71.not.i.i, label %do.cond73.i.i, label %do.cond.i.i53.do.body1.i.i.backedge_crit_edge

do.cond.i.i53.do.body1.i.i.backedge_crit_edge:    ; preds = %do.cond.i.i53
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i.i.backedge

do.body1.i.i.backedge:                            ; preds = %do.cond73.i.i.do.body1.i.i.backedge_crit_edge, %do.cond.i.i53.do.body1.i.i.backedge_crit_edge
  %cl_prev.1.i.i.be = phi ptr [ %cl.3.i.i, %do.cond.i.i53.do.body1.i.i.backedge_crit_edge ], [ %cl_tail.3.i.i, %do.cond73.i.i.do.body1.i.i.backedge_crit_edge ]
  %deficit.0.i.i.be = phi i32 [ %deficit.1.i.i, %do.cond.i.i53.do.body1.i.i.backedge_crit_edge ], [ 0, %do.cond73.i.i.do.body1.i.i.backedge_crit_edge ]
  br label %do.body1.i.i

do.cond73.i.i:                                    ; preds = %do.cond.i.i53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deficit.1.i.i)
  %tobool74.not.i.i = icmp eq i32 %deficit.1.i.i, 0
  br i1 %tobool74.not.i.i, label %do.end75.i.i, label %do.cond73.i.i.do.body1.i.i.backedge_crit_edge

do.cond73.i.i.do.body1.i.i.backedge_crit_edge:    ; preds = %do.cond73.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i.i.backedge

do.end75.i.i:                                     ; preds = %do.cond73.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %258 = ptrtoint ptr %arrayidx.i.i45 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %cl_tail.3.i.i, ptr %arrayidx.i.i45, align 4
  br label %cbq_dequeue_prio.exit.i

cbq_dequeue_prio.exit.i:                          ; preds = %do.end75.i.i, %if.else.i.i.i, %if.then.i.i.i, %if.then50.i.i.cbq_dequeue_prio.exit.i_crit_edge
  %tobool.not.i54 = icmp eq i32 %and5.i, 0
  br i1 %tobool.not.i54, label %cbq_dequeue_prio.exit.i.if.end7_crit_edge, label %cbq_dequeue_prio.exit.i.while.body.i_crit_edge

cbq_dequeue_prio.exit.i.while.body.i_crit_edge:   ; preds = %cbq_dequeue_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

cbq_dequeue_prio.exit.i.if.end7_crit_edge:        ; preds = %cbq_dequeue_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then5:                                         ; preds = %if.then27.i.i, %if.end23.i.i.if.then5_crit_edge
  %259 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %cb.i.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call12.i.i, i32 0, i32 17
  %261 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %262, i32 0, i32 4
  %263 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %264)
  %tobool.i.not.i.i = icmp eq i16 %264, 0
  br i1 %tobool.i.not.i.i, label %if.then5.qdisc_bstats_update.exit_crit_edge, label %cond.true.i.i

if.then5.qdisc_bstats_update.exit_crit_edge:      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_bstats_update.exit

cond.true.i.i:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %262, i32 0, i32 5
  %265 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %266 to i32
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %cond.true.i.i, %if.then5.qdisc_bstats_update.exit_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %if.then5.qdisc_bstats_update.exit_crit_edge ]
  %bstats.i56 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i57 = zext i32 %260 to i64
  tail call fastcc void @_bstats_update(ptr noundef %bstats.i56, i64 noundef %conv.i.i57, i32 noundef %cond.i.i) #16
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %267 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %qlen, align 8
  %dec = add i32 %268, -1
  store i32 %dec, ptr %qlen, align 8
  br label %cleanup

if.end7:                                          ; preds = %cbq_dequeue_prio.exit.i.if.end7_crit_edge, %for.cond.if.end7_crit_edge
  %269 = ptrtoint ptr %toplevel to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %toplevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %270)
  %cmp = icmp eq i32 %270, 8
  br i1 %cmp, label %land.lhs.true, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end7
  %271 = ptrtoint ptr %undertime to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %undertime, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %272)
  %cmp8 = icmp eq i64 %272, 0
  br i1 %cmp8, label %for.end, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end7.if.end10_crit_edge
  %273 = ptrtoint ptr %toplevel to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 8, ptr %toplevel, align 4
  %274 = ptrtoint ptr %undertime to i32
  call void @__asan_store8_noabort(i32 %274)
  store i64 0, ptr %undertime, align 8
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %qlen15 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %275 = ptrtoint ptr %qlen15 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %qlen15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %tobool16.not = icmp eq i32 %276, 0
  br i1 %tobool16.not, label %for.end.cleanup_crit_edge, label %if.then17

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then17:                                        ; preds = %for.end
  %overlimits.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %277 = ptrtoint ptr %overlimits.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %overlimits.i, align 16
  %inc.i = add i32 %278, 1
  store i32 %inc.i, ptr %overlimits.i, align 16
  %279 = ptrtoint ptr %wd_expires to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %wd_expires, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool19.not = icmp eq i32 %280, 0
  br i1 %tobool19.not, label %if.then17.cleanup_crit_edge, label %if.then20

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 2
  %conv = sext i32 %280 to i64
  %add = add nsw i64 %shr.i, %conv
  %shl.i58 = shl i64 %add, 6
  tail call void @qdisc_watchdog_schedule_range_ns(ptr noundef %watchdog, i64 noundef %shl.i58, i64 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.then17.cleanup_crit_edge, %for.end.cleanup_crit_edge, %qdisc_bstats_update.exit
  %retval.0 = phi ptr [ %call12.i.i, %qdisc_bstats_update.exit ], [ null, %if.then17.cleanup_crit_edge ], [ null, %if.then20 ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_peek_dequeued(ptr noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not15 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not15
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then:                                          ; preds = %entry
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %sch) #16
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
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
define internal i32 @cbq_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tb) #16
  %0 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 5
  %3 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 6
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 2
  %4 = call ptr @memset(ptr %tb, i32 255, i32 32)
  tail call void @qdisc_watchdog_init(ptr noundef %watchdog, ptr noundef %sch) #16
  %delay_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 27
  tail call void @hrtimer_init(ptr noundef %delay_timer, i32 noundef 1, i32 noundef 2) #16
  %function = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 29, i32 20
  %5 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cbq_undelay, ptr %function, align 8
  %tobool.not.i = icmp eq ptr %opt, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end3.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cbq_opt_parse.__msg) #16
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3.i:                                        ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %opt, i32 4
  %6 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %opt, align 2
  %conv.i.i.i = zext i16 %7 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 7, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @cbq_policy, i32 noundef 0, ptr noundef %extack) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %if.end3.i.cleanup_crit_edge, label %if.end5.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5.i:                                        ; preds = %if.end3.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %tobool6.not.i = icmp eq ptr %9, null
  br i1 %tobool6.not.i, label %if.end5.i.if.end_crit_edge, label %if.then7.i

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then7.i:                                       ; preds = %if.end5.i
  %priority.i = getelementptr i8, ptr %9, i32 5
  %10 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %priority.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %11)
  %cmp10.i = icmp ugt i8 %11, 8
  br i1 %cmp10.i, label %do.body13.i, label %if.then7.i.if.end_crit_edge

if.then7.i.if.end_crit_edge:                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.body13.i:                                      ; preds = %if.then7.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @cbq_opt_parse.__msg.10) #16
  %tobool15.not.i = icmp eq ptr %extack, null
  br i1 %tobool15.not.i, label %do.body13.i.cleanup_crit_edge, label %do.body13.i.cleanup.sink.split.i_crit_edge

do.body13.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

do.body13.i.cleanup_crit_edge:                    ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %do.body13.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %cbq_opt_parse.__msg.10.sink.i = phi ptr [ @cbq_opt_parse.__msg, %do.body.i.cleanup.sink.split.i_crit_edge ], [ @cbq_opt_parse.__msg.10, %do.body13.i.cleanup.sink.split.i_crit_edge ]
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cbq_opt_parse.__msg.10.sink.i, ptr %extack, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then7.i.if.end_crit_edge, %if.end5.i.if.end_crit_edge
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %lor.lhs.false.do.body_crit_edge, label %if.end9

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @cbq_init.__msg) #16
  %tobool6.not = icmp eq ptr %extack, null
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %if.then7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @cbq_init.__msg, ptr %extack, align 4
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %16, i32 4
  %call13 = call ptr @qdisc_get_rtab(ptr noundef %add.ptr.i, ptr noundef nonnull %14, ptr noundef %extack) #16
  %link = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %R_tab = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %18 = ptrtoint ptr %R_tab to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call13, ptr %R_tab, align 8
  %tobool16.not = icmp eq ptr %call13, null
  br i1 %tobool16.not, label %if.end9.cleanup_crit_edge, label %if.end18

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 22
  %filter_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 21
  %call21 = call i32 @tcf_block_get(ptr noundef %block, ptr noundef %filter_list, ptr noundef %sch, ptr noundef %extack) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.put_rtab_crit_edge

if.end18.put_rtab_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_rtab

if.end24:                                         ; preds = %if.end18
  %call25 = call i32 @qdisc_class_hash_init(ptr noundef %privdata.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %put_block, label %if.end28

if.end28:                                         ; preds = %if.end24
  %sibling = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %sibling to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %link, ptr %sibling, align 4
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %20 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %handle, align 32
  %22 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %link, align 16
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 3
  %23 = ptrtoint ptr %qdisc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %sch, ptr %qdisc, align 8
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %24 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_queue, align 8
  %call34 = call ptr @qdisc_create_dflt(ptr noundef %25, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %21, ptr noundef null) #16
  %q36 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 7
  %26 = ptrtoint ptr %q36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call34, ptr %q36, align 4
  %tobool39.not = icmp eq ptr %call34, null
  br i1 %tobool39.not, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %q36 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @noop_qdisc, ptr %q36, align 4
  br label %if.end45

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  call void @qdisc_hash_add(ptr noundef nonnull %call34, i1 noundef zeroext true) #16
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then40
  %priority = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 48
  %28 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 7, ptr %priority, align 16
  %priority2 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 49
  %29 = ptrtoint ptr %priority2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 7, ptr %priority2, align 1
  %cpriority = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17
  %30 = ptrtoint ptr %cpriority to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 7, ptr %cpriority, align 8
  %31 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_queue, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 20
  %35 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 19
  %37 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %38 to i32
  %add.i = add i32 %36, %conv.i
  %allot = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2
  %39 = ptrtoint ptr %allot to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.i, ptr %allot, align 4
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %quantum to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i, ptr %quantum, align 16
  %41 = ptrtoint ptr %R_tab to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %R_tab, align 8
  %rate57 = getelementptr inbounds %struct.tc_ratespec, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %rate57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rate57, align 4
  %weight = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 2
  %45 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %weight, align 4
  %ewma_log = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 50
  %46 = ptrtoint ptr %ewma_log to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 5, ptr %ewma_log, align 2
  %div = sdiv i32 %add.i, 2
  %avpkt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %avpkt to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div, ptr %avpkt, align 4
  %minidle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %48 = ptrtoint ptr %minidle to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -2147483647, ptr %minidle, align 16
  %toplevel = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 12
  %49 = ptrtoint ptr %toplevel to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 8, ptr %toplevel, align 4
  %call.i.i = call i64 @ktime_get() #16
  %shr.i = lshr i64 %call.i.i, 6
  %now = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4, i32 2
  %50 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %shr.i, ptr %now, align 8
  %51 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %qdisc, align 8
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %52, i32 0, i32 30
  %tparent.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 1, i32 1
  %53 = ptrtoint ptr %tparent.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tparent.i, align 4
  %55 = ptrtoint ptr %sibling to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %link, ptr %sibling, align 4
  call void @qdisc_class_hash_insert(ptr noundef %privdata.i.i, ptr noundef %link) #16
  %cmp.i133 = icmp eq ptr %54, null
  br i1 %cmp.i133, label %if.end45.cbq_link_class.exit_crit_edge, label %if.end.i

if.end45.cbq_link_class.exit_crit_edge:           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_link_class.exit

if.end.i:                                         ; preds = %if.end45
  %children.i = getelementptr inbounds %struct.cbq_class, ptr %54, i32 0, i32 20
  %56 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %children.i, align 16
  %cmp1.i = icmp eq ptr %57, null
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %58 = ptrtoint ptr %children.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %link, ptr %children.i, align 16
  br label %cbq_link_class.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %sibling5.i = getelementptr inbounds %struct.cbq_class, ptr %57, i32 0, i32 19
  %59 = ptrtoint ptr %sibling5.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sibling5.i, align 4
  %61 = ptrtoint ptr %sibling to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %sibling, align 4
  %62 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %children.i, align 16
  %sibling8.i = getelementptr inbounds %struct.cbq_class, ptr %63, i32 0, i32 19
  %64 = ptrtoint ptr %sibling8.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %link, ptr %sibling8.i, align 4
  br label %cbq_link_class.exit

cbq_link_class.exit:                              ; preds = %if.else.i, %if.then2.i, %if.end45.cbq_link_class.exit_crit_edge
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %0, align 4
  %tobool67.not = icmp eq ptr %66, null
  br i1 %tobool67.not, label %cbq_link_class.exit.if.end73_crit_edge, label %if.then68

cbq_link_class.exit.if.end73_crit_edge:           ; preds = %cbq_link_class.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end73

if.then68:                                        ; preds = %cbq_link_class.exit
  %add.ptr.i134 = getelementptr i8, ptr %66, i32 4
  %67 = ptrtoint ptr %add.ptr.i134 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %add.ptr.i134, align 4
  %69 = and i8 %68, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i135 = icmp eq i8 %69, 0
  br i1 %tobool.not.i135, label %if.then68.if.end.i137_crit_edge, label %if.then.i

if.then68.if.end.i137_crit_edge:                  ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i137

if.then.i:                                        ; preds = %if.then68
  %flags.i = getelementptr i8, ptr %66, i32 5
  %70 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %flags.i, align 1
  %72 = and i8 %71, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool3.not.i = icmp eq i8 %72, 0
  br i1 %tobool3.not.i, label %cond.false.i, label %if.then.i.cond.end.i_crit_edge

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %73 = ptrtoint ptr %tparent.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tparent.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %74, %cond.false.i ], [ null, %if.then.i.cond.end.i_crit_edge ]
  %share.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %share.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %cond.i, ptr %share.i, align 16
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %flags.i, align 1
  %78 = and i8 %77, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool7.not.i = icmp eq i8 %78, 0
  br i1 %tobool7.not.i, label %cond.false9.i, label %cond.end.i.cond.end11.i_crit_edge

cond.end.i.cond.end11.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end11.i

cond.false9.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %79 = ptrtoint ptr %tparent.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tparent.i, align 4
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %cond.false9.i, %cond.end.i.cond.end11.i_crit_edge
  %cond12.i = phi ptr [ %80, %cond.false9.i ], [ null, %cond.end.i.cond.end11.i_crit_edge ]
  %borrow.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 2
  %81 = ptrtoint ptr %borrow.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %cond12.i, ptr %borrow.i, align 8
  br label %if.end.i137

if.end.i137:                                      ; preds = %cond.end11.i, %if.then68.if.end.i137_crit_edge
  %82 = ptrtoint ptr %add.ptr.i134 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %add.ptr.i134, align 4
  %84 = and i8 %83, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool16.not.i = icmp eq i8 %84, 0
  br i1 %tobool16.not.i, label %if.end.i137.if.end19.i_crit_edge, label %if.then17.i

if.end.i137.if.end19.i_crit_edge:                 ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #18
  %ewma_log.i = getelementptr i8, ptr %66, i32 6
  %85 = ptrtoint ptr %ewma_log.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %ewma_log.i, align 2
  %87 = ptrtoint ptr %ewma_log to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %ewma_log, align 2
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end.i137.if.end19.i_crit_edge
  %88 = ptrtoint ptr %add.ptr.i134 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %add.ptr.i134, align 4
  %90 = and i8 %89, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool23.not.i = icmp eq i8 %90, 0
  br i1 %tobool23.not.i, label %if.end19.i.if.end26.i_crit_edge, label %if.then24.i

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  %avpkt.i = getelementptr i8, ptr %66, i32 20
  %91 = ptrtoint ptr %avpkt.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %avpkt.i, align 4
  %93 = ptrtoint ptr %avpkt to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %avpkt, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end19.i.if.end26.i_crit_edge
  %94 = ptrtoint ptr %add.ptr.i134 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %add.ptr.i134, align 4
  %96 = and i8 %95, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool30.not.i = icmp eq i8 %96, 0
  br i1 %tobool30.not.i, label %if.end26.i.if.end33.i_crit_edge, label %if.then31.i

if.end26.i.if.end33.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33.i

if.then31.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  %minidle.i = getelementptr i8, ptr %66, i32 12
  %97 = ptrtoint ptr %minidle.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %minidle.i, align 4
  %sub.i = sub i32 0, %98
  %99 = ptrtoint ptr %minidle to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %sub.i, ptr %minidle, align 16
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %if.end26.i.if.end33.i_crit_edge
  %100 = ptrtoint ptr %add.ptr.i134 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %add.ptr.i134, align 4
  %102 = and i8 %101, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool37.not.i = icmp eq i8 %102, 0
  br i1 %tobool37.not.i, label %if.end33.i.if.end41.i_crit_edge, label %if.then38.i

if.end33.i.if.end41.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41.i

if.then38.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  %maxidle.i = getelementptr i8, ptr %66, i32 8
  %103 = ptrtoint ptr %maxidle.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %maxidle.i, align 4
  %maxidle39.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %105 = ptrtoint ptr %maxidle39.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %maxidle39.i, align 8
  %106 = load i32, ptr %maxidle.i, align 4
  %avgidle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 3
  %107 = ptrtoint ptr %avgidle.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %avgidle.i, align 16
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then38.i, %if.end33.i.if.end41.i_crit_edge
  %108 = ptrtoint ptr %add.ptr.i134 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %add.ptr.i134, align 4
  %110 = and i8 %109, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool45.not.i = icmp eq i8 %110, 0
  br i1 %tobool45.not.i, label %if.end41.i.if.end73_crit_edge, label %if.then46.i

if.end41.i.if.end73_crit_edge:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end73

if.then46.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #18
  %offtime.i = getelementptr i8, ptr %66, i32 16
  %111 = ptrtoint ptr %offtime.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %offtime.i, align 4
  %offtime47.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 60
  %113 = ptrtoint ptr %offtime47.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %offtime47.i, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then46.i, %if.end41.i.if.end73_crit_edge, %cbq_link_class.exit.if.end73_crit_edge
  %114 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %priority, align 16
  %idxprom.i = zext i8 %115 to i32
  %arrayidx.i139 = getelementptr %struct.cbq_sched_data, ptr %privdata.i, i32 0, i32 1, i32 %idxprom.i
  %116 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i139, align 4
  %inc.i = add i32 %117, 1
  store i32 %inc.i, ptr %arrayidx.i139, align 4
  %118 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %weight, align 4
  %120 = load i8, ptr %priority, align 16
  %idxprom2.i = zext i8 %120 to i32
  %arrayidx3.i = getelementptr %struct.cbq_sched_data, ptr %privdata.i, i32 0, i32 2, i32 %idxprom2.i
  %121 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx3.i, align 4
  %add.i140 = add i32 %122, %119
  store i32 %add.i140, ptr %arrayidx3.i, align 4
  %123 = load i8, ptr %priority, align 16
  %conv.i141 = zext i8 %123 to i32
  call fastcc void @cbq_normalize_quanta(ptr noundef %privdata.i, i32 noundef %conv.i141) #16
  br label %cleanup

put_block:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %124 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %block, align 4
  call void @tcf_block_put(ptr noundef %125) #16
  br label %put_rtab

put_rtab:                                         ; preds = %put_block, %if.end18.put_rtab_crit_edge
  %err.0 = phi i32 [ %call21, %if.end18.put_rtab_crit_edge ], [ %call25, %put_block ]
  %126 = ptrtoint ptr %R_tab to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %R_tab, align 8
  call void @qdisc_put_rtab(ptr noundef %127) #16
  br label %cleanup

cleanup:                                          ; preds = %put_rtab, %if.end73, %if.end9.cleanup_crit_edge, %if.then7, %do.body.cleanup_crit_edge, %cleanup.sink.split.i, %do.body13.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %put_rtab ], [ 0, %if.end73 ], [ -22, %if.then7 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %cleanup.sink.split.i ], [ -22, %do.body13.i.cleanup_crit_edge ], [ %call2.i.i, %if.end3.i.cleanup_crit_edge ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tb) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cbq_reset(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %activemask = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4
  %0 = ptrtoint ptr %activemask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %activemask, align 16
  %pmask = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4, i32 6
  %1 = ptrtoint ptr %pmask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pmask, align 16
  %tx_class = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4
  %2 = ptrtoint ptr %tx_class to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tx_class, align 4
  %tx_borrowed = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %tx_borrowed to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tx_borrowed, align 16
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 2
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog) #16
  %delay_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 27
  %call1 = tail call i32 @hrtimer_cancel(ptr noundef %delay_timer) #16
  %toplevel = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 12
  %4 = ptrtoint ptr %toplevel to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %toplevel, align 4
  %call.i.i = tail call i64 @ktime_get() #16
  %shr.i = lshr i64 %call.i.i, 6
  %now = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %shr.i, ptr %now, align 8
  %uglygep = getelementptr i8, ptr %sch, i32 916
  %6 = call ptr @memset(ptr %uglygep, i32 0, i32 36)
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %7 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp463.not = icmp eq i32 %8, 0
  br i1 %cmp463.not, label %entry.for.end27_crit_edge, label %entry.for.body5_crit_edge

entry.for.body5_crit_edge:                        ; preds = %entry
  br label %for.body5

entry.for.end27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end27

for.body5:                                        ; preds = %for.inc25.for.body5_crit_edge, %entry.for.body5_crit_edge
  %h.064 = phi i32 [ %inc26, %for.inc25.for.body5_crit_edge ], [ 0, %entry.for.body5_crit_edge ]
  %9 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %privdata.i, align 16
  %arrayidx7 = getelementptr %struct.hlist_head, ptr %10, i32 %h.064
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %12, null
  %add.ptr = getelementptr i8, ptr %12, i32 -4
  %tobool10.not6165 = icmp eq ptr %add.ptr, null
  %tobool10.not61 = or i1 %tobool.not, %tobool10.not6165
  br i1 %tobool10.not61, label %for.body5.for.inc25_crit_edge, label %for.body5.for.body11_crit_edge

for.body5.for.body11_crit_edge:                   ; preds = %for.body5
  br label %for.body11

for.body5.for.inc25_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc25

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body5.for.body11_crit_edge
  %cl.062 = phi ptr [ %add.ptr20, %for.body11.for.body11_crit_edge ], [ %add.ptr, %for.body5.for.body11_crit_edge ]
  %q12 = getelementptr inbounds %struct.cbq_class, ptr %cl.062, i32 0, i32 21
  %13 = ptrtoint ptr %q12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %q12, align 4
  tail call void @qdisc_reset(ptr noundef %14) #16
  %next_alive = getelementptr inbounds %struct.cbq_class, ptr %cl.062, i32 0, i32 1
  %15 = ptrtoint ptr %next_alive to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %next_alive, align 4
  %undertime = getelementptr inbounds %struct.cbq_class, ptr %cl.062, i32 0, i32 26
  %16 = ptrtoint ptr %undertime to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %undertime, align 8
  %maxidle = getelementptr inbounds %struct.cbq_class, ptr %cl.062, i32 0, i32 6
  %17 = ptrtoint ptr %maxidle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxidle, align 8
  %avgidle = getelementptr inbounds %struct.cbq_class, ptr %cl.062, i32 0, i32 27
  %19 = ptrtoint ptr %avgidle to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %avgidle, align 16
  %quantum = getelementptr inbounds %struct.cbq_class, ptr %cl.062, i32 0, i32 12
  %20 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quantum, align 16
  %deficit = getelementptr inbounds %struct.cbq_class, ptr %cl.062, i32 0, i32 28
  %22 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %deficit, align 4
  %priority = getelementptr inbounds %struct.cbq_class, ptr %cl.062, i32 0, i32 2
  %23 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %priority, align 16
  %cpriority = getelementptr inbounds %struct.cbq_class, ptr %cl.062, i32 0, i32 22
  %25 = ptrtoint ptr %cpriority to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %cpriority, align 8
  %hnode = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.062, i32 0, i32 1
  %26 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hnode, align 4
  %tobool16.not = icmp eq ptr %27, null
  %add.ptr20 = getelementptr i8, ptr %27, i32 -4
  %tobool10.not66 = icmp eq ptr %add.ptr20, null
  %tobool10.not = or i1 %tobool16.not, %tobool10.not66
  br i1 %tobool10.not, label %for.body11.for.inc25_crit_edge, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body11

for.body11.for.inc25_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc25

for.inc25:                                        ; preds = %for.body11.for.inc25_crit_edge, %for.body5.for.inc25_crit_edge
  %inc26 = add nuw i32 %h.064, 1
  %28 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hashsize, align 4
  %cmp4 = icmp ult i32 %inc26, %29
  br i1 %cmp4, label %for.inc25.for.body5_crit_edge, label %for.inc25.for.end27_crit_edge

for.inc25.for.end27_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end27

for.inc25.for.body5_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body5

for.end27:                                        ; preds = %for.inc25.for.end27_crit_edge, %entry.for.end27_crit_edge
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %30 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %qlen, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cbq_destroy(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %rx_class = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %rx_class to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rx_class, align 8
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %1 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp97.not = icmp eq i32 %2, 0
  br i1 %cmp97.not, label %entry.for.end61_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end61

for.cond20.preheader:                             ; preds = %for.inc18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp23101.not = icmp eq i32 %13, 0
  br i1 %cmp23101.not, label %for.cond20.preheader.for.end61_crit_edge, label %for.cond20.preheader.for.body24_crit_edge

for.cond20.preheader.for.body24_crit_edge:        ; preds = %for.cond20.preheader
  br label %for.body24

for.cond20.preheader.for.end61_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end61

for.body:                                         ; preds = %for.inc18.for.body_crit_edge, %entry.for.body_crit_edge
  %h.098 = phi i32 [ %inc, %for.inc18.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %privdata.i, align 16
  %arrayidx = getelementptr %struct.hlist_head, ptr %4, i32 %h.098
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  %add.ptr = getelementptr i8, ptr %6, i32 -4
  %tobool4.not95103 = icmp eq ptr %add.ptr, null
  %tobool4.not95 = or i1 %tobool.not, %tobool4.not95103
  br i1 %tobool4.not95, label %for.body.for.inc18_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.for.inc18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc18

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %cl.096 = phi ptr [ %add.ptr14, %for.body5.for.body5_crit_edge ], [ %add.ptr, %for.body.for.body5_crit_edge ]
  %block = getelementptr inbounds %struct.cbq_class, ptr %cl.096, i32 0, i32 35
  %7 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %block, align 4
  tail call void @tcf_block_put(ptr noundef %8) #16
  %9 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %block, align 4
  %hnode = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.096, i32 0, i32 1
  %10 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hnode, align 4
  %tobool10.not = icmp eq ptr %11, null
  %add.ptr14 = getelementptr i8, ptr %11, i32 -4
  %tobool4.not106 = icmp eq ptr %add.ptr14, null
  %tobool4.not = or i1 %tobool10.not, %tobool4.not106
  br i1 %tobool4.not, label %for.body5.for.inc18_crit_edge, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body5

for.body5.for.inc18_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc18

for.inc18:                                        ; preds = %for.body5.for.inc18_crit_edge, %for.body.for.inc18_crit_edge
  %inc = add nuw i32 %h.098, 1
  %12 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hashsize, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc18.for.body_crit_edge, label %for.cond20.preheader

for.inc18.for.body_crit_edge:                     ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body24:                                       ; preds = %for.inc59.for.body24_crit_edge, %for.cond20.preheader.for.body24_crit_edge
  %h.1102 = phi i32 [ %inc60, %for.inc59.for.body24_crit_edge ], [ 0, %for.cond20.preheader.for.body24_crit_edge ]
  %14 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %privdata.i, align 16
  %arrayidx28 = getelementptr %struct.hlist_head, ptr %15, i32 %h.1102
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx28, align 4
  %tobool31.not = icmp eq ptr %17, null
  %add.ptr35 = getelementptr i8, ptr %17, i32 -4
  %tobool40.not99104 = icmp eq ptr %add.ptr35, null
  %tobool40.not99 = or i1 %tobool31.not, %tobool40.not99104
  br i1 %tobool40.not99, label %for.body24.for.inc59_crit_edge, label %for.body24.land.rhs_crit_edge

for.body24.land.rhs_crit_edge:                    ; preds = %for.body24
  br label %land.rhs

for.body24.for.inc59_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc59

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %for.body24.land.rhs_crit_edge
  %cl.1100 = phi ptr [ %add.ptr54, %land.rhs.land.rhs_crit_edge ], [ %add.ptr35, %for.body24.land.rhs_crit_edge ]
  %hnode42 = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.1100, i32 0, i32 1
  %18 = ptrtoint ptr %hnode42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hnode42, align 4
  tail call fastcc void @cbq_destroy_class(ptr noundef %sch, ptr noundef nonnull %cl.1100)
  %tobool50.not = icmp eq ptr %19, null
  %add.ptr54 = getelementptr i8, ptr %19, i32 -4
  %tobool40.not107 = icmp eq ptr %add.ptr54, null
  %tobool40.not = or i1 %tobool50.not, %tobool40.not107
  br i1 %tobool40.not, label %land.rhs.for.inc59_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

land.rhs.for.inc59_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc59

for.inc59:                                        ; preds = %land.rhs.for.inc59_crit_edge, %for.body24.for.inc59_crit_edge
  %inc60 = add nuw i32 %h.1102, 1
  %20 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hashsize, align 4
  %cmp23 = icmp ult i32 %inc60, %21
  br i1 %cmp23, label %for.inc59.for.body24_crit_edge, label %for.inc59.for.end61_crit_edge

for.inc59.for.end61_crit_edge:                    ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end61

for.inc59.for.body24_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body24

for.end61:                                        ; preds = %for.inc59.for.end61_crit_edge, %for.cond20.preheader.for.end61_crit_edge, %entry.for.end61_crit_edge
  tail call void @qdisc_class_hash_destroy(ptr noundef %privdata.i) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbq_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp14 = icmp eq ptr %1, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp14
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %link = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %call2 = tail call fastcc i32 @cbq_dump_attr(ptr noundef %skb, ptr noundef %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.i.i, label %if.end5

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %1, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %8, %1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !71

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end5 ], [ -1, %if.end.i.i ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbq_dump_stats(ptr noundef %sch, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %avgidle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %avgidle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %avgidle, align 16
  %xstats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 2
  %avgidle2 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 4
  %2 = ptrtoint ptr %avgidle2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %avgidle2, align 8
  %call5 = tail call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef %xstats, i32 noundef 16) #16
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbq_graft(ptr noundef %sch, i32 noundef %arg, ptr noundef %new, ptr nocapture noundef writeonly %old, ptr noundef %extack) #2 align 64 {
entry:
  %qstats.i.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %cmp = icmp eq ptr %new, null
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then:                                          ; preds = %entry
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %1 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_queue, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 16
  %call = tail call ptr @qdisc_create_dflt(ptr noundef %2, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %4, ptr noundef %extack) #16
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %new.addr.0 = phi ptr [ %call, %if.then.if.end3_crit_edge ], [ %new, %entry.if.end3_crit_edge ]
  %q = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 21
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end3.sch_tree_lock.exit.i_crit_edge

if.end3.sch_tree_lock.exit.i_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
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
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !72

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #16
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %if.end3.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %sch, %if.end3.sch_tree_lock.exit.i_crit_edge ], [ %10, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %10, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %10, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #16
  %11 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %q, align 4
  store ptr %new.addr.0, ptr %q, align 4
  %cmp.not.i = icmp eq ptr %12, null
  br i1 %cmp.not.i, label %sch_tree_lock.exit.i.if.end.i_crit_edge, label %if.then.i

sch_tree_lock.exit.i.if.end.i_crit_edge:          ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i.i) #16
  %13 = call ptr @memset(ptr %qstats.i.i.i, i32 0, i32 20)
  %cpu_qstats.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 12
  %14 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %qstats1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i.i, ptr noundef %15, ptr noundef %qstats1.i.i.i) #16
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
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i.i) #16
  call void @qdisc_reset(ptr noundef nonnull %12) #16
  call void @qdisc_tree_reduce_backlog(ptr noundef nonnull %12, i32 noundef %add.i.i.i, i32 noundef %21) #16
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
  call void @__sanitizer_cov_trace_pc() #18
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
  %call1.i.i10.i = call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %call1.i.i10.i, 0
  br i1 %tobool.not.i.i11.i, label %land.rhs.i.i14.i, label %if.else.i12.i.qdisc_replace.exit_crit_edge

if.else.i12.i.qdisc_replace.exit_crit_edge:       ; preds = %if.else.i12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_replace.exit

land.rhs.i.i14.i:                                 ; preds = %if.else.i12.i
  %.b41.i.i13.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i13.i, label %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, label %if.then.i.i15.i, !prof !72

land.rhs.i.i14.i.qdisc_replace.exit_crit_edge:    ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_replace.exit

if.then.i.i15.i:                                  ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #16
  br label %qdisc_replace.exit

qdisc_replace.exit:                               ; preds = %if.then.i.i15.i, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, %if.else.i12.i.qdisc_replace.exit_crit_edge, %if.end.i.qdisc_replace.exit_crit_edge
  %.sink.i16.i = phi ptr [ %sch, %if.end.i.qdisc_replace.exit_crit_edge ], [ %27, %if.else.i12.i.qdisc_replace.exit_crit_edge ], [ %27, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge ], [ %27, %if.then.i.i15.i ]
  %lock.i.i.i17.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i16.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i17.i) #16
  %28 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %12, ptr %old, align 4
  br label %cleanup

cleanup:                                          ; preds = %qdisc_replace.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qdisc_replace.exit ], [ -105, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @cbq_leaf(ptr nocapture noundef readnone %sch, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %q = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 21
  %1 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %q, align 4
  ret ptr %2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cbq_qlen_notify(ptr nocapture noundef readnone %sch, i32 noundef %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %qdisc.i = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 14
  %1 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %qdisc.i, align 8
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %2, i32 0, i32 30
  %cpriority.i = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 22
  %3 = ptrtoint ptr %cpriority.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cpriority.i, align 8
  %conv.i = zext i8 %4 to i32
  %arrayidx.i = getelementptr %struct.cbq_sched_data, ptr %privdata.i.i, i32 0, i32 6, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %cl_prev.0.i = phi ptr [ %6, %entry ], [ %8, %do.cond.i.do.body.i_crit_edge ]
  %next_alive.i = getelementptr inbounds %struct.cbq_class, ptr %cl_prev.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %next_alive.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %next_alive.i, align 4
  %cmp.i = icmp eq ptr %8, %0
  br i1 %cmp.i, label %if.then.i, label %do.cond.i

if.then.i:                                        ; preds = %do.body.i
  %next_alive.i.le = getelementptr inbounds %struct.cbq_class, ptr %cl_prev.0.i, i32 0, i32 1
  %next_alive2.i = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 1
  %9 = ptrtoint ptr %next_alive2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next_alive2.i, align 4
  %11 = ptrtoint ptr %next_alive.i.le to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %next_alive.i.le, align 4
  store ptr null, ptr %next_alive2.i, align 4
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %cmp7.i = icmp eq ptr %13, %0
  br i1 %cmp7.i, label %if.then9.i, label %if.then.i.cbq_deactivate_class.exit_crit_edge

if.then.i.cbq_deactivate_class.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_deactivate_class.exit

if.then9.i:                                       ; preds = %if.then.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cl_prev.0.i, ptr %arrayidx.i, align 4
  %cmp14.i = icmp eq ptr %cl_prev.0.i, %0
  br i1 %cmp14.i, label %if.then16.i, label %if.then9.i.cbq_deactivate_class.exit_crit_edge

if.then9.i.cbq_deactivate_class.exit_crit_edge:   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_deactivate_class.exit

if.then16.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx.i, align 4
  %shl.i = shl nuw i32 1, %conv.i
  %neg.i = xor i32 %shl.i, -1
  %activemask.i = getelementptr inbounds %struct.Qdisc, ptr %2, i32 1, i32 25, i32 0, i32 0, i32 4
  %16 = ptrtoint ptr %activemask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %activemask.i, align 16
  %and.i = and i32 %17, %neg.i
  store i32 %and.i, ptr %activemask.i, align 16
  br label %cbq_deactivate_class.exit

do.cond.i:                                        ; preds = %do.body.i
  %cmp23.not.i = icmp eq ptr %8, %6
  br i1 %cmp23.not.i, label %do.cond.i.cbq_deactivate_class.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

do.cond.i.cbq_deactivate_class.exit_crit_edge:    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_deactivate_class.exit

cbq_deactivate_class.exit:                        ; preds = %do.cond.i.cbq_deactivate_class.exit_crit_edge, %if.then16.i, %if.then9.i.cbq_deactivate_class.exit_crit_edge, %if.then.i.cbq_deactivate_class.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @cbq_find(ptr nocapture noundef readonly %sch, i32 noundef %classid) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %classid)
  %tobool.not.i.i = icmp eq i32 %classid, 0
  br i1 %tobool.not.i.i, label %entry.cbq_class_lookup.exit_crit_edge, label %if.end.i.i

entry.cbq_class_lookup.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_class_lookup.exit

if.end.i.i:                                       ; preds = %entry
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %hashmask.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %0 = ptrtoint ptr %hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hashmask.i.i, align 4
  %shr.i.i.i = lshr i32 %classid, 8
  %xor.i.i.i = xor i32 %shr.i.i.i, %classid
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 4
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  %and.i.i.i = and i32 %1, %xor2.i.i.i
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %privdata.i, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %3, i32 %and.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %5, null
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -4
  %tobool4.not3033.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool4.not30.i.i = or i1 %tobool2.not.i.i, %tobool4.not3033.i.i
  br i1 %tobool4.not30.i.i, label %if.end.i.i.cbq_class_lookup.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.cbq_class_lookup.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_class_lookup.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cl.031.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %cl.031.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cl.031.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %classid)
  %cmp.i.i = icmp eq i32 %7, %classid
  br i1 %cmp.i.i, label %for.body.i.i.cbq_class_lookup.exit_crit_edge, label %for.inc.i.i

for.body.i.i.cbq_class_lookup.exit_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_class_lookup.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hnode.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %hnode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hnode.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %9, null
  %add.ptr13.i.i = getelementptr i8, ptr %9, i32 -4
  %tobool4.not34.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool4.not.i.i = or i1 %tobool9.not.i.i, %tobool4.not34.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.cbq_class_lookup.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.cbq_class_lookup.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_class_lookup.exit

cbq_class_lookup.exit:                            ; preds = %for.inc.i.i.cbq_class_lookup.exit_crit_edge, %for.body.i.i.cbq_class_lookup.exit_crit_edge, %if.end.i.i.cbq_class_lookup.exit_crit_edge, %entry.cbq_class_lookup.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %entry.cbq_class_lookup.exit_crit_edge ], [ null, %if.end.i.i.cbq_class_lookup.exit_crit_edge ], [ %cl.031.i.i, %for.body.i.i.cbq_class_lookup.exit_crit_edge ], [ null, %for.inc.i.i.cbq_class_lookup.exit_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i.i to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbq_change_class(ptr noundef %sch, i32 noundef %classid, i32 noundef %parentid, ptr nocapture noundef readonly %tca, ptr nocapture noundef %arg, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  %2 = inttoptr i32 %1 to ptr
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tb) #16
  %5 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 1
  %6 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 2
  %7 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 3
  %8 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 4
  %9 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 5
  %10 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 6
  %11 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %4, null
  %12 = call ptr @memset(ptr %tb, i32 255, i32 32)
  br i1 %tobool.not.i, label %do.body.i, label %if.end3.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cbq_opt_parse.__msg) #16
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup279_crit_edge, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

do.body.i.cleanup279_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup279

if.end3.i:                                        ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %4, align 2
  %conv.i.i.i = zext i16 %14 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 7, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @cbq_policy, i32 noundef 0, ptr noundef %extack) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %if.end3.i.cleanup279_crit_edge, label %if.end5.i

if.end3.i.cleanup279_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup279

if.end5.i:                                        ; preds = %if.end3.i
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %6, align 4
  %tobool6.not.i = icmp eq ptr %16, null
  br i1 %tobool6.not.i, label %if.end5.i.if.end_crit_edge, label %if.then7.i

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then7.i:                                       ; preds = %if.end5.i
  %priority.i = getelementptr i8, ptr %16, i32 5
  %17 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %priority.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %18)
  %cmp10.i = icmp ugt i8 %18, 8
  br i1 %cmp10.i, label %do.body13.i, label %if.then7.i.if.end_crit_edge

if.then7.i.if.end_crit_edge:                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.body13.i:                                      ; preds = %if.then7.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @cbq_opt_parse.__msg.10) #16
  %tobool15.not.i = icmp eq ptr %extack, null
  br i1 %tobool15.not.i, label %do.body13.i.cleanup279_crit_edge, label %do.body13.i.cleanup.sink.split.i_crit_edge

do.body13.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

do.body13.i.cleanup279_crit_edge:                 ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup279

cleanup.sink.split.i:                             ; preds = %do.body13.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %cbq_opt_parse.__msg.10.sink.i = phi ptr [ @cbq_opt_parse.__msg, %do.body.i.cleanup.sink.split.i_crit_edge ], [ @cbq_opt_parse.__msg.10, %do.body13.i.cleanup.sink.split.i_crit_edge ]
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cbq_opt_parse.__msg.10.sink.i, ptr %extack, align 4
  br label %cleanup279

if.end:                                           ; preds = %if.then7.i.if.end_crit_edge, %if.end5.i.if.end_crit_edge
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %8, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %11, align 4
  %tobool4.not = icmp eq ptr %23, null
  br i1 %tobool4.not, label %if.end9, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @cbq_change_class.__msg) #16
  %tobool6.not = icmp eq ptr %extack, null
  br i1 %tobool6.not, label %do.body.cleanup279_crit_edge, label %if.then7

do.body.cleanup279_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup279

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @cbq_change_class.__msg, ptr %extack, align 4
  br label %cleanup279

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool10.not = icmp eq i32 %1, 0
  br i1 %tobool10.not, label %if.end104, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parentid)
  %tobool12.not = icmp eq i32 %parentid, 0
  br i1 %tobool12.not, label %if.then11.if.end42_crit_edge, label %if.then13

if.then11.if.end42_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

if.then13:                                        ; preds = %if.then11
  %tparent = getelementptr inbounds %struct.cbq_class, ptr %2, i32 0, i32 17
  %25 = ptrtoint ptr %tparent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tparent, align 4
  %tobool14.not = icmp eq ptr %26, null
  br i1 %tobool14.not, label %if.end27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %parentid)
  %cmp17.not = icmp eq i32 %28, %parentid
  br i1 %cmp17.not, label %land.lhs.true.if.end42_crit_edge, label %do.body19

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

do.body19:                                        ; preds = %land.lhs.true
  call void @do_trace_netlink_extack(ptr noundef nonnull @cbq_change_class.__msg.2) #16
  %tobool21.not = icmp eq ptr %extack, null
  br i1 %tobool21.not, label %do.body19.cleanup279_crit_edge, label %if.then22

do.body19.cleanup279_crit_edge:                   ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup279

if.then22:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @cbq_change_class.__msg.2, ptr %extack, align 4
  br label %cleanup279

if.end27:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %parentid)
  %cmp31.not = icmp eq i32 %parentid, -1
  br i1 %cmp31.not, label %if.end27.if.end42_crit_edge, label %do.body33

if.end27.if.end42_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

do.body33:                                        ; preds = %if.end27
  call void @do_trace_netlink_extack(ptr noundef nonnull @cbq_change_class.__msg.3) #16
  %tobool35.not = icmp eq ptr %extack, null
  br i1 %tobool35.not, label %do.body33.cleanup279_crit_edge, label %if.then36

do.body33.cleanup279_crit_edge:                   ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup279

if.then36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @cbq_change_class.__msg.3, ptr %extack, align 4
  br label %cleanup279

if.end42:                                         ; preds = %if.end27.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge, %if.then11.if.end42_crit_edge
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %9, align 4
  %tobool44.not = icmp eq ptr %32, null
  br i1 %tobool44.not, label %if.end42.if.end53_crit_edge, label %if.then45

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then45:                                        ; preds = %if.end42
  %add.ptr.i = getelementptr i8, ptr %32, i32 4
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %10, align 4
  %call49 = call ptr @qdisc_get_rtab(ptr noundef %add.ptr.i, ptr noundef %34, ptr noundef %extack) #16
  %cmp50 = icmp eq ptr %call49, null
  br i1 %cmp50, label %if.then45.cleanup279_crit_edge, label %if.then45.if.end53_crit_edge

if.then45.if.end53_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then45.cleanup279_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup279

if.end53:                                         ; preds = %if.then45.if.end53_crit_edge, %if.end42.if.end53_crit_edge
  %rtab.0 = phi ptr [ %call49, %if.then45.if.end53_crit_edge ], [ null, %if.end42.if.end53_crit_edge ]
  %arrayidx54 = getelementptr ptr, ptr %tca, i32 5
  %35 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx54, align 4
  %tobool55.not = icmp eq ptr %36, null
  br i1 %tobool55.not, label %if.end53.if.end70_crit_edge, label %if.then56

if.end53.if.end70_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

if.then56:                                        ; preds = %if.end53
  %bstats = getelementptr inbounds %struct.cbq_class, ptr %2, i32 0, i32 30
  %rate_est = getelementptr inbounds %struct.cbq_class, ptr %2, i32 0, i32 32
  %call58 = call i32 @gen_replace_estimator(ptr noundef %bstats, ptr noundef null, ptr noundef %rate_est, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %36) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then56.if.end70_crit_edge, label %do.body61

if.then56.if.end70_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

do.body61:                                        ; preds = %if.then56
  call void @do_trace_netlink_extack(ptr noundef nonnull @cbq_change_class.__msg.4) #16
  %tobool63.not = icmp eq ptr %extack, null
  br i1 %tobool63.not, label %do.body61.if.end66_crit_edge, label %if.then64

do.body61.if.end66_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

if.then64:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @cbq_change_class.__msg.4, ptr %extack, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %do.body61.if.end66_crit_edge
  call void @qdisc_put_rtab(ptr noundef %rtab.0) #16
  br label %cleanup279

if.end70:                                         ; preds = %if.then56.if.end70_crit_edge, %if.end53.if.end70_crit_edge
  call fastcc void @sch_tree_lock(ptr noundef %sch)
  %next_alive = getelementptr inbounds %struct.cbq_class, ptr %2, i32 0, i32 1
  %38 = ptrtoint ptr %next_alive to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %next_alive, align 4
  %cmp71.not = icmp eq ptr %39, null
  br i1 %cmp71.not, label %if.end70.if.end73_crit_edge, label %if.then72

if.end70.if.end73_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end73

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @cbq_deactivate_class(ptr noundef nonnull %2)
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end70.if.end73_crit_edge
  %tobool74.not = icmp eq ptr %rtab.0, null
  br i1 %tobool74.not, label %if.end73.if.end77_crit_edge, label %if.then75

if.end73.if.end77_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #18
  %R_tab = getelementptr inbounds %struct.cbq_class, ptr %2, i32 0, i32 10
  %40 = ptrtoint ptr %R_tab to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %R_tab, align 8
  call void @qdisc_put_rtab(ptr noundef %41) #16
  %42 = ptrtoint ptr %R_tab to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %rtab.0, ptr %R_tab, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end73.if.end77_crit_edge
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %5, align 4
  %tobool79.not = icmp eq ptr %44, null
  br i1 %tobool79.not, label %if.end77.if.end84_crit_edge, label %if.then80

if.end77.if.end84_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end84

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i426 = getelementptr i8, ptr %44, i32 4
  call fastcc void @cbq_set_lss(ptr noundef nonnull %2, ptr noundef %add.ptr.i426)
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.end77.if.end84_crit_edge
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %6, align 4
  %tobool86.not = icmp eq ptr %46, null
  br i1 %tobool86.not, label %if.end84.if.end91_crit_edge, label %if.then87

if.end84.if.end91_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @cbq_rmprio(ptr noundef %privdata.i, ptr noundef nonnull %2)
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %6, align 4
  %add.ptr.i427 = getelementptr i8, ptr %48, i32 4
  call fastcc void @cbq_set_wrr(ptr noundef nonnull %2, ptr noundef %add.ptr.i427)
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.end84.if.end91_crit_edge
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %7, align 4
  %tobool93.not = icmp eq ptr %50, null
  br i1 %tobool93.not, label %if.end91.if.end98_crit_edge, label %if.then94

if.end91.if.end98_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i428 = getelementptr i8, ptr %50, i32 4
  call fastcc void @cbq_set_fopt(ptr noundef nonnull %2, ptr noundef %add.ptr.i428)
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %if.end91.if.end98_crit_edge
  %q99 = getelementptr inbounds %struct.cbq_class, ptr %2, i32 0, i32 21
  %51 = ptrtoint ptr %q99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %q99, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %52, i32 0, i32 17, i32 2
  %53 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool101.not = icmp eq i32 %54, 0
  br i1 %tobool101.not, label %if.end98.if.end103_crit_edge, label %if.then102

if.end98.if.end103_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

if.then102:                                       ; preds = %if.end98
  %qdisc.i = getelementptr inbounds %struct.cbq_class, ptr %2, i32 0, i32 14
  %55 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %qdisc.i, align 8
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %56, i32 0, i32 30
  %cpriority.i = getelementptr inbounds %struct.cbq_class, ptr %2, i32 0, i32 22
  %57 = ptrtoint ptr %cpriority.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %cpriority.i, align 8
  %conv.i = zext i8 %58 to i32
  %arrayidx.i429 = getelementptr %struct.cbq_sched_data, ptr %privdata.i.i, i32 0, i32 6, i32 %conv.i
  %59 = ptrtoint ptr %arrayidx.i429 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i429, align 4
  store ptr %2, ptr %arrayidx.i429, align 4
  %cmp.not.i = icmp eq ptr %60, null
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #18
  %next_alive.i = getelementptr inbounds %struct.cbq_class, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %next_alive.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %next_alive.i, align 4
  %63 = ptrtoint ptr %next_alive to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %next_alive, align 4
  store ptr %2, ptr %next_alive.i, align 4
  br label %if.end103

if.else.i:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #18
  %64 = ptrtoint ptr %next_alive to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %2, ptr %next_alive, align 4
  %shl.i = shl nuw i32 1, %conv.i
  %activemask.i = getelementptr inbounds %struct.Qdisc, ptr %56, i32 1, i32 25, i32 0, i32 0, i32 4
  %65 = ptrtoint ptr %activemask.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %activemask.i, align 16
  %or.i = or i32 %66, %shl.i
  store i32 %or.i, ptr %activemask.i, align 16
  br label %if.end103

if.end103:                                        ; preds = %if.else.i, %if.then.i, %if.end98.if.end103_crit_edge
  call fastcc void @sch_tree_unlock(ptr noundef %sch)
  br label %cleanup279

if.end104:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %parentid)
  %cmp105 = icmp eq i32 %parentid, -1
  br i1 %cmp105, label %if.end104.cleanup279_crit_edge, label %if.end107

if.end104.cleanup279_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup279

if.end107:                                        ; preds = %if.end104
  %67 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %6, align 4
  %tobool109.not = icmp eq ptr %68, null
  br i1 %tobool109.not, label %if.end107.do.body117_crit_edge, label %lor.lhs.false110

if.end107.do.body117_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body117

lor.lhs.false110:                                 ; preds = %if.end107
  %69 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %9, align 4
  %tobool112.not = icmp eq ptr %70, null
  br i1 %tobool112.not, label %lor.lhs.false110.do.body117_crit_edge, label %lor.lhs.false113

lor.lhs.false110.do.body117_crit_edge:            ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body117

lor.lhs.false113:                                 ; preds = %lor.lhs.false110
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %5, align 4
  %tobool115.not = icmp eq ptr %72, null
  br i1 %tobool115.not, label %lor.lhs.false113.do.body117_crit_edge, label %if.end125

lor.lhs.false113.do.body117_crit_edge:            ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body117

do.body117:                                       ; preds = %lor.lhs.false113.do.body117_crit_edge, %lor.lhs.false110.do.body117_crit_edge, %if.end107.do.body117_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @cbq_change_class.__msg.5) #16
  %tobool119.not = icmp eq ptr %extack, null
  br i1 %tobool119.not, label %do.body117.cleanup279_crit_edge, label %if.then120

do.body117.cleanup279_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup279

if.then120:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #18
  %73 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @cbq_change_class.__msg.5, ptr %extack, align 4
  br label %cleanup279

if.end125:                                        ; preds = %lor.lhs.false113
  %add.ptr.i430 = getelementptr i8, ptr %70, i32 4
  %74 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %10, align 4
  %call129 = call ptr @qdisc_get_rtab(ptr noundef %add.ptr.i430, ptr noundef %75, ptr noundef %extack) #16
  %cmp130 = icmp eq ptr %call129, null
  br i1 %cmp130, label %if.end125.cleanup279_crit_edge, label %if.end132

if.end125.cleanup279_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup279

if.end132:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %classid)
  %tobool133.not = icmp eq i32 %classid, 0
  %handle149 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %76 = ptrtoint ptr %handle149 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %handle149, align 32
  br i1 %tobool133.not, label %if.else, label %if.then134

if.then134:                                       ; preds = %if.end132
  %xor = xor i32 %77, %classid
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %xor)
  %tobool135.not = icmp ult i32 %xor, 65536
  br i1 %tobool135.not, label %lor.lhs.false136, label %if.then134.do.body140_crit_edge

if.then134.do.body140_crit_edge:                  ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body140

lor.lhs.false136:                                 ; preds = %if.then134
  %call137 = call fastcc ptr @cbq_class_lookup(ptr noundef %privdata.i, i32 noundef %classid)
  %tobool138.not = icmp eq ptr %call137, null
  br i1 %tobool138.not, label %lor.lhs.false136.if.end176_crit_edge, label %lor.lhs.false136.do.body140_crit_edge

lor.lhs.false136.do.body140_crit_edge:            ; preds = %lor.lhs.false136
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body140

lor.lhs.false136.if.end176_crit_edge:             ; preds = %lor.lhs.false136
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end176

do.body140:                                       ; preds = %lor.lhs.false136.do.body140_crit_edge, %if.then134.do.body140_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @cbq_change_class.__msg.6) #16
  %tobool142.not = icmp eq ptr %extack, null
  br i1 %tobool142.not, label %do.body140.failure_crit_edge, label %if.then143

do.body140.failure_crit_edge:                     ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #18
  br label %failure

if.then143:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #18
  %78 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @cbq_change_class.__msg.6, ptr %extack, align 4
  br label %failure

if.else:                                          ; preds = %if.end132
  %and150 = and i32 %77, -65536
  %or = or i32 %and150, 32768
  %hgenerator = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 16
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc162 = add nuw nsw i32 %i.0446, 1
  %exitcond.not = icmp eq i32 %inc162, 32768
  br i1 %exitcond.not, label %do.body165, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.else
  %i.0446 = phi i32 [ 0, %if.else ], [ %inc162, %for.cond.for.body_crit_edge ]
  %79 = ptrtoint ptr %hgenerator to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hgenerator, align 16
  %inc = add i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %inc)
  %cmp152 = icmp ugt i32 %inc, 32767
  %spec.select = select i1 %cmp152, i32 1, i32 %inc
  %81 = ptrtoint ptr %hgenerator to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %spec.select, ptr %hgenerator, align 16
  %or157 = or i32 %spec.select, %or
  %call158 = call fastcc ptr @cbq_class_lookup(ptr noundef %privdata.i, i32 noundef %or157)
  %cmp159 = icmp eq ptr %call158, null
  br i1 %cmp159, label %cleanup, label %for.cond

do.body165:                                       ; preds = %for.cond
  call void @do_trace_netlink_extack(ptr noundef nonnull @cbq_change_class.__msg.7) #16
  %tobool167.not = icmp eq ptr %extack, null
  br i1 %tobool167.not, label %do.body165.failure_crit_edge, label %if.then168

do.body165.failure_crit_edge:                     ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #18
  br label %failure

if.then168:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #18
  %82 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @cbq_change_class.__msg.7, ptr %extack, align 4
  br label %failure

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %83 = ptrtoint ptr %hgenerator to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hgenerator, align 16
  %or175 = or i32 %84, %or
  br label %if.end176

if.end176:                                        ; preds = %cleanup, %lor.lhs.false136.if.end176_crit_edge
  %classid.addr.1 = phi i32 [ %classid, %lor.lhs.false136.if.end176_crit_edge ], [ %or175, %cleanup ]
  %link = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parentid)
  %tobool177.not = icmp eq i32 %parentid, 0
  br i1 %tobool177.not, label %if.end176.if.end191_crit_edge, label %if.then178

if.end176.if.end191_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end191

if.then178:                                       ; preds = %if.end176
  %call179 = call fastcc ptr @cbq_class_lookup(ptr noundef %privdata.i, i32 noundef %parentid)
  %tobool180.not = icmp eq ptr %call179, null
  br i1 %tobool180.not, label %do.body182, label %if.then178.if.end191_crit_edge

if.then178.if.end191_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end191

do.body182:                                       ; preds = %if.then178
  call void @do_trace_netlink_extack(ptr noundef nonnull @cbq_change_class.__msg.8) #16
  %tobool184.not = icmp eq ptr %extack, null
  br i1 %tobool184.not, label %do.body182.failure_crit_edge, label %if.then185

do.body182.failure_crit_edge:                     ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #18
  br label %failure

if.then185:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #18
  %85 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @cbq_change_class.__msg.8, ptr %extack, align 4
  br label %failure

if.end191:                                        ; preds = %if.then178.if.end191_crit_edge, %if.end176.if.end191_crit_edge
  %parent.0 = phi ptr [ %call179, %if.then178.if.end191_crit_edge ], [ %link, %if.end176.if.end191_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %86 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3520, i32 noundef 304) #19
  %cmp193 = icmp eq ptr %call7.i.i, null
  br i1 %cmp193, label %if.end191.failure_crit_edge, label %if.end195

if.end191.failure_crit_edge:                      ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #18
  br label %failure

if.end195:                                        ; preds = %if.end191
  %bstats196 = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 30
  call void @gnet_stats_basic_sync_init(ptr noundef %bstats196) #16
  %block = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 35
  %filter_list = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 34
  %call197 = call i32 @tcf_block_get(ptr noundef %block, ptr noundef %filter_list, ptr noundef %sch, ptr noundef %extack) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.end200, label %if.then199

if.then199:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %failure

if.end200:                                        ; preds = %if.end195
  %arrayidx201 = getelementptr ptr, ptr %tca, i32 5
  %87 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx201, align 4
  %tobool202.not = icmp eq ptr %88, null
  br i1 %tobool202.not, label %if.end200.if.end220_crit_edge, label %if.then203

if.end200.if.end220_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end220

if.then203:                                       ; preds = %if.end200
  %rate_est205 = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 32
  %call207 = call i32 @gen_new_estimator(ptr noundef %bstats196, ptr noundef null, ptr noundef %rate_est205, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %88) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.then203.if.end220_crit_edge, label %do.body210

if.then203.if.end220_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end220

do.body210:                                       ; preds = %if.then203
  call void @do_trace_netlink_extack(ptr noundef nonnull @cbq_change_class.__msg.9) #16
  %tobool212.not = icmp eq ptr %extack, null
  br i1 %tobool212.not, label %do.body210.if.end215_crit_edge, label %if.then213

do.body210.if.end215_crit_edge:                   ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end215

if.then213:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #18
  %89 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @cbq_change_class.__msg.9, ptr %extack, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then213, %do.body210.if.end215_crit_edge
  %90 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %block, align 4
  call void @tcf_block_put(ptr noundef %91) #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %failure

if.end220:                                        ; preds = %if.then203.if.end220_crit_edge, %if.end200.if.end220_crit_edge
  %R_tab221 = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 10
  %92 = ptrtoint ptr %R_tab221 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call129, ptr %R_tab221, align 8
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %93 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev_queue, align 8
  %call222 = call ptr @qdisc_create_dflt(ptr noundef %94, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %classid.addr.1, ptr noundef null) #16
  %q223 = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 21
  %95 = ptrtoint ptr %q223 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call222, ptr %q223, align 4
  %tobool225.not = icmp eq ptr %call222, null
  br i1 %tobool225.not, label %if.then226, label %if.else228

if.then226:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #18
  %96 = ptrtoint ptr %q223 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @noop_qdisc, ptr %q223, align 4
  br label %if.end230

if.else228:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #18
  call void @qdisc_hash_add(ptr noundef nonnull %call222, i1 noundef zeroext true) #16
  br label %if.end230

if.end230:                                        ; preds = %if.else228, %if.then226
  %97 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %classid.addr.1, ptr %call7.i.i, align 16
  %tparent233 = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 17
  %98 = ptrtoint ptr %tparent233 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %parent.0, ptr %tparent233, align 4
  %qdisc = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 14
  %99 = ptrtoint ptr %qdisc to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %sch, ptr %qdisc, align 8
  %allot = getelementptr inbounds %struct.cbq_class, ptr %parent.0, i32 0, i32 11
  %100 = ptrtoint ptr %allot to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %allot, align 4
  %allot234 = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 11
  %102 = ptrtoint ptr %allot234 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %allot234, align 4
  %quantum = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 12
  %103 = ptrtoint ptr %quantum to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %101, ptr %quantum, align 16
  %104 = ptrtoint ptr %R_tab221 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %R_tab221, align 8
  %rate237 = getelementptr inbounds %struct.tc_ratespec, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %rate237 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rate237, align 4
  %weight = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 13
  %108 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %weight, align 4
  call fastcc void @sch_tree_lock(ptr noundef %sch)
  call fastcc void @cbq_link_class(ptr noundef nonnull %call7.i.i)
  %109 = ptrtoint ptr %tparent233 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tparent233, align 4
  %borrow = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 18
  %111 = ptrtoint ptr %borrow to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %borrow, align 8
  %cmp241.not = icmp eq ptr %110, %link
  br i1 %cmp241.not, label %if.end230.if.end244_crit_edge, label %if.then242

if.end230.if.end244_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end244

if.then242:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #18
  %share = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 16
  %112 = ptrtoint ptr %share to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %110, ptr %share, align 16
  br label %if.end244

if.end244:                                        ; preds = %if.then242, %if.end230.if.end244_crit_edge
  %cmp.i431 = icmp eq ptr %parent.0, null
  br i1 %cmp.i431, label %if.end244.cbq_adjust_levels.exit_crit_edge, label %if.end244.do.body.i433_crit_edge

if.end244.do.body.i433_crit_edge:                 ; preds = %if.end244
  br label %do.body.i433

if.end244.cbq_adjust_levels.exit_crit_edge:       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_adjust_levels.exit

do.body.i433:                                     ; preds = %if.end13.i.do.body.i433_crit_edge, %if.end244.do.body.i433_crit_edge
  %this.addr.0.i = phi ptr [ %123, %if.end13.i.do.body.i433_crit_edge ], [ %parent.0, %if.end244.do.body.i433_crit_edge ]
  %children.i = getelementptr inbounds %struct.cbq_class, ptr %this.addr.0.i, i32 0, i32 20
  %113 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %children.i, align 16
  %tobool.not.i432 = icmp eq ptr %114, null
  br i1 %tobool.not.i432, label %do.body.i433.if.end13.i_crit_edge, label %do.body.i433.do.body2.i_crit_edge

do.body.i433.do.body2.i_crit_edge:                ; preds = %do.body.i433
  br label %do.body2.i

do.body.i433.if.end13.i_crit_edge:                ; preds = %do.body.i433
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %do.body.i433.do.body2.i_crit_edge
  %level.0.i = phi i32 [ %117, %do.body2.i.do.body2.i_crit_edge ], [ 0, %do.body.i433.do.body2.i_crit_edge ]
  %cl.0.i = phi ptr [ %119, %do.body2.i.do.body2.i_crit_edge ], [ %114, %do.body.i433.do.body2.i_crit_edge ]
  %level3.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0.i, i32 0, i32 24
  %115 = ptrtoint ptr %level3.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %level3.i, align 2
  %conv.i434 = zext i8 %116 to i32
  %117 = call i32 @llvm.smax.i32(i32 %level.0.i, i32 %conv.i434) #16
  %sibling.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0.i, i32 0, i32 19
  %118 = ptrtoint ptr %sibling.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sibling.i, align 4
  %cmp11.not.i = icmp eq ptr %119, %114
  br i1 %cmp11.not.i, label %do.body2.i.if.end13.i_crit_edge, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2.i

do.body2.i.if.end13.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.body2.i.if.end13.i_crit_edge, %do.body.i433.if.end13.i_crit_edge
  %level.2.i = phi i32 [ 0, %do.body.i433.if.end13.i_crit_edge ], [ %117, %do.body2.i.if.end13.i_crit_edge ]
  %120 = trunc i32 %level.2.i to i8
  %conv14.i = add i8 %120, 1
  %level15.i = getelementptr inbounds %struct.cbq_class, ptr %this.addr.0.i, i32 0, i32 24
  %121 = ptrtoint ptr %level15.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv14.i, ptr %level15.i, align 2
  %tparent.i = getelementptr inbounds %struct.cbq_class, ptr %this.addr.0.i, i32 0, i32 17
  %122 = ptrtoint ptr %tparent.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tparent.i, align 4
  %cmp17.not.i = icmp eq ptr %123, null
  br i1 %cmp17.not.i, label %if.end13.i.cbq_adjust_levels.exit_crit_edge, label %if.end13.i.do.body.i433_crit_edge

if.end13.i.do.body.i433_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i433

if.end13.i.cbq_adjust_levels.exit_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_adjust_levels.exit

cbq_adjust_levels.exit:                           ; preds = %if.end13.i.cbq_adjust_levels.exit_crit_edge, %if.end244.cbq_adjust_levels.exit_crit_edge
  %minidle = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 8
  %124 = ptrtoint ptr %minidle to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -2147483647, ptr %minidle, align 16
  %125 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %5, align 4
  %add.ptr.i435 = getelementptr i8, ptr %126, i32 4
  call fastcc void @cbq_set_lss(ptr noundef nonnull %call7.i.i, ptr noundef %add.ptr.i435)
  %127 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %6, align 4
  %add.ptr.i436 = getelementptr i8, ptr %128, i32 4
  call fastcc void @cbq_set_wrr(ptr noundef nonnull %call7.i.i, ptr noundef %add.ptr.i436)
  %ewma_log = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 4
  %129 = ptrtoint ptr %ewma_log to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %ewma_log, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp251 = icmp eq i8 %130, 0
  br i1 %cmp251, label %if.then253, label %cbq_adjust_levels.exit.if.end257_crit_edge

cbq_adjust_levels.exit.if.end257_crit_edge:       ; preds = %cbq_adjust_levels.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end257

if.then253:                                       ; preds = %cbq_adjust_levels.exit
  call void @__sanitizer_cov_trace_pc() #18
  %ewma_log255 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 50
  %131 = ptrtoint ptr %ewma_log255 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %ewma_log255, align 2
  %133 = ptrtoint ptr %ewma_log to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %ewma_log, align 2
  br label %if.end257

if.end257:                                        ; preds = %if.then253, %cbq_adjust_levels.exit.if.end257_crit_edge
  %maxidle = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 6
  %134 = ptrtoint ptr %maxidle to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %maxidle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp258 = icmp eq i32 %135, 0
  br i1 %cmp258, label %if.then260, label %if.end257.if.end264_crit_edge

if.end257.if.end264_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end264

if.then260:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #18
  %maxidle262 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %136 = ptrtoint ptr %maxidle262 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %maxidle262, align 8
  %138 = ptrtoint ptr %maxidle to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %maxidle, align 8
  br label %if.end264

if.end264:                                        ; preds = %if.then260, %if.end257.if.end264_crit_edge
  %avpkt = getelementptr inbounds %struct.cbq_class, ptr %call7.i.i, i32 0, i32 9
  %139 = ptrtoint ptr %avpkt to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %avpkt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp265 = icmp eq i32 %140, 0
  br i1 %cmp265, label %if.then267, label %if.end264.if.end271_crit_edge

if.end264.if.end271_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end271

if.then267:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #18
  %avpkt269 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 0, i32 0, i32 1
  %141 = ptrtoint ptr %avpkt269 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %avpkt269, align 4
  %143 = ptrtoint ptr %avpkt to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %avpkt, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.then267, %if.end264.if.end271_crit_edge
  %144 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %7, align 4
  %tobool273.not = icmp eq ptr %145, null
  br i1 %tobool273.not, label %if.end271.if.end278_crit_edge, label %if.then274

if.end271.if.end278_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end278

if.then274:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i437 = getelementptr i8, ptr %145, i32 4
  call fastcc void @cbq_set_fopt(ptr noundef nonnull %call7.i.i, ptr noundef %add.ptr.i437)
  br label %if.end278

if.end278:                                        ; preds = %if.then274, %if.end271.if.end278_crit_edge
  call fastcc void @sch_tree_unlock(ptr noundef %sch)
  call void @qdisc_class_hash_grow(ptr noundef %sch, ptr noundef %privdata.i) #16
  %146 = ptrtoint ptr %call7.i.i to i32
  %147 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %arg, align 4
  br label %cleanup279

failure:                                          ; preds = %if.end215, %if.then199, %if.end191.failure_crit_edge, %if.then185, %do.body182.failure_crit_edge, %if.then168, %do.body165.failure_crit_edge, %if.then143, %do.body140.failure_crit_edge
  %err.0 = phi i32 [ -105, %if.end191.failure_crit_edge ], [ %call197, %if.then199 ], [ %call207, %if.end215 ], [ -22, %if.then143 ], [ -22, %do.body140.failure_crit_edge ], [ -22, %if.then185 ], [ -22, %do.body182.failure_crit_edge ], [ -63, %if.then168 ], [ -63, %do.body165.failure_crit_edge ]
  call void @qdisc_put_rtab(ptr noundef nonnull %call129) #16
  br label %cleanup279

cleanup279:                                       ; preds = %failure, %if.end278, %if.end125.cleanup279_crit_edge, %if.then120, %do.body117.cleanup279_crit_edge, %if.end104.cleanup279_crit_edge, %if.end103, %if.end66, %if.then45.cleanup279_crit_edge, %if.then36, %do.body33.cleanup279_crit_edge, %if.then22, %do.body19.cleanup279_crit_edge, %if.then7, %do.body.cleanup279_crit_edge, %cleanup.sink.split.i, %do.body13.i.cleanup279_crit_edge, %if.end3.i.cleanup279_crit_edge, %do.body.i.cleanup279_crit_edge
  %retval.0 = phi i32 [ %call58, %if.end66 ], [ 0, %if.end103 ], [ %err.0, %failure ], [ 0, %if.end278 ], [ -95, %if.then7 ], [ -95, %do.body.cleanup279_crit_edge ], [ -22, %if.then22 ], [ -22, %do.body19.cleanup279_crit_edge ], [ -22, %if.then36 ], [ -22, %do.body33.cleanup279_crit_edge ], [ -22, %if.then45.cleanup279_crit_edge ], [ -22, %if.end104.cleanup279_crit_edge ], [ -22, %if.then120 ], [ -22, %do.body117.cleanup279_crit_edge ], [ -22, %if.end125.cleanup279_crit_edge ], [ -22, %cleanup.sink.split.i ], [ -22, %do.body13.i.cleanup279_crit_edge ], [ %call2.i.i, %if.end3.i.cleanup279_crit_edge ], [ -22, %do.body.i.cleanup279_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tb) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbq_delete(ptr noundef %sch, i32 noundef %arg, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %qstats.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = inttoptr i32 %arg to ptr
  %filters = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 36
  %1 = ptrtoint ptr %filters to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %filters, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %children = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 20
  %3 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %children, align 16
  %tobool1.not = icmp ne ptr %4, null
  %link = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %cmp = icmp eq ptr %link, %0
  %or.cond = select i1 %tobool1.not, i1 true, i1 %cmp
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.sch_tree_lock.exit_crit_edge

if.end.sch_tree_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.end
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %7 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !72

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #16
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end.sch_tree_lock.exit_crit_edge ], [ %10, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %10, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %10, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #16
  %q3 = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 21
  %11 = ptrtoint ptr %q3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %q3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i) #16
  %13 = call ptr @memset(ptr %qstats.i.i, i32 0, i32 20)
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 12
  %14 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpu_qstats.i.i, align 4
  %qstats1.i.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i, ptr noundef %15, ptr noundef %qstats1.i.i) #16
  %16 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qstats.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 17, i32 2
  %18 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen.i.i.i, align 8
  %add.i.i = add i32 %19, %17
  %backlog3.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %backlog3.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %backlog3.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i) #16
  call void @qdisc_reset(ptr noundef %12) #16
  call void @qdisc_tree_reduce_backlog(ptr noundef %12, i32 noundef %add.i.i, i32 noundef %21) #16
  %next_alive = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 1
  %22 = ptrtoint ptr %next_alive to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next_alive, align 4
  %tobool4.not = icmp eq ptr %23, null
  br i1 %tobool4.not, label %sch_tree_lock.exit.if.end6_crit_edge, label %if.then5

sch_tree_lock.exit.if.end6_crit_edge:             ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then5:                                         ; preds = %sch_tree_lock.exit
  %qdisc.i = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 14
  %24 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qdisc.i, align 8
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %25, i32 0, i32 30
  %cpriority.i = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 22
  %26 = ptrtoint ptr %cpriority.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cpriority.i, align 8
  %conv.i = zext i8 %27 to i32
  %arrayidx.i = getelementptr %struct.cbq_sched_data, ptr %privdata.i.i, i32 0, i32 6, i32 %conv.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then5
  %cl_prev.0.i = phi ptr [ %29, %if.then5 ], [ %31, %do.cond.i.do.body.i_crit_edge ]
  %next_alive.i = getelementptr inbounds %struct.cbq_class, ptr %cl_prev.0.i, i32 0, i32 1
  %30 = ptrtoint ptr %next_alive.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %next_alive.i, align 4
  %cmp.i = icmp eq ptr %31, %0
  br i1 %cmp.i, label %if.then.i, label %do.cond.i

if.then.i:                                        ; preds = %do.body.i
  %next_alive.i.le = getelementptr inbounds %struct.cbq_class, ptr %cl_prev.0.i, i32 0, i32 1
  %32 = ptrtoint ptr %next_alive.i.le to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %23, ptr %next_alive.i.le, align 4
  %33 = ptrtoint ptr %next_alive to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %next_alive, align 4
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %cmp7.i = icmp eq ptr %35, %0
  br i1 %cmp7.i, label %if.then9.i, label %if.then.i.if.end6_crit_edge

if.then.i.if.end6_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then9.i:                                       ; preds = %if.then.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %cl_prev.0.i, ptr %arrayidx.i, align 4
  %cmp14.i = icmp eq ptr %cl_prev.0.i, %0
  br i1 %cmp14.i, label %if.then16.i, label %if.then9.i.if.end6_crit_edge

if.then9.i.if.end6_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then16.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx.i, align 4
  %shl.i = shl nuw i32 1, %conv.i
  %neg.i = xor i32 %shl.i, -1
  %activemask.i = getelementptr inbounds %struct.Qdisc, ptr %25, i32 1, i32 25, i32 0, i32 0, i32 4
  %38 = ptrtoint ptr %activemask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %activemask.i, align 16
  %and.i48 = and i32 %39, %neg.i
  store i32 %and.i48, ptr %activemask.i, align 16
  br label %if.end6

do.cond.i:                                        ; preds = %do.body.i
  %cmp23.not.i = icmp eq ptr %31, %29
  br i1 %cmp23.not.i, label %do.cond.i.if.end6_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

do.cond.i.if.end6_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.end6:                                          ; preds = %do.cond.i.if.end6_crit_edge, %if.then16.i, %if.then9.i.if.end6_crit_edge, %if.then.i.if.end6_crit_edge, %sch_tree_lock.exit.if.end6_crit_edge
  %tx_borrowed = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %tx_borrowed to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_borrowed, align 16
  %cmp7 = icmp eq ptr %41, %0
  br i1 %cmp7, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %tx_class = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4
  %42 = ptrtoint ptr %tx_class to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_class, align 4
  %44 = ptrtoint ptr %tx_borrowed to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %tx_borrowed, align 16
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %tx_class11 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4
  %45 = ptrtoint ptr %tx_class11 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_class11, align 4
  %cmp12 = icmp eq ptr %46, %0
  br i1 %cmp12, label %if.then13, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %47 = ptrtoint ptr %tx_class11 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %tx_class11, align 4
  %48 = ptrtoint ptr %tx_borrowed to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %tx_borrowed, align 16
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10.if.end16_crit_edge
  %rx_class = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 3
  %49 = ptrtoint ptr %rx_class to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_class, align 8
  %cmp17 = icmp eq ptr %50, %0
  br i1 %cmp17, label %if.then18, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %rx_class to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %rx_class, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %qdisc.i49 = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 14
  %52 = ptrtoint ptr %qdisc.i49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %qdisc.i49, align 8
  %privdata.i.i50 = getelementptr inbounds %struct.Qdisc, ptr %53, i32 0, i32 30
  call void @qdisc_class_hash_remove(ptr noundef %privdata.i.i50, ptr noundef %0) #16
  %tparent.i = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 17
  %54 = ptrtoint ptr %tparent.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tparent.i, align 4
  %tobool.not.i51 = icmp eq ptr %55, null
  %sibling19.i = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 19
  %56 = ptrtoint ptr %sibling19.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sibling19.i, align 4
  %cmp20.not.i = icmp eq ptr %57, %0
  br i1 %tobool.not.i51, label %if.else.i56, label %if.then.i52

if.then.i52:                                      ; preds = %if.end20
  br i1 %cmp20.not.i, label %if.then.i52.if.then1.i_crit_edge, label %if.then.i52.if.end.i_crit_edge

if.then.i52.if.end.i_crit_edge:                   ; preds = %if.then.i52
  br label %if.end.i

if.then.i52.if.then1.i_crit_edge:                 ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then1.i

do.body.i54:                                      ; preds = %if.end.i
  %cmp.i53 = icmp eq ptr %60, %0
  br i1 %cmp.i53, label %if.then1.i.loopexit, label %do.body.i54.if.end.i_crit_edge

do.body.i54.if.end.i_crit_edge:                   ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then1.i.loopexit:                              ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_pc() #18
  %sibling3.i.le = getelementptr inbounds %struct.cbq_class, ptr %cl.068.i, i32 0, i32 19
  br label %if.then1.i

if.then1.i:                                       ; preds = %if.then1.i.loopexit, %if.then.i52.if.then1.i_crit_edge
  %clp.0.lcssa.i = phi ptr [ %sibling19.i, %if.then.i52.if.then1.i_crit_edge ], [ %sibling3.i.le, %if.then1.i.loopexit ]
  %58 = ptrtoint ptr %clp.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %clp.0.lcssa.i, align 4
  br label %do.end.i

if.end.i:                                         ; preds = %do.body.i54.if.end.i_crit_edge, %if.then.i52.if.end.i_crit_edge
  %cl.068.i = phi ptr [ %60, %do.body.i54.if.end.i_crit_edge ], [ %57, %if.then.i52.if.end.i_crit_edge ]
  %sibling3.i = getelementptr inbounds %struct.cbq_class, ptr %cl.068.i, i32 0, i32 19
  %59 = ptrtoint ptr %sibling3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sibling3.i, align 4
  %cmp5.not.i = icmp eq ptr %60, %57
  br i1 %cmp5.not.i, label %if.end.i.do.end.i_crit_edge, label %do.body.i54

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.then1.i
  %61 = ptrtoint ptr %tparent.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tparent.i, align 4
  %children.i = getelementptr inbounds %struct.cbq_class, ptr %62, i32 0, i32 20
  %63 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %children.i, align 16
  %cmp7.i55 = icmp eq ptr %64, %0
  br i1 %cmp7.i55, label %if.then8.i, label %do.end.i.cbq_unlink_class.exit_crit_edge

do.end.i.cbq_unlink_class.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_unlink_class.exit

if.then8.i:                                       ; preds = %do.end.i
  %65 = ptrtoint ptr %sibling19.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sibling19.i, align 4
  %67 = ptrtoint ptr %children.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %children.i, align 16
  %68 = load ptr, ptr %sibling19.i, align 4
  %cmp13.i = icmp eq ptr %68, %0
  br i1 %cmp13.i, label %if.then14.i, label %if.then8.i.cbq_unlink_class.exitthread-pre-split_crit_edge

if.then8.i.cbq_unlink_class.exitthread-pre-split_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_unlink_class.exitthread-pre-split

if.then14.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  %69 = ptrtoint ptr %tparent.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tparent.i, align 4
  %children16.i = getelementptr inbounds %struct.cbq_class, ptr %70, i32 0, i32 20
  %71 = ptrtoint ptr %children16.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %children16.i, align 16
  br label %cbq_unlink_class.exitthread-pre-split

if.else.i56:                                      ; preds = %if.end20
  br i1 %cmp20.not.i, label %if.else.i56.cbq_unlink_class.exitthread-pre-split_crit_edge, label %do.end32.i, !prof !72

if.else.i56.cbq_unlink_class.exitthread-pre-split_crit_edge: ; preds = %if.else.i56
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_unlink_class.exitthread-pre-split

do.end32.i:                                       ; preds = %if.else.i56
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1001, i32 noundef 9, ptr noundef null) #16
  br label %cbq_unlink_class.exitthread-pre-split

cbq_unlink_class.exitthread-pre-split:            ; preds = %do.end32.i, %if.else.i56.cbq_unlink_class.exitthread-pre-split_crit_edge, %if.then14.i, %if.then8.i.cbq_unlink_class.exitthread-pre-split_crit_edge
  %72 = ptrtoint ptr %tparent.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pr = load ptr, ptr %tparent.i, align 4
  br label %cbq_unlink_class.exit

cbq_unlink_class.exit:                            ; preds = %cbq_unlink_class.exitthread-pre-split, %do.end.i.cbq_unlink_class.exit_crit_edge
  %73 = phi ptr [ %.pr, %cbq_unlink_class.exitthread-pre-split ], [ %62, %do.end.i.cbq_unlink_class.exit_crit_edge ]
  %cmp.i57 = icmp eq ptr %73, null
  br i1 %cmp.i57, label %cbq_unlink_class.exit.cbq_adjust_levels.exit_crit_edge, label %cbq_unlink_class.exit.do.body.i60_crit_edge

cbq_unlink_class.exit.do.body.i60_crit_edge:      ; preds = %cbq_unlink_class.exit
  br label %do.body.i60

cbq_unlink_class.exit.cbq_adjust_levels.exit_crit_edge: ; preds = %cbq_unlink_class.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_adjust_levels.exit

do.body.i60:                                      ; preds = %if.end13.i.do.body.i60_crit_edge, %cbq_unlink_class.exit.do.body.i60_crit_edge
  %this.addr.0.i = phi ptr [ %84, %if.end13.i.do.body.i60_crit_edge ], [ %73, %cbq_unlink_class.exit.do.body.i60_crit_edge ]
  %children.i58 = getelementptr inbounds %struct.cbq_class, ptr %this.addr.0.i, i32 0, i32 20
  %74 = ptrtoint ptr %children.i58 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %children.i58, align 16
  %tobool.not.i59 = icmp eq ptr %75, null
  br i1 %tobool.not.i59, label %do.body.i60.if.end13.i_crit_edge, label %do.body.i60.do.body2.i_crit_edge

do.body.i60.do.body2.i_crit_edge:                 ; preds = %do.body.i60
  br label %do.body2.i

do.body.i60.if.end13.i_crit_edge:                 ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %do.body.i60.do.body2.i_crit_edge
  %level.0.i = phi i32 [ %78, %do.body2.i.do.body2.i_crit_edge ], [ 0, %do.body.i60.do.body2.i_crit_edge ]
  %cl.0.i = phi ptr [ %80, %do.body2.i.do.body2.i_crit_edge ], [ %75, %do.body.i60.do.body2.i_crit_edge ]
  %level3.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0.i, i32 0, i32 24
  %76 = ptrtoint ptr %level3.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %level3.i, align 2
  %conv.i61 = zext i8 %77 to i32
  %78 = call i32 @llvm.smax.i32(i32 %level.0.i, i32 %conv.i61) #16
  %sibling.i = getelementptr inbounds %struct.cbq_class, ptr %cl.0.i, i32 0, i32 19
  %79 = ptrtoint ptr %sibling.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sibling.i, align 4
  %cmp11.not.i = icmp eq ptr %80, %75
  br i1 %cmp11.not.i, label %do.body2.i.if.end13.i_crit_edge, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2.i

do.body2.i.if.end13.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.body2.i.if.end13.i_crit_edge, %do.body.i60.if.end13.i_crit_edge
  %level.2.i = phi i32 [ 0, %do.body.i60.if.end13.i_crit_edge ], [ %78, %do.body2.i.if.end13.i_crit_edge ]
  %81 = trunc i32 %level.2.i to i8
  %conv14.i = add i8 %81, 1
  %level15.i = getelementptr inbounds %struct.cbq_class, ptr %this.addr.0.i, i32 0, i32 24
  %82 = ptrtoint ptr %level15.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv14.i, ptr %level15.i, align 2
  %tparent.i62 = getelementptr inbounds %struct.cbq_class, ptr %this.addr.0.i, i32 0, i32 17
  %83 = ptrtoint ptr %tparent.i62 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tparent.i62, align 4
  %cmp17.not.i = icmp eq ptr %84, null
  br i1 %cmp17.not.i, label %if.end13.i.cbq_adjust_levels.exit_crit_edge, label %if.end13.i.do.body.i60_crit_edge

if.end13.i.do.body.i60_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i60

if.end13.i.cbq_adjust_levels.exit_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_adjust_levels.exit

cbq_adjust_levels.exit:                           ; preds = %if.end13.i.cbq_adjust_levels.exit_crit_edge, %cbq_unlink_class.exit.cbq_adjust_levels.exit_crit_edge
  %defmap = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 5
  %85 = ptrtoint ptr %defmap to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %defmap, align 4
  call fastcc void @cbq_sync_defmap(ptr noundef %0)
  %priority.i = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 2
  %86 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %priority.i, align 16
  %idxprom.i = zext i8 %87 to i32
  %arrayidx.i63 = getelementptr %struct.cbq_sched_data, ptr %privdata.i, i32 0, i32 1, i32 %idxprom.i
  %88 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i63, align 4
  %dec.i = add i32 %89, -1
  store i32 %dec.i, ptr %arrayidx.i63, align 4
  %weight.i = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 13
  %90 = ptrtoint ptr %weight.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %weight.i, align 4
  %92 = load i8, ptr %priority.i, align 16
  %idxprom2.i = zext i8 %92 to i32
  %arrayidx3.i = getelementptr %struct.cbq_sched_data, ptr %privdata.i, i32 0, i32 2, i32 %idxprom2.i
  %93 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx3.i, align 4
  %sub.i = sub i32 %94, %91
  store i32 %sub.i, ptr %arrayidx3.i, align 4
  %95 = load i8, ptr %priority.i, align 16
  %conv.i64 = zext i8 %95 to i32
  call fastcc void @cbq_normalize_quanta(ptr noundef %privdata.i, i32 noundef %conv.i64) #16
  %96 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags.i, align 8
  %and.i66 = and i32 %97, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool.not.i67 = icmp eq i32 %and.i66, 0
  br i1 %tobool.not.i67, label %if.else.i72, label %cbq_adjust_levels.exit.sch_tree_unlock.exit_crit_edge

cbq_adjust_levels.exit.sch_tree_unlock.exit_crit_edge: ; preds = %cbq_adjust_levels.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_unlock.exit

if.else.i72:                                      ; preds = %cbq_adjust_levels.exit
  %dev_queue.i.i.i68 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %98 = ptrtoint ptr %dev_queue.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev_queue.i.i.i68, align 8
  %qdisc_sleeping.i.i.i69 = getelementptr inbounds %struct.netdev_queue, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %qdisc_sleeping.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %qdisc_sleeping.i.i.i69, align 4
  %call1.i.i70 = call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i70)
  %tobool.not.i.i71 = icmp eq i32 %call1.i.i70, 0
  br i1 %tobool.not.i.i71, label %land.rhs.i.i74, label %if.else.i72.sch_tree_unlock.exit_crit_edge

if.else.i72.sch_tree_unlock.exit_crit_edge:       ; preds = %if.else.i72
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_unlock.exit

land.rhs.i.i74:                                   ; preds = %if.else.i72
  %.b41.i.i73 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i73, label %land.rhs.i.i74.sch_tree_unlock.exit_crit_edge, label %if.then.i.i75, !prof !72

land.rhs.i.i74.sch_tree_unlock.exit_crit_edge:    ; preds = %land.rhs.i.i74
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_unlock.exit

if.then.i.i75:                                    ; preds = %land.rhs.i.i74
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #16
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i75, %land.rhs.i.i74.sch_tree_unlock.exit_crit_edge, %if.else.i72.sch_tree_unlock.exit_crit_edge, %cbq_adjust_levels.exit.sch_tree_unlock.exit_crit_edge
  %.sink.i76 = phi ptr [ %sch, %cbq_adjust_levels.exit.sch_tree_unlock.exit_crit_edge ], [ %101, %if.else.i72.sch_tree_unlock.exit_crit_edge ], [ %101, %land.rhs.i.i74.sch_tree_unlock.exit_crit_edge ], [ %101, %if.then.i.i75 ]
  %lock.i.i.i77 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i76, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i77) #16
  call fastcc void @cbq_destroy_class(ptr noundef %sch, ptr noundef %0)
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sch_tree_unlock.exit ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cbq_walk(ptr noundef %sch, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %2 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp55.not = icmp eq i32 %3, 0
  br i1 %cmp55.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %for.body.lr.ph
  %h.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %for.inc28.for.body_crit_edge ]
  %4 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %privdata.i, align 16
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %h.056
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
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end10:                                         ; preds = %for.body6
  %12 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fn, align 4
  %14 = ptrtoint ptr %cl.054 to i32
  %call11 = tail call i32 %13(ptr noundef %sch, i32 noundef %14, ptr noundef %arg) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %arg, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body6

for.inc.for.inc28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc28

for.inc28:                                        ; preds = %for.inc.for.inc28_crit_edge, %for.body.for.inc28_crit_edge
  %inc29 = add nuw i32 %h.056, 1
  %21 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hashsize, align 4
  %cmp = icmp ult i32 %inc29, %22
  br i1 %cmp, label %for.inc28.for.body_crit_edge, label %for.inc28.cleanup_crit_edge

for.inc28.cleanup_crit_edge:                      ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup:                                          ; preds = %for.inc28.cleanup_crit_edge, %if.then13, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @cbq_tcf_block(ptr nocapture noundef readonly %sch, i32 noundef %arg, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp = icmp eq i32 %arg, 0
  %link = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %spec.select = select i1 %cmp, ptr %link, ptr %0
  %block = getelementptr inbounds %struct.cbq_class, ptr %spec.select, i32 0, i32 35
  %1 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %block, align 4
  ret ptr %2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbq_bind_filter(ptr nocapture noundef readonly %sch, i32 noundef %parent, i32 noundef %classid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %parent to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %classid)
  %tobool.not.i.i = icmp eq i32 %classid, 0
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %hashmask.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %1 = ptrtoint ptr %hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hashmask.i.i, align 4
  %shr.i.i.i = lshr i32 %classid, 8
  %xor.i.i.i = xor i32 %shr.i.i.i, %classid
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 4
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  %and.i.i.i = and i32 %2, %xor2.i.i.i
  %3 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %privdata.i, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %4, i32 %and.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %6, null
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -4
  %tobool4.not3033.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool4.not30.i.i = or i1 %tobool2.not.i.i, %tobool4.not3033.i.i
  br i1 %tobool4.not30.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cl.031.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %7 = ptrtoint ptr %cl.031.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cl.031.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %classid)
  %cmp.i.i = icmp eq i32 %8, %classid
  br i1 %cmp.i.i, label %if.then, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hnode.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %hnode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hnode.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %10, null
  %add.ptr13.i.i = getelementptr i8, ptr %10, i32 -4
  %tobool4.not34.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool4.not.i.i = or i1 %tobool9.not.i.i, %tobool4.not34.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent)
  %tobool2.not = icmp eq i32 %parent, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %level = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 24
  %11 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %level, align 2
  %level3 = getelementptr inbounds %struct.cbq_class, ptr %cl.031.i.i, i32 0, i32 24
  %13 = ptrtoint ptr %level3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %level3, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp.not = icmp ugt i8 %12, %14
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %filters = getelementptr inbounds %struct.cbq_class, ptr %cl.031.i.i, i32 0, i32 36
  %15 = ptrtoint ptr %filters to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %filters, align 16
  %inc = add i32 %16, 1
  store i32 %inc, ptr %filters, align 16
  %17 = ptrtoint ptr %cl.031.i.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cbq_unbind_filter(ptr nocapture noundef readnone %sch, i32 noundef %arg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %filters = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 36
  %1 = ptrtoint ptr %filters to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %filters, align 16
  %dec = add i32 %2, -1
  store i32 %dec, ptr %filters, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbq_dump_class(ptr nocapture noundef readnone %sch, i32 noundef %arg, ptr noundef %skb, ptr nocapture noundef writeonly %tcm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %tparent = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 17
  %1 = ptrtoint ptr %tparent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tparent, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ %4, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %5 = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %5, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 16
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %9 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tcm_handle, align 4
  %q = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 21
  %10 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %q, align 4
  %handle = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %handle, align 32
  %tcm_info = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 6
  %14 = ptrtoint ptr %tcm_info to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tcm_info, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp26 = icmp eq ptr %16, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp26
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @cbq_dump_attr(ptr noundef %skb, ptr noundef %0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.i.i, label %if.end10

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %16, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end6
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %23, %16
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !71

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end10, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %if.end10 ], [ -1, %if.end.i.i ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbq_dump_class_stats(ptr nocapture noundef readonly %sch, i32 noundef %arg, ptr noundef %d) #2 align 64 {
entry:
  %qstats.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %avgidle = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 27
  %1 = ptrtoint ptr %avgidle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %avgidle, align 16
  %xstats = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 33
  %avgidle1 = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 33, i32 2
  %3 = ptrtoint ptr %avgidle1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %avgidle1, align 8
  %undertime = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 33, i32 3
  %4 = ptrtoint ptr %undertime to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %undertime, align 4
  %q3 = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 21
  %5 = ptrtoint ptr %q3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q3, align 4
  %qstats = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 31
  %backlog = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 31, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i) #16
  %7 = call ptr @memset(ptr %qstats.i, i32 0, i32 20)
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %6, i32 0, i32 12
  %8 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_qstats.i, align 4
  %qstats1.i = getelementptr inbounds %struct.Qdisc, ptr %6, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i, ptr noundef %9, ptr noundef %qstats1.i) #16
  %10 = ptrtoint ptr %qstats.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qstats.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %6, i32 0, i32 17, i32 2
  %12 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i.i, align 8
  %add.i = add i32 %13, %11
  %backlog3.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i, i32 0, i32 1
  %14 = ptrtoint ptr %backlog3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %backlog3.i, align 4
  %16 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %backlog, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i) #16
  %undertime4 = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 26
  %17 = ptrtoint ptr %undertime4 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %undertime4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp.not = icmp eq i64 %18, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %now = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %now, align 8
  %sub = sub i64 %18, %20
  %conv = trunc i64 %sub to i32
  %21 = ptrtoint ptr %undertime to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %undertime, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bstats = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 30
  %call8 = call i32 @gnet_stats_copy_basic(ptr noundef %d, ptr noundef null, ptr noundef %bstats, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %rate_est = getelementptr inbounds %struct.cbq_class, ptr %0, i32 0, i32 32
  %call11 = call i32 @gnet_stats_copy_rate_est(ptr noundef %d, ptr noundef %rate_est) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %call16 = call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef null, ptr noundef %qstats, i32 noundef %add.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %lor.lhs.false14.cleanup_crit_edge, label %if.end20

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #18
  %call22 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef %xstats, i32 noundef 16) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end20 ], [ -1, %lor.lhs.false14.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sch_tree_lock(ptr noundef %q) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %flags = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
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
  %call1.i = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs.i:                                       ; preds = %if.else
  %.b41.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !72

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #16
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi ptr [ %q, %entry.if.end_crit_edge ], [ %5, %if.else.if.end_crit_edge ], [ %5, %land.rhs.i.if.end_crit_edge ], [ %5, %if.then.i ]
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sch_tree_unlock(ptr noundef %q) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %flags = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
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
  %call1.i = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs.i:                                       ; preds = %if.else
  %.b41.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !72

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #16
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi ptr [ %q, %entry.if.end_crit_edge ], [ %5, %if.else.if.end_crit_edge ], [ %5, %land.rhs.i.if.end_crit_edge ], [ %5, %if.then.i ]
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #16
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

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cbq_deactivate_class(ptr noundef readonly %this) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.cbq_class, ptr %this, i32 0, i32 14
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 30
  %cpriority = getelementptr inbounds %struct.cbq_class, ptr %this, i32 0, i32 22
  %2 = ptrtoint ptr %cpriority to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cpriority, align 8
  %conv = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.cbq_sched_data, ptr %privdata.i, i32 0, i32 6, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %cl_prev.0 = phi ptr [ %5, %entry ], [ %7, %do.cond.do.body_crit_edge ]
  %next_alive = getelementptr inbounds %struct.cbq_class, ptr %cl_prev.0, i32 0, i32 1
  %6 = ptrtoint ptr %next_alive to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next_alive, align 4
  %cmp = icmp eq ptr %7, %this
  br i1 %cmp, label %if.then, label %do.cond

if.then:                                          ; preds = %do.body
  %next_alive.le = getelementptr inbounds %struct.cbq_class, ptr %cl_prev.0, i32 0, i32 1
  %next_alive2 = getelementptr inbounds %struct.cbq_class, ptr %this, i32 0, i32 1
  %8 = ptrtoint ptr %next_alive2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next_alive2, align 4
  %10 = ptrtoint ptr %next_alive.le to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %next_alive.le, align 4
  store ptr null, ptr %next_alive2, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp7 = icmp eq ptr %12, %this
  br i1 %cmp7, label %if.then9, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then9:                                         ; preds = %if.then
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cl_prev.0, ptr %arrayidx, align 4
  %cmp14 = icmp eq ptr %cl_prev.0, %this
  br i1 %cmp14, label %if.then16, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then16:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx, align 4
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %activemask = getelementptr inbounds %struct.Qdisc, ptr %1, i32 1, i32 25, i32 0, i32 0, i32 4
  %15 = ptrtoint ptr %activemask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %activemask, align 16
  %and = and i32 %16, %neg
  store i32 %and, ptr %activemask, align 16
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %cmp23.not = icmp eq ptr %7, %5
  br i1 %cmp23.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %if.then16, %if.then9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cbq_class_lookup(ptr nocapture noundef readonly %q, i32 noundef %classid) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %classid)
  %tobool.not.i = icmp eq i32 %classid, 0
  br i1 %tobool.not.i, label %entry.qdisc_class_find.exit_crit_edge, label %if.end.i

entry.qdisc_class_find.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_class_find.exit

if.end.i:                                         ; preds = %entry
  %hashmask.i = getelementptr inbounds %struct.Qdisc_class_hash, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %hashmask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hashmask.i, align 4
  %shr.i.i = lshr i32 %classid, 8
  %xor.i.i = xor i32 %shr.i.i, %classid
  %shr1.i.i = lshr i32 %xor.i.i, 4
  %xor2.i.i = xor i32 %shr1.i.i, %xor.i.i
  %and.i.i = and i32 %1, %xor2.i.i
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %3, i32 %and.i.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  %add.ptr.i = getelementptr i8, ptr %5, i32 -4
  %tobool4.not3033.i = icmp eq ptr %add.ptr.i, null
  %tobool4.not30.i = or i1 %tobool2.not.i, %tobool4.not3033.i
  br i1 %tobool4.not30.i, label %if.end.i.qdisc_class_find.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.qdisc_class_find.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_class_find.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %cl.031.i = phi ptr [ %add.ptr13.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %cl.031.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cl.031.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %classid)
  %cmp.i = icmp eq i32 %7, %classid
  br i1 %cmp.i, label %for.body.i.qdisc_class_find.exit_crit_edge, label %for.inc.i

for.body.i.qdisc_class_find.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_class_find.exit

for.inc.i:                                        ; preds = %for.body.i
  %hnode.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i, i32 0, i32 1
  %8 = ptrtoint ptr %hnode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hnode.i, align 4
  %tobool9.not.i = icmp eq ptr %9, null
  %add.ptr13.i = getelementptr i8, ptr %9, i32 -4
  %tobool4.not34.i = icmp eq ptr %add.ptr13.i, null
  %tobool4.not.i = or i1 %tobool9.not.i, %tobool4.not34.i
  br i1 %tobool4.not.i, label %for.inc.i.qdisc_class_find.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.qdisc_class_find.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_class_find.exit

qdisc_class_find.exit:                            ; preds = %for.inc.i.qdisc_class_find.exit_crit_edge, %for.body.i.qdisc_class_find.exit_crit_edge, %if.end.i.qdisc_class_find.exit_crit_edge, %entry.qdisc_class_find.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.qdisc_class_find.exit_crit_edge ], [ null, %if.end.i.qdisc_class_find.exit_crit_edge ], [ null, %for.inc.i.qdisc_class_find.exit_crit_edge ], [ %cl.031.i, %for.body.i.qdisc_class_find.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_get_rtab(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_replace_estimator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put_rtab(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @cbq_set_lss(ptr nocapture noundef %cl, ptr nocapture noundef readonly %lss) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lss to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lss, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.tc_cbq_lssopt, ptr %lss, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags, align 1
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %cond.false, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %tparent = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 17
  %6 = ptrtoint ptr %tparent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tparent, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %7, %cond.false ], [ null, %if.then.cond.end_crit_edge ]
  %share = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 16
  %8 = ptrtoint ptr %share to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cond, ptr %share, align 16
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %cond.false9, label %cond.end.cond.end11_crit_edge

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end11

cond.false9:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  %tparent10 = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 17
  %12 = ptrtoint ptr %tparent10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tparent10, align 4
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false9, %cond.end.cond.end11_crit_edge
  %cond12 = phi ptr [ %13, %cond.false9 ], [ null, %cond.end.cond.end11_crit_edge ]
  %borrow = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 18
  %14 = ptrtoint ptr %borrow to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cond12, ptr %borrow, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end11, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %lss to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lss, align 4
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool16.not = icmp eq i8 %17, 0
  br i1 %tobool16.not, label %if.end.if.end19_crit_edge, label %if.then17

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %ewma_log = getelementptr inbounds %struct.tc_cbq_lssopt, ptr %lss, i32 0, i32 2
  %18 = ptrtoint ptr %ewma_log to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ewma_log, align 2
  %ewma_log18 = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 4
  %20 = ptrtoint ptr %ewma_log18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %ewma_log18, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end.if.end19_crit_edge
  %21 = ptrtoint ptr %lss to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lss, align 4
  %23 = and i8 %22, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool23.not = icmp eq i8 %23, 0
  br i1 %tobool23.not, label %if.end19.if.end26_crit_edge, label %if.then24

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %avpkt = getelementptr inbounds %struct.tc_cbq_lssopt, ptr %lss, i32 0, i32 7
  %24 = ptrtoint ptr %avpkt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %avpkt, align 4
  %avpkt25 = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 9
  %26 = ptrtoint ptr %avpkt25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %avpkt25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end19.if.end26_crit_edge
  %27 = ptrtoint ptr %lss to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %lss, align 4
  %29 = and i8 %28, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool30.not = icmp eq i8 %29, 0
  br i1 %tobool30.not, label %if.end26.if.end33_crit_edge, label %if.then31

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  %minidle = getelementptr inbounds %struct.tc_cbq_lssopt, ptr %lss, i32 0, i32 5
  %30 = ptrtoint ptr %minidle to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %minidle, align 4
  %sub = sub i32 0, %31
  %minidle32 = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 8
  %32 = ptrtoint ptr %minidle32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub, ptr %minidle32, align 16
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end26.if.end33_crit_edge
  %33 = ptrtoint ptr %lss to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %lss, align 4
  %35 = and i8 %34, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool37.not = icmp eq i8 %35, 0
  br i1 %tobool37.not, label %if.end33.if.end41_crit_edge, label %if.then38

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %maxidle = getelementptr inbounds %struct.tc_cbq_lssopt, ptr %lss, i32 0, i32 4
  %36 = ptrtoint ptr %maxidle to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %maxidle, align 4
  %maxidle39 = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 6
  %38 = ptrtoint ptr %maxidle39 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %maxidle39, align 8
  %39 = load i32, ptr %maxidle, align 4
  %avgidle = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 27
  %40 = ptrtoint ptr %avgidle to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %avgidle, align 16
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end33.if.end41_crit_edge
  %41 = ptrtoint ptr %lss to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %lss, align 4
  %43 = and i8 %42, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool45.not = icmp eq i8 %43, 0
  br i1 %tobool45.not, label %if.end41.if.end48_crit_edge, label %if.then46

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  %offtime = getelementptr inbounds %struct.tc_cbq_lssopt, ptr %lss, i32 0, i32 6
  %44 = ptrtoint ptr %offtime to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offtime, align 4
  %offtime47 = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 7
  %46 = ptrtoint ptr %offtime47 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %offtime47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end41.if.end48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cbq_rmprio(ptr nocapture noundef %q, ptr nocapture noundef readonly %cl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %priority = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 2
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priority, align 16
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.cbq_sched_data, ptr %q, i32 0, i32 1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %arrayidx, align 4
  %weight = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 13
  %4 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %weight, align 4
  %6 = load i8, ptr %priority, align 16
  %idxprom2 = zext i8 %6 to i32
  %arrayidx3 = getelementptr %struct.cbq_sched_data, ptr %q, i32 0, i32 2, i32 %idxprom2
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  %sub = sub i32 %8, %5
  store i32 %sub, ptr %arrayidx3, align 4
  %9 = load i8, ptr %priority, align 16
  %conv = zext i8 %9 to i32
  tail call fastcc void @cbq_normalize_quanta(ptr noundef %q, i32 noundef %conv)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cbq_set_wrr(ptr nocapture noundef %cl, ptr nocapture noundef readonly %wrr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 14
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  %allot = getelementptr inbounds %struct.tc_cbq_wrropt, ptr %wrr, i32 0, i32 4
  %2 = ptrtoint ptr %allot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %allot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %allot2 = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 11
  %4 = ptrtoint ptr %allot2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %allot2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %weight = getelementptr inbounds %struct.tc_cbq_wrropt, ptr %wrr, i32 0, i32 5
  %5 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %weight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %weight6 = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 13
  %7 = ptrtoint ptr %weight6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %weight6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %priority = getelementptr inbounds %struct.tc_cbq_wrropt, ptr %wrr, i32 0, i32 1
  %8 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %priority, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.end7.if.end21_crit_edge, label %if.then9

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then9:                                         ; preds = %if.end7
  %sub = add i8 %9, -1
  %priority12 = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 2
  %10 = ptrtoint ptr %priority12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %sub, ptr %priority12, align 16
  %cpriority = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 22
  %11 = ptrtoint ptr %cpriority to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %sub, ptr %cpriority, align 8
  %priority2 = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 3
  %12 = ptrtoint ptr %priority2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %priority2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %sub, i8 %13)
  %cmp.not = icmp ult i8 %sub, %13
  br i1 %cmp.not, label %if.then9.if.end21_crit_edge, label %if.then18

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then18:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %priority2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %priority2, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then9.if.end21_crit_edge, %if.end7.if.end21_crit_edge
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 30
  %priority.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 2
  %15 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %priority.i, align 16
  %idxprom.i = zext i8 %16 to i32
  %arrayidx.i = getelementptr %struct.cbq_sched_data, ptr %privdata.i, i32 0, i32 1, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %arrayidx.i, align 4
  %weight.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 13
  %19 = ptrtoint ptr %weight.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %weight.i, align 4
  %21 = load i8, ptr %priority.i, align 16
  %idxprom2.i = zext i8 %21 to i32
  %arrayidx3.i = getelementptr %struct.cbq_sched_data, ptr %privdata.i, i32 0, i32 2, i32 %idxprom2.i
  %22 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx3.i, align 4
  %add.i = add i32 %23, %20
  store i32 %add.i, ptr %arrayidx3.i, align 4
  %24 = load i8, ptr %priority.i, align 16
  %conv.i = zext i8 %24 to i32
  tail call fastcc void @cbq_normalize_quanta(ptr noundef %privdata.i, i32 noundef %conv.i) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cbq_set_fopt(ptr noundef %cl, ptr nocapture noundef readonly %fopt) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fopt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fopt, align 4
  %defmap = getelementptr inbounds %struct.tc_cbq_fopt, ptr %fopt, i32 0, i32 1
  %2 = ptrtoint ptr %defmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %defmap, align 4
  %defchange = getelementptr inbounds %struct.tc_cbq_fopt, ptr %fopt, i32 0, i32 2
  %4 = ptrtoint ptr %defchange to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %defchange, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

if.then.i:                                        ; preds = %entry
  %split1.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 15
  %6 = ptrtoint ptr %split1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %split1.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.i.cbq_change_defmap.exit_crit_edge, label %if.then.i.if.end19.i_crit_edge

if.then.i.if.end19.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

if.then.i.cbq_change_defmap.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_change_defmap.exit

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %cl.pn.i = phi ptr [ %split.1.i, %for.body.i.for.cond.i_crit_edge ], [ %cl, %entry.for.cond.i_crit_edge ]
  %split.1.in.i = getelementptr inbounds %struct.cbq_class, ptr %cl.pn.i, i32 0, i32 17
  %8 = ptrtoint ptr %split.1.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %split.1.i = load ptr, ptr %split.1.in.i, align 4
  %tobool9.not.i = icmp eq ptr %split.1.i, null
  br i1 %tobool9.not.i, label %for.cond.i.cbq_change_defmap.exit_crit_edge, label %for.body.i

for.cond.i.cbq_change_defmap.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_change_defmap.exit

for.body.i:                                       ; preds = %for.cond.i
  %9 = ptrtoint ptr %split.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %split.1.i, align 16
  %cmp12.i = icmp eq i32 %10, %1
  br i1 %cmp12.i, label %for.body.i.if.end19.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

for.body.i.if.end19.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

if.end19.i:                                       ; preds = %for.body.i.if.end19.i_crit_edge, %if.then.i.if.end19.i_crit_edge
  %split.2.ph.i = phi ptr [ %7, %if.then.i.if.end19.i_crit_edge ], [ %split.1.i, %for.body.i.if.end19.i_crit_edge ]
  %split20.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 15
  %11 = ptrtoint ptr %split20.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %split20.i, align 4
  %cmp21.not.i = icmp eq ptr %12, %split.2.ph.i
  %defmap25.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 5
  br i1 %cmp21.not.i, label %if.else.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %defmap25.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %defmap25.i, align 4
  tail call fastcc void @cbq_sync_defmap(ptr noundef %cl) #16
  %14 = ptrtoint ptr %split20.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %split.2.ph.i, ptr %split20.i, align 4
  %and.i = and i32 %5, %3
  br label %if.end29.i

if.else.i:                                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %defmap25.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %defmap25.i, align 4
  %neg.i = xor i32 %5, -1
  %and26.i = and i32 %16, %neg.i
  %and27.i = and i32 %5, %3
  %or.i = or i32 %and26.i, %and27.i
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %if.then22.i
  %or.sink.i = phi i32 [ %or.i, %if.else.i ], [ %and.i, %if.then22.i ]
  %17 = ptrtoint ptr %defmap25.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.sink.i, ptr %defmap25.i, align 4
  tail call fastcc void @cbq_sync_defmap(ptr noundef %cl) #16
  br label %cbq_change_defmap.exit

cbq_change_defmap.exit:                           ; preds = %if.end29.i, %for.cond.i.cbq_change_defmap.exit_crit_edge, %if.then.i.cbq_change_defmap.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_basic_sync_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_block_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_new_estimator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_hash_add(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cbq_link_class(ptr noundef %this) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.cbq_class, ptr %this, i32 0, i32 14
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 30
  %tparent = getelementptr inbounds %struct.cbq_class, ptr %this, i32 0, i32 17
  %2 = ptrtoint ptr %tparent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tparent, align 4
  %sibling = getelementptr inbounds %struct.cbq_class, ptr %this, i32 0, i32 19
  %4 = ptrtoint ptr %sibling to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %this, ptr %sibling, align 4
  tail call void @qdisc_class_hash_insert(ptr noundef %privdata.i, ptr noundef %this) #16
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %children = getelementptr inbounds %struct.cbq_class, ptr %3, i32 0, i32 20
  %5 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %children, align 16
  %cmp1 = icmp eq ptr %6, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %children to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %this, ptr %children, align 16
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %sibling5 = getelementptr inbounds %struct.cbq_class, ptr %6, i32 0, i32 19
  %8 = ptrtoint ptr %sibling5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sibling5, align 4
  %10 = ptrtoint ptr %sibling to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sibling, align 4
  %11 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %children, align 16
  %sibling8 = getelementptr inbounds %struct.cbq_class, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %sibling8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %this, ptr %sibling8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_grow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cbq_normalize_quanta(ptr nocapture noundef readonly %q, i32 noundef %prio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.cbq_sched_data, ptr %q, i32 0, i32 2, i32 %prio
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %hashsize = getelementptr inbounds %struct.Qdisc_class_hash, ptr %q, i32 0, i32 1
  %2 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp181.not = icmp eq i32 %3, 0
  br i1 %cmp181.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx11 = getelementptr %struct.cbq_sched_data, ptr %q, i32 0, i32 1, i32 %prio
  br label %for.body

for.body:                                         ; preds = %for.inc44.for.body_crit_edge, %for.body.lr.ph
  %h.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc44.for.body_crit_edge ]
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q, align 16
  %arrayidx3 = getelementptr %struct.hlist_head, ptr %5, i32 %h.082
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -4
  %tobool6.not7783 = icmp eq ptr %add.ptr, null
  %tobool6.not77 = or i1 %tobool.not, %tobool6.not7783
  br i1 %tobool6.not77, label %for.body.for.inc44_crit_edge, label %for.body.for.body7_crit_edge

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body.for.inc44_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc44

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %cl.078 = phi ptr [ %add.ptr40, %for.inc.for.body7_crit_edge ], [ %add.ptr, %for.body.for.body7_crit_edge ]
  %priority = getelementptr inbounds %struct.cbq_class, ptr %cl.078, i32 0, i32 2
  %8 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %priority, align 16
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %prio)
  %cmp8 = icmp eq i32 %conv, %prio
  br i1 %cmp8, label %if.then10, label %for.body7.if.end15_crit_edge

for.body7.if.end15_crit_edge:                     ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then10:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #18
  %weight = getelementptr inbounds %struct.cbq_class, ptr %cl.078, i32 0, i32 13
  %10 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %weight, align 4
  %allot = getelementptr inbounds %struct.cbq_class, ptr %cl.078, i32 0, i32 11
  %12 = ptrtoint ptr %allot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %allot, align 4
  %mul = mul i32 %13, %11
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11, align 4
  %mul12 = mul i32 %mul, %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %div = udiv i32 %mul12, %17
  %quantum = getelementptr inbounds %struct.cbq_class, ptr %cl.078, i32 0, i32 12
  %18 = ptrtoint ptr %quantum to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %quantum, align 16
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %for.body7.if.end15_crit_edge
  %quantum16 = getelementptr inbounds %struct.cbq_class, ptr %cl.078, i32 0, i32 12
  %19 = ptrtoint ptr %quantum16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %quantum16, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp17 = icmp slt i32 %20, 1
  br i1 %cmp17, label %if.end15.do.end_crit_edge, label %lor.lhs.false

if.end15.do.end_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end15
  %qdisc = getelementptr inbounds %struct.cbq_class, ptr %cl.078, i32 0, i32 14
  %21 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qdisc, align 8
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_queue.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 128
  %mtu = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 20
  %27 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mtu, align 4
  %mul20 = shl i32 %28, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %mul20)
  %cmp21 = icmp ugt i32 %20, %mul20
  br i1 %cmp21, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end15.do.end_crit_edge
  %29 = ptrtoint ptr %cl.078 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cl.078, align 16
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %30, i32 noundef %20) #20
  %qdisc27 = getelementptr inbounds %struct.cbq_class, ptr %cl.078, i32 0, i32 14
  %31 = ptrtoint ptr %qdisc27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qdisc27, align 8
  %dev_queue.i74 = getelementptr inbounds %struct.Qdisc, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %dev_queue.i74 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_queue.i74, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 128
  %mtu29 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 20
  %37 = ptrtoint ptr %mtu29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mtu29, align 4
  %div3072 = lshr i32 %38, 1
  %add = add nuw i32 %div3072, 1
  %39 = ptrtoint ptr %quantum16 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add, ptr %quantum16, align 16
  br label %for.inc

for.inc:                                          ; preds = %do.end, %lor.lhs.false.for.inc_crit_edge
  %hnode = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.078, i32 0, i32 1
  %40 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hnode, align 4
  %tobool36.not = icmp eq ptr %41, null
  %add.ptr40 = getelementptr i8, ptr %41, i32 -4
  %tobool6.not84 = icmp eq ptr %add.ptr40, null
  %tobool6.not = or i1 %tobool36.not, %tobool6.not84
  br i1 %tobool6.not, label %for.inc.for.inc44_crit_edge, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body7

for.inc.for.inc44_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc44

for.inc44:                                        ; preds = %for.inc.for.inc44_crit_edge, %for.body.for.inc44_crit_edge
  %inc = add nuw i32 %h.082, 1
  %42 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hashsize, align 4
  %cmp1 = icmp ult i32 %inc, %43
  br i1 %cmp1, label %for.inc44.for.body_crit_edge, label %for.inc44.cleanup_crit_edge

for.inc44.cleanup_crit_edge:                      ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc44.for.body_crit_edge:                     ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup:                                          ; preds = %for.inc44.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cbq_sync_defmap(ptr noundef readonly %cl) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 14
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 30
  %split1 = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 15
  %2 = ptrtoint ptr %split1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %split1, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup65_crit_edge, label %for.cond.preheader

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup65

for.cond.preheader:                               ; preds = %entry
  %defmap = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 5
  br label %for.body

for.cond8.preheader:                              ; preds = %for.inc
  %level11 = getelementptr inbounds %struct.cbq_class, ptr %3, i32 0, i32 24
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %1, i32 1, i32 1
  br label %for.body10

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0105 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cbq_class, ptr %3, i32 0, i32 37, i32 %i.0105
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %5, %cl
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %6 = ptrtoint ptr %defmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %defmap, align 4
  %shl = shl nuw nsw i32 1, %i.0105
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then4, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.cond8.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body10:                                       ; preds = %cleanup.for.body10_crit_edge, %for.cond8.preheader
  %i.1114 = phi i32 [ 0, %for.cond8.preheader ], [ %inc63, %cleanup.for.body10_crit_edge ]
  %arrayidx13 = getelementptr %struct.cbq_class, ptr %3, i32 0, i32 37, i32 %i.1114
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %if.end16, label %for.body10.cleanup_crit_edge

for.body10.cleanup_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %for.body10
  %11 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp18111.not = icmp eq i32 %12, 0
  br i1 %cmp18111.not, label %if.end16.cleanup_crit_edge, label %for.body20.lr.ph

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body20.lr.ph:                                 ; preds = %if.end16
  %13 = ptrtoint ptr %level11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %level11, align 2
  %conv = zext i8 %14 to i32
  %shl38 = shl nuw i32 1, %i.1114
  br label %for.body20

for.body20:                                       ; preds = %for.end58.for.body20_crit_edge, %for.body20.lr.ph
  %h.0113 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc60, %for.end58.for.body20_crit_edge ]
  %level.0112 = phi i32 [ %conv, %for.body20.lr.ph ], [ %level.1.lcssa, %for.end58.for.body20_crit_edge ]
  %15 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %privdata.i, align 16
  %arrayidx22 = getelementptr %struct.hlist_head, ptr %16, i32 %h.0113
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %18, null
  %add.ptr = getelementptr i8, ptr %18, i32 -4
  %tobool26.not107116 = icmp eq ptr %add.ptr, null
  %tobool26.not107 = or i1 %tobool23.not, %tobool26.not107116
  br i1 %tobool26.not107, label %for.body20.for.end58_crit_edge, label %for.body20.for.body27_crit_edge

for.body20.for.body27_crit_edge:                  ; preds = %for.body20
  br label %for.body27

for.body20.for.end58_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end58

for.body27:                                       ; preds = %for.inc47.for.body27_crit_edge, %for.body20.for.body27_crit_edge
  %level.1110 = phi i32 [ %level.2, %for.inc47.for.body27_crit_edge ], [ %level.0112, %for.body20.for.body27_crit_edge ]
  %c.0108 = phi ptr [ %add.ptr54, %for.inc47.for.body27_crit_edge ], [ %add.ptr, %for.body20.for.body27_crit_edge ]
  %split28 = getelementptr inbounds %struct.cbq_class, ptr %c.0108, i32 0, i32 15
  %19 = ptrtoint ptr %split28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %split28, align 4
  %cmp29 = icmp eq ptr %20, %3
  br i1 %cmp29, label %land.lhs.true31, label %for.body27.for.inc47_crit_edge

for.body27.for.inc47_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc47

land.lhs.true31:                                  ; preds = %for.body27
  %level32 = getelementptr inbounds %struct.cbq_class, ptr %c.0108, i32 0, i32 24
  %21 = ptrtoint ptr %level32 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %level32, align 2
  %conv33 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %level.1110, i32 %conv33)
  %cmp34 = icmp sgt i32 %level.1110, %conv33
  br i1 %cmp34, label %land.lhs.true36, label %land.lhs.true31.for.inc47_crit_edge

land.lhs.true31.for.inc47_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc47

land.lhs.true36:                                  ; preds = %land.lhs.true31
  %defmap37 = getelementptr inbounds %struct.cbq_class, ptr %c.0108, i32 0, i32 5
  %23 = ptrtoint ptr %defmap37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %defmap37, align 4
  %and39 = and i32 %24, %shl38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %land.lhs.true36.for.inc47_crit_edge, label %if.then41

land.lhs.true36.for.inc47_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc47

if.then41:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %c.0108, ptr %arrayidx13, align 4
  %26 = ptrtoint ptr %level32 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %level32, align 2
  %conv45 = zext i8 %27 to i32
  br label %for.inc47

for.inc47:                                        ; preds = %if.then41, %land.lhs.true36.for.inc47_crit_edge, %land.lhs.true31.for.inc47_crit_edge, %for.body27.for.inc47_crit_edge
  %level.2 = phi i32 [ %conv45, %if.then41 ], [ %level.1110, %land.lhs.true36.for.inc47_crit_edge ], [ %level.1110, %land.lhs.true31.for.inc47_crit_edge ], [ %level.1110, %for.body27.for.inc47_crit_edge ]
  %hnode = getelementptr inbounds %struct.Qdisc_class_common, ptr %c.0108, i32 0, i32 1
  %28 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hnode, align 4
  %tobool50.not = icmp eq ptr %29, null
  %add.ptr54 = getelementptr i8, ptr %29, i32 -4
  %tobool26.not117 = icmp eq ptr %add.ptr54, null
  %tobool26.not = or i1 %tobool50.not, %tobool26.not117
  br i1 %tobool26.not, label %for.inc47.for.end58_crit_edge, label %for.inc47.for.body27_crit_edge

for.inc47.for.body27_crit_edge:                   ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body27

for.inc47.for.end58_crit_edge:                    ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end58

for.end58:                                        ; preds = %for.inc47.for.end58_crit_edge, %for.body20.for.end58_crit_edge
  %level.1.lcssa = phi i32 [ %level.0112, %for.body20.for.end58_crit_edge ], [ %level.2, %for.inc47.for.end58_crit_edge ]
  %inc60 = add nuw i32 %h.0113, 1
  %30 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hashsize, align 4
  %cmp18 = icmp ult i32 %inc60, %31
  br i1 %cmp18, label %for.end58.for.body20_crit_edge, label %for.end58.cleanup_crit_edge

for.end58.cleanup_crit_edge:                      ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.end58.for.body20_crit_edge:                   ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body20

cleanup:                                          ; preds = %for.end58.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %for.body10.cleanup_crit_edge
  %inc63 = add nuw nsw i32 %i.1114, 1
  %exitcond115.not = icmp eq i32 %inc63, 16
  br i1 %exitcond115.not, label %cleanup.cleanup65_crit_edge, label %cleanup.for.body10_crit_edge

cleanup.for.body10_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body10

cleanup.cleanup65_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup65

cleanup65:                                        ; preds = %cleanup.cleanup65_crit_edge, %entry.cleanup65_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cbq_destroy_class(ptr noundef readnone %sch, ptr noundef %cl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %filters = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 36
  %0 = ptrtoint ptr %filters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %filters, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !72

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1435, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %block = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 35
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block, align 4
  tail call void @tcf_block_put(ptr noundef %3) #16
  %q20 = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 21
  %4 = ptrtoint ptr %q20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q20, align 4
  tail call void @qdisc_put(ptr noundef %5) #16
  %R_tab = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 10
  %6 = ptrtoint ptr %R_tab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %R_tab, align 8
  tail call void @qdisc_put_rtab(ptr noundef %7) #16
  %rate_est = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 32
  tail call void @gen_kill_estimator(ptr noundef %rate_est) #16
  %link = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %cmp.not = icmp eq ptr %link, %cl
  br i1 %cmp.not, label %if.end.if.end22_crit_edge, label %if.then21

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef %cl) #16
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_kill_estimator(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cbq_dump_attr(ptr noundef %skb, ptr nocapture noundef readonly %cl) unnamed_addr #2 align 64 {
entry:
  %opt.i45 = alloca %struct.tc_cbq_fopt, align 4
  %opt.i29 = alloca %struct.tc_cbq_wrropt, align 4
  %opt.i = alloca %struct.tc_cbq_lssopt, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %opt.i) #16
  %2 = getelementptr inbounds %struct.tc_cbq_lssopt, ptr %opt.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tc_cbq_lssopt, ptr %opt.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tc_cbq_lssopt, ptr %opt.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.tc_cbq_lssopt, ptr %opt.i, i32 0, i32 4
  %6 = getelementptr inbounds %struct.tc_cbq_lssopt, ptr %opt.i, i32 0, i32 5
  %7 = getelementptr inbounds %struct.tc_cbq_lssopt, ptr %opt.i, i32 0, i32 6
  %8 = getelementptr inbounds %struct.tc_cbq_lssopt, ptr %opt.i, i32 0, i32 7
  %borrow.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 18
  %9 = ptrtoint ptr %borrow.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %borrow.i, align 8
  %cmp.i = icmp eq ptr %10, null
  %spec.store.select.i = zext i1 %cmp.i to i8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.store.select.i, ptr %2, align 1
  %share.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 16
  %12 = ptrtoint ptr %share.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %share.i, align 16
  %cmp3.i = icmp eq ptr %13, null
  br i1 %cmp3.i, label %if.then5.i, label %entry.if.end10.i_crit_edge

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %14 = or i8 %spec.store.select.i, 2
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %2, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i, %entry.if.end10.i_crit_edge
  %ewma_log.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 4
  %16 = ptrtoint ptr %ewma_log.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ewma_log.i, align 2
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %3, align 2
  %level.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 24
  %19 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %level.i, align 2
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %4, align 1
  %avpkt.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 9
  %22 = ptrtoint ptr %avpkt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %avpkt.i, align 4
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %8, align 4
  %maxidle.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 6
  %25 = ptrtoint ptr %maxidle.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %maxidle.i, align 8
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %5, align 4
  %minidle.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 8
  %28 = ptrtoint ptr %minidle.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %minidle.i, align 16
  %sub.i = sub i32 0, %29
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.i, ptr %6, align 4
  %offtime.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 7
  %31 = ptrtoint ptr %offtime.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offtime.i, align 4
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %7, align 4
  %34 = ptrtoint ptr %opt.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %opt.i, align 4
  %call17.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %opt.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool.not.i, label %cbq_dump_lss.exit, label %nla_put_failure.i

nla_put_failure.i:                                ; preds = %if.end10.i
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %nla_put_failure.i.cbq_dump_lss.exit.thread_crit_edge, label %if.then.i.i

nla_put_failure.i.cbq_dump_lss.exit.thread_crit_edge: ; preds = %nla_put_failure.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_dump_lss.exit.thread

if.then.i.i:                                      ; preds = %nla_put_failure.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %35 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %36, %1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !71

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #16
  br label %cbq_dump_lss.exit.thread

cbq_dump_lss.exit.thread:                         ; preds = %if.end.i.i, %nla_put_failure.i.cbq_dump_lss.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %opt.i) #16
  br label %return

cbq_dump_lss.exit:                                ; preds = %if.end10.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %opt.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp = icmp slt i32 %40, 0
  br i1 %cmp, label %cbq_dump_lss.exit.return_crit_edge, label %lor.lhs.false

cbq_dump_lss.exit.return_crit_edge:               ; preds = %cbq_dump_lss.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false:                                    ; preds = %cbq_dump_lss.exit
  %41 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i, align 8
  %R_tab.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 10
  %43 = ptrtoint ptr %R_tab.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %R_tab.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 12, ptr noundef %44) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i16 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i16, label %cbq_dump_rate.exit, label %nla_put_failure.i19

nla_put_failure.i19:                              ; preds = %lor.lhs.false
  %tobool.not.i.i18 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i18, label %nla_put_failure.i19.return_crit_edge, label %if.then.i.i22

nla_put_failure.i19.return_crit_edge:             ; preds = %nla_put_failure.i19
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then.i.i22:                                    ; preds = %nla_put_failure.i19
  %data.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %45 = ptrtoint ptr %data.i.i20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i20, align 4
  %cmp.i.i21 = icmp ugt ptr %46, %42
  br i1 %cmp.i.i21, label %do.end.i.i23, label %if.then.i.i22.if.end.i.i27_crit_edge, !prof !71

if.then.i.i22.if.end.i.i27_crit_edge:             ; preds = %if.then.i.i22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i27

do.end.i.i23:                                     ; preds = %if.then.i.i22
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i27

if.end.i.i27:                                     ; preds = %do.end.i.i23, %if.then.i.i22.if.end.i.i27_crit_edge
  %47 = ptrtoint ptr %data.i.i20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i20, align 4
  %sub.ptr.lhs.cast.i.i24 = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast.i.i25 = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i.i26 = sub i32 %sub.ptr.lhs.cast.i.i24, %sub.ptr.rhs.cast.i.i25
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i26) #16
  br label %return

cbq_dump_rate.exit:                               ; preds = %lor.lhs.false
  %49 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp2 = icmp slt i32 %50, 0
  br i1 %cmp2, label %cbq_dump_rate.exit.return_crit_edge, label %lor.lhs.false3

cbq_dump_rate.exit.return_crit_edge:              ; preds = %cbq_dump_rate.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false3:                                   ; preds = %cbq_dump_rate.exit
  %51 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %opt.i29) #16
  %53 = getelementptr inbounds %struct.tc_cbq_wrropt, ptr %opt.i29, i32 0, i32 1
  %54 = getelementptr inbounds %struct.tc_cbq_wrropt, ptr %opt.i29, i32 0, i32 2
  %55 = getelementptr inbounds %struct.tc_cbq_wrropt, ptr %opt.i29, i32 0, i32 4
  %56 = getelementptr inbounds %struct.tc_cbq_wrropt, ptr %opt.i29, i32 0, i32 5
  %allot.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 11
  %57 = ptrtoint ptr %opt.i29 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %opt.i29, align 4
  %58 = ptrtoint ptr %allot.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %allot.i, align 4
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %55, align 4
  %priority.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 2
  %61 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %priority.i, align 16
  %add.i = add i8 %62, 1
  %63 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %add.i, ptr %53, align 1
  %cpriority.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 22
  %64 = ptrtoint ptr %cpriority.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %cpriority.i, align 8
  %add5.i = add i8 %65, 1
  %66 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %add5.i, ptr %54, align 2
  %weight.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 13
  %67 = ptrtoint ptr %weight.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %weight.i, align 4
  %69 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %56, align 4
  %call9.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 12, ptr noundef nonnull %opt.i29) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i31 = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i31, label %cbq_dump_wrr.exit, label %nla_put_failure.i35

nla_put_failure.i35:                              ; preds = %lor.lhs.false3
  %tobool.not.i.i34 = icmp eq ptr %52, null
  br i1 %tobool.not.i.i34, label %nla_put_failure.i35.cbq_dump_wrr.exit.thread_crit_edge, label %if.then.i.i38

nla_put_failure.i35.cbq_dump_wrr.exit.thread_crit_edge: ; preds = %nla_put_failure.i35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_dump_wrr.exit.thread

if.then.i.i38:                                    ; preds = %nla_put_failure.i35
  %data.i.i36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %70 = ptrtoint ptr %data.i.i36 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i.i36, align 4
  %cmp.i.i37 = icmp ugt ptr %71, %52
  br i1 %cmp.i.i37, label %do.end.i.i39, label %if.then.i.i38.if.end.i.i43_crit_edge, !prof !71

if.then.i.i38.if.end.i.i43_crit_edge:             ; preds = %if.then.i.i38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i43

do.end.i.i39:                                     ; preds = %if.then.i.i38
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i43

if.end.i.i43:                                     ; preds = %do.end.i.i39, %if.then.i.i38.if.end.i.i43_crit_edge
  %72 = ptrtoint ptr %data.i.i36 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i.i36, align 4
  %sub.ptr.lhs.cast.i.i40 = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i.i41 = ptrtoint ptr %73 to i32
  %sub.ptr.sub.i.i42 = sub i32 %sub.ptr.lhs.cast.i.i40, %sub.ptr.rhs.cast.i.i41
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i42) #16
  br label %cbq_dump_wrr.exit.thread

cbq_dump_wrr.exit.thread:                         ; preds = %if.end.i.i43, %nla_put_failure.i35.cbq_dump_wrr.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %opt.i29) #16
  br label %return

cbq_dump_wrr.exit:                                ; preds = %lor.lhs.false3
  %74 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %opt.i29) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp5 = icmp slt i32 %75, 0
  br i1 %cmp5, label %cbq_dump_wrr.exit.return_crit_edge, label %lor.lhs.false6

cbq_dump_wrr.exit.return_crit_edge:               ; preds = %cbq_dump_wrr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false6:                                   ; preds = %cbq_dump_wrr.exit
  %76 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tail.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %opt.i45) #16
  %78 = getelementptr inbounds %struct.tc_cbq_fopt, ptr %opt.i45, i32 0, i32 1
  %79 = getelementptr inbounds %struct.tc_cbq_fopt, ptr %opt.i45, i32 0, i32 2
  %split.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 15
  %80 = ptrtoint ptr %split.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %split.i, align 4
  %tobool.not.i47 = icmp eq ptr %81, null
  br i1 %tobool.not.i47, label %lor.lhs.false.i, label %cond.true.i

lor.lhs.false.i:                                  ; preds = %lor.lhs.false6
  %defmap.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 5
  %82 = ptrtoint ptr %defmap.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %defmap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool1.not.i = icmp eq i32 %83, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cbq_dump_fopt.exit_crit_edge, label %lor.lhs.false.i.cond.end.i_crit_edge

lor.lhs.false.i.cond.end.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

lor.lhs.false.i.cbq_dump_fopt.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_dump_fopt.exit

cond.true.i:                                      ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #18
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %81, align 16
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %lor.lhs.false.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %85, %cond.true.i ], [ 0, %lor.lhs.false.i.cond.end.i_crit_edge ]
  %86 = ptrtoint ptr %opt.i45 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %cond.i, ptr %opt.i45, align 4
  %defmap6.i = getelementptr inbounds %struct.cbq_class, ptr %cl, i32 0, i32 5
  %87 = ptrtoint ptr %defmap6.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %defmap6.i, align 4
  %89 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %78, align 4
  %90 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %79, align 4
  %call8.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 12, ptr noundef nonnull %opt.i45) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %cond.end.i.cbq_dump_fopt.exit_crit_edge, label %nla_put_failure.i50

cond.end.i.cbq_dump_fopt.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_dump_fopt.exit

nla_put_failure.i50:                              ; preds = %cond.end.i
  %tobool.not.i.i49 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i49, label %nla_put_failure.i50.cbq_dump_fopt.exit.thread_crit_edge, label %if.then.i.i53

nla_put_failure.i50.cbq_dump_fopt.exit.thread_crit_edge: ; preds = %nla_put_failure.i50
  call void @__sanitizer_cov_trace_pc() #18
  br label %cbq_dump_fopt.exit.thread

if.then.i.i53:                                    ; preds = %nla_put_failure.i50
  %data.i.i51 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %91 = ptrtoint ptr %data.i.i51 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i.i51, align 4
  %cmp.i.i52 = icmp ugt ptr %92, %77
  br i1 %cmp.i.i52, label %do.end.i.i54, label %if.then.i.i53.if.end.i.i58_crit_edge, !prof !71

if.then.i.i53.if.end.i.i58_crit_edge:             ; preds = %if.then.i.i53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i58

do.end.i.i54:                                     ; preds = %if.then.i.i53
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i58

if.end.i.i58:                                     ; preds = %do.end.i.i54, %if.then.i.i53.if.end.i.i58_crit_edge
  %93 = ptrtoint ptr %data.i.i51 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data.i.i51, align 4
  %sub.ptr.lhs.cast.i.i55 = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast.i.i56 = ptrtoint ptr %94 to i32
  %sub.ptr.sub.i.i57 = sub i32 %sub.ptr.lhs.cast.i.i55, %sub.ptr.rhs.cast.i.i56
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i57) #16
  br label %cbq_dump_fopt.exit.thread

cbq_dump_fopt.exit.thread:                        ; preds = %if.end.i.i58, %nla_put_failure.i50.cbq_dump_fopt.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %opt.i45) #16
  br label %97

cbq_dump_fopt.exit:                               ; preds = %cond.end.i.cbq_dump_fopt.exit_crit_edge, %lor.lhs.false.i.cbq_dump_fopt.exit_crit_edge
  %95 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %opt.i45) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp8 = icmp slt i32 %96, 0
  br i1 %cmp8, label %cbq_dump_fopt.exit._crit_edge, label %cbq_dump_fopt.exit.return_crit_edge

cbq_dump_fopt.exit.return_crit_edge:              ; preds = %cbq_dump_fopt.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

cbq_dump_fopt.exit._crit_edge:                    ; preds = %cbq_dump_fopt.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %97

97:                                               ; preds = %cbq_dump_fopt.exit._crit_edge, %cbq_dump_fopt.exit.thread
  br label %return

return:                                           ; preds = %97, %cbq_dump_fopt.exit.return_crit_edge, %cbq_dump_wrr.exit.return_crit_edge, %cbq_dump_wrr.exit.thread, %cbq_dump_rate.exit.return_crit_edge, %if.end.i.i27, %nla_put_failure.i19.return_crit_edge, %cbq_dump_lss.exit.return_crit_edge, %cbq_dump_lss.exit.thread
  %retval.0 = phi i32 [ -1, %cbq_dump_wrr.exit.return_crit_edge ], [ -1, %cbq_dump_rate.exit.return_crit_edge ], [ -1, %cbq_dump_lss.exit.return_crit_edge ], [ -1, %cbq_dump_lss.exit.thread ], [ -1, %cbq_dump_wrr.exit.thread ], [ -1, %97 ], [ 0, %cbq_dump_fopt.exit.return_crit_edge ], [ -1, %nla_put_failure.i19.return_crit_edge ], [ -1, %if.end.i.i27 ]
  ret i32 %retval.0
}

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
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_bstats_update(ptr noundef %bstats, i64 noundef %bytes, i32 noundef %packets) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %entry.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

entry.u64_stats_update_begin.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !59) #16
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !73
  %5 = tail call i32 @llvm.read_register.i32(metadata !59) #16
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !74
  %14 = tail call i32 @llvm.read_register.i32(metadata !59) #16
  %and.i.i.i7.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !59) #16
  %and.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !59) #16
  %and.i.i.i9.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %25, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !75
  %26 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !76
  %33 = tail call i32 @llvm.read_register.i32(metadata !59) #16
  %and.i.i.i12.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %36, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !72

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %entry.u64_stats_update_begin.exit_crit_edge
  %syncp = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !77
  %dep_map.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #16
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #16
  %conv.i = and i64 %bytes, 4294967295
  %41 = ptrtoint ptr %bstats to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %bstats, align 8
  %add.i = add i64 %42, %conv.i
  store i64 %add.i, ptr %bstats, align 8
  %packets2 = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 1
  %conv.i7 = zext i32 %packets to i64
  %43 = ptrtoint ptr %packets2 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %packets2, align 8
  %add.i8 = add i64 %44, %conv.i7
  store i64 %add.i8, ptr %packets2, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %40) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !78
  %45 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_schedule_range_ns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbq_undelay(ptr noundef %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -472
  %qdisc = getelementptr i8, ptr %timer, i32 104
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  %call.i.i = tail call i64 @ktime_get() #16
  %shr.i = lshr i64 %call.i.i, 6
  %pmask1 = getelementptr i8, ptr %timer, i32 -8
  %2 = ptrtoint ptr %pmask1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pmask1, align 16
  store i32 0, ptr %pmask1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not37 = icmp eq i32 %3, 0
  br i1 %tobool.not37, label %entry.if.end18_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %entry.while.body_crit_edge
  %pmask.038 = phi i32 [ %and, %if.end13.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %pmask.038, i1 true) #16, !range !70
  %shl = shl nuw i32 1, %4
  %neg6 = xor i32 %shl, -1
  %and = and i32 %pmask.038, %neg6
  %arrayidx.i = getelementptr %struct.cbq_sched_data, ptr %add.ptr, i32 0, i32 6, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %6, null
  br i1 %cmp.i, label %while.body.if.end13_crit_edge, label %while.body.do.body.i_crit_edge

while.body.do.body.i_crit_edge:                   ; preds = %while.body
  br label %do.body.i

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %while.body.do.body.i_crit_edge
  %cl_prev.0.i = phi ptr [ %cl.0.i, %do.cond.i.do.body.i_crit_edge ], [ %6, %while.body.do.body.i_crit_edge ]
  %next_alive.i = getelementptr inbounds %struct.cbq_class, ptr %cl_prev.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %next_alive.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %next_alive.i, align 4
  %penalized.i = getelementptr inbounds %struct.cbq_class, ptr %8, i32 0, i32 29
  %9 = ptrtoint ptr %penalized.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %penalized.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %shr.i)
  %cmp1.not.i = icmp eq i64 %10, %shr.i
  br i1 %cmp1.not.i, label %do.body.i.do.cond.i_crit_edge, label %if.then2.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond.i

if.then2.i:                                       ; preds = %do.body.i
  %next_alive3.i = getelementptr inbounds %struct.cbq_class, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %next_alive3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next_alive3.i, align 4
  %13 = ptrtoint ptr %next_alive.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %next_alive.i, align 4
  store ptr null, ptr %next_alive3.i, align 4
  %priority.i = getelementptr inbounds %struct.cbq_class, ptr %8, i32 0, i32 2
  %14 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %priority.i, align 16
  %cpriority.i = getelementptr inbounds %struct.cbq_class, ptr %8, i32 0, i32 22
  %16 = ptrtoint ptr %cpriority.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %cpriority.i, align 8
  %delayed.i = getelementptr inbounds %struct.cbq_class, ptr %8, i32 0, i32 23
  %17 = ptrtoint ptr %delayed.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %delayed.i, align 1
  %qdisc.i.i = getelementptr inbounds %struct.cbq_class, ptr %8, i32 0, i32 14
  %18 = ptrtoint ptr %qdisc.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qdisc.i.i, align 8
  %privdata.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %19, i32 0, i32 30
  %conv.i.i = zext i8 %15 to i32
  %arrayidx.i.i = getelementptr %struct.cbq_sched_data, ptr %privdata.i.i.i, i32 0, i32 6, i32 %conv.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  store ptr %8, ptr %arrayidx.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %21, null
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  %next_alive.i.i = getelementptr inbounds %struct.cbq_class, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %next_alive.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next_alive.i.i, align 4
  %24 = ptrtoint ptr %next_alive3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %next_alive3.i, align 4
  store ptr %8, ptr %next_alive.i.i, align 4
  br label %cbq_activate_class.exit.i

if.else.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %next_alive3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %8, ptr %next_alive3.i, align 4
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %activemask.i.i = getelementptr inbounds %struct.Qdisc, ptr %19, i32 1, i32 25, i32 0, i32 0, i32 4
  %26 = ptrtoint ptr %activemask.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %activemask.i.i, align 16
  %or.i.i = or i32 %27, %shl.i.i
  store i32 %or.i.i, ptr %activemask.i.i, align 16
  br label %cbq_activate_class.exit.i

cbq_activate_class.exit.i:                        ; preds = %if.else.i.i, %if.then.i.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %cmp8.i = icmp eq ptr %8, %29
  br i1 %cmp8.i, label %if.then9.i, label %cbq_activate_class.exit.i.if.end19.i_crit_edge

cbq_activate_class.exit.i.if.end19.i_crit_edge:   ; preds = %cbq_activate_class.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

if.then9.i:                                       ; preds = %cbq_activate_class.exit.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cl_prev.0.i, ptr %arrayidx.i, align 4
  %cmp14.i = icmp eq ptr %8, %cl_prev.0.i
  br i1 %cmp14.i, label %if.then15.i, label %if.then9.i.if.end19.i_crit_edge

if.then9.i.if.end19.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end13

if.end19.i:                                       ; preds = %if.then9.i.if.end19.i_crit_edge, %cbq_activate_class.exit.i.if.end19.i_crit_edge
  %32 = ptrtoint ptr %next_alive.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next_alive.i, align 4
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.end19.i, %do.body.i.do.cond.i_crit_edge
  %cl.0.i = phi ptr [ %33, %if.end19.i ], [ %8, %do.body.i.do.cond.i_crit_edge ]
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %cmp30.not.i = icmp eq ptr %cl.0.i, %35
  br i1 %cmp30.not.i, label %do.cond.i.if.end13_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

do.cond.i.if.end13_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end13:                                         ; preds = %do.cond.i.if.end13_crit_edge, %if.then15.i, %while.body.if.end13_crit_edge
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end13.if.end18_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.end18:                                         ; preds = %if.end13.if.end18_crit_edge, %entry.if.end18_crit_edge
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_queue.i, align 8
  %qdisc1.i = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %qdisc1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %qdisc1.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %if.end18.qdisc_root.exit_crit_edge, label %lor.lhs.false.i

if.end18.qdisc_root.exit_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_root.exit

lor.lhs.false.i:                                  ; preds = %if.end18
  %call3.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.qdisc_root.exit_crit_edge

lor.lhs.false.i.qdisc_root.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_root.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.qdisc_root.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.qdisc_root.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_root.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @qdisc_root.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true6.i.qdisc_root.exit_crit_edge, label %if.then.i

land.lhs.true6.i.qdisc_root.exit_crit_edge:       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_root.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_root.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 558, ptr noundef nonnull @.str.15) #16
  br label %qdisc_root.exit

qdisc_root.exit:                                  ; preds = %if.then.i, %land.lhs.true6.i.qdisc_root.exit_crit_edge, %land.lhs.true.i.qdisc_root.exit_crit_edge, %lor.lhs.false.i.qdisc_root.exit_crit_edge, %if.end18.qdisc_root.exit_crit_edge
  tail call void @__netif_schedule(ptr noundef %39) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qdisc_class_hash_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !47, !49, !50, !52, !54, !55, !57}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_sch_cbq__368_1813_cbq_module_init6, !1, !"__initcall__kmod_sch_cbq__368_1813_cbq_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_cbq.c", i32 1813, i32 1}
!2 = !{ptr @__exitcall_cbq_module_exit, !3, !"__exitcall_cbq_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_cbq.c", i32 1814, i32 1}
!4 = !{ptr @__UNIQUE_ID_file369, !5, !"__UNIQUE_ID_file369", i1 false, i1 false}
!5 = !{!"../net/sched/sch_cbq.c", i32 1815, i32 1}
!6 = !{ptr @__UNIQUE_ID_license370, !5, !"__UNIQUE_ID_license370", i1 false, i1 false}
!7 = !{ptr @cbq_qdisc_ops, !8, !"cbq_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_cbq.c", i32 1788, i32 25}
!9 = !{ptr @cbq_class_ops, !10, !"cbq_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_cbq.c", i32 1773, i32 37}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cbq_change_class.__msg, !16, !"__msg", i1 false, i1 false}
!16 = !{!"../net/sched/sch_cbq.c", i32 1491, i32 3}
!17 = !{ptr @cbq_change_class.__msg.2, !18, !"__msg", i1 false, i1 false}
!18 = !{!"../net/sched/sch_cbq.c", i32 1500, i32 5}
!19 = !{ptr @cbq_change_class.__msg.3, !20, !"__msg", i1 false, i1 false}
!20 = !{!"../net/sched/sch_cbq.c", i32 1504, i32 5}
!21 = !{ptr @cbq_change_class.__msg.4, !22, !"__msg", i1 false, i1 false}
!22 = !{!"../net/sched/sch_cbq.c", i32 1523, i32 5}
!23 = !{ptr @cbq_change_class.__msg.5, !24, !"__msg", i1 false, i1 false}
!24 = !{!"../net/sched/sch_cbq.c", i32 1563, i32 3}
!25 = !{ptr @cbq_change_class.__msg.6, !26, !"__msg", i1 false, i1 false}
!26 = !{!"../net/sched/sch_cbq.c", i32 1576, i32 4}
!27 = !{ptr @cbq_change_class.__msg.7, !28, !"__msg", i1 false, i1 false}
!28 = !{!"../net/sched/sch_cbq.c", i32 1591, i32 4}
!29 = !{ptr @cbq_change_class.__msg.8, !30, !"__msg", i1 false, i1 false}
!30 = !{!"../net/sched/sch_cbq.c", i32 1602, i32 4}
!31 = !{ptr @cbq_change_class.__msg.9, !32, !"__msg", i1 false, i1 false}
!32 = !{!"../net/sched/sch_cbq.c", i32 1623, i32 4}
!33 = !{ptr @cbq_opt_parse.__msg, !34, !"__msg", i1 false, i1 false}
!34 = !{!"../net/sched/sch_cbq.c", i32 1136, i32 3}
!35 = !{ptr @cbq_opt_parse.__msg.10, !36, !"__msg", i1 false, i1 false}
!36 = !{!"../net/sched/sch_cbq.c", i32 1149, i32 4}
!37 = !{ptr @cbq_policy, !38, !"cbq_policy", i1 false, i1 false}
!38 = !{!"../net/sched/sch_cbq.c", i32 1119, i32 32}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/sched/sch_cbq.c", i32 902, i32 5}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cbq_normalize_quanta._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @cbq_normalize_quanta._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/net/netlink.h", i32 991, i32 3}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../net/sched/sch_cbq.c", i32 227, i32 8}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/net/sch_generic.h", i32 835, i32 34}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!54 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @cbq_init.__msg, !56, !"__msg", i1 false, i1 false}
!56 = !{!"../net/sched/sch_cbq.c", i32 1173, i32 3}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/net/sch_generic.h", i32 558, i32 20}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
!70 = !{i32 0, i32 33}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2149905270}
!74 = !{i64 2149910202}
!75 = !{i64 2149931914}
!76 = !{i64 2149936806}
!77 = !{i64 2150013263}
!78 = !{i64 2150013588}
