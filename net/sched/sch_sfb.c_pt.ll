; ModuleID = '/llk/IR_all_yes/net/sched/sch_sfb.c_pt.bc'
source_filename = "../net/sched/sch_sfb.c"
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
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.tc_sfb_qopt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.49 }
%union.anon.49 = type { i32 }
%struct.tcf_result = type { %union.anon.142 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { i32, i32 }
%struct.sfb_sched_data = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x %struct.sfb_bins], %struct.anon.152 }
%struct.sfb_bins = type { %struct.siphash_key_t, [8 x [16 x %struct.sfb_bucket]] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.sfb_bucket = type { i16, i16 }
%struct.anon.152 = type { i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.113, [48 x i8], %union.anon.114, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.116, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.113 = type { i64 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, ptr }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.118, i32, i32, i32, i16, i16, %union.anon.120, i32, %union.anon.121, %union.anon.122, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.118 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.146, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.146 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tc_sfb_xstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@sfb_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @sfb_class_ops, [16 x i8] c"sfb\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1144, i32 0, ptr @sfb_enqueue, ptr @sfb_dequeue, ptr @sfb_peek, ptr @sfb_init, ptr @sfb_reset, ptr @sfb_destroy, ptr @sfb_change, ptr null, ptr null, ptr null, ptr @sfb_dump, ptr @sfb_dump_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_sfb__525_726_sfb_module_init6 = internal global ptr @sfb_module_init, section ".initcall6.init", align 4
@__exitcall_sfb_module_exit = internal global ptr @sfb_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description526 = internal constant [58 x i8] c"sch_sfb.description=Stochastic Fair Blue queue discipline\00", section ".modinfo", align 1
@__UNIQUE_ID_author527 = internal constant [34 x i8] c"sch_sfb.author=Juliusz Chroboczek\00", section ".modinfo", align 1
@__UNIQUE_ID_author528 = internal constant [28 x i8] c"sch_sfb.author=Eric Dumazet\00", section ".modinfo", align 1
@__UNIQUE_ID_file529 = internal constant [31 x i8] c"sch_sfb.file=net/sched/sch_sfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license530 = internal constant [20 x i8] c"sch_sfb.license=GPL\00", section ".modinfo", align 1
@sfb_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr @sfb_graft, ptr @sfb_leaf, ptr null, ptr @sfb_find, ptr @sfb_change_class, ptr @sfb_delete, ptr @sfb_walk, ptr @sfb_tcf_block, ptr @sfb_bind, ptr @sfb_unbind, ptr @sfb_dump_class, ptr null }, [40 x i8] zeroinitializer }, align 32
@noop_qdisc = external dso_local global %struct.Qdisc, align 128
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sfb_enqueue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sched/sch_sfb.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@qdisc_calculate_pkt_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@sfb_default_ops = internal constant { %struct.tc_sfb_qopt, [60 x i8] } { %struct.tc_sfb_qopt { i32 600000, i32 60000, i32 25, i32 20, i32 66, i32 11, i32 0, i32 10, i32 20 }, [60 x i8] zeroinitializer }, align 32
@sfb_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 36, %union.anon.49 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@pfifo_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"sfb_class_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 687, i32 37 }
@___asan_gen_.17 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 596, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 311, i32 7 }
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 598, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 271, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"sfb_default_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 476, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"sfb_policy\00", align 1
@___asan_gen_.35 = private constant [23 x i8] c"../net/sched/sch_sfb.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 472, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 991, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author527, ptr @__UNIQUE_ID_author528, ptr @__UNIQUE_ID_description526, ptr @__UNIQUE_ID_file529, ptr @__UNIQUE_ID_license530, ptr @__exitcall_sfb_module_exit, ptr @__initcall__kmod_sch_sfb__525_726_sfb_module_init6, ptr @sfb_module_exit, ptr @sfb_class_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sfb_default_ops, ptr @sfb_policy, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfb_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfb_default_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfb_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sfb_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @sfb_qdisc_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sfb_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @sfb_qdisc_ops) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfb_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  %res.i = alloca %struct.tcf_result, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %privdata.i, align 8
  %slot1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %2 = ptrtoint ptr %slot1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %slot1, align 4
  %conv = zext i8 %3 to i32
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %4 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen, align 8
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %6 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %if.end, label %if.then, !prof !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %overlimits.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %8 = ptrtoint ptr %overlimits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %overlimits.i, align 16
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %overlimits.i, align 16
  %queuedrop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 44
  %10 = ptrtoint ptr %queuedrop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %queuedrop, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %queuedrop, align 4
  br label %drop

if.end:                                           ; preds = %entry
  %rehash_interval = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %12 = ptrtoint ptr %rehash_interval to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rehash_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5.not = icmp eq i32 %13, 0
  br i1 %cmp5.not, label %if.end.if.end38_crit_edge, label %if.then7

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then7:                                         ; preds = %if.end
  %rehash_time = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %14 = ptrtoint ptr %rehash_time to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rehash_time, align 4
  %add = add i32 %15, %13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp10 = icmp slt i32 %sub, 0
  br i1 %cmp10, label %if.then18, label %if.else, !prof !49

if.then18:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %conv
  tail call void @get_random_bytes(ptr noundef %arrayidx.i.i, i32 noundef 16) #12
  %17 = ptrtoint ptr %slot1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %slot1, align 4
  %19 = xor i8 %18, 1
  store i8 %19, ptr %slot1, align 4
  %double_buffering.i = getelementptr inbounds %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 16
  %20 = ptrtoint ptr %double_buffering.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %double_buffering.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %22 = ptrtoint ptr %rehash_time to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rehash_time, align 4
  br label %if.end38

if.else:                                          ; preds = %if.then7
  %double_buffering = getelementptr inbounds %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 16
  %23 = ptrtoint ptr %double_buffering to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %double_buffering, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool20.not = icmp eq i8 %24, 0
  br i1 %tobool20.not, label %land.lhs.true, label %if.else.if.end38_crit_edge

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true:                                    ; preds = %if.else
  %warmup_time = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %25 = ptrtoint ptr %warmup_time to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %warmup_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp21.not = icmp eq i32 %26, 0
  br i1 %cmp21.not, label %land.lhs.true.if.end38_crit_edge, label %land.rhs

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.rhs:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %28 = add i32 %26, %27
  %sub25 = sub i32 %add, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub25)
  %cmp26 = icmp slt i32 %sub25, 0
  br i1 %cmp26, label %if.then34, label %land.rhs.if.end38_crit_edge, !prof !49

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then34:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %double_buffering to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %double_buffering, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %land.rhs.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %if.else.if.end38_crit_edge, %if.then18, %if.end.if.end38_crit_edge
  %filter_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %30 = ptrtoint ptr %filter_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %filter_list, align 4
  %call40 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %if.end38.do.end50_crit_edge

if.end38.do.end50_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end50

land.lhs.true42:                                  ; preds = %if.end38
  %call43 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true42.do.end50_crit_edge, label %land.lhs.true45

land.lhs.true42.do.end50_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end50

land.lhs.true45:                                  ; preds = %land.lhs.true42
  %.b352 = load i1, ptr @sfb_enqueue.__warned, align 1
  br i1 %.b352, label %land.lhs.true45.do.end50_crit_edge, label %if.then47

land.lhs.true45.do.end50_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end50

if.then47:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @sfb_enqueue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 311, ptr noundef nonnull @.str.3) #12
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %land.lhs.true45.do.end50_crit_edge, %land.lhs.true42.do.end50_crit_edge, %if.end38.do.end50_crit_edge
  %tobool52.not = icmp eq ptr %31, null
  br i1 %tobool52.not, label %if.else59, label %if.then53

if.then53:                                        ; preds = %do.end50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i) #12
  %32 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %res.i, align 4, !annotation !51
  %33 = getelementptr inbounds %struct.anon.143, ptr %res.i, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %33, align 4, !annotation !51
  %call.i = call i32 @tcf_classify(ptr noundef %skb, ptr noundef null, ptr noundef nonnull %31, ptr noundef nonnull %res.i, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.then53.if.then243_crit_edge

if.then53.if.then243_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then243

if.then.i:                                        ; preds = %if.then53
  %35 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %cleanup.thread [
    i32 4, label %if.then.i.other_drop.thread393_crit_edge
    i32 5, label %if.then.i.other_drop.thread393_crit_edge413
    i32 8, label %if.then.i.other_drop.thread393_crit_edge414
    i32 2, label %if.then.i.if.then243_crit_edge
  ]

if.then.i.if.then243_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then243

if.then.i.other_drop.thread393_crit_edge414:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %other_drop.thread393

if.then.i.other_drop.thread393_crit_edge413:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %other_drop.thread393

if.then.i.other_drop.thread393_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %other_drop.thread393

cleanup.thread:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %33, align 4
  %and.i = and i32 %37, 65535
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #12
  %arrayidx = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %conv
  %call57 = call i64 @siphash_1u32(i32 noundef %and.i, ptr noundef %arrayidx) #12
  %conv58 = trunc i64 %call57 to i32
  br label %if.end64

if.else59:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx61 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %conv
  %call63 = tail call i32 @skb_get_hash_perturb(ptr noundef %skb, ptr noundef %arrayidx61) #12
  br label %if.end64

if.end64:                                         ; preds = %if.else59, %cleanup.thread
  %sfbhash.1 = phi i32 [ %call63, %if.else59 ], [ %conv58, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sfbhash.1)
  %tobool65.not = icmp eq i32 %sfbhash.1, 0
  %spec.store.select = select i1 %tobool65.not, i32 1, i32 %sfbhash.1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %arrayidx69 = getelementptr [2 x i32], ptr %data.i, i32 0, i32 %conv
  %38 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.store.select, ptr %arrayidx69, align 4
  %bin_size = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %increment.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %decrement.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end89.for.body_crit_edge, %if.end64
  %sfbhash.2402 = phi i32 [ %spec.store.select, %if.end64 ], [ %shr, %if.end89.for.body_crit_edge ]
  %minqlen.0401 = phi i32 [ -1, %if.end64 ], [ %56, %if.end89.for.body_crit_edge ]
  %p_min.0400 = phi i32 [ -1, %if.end64 ], [ %59, %if.end89.for.body_crit_edge ]
  %i.0398 = phi i32 [ 0, %if.end64 ], [ %inc105, %if.end89.for.body_crit_edge ]
  %and = and i32 %sfbhash.2402, 15
  %arrayidx76 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %conv, i32 1, i32 %i.0398, i32 %and
  %shr = lshr i32 %sfbhash.2402, 4
  %39 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx76, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp79 = icmp eq i16 %40, 0
  br i1 %cmp79, label %if.then81, label %if.else82

if.then81:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %conv, i32 1, i32 %i.0398, i32 %and, i32 1
  %41 = ptrtoint ptr %p_mark.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %p_mark.i, align 2
  %conv.i354 = zext i16 %42 to i32
  %43 = ptrtoint ptr %decrement.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %decrement.i, align 8
  %45 = call i32 @llvm.usub.sat.i32(i32 %conv.i354, i32 %44) #12
  br label %if.end89.sink.split

if.else82:                                        ; preds = %for.body
  %conv78 = zext i16 %40 to i32
  %46 = ptrtoint ptr %bin_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bin_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv78)
  %cmp85.not = icmp ugt i32 %47, %conv78
  br i1 %cmp85.not, label %if.else82.if.end89_crit_edge, label %if.then87

