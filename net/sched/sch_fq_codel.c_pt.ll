; ModuleID = '/llk/IR_all_yes/net/sched/sch_fq_codel.c_pt.bc'
source_filename = "../net/sched/sch_fq_codel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.tcf_result = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { i32, i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.112, [48 x i8], %union.anon.113, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.115, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.112 = type { i64 }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { i32, ptr }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.117, i32, i32, i32, i16, i16, %union.anon.119, i32, %union.anon.120, %union.anon.121, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.117 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i16 }
%struct.fq_codel_flow = type { ptr, ptr, %struct.list_head, i32, %struct.codel_vars }
%struct.list_head = type { ptr, ptr }
%struct.codel_vars = type { i32, i32, i8, i16, i32, i32, i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.fq_codel_sched_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.codel_params, %struct.codel_stats, i32, i32, i32, i32, %struct.list_head, %struct.list_head }
%struct.codel_stats = type { i32, i32, i32, i32, i32 }
%struct.tc_fq_codel_xstats = type { i32, %union.anon.151 }
%union.anon.151 = type { %struct.tc_fq_codel_qd_stats }
%struct.tc_fq_codel_qd_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }

@fq_codel_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @fq_codel_class_ops, [16 x i8] c"fq_codel\00\00\00\00\00\00\00\00", i32 104, i32 0, ptr @fq_codel_enqueue, ptr @fq_codel_dequeue, ptr @qdisc_peek_dequeued, ptr @fq_codel_init, ptr @fq_codel_reset, ptr @fq_codel_destroy, ptr @fq_codel_change, ptr null, ptr null, ptr null, ptr @fq_codel_dump, ptr @fq_codel_dump_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_fq_codel__507_740_fq_codel_module_init6 = internal global ptr @fq_codel_module_init, section ".initcall6.init", align 4
@__exitcall_fq_codel_module_exit = internal global ptr @fq_codel_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author508 = internal constant [33 x i8] c"sch_fq_codel.author=Eric Dumazet\00", section ".modinfo", align 1
@__UNIQUE_ID_file509 = internal constant [41 x i8] c"sch_fq_codel.file=net/sched/sch_fq_codel\00", section ".modinfo", align 1
@__UNIQUE_ID_license510 = internal constant [25 x i8] c"sch_fq_codel.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description511 = internal constant [53 x i8] c"sch_fq_codel.description=Fair Queue CoDel discipline\00", section ".modinfo", align 1
@fq_codel_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr null, ptr @fq_codel_leaf, ptr null, ptr @fq_codel_find, ptr null, ptr null, ptr @fq_codel_walk, ptr @fq_codel_tcf_block, ptr @fq_codel_bind, ptr @fq_codel_unbind, ptr @fq_codel_dump_class, ptr @fq_codel_dump_class_stats }, [40 x i8] zeroinitializer }, align 32
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@fq_codel_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/sched/sch_fq_codel.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@fq_codel_policy = internal constant { [12 x %struct.nla_policy], [32 x i8] } { [12 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@fq_codel_change.__msg = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid quantum\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"fq_codel_class_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 703, i32 37 }
@___asan_gen_.19 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 596, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 89, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 598, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 271, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"fq_codel_policy\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 355, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.37 = private constant [28 x i8] c"../net/sched/sch_fq_codel.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 395, i32 4 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author508, ptr @__UNIQUE_ID_description511, ptr @__UNIQUE_ID_file509, ptr @__UNIQUE_ID_license510, ptr @__exitcall_fq_codel_module_exit, ptr @__initcall__kmod_sch_fq_codel__507_740_fq_codel_module_init6, ptr @fq_codel_module_exit, ptr @fq_codel_class_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @fq_codel_policy, ptr @fq_codel_change.__msg], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fq_codel_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fq_codel_policy to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fq_codel_change.__msg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fq_codel_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @fq_codel_qdisc_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_codel_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @fq_codel_qdisc_ops) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_codel_enqueue(ptr noundef %skb, ptr noundef %sch, ptr nocapture noundef %to_free) #2 align 64 {
entry:
  %res.i = alloca %struct.tcf_result, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i) #12
  %0 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %res.i, align 4, !annotation !42
  %1 = getelementptr inbounds %struct.anon.142, ptr %res.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !42
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %3 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %priority.i, align 4
  %and.i = and i32 %4, -65536
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %5 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %6)
  %cmp.i = icmp eq i32 %and.i, %6
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %and2.i = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp3.not.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %flows_cnt.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %7 = ptrtoint ptr %flows_cnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flows_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.i, i32 %8)
  %cmp7.not.i = icmp ugt i32 %and2.i, %8
  br i1 %cmp7.not.i, label %land.lhs.true4.i.if.end.i_crit_edge, label %land.lhs.true4.i.fq_codel_classify.exit.thread112_crit_edge

land.lhs.true4.i.fq_codel_classify.exit.thread112_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fq_codel_classify.exit.thread112

land.lhs.true4.i.if.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true4.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %9 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %privdata.i, align 4
  %call11.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %land.lhs.true12.i, label %if.end.i.do.end20.i_crit_edge

if.end.i.do.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20.i

land.lhs.true12.i:                                ; preds = %if.end.i
  %call13.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true12.i.do.end20.i_crit_edge, label %land.lhs.true15.i

land.lhs.true12.i.do.end20.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20.i

land.lhs.true15.i:                                ; preds = %land.lhs.true12.i
  %.b53.i = load i1, ptr @fq_codel_classify.__warned, align 1
  br i1 %.b53.i, label %land.lhs.true15.i.do.end20.i_crit_edge, label %if.then17.i

land.lhs.true15.i.do.end20.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20.i

if.then17.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fq_codel_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 89, ptr noundef nonnull @.str.3) #12
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.then17.i, %land.lhs.true15.i.do.end20.i_crit_edge, %land.lhs.true12.i.do.end20.i_crit_edge, %if.end.i.do.end20.i_crit_edge
  %tobool22.not.i = icmp eq ptr %10, null
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %do.end20.i
  %l4_hash.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %11 = ptrtoint ptr %l4_hash.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i.i = load i16, ptr %l4_hash.i.i.i, align 8
  %12 = and i16 %bf.load.i.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %if.then.i.i.i, label %if.then23.i.fq_codel_hash.exit.i_crit_edge

if.then23.i.fq_codel_hash.exit.i_crit_edge:       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fq_codel_hash.exit.i

if.then.i.i.i:                                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__skb_get_hash(ptr noundef %skb) #12
  br label %fq_codel_hash.exit.i

fq_codel_hash.exit.i:                             ; preds = %if.then.i.i.i, %if.then23.i.fq_codel_hash.exit.i_crit_edge
  %hash.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %14 = ptrtoint ptr %hash.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hash.i.i.i, align 4
  %flows_cnt.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %16 = ptrtoint ptr %flows_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flows_cnt.i.i, align 4
  %conv.i.i.i = zext i32 %15 to i64
  %conv1.i.i.i = zext i32 %17 to i64
  %mul.i.i.i = mul nuw i64 %conv1.i.i.i, %conv.i.i.i
  %shr.i.i.i = lshr i64 %mul.i.i.i, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %add.i = add nuw i32 %conv2.i.i.i, 1
  br label %fq_codel_classify.exit.thread112

if.end25.i:                                       ; preds = %do.end20.i
  %call26.i = call i32 @tcf_classify(ptr noundef %skb, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %res.i, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call26.i)
  %cmp27.i = icmp sgt i32 %call26.i, -1
  br i1 %cmp27.i, label %if.then28.i, label %if.end25.i.if.then.thread122_crit_edge

if.end25.i.if.then.thread122_crit_edge:           ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.thread122

if.then28.i:                                      ; preds = %if.end25.i
  %18 = zext i32 %call26.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call26.i, label %sw.epilog.i [
    i32 4, label %if.then28.i.if.then.thread127_crit_edge
    i32 5, label %if.then28.i.if.then.thread127_crit_edge130
    i32 8, label %if.then28.i.if.then.thread127_crit_edge131
    i32 2, label %if.then28.i.if.then.thread122_crit_edge
  ]

if.then28.i.if.then.thread122_crit_edge:          ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.thread122

if.then28.i.if.then.thread127_crit_edge131:       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.thread127

if.then28.i.if.then.thread127_crit_edge130:       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.thread127

if.then28.i.if.then.thread127_crit_edge:          ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.thread127

sw.epilog.i:                                      ; preds = %if.then28.i
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %and30.i = and i32 %20, 65535
  %flows_cnt31.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %21 = ptrtoint ptr %flows_cnt31.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flows_cnt31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and30.i, i32 %22)
  %cmp32.not.i = icmp ugt i32 %and30.i, %22
  br i1 %cmp32.not.i, label %sw.epilog.i.if.then.thread122_crit_edge, label %fq_codel_classify.exit

sw.epilog.i.if.then.thread122_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.thread122

fq_codel_classify.exit.thread112:                 ; preds = %fq_codel_hash.exit.i, %land.lhs.true4.i.fq_codel_classify.exit.thread112_crit_edge
  %retval.0.i.ph = phi i32 [ %and2.i, %land.lhs.true4.i.fq_codel_classify.exit.thread112_crit_edge ], [ %add.i, %fq_codel_hash.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #12
  br label %if.end3

fq_codel_classify.exit:                           ; preds = %sw.epilog.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %cmp = icmp eq i32 %and30.i, 0
  br i1 %cmp, label %fq_codel_classify.exit.if.then2_crit_edge, label %fq_codel_classify.exit.if.end3_crit_edge

fq_codel_classify.exit.if.end3_crit_edge:         ; preds = %fq_codel_classify.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

fq_codel_classify.exit.if.then2_crit_edge:        ; preds = %fq_codel_classify.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

if.then.thread122:                                ; preds = %sw.epilog.i.if.then.thread122_crit_edge, %if.then28.i.if.then.thread122_crit_edge, %if.end25.i.if.then.thread122_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #12
  br label %if.then2

if.then.thread127:                                ; preds = %if.then28.i.if.then.thread127_crit_edge, %if.then28.i.if.then.thread127_crit_edge130, %if.then28.i.if.then.thread127_crit_edge131
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #12
  br label %if.end

if.then2:                                         ; preds = %if.then.thread122, %fq_codel_classify.exit.if.then2_crit_edge
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %23 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %24, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.thread127
  %ret.0110121 = phi i32 [ 131072, %if.then2 ], [ 65536, %if.then.thread127 ]
  %25 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %to_free, align 4
  %27 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  br label %cleanup

if.end3:                                          ; preds = %fq_codel_classify.exit.if.end3_crit_edge, %fq_codel_classify.exit.thread112
  %retval.0.i116 = phi i32 [ %retval.0.i.ph, %fq_codel_classify.exit.thread112 ], [ %and30.i, %fq_codel_classify.exit.if.end3_crit_edge ]
  %dec = add i32 %retval.0.i116, -1
  %call.i.i.i = call i64 @ktime_get() #12
  %shr.i.i = lshr i64 %call.i.i.i, 10
  %conv.i.i = trunc i64 %shr.i.i to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.i.i, ptr %data.i.i, align 4
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %29 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %flows, align 4
  %arrayidx = getelementptr %struct.fq_codel_flow, ptr %30, i32 %dec
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %cmp.i95 = icmp eq ptr %32, null
  br i1 %cmp.i95, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %skb, ptr %arrayidx, align 4
  br label %flow_queue_add.exit

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %tail.i = getelementptr %struct.fq_codel_flow, ptr %30, i32 %dec, i32 1
  %34 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %skb, ptr %35, align 8
  br label %flow_queue_add.exit

flow_queue_add.exit:                              ; preds = %if.else.i, %if.then.i
  %tail2.i = getelementptr %struct.fq_codel_flow, ptr %30, i32 %dec, i32 1
  %37 = ptrtoint ptr %tail2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %skb, ptr %tail2.i, align 4
  %38 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %skb, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %39 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cb.i.i, align 4
  %backlogs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %41 = ptrtoint ptr %backlogs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %backlogs, align 4
  %arrayidx5 = getelementptr i32, ptr %42, i32 %dec
  %43 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx5, align 4
  %add = add i32 %44, %40
  store i32 %add, ptr %arrayidx5, align 4
  %45 = load i32, ptr %cb.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %46 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %backlog.i, align 4
  %add.i97 = add i32 %47, %45
  store i32 %add.i97, ptr %backlog.i, align 4
  %flowchain = getelementptr %struct.fq_codel_flow, ptr %30, i32 %dec, i32 2
  %48 = ptrtoint ptr %flowchain to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %flowchain, align 4
  %cmp.i98.not = icmp eq ptr %49, %flowchain
  br i1 %cmp.i98.not, label %if.then8, label %flow_queue_add.exit.if.end10_crit_edge

flow_queue_add.exit.if.end10_crit_edge:           ; preds = %flow_queue_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %flow_queue_add.exit
  %new_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 28
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %flowchain, ptr noundef %51, ptr noundef %new_flows) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_add_tail.exit_crit_edge

if.then8.list_add_tail.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %flowchain, ptr %prev.i, align 4
  %53 = ptrtoint ptr %flowchain to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %new_flows, ptr %flowchain, align 4
  %prev3.i.i = getelementptr %struct.fq_codel_flow, ptr %30, i32 %dec, i32 2, i32 1
  %54 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %flowchain, ptr %51, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then8.list_add_tail.exit_crit_edge
  %new_flow_count = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %56 = ptrtoint ptr %new_flow_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %new_flow_count, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %new_flow_count, align 4
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %58 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %quantum, align 4
  %deficit = getelementptr %struct.fq_codel_flow, ptr %30, i32 %dec, i32 3
  %60 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %deficit, align 4
  br label %if.end10

if.end10:                                         ; preds = %list_add_tail.exit, %flow_queue_add.exit.if.end10_crit_edge
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %61 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %truesize, align 8
  %mem_usage = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %63 = ptrtoint ptr %mem_usage to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %mem_usage, align 4
  %memory_usage = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %64 = ptrtoint ptr %memory_usage to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %memory_usage, align 4
  %add14 = add i32 %65, %62
  store i32 %add14, ptr %memory_usage, align 4
  %memory_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %66 = ptrtoint ptr %memory_limit to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %memory_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %67)
  %cmp16 = icmp ugt i32 %add14, %67
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %68 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %qlen, align 8
  %inc18 = add i32 %69, 1
  store i32 %inc18, ptr %qlen, align 8
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %70 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc18, i32 %71)
  %cmp19.not = icmp ugt i32 %inc18, %71
  %brmerge = select i1 %cmp19.not, i1 true, i1 %cmp16
  br i1 %brmerge, label %if.end22, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %72 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %backlog.i, align 4
  %74 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cb.i.i, align 4
  %drop_batch_size = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %76 = ptrtoint ptr %drop_batch_size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %drop_batch_size, align 4
  %flows_cnt.i101 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %78 = ptrtoint ptr %flows_cnt.i101 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flows_cnt.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp48.not.i = icmp eq i32 %79, 0
  br i1 %cmp48.not.i, label %if.end22.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end22.for.end.i_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end22
  %80 = ptrtoint ptr %backlogs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %backlogs, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.051.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %idx.050.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select47.i, %for.body.i.for.body.i_crit_edge ]
  %maxbacklog.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %84, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %81, i32 %i.051.i
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %maxbacklog.049.i)
  %cmp1.i = icmp ugt i32 %83, %maxbacklog.049.i
  %84 = call i32 @llvm.umax.i32(i32 %83, i32 %maxbacklog.049.i) #12
  %spec.select47.i = select i1 %cmp1.i, i32 %i.051.i, i32 %idx.050.i
  %inc.i = add nuw i32 %i.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %79
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo.i = lshr i32 %84, 1
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.end22.for.end.i_crit_edge
  %maxbacklog.0.lcssa.i = phi i32 [ 0, %if.end22.for.end.i_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %idx.0.lcssa.i = phi i32 [ 0, %if.end22.for.end.i_crit_edge ], [ %spec.select47.i, %for.end.loopexit.i ]
  %85 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %flows, align 4
  %arrayidx4.i = getelementptr %struct.fq_codel_flow, ptr %86, i32 %idx.0.lcssa.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.end.i
  %i.1.i = phi i32 [ 0, %for.end.i ], [ %inc9.i, %do.body.i.do.body.i_crit_edge ]
  %len.0.i = phi i32 [ 0, %for.end.i ], [ %add.i103, %do.body.i.do.body.i_crit_edge ]
  %mem.0.i = phi i32 [ 0, %for.end.i ], [ %add8.i, %do.body.i.do.body.i_crit_edge ]
  %87 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx4.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 8
  store ptr %90, ptr %arrayidx4.i, align 4
  store ptr null, ptr %88, align 8
  %cb.i.i.i102 = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 3
  %91 = ptrtoint ptr %cb.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cb.i.i.i102, align 4
  %add.i103 = add i32 %92, %len.0.i
  %mem_usage.i = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 3, i32 12
  %93 = ptrtoint ptr %mem_usage.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mem_usage.i, align 4
  %add8.i = add i32 %94, %mem.0.i
  %95 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %to_free, align 4
  store ptr %96, ptr %88, align 8
  store ptr %88, ptr %to_free, align 4
  %inc9.i = add nuw i32 %i.1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc9.i, i32 %77)
  %cmp10.i = icmp ult i32 %inc9.i, %77
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i103, i32 %maxbacklog.0.lcssa.i)
  %cmp11.i = icmp ult i32 %add.i103, %maxbacklog.0.lcssa.i
  %or.cond.i = select i1 %cmp10.i, i1 %cmp11.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %fq_codel_drop.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