if.else82.if.end89_crit_edge:                     ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then87:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i355 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %conv, i32 1, i32 %i.0398, i32 %and, i32 1
  %48 = ptrtoint ptr %p_mark.i355 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %p_mark.i355, align 2
  %conv.i356 = zext i16 %49 to i32
  %50 = ptrtoint ptr %increment.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %increment.i, align 4
  %add.i.i = add i32 %51, %conv.i356
  %52 = call i32 @llvm.umin.i32(i32 %add.i.i, i32 65535) #12
  br label %if.end89.sink.split

if.end89.sink.split:                              ; preds = %if.then87, %if.then81
  %.sink = phi i32 [ %52, %if.then87 ], [ %45, %if.then81 ]
  %p_mark.i355.sink = phi ptr [ %p_mark.i355, %if.then87 ], [ %p_mark.i, %if.then81 ]
  %conv1.i357 = trunc i32 %.sink to i16
  %53 = ptrtoint ptr %p_mark.i355.sink to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv1.i357, ptr %p_mark.i355.sink, align 2
  br label %if.end89

if.end89:                                         ; preds = %if.end89.sink.split, %if.else82.if.end89_crit_edge
  %54 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx76, align 2
  %conv91 = zext i16 %55 to i32
  %56 = call i32 @llvm.umin.i32(i32 %minqlen.0401, i32 %conv91)
  %p_mark = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %conv, i32 1, i32 %i.0398, i32 %and, i32 1
  %57 = ptrtoint ptr %p_mark to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %p_mark, align 2
  %conv98 = zext i16 %58 to i32
  %59 = call i32 @llvm.umin.i32(i32 %p_min.0400, i32 %conv98)
  %inc105 = add nuw nsw i32 %i.0398, 1
  %exitcond.not = icmp eq i32 %inc105, 8
  br i1 %exitcond.not, label %for.end, label %if.end89.for.body_crit_edge

if.end89.for.body_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end89
  %xor = xor i32 %conv, 1
  %arrayidx108 = getelementptr [2 x i32], ptr %data.i, i32 0, i32 %xor
  %60 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %arrayidx108, align 4
  %max = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %61 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %62)
  %cmp109.not = icmp ult i32 %56, %62
  br i1 %cmp109.not, label %if.end120, label %if.then117, !prof !48

if.then117:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %overlimits.i359 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %63 = ptrtoint ptr %overlimits.i359 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %overlimits.i359, align 16
  %inc.i360 = add i32 %64, 1
  store i32 %inc.i360, ptr %overlimits.i359, align 16
  %bucketdrop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 40
  %65 = ptrtoint ptr %bucketdrop to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bucketdrop, align 8
  %inc119 = add i32 %66, 1
  store i32 %inc119, ptr %bucketdrop, align 8
  br label %drop

if.end120:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %59)
  %cmp121 = icmp eq i32 %59, 65535
  br i1 %cmp121, label %if.then129, label %if.end179, !prof !49

if.then129:                                       ; preds = %if.end120
  %double_buffering130 = getelementptr inbounds %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 16
  %67 = ptrtoint ptr %double_buffering130 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %double_buffering130, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool131.not = icmp eq i8 %68, 0
  br i1 %tobool131.not, label %if.then129.if.end173_crit_edge, label %if.then132

if.then129.if.end173_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.then132:                                       ; preds = %if.then129
  %arrayidx134 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor
  %call136 = call i32 @skb_get_hash_perturb(ptr noundef %skb, ptr noundef %arrayidx134) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  %spec.store.select255 = select i1 %tobool137.not, i32 1, i32 %call136
  %69 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %spec.store.select255, ptr %arrayidx108, align 4
  %and148 = and i32 %spec.store.select255, 15
  %arrayidx154 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 0, i32 %and148
  %shr155 = lshr i32 %spec.store.select255, 4
  %70 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx154, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %cmp158 = icmp eq i16 %71, 0
  br i1 %cmp158, label %if.then160, label %if.else161

if.then160:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i362 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 0, i32 %and148, i32 1
  %72 = ptrtoint ptr %p_mark.i362 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %p_mark.i362, align 2
  %conv.i363 = zext i16 %73 to i32
  %74 = ptrtoint ptr %decrement.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %decrement.i, align 8
  %76 = call i32 @llvm.usub.sat.i32(i32 %conv.i363, i32 %75) #12
  br label %if.end169.sink.split

if.else161:                                       ; preds = %if.then132
  %conv157 = zext i16 %71 to i32
  %77 = ptrtoint ptr %bin_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bin_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %conv157)
  %cmp165.not = icmp ugt i32 %78, %conv157
  br i1 %cmp165.not, label %if.else161.if.end169_crit_edge, label %if.then167

if.else161.if.end169_crit_edge:                   ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end169

if.then167:                                       ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i366 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 0, i32 %and148, i32 1
  %79 = ptrtoint ptr %p_mark.i366 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %p_mark.i366, align 2
  %conv.i367 = zext i16 %80 to i32
  %81 = ptrtoint ptr %increment.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %increment.i, align 4
  %add.i.i369 = add i32 %82, %conv.i367
  %83 = call i32 @llvm.umin.i32(i32 %add.i.i369, i32 65535) #12
  br label %if.end169.sink.split

if.end169.sink.split:                             ; preds = %if.then167, %if.then160
  %.sink409 = phi i32 [ %83, %if.then167 ], [ %76, %if.then160 ]
  %p_mark.i366.sink = phi ptr [ %p_mark.i366, %if.then167 ], [ %p_mark.i362, %if.then160 ]
  %conv1.i370 = trunc i32 %.sink409 to i16
  %84 = ptrtoint ptr %p_mark.i366.sink to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv1.i370, ptr %p_mark.i366.sink, align 2
  br label %if.end169

if.end169:                                        ; preds = %if.end169.sink.split, %if.else161.if.end169_crit_edge
  %and148.1 = and i32 %shr155, 15
  %arrayidx154.1 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 1, i32 %and148.1
  %shr155.1 = lshr i32 %spec.store.select255, 8
  %85 = ptrtoint ptr %arrayidx154.1 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx154.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp158.1 = icmp eq i16 %86, 0
  br i1 %cmp158.1, label %if.then160.1, label %if.else161.1

if.else161.1:                                     ; preds = %if.end169
  %conv157.1 = zext i16 %86 to i32
  %87 = ptrtoint ptr %bin_size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bin_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %conv157.1)
  %cmp165.not.1 = icmp ugt i32 %88, %conv157.1
  br i1 %cmp165.not.1, label %if.else161.1.if.end169.1_crit_edge, label %if.then167.1

if.else161.1.if.end169.1_crit_edge:               ; preds = %if.else161.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end169.1

if.then167.1:                                     ; preds = %if.else161.1
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i366.1 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 1, i32 %and148.1, i32 1
  %89 = ptrtoint ptr %p_mark.i366.1 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %p_mark.i366.1, align 2
  %conv.i367.1 = zext i16 %90 to i32
  %91 = ptrtoint ptr %increment.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %increment.i, align 4
  %add.i.i369.1 = add i32 %92, %conv.i367.1
  %93 = call i32 @llvm.umin.i32(i32 %add.i.i369.1, i32 65535) #12
  br label %if.end169.sink.split.1

if.then160.1:                                     ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i362.1 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 1, i32 %and148.1, i32 1
  %94 = ptrtoint ptr %p_mark.i362.1 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %p_mark.i362.1, align 2
  %conv.i363.1 = zext i16 %95 to i32
  %96 = ptrtoint ptr %decrement.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %decrement.i, align 8
  %98 = call i32 @llvm.usub.sat.i32(i32 %conv.i363.1, i32 %97) #12
  br label %if.end169.sink.split.1

if.end169.sink.split.1:                           ; preds = %if.then160.1, %if.then167.1
  %.sink409.1 = phi i32 [ %93, %if.then167.1 ], [ %98, %if.then160.1 ]
  %p_mark.i366.sink.1 = phi ptr [ %p_mark.i366.1, %if.then167.1 ], [ %p_mark.i362.1, %if.then160.1 ]
  %conv1.i370.1 = trunc i32 %.sink409.1 to i16
  %99 = ptrtoint ptr %p_mark.i366.sink.1 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv1.i370.1, ptr %p_mark.i366.sink.1, align 2
  br label %if.end169.1

if.end169.1:                                      ; preds = %if.end169.sink.split.1, %if.else161.1.if.end169.1_crit_edge
  %and148.2 = and i32 %shr155.1, 15
  %arrayidx154.2 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 2, i32 %and148.2
  %shr155.2 = lshr i32 %spec.store.select255, 12
  %100 = ptrtoint ptr %arrayidx154.2 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx154.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %cmp158.2 = icmp eq i16 %101, 0
  br i1 %cmp158.2, label %if.then160.2, label %if.else161.2