fq_codel_drop.exit:                               ; preds = %do.body.i
  %cvars.i = getelementptr %struct.fq_codel_flow, ptr %86, i32 %idx.0.lcssa.i, i32 4
  %97 = ptrtoint ptr %cvars.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cvars.i, align 4
  %add12.i = add i32 %98, %inc9.i
  store i32 %add12.i, ptr %cvars.i, align 4
  %99 = ptrtoint ptr %backlogs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %backlogs, align 4
  %arrayidx14.i = getelementptr i32, ptr %100, i32 %idx.0.lcssa.i
  %101 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx14.i, align 4
  %sub.i = sub i32 %102, %add.i103
  store i32 %sub.i, ptr %arrayidx14.i, align 4
  %103 = ptrtoint ptr %memory_usage to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %memory_usage, align 4
  %sub15.i = sub i32 %104, %add8.i
  store i32 %sub15.i, ptr %memory_usage, align 4
  %drops.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %105 = ptrtoint ptr %drops.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %drops.i, align 8
  %add16.i = add i32 %106, %inc9.i
  store i32 %add16.i, ptr %drops.i, align 8
  %107 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %backlog.i, align 4
  %sub18.i = sub i32 %108, %add.i103
  store i32 %sub18.i, ptr %backlog.i, align 4
  %109 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %qlen, align 8
  %sub20.i = sub i32 %110, %inc9.i
  store i32 %sub20.i, ptr %qlen, align 8
  %sub = sub i32 %inc18, %sub20.i
  %sub31 = sub i32 %73, %sub18.i
  %drop_overlimit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %111 = ptrtoint ptr %drop_overlimit to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %drop_overlimit, align 4
  %add32 = add i32 %112, %sub
  store i32 %add32, ptr %drop_overlimit, align 4
  br i1 %cmp16, label %if.then34, label %fq_codel_drop.exit.if.end36_crit_edge

fq_codel_drop.exit.if.end36_crit_edge:            ; preds = %fq_codel_drop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then34:                                        ; preds = %fq_codel_drop.exit
  call void @__sanitizer_cov_trace_pc() #14
  %drop_overmemory = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %113 = ptrtoint ptr %drop_overmemory to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %drop_overmemory, align 4
  %add35 = add i32 %114, %sub
  store i32 %add35, ptr %drop_overmemory, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %fq_codel_drop.exit.if.end36_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0.lcssa.i, i32 %dec)
  %cmp37 = icmp eq i32 %idx.0.lcssa.i, %dec
  br i1 %cmp37, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %sub39 = add i32 %sub, -1
  %sub40 = sub i32 %sub31, %75
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %sub39, i32 noundef %sub40) #12
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %sub, i32 noundef %sub31) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then38, %if.end10.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ %ret.0110121, %if.end ], [ 2, %if.then38 ], [ 0, %if.end41 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fq_codel_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  %vhdr.i.i.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %new_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %old_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %cparams = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %cstats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %backlogs.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %flows.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %memory_usage.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %mtu.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %interval.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %ecn.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %drop_len.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %drops.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %drop_count.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %ecn_mark.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %ce_threshold.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %ce_threshold_mask.i = getelementptr inbounds %struct.codel_params, ptr %cparams, i32 0, i32 6
  %0 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i.i, i32 0, i32 1
  %ce_threshold_selector.i = getelementptr inbounds %struct.codel_params, ptr %cparams, i32 0, i32 5
  %ce_mark.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %prev.i2.i86 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 36
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  br label %begin

begin:                                            ; preds = %begin.backedge, %entry
  %1 = ptrtoint ptr %new_flows to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %new_flows, align 4
  %cmp.i.not = icmp eq ptr %2, %new_flows
  br i1 %cmp.i.not, label %if.then, label %begin.if.end5_crit_edge

begin.if.end5_crit_edge:                          ; preds = %begin
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %begin
  %3 = ptrtoint ptr %old_flows to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %old_flows, align 4
  %cmp.i74.not = icmp eq ptr %4, %old_flows
  br i1 %cmp.i74.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %begin.if.end5_crit_edge
  %head.0 = phi ptr [ %old_flows, %if.then.if.end5_crit_edge ], [ %new_flows, %begin.if.end5_crit_edge ]
  %5 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.0, align 4
  %deficit = getelementptr i8, ptr %6, i32 8
  %7 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %deficit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %quantum, align 4
  %add = add i32 %10, %8
  %11 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %deficit, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.__list_del_entry.exit.i_crit_edge

if.then6.__list_del_entry.exit.i_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then6.__list_del_entry.exit.i_crit_edge
  %18 = ptrtoint ptr %prev.i2.i86 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i2.i86, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %19, ptr noundef %old_flows) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.begin.backedge_crit_edge

__list_del_entry.exit.i.begin.backedge_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %begin.backedge

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %prev.i2.i86 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %6, ptr %prev.i2.i86, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %old_flows, ptr %6, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %6, ptr %19, align 4
  br label %begin.backedge

if.end9:                                          ; preds = %if.end5
  %cvars = getelementptr i8, ptr %6, i32 12
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -8
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.then.i, label %if.end.i.i77

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %dropping.i = getelementptr i8, ptr %6, i32 20
  %26 = ptrtoint ptr %dropping.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %dropping.i, align 4
  br label %if.then12

if.end.i.i77:                                     ; preds = %if.end9
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %25, align 8
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %add.ptr.i.i, align 4
  store ptr null, ptr %25, align 8
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3
  %30 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cb.i.i.i.i, align 4
  %32 = ptrtoint ptr %backlogs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %backlogs.i.i, align 4
  %34 = ptrtoint ptr %flows.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %flows.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 44
  %arrayidx.i.i = getelementptr i32, ptr %33, i32 %sub.ptr.div.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  %sub.i.i = sub i32 %37, %31
  store i32 %sub.i.i, ptr %arrayidx.i.i, align 4
  %mem_usage.i.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3, i32 12
  %38 = ptrtoint ptr %mem_usage.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mem_usage.i.i, align 4
  %40 = ptrtoint ptr %memory_usage.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %memory_usage.i.i, align 4
  %sub4.i.i = sub i32 %41, %39
  store i32 %sub4.i.i, ptr %memory_usage.i.i, align 4
  %42 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qlen.i.i, align 8
  %dec.i.i = add i32 %43, -1
  store i32 %dec.i.i, ptr %qlen.i.i, align 8
  %44 = load i32, ptr %cb.i.i.i.i, align 4
  %45 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %backlog, align 4
  %sub7.i.i = sub i32 %46, %44
  store i32 %sub7.i.i, ptr %backlog, align 4
  %call.i.i.i76 = call i64 @ktime_get() #12
  %shr.i.i = lshr i64 %call.i.i.i76, 10
  %conv.i.i = trunc i64 %shr.i.i to i32
  %47 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cb.i.i.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data.i.i.i.i, align 4
  %sub.i4.i = sub i32 %conv.i.i, %50
  %ldelay.i.i = getelementptr i8, ptr %6, i32 32
  %51 = ptrtoint ptr %ldelay.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.i4.i, ptr %ldelay.i.i, align 4
  %52 = ptrtoint ptr %cstats to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cstats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %53)
  %cmp.i.i = icmp ugt i32 %48, %53
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end.i.i77.if.end6.i.i_crit_edge, !prof !43

if.end.i.i77.if.end6.i.i_crit_edge:               ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %cstats to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %48, ptr %cstats, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i77.if.end6.i.i_crit_edge
  %55 = ptrtoint ptr %cparams to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cparams, align 4
  %57 = ptrtoint ptr %ldelay.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ldelay.i.i, align 4
  %sub8.i.i = sub i32 %56, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i.i)
  %cmp9.i.i = icmp sgt i32 %sub8.i.i, 0
  br i1 %cmp9.i.i, label %if.end6.i.i.if.then11.i.i_crit_edge, label %lor.lhs.false.i.i

if.end6.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

lor.lhs.false.i.i:                                ; preds = %if.end6.i.i
  %59 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %backlog, align 4
  %61 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mtu.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp10.not.i.i = icmp ugt i32 %60, %62
  br i1 %cmp10.not.i.i, label %if.end13.i.i, label %lor.lhs.false.i.i.if.then11.i.i_crit_edge

lor.lhs.false.i.i.if.then11.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then11.i.i_crit_edge, %if.end6.i.i.if.then11.i.i_crit_edge
  %first_above_time12.i.i = getelementptr i8, ptr %6, i32 24
  %63 = ptrtoint ptr %first_above_time12.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %first_above_time12.i.i, align 4
  br label %codel_should_drop.exit.i

if.end13.i.i:                                     ; preds = %lor.lhs.false.i.i
  %first_above_time14.i.i = getelementptr i8, ptr %6, i32 24
  %64 = ptrtoint ptr %first_above_time14.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %first_above_time14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp15.i.i = icmp eq i32 %65, 0
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.else.i.i

if.then16.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %interval.i.i, align 4
  %add.i.i = add i32 %67, %conv.i.i
  %68 = ptrtoint ptr %first_above_time14.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add.i.i, ptr %first_above_time14.i.i, align 4
  br label %codel_should_drop.exit.i

if.else.i.i:                                      ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub19.i.i = sub i32 %conv.i.i, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19.i.i)
  %cmp20.i.i = icmp sgt i32 %sub19.i.i, 0
  br label %codel_should_drop.exit.i

codel_should_drop.exit.i:                         ; preds = %if.else.i.i, %if.then16.i.i, %if.then11.i.i
  %retval.0.i.i = phi i1 [ false, %if.then11.i.i ], [ false, %if.then16.i.i ], [ %cmp20.i.i, %if.else.i.i ]
  %dropping3.i = getelementptr i8, ptr %6, i32 20
  %69 = ptrtoint ptr %dropping3.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dropping3.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool4.not.i = icmp eq i8 %70, 0
  br i1 %tobool4.not.i, label %if.else40.i, label %if.then5.i

if.then5.i:                                       ; preds = %codel_should_drop.exit.i
  br i1 %retval.0.i.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %dropping3.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %dropping3.i, align 4
  br label %land.lhs.true90.i

if.else.i:                                        ; preds = %if.then5.i
  %drop_next.i = getelementptr i8, ptr %6, i32 28
  %72 = ptrtoint ptr %drop_next.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %drop_next.i, align 4
  %sub.i = sub i32 %conv.i.i, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i78 = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i78, label %land.rhs.lr.ph.i, label %if.else.i.land.lhs.true90.i_crit_edge

if.else.i.land.lhs.true90.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true90.i

land.rhs.lr.ph.i:                                 ; preds = %if.else.i
  %rec_inv_sqrt.i.i = getelementptr i8, ptr %6, i32 22
  %first_above_time14.i49.i = getelementptr i8, ptr %6, i32 24
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end37.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %skb.0154.i = phi ptr [ %25, %land.rhs.lr.ph.i ], [ %99, %if.end37.i.land.rhs.i_crit_edge ]
  %74 = ptrtoint ptr %drop_next.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %drop_next.i, align 4
  %sub13.i = sub i32 %conv.i.i, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub13.i)
  %cmp14.i = icmp sgt i32 %sub13.i, -1
  br i1 %cmp14.i, label %while.body.i, label %land.rhs.i.land.lhs.true90.i_crit_edge

land.rhs.i.land.lhs.true90.i_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true90.i

while.body.i:                                     ; preds = %land.rhs.i
  %76 = ptrtoint ptr %cvars to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cvars, align 4
  %inc.i = add i32 %77, 1
  store i32 %inc.i, ptr %cvars, align 4
  %78 = ptrtoint ptr %rec_inv_sqrt.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %rec_inv_sqrt.i.i, align 2
  %conv.i5.i = zext i16 %79 to i32
  %shl.i.i = shl nuw i32 %conv.i5.i, 16
  %conv1.i.i = zext i32 %shl.i.i to i64
  %mul.i.i = mul nuw i64 %conv1.i.i, %conv1.i.i
  %shr.i6.i = lshr exact i64 %mul.i.i, 32
  %conv4.i.i = zext i32 %inc.i to i64
  %mul6.i.i = mul nuw i64 %shr.i6.i, %conv4.i.i
  %sub.i7.i = sub i64 12884901888, %mul6.i.i
  %shr7.i.i = lshr i64 %sub.i7.i, 2
  %mul9.i.i = mul i64 %shr7.i.i, %conv1.i.i
  %shr10.i.i = lshr i64 %mul9.i.i, 47
  %conv12.i.i = trunc i64 %shr10.i.i to i16
  store i16 %conv12.i.i, ptr %rec_inv_sqrt.i.i, align 2
  %80 = ptrtoint ptr %ecn.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ecn.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool15.not.i = icmp eq i8 %81, 0
  br i1 %tobool15.not.i, label %while.body.i.if.end23.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end23.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %call16.i = call fastcc i32 @INET_ECN_set_ce(ptr noundef nonnull %skb.0154.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i.if.end23.i_crit_edge, label %if.then18.i

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %ecn_mark.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ecn_mark.i, align 4
  %inc19.i = add i32 %83, 1
  store i32 %inc19.i, ptr %ecn_mark.i, align 4
  %84 = ptrtoint ptr %drop_next.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %drop_next.i, align 4
  %86 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %interval.i.i, align 4
  %88 = ptrtoint ptr %rec_inv_sqrt.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %rec_inv_sqrt.i.i, align 2
  %conv.i79 = zext i16 %89 to i32
  %shl.i8.i = shl nuw i32 %conv.i79, 16
  %conv.i.i.i = zext i32 %87 to i64
  %conv1.i.i.i = zext i32 %shl.i8.i to i64
  %mul.i.i.i = mul nuw i64 %conv1.i.i.i, %conv.i.i.i
  %shr.i.i.i = lshr i64 %mul.i.i.i, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %add.i9.i = add i32 %85, %conv2.i.i.i
  store i32 %add.i9.i, ptr %drop_next.i, align 4
  br label %land.lhs.true90.i

if.end23.i:                                       ; preds = %land.lhs.true.i.if.end23.i_crit_edge, %while.body.i.if.end23.i_crit_edge
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0154.i, i32 0, i32 3
  %90 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cb.i.i.i, align 4
  %92 = ptrtoint ptr %drop_len.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %drop_len.i, align 4
  %add.i = add i32 %93, %91
  store i32 %add.i, ptr %drop_len.i, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %skb.0154.i, i32 noundef 0) #12
  %94 = ptrtoint ptr %drops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %drops.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %95, 1
  store i32 %inc.i.i.i.i, ptr %drops.i.i.i.i, align 4
  %96 = ptrtoint ptr %drop_count.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %drop_count.i, align 4
  %inc25.i = add i32 %97, 1
  store i32 %inc25.i, ptr %drop_count.i, align 4
  %98 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i11.i = icmp eq ptr %99, null
  br i1 %tobool.not.i11.i, label %if.end23.i.if.end37.thread.sink.split.i_crit_edge, label %if.end.i39.i

if.end23.i.if.end37.thread.sink.split.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.thread.sink.split.i

if.end.i39.i:                                     ; preds = %if.end23.i
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 8
  %102 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %add.ptr.i.i, align 4
  store ptr null, ptr %99, align 8
  %cb.i.i.i12.i = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3
  %103 = ptrtoint ptr %cb.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cb.i.i.i12.i, align 4
  %105 = ptrtoint ptr %backlogs.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %backlogs.i.i, align 4
  %107 = ptrtoint ptr %flows.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %flows.i.i, align 4
  %sub.ptr.rhs.cast.i16.i = ptrtoint ptr %108 to i32
  %sub.ptr.sub.i17.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i16.i
  %sub.ptr.div.i18.i = sdiv exact i32 %sub.ptr.sub.i17.i, 44
  %arrayidx.i19.i = getelementptr i32, ptr %106, i32 %sub.ptr.div.i18.i
  %109 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i19.i, align 4
  %sub.i20.i = sub i32 %110, %104
  store i32 %sub.i20.i, ptr %arrayidx.i19.i, align 4
  %mem_usage.i21.i = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 12
  %111 = ptrtoint ptr %mem_usage.i21.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mem_usage.i21.i, align 4
  %113 = ptrtoint ptr %memory_usage.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %memory_usage.i.i, align 4
  %sub4.i23.i = sub i32 %114, %112
  store i32 %sub4.i23.i, ptr %memory_usage.i.i, align 4
  %115 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %qlen.i.i, align 8
  %dec.i25.i = add i32 %116, -1
  store i32 %dec.i25.i, ptr %qlen.i.i, align 8
  %117 = load i32, ptr %cb.i.i.i12.i, align 4
  %118 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %backlog, align 4
  %sub7.i27.i = sub i32 %119, %117
  store i32 %sub7.i27.i, ptr %backlog, align 4
  %120 = load i32, ptr %cb.i.i.i12.i, align 4
  %data.i.i.i35.i = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 8
  %121 = ptrtoint ptr %data.i.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %data.i.i.i35.i, align 4
  %sub.i36.i = sub i32 %conv.i.i, %122
  %123 = ptrtoint ptr %ldelay.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %sub.i36.i, ptr %ldelay.i.i, align 4
  %124 = ptrtoint ptr %cstats to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cstats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %125)
  %cmp.i38.i = icmp ugt i32 %120, %125
  br i1 %cmp.i38.i, label %if.then4.i40.i, label %if.end.i39.i.if.end6.i43.i_crit_edge, !prof !43

if.end.i39.i.if.end6.i43.i_crit_edge:             ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i43.i

if.then4.i40.i:                                   ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %cstats to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %120, ptr %cstats, align 4
  br label %if.end6.i43.i

if.end6.i43.i:                                    ; preds = %if.then4.i40.i, %if.end.i39.i.if.end6.i43.i_crit_edge
  %127 = ptrtoint ptr %cparams to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cparams, align 4
  %129 = ptrtoint ptr %ldelay.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ldelay.i.i, align 4
  %sub8.i41.i = sub i32 %128, %130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i41.i)
  %cmp9.i42.i = icmp sgt i32 %sub8.i41.i, 0
  br i1 %cmp9.i42.i, label %if.end6.i43.i.if.end37.thread.sink.split.i_crit_edge, label %lor.lhs.false.i46.i

if.end6.i43.i.if.end37.thread.sink.split.i_crit_edge: ; preds = %if.end6.i43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.thread.sink.split.i

lor.lhs.false.i46.i:                              ; preds = %if.end6.i43.i
  %131 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %backlog, align 4
  %133 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %mtu.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp10.not.i45.i = icmp ugt i32 %132, %134
  br i1 %cmp10.not.i45.i, label %if.end13.i51.i, label %lor.lhs.false.i46.i.if.end37.thread.sink.split.i_crit_edge

lor.lhs.false.i46.i.if.end37.thread.sink.split.i_crit_edge: ; preds = %lor.lhs.false.i46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.thread.sink.split.i

if.end13.i51.i:                                   ; preds = %lor.lhs.false.i46.i
  %135 = ptrtoint ptr %first_above_time14.i49.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %first_above_time14.i49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp15.i50.i = icmp eq i32 %136, 0
  br i1 %cmp15.i50.i, label %if.then16.i54.i, label %codel_should_drop.exit59.i

if.then16.i54.i:                                  ; preds = %if.end13.i51.i
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %interval.i.i, align 4
  %add.i53.i = add i32 %138, %conv.i.i
  br label %if.end37.thread.sink.split.i

codel_should_drop.exit59.i:                       ; preds = %if.end13.i51.i
  %sub19.i55.i = sub i32 %conv.i.i, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19.i55.i)
  %cmp20.i56.i = icmp sgt i32 %sub19.i55.i, 0
  br i1 %cmp20.i56.i, label %if.end37.i, label %codel_should_drop.exit59.i.if.end37.thread.i_crit_edge

codel_should_drop.exit59.i.if.end37.thread.i_crit_edge: ; preds = %codel_should_drop.exit59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.thread.i

if.end37.thread.sink.split.i:                     ; preds = %if.then16.i54.i, %lor.lhs.false.i46.i.if.end37.thread.sink.split.i_crit_edge, %if.end6.i43.i.if.end37.thread.sink.split.i_crit_edge, %if.end23.i.if.end37.thread.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %add.i53.i, %if.then16.i54.i ], [ 0, %if.end23.i.if.end37.thread.sink.split.i_crit_edge ], [ 0, %if.end6.i43.i.if.end37.thread.sink.split.i_crit_edge ], [ 0, %lor.lhs.false.i46.i.if.end37.thread.sink.split.i_crit_edge ]
  %139 = ptrtoint ptr %first_above_time14.i49.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %.sink.i, ptr %first_above_time14.i49.i, align 4
  br label %if.end37.thread.i

if.end37.thread.i:                                ; preds = %if.end37.thread.sink.split.i, %codel_should_drop.exit59.i.if.end37.thread.i_crit_edge
  %140 = ptrtoint ptr %dropping3.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %dropping3.i, align 4
  br label %end.i

if.end37.i:                                       ; preds = %codel_should_drop.exit59.i
  %141 = ptrtoint ptr %drop_next.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %drop_next.i, align 4
  %143 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %interval.i.i, align 4
  %145 = ptrtoint ptr %rec_inv_sqrt.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %rec_inv_sqrt.i.i, align 2
  %conv34.i = zext i16 %146 to i32
  %shl.i60.i = shl nuw i32 %conv34.i, 16
  %conv.i.i61.i = zext i32 %144 to i64
  %conv1.i.i62.i = zext i32 %shl.i60.i to i64
  %mul.i.i63.i = mul nuw i64 %conv1.i.i62.i, %conv.i.i61.i
  %shr.i.i64.i = lshr i64 %mul.i.i63.i, 32
  %conv2.i.i65.i = trunc i64 %shr.i.i64.i to i32
  %add.i66.i = add i32 %142, %conv2.i.i65.i
  store i32 %add.i66.i, ptr %drop_next.i, align 4
  %147 = ptrtoint ptr %dropping3.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %.pr.i = load i8, ptr %dropping3.i, align 4
  %tobool11.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool11.not.i, label %if.end37.i.land.lhs.true90.i_crit_edge, label %if.end37.i.land.rhs.i_crit_edge

if.end37.i.land.rhs.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end37.i.land.lhs.true90.i_crit_edge:           ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true90.i

if.else40.i:                                      ; preds = %codel_should_drop.exit.i
  br i1 %retval.0.i.i, label %if.then42.i, label %if.else40.i.land.lhs.true90.i_crit_edge

if.else40.i.land.lhs.true90.i_crit_edge:          ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true90.i

if.then42.i:                                      ; preds = %if.else40.i
  %148 = ptrtoint ptr %ecn.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %ecn.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool44.not.i = icmp eq i8 %149, 0
  br i1 %tobool44.not.i, label %if.then42.i.if.else52.i_crit_edge, label %land.lhs.true46.i

if.then42.i.if.else52.i_crit_edge:                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else52.i

land.lhs.true46.i:                                ; preds = %if.then42.i
  %call47.i = call fastcc i32 @INET_ECN_set_ce(ptr noundef nonnull %25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %land.lhs.true46.i.if.else52.i_crit_edge, label %if.then49.i

land.lhs.true46.i.if.else52.i_crit_edge:          ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else52.i

if.then49.i:                                      ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %ecn_mark.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ecn_mark.i, align 4
  %inc51.i = add i32 %151, 1
  store i32 %inc51.i, ptr %ecn_mark.i, align 4
  br label %if.end61.i

if.else52.i:                                      ; preds = %land.lhs.true46.i.if.else52.i_crit_edge, %if.then42.i.if.else52.i_crit_edge
  %152 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cb.i.i.i.i, align 4
  %154 = ptrtoint ptr %drop_len.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %drop_len.i, align 4
  %add55.i = add i32 %155, %153
  store i32 %add55.i, ptr %drop_len.i, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %25, i32 noundef 0) #12
  %156 = ptrtoint ptr %drops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %drops.i.i.i.i, align 4
  %inc.i.i.i69.i = add i32 %157, 1
  store i32 %inc.i.i.i69.i, ptr %drops.i.i.i.i, align 4
  %158 = ptrtoint ptr %drop_count.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %drop_count.i, align 4
  %inc57.i = add i32 %159, 1
  store i32 %inc57.i, ptr %drop_count.i, align 4
  %160 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i71.i = icmp eq ptr %161, null
  br i1 %tobool.not.i71.i, label %if.then.i93.i, label %if.end.i99.i

if.then.i93.i:                                    ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #14
  %first_above_time.i92.i = getelementptr i8, ptr %6, i32 24
  %162 = ptrtoint ptr %first_above_time.i92.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %first_above_time.i92.i, align 4
  br label %if.end61.i

if.end.i99.i:                                     ; preds = %if.else52.i
  %163 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %161, align 8
  %165 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %164, ptr %add.ptr.i.i, align 4
  store ptr null, ptr %161, align 8
  %cb.i.i.i72.i = getelementptr inbounds %struct.sk_buff, ptr %161, i32 0, i32 3
  %166 = ptrtoint ptr %cb.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %cb.i.i.i72.i, align 4
  %168 = ptrtoint ptr %backlogs.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %backlogs.i.i, align 4
  %170 = ptrtoint ptr %flows.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %flows.i.i, align 4
  %sub.ptr.rhs.cast.i76.i = ptrtoint ptr %171 to i32
  %sub.ptr.sub.i77.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i76.i
  %sub.ptr.div.i78.i = sdiv exact i32 %sub.ptr.sub.i77.i, 44
  %arrayidx.i79.i = getelementptr i32, ptr %169, i32 %sub.ptr.div.i78.i
  %172 = ptrtoint ptr %arrayidx.i79.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx.i79.i, align 4
  %sub.i80.i = sub i32 %173, %167
  store i32 %sub.i80.i, ptr %arrayidx.i79.i, align 4
  %mem_usage.i81.i = getelementptr inbounds %struct.sk_buff, ptr %161, i32 0, i32 3, i32 12
  %174 = ptrtoint ptr %mem_usage.i81.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %mem_usage.i81.i, align 4
  %176 = ptrtoint ptr %memory_usage.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %memory_usage.i.i, align 4
  %sub4.i83.i = sub i32 %177, %175
  store i32 %sub4.i83.i, ptr %memory_usage.i.i, align 4
  %178 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %qlen.i.i, align 8
  %dec.i85.i = add i32 %179, -1
  store i32 %dec.i85.i, ptr %qlen.i.i, align 8
  %180 = load i32, ptr %cb.i.i.i72.i, align 4
  %181 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %backlog, align 4
  %sub7.i87.i = sub i32 %182, %180
  store i32 %sub7.i87.i, ptr %backlog, align 4
  %183 = load i32, ptr %cb.i.i.i72.i, align 4
  %data.i.i.i95.i = getelementptr inbounds %struct.sk_buff, ptr %161, i32 0, i32 3, i32 8
  %184 = ptrtoint ptr %data.i.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %data.i.i.i95.i, align 4
  %sub.i96.i = sub i32 %conv.i.i, %185
  %186 = ptrtoint ptr %ldelay.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %sub.i96.i, ptr %ldelay.i.i, align 4
  %187 = ptrtoint ptr %cstats to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %cstats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %188)
  %cmp.i98.i = icmp ugt i32 %183, %188
  br i1 %cmp.i98.i, label %if.then4.i100.i, label %if.end.i99.i.if.end6.i103.i_crit_edge, !prof !43

if.end.i99.i.if.end6.i103.i_crit_edge:            ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i103.i

if.then4.i100.i:                                  ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #14
  %189 = ptrtoint ptr %cstats to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %183, ptr %cstats, align 4
  br label %if.end6.i103.i

if.end6.i103.i:                                   ; preds = %if.then4.i100.i, %if.end.i99.i.if.end6.i103.i_crit_edge
  %190 = ptrtoint ptr %cparams to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %cparams, align 4
  %192 = ptrtoint ptr %ldelay.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %ldelay.i.i, align 4
  %sub8.i101.i = sub i32 %191, %193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i101.i)
  %cmp9.i102.i = icmp sgt i32 %sub8.i101.i, 0
  br i1 %cmp9.i102.i, label %if.end6.i103.i.if.then11.i108.i_crit_edge, label %lor.lhs.false.i106.i

if.end6.i103.i.if.then11.i108.i_crit_edge:        ; preds = %if.end6.i103.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i108.i

lor.lhs.false.i106.i:                             ; preds = %if.end6.i103.i
  %194 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %backlog, align 4
  %196 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %mtu.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %195, i32 %197)
  %cmp10.not.i105.i = icmp ugt i32 %195, %197
  br i1 %cmp10.not.i105.i, label %if.end13.i111.i, label %lor.lhs.false.i106.i.if.then11.i108.i_crit_edge

lor.lhs.false.i106.i.if.then11.i108.i_crit_edge:  ; preds = %lor.lhs.false.i106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i108.i

if.then11.i108.i:                                 ; preds = %lor.lhs.false.i106.i.if.then11.i108.i_crit_edge, %if.end6.i103.i.if.then11.i108.i_crit_edge
  %first_above_time12.i107.i = getelementptr i8, ptr %6, i32 24
  %198 = ptrtoint ptr %first_above_time12.i107.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %first_above_time12.i107.i, align 4
  br label %if.end61.i

if.end13.i111.i:                                  ; preds = %lor.lhs.false.i106.i
  %first_above_time14.i109.i = getelementptr i8, ptr %6, i32 24
  %199 = ptrtoint ptr %first_above_time14.i109.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %first_above_time14.i109.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %cmp15.i110.i = icmp eq i32 %200, 0
  br i1 %cmp15.i110.i, label %if.then16.i114.i, label %if.end13.i111.i.if.end61.i_crit_edge

if.end13.i111.i.if.end61.i_crit_edge:             ; preds = %if.end13.i111.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61.i

if.then16.i114.i:                                 ; preds = %if.end13.i111.i
  call void @__sanitizer_cov_trace_pc() #14
  %201 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %interval.i.i, align 4
  %add.i113.i = add i32 %202, %conv.i.i
  %203 = ptrtoint ptr %first_above_time14.i109.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %add.i113.i, ptr %first_above_time14.i109.i, align 4
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then16.i114.i, %if.end13.i111.i.if.end61.i_crit_edge, %if.then11.i108.i, %if.then.i93.i, %if.then49.i
  %skb.1.i = phi ptr [ %25, %if.then49.i ], [ null, %if.then.i93.i ], [ %161, %if.then11.i108.i ], [ %161, %if.then16.i114.i ], [ %161, %if.end13.i111.i.if.end61.i_crit_edge ]
  %204 = ptrtoint ptr %dropping3.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 1, ptr %dropping3.i, align 4
  %205 = ptrtoint ptr %cvars to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %cvars, align 4
  %lastcount.i = getelementptr i8, ptr %6, i32 16
  %207 = ptrtoint ptr %lastcount.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %lastcount.i, align 4
  %sub64.i = sub i32 %206, %208
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub64.i)
  %cmp65.i = icmp ugt i32 %sub64.i, 1
  br i1 %cmp65.i, label %land.lhs.true67.i, label %if.end61.i.if.else76.i_crit_edge

if.end61.i.if.else76.i_crit_edge:                 ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else76.i

land.lhs.true67.i:                                ; preds = %if.end61.i
  %209 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %interval.i.i, align 4
  %mul.i = shl i32 %210, 4
  %drop_next69.i = getelementptr i8, ptr %6, i32 28
  %211 = ptrtoint ptr %drop_next69.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %drop_next69.i, align 4
  %sub70.neg.i = sub i32 %212, %conv.i.i
  %sub71.i = add i32 %sub70.neg.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub71.i)
  %cmp72.i = icmp sgt i32 %sub71.i, 0
  br i1 %cmp72.i, label %if.then74.i, label %land.lhs.true67.i.if.else76.i_crit_edge

land.lhs.true67.i.if.else76.i_crit_edge:          ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else76.i