if.else161.2:                                     ; preds = %if.end169.1
  %conv157.2 = zext i16 %101 to i32
  %102 = ptrtoint ptr %bin_size to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bin_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %conv157.2)
  %cmp165.not.2 = icmp ugt i32 %103, %conv157.2
  br i1 %cmp165.not.2, label %if.else161.2.if.end169.2_crit_edge, label %if.then167.2

if.else161.2.if.end169.2_crit_edge:               ; preds = %if.else161.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end169.2

if.then167.2:                                     ; preds = %if.else161.2
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i366.2 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 2, i32 %and148.2, i32 1
  %104 = ptrtoint ptr %p_mark.i366.2 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %p_mark.i366.2, align 2
  %conv.i367.2 = zext i16 %105 to i32
  %106 = ptrtoint ptr %increment.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %increment.i, align 4
  %add.i.i369.2 = add i32 %107, %conv.i367.2
  %108 = call i32 @llvm.umin.i32(i32 %add.i.i369.2, i32 65535) #12
  br label %if.end169.sink.split.2

if.then160.2:                                     ; preds = %if.end169.1
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i362.2 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 2, i32 %and148.2, i32 1
  %109 = ptrtoint ptr %p_mark.i362.2 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %p_mark.i362.2, align 2
  %conv.i363.2 = zext i16 %110 to i32
  %111 = ptrtoint ptr %decrement.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %decrement.i, align 8
  %113 = call i32 @llvm.usub.sat.i32(i32 %conv.i363.2, i32 %112) #12
  br label %if.end169.sink.split.2

if.end169.sink.split.2:                           ; preds = %if.then160.2, %if.then167.2
  %.sink409.2 = phi i32 [ %108, %if.then167.2 ], [ %113, %if.then160.2 ]
  %p_mark.i366.sink.2 = phi ptr [ %p_mark.i366.2, %if.then167.2 ], [ %p_mark.i362.2, %if.then160.2 ]
  %conv1.i370.2 = trunc i32 %.sink409.2 to i16
  %114 = ptrtoint ptr %p_mark.i366.sink.2 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv1.i370.2, ptr %p_mark.i366.sink.2, align 2
  br label %if.end169.2

if.end169.2:                                      ; preds = %if.end169.sink.split.2, %if.else161.2.if.end169.2_crit_edge
  %and148.3 = and i32 %shr155.2, 15
  %arrayidx154.3 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 3, i32 %and148.3
  %shr155.3 = lshr i32 %spec.store.select255, 16
  %115 = ptrtoint ptr %arrayidx154.3 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx154.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %cmp158.3 = icmp eq i16 %116, 0
  br i1 %cmp158.3, label %if.then160.3, label %if.else161.3

if.else161.3:                                     ; preds = %if.end169.2
  %conv157.3 = zext i16 %116 to i32
  %117 = ptrtoint ptr %bin_size to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bin_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %conv157.3)
  %cmp165.not.3 = icmp ugt i32 %118, %conv157.3
  br i1 %cmp165.not.3, label %if.else161.3.if.end169.3_crit_edge, label %if.then167.3

if.else161.3.if.end169.3_crit_edge:               ; preds = %if.else161.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end169.3

if.then167.3:                                     ; preds = %if.else161.3
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i366.3 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 3, i32 %and148.3, i32 1
  %119 = ptrtoint ptr %p_mark.i366.3 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %p_mark.i366.3, align 2
  %conv.i367.3 = zext i16 %120 to i32
  %121 = ptrtoint ptr %increment.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %increment.i, align 4
  %add.i.i369.3 = add i32 %122, %conv.i367.3
  %123 = call i32 @llvm.umin.i32(i32 %add.i.i369.3, i32 65535) #12
  br label %if.end169.sink.split.3

if.then160.3:                                     ; preds = %if.end169.2
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i362.3 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 3, i32 %and148.3, i32 1
  %124 = ptrtoint ptr %p_mark.i362.3 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %p_mark.i362.3, align 2
  %conv.i363.3 = zext i16 %125 to i32
  %126 = ptrtoint ptr %decrement.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %decrement.i, align 8
  %128 = call i32 @llvm.usub.sat.i32(i32 %conv.i363.3, i32 %127) #12
  br label %if.end169.sink.split.3

if.end169.sink.split.3:                           ; preds = %if.then160.3, %if.then167.3
  %.sink409.3 = phi i32 [ %123, %if.then167.3 ], [ %128, %if.then160.3 ]
  %p_mark.i366.sink.3 = phi ptr [ %p_mark.i366.3, %if.then167.3 ], [ %p_mark.i362.3, %if.then160.3 ]
  %conv1.i370.3 = trunc i32 %.sink409.3 to i16
  %129 = ptrtoint ptr %p_mark.i366.sink.3 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv1.i370.3, ptr %p_mark.i366.sink.3, align 2
  br label %if.end169.3

if.end169.3:                                      ; preds = %if.end169.sink.split.3, %if.else161.3.if.end169.3_crit_edge
  %and148.4 = and i32 %shr155.3, 15
  %arrayidx154.4 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 4, i32 %and148.4
  %shr155.4 = lshr i32 %spec.store.select255, 20
  %130 = ptrtoint ptr %arrayidx154.4 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx154.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %cmp158.4 = icmp eq i16 %131, 0
  br i1 %cmp158.4, label %if.then160.4, label %if.else161.4

if.else161.4:                                     ; preds = %if.end169.3
  %conv157.4 = zext i16 %131 to i32
  %132 = ptrtoint ptr %bin_size to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %bin_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %conv157.4)
  %cmp165.not.4 = icmp ugt i32 %133, %conv157.4
  br i1 %cmp165.not.4, label %if.else161.4.if.end169.4_crit_edge, label %if.then167.4

if.else161.4.if.end169.4_crit_edge:               ; preds = %if.else161.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end169.4

if.then167.4:                                     ; preds = %if.else161.4
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i366.4 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 4, i32 %and148.4, i32 1
  %134 = ptrtoint ptr %p_mark.i366.4 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %p_mark.i366.4, align 2
  %conv.i367.4 = zext i16 %135 to i32
  %136 = ptrtoint ptr %increment.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %increment.i, align 4
  %add.i.i369.4 = add i32 %137, %conv.i367.4
  %138 = call i32 @llvm.umin.i32(i32 %add.i.i369.4, i32 65535) #12
  br label %if.end169.sink.split.4

if.then160.4:                                     ; preds = %if.end169.3
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i362.4 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 4, i32 %and148.4, i32 1
  %139 = ptrtoint ptr %p_mark.i362.4 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %p_mark.i362.4, align 2
  %conv.i363.4 = zext i16 %140 to i32
  %141 = ptrtoint ptr %decrement.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %decrement.i, align 8
  %143 = call i32 @llvm.usub.sat.i32(i32 %conv.i363.4, i32 %142) #12
  br label %if.end169.sink.split.4

if.end169.sink.split.4:                           ; preds = %if.then160.4, %if.then167.4
  %.sink409.4 = phi i32 [ %138, %if.then167.4 ], [ %143, %if.then160.4 ]
  %p_mark.i366.sink.4 = phi ptr [ %p_mark.i366.4, %if.then167.4 ], [ %p_mark.i362.4, %if.then160.4 ]
  %conv1.i370.4 = trunc i32 %.sink409.4 to i16
  %144 = ptrtoint ptr %p_mark.i366.sink.4 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv1.i370.4, ptr %p_mark.i366.sink.4, align 2
  br label %if.end169.4

if.end169.4:                                      ; preds = %if.end169.sink.split.4, %if.else161.4.if.end169.4_crit_edge
  %and148.5 = and i32 %shr155.4, 15
  %arrayidx154.5 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 5, i32 %and148.5
  %shr155.5 = lshr i32 %spec.store.select255, 24
  %145 = ptrtoint ptr %arrayidx154.5 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx154.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %cmp158.5 = icmp eq i16 %146, 0
  br i1 %cmp158.5, label %if.then160.5, label %if.else161.5

if.else161.5:                                     ; preds = %if.end169.4
  %conv157.5 = zext i16 %146 to i32
  %147 = ptrtoint ptr %bin_size to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %bin_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %conv157.5)
  %cmp165.not.5 = icmp ugt i32 %148, %conv157.5
  br i1 %cmp165.not.5, label %if.else161.5.if.end169.5_crit_edge, label %if.then167.5

if.else161.5.if.end169.5_crit_edge:               ; preds = %if.else161.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end169.5

if.then167.5:                                     ; preds = %if.else161.5
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i366.5 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 5, i32 %and148.5, i32 1
  %149 = ptrtoint ptr %p_mark.i366.5 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %p_mark.i366.5, align 2
  %conv.i367.5 = zext i16 %150 to i32
  %151 = ptrtoint ptr %increment.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %increment.i, align 4
  %add.i.i369.5 = add i32 %152, %conv.i367.5
  %153 = call i32 @llvm.umin.i32(i32 %add.i.i369.5, i32 65535) #12
  br label %if.end169.sink.split.5

if.then160.5:                                     ; preds = %if.end169.4
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i362.5 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 5, i32 %and148.5, i32 1
  %154 = ptrtoint ptr %p_mark.i362.5 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %p_mark.i362.5, align 2
  %conv.i363.5 = zext i16 %155 to i32
  %156 = ptrtoint ptr %decrement.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %decrement.i, align 8
  %158 = call i32 @llvm.usub.sat.i32(i32 %conv.i363.5, i32 %157) #12
  br label %if.end169.sink.split.5

if.end169.sink.split.5:                           ; preds = %if.then160.5, %if.then167.5
  %.sink409.5 = phi i32 [ %153, %if.then167.5 ], [ %158, %if.then160.5 ]
  %p_mark.i366.sink.5 = phi ptr [ %p_mark.i366.5, %if.then167.5 ], [ %p_mark.i362.5, %if.then160.5 ]
  %conv1.i370.5 = trunc i32 %.sink409.5 to i16
  %159 = ptrtoint ptr %p_mark.i366.sink.5 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv1.i370.5, ptr %p_mark.i366.sink.5, align 2
  br label %if.end169.5