if.then74.i:                                      ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #14
  %213 = ptrtoint ptr %cvars to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %sub64.i, ptr %cvars, align 4
  %rec_inv_sqrt.i120.i = getelementptr i8, ptr %6, i32 22
  %214 = ptrtoint ptr %rec_inv_sqrt.i120.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %rec_inv_sqrt.i120.i, align 2
  %conv.i121.i = zext i16 %215 to i32
  %shl.i122.i = shl nuw i32 %conv.i121.i, 16
  %conv1.i123.i = zext i32 %shl.i122.i to i64
  %mul.i124.i = mul nuw i64 %conv1.i123.i, %conv1.i123.i
  %shr.i125.i = lshr exact i64 %mul.i124.i, 32
  %conv4.i126.i = zext i32 %sub64.i to i64
  %mul6.i127.i = mul nuw i64 %shr.i125.i, %conv4.i126.i
  %sub.i128.i = sub i64 12884901888, %mul6.i127.i
  %shr7.i129.i = lshr i64 %sub.i128.i, 2
  %mul9.i130.i = mul i64 %shr7.i129.i, %conv1.i123.i
  %shr10.i131.i = lshr i64 %mul9.i130.i, 47
  %conv12.i132.i = trunc i64 %shr10.i131.i to i16
  store i16 %conv12.i132.i, ptr %rec_inv_sqrt.i120.i, align 2
  br label %if.end79.i

if.else76.i:                                      ; preds = %land.lhs.true67.i.if.else76.i_crit_edge, %if.end61.i.if.else76.i_crit_edge
  %216 = ptrtoint ptr %cvars to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 1, ptr %cvars, align 4
  %rec_inv_sqrt78.i = getelementptr i8, ptr %6, i32 22
  %217 = ptrtoint ptr %rec_inv_sqrt78.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 -1, ptr %rec_inv_sqrt78.i, align 2
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.else76.i, %if.then74.i
  %218 = ptrtoint ptr %cvars to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %cvars, align 4
  %220 = ptrtoint ptr %lastcount.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %lastcount.i, align 4
  %221 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %interval.i.i, align 4
  %rec_inv_sqrt83.i = getelementptr i8, ptr %6, i32 22
  %223 = ptrtoint ptr %rec_inv_sqrt83.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %rec_inv_sqrt83.i, align 2
  %conv84.i = zext i16 %224 to i32
  %shl.i133.i = shl nuw i32 %conv84.i, 16
  %conv.i.i134.i = zext i32 %222 to i64
  %conv1.i.i135.i = zext i32 %shl.i133.i to i64
  %mul.i.i136.i = mul nuw i64 %conv1.i.i135.i, %conv.i.i134.i
  %shr.i.i137.i = lshr i64 %mul.i.i136.i, 32
  %conv2.i.i138.i = trunc i64 %shr.i.i137.i to i32
  %add.i139.i = add i32 %conv2.i.i138.i, %conv.i.i
  %drop_next86.i = getelementptr i8, ptr %6, i32 28
  %225 = ptrtoint ptr %drop_next86.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %add.i139.i, ptr %drop_next86.i, align 4
  br label %end.i

end.i:                                            ; preds = %if.end79.i, %if.end37.thread.i
  %skb.2.i = phi ptr [ %skb.1.i, %if.end79.i ], [ %99, %if.end37.thread.i ]
  %tobool89.not.i = icmp eq ptr %skb.2.i, null
  br i1 %tobool89.not.i, label %end.i.if.then12_crit_edge, label %end.i.land.lhs.true90.i_crit_edge

end.i.land.lhs.true90.i_crit_edge:                ; preds = %end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true90.i

end.i.if.then12_crit_edge:                        ; preds = %end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

land.lhs.true90.i:                                ; preds = %end.i.land.lhs.true90.i_crit_edge, %if.else40.i.land.lhs.true90.i_crit_edge, %if.end37.i.land.lhs.true90.i_crit_edge, %if.then18.i, %land.rhs.i.land.lhs.true90.i_crit_edge, %if.else.i.land.lhs.true90.i_crit_edge, %if.then7.i
  %skb.2148.i = phi ptr [ %skb.2.i, %end.i.land.lhs.true90.i_crit_edge ], [ %25, %if.else.i.land.lhs.true90.i_crit_edge ], [ %25, %if.then7.i ], [ %25, %if.else40.i.land.lhs.true90.i_crit_edge ], [ %skb.0154.i, %if.then18.i ], [ %skb.0154.i, %land.rhs.i.land.lhs.true90.i_crit_edge ], [ %99, %if.end37.i.land.lhs.true90.i_crit_edge ]
  %226 = ptrtoint ptr %ldelay.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %ldelay.i.i, align 4
  %228 = ptrtoint ptr %ce_threshold.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %ce_threshold.i, align 4
  %sub91.i = sub i32 %227, %229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub91.i)
  %cmp92.i = icmp sgt i32 %sub91.i, 0
  br i1 %cmp92.i, label %if.then94.i, label %land.lhs.true90.i.if.end23_crit_edge

land.lhs.true90.i.if.end23_crit_edge:             ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then94.i:                                      ; preds = %land.lhs.true90.i
  %230 = ptrtoint ptr %ce_threshold_mask.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %ce_threshold_mask.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool95.not.i = icmp eq i8 %231, 0
  br i1 %tobool95.not.i, label %if.then94.i.land.lhs.true113.i_crit_edge, label %if.then96.i

if.then94.i.land.lhs.true113.i_crit_edge:         ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true113.i

if.then96.i:                                      ; preds = %if.then94.i
  %protocol.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 15, i32 0, i32 18
  %232 = ptrtoint ptr %protocol.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %protocol.i.i.i.i, align 8
  %mac_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 8
  %234 = ptrtoint ptr %mac_len.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %mac_len.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %235 to i32
  %236 = zext i16 %233 to i64
  call void @__sanitizer_cov_trace_switch(i64 %236, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %233, label %if.then96.i.skb_protocol.exit.i.i_crit_edge [
    i16 -30552, label %if.then96.i.if.then.i.i.i.i.i_crit_edge
    i16 -32512, label %if.then96.i.if.then.i.i.i.i.i_crit_edge178
  ]

if.then96.i.if.then.i.i.i.i.i_crit_edge178:       ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i.i

if.then96.i.if.then.i.i.i.i.i_crit_edge:          ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i.i

if.then96.i.skb_protocol.exit.i.i_crit_edge:      ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_protocol.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then96.i.if.then.i.i.i.i.i_crit_edge, %if.then96.i.if.then.i.i.i.i.i_crit_edge178
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %235)
  %tobool.not.i.i.i.i.i = icmp eq i16 %235, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end26.i.i.i.i.i_crit_edge, label %if.then1.i.i.i.i.i

if.then.i.i.i.i.i.if.end26.i.i.i.i.i_crit_edge:   ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i.i.i.i

if.then1.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %235)
  %cmp.i.i.i.i.i = icmp ult i16 %235, 4
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.end25.i.i.i.i.i, !prof !43

do.end.i.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 598, i32 noundef 9, ptr noundef null) #12
  br label %if.end23

if.end25.i.i.i.i.i:                               ; preds = %if.then1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i, -4
  br label %if.end26.i.i.i.i.i

if.end26.i.i.i.i.i:                               ; preds = %if.end25.i.i.i.i.i, %if.then.i.i.i.i.i.if.end26.i.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.end25.i.i.i.i.i ], [ 14, %if.then.i.i.i.i.i.if.end26.i.i.i.i.i_crit_edge ]
  %len.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 6
  %data_len.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 7
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 19
  br label %do.body27.i.i.i.i.i

do.body27.i.i.i.i.i:                              ; preds = %do.body27.backedge.i.i.i.i.i, %if.end26.i.i.i.i.i
  %vlan_depth.1.i.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i.i, %if.end26.i.i.i.i.i ], [ %add.i.i.i.i.i, %do.body27.backedge.i.i.i.i.i ]
  %parse_depth.0.i.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i.i ], [ %dec.i.i.i.i.i, %do.body27.backedge.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i) #12
  %237 = ptrtoint ptr %vhdr.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 -1, ptr %vhdr.i.i.i.i.i, align 2, !annotation !42
  %238 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 -1, ptr %0, align 2, !annotation !42
  %239 = ptrtoint ptr %len.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %len.i.i.i.i.i.i.i, align 4
  %241 = ptrtoint ptr %data_len.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %data_len.i.i.i.i.i.i.i, align 8
  %243 = add i32 %vlan_depth.1.i.i.i.i.i, %242
  %sub.i1.i.i.i.i.i.i = sub i32 %240, %243
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.i.i, !prof !45

if.then.i.i.i.i.i.i.i:                            ; preds = %do.body27.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %244 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %245, i32 %vlan_depth.1.i.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i.i

lor.lhs.false.i.i.i.i.i.i.i:                      ; preds = %do.body27.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb.2148.i, i32 noundef %vlan_depth.1.i.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i.i, !prof !43
  br label %skb_header_pointer.exit.i.i.i.i.i

skb_header_pointer.exit.i.i.i.i.i:                ; preds = %lor.lhs.false.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i.i, null
  %dec.i.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i.i)
  %tobool30.not.i.i.i.i.i = icmp eq i32 %dec.i.i.i.i.i, 0
  %246 = select i1 %tobool29.not.i.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i.i, !prof !43
  br i1 %246, label %cleanup.thread.i.i.i.i.i, label %do.cond42.i.i.i.i.i, !prof !43

cleanup.thread.i.i.i.i.i:                         ; preds = %skb_header_pointer.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i) #12
  br label %codel_dequeue.exit

do.cond42.i.i.i.i.i:                              ; preds = %skb_header_pointer.exit.i.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i.i, i32 0, i32 1
  %247 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i) #12
  %249 = zext i16 %248 to i64
  call void @__sanitizer_cov_trace_switch(i64 %249, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %248, label %do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge179
  ]

do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge179: ; preds = %do.cond42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i.i.i

do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i.i.i

do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_protocol.exit.i.i

do.body27.backedge.i.i.i.i.i:                     ; preds = %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge179
  %add.i.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i.i, 4
  br label %do.body27.i.i.i.i.i

skb_protocol.exit.i.i:                            ; preds = %do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge, %if.then96.i.skb_protocol.exit.i.i_crit_edge
  %retval.2.i.i.i.i.i = phi i16 [ %233, %if.then96.i.skb_protocol.exit.i.i_crit_edge ], [ %248, %do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge ]
  %250 = zext i16 %retval.2.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %250, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %retval.2.i.i.i.i.i, label %skb_protocol.exit.i.i.codel_dequeue.exit_crit_edge [
    i16 2048, label %sw.bb.i.i
    i16 -31011, label %sw.bb5.i.i
  ]

skb_protocol.exit.i.i.codel_dequeue.exit_crit_edge: ; preds = %skb_protocol.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %codel_dequeue.exit

sw.bb.i.i:                                        ; preds = %skb_protocol.exit.i.i
  %head.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 18
  %251 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %head.i.i.i.i.i, align 8
  %network_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 15, i32 0, i32 20
  %253 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i.i17.i.i = zext i16 %254 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %252, i32 %conv.i.i.i17.i.i
  %data.i.i.i140.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 19
  %255 = ptrtoint ptr %data.i.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %data.i.i.i140.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %256 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %add.i.i.i = add i32 %sub.ptr.sub.i.i.i.i, 20
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 6
  %257 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %len.i.i.i.i.i, align 4
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 7
  %259 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %sub.i.i.i18.i.i = sub i32 %258, %260
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %sub.i.i.i18.i.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %add.i.i.i, %sub.i.i.i18.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %sw.bb.i.i.if.end.i142.i_crit_edge, !prof !43

sw.bb.i.i.if.end.i142.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i142.i

if.end.i.i.i.i:                                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %258, i32 %add.i.i.i)
  %cmp3.i.i.i.i = icmp ult i32 %258, %add.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.end.i.i.i.i.codel_dequeue.exit_crit_edge, label %pskb_network_may_pull.exit.i.i, !prof !43

if.end.i.i.i.i.codel_dequeue.exit_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %codel_dequeue.exit

pskb_network_may_pull.exit.i.i:                   ; preds = %if.end.i.i.i.i
  %sub.i.i.i.i = sub i32 %add.i.i.i, %sub.i.i.i18.i.i
  %call13.i.i.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb.2148.i, i32 noundef %sub.i.i.i.i) #12
  %cmp14.i.i.not.i.i = icmp eq ptr %call13.i.i.i.i, null
  br i1 %cmp14.i.i.not.i.i, label %pskb_network_may_pull.exit.i.i.codel_dequeue.exit_crit_edge, label %pskb_network_may_pull.exit.i.i.if.end.i142.i_crit_edge

pskb_network_may_pull.exit.i.i.if.end.i142.i_crit_edge: ; preds = %pskb_network_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i142.i

pskb_network_may_pull.exit.i.i.codel_dequeue.exit_crit_edge: ; preds = %pskb_network_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %codel_dequeue.exit

if.end.i142.i:                                    ; preds = %pskb_network_may_pull.exit.i.i.if.end.i142.i_crit_edge, %sw.bb.i.i.if.end.i142.i_crit_edge
  %261 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %head.i.i.i.i.i, align 8
  %263 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %264 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %262, i32 %conv.i.i.i.i
  %tos.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %265 = ptrtoint ptr %tos.i.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %tos.i.i.i, align 1
  %conv4.i141.i = zext i8 %266 to i32
  br label %land.rhs100.i

sw.bb5.i.i:                                       ; preds = %skb_protocol.exit.i.i
  %head.i.i.i19.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 18
  %267 = ptrtoint ptr %head.i.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %head.i.i.i19.i.i, align 8
  %network_header.i.i.i20.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 15, i32 0, i32 20
  %269 = ptrtoint ptr %network_header.i.i.i20.i.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %network_header.i.i.i20.i.i, align 4
  %conv.i.i.i21.i.i = zext i16 %270 to i32
  %add.ptr.i.i.i22.i.i = getelementptr i8, ptr %268, i32 %conv.i.i.i21.i.i
  %data.i.i23.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 19
  %271 = ptrtoint ptr %data.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %data.i.i23.i.i, align 4
  %sub.ptr.lhs.cast.i.i24.i.i = ptrtoint ptr %add.ptr.i.i.i22.i.i to i32
  %sub.ptr.rhs.cast.i.i25.i.i = ptrtoint ptr %272 to i32
  %sub.ptr.sub.i.i26.i.i = sub i32 %sub.ptr.lhs.cast.i.i24.i.i, %sub.ptr.rhs.cast.i.i25.i.i
  %add.i27.i.i = add i32 %sub.ptr.sub.i.i26.i.i, 40
  %len.i.i.i28.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 6
  %273 = ptrtoint ptr %len.i.i.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %len.i.i.i28.i.i, align 4
  %data_len.i.i.i29.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 7
  %275 = ptrtoint ptr %data_len.i.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %data_len.i.i.i29.i.i, align 8
  %sub.i.i.i30.i.i = sub i32 %274, %276
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i27.i.i, i32 %sub.i.i.i30.i.i)
  %cmp.not.i.i31.i.i = icmp ugt i32 %add.i27.i.i, %sub.i.i.i30.i.i
  br i1 %cmp.not.i.i31.i.i, label %if.end.i.i33.i.i, label %sw.bb5.i.i.if.end9.i.i_crit_edge, !prof !43

sw.bb5.i.i.if.end9.i.i_crit_edge:                 ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

if.end.i.i33.i.i:                                 ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %274, i32 %add.i27.i.i)
  %cmp3.i.i32.i.i = icmp ult i32 %274, %add.i27.i.i
  br i1 %cmp3.i.i32.i.i, label %if.end.i.i33.i.i.codel_dequeue.exit_crit_edge, label %pskb_network_may_pull.exit40.i.i, !prof !43

if.end.i.i33.i.i.codel_dequeue.exit_crit_edge:    ; preds = %if.end.i.i33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %codel_dequeue.exit

pskb_network_may_pull.exit40.i.i:                 ; preds = %if.end.i.i33.i.i
  %sub.i.i34.i.i = sub i32 %add.i27.i.i, %sub.i.i.i30.i.i
  %call13.i.i35.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb.2148.i, i32 noundef %sub.i.i34.i.i) #12
  %cmp14.i.i36.not.i.i = icmp eq ptr %call13.i.i35.i.i, null
  br i1 %cmp14.i.i36.not.i.i, label %pskb_network_may_pull.exit40.i.i.codel_dequeue.exit_crit_edge, label %pskb_network_may_pull.exit40.i.i.if.end9.i.i_crit_edge

pskb_network_may_pull.exit40.i.i.if.end9.i.i_crit_edge: ; preds = %pskb_network_may_pull.exit40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

pskb_network_may_pull.exit40.i.i.codel_dequeue.exit_crit_edge: ; preds = %pskb_network_may_pull.exit40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %codel_dequeue.exit

if.end9.i.i:                                      ; preds = %pskb_network_may_pull.exit40.i.i.if.end9.i.i_crit_edge, %sw.bb5.i.i.if.end9.i.i_crit_edge
  %277 = ptrtoint ptr %head.i.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %head.i.i.i19.i.i, align 8
  %279 = ptrtoint ptr %network_header.i.i.i20.i.i to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %network_header.i.i.i20.i.i, align 4
  %conv.i.i43.i.i = zext i16 %280 to i32
  %add.ptr.i.i44.i.i = getelementptr i8, ptr %278, i32 %conv.i.i43.i.i
  %281 = ptrtoint ptr %add.ptr.i.i44.i.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %add.ptr.i.i44.i.i, align 2
  %283 = lshr i16 %282, 4
  %284 = and i16 %283, 255
  %conv12.i143.i = zext i16 %284 to i32
  br label %land.rhs100.i

land.rhs100.i:                                    ; preds = %if.end9.i.i, %if.end.i142.i
  %retval.0.i144.i = phi i32 [ %conv12.i143.i, %if.end9.i.i ], [ %conv4.i141.i, %if.end.i142.i ]
  %285 = ptrtoint ptr %ce_threshold_mask.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %ce_threshold_mask.i, align 2
  %conv104.i = zext i8 %286 to i32
  %and.i = and i32 %retval.0.i144.i, %conv104.i
  %287 = ptrtoint ptr %ce_threshold_selector.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %ce_threshold_selector.i, align 1
  %conv105.i = zext i8 %288 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv105.i)
  %cmp106.i = icmp eq i32 %and.i, %conv105.i
  br i1 %cmp106.i, label %land.rhs100.i.land.lhs.true113.i_crit_edge, label %land.rhs100.i.codel_dequeue.exit_crit_edge

land.rhs100.i.codel_dequeue.exit_crit_edge:       ; preds = %land.rhs100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %codel_dequeue.exit

land.rhs100.i.land.lhs.true113.i_crit_edge:       ; preds = %land.rhs100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true113.i

land.lhs.true113.i:                               ; preds = %land.rhs100.i.land.lhs.true113.i_crit_edge, %if.then94.i.land.lhs.true113.i_crit_edge
  %call114.i = call fastcc i32 @INET_ECN_set_ce(ptr noundef nonnull %skb.2148.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %tobool115.not.i = icmp eq i32 %call114.i, 0
  br i1 %tobool115.not.i, label %land.lhs.true113.i.codel_dequeue.exit_crit_edge, label %if.then116.i

land.lhs.true113.i.codel_dequeue.exit_crit_edge:  ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %codel_dequeue.exit

if.then116.i:                                     ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #14
  %289 = ptrtoint ptr %ce_mark.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %ce_mark.i, align 4
  %inc117.i = add i32 %290, 1
  store i32 %inc117.i, ptr %ce_mark.i, align 4
  br label %codel_dequeue.exit

codel_dequeue.exit:                               ; preds = %if.then116.i, %land.lhs.true113.i.codel_dequeue.exit_crit_edge, %land.rhs100.i.codel_dequeue.exit_crit_edge, %pskb_network_may_pull.exit40.i.i.codel_dequeue.exit_crit_edge, %if.end.i.i33.i.i.codel_dequeue.exit_crit_edge, %pskb_network_may_pull.exit.i.i.codel_dequeue.exit_crit_edge, %if.end.i.i.i.i.codel_dequeue.exit_crit_edge, %skb_protocol.exit.i.i.codel_dequeue.exit_crit_edge, %cleanup.thread.i.i.i.i.i
  %tobool11.not = icmp eq ptr %skb.2148.i, null
  br i1 %tobool11.not, label %codel_dequeue.exit.if.then12_crit_edge, label %codel_dequeue.exit.if.end23_crit_edge

codel_dequeue.exit.if.end23_crit_edge:            ; preds = %codel_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

codel_dequeue.exit.if.then12_crit_edge:           ; preds = %codel_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.then12:                                        ; preds = %codel_dequeue.exit.if.then12_crit_edge, %end.i.if.then12_crit_edge, %if.then.i
  %cmp14 = icmp eq ptr %head.0, %new_flows
  br i1 %cmp14, label %land.lhs.true, label %if.then12.if.else_crit_edge

if.then12.if.else_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.then12
  %291 = ptrtoint ptr %old_flows to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load volatile ptr, ptr %old_flows, align 4
  %cmp.i80.not = icmp eq ptr %292, %old_flows
  br i1 %cmp.i80.not, label %land.lhs.true.if.else_crit_edge, label %if.then18

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then18:                                        ; preds = %land.lhs.true
  %call.i.i82 = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #12
  br i1 %call.i.i82, label %if.end.i.i85, label %if.then18.__list_del_entry.exit.i88_crit_edge

if.then18.__list_del_entry.exit.i88_crit_edge:    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i88

if.end.i.i85:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i83 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %293 = ptrtoint ptr %prev.i.i83 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %prev.i.i83, align 4
  %295 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %6, align 4
  %prev1.i.i.i84 = getelementptr inbounds %struct.list_head, ptr %296, i32 0, i32 1
  %297 = ptrtoint ptr %prev1.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %294, ptr %prev1.i.i.i84, align 4
  %298 = ptrtoint ptr %294 to i32
  call void @__asan_store4_noabort(i32 %298)
  store volatile ptr %296, ptr %294, align 4
  br label %__list_del_entry.exit.i88

__list_del_entry.exit.i88:                        ; preds = %if.end.i.i85, %if.then18.__list_del_entry.exit.i88_crit_edge
  %299 = ptrtoint ptr %prev.i2.i86 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %prev.i2.i86, align 4
  %call.i.i.i87 = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %300, ptr noundef %old_flows) #12
  br i1 %call.i.i.i87, label %if.end.i.i.i90, label %__list_del_entry.exit.i88.begin.backedge_crit_edge

__list_del_entry.exit.i88.begin.backedge_crit_edge: ; preds = %__list_del_entry.exit.i88
  call void @__sanitizer_cov_trace_pc() #14
  br label %begin.backedge

if.end.i.i.i90:                                   ; preds = %__list_del_entry.exit.i88
  call void @__sanitizer_cov_trace_pc() #14
  %301 = ptrtoint ptr %prev.i2.i86 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %6, ptr %prev.i2.i86, align 4
  %302 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %old_flows, ptr %6, align 4
  %prev3.i.i.i89 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %303 = ptrtoint ptr %prev3.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %300, ptr %prev3.i.i.i89, align 4
  %304 = ptrtoint ptr %300 to i32
  call void @__asan_store4_noabort(i32 %304)
  store volatile ptr %6, ptr %300, align 4
  br label %begin.backedge

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then12.if.else_crit_edge
  %call.i.i92 = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #12
  br i1 %call.i.i92, label %if.end.i.i95, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i95:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i93 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %305 = ptrtoint ptr %prev.i.i93 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %prev.i.i93, align 4
  %307 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %6, align 4
  %prev1.i.i.i94 = getelementptr inbounds %struct.list_head, ptr %308, i32 0, i32 1
  %309 = ptrtoint ptr %prev1.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %306, ptr %prev1.i.i.i94, align 4
  %310 = ptrtoint ptr %306 to i32
  call void @__asan_store4_noabort(i32 %310)
  store volatile ptr %308, ptr %306, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i95, %if.else.list_del_init.exit_crit_edge
  %311 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %311)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %312 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %6, ptr %prev.i3.i, align 4
  br label %begin.backedge

begin.backedge:                                   ; preds = %list_del_init.exit, %if.end.i.i.i90, %__list_del_entry.exit.i88.begin.backedge_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.begin.backedge_crit_edge
  br label %begin

if.end23:                                         ; preds = %codel_dequeue.exit.if.end23_crit_edge, %do.end.i.i.i.i.i, %land.lhs.true90.i.if.end23_crit_edge
  %cb.i.i.i.i97 = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 3
  %313 = ptrtoint ptr %cb.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %cb.i.i.i.i97, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2148.i, i32 0, i32 17
  %315 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %316, i32 0, i32 4
  %317 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %318)
  %tobool.i.not.i.i = icmp eq i16 %318, 0
  br i1 %tobool.i.not.i.i, label %if.end23.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end23.cond.end.i.i_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %316, i32 0, i32 5
  %319 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %319)
  %320 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i98 = zext i16 %320 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end23.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i98, %cond.true.i.i ], [ 1, %if.end23.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %321 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %321)
  %tobool.not.i.i.i.i.i99 = icmp eq i32 %321, 0
  br i1 %tobool.not.i.i.i.i.i99, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %322 = call i32 @llvm.read_register.i32(metadata !32) #12
  %and.i.i.i.i.i.i.i.i = and i32 %322, -16384
  %323 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %323, i32 0, i32 1
  %324 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %325, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !46
  %326 = call i32 @llvm.read_register.i32(metadata !32) #12
  %and.i.i.i.i.i.i = and i32 %326, -16384
  %327 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %327, i32 0, i32 3
  %328 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %329
  %330 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i100 = add i32 %331, ptrtoint (ptr @lockdep_recursion to i32)
  %332 = inttoptr i32 %add.i.i.i.i.i100 to ptr
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load volatile i32, ptr %332, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !47
  %335 = call i32 @llvm.read_register.i32(metadata !32) #12
  %and.i.i.i7.i.i.i.i.i = and i32 %335, -16384
  %336 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %336, i32 0, i32 1
  %337 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %338, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %334, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %339 = call i32 @llvm.read_register.i32(metadata !32) #12
  %and.i.i.i.i.i.i.i = and i32 %339, -16384
  %340 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %340, i32 0, i32 1
  %341 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %342)
  %cmp.i.i.i.i.i101 = icmp eq i32 %342, 0
  br i1 %cmp.i.i.i.i.i101, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %343 = call i32 @llvm.read_register.i32(metadata !32) #12
  %and.i.i.i9.i.i.i.i.i = and i32 %343, -16384
  %344 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %344, i32 0, i32 1
  %345 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %346, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !48
  %347 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %348
  %349 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %350, ptrtoint (ptr @hardirqs_enabled to i32)
  %351 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load volatile i32, ptr %351, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !49
  %354 = call i32 @llvm.read_register.i32(metadata !32) #12
  %and.i.i.i12.i.i.i.i.i = and i32 %354, -16384
  %355 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %355, i32 0, i32 1
  %356 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %357, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %353)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %353, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i102, !prof !45

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i102:                             ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i102, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i103 = zext i32 %314 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %358 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %359, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !50
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %360 = call ptr @llvm.returnaddress(i32 0) #12
  %361 = ptrtoint ptr %360 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %361) #12
  %362 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %362)
  %363 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %363, %conv.i.i103
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %364 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %364)
  %365 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %365, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %361) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  %366 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %367, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %368 = ptrtoint ptr %cb.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %cb.i.i.i.i97, align 4
  %370 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %deficit, align 4
  %sub = sub i32 %371, %369
  store i32 %sub, ptr %deficit, align 4
  %372 = ptrtoint ptr %drop_count.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %drop_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %373)
  %tobool27.not = icmp eq i32 %373, 0
  br i1 %tobool27.not, label %qdisc_bstats_update.exit.cleanup_crit_edge, label %land.lhs.true28

qdisc_bstats_update.exit.cleanup_crit_edge:       ; preds = %qdisc_bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true28:                                  ; preds = %qdisc_bstats_update.exit
  %374 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %qlen.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %375)
  %tobool30.not = icmp eq i32 %375, 0
  br i1 %tobool30.not, label %land.lhs.true28.cleanup_crit_edge, label %if.then31

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then31:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  %376 = ptrtoint ptr %drop_len.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %drop_len.i, align 4
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %373, i32 noundef %377) #12
  %378 = ptrtoint ptr %drop_count.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 0, ptr %drop_count.i, align 4
  %379 = ptrtoint ptr %drop_len.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 0, ptr %drop_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %land.lhs.true28.cleanup_crit_edge, %qdisc_bstats_update.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %skb.2148.i, %if.then31 ], [ %skb.2148.i, %land.lhs.true28.cleanup_crit_edge ], [ %skb.2148.i, %qdisc_bstats_update.exit.cleanup_crit_edge ], [ null, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_peek_dequeued(ptr noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not15 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not15
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %sch) #12
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
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
define internal i32 @fq_codel_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %0 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10240, ptr %limit, align 4
  %flows_cnt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %1 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1024, ptr %flows_cnt, align 4
  %memory_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %2 = ptrtoint ptr %memory_limit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 33554432, ptr %memory_limit, align 4
  %drop_batch_size = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %3 = ptrtoint ptr %drop_batch_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 64, ptr %drop_batch_size, align 4
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %4 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_queue.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 19
  %10 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %11 to i32
  %add.i = add i32 %9, %conv.i
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %12 = ptrtoint ptr %quantum to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %quantum, align 4
  %new_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %13 = ptrtoint ptr %new_flows to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %new_flows, ptr %new_flows, align 4
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 28
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %new_flows, ptr %prev.i, align 4
  %old_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %15 = ptrtoint ptr %old_flows to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %old_flows, ptr %old_flows, align 4
  %prev.i81 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 36
  %16 = ptrtoint ptr %prev.i81 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %old_flows, ptr %prev.i81, align 4
  %cparams = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %interval.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %17 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 97656, ptr %interval.i, align 4
  %18 = ptrtoint ptr %cparams to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4882, ptr %cparams, align 4
  %ce_threshold.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %19 = ptrtoint ptr %ce_threshold.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2147483647, ptr %ce_threshold.i, align 4
  %ce_threshold_mask.i = getelementptr inbounds %struct.codel_params, ptr %cparams, i32 0, i32 6
  %20 = ptrtoint ptr %ce_threshold_mask.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %ce_threshold_mask.i, align 2
  %ce_threshold_selector.i = getelementptr inbounds %struct.codel_params, ptr %cparams, i32 0, i32 5
  %21 = ptrtoint ptr %ce_threshold_selector.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ce_threshold_selector.i, align 1
  %ecn.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %cstats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %22 = ptrtoint ptr %cstats to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cstats, align 4
  %23 = ptrtoint ptr %ecn.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %ecn.i, align 4
  %24 = load ptr, ptr %5, align 128
  %mtu.i83 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 20
  %25 = ptrtoint ptr %mtu.i83 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mtu.i83, align 4
  %hard_header_len.i84 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 19
  %27 = ptrtoint ptr %hard_header_len.i84 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hard_header_len.i84, align 2
  %conv.i85 = zext i16 %28 to i32
  %add.i86 = add i32 %26, %conv.i85
  %mtu = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %29 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i86, ptr %mtu, align 4
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  %call7 = tail call i32 @fq_codel_change(ptr noundef %sch, ptr noundef nonnull %opt, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then.if.end10_crit_edge, label %if.then.init_failure_crit_edge

if.then.init_failure_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_failure

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %call11 = tail call i32 @tcf_block_get(ptr noundef %block, ptr noundef %privdata.i, ptr noundef %sch, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.init_failure_crit_edge

if.end10.init_failure_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_failure

if.end14:                                         ; preds = %if.end10
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %30 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %flows, align 4
  %tobool15.not = icmp eq ptr %31, null
  br i1 %tobool15.not, label %if.then16, label %if.end14.if.end32_crit_edge

if.end14.if.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then16:                                        ; preds = %if.end14
  %32 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flows_cnt, align 4
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 44) #12
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %if.then16.init_failure.sink.split_crit_edge, label %kvcalloc.exit, !prof !43

if.then16.init_failure.sink.split_crit_edge:      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_failure.sink.split

kvcalloc.exit:                                    ; preds = %if.then16
  %36 = extractvalue { i32, i1 } %34, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %36, i32 noundef 3520, i32 noundef -1) #15
  %37 = ptrtoint ptr %flows to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i.i, ptr %flows, align 4
  %tobool21.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool21.not, label %kvcalloc.exit.init_failure_crit_edge, label %if.end23

kvcalloc.exit.init_failure_crit_edge:             ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_failure

if.end23:                                         ; preds = %kvcalloc.exit
  %38 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flows_cnt, align 4
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 4) #12
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %kvcalloc.exit90.thread, label %kvcalloc.exit90, !prof !43

kvcalloc.exit90.thread:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %backlogs95 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %42 = ptrtoint ptr %backlogs95 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %backlogs95, align 4
  br label %if.then28

kvcalloc.exit90:                                  ; preds = %if.end23
  %43 = extractvalue { i32, i1 } %40, 0
  %call.i.i.i87 = tail call noalias ptr @kvmalloc_node(i32 noundef %43, i32 noundef 3520, i32 noundef -1) #15
  %backlogs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %44 = ptrtoint ptr %backlogs to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i.i87, ptr %backlogs, align 4
  %tobool27.not = icmp eq ptr %call.i.i.i87, null
  br i1 %tobool27.not, label %kvcalloc.exit90.if.then28_crit_edge, label %for.cond.preheader