if.end169.5:                                      ; preds = %if.end169.sink.split.5, %if.else161.5.if.end169.5_crit_edge
  %and148.6 = and i32 %shr155.5, 15
  %arrayidx154.6 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 6, i32 %and148.6
  %shr155.6 = lshr i32 %spec.store.select255, 28
  %160 = ptrtoint ptr %arrayidx154.6 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %arrayidx154.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %161)
  %cmp158.6 = icmp eq i16 %161, 0
  br i1 %cmp158.6, label %if.then160.6, label %if.else161.6

if.else161.6:                                     ; preds = %if.end169.5
  %conv157.6 = zext i16 %161 to i32
  %162 = ptrtoint ptr %bin_size to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %bin_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %conv157.6)
  %cmp165.not.6 = icmp ugt i32 %163, %conv157.6
  br i1 %cmp165.not.6, label %if.else161.6.if.end169.6_crit_edge, label %if.then167.6

if.else161.6.if.end169.6_crit_edge:               ; preds = %if.else161.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end169.6

if.then167.6:                                     ; preds = %if.else161.6
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i366.6 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 6, i32 %and148.6, i32 1
  %164 = ptrtoint ptr %p_mark.i366.6 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %p_mark.i366.6, align 2
  %conv.i367.6 = zext i16 %165 to i32
  %166 = ptrtoint ptr %increment.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %increment.i, align 4
  %add.i.i369.6 = add i32 %167, %conv.i367.6
  %168 = call i32 @llvm.umin.i32(i32 %add.i.i369.6, i32 65535) #12
  br label %if.end169.sink.split.6

if.then160.6:                                     ; preds = %if.end169.5
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i362.6 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 6, i32 %and148.6, i32 1
  %169 = ptrtoint ptr %p_mark.i362.6 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %p_mark.i362.6, align 2
  %conv.i363.6 = zext i16 %170 to i32
  %171 = ptrtoint ptr %decrement.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %decrement.i, align 8
  %173 = call i32 @llvm.usub.sat.i32(i32 %conv.i363.6, i32 %172) #12
  br label %if.end169.sink.split.6

if.end169.sink.split.6:                           ; preds = %if.then160.6, %if.then167.6
  %.sink409.6 = phi i32 [ %168, %if.then167.6 ], [ %173, %if.then160.6 ]
  %p_mark.i366.sink.6 = phi ptr [ %p_mark.i366.6, %if.then167.6 ], [ %p_mark.i362.6, %if.then160.6 ]
  %conv1.i370.6 = trunc i32 %.sink409.6 to i16
  %174 = ptrtoint ptr %p_mark.i366.sink.6 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv1.i370.6, ptr %p_mark.i366.sink.6, align 2
  br label %if.end169.6

if.end169.6:                                      ; preds = %if.end169.sink.split.6, %if.else161.6.if.end169.6_crit_edge
  %arrayidx154.7 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 7, i32 %shr155.6
  %175 = ptrtoint ptr %arrayidx154.7 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %arrayidx154.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %176)
  %cmp158.7 = icmp eq i16 %176, 0
  br i1 %cmp158.7, label %if.then160.7, label %if.else161.7

if.else161.7:                                     ; preds = %if.end169.6
  %conv157.7 = zext i16 %176 to i32
  %177 = ptrtoint ptr %bin_size to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %bin_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %178, i32 %conv157.7)
  %cmp165.not.7 = icmp ugt i32 %178, %conv157.7
  br i1 %cmp165.not.7, label %if.else161.7.if.end173_crit_edge, label %if.then167.7

if.else161.7.if.end173_crit_edge:                 ; preds = %if.else161.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.then167.7:                                     ; preds = %if.else161.7
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i366.7 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 7, i32 %shr155.6, i32 1
  %179 = ptrtoint ptr %p_mark.i366.7 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %p_mark.i366.7, align 2
  %conv.i367.7 = zext i16 %180 to i32
  %181 = ptrtoint ptr %increment.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %increment.i, align 4
  %add.i.i369.7 = add i32 %182, %conv.i367.7
  %183 = call i32 @llvm.umin.i32(i32 %add.i.i369.7, i32 65535) #12
  br label %if.end169.sink.split.7

if.then160.7:                                     ; preds = %if.end169.6
  call void @__sanitizer_cov_trace_pc() #14
  %p_mark.i362.7 = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %xor, i32 1, i32 7, i32 %shr155.6, i32 1
  %184 = ptrtoint ptr %p_mark.i362.7 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %p_mark.i362.7, align 2
  %conv.i363.7 = zext i16 %185 to i32
  %186 = ptrtoint ptr %decrement.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %decrement.i, align 8
  %188 = call i32 @llvm.usub.sat.i32(i32 %conv.i363.7, i32 %187) #12
  br label %if.end169.sink.split.7

if.end169.sink.split.7:                           ; preds = %if.then160.7, %if.then167.7
  %.sink409.7 = phi i32 [ %183, %if.then167.7 ], [ %188, %if.then160.7 ]
  %p_mark.i366.sink.7 = phi ptr [ %p_mark.i366.7, %if.then167.7 ], [ %p_mark.i362.7, %if.then160.7 ]
  %conv1.i370.7 = trunc i32 %.sink409.7 to i16
  %189 = ptrtoint ptr %p_mark.i366.sink.7 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv1.i370.7, ptr %p_mark.i366.sink.7, align 2
  br label %if.end173

if.end173:                                        ; preds = %if.end169.sink.split.7, %if.else161.7.if.end173_crit_edge, %if.then129.if.end173_crit_edge
  %call174 = call fastcc zeroext i1 @sfb_rate_limit(ptr noundef %privdata.i)
  br i1 %call174, label %if.then175, label %if.end173.enqueue_crit_edge

if.end173.enqueue_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  br label %enqueue

if.then175:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  %overlimits.i371 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %190 = ptrtoint ptr %overlimits.i371 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %overlimits.i371, align 16
  %inc.i372 = add i32 %191, 1
  store i32 %inc.i372, ptr %overlimits.i371, align 16
  %penaltydrop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 36
  %192 = ptrtoint ptr %penaltydrop to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %penaltydrop, align 4
  %inc177 = add i32 %193, 1
  store i32 %inc177, ptr %penaltydrop, align 4
  br label %drop

if.end179:                                        ; preds = %if.end120
  %call180 = call i32 @prandom_u32() #12
  %and181 = and i32 %call180, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and181, i32 %59)
  %cmp182 = icmp ult i32 %and181, %59
  br i1 %cmp182, label %if.then190, label %if.end179.enqueue_crit_edge, !prof !49

if.end179.enqueue_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #14
  br label %enqueue

if.then190:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %59)
  %cmp191 = icmp ugt i32 %59, 32767
  br i1 %cmp191, label %if.then199, label %if.then190.if.end207_crit_edge, !prof !49

if.then190.if.end207_crit_edge:                   ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

if.then199:                                       ; preds = %if.then190
  %sub200 = shl nuw nsw i32 %59, 1
  %mul = add nsw i32 %sub200, -65534
  call void @__sanitizer_cov_trace_cmp4(i32 %and181, i32 %mul)
  %cmp201 = icmp ult i32 %and181, %mul
  br i1 %cmp201, label %if.then203, label %if.then199.if.end207_crit_edge

if.then199.if.end207_crit_edge:                   ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

if.then203:                                       ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #14
  %stats204 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 32
  %194 = ptrtoint ptr %stats204 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %stats204, align 8
  %inc205 = add i32 %195, 1
  store i32 %inc205, ptr %stats204, align 8
  br label %drop

if.end207:                                        ; preds = %if.then199.if.end207_crit_edge, %if.then190.if.end207_crit_edge
  %call208 = call fastcc i32 @INET_ECN_set_ce(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %if.else213, label %if.then210

if.then210:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #14
  %marked = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 52
  %196 = ptrtoint ptr %marked to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %marked, align 4
  %inc212 = add i32 %197, 1
  store i32 %inc212, ptr %marked, align 4
  br label %enqueue

if.else213:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #14
  %stats214 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 32
  %198 = ptrtoint ptr %stats214 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %stats214, align 8
  %inc216 = add i32 %199, 1
  store i32 %inc216, ptr %stats214, align 8
  br label %drop

enqueue:                                          ; preds = %if.then210, %if.end179.enqueue_crit_edge, %if.end173.enqueue_crit_edge
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 5
  %200 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i = call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %enqueue.do.end8.i.i_crit_edge

enqueue.do.end8.i.i_crit_edge:                    ; preds = %enqueue
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %enqueue
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @qdisc_calculate_pkt_len.__warned, align 1
  br i1 %.b14.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_calculate_pkt_len.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.3) #12
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %enqueue.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %201, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__qdisc_calculate_pkt_len(ptr noundef %skb, ptr noundef nonnull %201) #12
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %202 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %1, align 128
  %call.i373 = call i32 %203(ptr noundef %skb, ptr noundef %1, ptr noundef %to_free) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i373)
  %cmp220 = icmp eq i32 %call.i373, 0
  br i1 %cmp220, label %if.then228, label %if.else232, !prof !48

if.then228:                                       ; preds = %qdisc_enqueue.exit
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %204 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %206 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %backlog.i, align 4
  %add.i = add i32 %207, %205
  store i32 %add.i, ptr %backlog.i, align 4
  %208 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %qlen, align 8
  %inc231 = add i32 %209, 1
  store i32 %inc231, ptr %qlen, align 8
  %210 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool.not.i = icmp eq i32 %211, 0
  br i1 %tobool.not.i, label %if.then228.if.end.i_crit_edge, label %if.then.i374