kvcalloc.exit90.if.then28_crit_edge:              ; preds = %kvcalloc.exit90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

for.cond.preheader:                               ; preds = %kvcalloc.exit90
  %45 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flows_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp97.not = icmp eq i32 %46, 0
  br i1 %cmp97.not, label %for.cond.preheader.if.end32_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end32_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then28:                                        ; preds = %kvcalloc.exit90.if.then28_crit_edge, %kvcalloc.exit90.thread
  %47 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %flows, align 4
  tail call void @kvfree(ptr noundef %48) #12
  br label %init_failure.sink.split

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.098 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %49 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %flows, align 4
  %flowchain = getelementptr %struct.fq_codel_flow, ptr %50, i32 %i.098, i32 2
  %51 = ptrtoint ptr %flowchain to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %flowchain, ptr %flowchain, align 4
  %prev.i91 = getelementptr %struct.fq_codel_flow, ptr %50, i32 %i.098, i32 2, i32 1
  %52 = ptrtoint ptr %prev.i91 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %flowchain, ptr %prev.i91, align 4
  %cvars = getelementptr %struct.fq_codel_flow, ptr %50, i32 %i.098, i32 4
  %53 = call ptr @memset(ptr %cvars, i32 0, i32 24)
  %inc = add nuw i32 %i.098, 1
  %54 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flows_cnt, align 4
  %cmp = icmp ult i32 %inc, %55
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end32_crit_edge

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end32:                                         ; preds = %for.body.if.end32_crit_edge, %for.cond.preheader.if.end32_crit_edge, %if.end14.if.end32_crit_edge
  %56 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp34.not = icmp eq i32 %57, 0
  %flags36 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %58 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags36, align 8
  br i1 %cmp34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %59, 4
  %60 = ptrtoint ptr %flags36 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or, ptr %flags36, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %59, -5
  %61 = ptrtoint ptr %flags36 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and, ptr %flags36, align 8
  br label %cleanup

init_failure.sink.split:                          ; preds = %if.then28, %if.then16.init_failure.sink.split_crit_edge
  %62 = ptrtoint ptr %flows to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %flows, align 4
  br label %init_failure

init_failure:                                     ; preds = %init_failure.sink.split, %kvcalloc.exit.init_failure_crit_edge, %if.end10.init_failure_crit_edge, %if.then.init_failure_crit_edge
  %err.0 = phi i32 [ %call7, %if.then.init_failure_crit_edge ], [ %call11, %if.end10.init_failure_crit_edge ], [ -12, %kvcalloc.exit.init_failure_crit_edge ], [ -12, %init_failure.sink.split ]
  %63 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %flows_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %init_failure, %if.else, %if.then35
  %retval.0 = phi i32 [ %err.0, %init_failure ], [ 0, %if.else ], [ 0, %if.then35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fq_codel_reset(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %new_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %0 = ptrtoint ptr %new_flows to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %new_flows, ptr %new_flows, align 4
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 28
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %new_flows, ptr %prev.i, align 4
  %old_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %2 = ptrtoint ptr %old_flows to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %old_flows, ptr %old_flows, align 4
  %prev.i15 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 36
  %3 = ptrtoint ptr %prev.i15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %old_flows, ptr %prev.i15, align 4
  %flows_cnt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %4 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flows_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp17.not = icmp eq i32 %5, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flows, align 4
  %add.ptr = getelementptr %struct.fq_codel_flow, ptr %7, i32 %i.018
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %tail.i = getelementptr %struct.fq_codel_flow, ptr %7, i32 %i.018, i32 1
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 4
  tail call void @rtnl_kfree_skbs(ptr noundef %9, ptr noundef %11) #12
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %add.ptr, align 4
  %flowchain = getelementptr %struct.fq_codel_flow, ptr %7, i32 %i.018, i32 2
  %13 = ptrtoint ptr %flowchain to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %flowchain, ptr %flowchain, align 4
  %prev.i16 = getelementptr %struct.fq_codel_flow, ptr %7, i32 %i.018, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %flowchain, ptr %prev.i16, align 4
  %cvars = getelementptr %struct.fq_codel_flow, ptr %7, i32 %i.018, i32 4
  %15 = call ptr @memset(ptr %cvars, i32 0, i32 24)
  %inc = add nuw i32 %i.018, 1
  %16 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flows_cnt, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo = shl i32 %17, 2
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %backlogs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %18 = ptrtoint ptr %backlogs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %backlogs, align 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 %.lcssa)
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %21 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %qlen, align 8
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %22 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %backlog, align 4
  %memory_usage = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %23 = ptrtoint ptr %memory_usage to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %memory_usage, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fq_codel_destroy(ptr nocapture noundef readonly %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 4
  tail call void @tcf_block_put(ptr noundef %1) #12
  %backlogs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %2 = ptrtoint ptr %backlogs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlogs, align 4
  tail call void @kvfree(ptr noundef %3) #12
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %4 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flows, align 4
  tail call void @kvfree(ptr noundef %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_codel_change(ptr noundef %sch, ptr noundef %opt, ptr noundef writeonly %extack) #2 align 64 {
entry:
  %tb = alloca [12 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tb) #12
  %0 = call ptr @memset(ptr %tb, i32 255, i32 48)
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %1 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %2 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 11, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @fq_codel_policy, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 5
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.end3.if.end17_crit_edge, label %if.then5

if.end3.if.end17_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then5:                                         ; preds = %if.end3
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %5 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %flows, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end8, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.then5
  %add.ptr.i.i192 = getelementptr i8, ptr %4, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i192 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i192, align 4
  %flows_cnt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %9 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %flows_cnt, align 4
  %10 = add i32 %8, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %10)
  %11 = icmp ult i32 %10, -65536
  br i1 %11, label %if.end8.cleanup_crit_edge, label %if.end8.if.end17_crit_edge

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end8.if.end17_crit_edge, %if.end3.if.end17_crit_edge
  %arrayidx18 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %13, null
  br i1 %tobool19.not, label %if.end17.if.end30_crit_edge, label %if.then20

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then20:                                        ; preds = %if.end17
  %add.ptr.i.i193 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i193 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i193, align 4
  %16 = call i32 @llvm.umax.i32(i32 %15, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %16)
  %cmp24 = icmp ugt i32 %16, 1048576
  br i1 %cmp24, label %do.body, label %if.then20.if.end30_crit_edge

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

do.body:                                          ; preds = %if.then20
  call void @do_trace_netlink_extack(ptr noundef nonnull @fq_codel_change.__msg) #12
  %tobool26.not = icmp eq ptr %extack, null
  br i1 %tobool26.not, label %do.body.cleanup_crit_edge, label %if.then27

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @fq_codel_change.__msg, ptr %extack, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.then20.if.end30_crit_edge, %if.end17.if.end30_crit_edge
  %quantum.0 = phi i32 [ %16, %if.then20.if.end30_crit_edge ], [ 0, %if.end17.if.end30_crit_edge ]
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end30.sch_tree_lock.exit_crit_edge

if.end30.sch_tree_lock.exit_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.end30
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %20 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !45

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end30.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end30.sch_tree_lock.exit_crit_edge ], [ %23, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %23, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %23, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #12
  %arrayidx31 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %25, null
  br i1 %tobool32.not, label %sch_tree_lock.exit.if.end38_crit_edge, label %if.then33

sch_tree_lock.exit.if.end38_crit_edge:            ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then33:                                        ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i194 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i194 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i194, align 4
  %conv = zext i32 %27 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  %shr = lshr i64 %mul, 10
  %conv36 = trunc i64 %shr to i32
  %cparams = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %28 = ptrtoint ptr %cparams to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv36, ptr %cparams, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %sch_tree_lock.exit.if.end38_crit_edge
  %arrayidx39 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 7
  %29 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx39, align 4
  %tobool40.not = icmp eq ptr %30, null
  br i1 %tobool40.not, label %if.end38.if.end49_crit_edge, label %if.then41

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i195 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i195 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i195, align 4
  %conv44 = zext i32 %32 to i64
  %mul45 = mul nuw nsw i64 %conv44, 1000
  %shr46 = lshr i64 %mul45, 10
  %conv47 = trunc i64 %shr46 to i32
  %ce_threshold = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %33 = ptrtoint ptr %ce_threshold to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv47, ptr %ce_threshold, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then41, %if.end38.if.end49_crit_edge
  %arrayidx50 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 10
  %34 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx50, align 4
  %tobool51.not = icmp eq ptr %35, null
  br i1 %tobool51.not, label %if.end49.if.end56_crit_edge, label %if.then52

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i196 = getelementptr i8, ptr %35, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i196 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr.i.i196, align 1
  %ce_threshold_selector = getelementptr inbounds %struct.fq_codel_sched_data, ptr %privdata.i, i32 0, i32 8, i32 5
  %38 = ptrtoint ptr %ce_threshold_selector to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %ce_threshold_selector, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end49.if.end56_crit_edge
  %arrayidx57 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 11
  %39 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx57, align 4
  %tobool58.not = icmp eq ptr %40, null
  br i1 %tobool58.not, label %if.end56.if.end63_crit_edge, label %if.then59

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i197 = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i197 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr.i.i197, align 1
  %ce_threshold_mask = getelementptr inbounds %struct.fq_codel_sched_data, ptr %privdata.i, i32 0, i32 8, i32 6
  %43 = ptrtoint ptr %ce_threshold_mask to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %ce_threshold_mask, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.end56.if.end63_crit_edge
  %arrayidx64 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx64, align 4
  %tobool65.not = icmp eq ptr %45, null
  br i1 %tobool65.not, label %if.end63.if.end75_crit_edge, label %if.then66

if.end63.if.end75_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i198 = getelementptr i8, ptr %45, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i198 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i198, align 4
  %conv69 = zext i32 %47 to i64
  %mul70 = mul nuw nsw i64 %conv69, 1000
  %shr71 = lshr i64 %mul70, 10
  %conv72 = trunc i64 %shr71 to i32
  %interval74 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %48 = ptrtoint ptr %interval74 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv72, ptr %interval74, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then66, %if.end63.if.end75_crit_edge
  %arrayidx76 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx76, align 4
  %tobool77.not = icmp eq ptr %50, null
  br i1 %tobool77.not, label %if.end75.if.end81_crit_edge, label %if.then78

if.end75.if.end81_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i199 = getelementptr i8, ptr %50, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i199 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i.i199, align 4
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %53 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %limit, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end75.if.end81_crit_edge
  %arrayidx82 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 4
  %54 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx82, align 4
  %tobool83.not = icmp eq ptr %55, null
  br i1 %tobool83.not, label %if.end81.if.end90_crit_edge, label %if.then84

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i200 = getelementptr i8, ptr %55, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i200 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i.i200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool87 = icmp ne i32 %57, 0
  %ecn = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %frombool = zext i1 %tobool87 to i8
  %58 = ptrtoint ptr %ecn to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %frombool, ptr %ecn, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then84, %if.end81.if.end90_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quantum.0)
  %tobool91.not = icmp eq i32 %quantum.0, 0
  br i1 %tobool91.not, label %if.end90.if.end94_crit_edge, label %if.then92

if.end90.if.end94_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.then92:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %quantum93 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %59 = ptrtoint ptr %quantum93 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %quantum.0, ptr %quantum93, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end90.if.end94_crit_edge
  %arrayidx95 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 8
  %60 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx95, align 4
  %tobool96.not = icmp eq ptr %61, null
  br i1 %tobool96.not, label %if.end94.if.end107_crit_edge, label %if.then97

if.end94.if.end107_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i201 = getelementptr i8, ptr %61, i32 4
  %62 = ptrtoint ptr %add.ptr.i.i201 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp101 = icmp eq i32 %63, 0
  %.call99 = select i1 %cmp101, i32 1, i32 %63
  %drop_batch_size = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %64 = ptrtoint ptr %drop_batch_size to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.call99, ptr %drop_batch_size, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then97, %if.end94.if.end107_crit_edge
  %arrayidx108 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 9
  %65 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx108, align 4
  %tobool109.not = icmp eq ptr %66, null
  br i1 %tobool109.not, label %if.end107.if.end120_crit_edge, label %if.then110

if.end107.if.end120_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i202 = getelementptr i8, ptr %66, i32 4
  %67 = ptrtoint ptr %add.ptr.i.i202 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i.i202, align 4
  %69 = call i32 @llvm.umin.i32(i32 %68, i32 -2147483648)
  %memory_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %70 = ptrtoint ptr %memory_limit to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %memory_limit, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then110, %if.end107.if.end120_crit_edge
  %memory_usage = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %limit122 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %memory_limit125 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %drop_len = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %drop_count = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end120
  %71 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %qlen, align 8
  %73 = ptrtoint ptr %limit122 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %limit122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp123 = icmp ugt i32 %72, %74
  br i1 %cmp123, label %while.cond.while.body_crit_edge, label %lor.rhs

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %75 = ptrtoint ptr %memory_usage to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %memory_usage, align 4
  %77 = ptrtoint ptr %memory_limit125 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %memory_limit125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp126 = icmp ugt i32 %76, %78
  br i1 %cmp126, label %lor.rhs.while.body_crit_edge, label %while.end

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %call128 = call ptr @fq_codel_dequeue(ptr noundef %sch)
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call128, i32 0, i32 3
  %79 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cb.i.i, align 4
  %81 = ptrtoint ptr %drop_len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %drop_len, align 4
  %add = add i32 %82, %80
  store i32 %add, ptr %drop_len, align 4
  call void @rtnl_kfree_skbs(ptr noundef %call128, ptr noundef %call128) #12
  %83 = ptrtoint ptr %drop_count to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %drop_count, align 4
  %inc = add i32 %84, 1
  store i32 %inc, ptr %drop_count, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  %85 = ptrtoint ptr %drop_count to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %drop_count, align 4
  %87 = ptrtoint ptr %drop_len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %drop_len, align 4
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %86, i32 noundef %88) #12
  %89 = ptrtoint ptr %drop_count to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %drop_count, align 4
  %90 = ptrtoint ptr %drop_len to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %drop_len, align 4
  %91 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags.i, align 8
  %and.i204 = and i32 %92, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i204)
  %tobool.not.i205 = icmp eq i32 %and.i204, 0
  br i1 %tobool.not.i205, label %if.else.i210, label %while.end.sch_tree_unlock.exit_crit_edge

while.end.sch_tree_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.else.i210:                                     ; preds = %while.end
  %dev_queue.i.i.i206 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %93 = ptrtoint ptr %dev_queue.i.i.i206 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev_queue.i.i.i206, align 8
  %qdisc_sleeping.i.i.i207 = getelementptr inbounds %struct.netdev_queue, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %qdisc_sleeping.i.i.i207 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %qdisc_sleeping.i.i.i207, align 4
  %call1.i.i208 = call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i208)
  %tobool.not.i.i209 = icmp eq i32 %call1.i.i208, 0
  br i1 %tobool.not.i.i209, label %land.rhs.i.i212, label %if.else.i210.sch_tree_unlock.exit_crit_edge

if.else.i210.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i210
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

land.rhs.i.i212:                                  ; preds = %if.else.i210
  %.b41.i.i211 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i211, label %land.rhs.i.i212.sch_tree_unlock.exit_crit_edge, label %if.then.i.i213, !prof !45

land.rhs.i.i212.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i212
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.then.i.i213:                                   ; preds = %land.rhs.i.i212
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i213, %land.rhs.i.i212.sch_tree_unlock.exit_crit_edge, %if.else.i210.sch_tree_unlock.exit_crit_edge, %while.end.sch_tree_unlock.exit_crit_edge
  %.sink.i214 = phi ptr [ %sch, %while.end.sch_tree_unlock.exit_crit_edge ], [ %96, %if.else.i210.sch_tree_unlock.exit_crit_edge ], [ %96, %land.rhs.i.i212.sch_tree_unlock.exit_crit_edge ], [ %96, %if.then.i.i213 ]
  %lock.i.i.i215 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i214, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i215) #12
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit, %if.then27, %do.body.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sch_tree_unlock.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %if.then27 ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tb) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_codel_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i110 = alloca i8, align 1
  %tmp.i108 = alloca i8, align 1
  %tmp.i106 = alloca i32, align 4
  %tmp.i97 = alloca i32, align 4
  %tmp.i95 = alloca i32, align 4
  %tmp.i93 = alloca i32, align 4
  %tmp.i91 = alloca i32, align 4
  %tmp.i89 = alloca i32, align 4
  %tmp.i87 = alloca i32, align 4
  %tmp.i78 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp114 = icmp eq ptr %1, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp114
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cparams = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %2 = ptrtoint ptr %cparams to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cparams, align 4
  %conv.i = zext i32 %3 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 10
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i, i32 0) #16, !srcloc !52
  %asmresult.i.i = extractvalue { i64, i32 } %4, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #16, !srcloc !53
  %asmresult10.i.i = extractvalue { i64, i32 } %5, 0
  %div161263.i = lshr i64 %asmresult10.i.i, 9
  %conv183.i = trunc i64 %div161263.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv183.i, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %7 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %limit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i78) #12
  %9 = ptrtoint ptr %tmp.i78 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i78, align 4
  %call.i79 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i78) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i78) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool5.not = icmp eq i32 %call.i79, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %interval = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %10 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interval, align 4
  %conv.i80 = zext i32 %11 to i64
  %shl.i81 = shl nuw nsw i64 %conv.i80, 10
  %12 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i81, i32 0) #16, !srcloc !52
  %asmresult.i.i82 = extractvalue { i64, i32 } %12, 0
  %asmresult4.i.i83 = extractvalue { i64, i32 } %12, 1
  %13 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i81, i64 %asmresult.i.i82, i32 %asmresult4.i.i83) #16, !srcloc !53
  %asmresult10.i.i84 = extractvalue { i64, i32 } %13, 0
  %div161263.i85 = lshr i64 %asmresult10.i.i84, 9
  %conv183.i86 = trunc i64 %div161263.i85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i87) #12
  %14 = ptrtoint ptr %tmp.i87 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv183.i86, ptr %tmp.i87, align 4
  %call.i88 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i87) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i87) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool10.not = icmp eq i32 %call.i88, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %ecn = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %15 = ptrtoint ptr %ecn to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ecn, align 4, !range !44
  %17 = zext i8 %16 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i89) #12
  %18 = ptrtoint ptr %tmp.i89 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tmp.i89, align 4
  %call.i90 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i89) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i89) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool15.not = icmp eq i32 %call.i90, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false11
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %19 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %quantum, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i91) #12
  %21 = ptrtoint ptr %tmp.i91 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tmp.i91, align 4
  %call.i92 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i91) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i91) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool18.not = icmp eq i32 %call.i92, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %lor.lhs.false16.cleanup_crit_edge

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %drop_batch_size = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %22 = ptrtoint ptr %drop_batch_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %drop_batch_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i93) #12
  %24 = ptrtoint ptr %tmp.i93 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tmp.i93, align 4
  %call.i94 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i93) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i93) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool21.not = icmp eq i32 %call.i94, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %lor.lhs.false19.cleanup_crit_edge

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %memory_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %25 = ptrtoint ptr %memory_limit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %memory_limit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i95) #12
  %27 = ptrtoint ptr %tmp.i95 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tmp.i95, align 4
  %call.i96 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i95) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i95) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool24.not = icmp eq i32 %call.i96, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %lor.lhs.false22.cleanup_crit_edge

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %flows_cnt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %28 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flows_cnt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i97) #12
  %30 = ptrtoint ptr %tmp.i97 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tmp.i97, align 4
  %call.i98 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i97) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i97) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool27.not = icmp eq i32 %call.i98, 0
  br i1 %tobool27.not, label %if.end29, label %lor.lhs.false25.cleanup_crit_edge

lor.lhs.false25.cleanup_crit_edge:                ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false25
  %ce_threshold = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %31 = ptrtoint ptr %ce_threshold to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ce_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %32)
  %cmp31.not = icmp eq i32 %32, 2147483647
  br i1 %cmp31.not, label %if.end29.if.end51_crit_edge, label %if.then33

if.end29.if.end51_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then33:                                        ; preds = %if.end29
  %conv.i99 = zext i32 %32 to i64
  %shl.i100 = shl nuw nsw i64 %conv.i99, 10
  %33 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i100, i32 0) #16, !srcloc !52
  %asmresult.i.i101 = extractvalue { i64, i32 } %33, 0
  %asmresult4.i.i102 = extractvalue { i64, i32 } %33, 1
  %34 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i100, i64 %asmresult.i.i101, i32 %asmresult4.i.i102) #16, !srcloc !53
  %asmresult10.i.i103 = extractvalue { i64, i32 } %34, 0
  %div161263.i104 = lshr i64 %asmresult10.i.i103, 9
  %conv183.i105 = trunc i64 %div161263.i104 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i106) #12
  %35 = ptrtoint ptr %tmp.i106 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv183.i105, ptr %tmp.i106, align 4
  %call.i107 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i106) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i106) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool38.not = icmp eq i32 %call.i107, 0
  br i1 %tobool38.not, label %if.end40, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %if.then33
  %ce_threshold_selector = getelementptr inbounds %struct.fq_codel_sched_data, ptr %privdata.i, i32 0, i32 8, i32 5
  %36 = ptrtoint ptr %ce_threshold_selector to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ce_threshold_selector, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i108) #12
  %38 = ptrtoint ptr %tmp.i108 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %tmp.i108, align 1
  %call.i109 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %tmp.i108) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i108) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool43.not = icmp eq i32 %call.i109, 0
  br i1 %tobool43.not, label %if.end45, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %ce_threshold_mask = getelementptr inbounds %struct.fq_codel_sched_data, ptr %privdata.i, i32 0, i32 8, i32 6
  %39 = ptrtoint ptr %ce_threshold_mask to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ce_threshold_mask, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i110) #12
  %41 = ptrtoint ptr %tmp.i110 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %tmp.i110, align 1
  %call.i111 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %tmp.i110) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i110) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool48.not = icmp eq i32 %call.i111, 0
  br i1 %tobool48.not, label %if.end45.if.end51_crit_edge, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.end51:                                         ; preds = %if.end45.if.end51_crit_edge, %if.end29.if.end51_crit_edge
  %42 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i113 = trunc i32 %sub.ptr.sub.i to i16
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i113, ptr %1, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end45.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %lor.lhs.false25.cleanup_crit_edge, %lor.lhs.false22.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %46, %if.end51 ], [ -1, %if.end45.cleanup_crit_edge ], [ -1, %if.end40.cleanup_crit_edge ], [ -1, %if.then33.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %lor.lhs.false6.cleanup_crit_edge ], [ -1, %lor.lhs.false11.cleanup_crit_edge ], [ -1, %lor.lhs.false16.cleanup_crit_edge ], [ -1, %lor.lhs.false19.cleanup_crit_edge ], [ -1, %lor.lhs.false22.cleanup_crit_edge ], [ -1, %lor.lhs.false25.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_codel_dump_stats(ptr noundef %sch, ptr noundef %d) #2 align 64 {
entry:
  %st = alloca %struct.tc_fq_codel_xstats, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %st) #12
  %0 = call ptr @memset(ptr %st, i32 0, i32 28)
  %cstats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %1 = ptrtoint ptr %cstats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cstats, align 4
  %3 = getelementptr inbounds %struct.tc_fq_codel_xstats, ptr %st, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %2, ptr %3, align 4
  %drop_overlimit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %5 = ptrtoint ptr %drop_overlimit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %drop_overlimit, align 4
  %drop_overlimit2 = getelementptr inbounds %struct.tc_fq_codel_xstats, ptr %st, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %drop_overlimit2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %drop_overlimit2, align 4
  %ecn_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %8 = ptrtoint ptr %ecn_mark to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ecn_mark, align 4
  %ecn_mark4 = getelementptr inbounds %struct.tc_fq_codel_xstats, ptr %st, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %ecn_mark4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ecn_mark4, align 4
  %new_flow_count = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %11 = ptrtoint ptr %new_flow_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %new_flow_count, align 4
  %new_flow_count5 = getelementptr inbounds %struct.tc_fq_codel_xstats, ptr %st, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %new_flow_count5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %new_flow_count5, align 4
  %ce_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %14 = ptrtoint ptr %ce_mark to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ce_mark, align 4
  %ce_mark7 = getelementptr inbounds %struct.tc_fq_codel_xstats, ptr %st, i32 0, i32 1, i32 0, i32 6
  %16 = ptrtoint ptr %ce_mark7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ce_mark7, align 4
  %memory_usage = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %17 = ptrtoint ptr %memory_usage to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %memory_usage, align 4
  %memory_usage8 = getelementptr inbounds %struct.tc_fq_codel_xstats, ptr %st, i32 0, i32 1, i32 0, i32 7
  %19 = ptrtoint ptr %memory_usage8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %memory_usage8, align 4
  %drop_overmemory = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %20 = ptrtoint ptr %drop_overmemory to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %drop_overmemory, align 4
  %drop_overmemory9 = getelementptr inbounds %struct.tc_fq_codel_xstats, ptr %st, i32 0, i32 1, i32 0, i32 8
  %22 = ptrtoint ptr %drop_overmemory9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %drop_overmemory9, align 4
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.sch_tree_lock.exit_crit_edge

entry.sch_tree_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %entry
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %25 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !45

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %entry.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %entry.sch_tree_lock.exit_crit_edge ], [ %28, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %28, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %28, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #12
  %new_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %29 = ptrtoint ptr %new_flows to i32
  call void @__asan_load4_noabort(i32 %29)
  %pos.055 = load ptr, ptr %new_flows, align 4
  %cmp.i.not56 = icmp eq ptr %pos.055, %new_flows
  br i1 %cmp.i.not56, label %sch_tree_lock.exit.for.end_crit_edge, label %for.body.lr.ph

sch_tree_lock.exit.for.end_crit_edge:             ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %sch_tree_lock.exit
  %new_flows_len = getelementptr inbounds %struct.tc_fq_codel_xstats, ptr %st, i32 0, i32 1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pos.057 = phi ptr [ %pos.055, %for.body.lr.ph ], [ %pos.0, %for.body.for.body_crit_edge ]
  %30 = ptrtoint ptr %new_flows_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %new_flows_len, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %new_flows_len, align 4
  %32 = ptrtoint ptr %pos.057 to i32
  call void @__asan_load4_noabort(i32 %32)
  %pos.0 = load ptr, ptr %pos.057, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %new_flows
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sch_tree_lock.exit.for.end_crit_edge
  %old_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %33 = ptrtoint ptr %old_flows to i32
  call void @__asan_load4_noabort(i32 %33)
  %pos.158 = load ptr, ptr %old_flows, align 4
  %cmp.i40.not59 = icmp eq ptr %pos.158, %old_flows
  br i1 %cmp.i40.not59, label %for.end.for.end23_crit_edge, label %for.body19.lr.ph

for.end.for.end23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end23

for.body19.lr.ph:                                 ; preds = %for.end
  %old_flows_len = getelementptr inbounds %struct.tc_fq_codel_xstats, ptr %st, i32 0, i32 1, i32 0, i32 5
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.body19.lr.ph
  %pos.160 = phi ptr [ %pos.158, %for.body19.lr.ph ], [ %pos.1, %for.body19.for.body19_crit_edge ]
  %34 = ptrtoint ptr %old_flows_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %old_flows_len, align 4
  %inc20 = add i32 %35, 1
  store i32 %inc20, ptr %old_flows_len, align 4
  %36 = ptrtoint ptr %pos.160 to i32
  call void @__asan_load4_noabort(i32 %36)
  %pos.1 = load ptr, ptr %pos.160, align 4
  %cmp.i40.not = icmp eq ptr %pos.1, %old_flows
  br i1 %cmp.i40.not, label %for.body19.for.end23_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body19

for.body19.for.end23_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end23

for.end23:                                        ; preds = %for.body19.for.end23_crit_edge, %for.end.for.end23_crit_edge
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 8
  %and.i43 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool.not.i44 = icmp eq i32 %and.i43, 0
  br i1 %tobool.not.i44, label %if.else.i49, label %for.end23.sch_tree_unlock.exit_crit_edge

for.end23.sch_tree_unlock.exit_crit_edge:         ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.else.i49:                                      ; preds = %for.end23
  %dev_queue.i.i.i45 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %39 = ptrtoint ptr %dev_queue.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_queue.i.i.i45, align 8
  %qdisc_sleeping.i.i.i46 = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %qdisc_sleeping.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %qdisc_sleeping.i.i.i46, align 4
  %call1.i.i47 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i47)
  %tobool.not.i.i48 = icmp eq i32 %call1.i.i47, 0
  br i1 %tobool.not.i.i48, label %land.rhs.i.i51, label %if.else.i49.sch_tree_unlock.exit_crit_edge

if.else.i49.sch_tree_unlock.exit_crit_edge:       ; preds = %if.else.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

land.rhs.i.i51:                                   ; preds = %if.else.i49
  %.b41.i.i50 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i50, label %land.rhs.i.i51.sch_tree_unlock.exit_crit_edge, label %if.then.i.i52, !prof !45