if.then228.if.end.i_crit_edge:                    ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i374:                                     ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @increment_one_qlen(i32 noundef %211, i32 noundef 0, ptr noundef %privdata.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i374, %if.then228.if.end.i_crit_edge
  %arrayidx.i.i375 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %212 = ptrtoint ptr %arrayidx.i.i375 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx.i.i375, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool2.not.i = icmp eq i32 %213, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup245_crit_edge, label %if.then3.i

if.end.i.cleanup245_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup245

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @increment_one_qlen(i32 noundef %213, i32 noundef 1, ptr noundef %privdata.i) #12
  br label %cleanup245

if.else232:                                       ; preds = %qdisc_enqueue.exit
  %and233 = and i32 %call.i373, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %if.then235, label %if.else232.cleanup245_crit_edge

if.else232.cleanup245_crit_edge:                  ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup245

if.then235:                                       ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #14
  %childdrop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 48
  %214 = ptrtoint ptr %childdrop to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %childdrop, align 8
  %inc237 = add i32 %215, 1
  store i32 %inc237, ptr %childdrop, align 8
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %216 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %217, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %cleanup245

drop:                                             ; preds = %if.else213, %if.then203, %if.then175, %if.then117, %if.then
  %218 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %to_free, align 4
  %220 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %219, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %221 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %222, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup245

other_drop.thread393:                             ; preds = %if.then.i.other_drop.thread393_crit_edge, %if.then.i.other_drop.thread393_crit_edge413, %if.then.i.other_drop.thread393_crit_edge414
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #12
  br label %if.end244

if.then243:                                       ; preds = %if.then.i.if.then243_crit_edge, %if.then53.if.then243_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #12
  %drops.i.i376 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %223 = ptrtoint ptr %drops.i.i376 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %drops.i.i376, align 4
  %inc.i.i377 = add i32 %224, 1
  store i32 %inc.i.i377, ptr %drops.i.i376, align 4
  br label %if.end244

if.end244:                                        ; preds = %if.then243, %other_drop.thread393
  %ret.0.ph391 = phi i32 [ 131072, %if.then243 ], [ 65536, %other_drop.thread393 ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup245

cleanup245:                                       ; preds = %if.end244, %drop, %if.then235, %if.else232.cleanup245_crit_edge, %if.then3.i, %if.end.i.cleanup245_crit_edge
  %retval.0 = phi i32 [ 2, %drop ], [ %ret.0.ph391, %if.end244 ], [ 0, %if.then3.i ], [ 0, %if.end.i.cleanup245_crit_edge ], [ %call.i373, %if.then235 ], [ %call.i373, %if.else232.cleanup245_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sfb_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %privdata.i, align 8
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call2 = tail call ptr %3(ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 3
  %4 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb.i.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i.not.i.i = icmp eq i16 %9, 0
  br i1 %tobool.i.not.i.i, label %if.then.cond.end.i.i_crit_edge, label %cond.true.i.i

if.then.cond.end.i.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %11 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %if.then.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %13 = tail call i32 @llvm.read_register.i32(metadata !38) #12
  %and.i.i.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !52
  %17 = tail call i32 @llvm.read_register.i32(metadata !38) #12
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %22, ptrtoint (ptr @lockdep_recursion to i32)
  %23 = inttoptr i32 %add.i.i.i.i.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !53
  %26 = tail call i32 @llvm.read_register.i32(metadata !38) #12
  %and.i.i.i7.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !38) #12
  %and.i.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %34 = tail call i32 @llvm.read_register.i32(metadata !38) #12
  %and.i.i.i9.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %37, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !54
  %38 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %41, ptrtoint (ptr @hardirqs_enabled to i32)
  %42 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !55
  %45 = tail call i32 @llvm.read_register.i32(metadata !38) #12
  %and.i.i.i12.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %44, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !48

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %5 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %49 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %50, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !56
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %51 = tail call ptr @llvm.returnaddress(i32 0) #12
  %52 = ptrtoint ptr %51 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %52) #12
  %53 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %54, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %55 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %56, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %52) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !57
  %57 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %59 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %61 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %62, %60
  store i32 %sub.i, ptr %backlog.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %63 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %qlen, align 8
  %dec = add i32 %64, -1
  store i32 %dec, ptr %qlen, align 8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 3, i32 8
  %65 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i, label %qdisc_bstats_update.exit.if.end.i_crit_edge, label %if.then.i

qdisc_bstats_update.exit.if.end.i_crit_edge:      ; preds = %qdisc_bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %qdisc_bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @decrement_one_qlen(i32 noundef %66, i32 noundef 0, ptr noundef %privdata.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %qdisc_bstats_update.exit.if.end.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.sk_buff, ptr %call2, i32 0, i32 3, i32 12
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool2.not.i = icmp eq i32 %68, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @decrement_one_qlen(i32 noundef %68, i32 noundef 1, ptr noundef %privdata.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sfb_peek(ptr nocapture noundef readonly %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %privdata.i, align 8
  %ops = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 16
  %peek = getelementptr inbounds %struct.Qdisc_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %peek to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peek, align 4
  %call1 = tail call ptr %5(ptr noundef %1) #12
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfb_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %filter_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %call1 = tail call i32 @tcf_block_get(ptr noundef %block, ptr noundef %filter_list, ptr noundef %sch, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @noop_qdisc, ptr %privdata.i, align 8
  %call2 = tail call i32 @sfb_change(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfb_reset(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %privdata.i, align 8
  tail call void @qdisc_reset(ptr noundef %1) #12
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %backlog, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %3 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen, align 8
  %slot = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %4 = ptrtoint ptr %slot to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %slot, align 4
  %double_buffering = getelementptr inbounds %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 16
  %5 = ptrtoint ptr %double_buffering to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %double_buffering, align 1
  %bins.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15
  %6 = call ptr @memset(ptr %bins.i, i32 0, i32 1056)
  tail call void @get_random_bytes(ptr noundef %bins.i, i32 noundef 16) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfb_destroy(ptr nocapture noundef readonly %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 8
  tail call void @tcf_block_put(ptr noundef %1) #12
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %privdata.i, align 8
  tail call void @qdisc_put(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfb_change(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %qstats.i.i = alloca %struct.gnet_stats_queue, align 4
  %tb = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb) #12
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !51
  %1 = getelementptr inbounds [2 x ptr], ptr %tb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !51
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %3 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %4 to i32
  %sub.i.i91 = add nsw i32 %conv.i.i, -4
  %call2.i92 = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 1, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i91, ptr noundef nonnull @sfb_policy, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i92)
  %cmp = icmp slt i32 %call2.i92, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  br label %if.end8

if.end8:                                          ; preds = %if.end5, %entry.if.end8_crit_edge
  %ctl.0 = phi ptr [ %add.ptr.i, %if.end5 ], [ @sfb_default_ops, %entry.if.end8_crit_edge ]
  %limit9 = getelementptr inbounds %struct.tc_sfb_qopt, ptr %ctl.0, i32 0, i32 6
  %7 = ptrtoint ptr %limit9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %limit9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10 = icmp eq i32 %8, 0
  br i1 %cmp10, label %if.then11, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %9 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_queue.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 128
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 107
  %13 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_queue_len, align 16
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %limit.0 = phi i32 [ %14, %if.then11 ], [ %8, %if.end8.if.end13_crit_edge ]
  %call14 = call ptr @fifo_create_dflt(ptr noundef %sch, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %limit.0, ptr noundef %extack) #12
  %cmp.i93 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %cmp19.not = icmp eq ptr %call14, @noop_qdisc
  br i1 %cmp19.not, label %if.end18.if.end21_crit_edge, label %if.then20

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call void @qdisc_hash_add(ptr noundef %call14, i1 noundef zeroext true) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i94, label %if.end21.sch_tree_lock.exit_crit_edge

if.end21.sch_tree_lock.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.else.i94:                                      ; preds = %if.end21
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %18 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i94.sch_tree_lock.exit_crit_edge

if.else.i94.sch_tree_lock.exit_crit_edge:         ; preds = %if.else.i94
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i94
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !48

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i94.sch_tree_lock.exit_crit_edge, %if.end21.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end21.sch_tree_lock.exit_crit_edge ], [ %21, %if.else.i94.sch_tree_lock.exit_crit_edge ], [ %21, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %21, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #12
  %22 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %privdata.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i) #12
  %24 = call ptr @memset(ptr %qstats.i.i, i32 0, i32 20)
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %23, i32 0, i32 12
  %25 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cpu_qstats.i.i, align 4
  %qstats1.i.i = getelementptr inbounds %struct.Qdisc, ptr %23, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i, ptr noundef %26, ptr noundef %qstats1.i.i) #12
  %27 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qstats.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %23, i32 0, i32 17, i32 2
  %29 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i.i.i, align 8
  %add.i.i = add i32 %30, %28
  %backlog3.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %backlog3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %backlog3.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i) #12
  call void @qdisc_reset(ptr noundef %23) #12
  call void @qdisc_tree_reduce_backlog(ptr noundef %23, i32 noundef %add.i.i, i32 noundef %32) #12
  %33 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %privdata.i, align 8
  store ptr %call14, ptr %privdata.i, align 8
  %35 = ptrtoint ptr %ctl.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctl.0, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %36) #12
  %rehash_interval25 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %37 = ptrtoint ptr %rehash_interval25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call2.i, ptr %rehash_interval25, align 4
  %warmup_time = getelementptr inbounds %struct.tc_sfb_qopt, ptr %ctl.0, i32 0, i32 1
  %38 = ptrtoint ptr %warmup_time to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %warmup_time, align 4
  %call2.i87 = call i32 @__msecs_to_jiffies(i32 noundef %39) #12
  %warmup_time27 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %40 = ptrtoint ptr %warmup_time27 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call2.i87, ptr %warmup_time27, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %rehash_time = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %42 = ptrtoint ptr %rehash_time to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %rehash_time, align 4
  %limit28 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %43 = ptrtoint ptr %limit28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %limit.0, ptr %limit28, align 4
  %increment = getelementptr inbounds %struct.tc_sfb_qopt, ptr %ctl.0, i32 0, i32 4
  %44 = ptrtoint ptr %increment to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %increment, align 4
  %increment29 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %46 = ptrtoint ptr %increment29 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %increment29, align 4
  %decrement = getelementptr inbounds %struct.tc_sfb_qopt, ptr %ctl.0, i32 0, i32 5
  %47 = ptrtoint ptr %decrement to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %decrement, align 4
  %decrement30 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %49 = ptrtoint ptr %decrement30 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %decrement30, align 8
  %max = getelementptr inbounds %struct.tc_sfb_qopt, ptr %ctl.0, i32 0, i32 2
  %50 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max, align 4
  %max31 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %52 = ptrtoint ptr %max31 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %max31, align 4
  %bin_size = getelementptr inbounds %struct.tc_sfb_qopt, ptr %ctl.0, i32 0, i32 3
  %53 = ptrtoint ptr %bin_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bin_size, align 4
  %bin_size32 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %55 = ptrtoint ptr %bin_size32 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %bin_size32, align 8
  %penalty_rate = getelementptr inbounds %struct.tc_sfb_qopt, ptr %ctl.0, i32 0, i32 7
  %56 = ptrtoint ptr %penalty_rate to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %penalty_rate, align 4
  %penalty_rate33 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %58 = ptrtoint ptr %penalty_rate33 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %penalty_rate33, align 8
  %penalty_burst = getelementptr inbounds %struct.tc_sfb_qopt, ptr %ctl.0, i32 0, i32 8
  %59 = ptrtoint ptr %penalty_burst to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %penalty_burst, align 4
  %penalty_burst34 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %61 = ptrtoint ptr %penalty_burst34 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %penalty_burst34, align 4
  %62 = load i32, ptr %penalty_burst, align 4
  %tokens_avail = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %63 = ptrtoint ptr %tokens_avail to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %tokens_avail, align 8
  %64 = load volatile i32, ptr @jiffies, align 128
  %token_time = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %65 = ptrtoint ptr %token_time to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %token_time, align 8
  %slot = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %66 = ptrtoint ptr %slot to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %slot, align 4
  %double_buffering = getelementptr inbounds %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 16
  %67 = ptrtoint ptr %double_buffering to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %double_buffering, align 1
  %bins.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15
  %68 = call ptr @memset(ptr %bins.i, i32 0, i32 1056)
  call void @get_random_bytes(ptr noundef %bins.i, i32 noundef 16) #12
  %arrayidx.i96 = getelementptr %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 16
  call void @get_random_bytes(ptr noundef %arrayidx.i96, i32 noundef 16) #12
  %69 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i, align 8
  %and.i98 = and i32 %70, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool.not.i99 = icmp eq i32 %and.i98, 0
  br i1 %tobool.not.i99, label %if.else.i104, label %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge

sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge: ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.else.i104:                                     ; preds = %sch_tree_lock.exit
  %dev_queue.i.i.i100 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %71 = ptrtoint ptr %dev_queue.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_queue.i.i.i100, align 8
  %qdisc_sleeping.i.i.i101 = getelementptr inbounds %struct.netdev_queue, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %qdisc_sleeping.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %qdisc_sleeping.i.i.i101, align 4
  %call1.i.i102 = call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i102)
  %tobool.not.i.i103 = icmp eq i32 %call1.i.i102, 0
  br i1 %tobool.not.i.i103, label %land.rhs.i.i106, label %if.else.i104.sch_tree_unlock.exit_crit_edge

if.else.i104.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

land.rhs.i.i106:                                  ; preds = %if.else.i104
  %.b41.i.i105 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i105, label %land.rhs.i.i106.sch_tree_unlock.exit_crit_edge, label %if.then.i.i107, !prof !48

land.rhs.i.i106.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i106
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.then.i.i107:                                   ; preds = %land.rhs.i.i106
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i107, %land.rhs.i.i106.sch_tree_unlock.exit_crit_edge, %if.else.i104.sch_tree_unlock.exit_crit_edge, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge
  %.sink.i108 = phi ptr [ %sch, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge ], [ %74, %if.else.i104.sch_tree_unlock.exit_crit_edge ], [ %74, %land.rhs.i.i106.sch_tree_unlock.exit_crit_edge ], [ %74, %if.then.i.i107 ]
  %lock.i.i.i109 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i108, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i109) #12
  call void @qdisc_put(ptr noundef %34) #12
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit, %if.then16, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then16 ], [ 0, %sch_tree_unlock.exit ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfb_dump(ptr nocapture noundef %sch, ptr noundef %skb) #2 align 64 {
entry:
  %opt = alloca %struct.tc_sfb_qopt, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %opt) #12
  %rehash_interval1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %0 = ptrtoint ptr %rehash_interval1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rehash_interval1, align 4
  %call2 = tail call i32 @jiffies_to_msecs(i32 noundef %1) #12
  %2 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %opt, align 4
  %warmup_time = getelementptr inbounds %struct.tc_sfb_qopt, ptr %opt, i32 0, i32 1
  %warmup_time3 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %3 = ptrtoint ptr %warmup_time3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %warmup_time3, align 8
  %call4 = tail call i32 @jiffies_to_msecs(i32 noundef %4) #12
  %5 = ptrtoint ptr %warmup_time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call4, ptr %warmup_time, align 4
  %max = getelementptr inbounds %struct.tc_sfb_qopt, ptr %opt, i32 0, i32 2
  %max5 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %6 = ptrtoint ptr %max5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max5, align 4
  %8 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max, align 4
  %bin_size = getelementptr inbounds %struct.tc_sfb_qopt, ptr %opt, i32 0, i32 3
  %bin_size6 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %9 = ptrtoint ptr %bin_size6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bin_size6, align 8
  %11 = ptrtoint ptr %bin_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bin_size, align 4
  %increment = getelementptr inbounds %struct.tc_sfb_qopt, ptr %opt, i32 0, i32 4
  %increment7 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %12 = ptrtoint ptr %increment7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %increment7, align 4
  %14 = ptrtoint ptr %increment to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %increment, align 4
  %decrement = getelementptr inbounds %struct.tc_sfb_qopt, ptr %opt, i32 0, i32 5
  %decrement8 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %15 = ptrtoint ptr %decrement8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %decrement8, align 8
  %17 = ptrtoint ptr %decrement to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %decrement, align 4
  %limit = getelementptr inbounds %struct.tc_sfb_qopt, ptr %opt, i32 0, i32 6
  %limit9 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %18 = ptrtoint ptr %limit9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %limit9, align 4
  %20 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %limit, align 4
  %penalty_rate = getelementptr inbounds %struct.tc_sfb_qopt, ptr %opt, i32 0, i32 7
  %penalty_rate10 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %21 = ptrtoint ptr %penalty_rate10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %penalty_rate10, align 8
  %23 = ptrtoint ptr %penalty_rate to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %penalty_rate, align 4
  %penalty_burst = getelementptr inbounds %struct.tc_sfb_qopt, ptr %opt, i32 0, i32 8
  %penalty_burst11 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %24 = ptrtoint ptr %penalty_burst11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %penalty_burst11, align 4
  %26 = ptrtoint ptr %penalty_burst to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %penalty_burst, align 4
  %27 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %privdata.i, align 8
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %28, i32 0, i32 19, i32 1
  %29 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %backlog, align 4
  %backlog13 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %31 = ptrtoint ptr %backlog13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %backlog13, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp37 = icmp eq ptr %33, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp37
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call15 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 36, ptr noundef nonnull %opt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end17, label %if.then.i.i

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i, ptr %33, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %40, %33
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !49

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %38, %if.end17 ], [ -90, %if.end.i.i ], [ -90, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %opt) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfb_dump_stats(ptr nocapture noundef readonly %sch, ptr noundef %d) #2 align 64 {
entry:
  %st = alloca %struct.tc_sfb_xstats, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %st) #12
  %stats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 32
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats, align 8
  %2 = ptrtoint ptr %st to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %st, align 4
  %penaltydrop = getelementptr inbounds %struct.tc_sfb_xstats, ptr %st, i32 0, i32 1
  %penaltydrop3 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 36
  %3 = ptrtoint ptr %penaltydrop3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %penaltydrop3, align 4
  %5 = ptrtoint ptr %penaltydrop to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %penaltydrop, align 4
  %bucketdrop = getelementptr inbounds %struct.tc_sfb_xstats, ptr %st, i32 0, i32 2
  %bucketdrop5 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 40
  %6 = ptrtoint ptr %bucketdrop5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bucketdrop5, align 8
  %8 = ptrtoint ptr %bucketdrop to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %bucketdrop, align 4
  %queuedrop = getelementptr inbounds %struct.tc_sfb_xstats, ptr %st, i32 0, i32 3
  %queuedrop7 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 44
  %9 = ptrtoint ptr %queuedrop7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %queuedrop7, align 4
  %11 = ptrtoint ptr %queuedrop to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %queuedrop, align 4
  %childdrop = getelementptr inbounds %struct.tc_sfb_xstats, ptr %st, i32 0, i32 4
  %childdrop9 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 48
  %12 = ptrtoint ptr %childdrop9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %childdrop9, align 8
  %14 = ptrtoint ptr %childdrop to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %childdrop, align 4
  %marked = getelementptr inbounds %struct.tc_sfb_xstats, ptr %st, i32 0, i32 5
  %marked11 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 52
  %15 = ptrtoint ptr %marked11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %marked11, align 4
  %17 = ptrtoint ptr %marked to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %marked, align 4
  %slot.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %18 = ptrtoint ptr %slot.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %slot.i, align 4
  %idxprom.i = zext i8 %19 to i32
  %bins1.i = getelementptr %struct.sfb_sched_data, ptr %privdata.i, i32 0, i32 17, i32 %idxprom.i, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %b.033.i = phi ptr [ %bins1.i, %entry ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %totalpm.032.i = phi i32 [ 0, %entry ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %prob.031.i = phi i32 [ 0, %entry ], [ %25, %for.body.i.for.body.i_crit_edge ]
  %qlen.030.i = phi i32 [ 0, %entry ], [ %22, %for.body.i.for.body.i_crit_edge ]
  %i.029.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %b.033.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %b.033.i, align 2
  %conv.i = zext i16 %21 to i32
  %22 = tail call i32 @llvm.umax.i32(i32 %qlen.030.i, i32 %conv.i) #12
  %p_mark.i = getelementptr inbounds %struct.sfb_bucket, ptr %b.033.i, i32 0, i32 1
  %23 = ptrtoint ptr %p_mark.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %p_mark.i, align 2
  %conv9.i = zext i16 %24 to i32
  %add.i = add i32 %totalpm.032.i, %conv9.i
  %25 = tail call i32 @llvm.umax.i32(i32 %prob.031.i, i32 %conv9.i) #12
  %incdec.ptr.i = getelementptr %struct.sfb_bucket, ptr %b.033.i, i32 1
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %sfb_compute_qlen.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

sfb_compute_qlen.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %avgprob = getelementptr inbounds %struct.tc_sfb_xstats, ptr %st, i32 0, i32 8
  %maxprob = getelementptr inbounds %struct.tc_sfb_xstats, ptr %st, i32 0, i32 7
  %maxqlen = getelementptr inbounds %struct.tc_sfb_xstats, ptr %st, i32 0, i32 6
  %26 = ptrtoint ptr %maxprob to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %maxprob, align 4
  %div28.i = lshr i32 %add.i, 7
  %27 = ptrtoint ptr %avgprob to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div28.i, ptr %avgprob, align 4
  %28 = ptrtoint ptr %maxqlen to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %22, ptr %maxqlen, align 4
  %call16 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef nonnull %st, i32 noundef 36) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %st) #12
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfb_graft(ptr noundef %sch, i32 noundef %arg, ptr noundef %new, ptr nocapture noundef writeonly %old, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %qstats.i.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %cmp = icmp eq ptr %new, null
  %spec.store.select = select i1 %cmp, ptr @noop_qdisc, ptr %new
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.sch_tree_lock.exit.i_crit_edge

entry.sch_tree_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %entry
  %dev_queue.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !48

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %entry.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %sch, %entry.sch_tree_lock.exit.i_crit_edge ], [ %5, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %5, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %5, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #12
  %6 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %privdata.i, align 4
  store ptr %spec.store.select, ptr %privdata.i, align 4
  %cmp.not.i = icmp eq ptr %7, null
  br i1 %cmp.not.i, label %sch_tree_lock.exit.i.if.end.i_crit_edge, label %if.then.i

sch_tree_lock.exit.i.if.end.i_crit_edge:          ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i.i) #12
  %8 = call ptr @memset(ptr %qstats.i.i.i, i32 0, i32 20)
  %cpu_qstats.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %qstats1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i.i, ptr noundef %10, ptr noundef %qstats1.i.i.i) #12
  %11 = ptrtoint ptr %qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qstats.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 17, i32 2
  %13 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i.i.i.i, align 8
  %add.i.i.i = add i32 %14, %12
  %backlog3.i.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %backlog3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %backlog3.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i.i) #12
  call void @qdisc_reset(ptr noundef nonnull %7) #12
  call void @qdisc_tree_reduce_backlog(ptr noundef nonnull %7, i32 noundef %add.i.i.i, i32 noundef %16) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sch_tree_lock.exit.i.if.end.i_crit_edge
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i, align 8
  %and.i6.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.not.i7.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool.not.i7.i, label %if.else.i12.i, label %if.end.i.qdisc_replace.exit_crit_edge

if.end.i.qdisc_replace.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_replace.exit

if.else.i12.i:                                    ; preds = %if.end.i
  %dev_queue.i.i.i8.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %19 = ptrtoint ptr %dev_queue.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_queue.i.i.i8.i, align 8
  %qdisc_sleeping.i.i.i9.i = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %qdisc_sleeping.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qdisc_sleeping.i.i.i9.i, align 4
  %call1.i.i10.i = call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %call1.i.i10.i, 0
  br i1 %tobool.not.i.i11.i, label %land.rhs.i.i14.i, label %if.else.i12.i.qdisc_replace.exit_crit_edge

if.else.i12.i.qdisc_replace.exit_crit_edge:       ; preds = %if.else.i12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_replace.exit

land.rhs.i.i14.i:                                 ; preds = %if.else.i12.i
  %.b41.i.i13.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i13.i, label %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, label %if.then.i.i15.i, !prof !48

land.rhs.i.i14.i.qdisc_replace.exit_crit_edge:    ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_replace.exit

if.then.i.i15.i:                                  ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %qdisc_replace.exit

qdisc_replace.exit:                               ; preds = %if.then.i.i15.i, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, %if.else.i12.i.qdisc_replace.exit_crit_edge, %if.end.i.qdisc_replace.exit_crit_edge
  %.sink.i16.i = phi ptr [ %sch, %if.end.i.qdisc_replace.exit_crit_edge ], [ %22, %if.else.i12.i.qdisc_replace.exit_crit_edge ], [ %22, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge ], [ %22, %if.then.i.i15.i ]
  %lock.i.i.i17.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i16.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i17.i) #12
  %23 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %7, ptr %old, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sfb_leaf(ptr nocapture noundef readonly %sch, i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %privdata.i, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sfb_find(ptr nocapture noundef readnone %sch, i32 noundef %classid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sfb_change_class(ptr nocapture noundef readnone %sch, i32 noundef %classid, i32 noundef %parentid, ptr nocapture noundef readnone %tca, ptr nocapture noundef readnone %arg, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sfb_delete(ptr nocapture noundef readnone %sch, i32 noundef %cl, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfb_walk(ptr noundef %sch, ptr noundef %walker) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %walker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %walker, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 1
  %4 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp slt i32 %3, %5
  br i1 %cmp.not, label %if.then.if.end5_crit_edge, label %if.then1

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then1:                                         ; preds = %if.then
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 3
  %6 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fn, align 4
  %call = tail call i32 %7(ptr noundef %sch, i32 noundef 1, ptr noundef %walker) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.then1.if.end5_crit_edge

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %walker to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %walker, align 4
  br label %if.end7

if.end5:                                          ; preds = %if.then1.if.end5_crit_edge, %if.then.if.end5_crit_edge
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %count, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end5, %if.then3, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sfb_tcf_block(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %extack) #3 align 64 {
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
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sfb_bind(ptr nocapture noundef readnone %sch, i32 noundef %parent, i32 noundef %classid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sfb_unbind(ptr nocapture noundef %sch, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sfb_dump_class(ptr nocapture noundef readnone %sch, i32 noundef %cl, ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %tcm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

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
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_1u32(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_get_hash_perturb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @sfb_rate_limit(ptr nocapture noundef %q) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %penalty_rate = getelementptr inbounds %struct.sfb_sched_data, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %penalty_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %penalty_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %penalty_burst = getelementptr inbounds %struct.sfb_sched_data, ptr %q, i32 0, i32 11
  %2 = ptrtoint ptr %penalty_burst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %penalty_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %tokens_avail = getelementptr inbounds %struct.sfb_sched_data, ptr %q, i32 0, i32 12
  %4 = ptrtoint ptr %tokens_avail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tokens_avail, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %token_time = getelementptr inbounds %struct.sfb_sched_data, ptr %q, i32 0, i32 14
  %7 = ptrtoint ptr %token_time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %token_time, align 8
  %sub = sub i32 %6, %8
  %9 = tail call i32 @llvm.umin.i32(i32 %sub, i32 1000)
  %mul = mul i32 %9, %1
  %div = udiv i32 %mul, 100
  %10 = tail call i32 @llvm.umin.i32(i32 %div, i32 %3)
  %11 = ptrtoint ptr %tokens_avail to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tokens_avail, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %13 = ptrtoint ptr %token_time to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %token_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp16.not = icmp eq i32 %10, 0
  br i1 %cmp16.not, label %if.then3.return_crit_edge, label %if.then3.if.end19_crit_edge

if.then3.if.end19_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end19:                                         ; preds = %if.then3.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %14 = ptrtoint ptr %tokens_avail to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tokens_avail, align 8
  %dec = add i32 %15, -1
  store i32 %dec, ptr %tokens_avail, align 8
  br label %return

return:                                           ; preds = %if.end19, %if.then3.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i1 [ true, %if.then3.return_crit_edge ], [ false, %if.end19 ], [ true, %lor.lhs.false.return_crit_edge ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @INET_ECN_set_ce(ptr noundef %skb) unnamed_addr #7 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
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
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !49

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
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !51
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %5, align 2, !annotation !51
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
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !48

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
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !49
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %15 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !49
  br i1 %15, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !49

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
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.8)
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
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.9)
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
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_classify(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qdisc_calculate_pkt_len(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @increment_one_qlen(i32 noundef %sfbhash, i32 noundef %slot, ptr nocapture noundef %q) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bins1 = getelementptr %struct.sfb_sched_data, ptr %q, i32 0, i32 17, i32 %slot, i32 1
  %and = and i32 %sfbhash, 15
  %shr = lshr i32 %sfbhash, 4
  %arrayidx4 = getelementptr %struct.sfb_bucket, ptr %bins1, i32 %and
  %0 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp5.not = icmp eq i16 %1, -1
  br i1 %cmp5.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add nuw i16 %1, 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %inc, ptr %arrayidx4, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr %struct.sfb_bucket, ptr %bins1, i32 16
  %and.1 = and i32 %shr, 15
  %shr.1 = lshr i32 %sfbhash, 8
  %arrayidx4.1 = getelementptr %struct.sfb_bucket, ptr %add.ptr, i32 %and.1
  %3 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx4.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp5.not.1 = icmp eq i16 %4, -1
  br i1 %cmp5.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %inc.1 = add nuw i16 %4, 1
  %5 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %inc.1, ptr %arrayidx4.1, align 2
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %add.ptr.1 = getelementptr %struct.sfb_bucket, ptr %bins1, i32 32
  %and.2 = and i32 %shr.1, 15
  %shr.2 = lshr i32 %sfbhash, 12
  %arrayidx4.2 = getelementptr %struct.sfb_bucket, ptr %add.ptr.1, i32 %and.2
  %6 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx4.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp5.not.2 = icmp eq i16 %7, -1
  br i1 %cmp5.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  %inc.2 = add nuw i16 %7, 1
  %8 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %inc.2, ptr %arrayidx4.2, align 2
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %add.ptr.2 = getelementptr %struct.sfb_bucket, ptr %bins1, i32 48
  %and.3 = and i32 %shr.2, 15
  %shr.3 = lshr i32 %sfbhash, 16
  %arrayidx4.3 = getelementptr %struct.sfb_bucket, ptr %add.ptr.2, i32 %and.3
  %9 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx4.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %cmp5.not.3 = icmp eq i16 %10, -1
  br i1 %cmp5.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  %inc.3 = add nuw i16 %10, 1
  %11 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %inc.3, ptr %arrayidx4.3, align 2
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %add.ptr.3 = getelementptr %struct.sfb_bucket, ptr %bins1, i32 64
  %and.4 = and i32 %shr.3, 15
  %shr.4 = lshr i32 %sfbhash, 20
  %arrayidx4.4 = getelementptr %struct.sfb_bucket, ptr %add.ptr.3, i32 %and.4
  %12 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx4.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %cmp5.not.4 = icmp eq i16 %13, -1
  br i1 %cmp5.not.4, label %if.end.3.if.end.4_crit_edge, label %if.then.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  %inc.4 = add nuw i16 %13, 1
  %14 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %inc.4, ptr %arrayidx4.4, align 2
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  %add.ptr.4 = getelementptr %struct.sfb_bucket, ptr %bins1, i32 80
  %and.5 = and i32 %shr.4, 15
  %shr.5 = lshr i32 %sfbhash, 24
  %arrayidx4.5 = getelementptr %struct.sfb_bucket, ptr %add.ptr.4, i32 %and.5
  %15 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx4.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %cmp5.not.5 = icmp eq i16 %16, -1
  br i1 %cmp5.not.5, label %if.end.4.if.end.5_crit_edge, label %if.then.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  %inc.5 = add nuw i16 %16, 1
  %17 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %inc.5, ptr %arrayidx4.5, align 2
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4.if.end.5_crit_edge
  %add.ptr.5 = getelementptr %struct.sfb_bucket, ptr %bins1, i32 96
  %and.6 = and i32 %shr.5, 15
  %shr.6 = lshr i32 %sfbhash, 28
  %arrayidx4.6 = getelementptr %struct.sfb_bucket, ptr %add.ptr.5, i32 %and.6
  %18 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx4.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp5.not.6 = icmp eq i16 %19, -1
  br i1 %cmp5.not.6, label %if.end.5.if.end.6_crit_edge, label %if.then.6

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.6

if.then.6:                                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #14
  %inc.6 = add nuw i16 %19, 1
  %20 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %inc.6, ptr %arrayidx4.6, align 2
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.end.5.if.end.6_crit_edge
  %add.ptr.6 = getelementptr %struct.sfb_bucket, ptr %bins1, i32 112
  %arrayidx4.7 = getelementptr %struct.sfb_bucket, ptr %add.ptr.6, i32 %shr.6
  %21 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx4.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %cmp5.not.7 = icmp eq i16 %22, -1
  br i1 %cmp5.not.7, label %if.end.6.if.end.7_crit_edge, label %if.then.7

if.end.6.if.end.7_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.7

if.then.7:                                        ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #14
  %inc.7 = add nuw i16 %22, 1
  %23 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %inc.7, ptr %arrayidx4.7, align 2
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.7, %if.end.6.if.end.7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @decrement_one_qlen(i32 noundef %sfbhash, i32 noundef %slot, ptr nocapture noundef %q) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bins1 = getelementptr %struct.sfb_sched_data, ptr %q, i32 0, i32 17, i32 %slot, i32 1
  %and = and i32 %sfbhash, 15
  %shr = lshr i32 %sfbhash, 4
  %arrayidx4 = getelementptr %struct.sfb_bucket, ptr %bins1, i32 %and
  %0 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp5.not = icmp eq i16 %1, 0
  br i1 %cmp5.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dec = add i16 %1, -1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %dec, ptr %arrayidx4, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr %struct.sfb_bucket, ptr %bins1, i32 16
  %and.1 = and i32 %shr, 15
  %shr.1 = lshr i32 %sfbhash, 8
  %arrayidx4.1 = getelementptr %struct.sfb_bucket, ptr %add.ptr, i32 %and.1
  %3 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx4.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp5.not.1 = icmp eq i16 %4, 0
  br i1 %cmp5.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dec.1 = add i16 %4, -1
  %5 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %dec.1, ptr %arrayidx4.1, align 2
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %add.ptr.1 = getelementptr %struct.sfb_bucket, ptr %bins1, i32 32
  %and.2 = and i32 %shr.1, 15
  %shr.2 = lshr i32 %sfbhash, 12
  %arrayidx4.2 = getelementptr %struct.sfb_bucket, ptr %add.ptr.1, i32 %and.2
  %6 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx4.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp5.not.2 = icmp eq i16 %7, 0
  br i1 %cmp5.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  %dec.2 = add i16 %7, -1
  %8 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %dec.2, ptr %arrayidx4.2, align 2
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %add.ptr.2 = getelementptr %struct.sfb_bucket, ptr %bins1, i32 48
  %and.3 = and i32 %shr.2, 15
  %shr.3 = lshr i32 %sfbhash, 16
  %arrayidx4.3 = getelementptr %struct.sfb_bucket, ptr %add.ptr.2, i32 %and.3
  %9 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx4.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp5.not.3 = icmp eq i16 %10, 0
  br i1 %cmp5.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  %dec.3 = add i16 %10, -1
  %11 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %dec.3, ptr %arrayidx4.3, align 2
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %add.ptr.3 = getelementptr %struct.sfb_bucket, ptr %bins1, i32 64
  %and.4 = and i32 %shr.3, 15
  %shr.4 = lshr i32 %sfbhash, 20
  %arrayidx4.4 = getelementptr %struct.sfb_bucket, ptr %add.ptr.3, i32 %and.4
  %12 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx4.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp5.not.4 = icmp eq i16 %13, 0
  br i1 %cmp5.not.4, label %if.end.3.if.end.4_crit_edge, label %if.then.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  %dec.4 = add i16 %13, -1
  %14 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %dec.4, ptr %arrayidx4.4, align 2
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  %add.ptr.4 = getelementptr %struct.sfb_bucket, ptr %bins1, i32 80
  %and.5 = and i32 %shr.4, 15
  %shr.5 = lshr i32 %sfbhash, 24
  %arrayidx4.5 = getelementptr %struct.sfb_bucket, ptr %add.ptr.4, i32 %and.5
  %15 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx4.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp5.not.5 = icmp eq i16 %16, 0
  br i1 %cmp5.not.5, label %if.end.4.if.end.5_crit_edge, label %if.then.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  %dec.5 = add i16 %16, -1
  %17 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %dec.5, ptr %arrayidx4.5, align 2
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4.if.end.5_crit_edge
  %add.ptr.5 = getelementptr %struct.sfb_bucket, ptr %bins1, i32 96
  %and.6 = and i32 %shr.5, 15
  %shr.6 = lshr i32 %sfbhash, 28
  %arrayidx4.6 = getelementptr %struct.sfb_bucket, ptr %add.ptr.5, i32 %and.6
  %18 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx4.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp5.not.6 = icmp eq i16 %19, 0
  br i1 %cmp5.not.6, label %if.end.5.if.end.6_crit_edge, label %if.then.6

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.6

if.then.6:                                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #14
  %dec.6 = add i16 %19, -1
  %20 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %dec.6, ptr %arrayidx4.6, align 2
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.end.5.if.end.6_crit_edge
  %add.ptr.6 = getelementptr %struct.sfb_bucket, ptr %bins1, i32 112
  %arrayidx4.7 = getelementptr %struct.sfb_bucket, ptr %add.ptr.6, i32 %shr.6
  %21 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx4.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp5.not.7 = icmp eq i16 %22, 0
  br i1 %cmp5.not.7, label %if.end.6.if.end.7_crit_edge, label %if.then.7

if.end.6.if.end.7_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.7

if.then.7:                                        ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #14
  %dec.7 = add i16 %22, -1
  %23 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %dec.7, ptr %arrayidx4.7, align 2
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.7, %if.end.6.if.end.7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_block_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fifo_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_hash_add(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_app(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !23, !24, !25, !27, !29, !31, !32, !34, !36}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_sch_sfb__525_726_sfb_module_init6, !1, !"__initcall__kmod_sch_sfb__525_726_sfb_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_sfb.c", i32 726, i32 1}
!2 = !{ptr @__exitcall_sfb_module_exit, !3, !"__exitcall_sfb_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_sfb.c", i32 727, i32 1}
!4 = !{ptr @__UNIQUE_ID_description526, !5, !"__UNIQUE_ID_description526", i1 false, i1 false}
!5 = !{!"../net/sched/sch_sfb.c", i32 729, i32 1}
!6 = !{ptr @__UNIQUE_ID_author527, !7, !"__UNIQUE_ID_author527", i1 false, i1 false}
!7 = !{!"../net/sched/sch_sfb.c", i32 730, i32 1}
!8 = !{ptr @__UNIQUE_ID_author528, !9, !"__UNIQUE_ID_author528", i1 false, i1 false}
!9 = !{!"../net/sched/sch_sfb.c", i32 731, i32 1}
!10 = !{ptr @__UNIQUE_ID_file529, !11, !"__UNIQUE_ID_file529", i1 false, i1 false}
!11 = !{!"../net/sched/sch_sfb.c", i32 732, i32 1}
!12 = !{ptr @__UNIQUE_ID_license530, !11, !"__UNIQUE_ID_license530", i1 false, i1 false}
!13 = !{ptr @sfb_qdisc_ops, !14, !"sfb_qdisc_ops", i1 false, i1 false}
!14 = !{!"../net/sched/sch_sfb.c", i32 700, i32 25}
!15 = !{ptr @sfb_class_ops, !16, !"sfb_class_ops", i1 false, i1 false}
!16 = !{!"../net/sched/sch_sfb.c", i32 687, i32 37}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!19 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/sched/sch_sfb.c", i32 311, i32 7}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/net/sch_generic.h", i32 835, i32 34}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sfb_default_ops, !33, !"sfb_default_ops", i1 false, i1 false}
!33 = !{!"../net/sched/sch_sfb.c", i32 476, i32 33}
!34 = !{ptr @sfb_policy, !35, !"sfb_policy", i1 false, i1 false}
!35 = !{!"../net/sched/sch_sfb.c", i32 472, i32 32}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/net/netlink.h", i32 991, i32 3}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i8 0, i8 2}
!51 = !{!"auto-init"}
!52 = !{i64 2149879446}
!53 = !{i64 2149884378}
!54 = !{i64 2149906090}
!55 = !{i64 2149910982}
!56 = !{i64 2149987439}
!57 = !{i64 2149987764}