land.rhs.i.i51.sch_tree_unlock.exit_crit_edge:    ; preds = %land.rhs.i.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.then.i.i52:                                    ; preds = %land.rhs.i.i51
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i52, %land.rhs.i.i51.sch_tree_unlock.exit_crit_edge, %if.else.i49.sch_tree_unlock.exit_crit_edge, %for.end23.sch_tree_unlock.exit_crit_edge
  %.sink.i53 = phi ptr [ %sch, %for.end23.sch_tree_unlock.exit_crit_edge ], [ %42, %if.else.i49.sch_tree_unlock.exit_crit_edge ], [ %42, %land.rhs.i.i51.sch_tree_unlock.exit_crit_edge ], [ %42, %if.then.i.i52 ]
  %lock.i.i.i54 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i53, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i54) #12
  %call24 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef nonnull %st, i32 noundef 40) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %st) #12
  ret i32 %call24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @fq_codel_leaf(ptr nocapture noundef readnone %sch, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fq_codel_find(ptr nocapture noundef readnone %sch, i32 noundef %classid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fq_codel_walk(ptr noundef %sch, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %flows_cnt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %2 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flows_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp28.not = icmp eq i32 %3, 0
  br i1 %cmp28.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc14.pre-phi, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flows, align 4
  %flowchain = getelementptr %struct.fq_codel_flow, ptr %5, i32 %i.029, i32 2
  %6 = ptrtoint ptr %flowchain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %flowchain, align 4
  %cmp.i.not = icmp eq ptr %7, %flowchain
  br i1 %cmp.i.not, label %for.body.if.then4_crit_edge, label %lor.lhs.false

for.body.if.then4_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

lor.lhs.false:                                    ; preds = %for.body
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %10 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3 = icmp slt i32 %9, %11
  br i1 %cmp3, label %lor.lhs.false.if.then4_crit_edge, label %if.end6

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %for.body.if.then4_crit_edge
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %count, align 4
  %.pre = add nuw i32 %i.029, 1
  br label %for.inc

if.end6:                                          ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fn, align 4
  %add = add nuw i32 %i.029, 1
  %call7 = tail call i32 %15(ptr noundef %sch, i32 noundef %add, ptr noundef %arg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %arg, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  %inc13 = add i32 %18, 1
  store i32 %inc13, ptr %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %if.then4
  %inc14.pre-phi = phi i32 [ %add, %if.end11 ], [ %.pre, %if.then4 ]
  %19 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flows_cnt, align 4
  %cmp = icmp ult i32 %inc14.pre-phi, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then9, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @fq_codel_tcf_block(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cl)
  %tobool.not = icmp eq i32 %cl, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fq_codel_bind(ptr nocapture noundef readnone %sch, i32 noundef %parent, i32 noundef %classid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fq_codel_unbind(ptr nocapture noundef %q, i32 noundef %cl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fq_codel_dump_class(ptr nocapture noundef readnone %sch, i32 noundef %cl, ptr nocapture noundef readnone %skb, ptr nocapture noundef %tcm) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %cl, 65535
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %0 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tcm_handle, align 4
  %or = or i32 %1, %and
  store i32 %or, ptr %tcm_handle, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_codel_dump_class_stats(ptr noundef %sch, i32 noundef %cl, ptr noundef %d) #2 align 64 {
entry:
  %qs = alloca %struct.gnet_stats_queue, align 4
  %xstats = alloca %struct.tc_fq_codel_xstats, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %cl, -1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qs) #12
  %0 = call ptr @memset(ptr %qs, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %xstats) #12
  %1 = call ptr @memset(ptr %xstats, i32 255, i32 40)
  %flows_cnt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %2 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flows_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %3)
  %cmp = icmp ult i32 %sub, %3
  br i1 %cmp, label %if.then, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then:                                          ; preds = %entry
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %4 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flows, align 4
  %arrayidx = getelementptr %struct.fq_codel_flow, ptr %5, i32 %sub
  %6 = getelementptr inbounds i8, ptr %xstats, i32 24
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %8 = ptrtoint ptr %xstats to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %xstats, align 4
  %deficit = getelementptr %struct.fq_codel_flow, ptr %5, i32 %sub, i32 3
  %9 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %deficit, align 4
  %11 = getelementptr inbounds %struct.tc_fq_codel_xstats, ptr %xstats, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %11, align 4
  %cvars = getelementptr %struct.fq_codel_flow, ptr %5, i32 %sub, i32 4
  %ldelay = getelementptr %struct.fq_codel_flow, ptr %5, i32 %sub, i32 4, i32 6
  %13 = ptrtoint ptr %ldelay to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ldelay, align 4
  %conv.i = zext i32 %14 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 10
  %15 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i, i32 0) #16, !srcloc !52
  %asmresult.i.i = extractvalue { i64, i32 } %15, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %15, 1
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #16, !srcloc !53
  %asmresult10.i.i = extractvalue { i64, i32 } %16, 0
  %div161263.i = lshr i64 %asmresult10.i.i, 9
  %conv183.i = trunc i64 %div161263.i to i32
  %ldelay3 = getelementptr inbounds %struct.tc_fq_codel_xstats, ptr %xstats, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %ldelay3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv183.i, ptr %ldelay3, align 4
  %18 = ptrtoint ptr %cvars to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cvars, align 4
  %count5 = getelementptr inbounds %struct.tc_fq_codel_xstats, ptr %xstats, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %count5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %count5, align 4
  %lastcount = getelementptr %struct.fq_codel_flow, ptr %5, i32 %sub, i32 4, i32 1
  %21 = ptrtoint ptr %lastcount to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lastcount, align 4
  %lastcount7 = getelementptr inbounds %struct.tc_fq_codel_xstats, ptr %xstats, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %lastcount7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %lastcount7, align 4
  %dropping = getelementptr %struct.fq_codel_flow, ptr %5, i32 %sub, i32 4, i32 2
  %24 = ptrtoint ptr %dropping to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dropping, align 4, !range !44
  %26 = zext i8 %25 to i32
  %dropping9 = getelementptr inbounds %struct.tc_fq_codel_xstats, ptr %xstats, i32 0, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %dropping9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %dropping9, align 4
  %28 = load i8, ptr %dropping, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool12.not = icmp eq i8 %28, 0
  br i1 %tobool12.not, label %if.then.if.end_crit_edge, label %if.then13

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then13:                                        ; preds = %if.then
  %drop_next = getelementptr %struct.fq_codel_flow, ptr %5, i32 %sub, i32 4, i32 5
  %29 = ptrtoint ptr %drop_next to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %drop_next, align 4
  %call.i.i = tail call i64 @ktime_get() #12
  %shr.i = lshr i64 %call.i.i, 10
  %conv.i66 = trunc i64 %shr.i to i32
  %sub16 = sub i32 %30, %conv.i66
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub16)
  %cmp17 = icmp sgt i32 %sub16, -1
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i67 = zext i32 %sub16 to i64
  %shl.i68 = shl nuw nsw i64 %conv.i67, 10
  %31 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i68, i32 0) #16, !srcloc !52
  %asmresult.i.i69 = extractvalue { i64, i32 } %31, 0
  %asmresult4.i.i70 = extractvalue { i64, i32 } %31, 1
  %32 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i68, i64 %asmresult.i.i69, i32 %asmresult4.i.i70) #16, !srcloc !53
  %asmresult10.i.i71 = extractvalue { i64, i32 } %32, 0
  %div161263.i72 = lshr i64 %asmresult10.i.i71, 9
  %conv183.i73 = trunc i64 %div161263.i72 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %sub20 = sub i32 0, %sub16
  %conv.i74 = zext i32 %sub20 to i64
  %shl.i75 = shl nuw nsw i64 %conv.i74, 10
  %33 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i75, i32 0) #16, !srcloc !52
  %asmresult.i.i76 = extractvalue { i64, i32 } %33, 0
  %asmresult4.i.i77 = extractvalue { i64, i32 } %33, 1
  %34 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i75, i64 %asmresult.i.i76, i32 %asmresult4.i.i77) #16, !srcloc !53
  %asmresult10.i.i78 = extractvalue { i64, i32 } %34, 0
  %div161263.i79 = lshr i64 %asmresult10.i.i78, 9
  %conv183.i80 = trunc i64 %div161263.i79 to i32
  %sub22 = sub i32 0, %conv183.i80
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv183.i73, %cond.true ], [ %sub22, %cond.false ]
  %drop_next23 = getelementptr inbounds %struct.tc_fq_codel_xstats, ptr %xstats, i32 0, i32 1, i32 0, i32 5
  %35 = ptrtoint ptr %drop_next23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond, ptr %drop_next23, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.if.end_crit_edge
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %37, null
  br i1 %tobool24.not, label %if.end.if.end28_crit_edge, label %if.then25

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then25:                                        ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then25.sch_tree_lock.exit_crit_edge

if.then25.sch_tree_lock.exit_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.then25
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %40 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !45

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.then25.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.then25.sch_tree_lock.exit_crit_edge ], [ %43, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %43, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %43, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #12
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %skb.094 = load ptr, ptr %arrayidx, align 4
  %tobool27.not95 = icmp eq ptr %skb.094, null
  br i1 %tobool27.not95, label %sch_tree_lock.exit.while.end_crit_edge, label %sch_tree_lock.exit.while.body_crit_edge

sch_tree_lock.exit.while.body_crit_edge:          ; preds = %sch_tree_lock.exit
  br label %while.body

sch_tree_lock.exit.while.end_crit_edge:           ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %sch_tree_lock.exit.while.body_crit_edge
  %skb.096 = phi ptr [ %skb.0, %while.body.while.body_crit_edge ], [ %skb.094, %sch_tree_lock.exit.while.body_crit_edge ]
  %45 = ptrtoint ptr %qs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %qs, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr %qs, align 4
  %47 = ptrtoint ptr %skb.096 to i32
  call void @__asan_load4_noabort(i32 %47)
  %skb.0 = load ptr, ptr %skb.096, align 4
  %tobool27.not = icmp eq ptr %skb.0, null
  br i1 %tobool27.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %sch_tree_lock.exit.while.end_crit_edge
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i, align 8
  %and.i82 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool.not.i83 = icmp eq i32 %and.i82, 0
  br i1 %tobool.not.i83, label %if.else.i88, label %while.end.sch_tree_unlock.exit_crit_edge

while.end.sch_tree_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.else.i88:                                      ; preds = %while.end
  %dev_queue.i.i.i84 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %50 = ptrtoint ptr %dev_queue.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_queue.i.i.i84, align 8
  %qdisc_sleeping.i.i.i85 = getelementptr inbounds %struct.netdev_queue, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %qdisc_sleeping.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %qdisc_sleeping.i.i.i85, align 4
  %call1.i.i86 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i86)
  %tobool.not.i.i87 = icmp eq i32 %call1.i.i86, 0
  br i1 %tobool.not.i.i87, label %land.rhs.i.i90, label %if.else.i88.sch_tree_unlock.exit_crit_edge

if.else.i88.sch_tree_unlock.exit_crit_edge:       ; preds = %if.else.i88
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

land.rhs.i.i90:                                   ; preds = %if.else.i88
  %.b41.i.i89 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i89, label %land.rhs.i.i90.sch_tree_unlock.exit_crit_edge, label %if.then.i.i91, !prof !45

land.rhs.i.i90.sch_tree_unlock.exit_crit_edge:    ; preds = %land.rhs.i.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.then.i.i91:                                    ; preds = %land.rhs.i.i90
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i91, %land.rhs.i.i90.sch_tree_unlock.exit_crit_edge, %if.else.i88.sch_tree_unlock.exit_crit_edge, %while.end.sch_tree_unlock.exit_crit_edge
  %.sink.i92 = phi ptr [ %sch, %while.end.sch_tree_unlock.exit_crit_edge ], [ %53, %if.else.i88.sch_tree_unlock.exit_crit_edge ], [ %53, %land.rhs.i.i90.sch_tree_unlock.exit_crit_edge ], [ %53, %if.then.i.i91 ]
  %lock.i.i.i93 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i92, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i93) #12
  br label %if.end28

if.end28:                                         ; preds = %sch_tree_unlock.exit, %if.end.if.end28_crit_edge
  %backlogs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %54 = ptrtoint ptr %backlogs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %backlogs, align 4
  %arrayidx29 = getelementptr i32, ptr %55, i32 %sub
  %56 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx29, align 4
  %backlog = getelementptr inbounds %struct.gnet_stats_queue, ptr %qs, i32 0, i32 1
  %58 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %backlog, align 4
  %drops = getelementptr inbounds %struct.gnet_stats_queue, ptr %qs, i32 0, i32 2
  %59 = ptrtoint ptr %drops to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %drops, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %entry.if.end30_crit_edge
  %60 = ptrtoint ptr %qs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %qs, align 4
  %call32 = call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef null, ptr noundef nonnull %qs, i32 noundef %61) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end30.cleanup_crit_edge, label %if.end36

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %62 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flows_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %63)
  %cmp38 = icmp ult i32 %sub, %63
  br i1 %cmp38, label %if.then40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %call41 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef nonnull %xstats, i32 noundef 40) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end36.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %if.then40 ], [ -1, %if.end30.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %xstats) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qs) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_app(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_tree_reduce_backlog(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_classify(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @INET_ECN_set_ce(ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #14
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %2 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %4 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %1, label %entry.skb_protocol.exit_crit_edge [
    i16 -30552, label %entry.if.then.i.i.i_crit_edge
    i16 -32512, label %entry.if.then.i.i.i_crit_edge42
  ]

entry.if.then.i.i.i_crit_edge42:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

entry.skb_protocol.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %entry.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge42
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i.i.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp.i.i.i = icmp ult i16 %3, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !43

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 598, i32 noundef 9, ptr noundef null) #12
  br label %return

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %5 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #12
  %6 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !42
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %5, align 2, !annotation !42
  %8 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %12 = add i32 %vlan_depth.1.i.i.i, %11
  %sub.i1.i.i.i.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !45

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %14, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !43
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %15 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !43
  br i1 %15, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !43

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #12
  br label %return

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #12
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %17, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %entry.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ %1, %entry.skb_protocol.exit_crit_edge ], [ %17, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %19 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %retval.2.i.i.i, label %skb_protocol.exit.return_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb6
  ]

skb_protocol.exit.return_crit_edge:               ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %skb_protocol.exit
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %23 to i32
  %add.ptr.i = getelementptr i8, ptr %21, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 20
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i, align 8
  %cmp.not = icmp ugt ptr %add.ptr, %25
  br i1 %cmp.not, label %sw.bb.return_crit_edge, label %if.then

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %sw.bb
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 1
  %26 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tos.i, align 1
  %28 = add i8 %27, 1
  %29 = and i8 %28, 3
  %30 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool2.not.i = icmp eq i8 %29, 0
  %lnot.ext.i = zext i1 %tobool2.not.i to i32
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %conv4.i = zext i8 %29 to i16
  %add5.i = add nuw nsw i16 %conv4.i, -5
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 7
  %31 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %check.i, align 2
  %add.i.i = add i16 %32, %add5.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i, i16 %add5.i)
  %cmp.i.i = icmp ult i16 %add.i.i, %add5.i
  %conv6.i.i = zext i1 %cmp.i.i to i16
  %add7.i.i = add i16 %add.i.i, %conv6.i.i
  %33 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %add7.i.i, ptr %check.i, align 2
  %34 = or i8 %27, 3
  %35 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %tos.i, align 1
  br label %return

sw.bb6:                                           ; preds = %skb_protocol.exit
  %head.i23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i23, align 8
  %network_header.i24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i24 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i24, align 4
  %conv.i25 = zext i16 %39 to i32
  %add.ptr.i26 = getelementptr i8, ptr %37, i32 %conv.i25
  %add.ptr8 = getelementptr i8, ptr %add.ptr.i26, i32 40
  %tail.i27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i27, align 8
  %cmp10.not = icmp ugt ptr %add.ptr8, %41
  br i1 %cmp10.not, label %sw.bb6.return_crit_edge, label %if.then12

sw.bb6.return_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then12:                                        ; preds = %sw.bb6
  %42 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i26, align 2
  %44 = and i16 %43, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp.i14.not.i = icmp eq i16 %44, 0
  br i1 %cmp.i14.not.i, label %if.then12.return_crit_edge, label %if.end.i32

if.then12.return_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i32:                                       ; preds = %if.then12
  %45 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i26, align 4
  %or.i = or i32 %46, 3145728
  store i32 %or.i, ptr %add.ptr.i26, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %47 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %48 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %48)
  %cmp.i = icmp eq i16 %48, 1024
  br i1 %cmp.i, label %if.then3.i, label %if.end.i32.return_crit_edge

if.end.i32.return_crit_edge:                      ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then3.i:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #14
  %49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %neg.i.i = xor i32 %46, -1
  %add.i.i.i33 = add i32 %51, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i33, i32 %neg.i.i)
  %cmp.i.i.i34 = icmp ult i32 %add.i.i.i33, %neg.i.i
  %conv.i.i.i35 = zext i1 %cmp.i.i.i34 to i32
  %add1.i.i.i = add i32 %add.i.i.i33, %or.i
  %add.i.i36 = add i32 %add1.i.i.i, %conv.i.i.i35
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i36, i32 %or.i)
  %cmp.i.i37 = icmp ult i32 %add.i.i36, %or.i
  %conv.i.i38 = zext i1 %cmp.i.i37 to i32
  %add1.i.i = add i32 %add.i.i36, %conv.i.i38
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add1.i.i, ptr %49, align 8
  br label %return

return:                                           ; preds = %if.then3.i, %if.end.i32.return_crit_edge, %if.then12.return_crit_edge, %sw.bb6.return_crit_edge, %if.end.i, %if.then.i, %sw.bb.return_crit_edge, %skb_protocol.exit.return_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i
  %retval.0 = phi i32 [ 0, %sw.bb6.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %skb_protocol.exit.return_crit_edge ], [ 1, %if.end.i ], [ %lnot.ext.i, %if.then.i ], [ 0, %if.then12.return_crit_edge ], [ 1, %if.then3.i ], [ 1, %if.end.i32.return_crit_edge ], [ 0, %do.end.i.i.i ], [ 0, %cleanup.thread.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_kfree_skbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !21, !22, !23, !25, !27, !28, !30}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_sch_fq_codel__507_740_fq_codel_module_init6, !1, !"__initcall__kmod_sch_fq_codel__507_740_fq_codel_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_fq_codel.c", i32 740, i32 1}
!2 = !{ptr @__exitcall_fq_codel_module_exit, !3, !"__exitcall_fq_codel_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_fq_codel.c", i32 741, i32 1}
!4 = !{ptr @__UNIQUE_ID_author508, !5, !"__UNIQUE_ID_author508", i1 false, i1 false}
!5 = !{!"../net/sched/sch_fq_codel.c", i32 742, i32 1}
!6 = !{ptr @__UNIQUE_ID_file509, !7, !"__UNIQUE_ID_file509", i1 false, i1 false}
!7 = !{!"../net/sched/sch_fq_codel.c", i32 743, i32 1}
!8 = !{ptr @__UNIQUE_ID_license510, !7, !"__UNIQUE_ID_license510", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description511, !10, !"__UNIQUE_ID_description511", i1 false, i1 false}
!10 = !{!"../net/sched/sch_fq_codel.c", i32 744, i32 1}
!11 = !{ptr @fq_codel_qdisc_ops, !12, !"fq_codel_qdisc_ops", i1 false, i1 false}
!12 = !{!"../net/sched/sch_fq_codel.c", i32 714, i32 25}
!13 = !{ptr @fq_codel_class_ops, !14, !"fq_codel_class_ops", i1 false, i1 false}
!14 = !{!"../net/sched/sch_fq_codel.c", i32 703, i32 37}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/sched/sch_fq_codel.c", i32 89, i32 11}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @fq_codel_change.__msg, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../net/sched/sch_fq_codel.c", i32 395, i32 4}
!30 = !{ptr @fq_codel_policy, !31, !"fq_codel_policy", i1 false, i1 false}
!31 = !{!"../net/sched/sch_fq_codel.c", i32 355, i32 32}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i8 0, i8 2}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2149882161}
!47 = !{i64 2149887093}
!48 = !{i64 2149908805}
!49 = !{i64 2149913697}
!50 = !{i64 2149990154}
!51 = !{i64 2149990479}
!52 = !{i64 718883, i64 718910, i64 718932, i64 718960}
!53 = !{i64 719291, i64 719318, i64 719351, i64 719372, i64 719399, i64 719425}
