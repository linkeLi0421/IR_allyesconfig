; ModuleID = '/llk/IR_all_yes/net/sched/sch_sfq.c_pt.bc'
source_filename = "../net/sched/sch_sfq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tcf_result = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { i32, i32 }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
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
%struct.sfq_slot = type { ptr, ptr, i16, i16, %struct.sfq_head, i16, i16, i32, %struct.red_vars }
%struct.sfq_head = type { i16, i16 }
%struct.red_vars = type { i32, i32, i32, i64 }
%struct.red_parms = type { i32, i32, i32, i32, %struct.reciprocal_value, i32, i32, i32, i8, i8, i8, [256 x i8] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.sfq_sched_data = type { i32, i32, i8, i8, %struct.siphash_key_t, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, %struct.tc_sfqred_stats, ptr, [128 x %struct.sfq_head], i32, i32, i32, %struct.timer_list, ptr }
%struct.siphash_key_t = type { [2 x i64] }
%struct.tc_sfqred_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.tc_sfq_qopt_v1 = type { %struct.tc_sfq_qopt, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, %struct.tc_sfqred_stats }
%struct.tc_sfq_qopt = type { i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.tc_sfq_xstats = type { i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@sfq_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @sfq_class_ops, [16 x i8] c"sfq\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 664, i32 0, ptr @sfq_enqueue, ptr @sfq_dequeue, ptr @qdisc_peek_dequeued, ptr @sfq_init, ptr @sfq_reset, ptr @sfq_destroy, ptr null, ptr null, ptr null, ptr null, ptr @sfq_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_sfq__519_938_sfq_module_init6 = internal global ptr @sfq_module_init, section ".initcall6.init", align 4
@__exitcall_sfq_module_exit = internal global ptr @sfq_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file520 = internal constant [31 x i8] c"sch_sfq.file=net/sched/sch_sfq\00", section ".modinfo", align 1
@__UNIQUE_ID_license521 = internal constant [20 x i8] c"sch_sfq.license=GPL\00", section ".modinfo", align 1
@sfq_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr null, ptr @sfq_leaf, ptr null, ptr @sfq_find, ptr null, ptr null, ptr @sfq_walk, ptr @sfq_tcf_block, ptr @sfq_bind, ptr @sfq_unbind, ptr @sfq_dump_class, ptr @sfq_dump_class_stats }, [40 x i8] zeroinitializer }, align 32
@sfq_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sched/sch_sfq.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@sfq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&q->perturb_timer)\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@switch.table.sfq_enqueue = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 131072, i32 65536, i32 65536, i32 65536, i32 65536, i32 65536, i32 65536], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"sfq_class_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 904, i32 37 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 176, i32 7 }
@___asan_gen_.20 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 598, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 271, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private constant [23 x i8] c"../net/sched/sch_sfq.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 739, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 596, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 991, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [25 x i8] c"switch.table.sfq_enqueue\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_file520, ptr @__UNIQUE_ID_license521, ptr @__exitcall_sfq_module_exit, ptr @__initcall__kmod_sch_sfq__519_938_sfq_module_init6, ptr @sfq_module_exit, ptr @sfq_class_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sfq_init.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @switch.table.sfq_enqueue], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfq_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sfq_enqueue to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sfq_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @sfq_qdisc_ops) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sfq_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @sfq_qdisc_ops) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfq_enqueue(ptr noundef %skb, ptr noundef %sch, ptr nocapture noundef %to_free) #2 align 64 {
entry:
  %res.i = alloca %struct.tcf_result, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i) #14
  %0 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %res.i, align 4, !annotation !39
  %1 = getelementptr inbounds %struct.anon.142, ptr %res.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !39
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %and2.i = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp3.not.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %divisor.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %7 = ptrtoint ptr %divisor.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %divisor.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.i, i32 %8)
  %cmp7.not.i = icmp ugt i32 %and2.i, %8
  br i1 %cmp7.not.i, label %land.lhs.true4.i.if.end.i_crit_edge, label %sfq_classify.exit.thread279

land.lhs.true4.i.if.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

sfq_classify.exit.thread279:                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #14
  br label %if.end3

if.end.i:                                         ; preds = %land.lhs.true4.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %filter_list.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %9 = ptrtoint ptr %filter_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %filter_list.i, align 4
  %call11.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %land.lhs.true12.i, label %if.end.i.do.end20.i_crit_edge

if.end.i.do.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20.i

land.lhs.true12.i:                                ; preds = %if.end.i
  %call13.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true12.i.do.end20.i_crit_edge, label %land.lhs.true15.i

land.lhs.true12.i.do.end20.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20.i

land.lhs.true15.i:                                ; preds = %land.lhs.true12.i
  %.b53.i = load i1, ptr @sfq_classify.__warned, align 1
  br i1 %.b53.i, label %land.lhs.true15.i.do.end20.i_crit_edge, label %if.then17.i

land.lhs.true15.i.do.end20.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20.i

if.then17.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @sfq_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 176, ptr noundef nonnull @.str.1) #14
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.then17.i, %land.lhs.true15.i.do.end20.i_crit_edge, %land.lhs.true12.i.do.end20.i_crit_edge, %if.end.i.do.end20.i_crit_edge
  %tobool22.not.i = icmp eq ptr %10, null
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  %perturbation.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %call.i.i = tail call i32 @skb_get_hash_perturb(ptr noundef %skb, ptr noundef %perturbation.i.i) #14
  %divisor.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %11 = ptrtoint ptr %divisor.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %divisor.i.i, align 4
  %sub.i.i = add i32 %12, -1
  %and.i.i = and i32 %sub.i.i, %call.i.i
  %add.i = add i32 %and.i.i, 1
  br label %sfq_classify.exit

if.end25.i:                                       ; preds = %do.end20.i
  %call26.i = call i32 @tcf_classify(ptr noundef %skb, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %res.i, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call26.i)
  %cmp27.i = icmp sgt i32 %call26.i, -1
  br i1 %cmp27.i, label %if.then28.i, label %if.end25.i.sfq_classify.exit.thread_crit_edge

if.end25.i.sfq_classify.exit.thread_crit_edge:    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sfq_classify.exit.thread

if.then28.i:                                      ; preds = %if.end25.i
  %switch.tableidx = add i32 %call26.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 7
  br i1 %13, label %switch.hole_check, label %if.then28.i.sw.epilog.i_crit_edge

if.then28.i.sw.epilog.i_crit_edge:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.hole_check.sw.epilog.i_crit_edge, %if.then28.i.sw.epilog.i_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %and30.i = and i32 %15, 65535
  %divisor31.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %16 = ptrtoint ptr %divisor31.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %divisor31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and30.i, i32 %17)
  %cmp32.not.i = icmp ugt i32 %and30.i, %17
  br i1 %cmp32.not.i, label %sw.epilog.i.sfq_classify.exit.thread_crit_edge, label %sw.epilog.i.sfq_classify.exit_crit_edge

sw.epilog.i.sfq_classify.exit_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sfq_classify.exit

sw.epilog.i.sfq_classify.exit.thread_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sfq_classify.exit.thread

switch.hole_check:                                ; preds = %if.then28.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 77, %switch.maskindex
  %18 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %switch.lobit.not = icmp eq i8 %18, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.sfq_enqueue, i32 0, i32 %switch.tableidx
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sfq_classify.exit.thread

sfq_classify.exit.thread:                         ; preds = %switch.lookup, %sw.epilog.i.sfq_classify.exit.thread_crit_edge, %if.end25.i.sfq_classify.exit.thread_crit_edge
  %ret.0.ph = phi i32 [ 131072, %sw.epilog.i.sfq_classify.exit.thread_crit_edge ], [ 131072, %if.end25.i.sfq_classify.exit.thread_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #14
  br label %if.then

sfq_classify.exit:                                ; preds = %sw.epilog.i.sfq_classify.exit_crit_edge, %if.then23.i
  %ret.0 = phi i32 [ -1, %if.then23.i ], [ 131072, %sw.epilog.i.sfq_classify.exit_crit_edge ]
  %retval.0.i = phi i32 [ %add.i, %if.then23.i ], [ %and30.i, %sw.epilog.i.sfq_classify.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %sfq_classify.exit.if.then_crit_edge, label %sfq_classify.exit.if.end3_crit_edge

sfq_classify.exit.if.end3_crit_edge:              ; preds = %sfq_classify.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

sfq_classify.exit.if.then_crit_edge:              ; preds = %sfq_classify.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %sfq_classify.exit.if.then_crit_edge, %sfq_classify.exit.thread
  %ret.0278 = phi i32 [ %ret.0.ph, %sfq_classify.exit.thread ], [ %ret.0, %sfq_classify.exit.if.then_crit_edge ]
  %and = and i32 %ret.0278, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %20 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %21, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %22 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %to_free, align 4
  %24 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  br label %cleanup

if.end3:                                          ; preds = %sfq_classify.exit.if.end3_crit_edge, %sfq_classify.exit.thread279
  %retval.0.i283 = phi i32 [ %and2.i, %sfq_classify.exit.thread279 ], [ %retval.0.i, %sfq_classify.exit.if.end3_crit_edge ]
  %dec = add i32 %retval.0.i283, -1
  %ht = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %25 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ht, align 4
  %arrayidx = getelementptr i16, ptr %26, i32 %dec
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx, align 2
  %slots = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %29 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slots, align 8
  %idxprom = zext i16 %28 to i32
  %arrayidx4 = getelementptr %struct.sfq_slot, ptr %30, i32 %idxprom
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %28)
  %cmp5 = icmp eq i16 %28, -1
  br i1 %cmp5, label %if.then7, label %if.end22

if.then7:                                         ; preds = %if.end3
  %dep = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %31 = ptrtoint ptr %dep to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dep, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -129, i16 %32)
  %cmp10 = icmp ugt i16 %32, -129
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %to_free, align 4
  %35 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %36 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %37, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  %conv9 = zext i16 %32 to i32
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %32, ptr %arrayidx, align 2
  %39 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %slots, align 8
  %arrayidx19 = getelementptr %struct.sfq_slot, ptr %40, i32 %conv9
  %conv20 = trunc i32 %dec to i16
  %hash21 = getelementptr %struct.sfq_slot, ptr %40, i32 %conv9, i32 5
  %41 = ptrtoint ptr %hash21 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv20, ptr %hash21, align 8
  %backlog = getelementptr %struct.sfq_slot, ptr %40, i32 %conv9, i32 7
  %42 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %backlog, align 4
  %vars = getelementptr %struct.sfq_slot, ptr %40, i32 %conv9, i32 8
  %qavg.i = getelementptr %struct.sfq_slot, ptr %40, i32 %conv9, i32 8, i32 2
  %43 = ptrtoint ptr %qavg.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %qavg.i, align 8
  %44 = ptrtoint ptr %vars to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %vars, align 8
  br label %enqueue

if.end22:                                         ; preds = %if.end3
  %red_parms = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %45 = ptrtoint ptr %red_parms to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %red_parms, align 4
  %tobool23.not = icmp eq ptr %46, null
  br i1 %tobool23.not, label %if.end22.if.end76_crit_edge, label %if.then24

if.end22.if.end76_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

if.then24:                                        ; preds = %if.end22
  %vars26 = getelementptr %struct.sfq_slot, ptr %30, i32 %idxprom, i32 8
  %backlog27 = getelementptr %struct.sfq_slot, ptr %30, i32 %idxprom, i32 7
  %47 = ptrtoint ptr %backlog27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %backlog27, align 4
  %qavg.i235 = getelementptr %struct.sfq_slot, ptr %30, i32 %idxprom, i32 8, i32 2
  %49 = ptrtoint ptr %qavg.i235 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qavg.i235, align 8
  %Wlog.i = getelementptr inbounds %struct.red_parms, ptr %46, i32 0, i32 9
  %51 = ptrtoint ptr %Wlog.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %Wlog.i, align 1
  %conv.i = zext i8 %52 to i32
  %shr.i = lshr i32 %50, %conv.i
  %sub.i = add i32 %50, %48
  %add.i236 = sub i32 %sub.i, %shr.i
  store i32 %add.i236, ptr %qavg.i235, align 8
  %53 = ptrtoint ptr %red_parms to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %red_parms, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %add.i236)
  %cmp.i.i = icmp ugt i32 %56, %add.i236
  br i1 %cmp.i.i, label %sw.bb.i237, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.then24
  %qth_max.i.i = getelementptr inbounds %struct.red_parms, ptr %54, i32 0, i32 1
  %57 = ptrtoint ptr %qth_max.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qth_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add.i236)
  %cmp1.not.i.i = icmp ugt i32 %58, %add.i236
  br i1 %cmp1.not.i.i, label %sw.bb1.i, label %sw.bb53

sw.bb.i237:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %vars26 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %vars26, align 8
  br label %if.end76

sw.bb1.i:                                         ; preds = %if.else.i.i
  %60 = ptrtoint ptr %vars26 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vars26, align 8
  %inc.i = add i32 %61, 1
  store i32 %inc.i, ptr %vars26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not.i238 = icmp eq i32 %inc.i, 0
  br i1 %tobool.not.i238, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb1.i
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %54, align 4
  %sub.i.i239 = sub i32 %add.i236, %63
  %Wlog.i.i = getelementptr inbounds %struct.red_parms, ptr %54, i32 0, i32 9
  %64 = ptrtoint ptr %Wlog.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %Wlog.i.i, align 1
  %conv.i.i = zext i8 %65 to i32
  %shr.i.i = lshr i32 %sub.i.i239, %conv.i.i
  %mul.i.i = mul i32 %shr.i.i, %inc.i
  %qR.i.i = getelementptr %struct.sfq_slot, ptr %30, i32 %idxprom, i32 8, i32 1
  %66 = ptrtoint ptr %qR.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %qR.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %67)
  %cmp.i25.not.i = icmp ult i32 %mul.i.i, %67
  br i1 %cmp.i25.not.i, label %if.then.i.if.end76_crit_edge, label %sw.bb

if.then.i.if.end76_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

if.else.i:                                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i26.i = call i32 @prandom_u32() #14
  %max_P_reciprocal.i27.i = getelementptr inbounds %struct.red_parms, ptr %54, i32 0, i32 4
  %68 = ptrtoint ptr %max_P_reciprocal.i27.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.unpack.i28.i = load i32, ptr %max_P_reciprocal.i27.i, align 4
  %.elt2.i29.i = getelementptr inbounds %struct.red_parms, ptr %54, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %.elt2.i29.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.unpack3.i30.i = load i32, ptr %.elt2.i29.i, align 4
  %R.sroa.2.4.extract.shift.i.i31.i = lshr i32 %.unpack3.i30.i, 24
  %R.sroa.4.4.extract.shift.i.i32.i = lshr i32 %.unpack3.i30.i, 16
  %conv.i.i33.i = zext i32 %call.i26.i to i64
  %conv1.i.i34.i = zext i32 %.unpack.i28.i to i64
  %mul.i.i35.i = mul nuw i64 %conv1.i.i34.i, %conv.i.i33.i
  %shr.i.i36.i = lshr i64 %mul.i.i35.i, 32
  %conv2.i.i37.i = trunc i64 %shr.i.i36.i to i32
  %sub.i.i38.i = sub i32 %call.i26.i, %conv2.i.i37.i
  %shr4.i.i39.i = lshr i32 %sub.i.i38.i, %R.sroa.2.4.extract.shift.i.i31.i
  %add.i.i40.i = add i32 %shr4.i.i39.i, %conv2.i.i37.i
  %conv5.i.i41.i = and i32 %R.sroa.4.4.extract.shift.i.i32.i, 255
  %shr6.i.i42.i = lshr i32 %add.i.i40.i, %conv5.i.i41.i
  %qR9.i = getelementptr %struct.sfq_slot, ptr %30, i32 %idxprom, i32 8, i32 1
  %70 = ptrtoint ptr %qR9.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %shr6.i.i42.i, ptr %qR9.i, align 4
  br label %if.end76

sw.bb:                                            ; preds = %if.then.i
  %71 = ptrtoint ptr %vars26 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %vars26, align 8
  %call.i.i240 = call i32 @prandom_u32() #14
  %max_P_reciprocal.i.i = getelementptr inbounds %struct.red_parms, ptr %54, i32 0, i32 4
  %72 = ptrtoint ptr %max_P_reciprocal.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.unpack.i.i = load i32, ptr %max_P_reciprocal.i.i, align 4
  %.elt2.i.i = getelementptr inbounds %struct.red_parms, ptr %54, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %.elt2.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.unpack3.i.i = load i32, ptr %.elt2.i.i, align 4
  %R.sroa.2.4.extract.shift.i.i.i = lshr i32 %.unpack3.i.i, 24
  %R.sroa.4.4.extract.shift.i.i.i = lshr i32 %.unpack3.i.i, 16
  %conv.i.i.i = zext i32 %call.i.i240 to i64
  %conv1.i.i.i = zext i32 %.unpack.i.i to i64
  %mul.i.i.i = mul nuw i64 %conv1.i.i.i, %conv.i.i.i
  %shr.i.i.i = lshr i64 %mul.i.i.i, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %sub.i.i.i = sub i32 %call.i.i240, %conv2.i.i.i
  %shr4.i.i.i = lshr i32 %sub.i.i.i, %R.sroa.2.4.extract.shift.i.i.i
  %add.i.i.i = add i32 %shr4.i.i.i, %conv2.i.i.i
  %conv5.i.i.i = and i32 %R.sroa.4.4.extract.shift.i.i.i, 255
  %shr6.i.i.i = lshr i32 %add.i.i.i, %conv5.i.i.i
  %74 = ptrtoint ptr %qR.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %shr6.i.i.i, ptr %qR.i.i, align 4
  %overlimits.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %75 = ptrtoint ptr %overlimits.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %overlimits.i, align 16
  %inc.i242 = add i32 %76, 1
  store i32 %inc.i242, ptr %overlimits.i, align 16
  %flags.i = getelementptr inbounds %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 6
  %77 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %flags.i, align 1
  %79 = and i8 %78, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool36.not = icmp eq i8 %79, 0
  br i1 %tobool36.not, label %sw.bb.if.end50_crit_edge, label %if.then37

sw.bb.if.end50_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then37:                                        ; preds = %sw.bb
  %headdrop.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %80 = ptrtoint ptr %headdrop.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %headdrop.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool39.not = icmp eq i8 %81, 0
  br i1 %tobool39.not, label %if.then37.if.end43_crit_edge, label %land.lhs.true

if.then37.if.end43_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

land.lhs.true:                                    ; preds = %if.then37
  %82 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx4, align 8
  %call40 = call fastcc i32 @INET_ECN_set_ce(ptr noundef %83)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true.if.end43_crit_edge, label %if.then42

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %prob_mark_head = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %84 = ptrtoint ptr %prob_mark_head to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %prob_mark_head, align 8
  %inc = add i32 %85, 1
  store i32 %inc, ptr %prob_mark_head, align 8
  br label %if.end76

if.end43:                                         ; preds = %land.lhs.true.if.end43_crit_edge, %if.then37.if.end43_crit_edge
  %call44 = call fastcc i32 @INET_ECN_set_ce(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end43.if.end50_crit_edge, label %if.then46

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %prob_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %86 = ptrtoint ptr %prob_mark to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %prob_mark, align 8
  %inc48 = add i32 %87, 1
  store i32 %inc48, ptr %prob_mark, align 8
  br label %if.end76

if.end50:                                         ; preds = %if.end43.if.end50_crit_edge, %sw.bb.if.end50_crit_edge
  %stats51 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %88 = ptrtoint ptr %stats51 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %stats51, align 8
  %inc52 = add i32 %89, 1
  store i32 %inc52, ptr %stats51, align 8
  br label %congestion_drop

sw.bb53:                                          ; preds = %if.else.i.i
  %90 = ptrtoint ptr %vars26 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %vars26, align 8
  %overlimits.i245 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %91 = ptrtoint ptr %overlimits.i245 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %overlimits.i245, align 16
  %inc.i246 = add i32 %92, 1
  store i32 %inc.i246, ptr %overlimits.i245, align 16
  %flags.i247 = getelementptr inbounds %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 6
  %93 = ptrtoint ptr %flags.i247 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %flags.i247, align 1
  %95 = and i8 %94, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %95)
  %cmp.i248.not = icmp eq i8 %95, 1
  br i1 %cmp.i248.not, label %if.then56, label %sw.bb53.if.end73_crit_edge

sw.bb53.if.end73_crit_edge:                       ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then56:                                        ; preds = %sw.bb53
  %headdrop.i249 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %96 = ptrtoint ptr %headdrop.i249 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %headdrop.i249, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool58.not = icmp eq i8 %97, 0
  br i1 %tobool58.not, label %if.then56.if.end66_crit_edge, label %land.lhs.true59

if.then56.if.end66_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

land.lhs.true59:                                  ; preds = %if.then56
  %98 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx4, align 8
  %call61 = call fastcc i32 @INET_ECN_set_ce(ptr noundef %99)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true59.if.end66_crit_edge, label %if.then63

land.lhs.true59.if.end66_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then63:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #16
  %forced_mark_head = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %100 = ptrtoint ptr %forced_mark_head to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %forced_mark_head, align 4
  %inc65 = add i32 %101, 1
  store i32 %inc65, ptr %forced_mark_head, align 4
  br label %if.end76

if.end66:                                         ; preds = %land.lhs.true59.if.end66_crit_edge, %if.then56.if.end66_crit_edge
  %call67 = call fastcc i32 @INET_ECN_set_ce(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end66.if.end73_crit_edge, label %if.then69

if.end66.if.end73_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %forced_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %102 = ptrtoint ptr %forced_mark to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %forced_mark, align 4
  %inc71 = add i32 %103, 1
  store i32 %inc71, ptr %forced_mark, align 4
  br label %if.end76

if.end73:                                         ; preds = %if.end66.if.end73_crit_edge, %sw.bb53.if.end73_crit_edge
  %forced_drop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %104 = ptrtoint ptr %forced_drop to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %forced_drop, align 4
  %inc75 = add i32 %105, 1
  store i32 %inc75, ptr %forced_drop, align 4
  br label %congestion_drop

if.end76:                                         ; preds = %if.then69, %if.then63, %if.then46, %if.then42, %if.else.i, %if.then.i.if.end76_crit_edge, %sw.bb.i237, %if.end22.if.end76_crit_edge
  %qlen77 = getelementptr %struct.sfq_slot, ptr %30, i32 %idxprom, i32 2
  %106 = ptrtoint ptr %qlen77 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %qlen77, align 8
  %maxdepth = getelementptr inbounds %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 3
  %108 = ptrtoint ptr %maxdepth to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %maxdepth, align 1
  %110 = zext i8 %109 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %107, i16 %110)
  %cmp80.not = icmp ult i16 %107, %110
  br i1 %cmp80.not, label %if.end76.enqueue_crit_edge, label %if.end76.congestion_drop_crit_edge

if.end76.congestion_drop_crit_edge:               ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %congestion_drop

if.end76.enqueue_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %enqueue

congestion_drop:                                  ; preds = %if.end76.congestion_drop_crit_edge, %if.end73, %if.end50
  %headdrop.i251 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %111 = ptrtoint ptr %headdrop.i251 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %headdrop.i251, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool84.not = icmp eq i8 %112, 0
  br i1 %tobool84.not, label %if.then85, label %if.end87

if.then85:                                        ; preds = %congestion_drop
  call void @__sanitizer_cov_trace_pc() #16
  %113 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %to_free, align 4
  %115 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i253 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %116 = ptrtoint ptr %drops.i.i.i253 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %drops.i.i.i253, align 4
  %inc.i.i.i254 = add i32 %117, 1
  store i32 %inc.i.i.i254, ptr %drops.i.i.i253, align 4
  br label %cleanup

if.end87:                                         ; preds = %congestion_drop
  call void @__sanitizer_cov_trace_pc() #16
  %118 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx4, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 8
  store ptr %121, ptr %arrayidx4, align 8
  %122 = load ptr, ptr %119, align 8
  %prev.i = getelementptr inbounds %struct.anon.0, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %arrayidx4, ptr %prev.i, align 4
  %prev3.i = getelementptr inbounds %struct.anon.0, ptr %119, i32 0, i32 1
  %124 = ptrtoint ptr %prev3.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %prev3.i, align 4
  store ptr null, ptr %119, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 3
  %125 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cb.i.i, align 4
  %cb.i.i255 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %127 = ptrtoint ptr %cb.i.i255 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cb.i.i255, align 4
  %sub = sub i32 %126, %128
  %backlog91 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %129 = ptrtoint ptr %backlog91 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %backlog91, align 4
  %sub92 = sub i32 %130, %sub
  store i32 %sub92, ptr %backlog91, align 4
  %backlog93 = getelementptr %struct.sfq_slot, ptr %30, i32 %idxprom, i32 7
  %131 = ptrtoint ptr %backlog93 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %backlog93, align 4
  %sub94 = sub i32 %132, %sub
  store i32 %sub94, ptr %backlog93, align 4
  %133 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %to_free, align 4
  store ptr %134, ptr %119, align 8
  store ptr %119, ptr %to_free, align 4
  %drops.i.i.i256 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %135 = ptrtoint ptr %drops.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %drops.i.i.i256, align 4
  %inc.i.i.i257 = add i32 %136, 1
  store i32 %inc.i.i.i257, ptr %drops.i.i.i256, align 4
  %skblist_prev.i = getelementptr %struct.sfq_slot, ptr %30, i32 %idxprom, i32 1
  %137 = ptrtoint ptr %skblist_prev.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %skblist_prev.i, align 4
  %prev.i258 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 1
  %139 = ptrtoint ptr %prev.i258 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %prev.i258, align 4
  %140 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %arrayidx4, ptr %skb, align 8
  %141 = load ptr, ptr %skblist_prev.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %skb, ptr %141, align 8
  store ptr %skb, ptr %skblist_prev.i, align 4
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef 0, i32 noundef %sub) #14
  br label %cleanup

enqueue:                                          ; preds = %if.end76.enqueue_crit_edge, %if.end14
  %idxprom.i.pre-phi = phi i32 [ %idxprom, %if.end76.enqueue_crit_edge ], [ %conv9, %if.end14 ]
  %x.0 = phi i16 [ %28, %if.end76.enqueue_crit_edge ], [ %32, %if.end14 ]
  %slot.0 = phi ptr [ %arrayidx4, %if.end76.enqueue_crit_edge ], [ %arrayidx19, %if.end14 ]
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %143 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %145 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %backlog.i, align 4
  %add.i259 = add i32 %146, %144
  store i32 %add.i259, ptr %backlog.i, align 4
  %147 = load i32, ptr %cb.i.i.i, align 4
  %backlog98 = getelementptr inbounds %struct.sfq_slot, ptr %slot.0, i32 0, i32 7
  %148 = ptrtoint ptr %backlog98 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %backlog98, align 4
  %add = add i32 %149, %147
  store i32 %add, ptr %backlog98, align 4
  %skblist_prev.i261 = getelementptr inbounds %struct.sfq_slot, ptr %slot.0, i32 0, i32 1
  %150 = ptrtoint ptr %skblist_prev.i261 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %skblist_prev.i261, align 4
  %prev.i262 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i262 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %151, ptr %prev.i262, align 4
  %153 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %slot.0, ptr %skb, align 8
  %154 = load ptr, ptr %skblist_prev.i261, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %skb, ptr %154, align 8
  store ptr %skb, ptr %skblist_prev.i261, align 4
  %156 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %slots, align 8
  %dep.i = getelementptr %struct.sfq_slot, ptr %157, i32 %idxprom.i.pre-phi, i32 4
  %158 = ptrtoint ptr %dep.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %dep.i, align 4
  %prev.i263 = getelementptr %struct.sfq_slot, ptr %157, i32 %idxprom.i.pre-phi, i32 4, i32 1
  %160 = ptrtoint ptr %prev.i263 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %prev.i263, align 2
  %conv.i.i264 = zext i16 %161 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %161)
  %cmp.i.i265 = icmp ult i16 %161, -128
  %dep.i.i = getelementptr %struct.sfq_slot, ptr %157, i32 %conv.i.i264, i32 4
  %sub.i.i266 = add nsw i32 %conv.i.i264, -65408
  %arrayidx4.i.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %sub.i.i266
  %retval.0.i.i = select i1 %cmp.i.i265, ptr %dep.i.i, ptr %arrayidx4.i.i
  %162 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %159, ptr %retval.0.i.i, align 2
  %conv.i28.i = zext i16 %159 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %159)
  %cmp.i29.i = icmp ult i16 %159, -128
  br i1 %cmp.i29.i, label %if.then.i32.i, label %if.end.i35.i

if.then.i32.i:                                    ; preds = %enqueue
  call void @__sanitizer_cov_trace_pc() #16
  %163 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %slots, align 8
  %dep.i31.i = getelementptr %struct.sfq_slot, ptr %164, i32 %conv.i28.i, i32 4
  br label %sfq_dep_head.exit37.i

if.end.i35.i:                                     ; preds = %enqueue
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i33.i = add nsw i32 %conv.i28.i, -65408
  %arrayidx4.i34.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %sub.i33.i
  br label %sfq_dep_head.exit37.i

sfq_dep_head.exit37.i:                            ; preds = %if.end.i35.i, %if.then.i32.i
  %retval.0.i36.i = phi ptr [ %dep.i31.i, %if.then.i32.i ], [ %arrayidx4.i34.i, %if.end.i35.i ]
  %prev7.i = getelementptr inbounds %struct.sfq_head, ptr %retval.0.i36.i, i32 0, i32 1
  %165 = ptrtoint ptr %prev7.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %161, ptr %prev7.i, align 2
  %166 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %slots, align 8
  %qlen.i = getelementptr %struct.sfq_slot, ptr %167, i32 %idxprom.i.pre-phi, i32 2
  %168 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %qlen.i, align 8
  %inc.i267 = add i16 %169, 1
  store i16 %inc.i267, ptr %qlen.i, align 8
  %cur_depth.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %170 = ptrtoint ptr %cur_depth.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %cur_depth.i, align 8
  %172 = zext i8 %171 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i267, i16 %172)
  %cmp.i268 = icmp ugt i16 %inc.i267, %172
  br i1 %cmp.i268, label %if.then.i269, label %sfq_dep_head.exit37.i.if.end.i271_crit_edge

sfq_dep_head.exit37.i.if.end.i271_crit_edge:      ; preds = %sfq_dep_head.exit37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i271

if.then.i269:                                     ; preds = %sfq_dep_head.exit37.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv13.i = trunc i16 %inc.i267 to i8
  %173 = ptrtoint ptr %cur_depth.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %conv13.i, ptr %cur_depth.i, align 8
  br label %if.end.i271

if.end.i271:                                      ; preds = %if.then.i269, %sfq_dep_head.exit37.i.if.end.i271_crit_edge
  %174 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %slots, align 8
  %qlen1.i.i = getelementptr %struct.sfq_slot, ptr %175, i32 %idxprom.i.pre-phi, i32 2
  %176 = ptrtoint ptr %qlen1.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %qlen1.i.i, align 8
  %conv.i39.i = zext i16 %177 to i32
  %add.i.i = add i16 %177, -128
  %arrayidx3.i.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %conv.i39.i
  %178 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %arrayidx3.i.i, align 4
  %dep4.i.i = getelementptr %struct.sfq_slot, ptr %175, i32 %idxprom.i.pre-phi, i32 4
  %180 = ptrtoint ptr %dep4.i.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %dep4.i.i, align 4
  %prev.i.i = getelementptr %struct.sfq_slot, ptr %175, i32 %idxprom.i.pre-phi, i32 4, i32 1
  %181 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %add.i.i, ptr %prev.i.i, align 2
  store i16 %x.0, ptr %arrayidx3.i.i, align 4
  %conv.i.i.i270 = zext i16 %179 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %179)
  %cmp.i.i.i = icmp ult i16 %179, -128
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i271
  call void @__sanitizer_cov_trace_pc() #16
  %182 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %slots, align 8
  %dep.i.i.i = getelementptr %struct.sfq_slot, ptr %183, i32 %conv.i.i.i270, i32 4
  br label %sfq_inc.exit

if.end.i.i.i:                                     ; preds = %if.end.i271
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i272 = add nsw i32 %conv.i.i.i270, -65408
  %arrayidx4.i.i.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %sub.i.i.i272
  br label %sfq_inc.exit

sfq_inc.exit:                                     ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %dep.i.i.i, %if.then.i.i.i ], [ %arrayidx4.i.i.i, %if.end.i.i.i ]
  %prev10.i.i = getelementptr inbounds %struct.sfq_head, ptr %retval.0.i.i.i, i32 0, i32 1
  %184 = ptrtoint ptr %prev10.i.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %x.0, ptr %prev10.i.i, align 2
  %qlen99 = getelementptr inbounds %struct.sfq_slot, ptr %slot.0, i32 0, i32 2
  %185 = ptrtoint ptr %qlen99 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %qlen99, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %186)
  %cmp101 = icmp eq i16 %186, 1
  br i1 %cmp101, label %if.then103, label %sfq_inc.exit.if.end115_crit_edge

sfq_inc.exit.if.end115_crit_edge:                 ; preds = %sfq_inc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.then103:                                       ; preds = %sfq_inc.exit
  %tail = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %187 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %tail, align 8
  %cmp104 = icmp eq ptr %188, null
  br i1 %cmp104, label %if.then103.if.end113_crit_edge, label %if.else

if.then103.if.end113_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.else:                                          ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #16
  %next109 = getelementptr inbounds %struct.sfq_slot, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %next109 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %next109, align 2
  %next110 = getelementptr inbounds %struct.sfq_slot, ptr %slot.0, i32 0, i32 3
  %191 = ptrtoint ptr %next110 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %190, ptr %next110, align 2
  %192 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %tail, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.else, %if.then103.if.end113_crit_edge
  %.sink = phi ptr [ %193, %if.else ], [ %slot.0, %if.then103.if.end113_crit_edge ]
  %next112 = getelementptr inbounds %struct.sfq_slot, ptr %.sink, i32 0, i32 3
  %194 = ptrtoint ptr %next112 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %x.0, ptr %next112, align 2
  %195 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %slot.0, ptr %tail, align 8
  %scaled_quantum = getelementptr inbounds %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 7
  %196 = ptrtoint ptr %scaled_quantum to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %scaled_quantum, align 2
  %allot = getelementptr inbounds %struct.sfq_slot, ptr %slot.0, i32 0, i32 6
  %198 = ptrtoint ptr %allot to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %197, ptr %allot, align 2
  br label %if.end115

if.end115:                                        ; preds = %if.end113, %sfq_inc.exit.if.end115_crit_edge
  %qlen117 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %199 = ptrtoint ptr %qlen117 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %qlen117, align 8
  %inc118 = add i32 %200, 1
  store i32 %inc118, ptr %qlen117, align 8
  %201 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %privdata.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc118, i32 %202)
  %cmp119.not = icmp ugt i32 %inc118, %202
  br i1 %cmp119.not, label %if.end122, label %if.end115.cleanup_crit_edge

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end122:                                        ; preds = %if.end115
  %203 = ptrtoint ptr %qlen99 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %qlen99, align 8
  %call124 = call fastcc i32 @sfq_drop(ptr noundef %sch, ptr noundef %to_free)
  %205 = ptrtoint ptr %qlen99 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %qlen99, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %204, i16 %206)
  %cmp128.not = icmp eq i16 %204, %206
  br i1 %cmp128.not, label %if.end133, label %if.then130

if.then130:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  %207 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %cb.i.i.i, align 4
  %sub132 = sub i32 %call124, %208
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef 0, i32 noundef %sub132) #14
  br label %cleanup

if.end133:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef 1, i32 noundef %call124) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end133, %if.then130, %if.end115.cleanup_crit_edge, %if.end87, %if.then85, %if.then12, %if.end
  %retval.0 = phi i32 [ %ret.0278, %if.end ], [ 1, %if.then12 ], [ 2, %if.then130 ], [ 0, %if.end133 ], [ 2, %if.end87 ], [ 1, %if.then85 ], [ 0, %if.end115.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sfq_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tail = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %next_slot.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

next_slot.preheader:                              ; preds = %entry
  %slots = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail, align 8
  %next77 = getelementptr inbounds %struct.sfq_slot, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %next77 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next77, align 2
  %6 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slots, align 8
  %idxprom78 = zext i16 %5 to i32
  %arrayidx79 = getelementptr %struct.sfq_slot, ptr %7, i32 %idxprom78
  %allot80 = getelementptr %struct.sfq_slot, ptr %7, i32 %idxprom78, i32 6
  %8 = ptrtoint ptr %allot80 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %allot80, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp281 = icmp slt i16 %9, 1
  br i1 %cmp281, label %if.then4.lr.ph, label %next_slot.preheader.if.end10_crit_edge

next_slot.preheader.if.end10_crit_edge:           ; preds = %next_slot.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then4.lr.ph:                                   ; preds = %next_slot.preheader
  %scaled_quantum = getelementptr inbounds %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 7
  br label %if.then4

if.then4:                                         ; preds = %if.then4.if.then4_crit_edge, %if.then4.lr.ph
  %allot83 = phi ptr [ %allot80, %if.then4.lr.ph ], [ %allot, %if.then4.if.then4_crit_edge ]
  %arrayidx82 = phi ptr [ %arrayidx79, %if.then4.lr.ph ], [ %arrayidx, %if.then4.if.then4_crit_edge ]
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx82, ptr %tail, align 8
  %11 = ptrtoint ptr %scaled_quantum to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %scaled_quantum, align 2
  %13 = ptrtoint ptr %allot83 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %allot83, align 2
  %add = add i16 %14, %12
  store i16 %add, ptr %allot83, align 2
  %15 = load ptr, ptr %tail, align 8
  %next = getelementptr inbounds %struct.sfq_slot, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %next, align 2
  %18 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slots, align 8
  %idxprom = zext i16 %17 to i32
  %arrayidx = getelementptr %struct.sfq_slot, ptr %19, i32 %idxprom
  %allot = getelementptr %struct.sfq_slot, ptr %19, i32 %idxprom, i32 6
  %20 = ptrtoint ptr %allot to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %allot, align 2
  %cmp2 = icmp slt i16 %21, 1
  br i1 %cmp2, label %if.then4.if.then4_crit_edge, label %if.end10.loopexit

if.then4.if.then4_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

if.end10.loopexit:                                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %idxprom.le = zext i16 %17 to i32
  br label %if.end10

if.end10:                                         ; preds = %if.end10.loopexit, %next_slot.preheader.if.end10_crit_edge
  %idxprom.le.pre-phi = phi i32 [ %idxprom78, %next_slot.preheader.if.end10_crit_edge ], [ %idxprom.le, %if.end10.loopexit ]
  %.lcssa76 = phi i16 [ %5, %next_slot.preheader.if.end10_crit_edge ], [ %17, %if.end10.loopexit ]
  %.lcssa = phi ptr [ %7, %next_slot.preheader.if.end10_crit_edge ], [ %19, %if.end10.loopexit ]
  %arrayidx.lcssa = phi ptr [ %arrayidx79, %next_slot.preheader.if.end10_crit_edge ], [ %arrayidx, %if.end10.loopexit ]
  %allot.lcssa = phi ptr [ %allot80, %next_slot.preheader.if.end10_crit_edge ], [ %allot, %if.end10.loopexit ]
  %22 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.lcssa, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  store ptr %25, ptr %arrayidx.lcssa, align 8
  %26 = load ptr, ptr %23, align 8
  %prev.i = getelementptr inbounds %struct.anon.0, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx.lcssa, ptr %prev.i, align 4
  %prev3.i = getelementptr inbounds %struct.anon.0, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %prev3.i, align 4
  store ptr null, ptr %23, align 8
  %29 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slots, align 8
  %dep.i = getelementptr %struct.sfq_slot, ptr %30, i32 %idxprom.le.pre-phi, i32 4
  %31 = ptrtoint ptr %dep.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dep.i, align 4
  %prev.i72 = getelementptr %struct.sfq_slot, ptr %30, i32 %idxprom.le.pre-phi, i32 4, i32 1
  %33 = ptrtoint ptr %prev.i72 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %prev.i72, align 2
  %conv.i.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %34)
  %cmp.i.i = icmp ult i16 %34, -128
  %dep.i.i = getelementptr %struct.sfq_slot, ptr %30, i32 %conv.i.i, i32 4
  %sub.i.i = add nsw i32 %conv.i.i, -65408
  %arrayidx4.i.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %sub.i.i
  %retval.0.i.i = select i1 %cmp.i.i, ptr %dep.i.i, ptr %arrayidx4.i.i
  %35 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %32, ptr %retval.0.i.i, align 2
  %conv.i33.i = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %32)
  %cmp.i34.i = icmp ult i16 %32, -128
  br i1 %cmp.i34.i, label %if.then.i37.i, label %if.end.i40.i

if.then.i37.i:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %slots, align 8
  %dep.i36.i = getelementptr %struct.sfq_slot, ptr %37, i32 %conv.i33.i, i32 4
  br label %sfq_dep_head.exit42.i

if.end.i40.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i38.i = add nsw i32 %conv.i33.i, -65408
  %arrayidx4.i39.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %sub.i38.i
  br label %sfq_dep_head.exit42.i

sfq_dep_head.exit42.i:                            ; preds = %if.end.i40.i, %if.then.i37.i
  %retval.0.i41.i = phi ptr [ %dep.i36.i, %if.then.i37.i ], [ %arrayidx4.i39.i, %if.end.i40.i ]
  %prev7.i = getelementptr inbounds %struct.sfq_head, ptr %retval.0.i41.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev7.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %34, ptr %prev7.i, align 2
  %39 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %slots, align 8
  %qlen.i = getelementptr %struct.sfq_slot, ptr %40, i32 %idxprom.le.pre-phi, i32 2
  %41 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %qlen.i, align 8
  %dec.i = add i16 %42, -1
  store i16 %dec.i, ptr %qlen.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %cmp.i = icmp eq i16 %32, %34
  br i1 %cmp.i, label %land.lhs.true.i, label %sfq_dep_head.exit42.i.if.end.i_crit_edge

sfq_dep_head.exit42.i.if.end.i_crit_edge:         ; preds = %sfq_dep_head.exit42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sfq_dep_head.exit42.i
  %cur_depth.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %43 = ptrtoint ptr %cur_depth.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cur_depth.i, align 8
  %45 = zext i8 %44 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %45)
  %cmp15.i = icmp eq i16 %42, %45
  br i1 %cmp15.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %dec18.i = add i8 %44, -1
  %46 = ptrtoint ptr %cur_depth.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %dec18.i, ptr %cur_depth.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %sfq_dep_head.exit42.i.if.end.i_crit_edge
  %47 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %slots, align 8
  %qlen1.i.i = getelementptr %struct.sfq_slot, ptr %48, i32 %idxprom.le.pre-phi, i32 2
  %49 = ptrtoint ptr %qlen1.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %qlen1.i.i, align 8
  %conv.i44.i = zext i16 %50 to i32
  %add.i.i = add i16 %50, -128
  %arrayidx3.i.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %conv.i44.i
  %51 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx3.i.i, align 4
  %dep4.i.i = getelementptr %struct.sfq_slot, ptr %48, i32 %idxprom.le.pre-phi, i32 4
  %53 = ptrtoint ptr %dep4.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %dep4.i.i, align 4
  %prev.i.i = getelementptr %struct.sfq_slot, ptr %48, i32 %idxprom.le.pre-phi, i32 4, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %add.i.i, ptr %prev.i.i, align 2
  store i16 %.lcssa76, ptr %arrayidx3.i.i, align 4
  %conv.i.i.i = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %52)
  %cmp.i.i.i = icmp ult i16 %52, -128
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %slots, align 8
  %dep.i.i.i = getelementptr %struct.sfq_slot, ptr %56, i32 %conv.i.i.i, i32 4
  br label %sfq_dec.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -65408
  %arrayidx4.i.i.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %sub.i.i.i
  br label %sfq_dec.exit

sfq_dec.exit:                                     ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %dep.i.i.i, %if.then.i.i.i ], [ %arrayidx4.i.i.i, %if.end.i.i.i ]
  %prev10.i.i = getelementptr inbounds %struct.sfq_head, ptr %retval.0.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev10.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %.lcssa76, ptr %prev10.i.i, align 2
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3
  %58 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cb.i.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 17
  %60 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.i.not.i.i = icmp eq i16 %63, 0
  br i1 %tobool.i.not.i.i, label %sfq_dec.exit.cond.end.i.i_crit_edge, label %cond.true.i.i

sfq_dec.exit.cond.end.i.i_crit_edge:              ; preds = %sfq_dec.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %sfq_dec.exit
  call void @__sanitizer_cov_trace_pc() #16
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %61, i32 0, i32 5
  %64 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %65 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %sfq_dec.exit.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %sfq_dec.exit.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %66 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i.i.i.i.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %67 = tail call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i.i.i.i.i.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %70, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !40
  %71 = tail call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i.i.i.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %76, ptrtoint (ptr @lockdep_recursion to i32)
  %77 = inttoptr i32 %add.i.i.i.i.i to ptr
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %77, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !41
  %80 = tail call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i.i.i7.i.i.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %83, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %79, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %84 = tail call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i.i.i.i.i.i.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i.i.i.i.i = icmp eq i32 %87, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %88 = tail call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i.i.i9.i.i.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %91, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !42
  %92 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %93
  %94 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %95, ptrtoint (ptr @hardirqs_enabled to i32)
  %96 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %96, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !43
  %99 = tail call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i.i.i12.i.i.i.i.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %102, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %98, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !44

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i73 = zext i32 %59 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %103 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %104, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !45
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %105 = tail call ptr @llvm.returnaddress(i32 0) #14
  %106 = ptrtoint ptr %105 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %106) #14
  %107 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %108, %conv.i.i73
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %109 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %110, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %106) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !46
  %111 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %112, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %113 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %qlen, align 8
  %dec = add i32 %114, -1
  store i32 %dec, ptr %qlen, align 8
  %115 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %117 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %118, %116
  store i32 %sub.i, ptr %backlog.i, align 4
  %119 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog = getelementptr %struct.sfq_slot, ptr %.lcssa, i32 %idxprom.le.pre-phi, i32 7
  %120 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %backlog, align 4
  %sub = sub i32 %121, %119
  store i32 %sub, ptr %backlog, align 4
  %qlen14 = getelementptr %struct.sfq_slot, ptr %.lcssa, i32 %idxprom.le.pre-phi, i32 2
  %122 = ptrtoint ptr %qlen14 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %qlen14, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %cmp16 = icmp eq i16 %123, 0
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %qdisc_bstats_update.exit
  %ht = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %124 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ht, align 4
  %hash = getelementptr %struct.sfq_slot, ptr %.lcssa, i32 %idxprom.le.pre-phi, i32 5
  %126 = ptrtoint ptr %hash to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %hash, align 8
  %idxprom19 = zext i16 %127 to i32
  %arrayidx20 = getelementptr i16, ptr %125, i32 %idxprom19
  %128 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 -1, ptr %arrayidx20, align 2
  %next21 = getelementptr %struct.sfq_slot, ptr %.lcssa, i32 %idxprom.le.pre-phi, i32 3
  %129 = ptrtoint ptr %next21 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %next21, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %.lcssa76, i16 %130)
  %cmp24 = icmp eq i16 %.lcssa76, %130
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  %131 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %tail, align 8
  br label %cleanup

if.end28:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  %132 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tail, align 8
  %next30 = getelementptr inbounds %struct.sfq_slot, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %next30 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %130, ptr %next30, align 2
  br label %cleanup

if.else:                                          ; preds = %qdisc_bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  %135 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %cb.i.i.i.i, align 4
  %sub33 = add i32 %136, 7
  %div70 = lshr i32 %sub33, 3
  %137 = ptrtoint ptr %allot.lcssa to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %allot.lcssa, align 2
  %139 = trunc i32 %div70 to i16
  %conv37 = sub i16 %138, %139
  store i16 %conv37, ptr %allot.lcssa, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end28, %if.then26, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %23, %if.then26 ], [ null, %entry.cleanup_crit_edge ], [ %23, %if.else ], [ %23, %if.end28 ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_peek_dequeued(ptr noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not15 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not15
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %sch) #14
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
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
define internal i32 @sfq_init(ptr noundef %sch, ptr noundef readonly %opt, ptr noundef %extack) #2 align 64 {
entry:
  %tmp13.i.i = alloca %struct.reciprocal_value, align 8
  %to_free.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %sch1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 16, i32 2, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %sch1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %sch, ptr %sch1, align 8
  %perturb_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 32
  tail call void @init_timer_key(ptr noundef %perturb_timer, ptr noundef nonnull @sfq_perturbation, i32 noundef 524288, ptr noundef nonnull @.str.4, ptr noundef nonnull @sfq_init.__key) #14
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %filter_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %call2 = tail call i32 @tcf_block_get(ptr noundef %block, ptr noundef %filter_list, ptr noundef %sch, ptr noundef %extack) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup58_crit_edge

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup58

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0119 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = trunc i32 %i.0119 to i16
  %conv = add i16 %1, -128
  %arrayidx = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %i.0119
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %arrayidx, align 4
  %prev = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %i.0119, i32 1
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %prev, align 2
  %inc = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  %4 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 127, ptr %privdata.i, align 8
  %maxdepth = getelementptr inbounds %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 3
  %5 = ptrtoint ptr %maxdepth to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 127, ptr %maxdepth, align 1
  %cur_depth = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %6 = ptrtoint ptr %cur_depth to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %cur_depth, align 8
  %tail = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %7 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail, align 8
  %divisor = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %8 = ptrtoint ptr %divisor to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1024, ptr %divisor, align 4
  %maxflows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 20
  %9 = ptrtoint ptr %maxflows to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 128, ptr %maxflows, align 4
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %10 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_queue.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 19
  %16 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %17 to i32
  %add.i = add i32 %15, %conv.i
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 28
  %18 = ptrtoint ptr %quantum to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %quantum, align 4
  %sub = add i32 %add.i, 7
  %div110 = lshr i32 %sub, 3
  %conv11 = trunc i32 %div110 to i16
  %scaled_quantum = getelementptr inbounds %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 7
  %19 = ptrtoint ptr %scaled_quantum to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv11, ptr %scaled_quantum, align 2
  %perturb_period = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 24
  %20 = ptrtoint ptr %perturb_period to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %perturb_period, align 8
  %perturbation = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  tail call void @get_random_bytes(ptr noundef %perturbation, i32 noundef 16) #14
  %tobool12.not = icmp eq ptr %opt, null
  br i1 %tobool12.not, label %for.end.if.end19_crit_edge, label %if.then13

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then13:                                        ; preds = %for.end
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %to_free.i) #14
  %21 = ptrtoint ptr %to_free.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %to_free.i, align 4
  %22 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %opt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %23)
  %cmp.i = icmp ult i16 %23, 24
  br i1 %cmp.i, label %if.then13.sfq_change.exit.thread_crit_edge, label %if.end.i

if.then13.sfq_change.exit.thread_crit_edge:       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %sfq_change.exit.thread

if.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %23)
  %cmp7.not.i = icmp ult i16 %23, 76
  %spec.select.i = select i1 %cmp7.not.i, ptr null, ptr %add.ptr.i.i
  %divisor.i = getelementptr i8, ptr %opt, i32 16
  %24 = ptrtoint ptr %divisor.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %divisor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end.i.if.end18.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #14, !range !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp1.i.i = icmp ugt i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %25)
  %cmp15.i = icmp ugt i32 %25, 65536
  %or.cond.i = or i1 %cmp15.i, %cmp1.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.sfq_change.exit.thread_crit_edge, label %land.lhs.true.i.if.end18.i_crit_edge

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

land.lhs.true.i.sfq_change.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sfq_change.exit.thread

if.end18.i:                                       ; preds = %land.lhs.true.i.if.end18.i_crit_edge, %if.end.i.if.end18.i_crit_edge
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262136, i32 %28)
  %29 = icmp ugt i32 %28, 262136
  br i1 %29, label %if.end18.i.sfq_change.exit.thread_crit_edge, label %if.end29.i

if.end18.i.sfq_change.exit.thread_crit_edge:      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sfq_change.exit.thread

if.end29.i:                                       ; preds = %if.end18.i
  %tobool30.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool30.not.i, label %if.end29.i.if.end44.i_crit_edge, label %land.lhs.true31.i

if.end29.i.if.end44.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i

land.lhs.true31.i:                                ; preds = %if.end29.i
  %qth_min.i = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %spec.select.i, i32 0, i32 4
  %30 = ptrtoint ptr %qth_min.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qth_min.i, align 4
  %Wlog.i = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %spec.select.i, i32 0, i32 6
  %32 = ptrtoint ptr %Wlog.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %Wlog.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i.i = icmp eq i32 %31, 0
  %34 = tail call i32 @llvm.ctlz.i32(i32 %31, i1 true) #14, !range !47
  %sub.i.i.i = sub nuw nsw i32 32, %34
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %conv.i.i = zext i8 %33 to i32
  %add.i.i = add nuw nsw i32 %cond.i.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 31
  br i1 %cmp.i.i, label %land.lhs.true31.i.sfq_change.exit.thread_crit_edge, label %red_check_params.exit.i

land.lhs.true31.i.sfq_change.exit.thread_crit_edge: ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sfq_change.exit.thread

red_check_params.exit.i:                          ; preds = %land.lhs.true31.i
  %Scell_log.i = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %spec.select.i, i32 0, i32 8
  %35 = ptrtoint ptr %Scell_log.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %Scell_log.i, align 2
  %qth_max.i = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %spec.select.i, i32 0, i32 5
  %37 = ptrtoint ptr %qth_max.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qth_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i2.i.i = icmp eq i32 %38, 0
  %39 = tail call i32 @llvm.ctlz.i32(i32 %38, i1 true) #14, !range !47
  %sub.i3.i.i = sub nuw nsw i32 32, %39
  %cond.i4.i.i = select i1 %tobool.not.i2.i.i, i32 0, i32 %sub.i3.i.i
  %add4.i.i = add nuw nsw i32 %cond.i4.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add4.i.i)
  %cmp5.i.i = icmp ugt i32 %add4.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %36)
  %cmp10.i.i = icmp ugt i8 %36, 31
  %or.cond.i.i = or i1 %cmp10.i.i, %cmp5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %31)
  %cmp14.i.i = icmp ult i32 %38, %31
  %or.cond1.i.i = or i1 %cmp14.i.i, %or.cond.i.i
  br i1 %or.cond1.i.i, label %red_check_params.exit.i.sfq_change.exit.thread_crit_edge, label %land.lhs.true36.critedge.i

red_check_params.exit.i.sfq_change.exit.thread_crit_edge: ; preds = %red_check_params.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sfq_change.exit.thread

land.lhs.true36.critedge.i:                       ; preds = %red_check_params.exit.i
  br i1 %tobool.not.i.i.i, label %land.lhs.true36.critedge.i.if.end44.i_crit_edge, label %if.then39.i

land.lhs.true36.critedge.i.if.end44.i_crit_edge:  ; preds = %land.lhs.true36.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i

if.then39.i:                                      ; preds = %land.lhs.true36.critedge.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3264, i32 noundef 296) #17
  %tobool41.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool41.not.i, label %if.then39.i.sfq_change.exit.thread_crit_edge, label %if.then39.i.if.end44.i_crit_edge

if.then39.i.if.end44.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i

if.then39.i.sfq_change.exit.thread_crit_edge:     ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sfq_change.exit.thread

if.end44.i:                                       ; preds = %if.then39.i.if.end44.i_crit_edge, %land.lhs.true36.critedge.i.if.end44.i_crit_edge, %if.end29.i.if.end44.i_crit_edge
  %p.0.i = phi ptr [ %call7.i.i, %if.then39.i.if.end44.i_crit_edge ], [ null, %land.lhs.true36.critedge.i.if.end44.i_crit_edge ], [ null, %if.end29.i.if.end44.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %41 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end44.i.sch_tree_lock.exit.i_crit_edge

if.end44.i.sch_tree_lock.exit.i_crit_edge:        ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %if.end44.i
  %43 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_queue.i, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i260.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i260.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !44

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 596) #14
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %if.end44.i.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %sch, %if.end44.i.sch_tree_lock.exit.i_crit_edge ], [ %46, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %46, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %46, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #14
  %47 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool46.not.i = icmp eq i32 %48, 0
  br i1 %tobool46.not.i, label %sch_tree_lock.exit.i.if.end55.i_crit_edge, label %if.then47.i

sch_tree_lock.exit.i.if.end55.i_crit_edge:        ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i

if.then47.i:                                      ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %quantum to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %quantum, align 4
  %sub52.i = add i32 %48, 7
  %div53255.i = lshr i32 %sub52.i, 3
  %conv54.i = trunc i32 %div53255.i to i16
  %50 = ptrtoint ptr %scaled_quantum to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv54.i, ptr %scaled_quantum, align 2
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then47.i, %sch_tree_lock.exit.i.if.end55.i_crit_edge
  %perturb_period.i = getelementptr i8, ptr %opt, i32 8
  %51 = ptrtoint ptr %perturb_period.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %perturb_period.i, align 4
  %mul.i = mul i32 %52, 100
  %53 = ptrtoint ptr %perturb_period to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul.i, ptr %perturb_period, align 8
  %flows.i = getelementptr i8, ptr %opt, i32 20
  %54 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool57.not.i = icmp eq i32 %55, 0
  br i1 %tobool57.not.i, label %if.end55.i.if.end62.i_crit_edge, label %if.then58.i

if.end55.i.if.end62.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62.i

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 65408) #14
  %57 = ptrtoint ptr %maxflows to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %maxflows, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then58.i, %if.end55.i.if.end62.i_crit_edge
  %58 = ptrtoint ptr %divisor.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %divisor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool64.not.i = icmp eq i32 %59, 0
  br i1 %tobool64.not.i, label %if.end62.i.if.end78.i_crit_edge, label %if.then65.i

if.end62.i.if.end78.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78.i

if.then65.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %divisor to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %divisor, align 4
  %61 = ptrtoint ptr %maxflows to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %maxflows, align 4
  %63 = tail call i32 @llvm.umin.i32(i32 %62, i32 %59) #14
  %64 = ptrtoint ptr %maxflows to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %maxflows, align 4
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then65.i, %if.end62.i.if.end78.i_crit_edge
  br i1 %tobool30.not.i, label %if.end78.i.if.end105.i_crit_edge, label %if.then80.i

if.end78.i.if.end105.i_crit_edge:                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105.i

if.then80.i:                                      ; preds = %if.end78.i
  %depth.i = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %spec.select.i, i32 0, i32 1
  %65 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool81.not.i = icmp eq i32 %66, 0
  br i1 %tobool81.not.i, label %if.then80.i.if.end92.i_crit_edge, label %if.then82.i

if.then80.i.if.end92.i_crit_edge:                 ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92.i

if.then82.i:                                      ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #16
  %67 = tail call i32 @llvm.umin.i32(i32 %66, i32 127) #14
  %68 = trunc i32 %67 to i8
  %69 = ptrtoint ptr %maxdepth to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %maxdepth, align 1
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then82.i, %if.then80.i.if.end92.i_crit_edge
  %tobool93.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool93.not.i, label %if.end92.i.if.end101.i_crit_edge, label %do.body.i

if.end92.i.if.end101.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101.i

do.body.i:                                        ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #16
  %red_parms.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %70 = ptrtoint ptr %red_parms.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %red_parms.i, align 4
  store ptr %p.0.i, ptr %red_parms.i, align 4
  %qth_min97.i = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %spec.select.i, i32 0, i32 4
  %72 = ptrtoint ptr %qth_min97.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %qth_min97.i, align 4
  %qth_max98.i = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %spec.select.i, i32 0, i32 5
  %74 = ptrtoint ptr %qth_max98.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %qth_max98.i, align 4
  %Wlog99.i = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %spec.select.i, i32 0, i32 6
  %76 = ptrtoint ptr %Wlog99.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %Wlog99.i, align 4
  %Plog.i = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %spec.select.i, i32 0, i32 7
  %78 = ptrtoint ptr %Plog.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %Plog.i, align 1
  %Scell_log100.i = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %spec.select.i, i32 0, i32 8
  %80 = ptrtoint ptr %Scell_log100.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %Scell_log100.i, align 2
  %max_P.i = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %spec.select.i, i32 0, i32 10
  %82 = ptrtoint ptr %max_P.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_P.i, align 4
  %sub.i.i = sub i32 %75, %73
  %conv.i262.i = zext i8 %77 to i32
  %shl.i.i = shl i32 %73, %conv.i262.i
  %84 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %shl.i.i, ptr %p.0.i, align 8
  %shl3.i.i = shl i32 %75, %conv.i262.i
  %qth_max4.i.i = getelementptr inbounds %struct.red_parms, ptr %p.0.i, i32 0, i32 1
  %85 = ptrtoint ptr %qth_max4.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %shl3.i.i, ptr %qth_max4.i.i, align 4
  %Wlog5.i.i = getelementptr inbounds %struct.red_parms, ptr %p.0.i, i32 0, i32 9
  %86 = ptrtoint ptr %Wlog5.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %77, ptr %Wlog5.i.i, align 1
  %Plog6.i.i = getelementptr inbounds %struct.red_parms, ptr %p.0.i, i32 0, i32 10
  %87 = ptrtoint ptr %Plog6.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %79, ptr %Plog6.i.i, align 2
  %88 = tail call i32 @llvm.smax.i32(i32 %sub.i.i, i32 1) #14
  %qth_delta.i.i = getelementptr inbounds %struct.red_parms, ptr %p.0.i, i32 0, i32 5
  %89 = ptrtoint ptr %qth_delta.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %qth_delta.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i263.i = icmp eq i32 %83, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %79)
  %cmp.i.i.i = icmp ult i8 %79, 32
  %conv.i.i.i = zext i8 %79 to i32
  %shr.i.i.i = lshr i32 -1, %conv.i.i.i
  %cond.i.i264.i = select i1 %cmp.i.i.i, i32 %shr.i.i.i, i32 -1
  %mul.i.i = mul i32 %cond.i.i264.i, %88
  %max_P.addr.0.i.i = select i1 %tobool.not.i263.i, i32 %mul.i.i, i32 %83
  %max_P10.i.i = getelementptr inbounds %struct.red_parms, ptr %p.0.i, i32 0, i32 3
  %90 = ptrtoint ptr %max_P10.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %max_P.addr.0.i.i, ptr %max_P10.i.i, align 4
  %div.i.i = udiv i32 %max_P.addr.0.i.i, %88
  %91 = tail call i32 @llvm.umax.i32(i32 %div.i.i, i32 1) #14
  %max_P_reciprocal.i.i = getelementptr inbounds %struct.red_parms, ptr %p.0.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp13.i.i) #14
  call void @reciprocal_value(ptr nonnull sret(%struct.reciprocal_value) align 4 %tmp13.i.i, i32 noundef %91) #14
  %92 = ptrtoint ptr %tmp13.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %tmp13.i.i, align 8
  %94 = ptrtoint ptr %max_P_reciprocal.i.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %max_P_reciprocal.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp13.i.i) #14
  %div14.i.i = udiv i32 %88, 5
  %mul15.i.i = shl nuw nsw i32 %div14.i.i, 1
  %add.i265.i = add i32 %mul15.i.i, %73
  %target_min.i.i = getelementptr inbounds %struct.red_parms, ptr %p.0.i, i32 0, i32 6
  %95 = ptrtoint ptr %target_min.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add.i265.i, ptr %target_min.i.i, align 4
  %mul16.i.i = mul nuw nsw i32 %div14.i.i, 3
  %add17.i.i = add i32 %mul16.i.i, %73
  %target_max.i.i = getelementptr inbounds %struct.red_parms, ptr %p.0.i, i32 0, i32 7
  %96 = ptrtoint ptr %target_max.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add17.i.i, ptr %target_max.i.i, align 8
  %Scell_log18.i.i = getelementptr inbounds %struct.red_parms, ptr %p.0.i, i32 0, i32 8
  %97 = ptrtoint ptr %Scell_log18.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %81, ptr %Scell_log18.i.i, align 4
  %conv19.i.i = zext i8 %81 to i32
  %shl20.i.i = shl i32 255, %conv19.i.i
  %Scell_max.i.i = getelementptr inbounds %struct.red_parms, ptr %p.0.i, i32 0, i32 2
  %98 = ptrtoint ptr %Scell_max.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %shl20.i.i, ptr %Scell_max.i.i, align 8
  br label %if.end101.i

if.end101.i:                                      ; preds = %do.body.i, %if.end92.i.if.end101.i_crit_edge
  %p.1.i = phi ptr [ %71, %do.body.i ], [ null, %if.end92.i.if.end101.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %spec.select.i, i32 0, i32 9
  %99 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %flags.i, align 1
  %flags102.i = getelementptr inbounds %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 6
  %101 = ptrtoint ptr %flags102.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %flags102.i, align 1
  %headdrop.i = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %spec.select.i, i32 0, i32 2
  %102 = ptrtoint ptr %headdrop.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %headdrop.i, align 4
  %conv103.i = trunc i32 %103 to i8
  %headdrop104.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %104 = ptrtoint ptr %headdrop104.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv103.i, ptr %headdrop104.i, align 8
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.end101.i, %if.end78.i.if.end105.i_crit_edge
  %p.2.i = phi ptr [ %p.1.i, %if.end101.i ], [ %p.0.i, %if.end78.i.if.end105.i_crit_edge ]
  %limit.i = getelementptr i8, ptr %opt, i32 12
  %105 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool106.not.i = icmp eq i32 %106, 0
  br i1 %tobool106.not.i, label %if.end105.i.if.end131.i_crit_edge, label %if.then107.i

if.end105.i.if.end131.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end131.i

if.then107.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #16
  %107 = ptrtoint ptr %maxdepth to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %maxdepth, align 1
  %conv110.i = zext i8 %108 to i32
  %109 = ptrtoint ptr %maxflows to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %maxflows, align 4
  %mul112.i = mul i32 %110, %conv110.i
  %111 = call i32 @llvm.umin.i32(i32 %106, i32 %mul112.i) #14
  %112 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %privdata.i, align 8
  %113 = call i32 @llvm.umin.i32(i32 %110, i32 %111) #14
  %114 = ptrtoint ptr %maxflows to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %maxflows, align 4
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.then107.i, %if.end105.i.if.end131.i_crit_edge
  %qlen133.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %115 = ptrtoint ptr %qlen133.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %qlen133.i, align 8
  %117 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %privdata.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %118)
  %cmp137284.i = icmp ugt i32 %116, %118
  br i1 %cmp137284.i, label %if.end131.i.while.body.i_crit_edge, label %if.end131.i.while.end.i_crit_edge

if.end131.i.while.end.i_crit_edge:                ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end131.i.while.body.i_crit_edge:               ; preds = %if.end131.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end143.i.while.body.i_crit_edge, %if.end131.i.while.body.i_crit_edge
  %dropped.0286.i = phi i32 [ %add140.i, %if.end143.i.while.body.i_crit_edge ], [ 0, %if.end131.i.while.body.i_crit_edge ]
  %tail.0285.i = phi ptr [ %tail.1.i, %if.end143.i.while.body.i_crit_edge ], [ null, %if.end131.i.while.body.i_crit_edge ]
  %call139.i = call fastcc i32 @sfq_drop(ptr noundef %sch, ptr noundef nonnull %to_free.i) #14
  %add140.i = add i32 %call139.i, %dropped.0286.i
  %tobool141.not.i = icmp eq ptr %tail.0285.i, null
  br i1 %tobool141.not.i, label %if.then142.i, label %while.body.i.if.end143.i_crit_edge

while.body.i.if.end143.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143.i

if.then142.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %119 = ptrtoint ptr %to_free.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %to_free.i, align 4
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.then142.i, %while.body.i.if.end143.i_crit_edge
  %tail.1.i = phi ptr [ %tail.0285.i, %while.body.i.if.end143.i_crit_edge ], [ %120, %if.then142.i ]
  %121 = ptrtoint ptr %qlen133.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %qlen133.i, align 8
  %123 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %privdata.i, align 8
  %cmp137.i = icmp ugt i32 %122, %124
  br i1 %cmp137.i, label %if.end143.i.while.body.i_crit_edge, label %if.end143.i.while.end.i_crit_edge

if.end143.i.while.end.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end143.i.while.body.i_crit_edge:               ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end.i:                                      ; preds = %if.end143.i.while.end.i_crit_edge, %if.end131.i.while.end.i_crit_edge
  %tail.0.lcssa.i = phi ptr [ null, %if.end131.i.while.end.i_crit_edge ], [ %tail.1.i, %if.end143.i.while.end.i_crit_edge ]
  %dropped.0.lcssa.i = phi i32 [ 0, %if.end131.i.while.end.i_crit_edge ], [ %add140.i, %if.end143.i.while.end.i_crit_edge ]
  %125 = ptrtoint ptr %to_free.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %to_free.i, align 4
  call void @rtnl_kfree_skbs(ptr noundef %126, ptr noundef %tail.0.lcssa.i) #14
  %127 = ptrtoint ptr %qlen133.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %qlen133.i, align 8
  %sub146.i = sub i32 %116, %128
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %sub146.i, i32 noundef %dropped.0.lcssa.i) #14
  %call147.i = call i32 @del_timer(ptr noundef %perturb_timer) #14
  %129 = ptrtoint ptr %perturb_period to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %perturb_period, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool149.not.i = icmp eq i32 %130, 0
  br i1 %tobool149.not.i, label %while.end.i.if.end155.i_crit_edge, label %if.then150.i

while.end.i.if.end155.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end155.i

if.then150.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %131 = load volatile i32, ptr @jiffies, align 128
  %add153.i = add i32 %131, %130
  %call154.i = call i32 @mod_timer(ptr noundef %perturb_timer, i32 noundef %add153.i) #14
  call void @get_random_bytes(ptr noundef %perturbation, i32 noundef 16) #14
  br label %if.end155.i

if.end155.i:                                      ; preds = %if.then150.i, %while.end.i.if.end155.i_crit_edge
  %132 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags.i.i, align 8
  %and.i267.i = and i32 %133, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i267.i)
  %tobool.not.i268.i = icmp eq i32 %and.i267.i, 0
  br i1 %tobool.not.i268.i, label %if.else.i273.i, label %if.end155.i.sfq_change.exit_crit_edge

if.end155.i.sfq_change.exit_crit_edge:            ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sfq_change.exit

if.else.i273.i:                                   ; preds = %if.end155.i
  %134 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev_queue.i, align 8
  %qdisc_sleeping.i.i.i270.i = getelementptr inbounds %struct.netdev_queue, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %qdisc_sleeping.i.i.i270.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %qdisc_sleeping.i.i.i270.i, align 4
  %call1.i.i271.i = call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i271.i)
  %tobool.not.i.i272.i = icmp eq i32 %call1.i.i271.i, 0
  br i1 %tobool.not.i.i272.i, label %land.rhs.i.i275.i, label %if.else.i273.i.sfq_change.exit_crit_edge

if.else.i273.i.sfq_change.exit_crit_edge:         ; preds = %if.else.i273.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sfq_change.exit

land.rhs.i.i275.i:                                ; preds = %if.else.i273.i
  %.b41.i.i274.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i274.i, label %land.rhs.i.i275.i.sfq_change.exit_crit_edge, label %if.then.i.i276.i, !prof !44

land.rhs.i.i275.i.sfq_change.exit_crit_edge:      ; preds = %land.rhs.i.i275.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sfq_change.exit

if.then.i.i276.i:                                 ; preds = %land.rhs.i.i275.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 596) #14
  br label %sfq_change.exit

sfq_change.exit.thread:                           ; preds = %if.then39.i.sfq_change.exit.thread_crit_edge, %red_check_params.exit.i.sfq_change.exit.thread_crit_edge, %land.lhs.true31.i.sfq_change.exit.thread_crit_edge, %if.end18.i.sfq_change.exit.thread_crit_edge, %land.lhs.true.i.sfq_change.exit.thread_crit_edge, %if.then13.sfq_change.exit.thread_crit_edge
  %retval.1.i.ph = phi i32 [ -22, %if.end18.i.sfq_change.exit.thread_crit_edge ], [ -22, %land.lhs.true31.i.sfq_change.exit.thread_crit_edge ], [ -12, %if.then39.i.sfq_change.exit.thread_crit_edge ], [ -22, %red_check_params.exit.i.sfq_change.exit.thread_crit_edge ], [ -22, %land.lhs.true.i.sfq_change.exit.thread_crit_edge ], [ -22, %if.then13.sfq_change.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %to_free.i) #14
  br label %cleanup58

sfq_change.exit:                                  ; preds = %if.then.i.i276.i, %land.rhs.i.i275.i.sfq_change.exit_crit_edge, %if.else.i273.i.sfq_change.exit_crit_edge, %if.end155.i.sfq_change.exit_crit_edge
  %.sink.i277.i = phi ptr [ %sch, %if.end155.i.sfq_change.exit_crit_edge ], [ %137, %if.else.i273.i.sfq_change.exit_crit_edge ], [ %137, %land.rhs.i.i275.i.sfq_change.exit_crit_edge ], [ %137, %if.then.i.i276.i ]
  %lock.i.i.i278.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i277.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i278.i) #14
  call void @kfree(ptr noundef %p.2.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %to_free.i) #14
  br label %if.end19

if.end19:                                         ; preds = %sfq_change.exit, %for.end.if.end19_crit_edge
  %138 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %divisor, align 4
  %mul = shl i32 %139, 1
  %call.i.i = call noalias ptr @kvmalloc_node(i32 noundef %mul, i32 noundef 3264, i32 noundef -1) #18
  %ht = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %140 = ptrtoint ptr %ht to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call.i.i, ptr %ht, align 4
  %141 = ptrtoint ptr %maxflows to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %maxflows, align 4
  %mul23 = mul i32 %142, 48
  %call.i.i111 = call noalias ptr @kvmalloc_node(i32 noundef %mul23, i32 noundef 3264, i32 noundef -1) #18
  %slots = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %143 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call.i.i111, ptr %slots, align 8
  %144 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ht, align 4
  %tobool26.not = icmp eq ptr %145, null
  %tobool28.not = icmp eq ptr %call.i.i111, null
  %or.cond = select i1 %tobool26.not, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %if.end19.cleanup58_crit_edge, label %for.cond31.preheader

if.end19.cleanup58_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup58

for.cond31.preheader:                             ; preds = %if.end19
  %146 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %divisor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp33120.not = icmp eq i32 %147, 0
  br i1 %cmp33120.not, label %for.cond31.preheader.for.cond41.preheader_crit_edge, label %for.cond31.preheader.for.body35_crit_edge

for.cond31.preheader.for.body35_crit_edge:        ; preds = %for.cond31.preheader
  br label %for.body35

for.cond31.preheader.for.cond41.preheader_crit_edge: ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %for.body35.for.cond41.preheader_crit_edge, %for.cond31.preheader.for.cond41.preheader_crit_edge
  %148 = ptrtoint ptr %maxflows to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %maxflows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp43122.not = icmp eq i32 %149, 0
  br i1 %cmp43122.not, label %for.cond41.preheader.for.end51_crit_edge, label %for.cond41.preheader.for.body45_crit_edge

for.cond41.preheader.for.body45_crit_edge:        ; preds = %for.cond41.preheader
  br label %for.body45

for.cond41.preheader.for.end51_crit_edge:         ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end51

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.cond31.preheader.for.body35_crit_edge
  %i.1121 = phi i32 [ %inc39, %for.body35.for.body35_crit_edge ], [ 0, %for.cond31.preheader.for.body35_crit_edge ]
  %150 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ht, align 4
  %arrayidx37 = getelementptr i16, ptr %151, i32 %i.1121
  %152 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 -1, ptr %arrayidx37, align 2
  %inc39 = add nuw i32 %i.1121, 1
  %153 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %divisor, align 4
  %cmp33 = icmp ult i32 %inc39, %154
  br i1 %cmp33, label %for.body35.for.body35_crit_edge, label %for.body35.for.cond41.preheader_crit_edge

for.body35.for.cond41.preheader_crit_edge:        ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond41.preheader

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body35

for.body45:                                       ; preds = %sfq_link.exit.for.body45_crit_edge, %for.cond41.preheader.for.body45_crit_edge
  %i.2123 = phi i32 [ %inc50, %sfq_link.exit.for.body45_crit_edge ], [ 0, %for.cond41.preheader.for.body45_crit_edge ]
  %155 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %slots, align 8
  %arrayidx47 = getelementptr %struct.sfq_slot, ptr %156, i32 %i.2123
  %157 = getelementptr inbounds i8, ptr %arrayidx47, i32 8
  %158 = call ptr @memset(ptr %157, i32 0, i32 40)
  %159 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %arrayidx47, ptr %arrayidx47, align 8
  %skblist_prev.i = getelementptr %struct.sfq_slot, ptr %156, i32 %i.2123, i32 1
  %160 = ptrtoint ptr %skblist_prev.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %arrayidx47, ptr %skblist_prev.i, align 4
  %conv48 = trunc i32 %i.2123 to i16
  %161 = load ptr, ptr %slots, align 8
  %idxprom.i = and i32 %i.2123, 65535
  %qlen1.i = getelementptr %struct.sfq_slot, ptr %161, i32 %idxprom.i, i32 2
  %162 = ptrtoint ptr %qlen1.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %qlen1.i, align 8
  %conv.i112 = zext i16 %163 to i32
  %add.i113 = add i16 %163, -128
  %arrayidx3.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %conv.i112
  %164 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %arrayidx3.i, align 4
  %dep4.i = getelementptr %struct.sfq_slot, ptr %161, i32 %idxprom.i, i32 4
  %166 = ptrtoint ptr %dep4.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %165, ptr %dep4.i, align 4
  %prev.i = getelementptr %struct.sfq_slot, ptr %161, i32 %idxprom.i, i32 4, i32 1
  %167 = ptrtoint ptr %prev.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %add.i113, ptr %prev.i, align 2
  store i16 %conv48, ptr %arrayidx3.i, align 4
  %conv.i.i114 = zext i16 %165 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %165)
  %cmp.i.i115 = icmp ult i16 %165, -128
  br i1 %cmp.i.i115, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #16
  %168 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %slots, align 8
  %dep.i.i = getelementptr %struct.sfq_slot, ptr %169, i32 %conv.i.i114, i32 4
  br label %sfq_link.exit

if.end.i.i:                                       ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i116 = add nsw i32 %conv.i.i114, -65408
  %arrayidx4.i.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %sub.i.i116
  br label %sfq_link.exit

sfq_link.exit:                                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %dep.i.i, %if.then.i.i ], [ %arrayidx4.i.i, %if.end.i.i ]
  %prev10.i = getelementptr inbounds %struct.sfq_head, ptr %retval.0.i.i, i32 0, i32 1
  %170 = ptrtoint ptr %prev10.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv48, ptr %prev10.i, align 2
  %inc50 = add nuw i32 %i.2123, 1
  %171 = ptrtoint ptr %maxflows to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %maxflows, align 4
  %cmp43 = icmp ult i32 %inc50, %172
  br i1 %cmp43, label %sfq_link.exit.for.body45_crit_edge, label %sfq_link.exit.for.end51_crit_edge

sfq_link.exit.for.end51_crit_edge:                ; preds = %sfq_link.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end51

sfq_link.exit.for.body45_crit_edge:               ; preds = %sfq_link.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body45

for.end51:                                        ; preds = %sfq_link.exit.for.end51_crit_edge, %for.cond41.preheader.for.end51_crit_edge
  %173 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %privdata.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp53 = icmp sgt i32 %174, 0
  %flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %175 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flags, align 8
  br i1 %cmp53, label %if.then55, label %if.else

if.then55:                                        ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %176, 4
  %177 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %or, ptr %flags, align 8
  br label %cleanup58

if.else:                                          ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #16
  %and = and i32 %176, -5
  %178 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %and, ptr %flags, align 8
  br label %cleanup58

cleanup58:                                        ; preds = %if.else, %if.then55, %if.end19.cleanup58_crit_edge, %sfq_change.exit.thread, %entry.cleanup58_crit_edge
  %retval.1 = phi i32 [ %call2, %entry.cleanup58_crit_edge ], [ -12, %if.end19.cleanup58_crit_edge ], [ 0, %if.else ], [ 0, %if.then55 ], [ %retval.1.i.ph, %sfq_change.exit.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfq_reset(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call ptr @sfq_dequeue(ptr noundef %sch)
  %cmp.not3 = icmp eq ptr %call2, null
  br i1 %cmp.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call4 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call2, %entry.while.body_crit_edge ]
  tail call void @rtnl_kfree_skbs(ptr noundef nonnull %call4, ptr noundef nonnull %call4) #14
  %call = tail call ptr @sfq_dequeue(ptr noundef %sch)
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfq_destroy(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 8
  tail call void @tcf_block_put(ptr noundef %1) #14
  %perturb_period = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 24
  %2 = ptrtoint ptr %perturb_period to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %perturb_period, align 8
  %perturb_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 32
  %call1 = tail call i32 @del_timer_sync(ptr noundef %perturb_timer) #14
  %ht = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %3 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ht, align 4
  tail call void @kvfree(ptr noundef %4) #14
  %slots = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %5 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slots, align 8
  tail call void @kvfree(ptr noundef %6) #14
  %red_parms = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %7 = ptrtoint ptr %red_parms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %red_parms, align 4
  tail call void @kfree(ptr noundef %8) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfq_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #2 align 64 {
entry:
  %opt = alloca %struct.tc_sfq_qopt_v1, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %opt) #14
  %red_parms = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %2 = ptrtoint ptr %red_parms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %red_parms, align 4
  %4 = getelementptr inbounds i8, ptr %opt, i32 28
  %5 = call ptr @memset(ptr %4, i32 0, i32 20)
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 28
  %6 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quantum, align 4
  %8 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %opt, align 4
  %perturb_period = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 24
  %9 = ptrtoint ptr %perturb_period to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %perturb_period, align 8
  %div = sdiv i32 %10, 100
  %perturb_period4 = getelementptr inbounds %struct.tc_sfq_qopt, ptr %opt, i32 0, i32 1
  %11 = ptrtoint ptr %perturb_period4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %perturb_period4, align 4
  %12 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %privdata.i, align 8
  %limit6 = getelementptr inbounds %struct.tc_sfq_qopt, ptr %opt, i32 0, i32 2
  %14 = ptrtoint ptr %limit6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %limit6, align 4
  %divisor = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %15 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %divisor, align 4
  %divisor8 = getelementptr inbounds %struct.tc_sfq_qopt, ptr %opt, i32 0, i32 3
  %17 = ptrtoint ptr %divisor8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %divisor8, align 4
  %maxflows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 15, i32 20
  %18 = ptrtoint ptr %maxflows to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %maxflows, align 4
  %flows = getelementptr inbounds %struct.tc_sfq_qopt, ptr %opt, i32 0, i32 4
  %20 = ptrtoint ptr %flows to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %flows, align 4
  %maxdepth = getelementptr inbounds %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 3
  %21 = ptrtoint ptr %maxdepth to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %maxdepth, align 1
  %conv = zext i8 %22 to i32
  %depth = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %opt, i32 0, i32 1
  %23 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %depth, align 4
  %headdrop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %24 = ptrtoint ptr %headdrop to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %headdrop, align 8
  %conv10 = zext i8 %25 to i32
  %headdrop11 = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %opt, i32 0, i32 2
  %26 = ptrtoint ptr %headdrop11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv10, ptr %headdrop11, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 4
  %Wlog = getelementptr inbounds %struct.red_parms, ptr %3, i32 0, i32 9
  %29 = ptrtoint ptr %Wlog to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %Wlog, align 1
  %conv12 = zext i8 %30 to i32
  %shr = lshr i32 %28, %conv12
  %qth_min13 = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %opt, i32 0, i32 4
  %31 = ptrtoint ptr %qth_min13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr, ptr %qth_min13, align 4
  %qth_max = getelementptr inbounds %struct.red_parms, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %qth_max to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qth_max, align 4
  %shr16 = lshr i32 %33, %conv12
  %qth_max17 = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %opt, i32 0, i32 5
  %34 = ptrtoint ptr %qth_max17 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr16, ptr %qth_max17, align 4
  %35 = load i8, ptr %Wlog, align 1
  %Wlog19 = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %opt, i32 0, i32 6
  %36 = ptrtoint ptr %Wlog19 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %Wlog19, align 4
  %Plog = getelementptr inbounds %struct.red_parms, ptr %3, i32 0, i32 10
  %37 = ptrtoint ptr %Plog to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %Plog, align 2
  %Plog20 = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %opt, i32 0, i32 7
  %39 = ptrtoint ptr %Plog20 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %Plog20, align 1
  %Scell_log = getelementptr inbounds %struct.red_parms, ptr %3, i32 0, i32 8
  %40 = ptrtoint ptr %Scell_log to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %Scell_log, align 4
  %Scell_log21 = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %opt, i32 0, i32 8
  %42 = ptrtoint ptr %Scell_log21 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %Scell_log21, align 2
  %max_P = getelementptr inbounds %struct.red_parms, ptr %3, i32 0, i32 3
  %43 = ptrtoint ptr %max_P to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_P, align 4
  %max_P22 = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %opt, i32 0, i32 10
  %45 = ptrtoint ptr %max_P22 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %max_P22, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stats = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %opt, i32 0, i32 11
  %stats23 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %46 = call ptr @memcpy(ptr %stats, ptr %stats23, i32 24)
  %flags = getelementptr inbounds %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 6
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %flags, align 1
  %flags24 = getelementptr inbounds %struct.tc_sfq_qopt_v1, ptr %opt, i32 0, i32 9
  %49 = ptrtoint ptr %flags24 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %flags24, align 1
  %call25 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 72, ptr noundef nonnull %opt) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %nla_put_failure

if.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %53, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !48

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end28
  %retval.0 = phi i32 [ %51, %if.end28 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %opt) #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @sfq_leaf(ptr nocapture noundef readnone %sch, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sfq_find(ptr nocapture noundef readnone %sch, i32 noundef %classid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfq_walk(ptr noundef %sch, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %divisor = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %2 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %divisor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp30.not = icmp eq i32 %3, 0
  br i1 %cmp30.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ht = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16.pre-phi, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ht, align 4
  %arrayidx = getelementptr i16, ptr %5, i32 %i.031
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp1 = icmp eq i16 %7, -1
  br i1 %cmp1, label %for.body.if.then5_crit_edge, label %lor.lhs.false

for.body.if.then5_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

lor.lhs.false:                                    ; preds = %for.body
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %10 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3 = icmp slt i32 %9, %11
  br i1 %cmp3, label %lor.lhs.false.if.then5_crit_edge, label %if.end7

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %for.body.if.then5_crit_edge
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %count, align 4
  %.pre = add nuw i32 %i.031, 1
  br label %for.inc

if.end7:                                          ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fn, align 4
  %add = add nuw i32 %i.031, 1
  %call8 = tail call i32 %15(ptr noundef %sch, i32 noundef %add, ptr noundef %arg) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %arg, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  %inc15 = add i32 %18, 1
  store i32 %inc15, ptr %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %if.then5
  %inc16.pre-phi = phi i32 [ %add, %if.end13 ], [ %.pre, %if.then5 ]
  %19 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %divisor, align 4
  %cmp = icmp ult i32 %inc16.pre-phi, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then11, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sfq_tcf_block(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cl)
  %tobool.not = icmp eq i32 %cl, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sfq_bind(ptr nocapture noundef readnone %sch, i32 noundef %parent, i32 noundef %classid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sfq_unbind(ptr nocapture noundef %q, i32 noundef %cl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sfq_dump_class(ptr nocapture noundef readnone %sch, i32 noundef %cl, ptr nocapture noundef readnone %skb, ptr nocapture noundef %tcm) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
define internal i32 @sfq_dump_class_stats(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr noundef %d) #2 align 64 {
entry:
  %qs = alloca %struct.gnet_stats_queue, align 4
  %xstats = alloca %struct.tc_sfq_xstats, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ht = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %0 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ht, align 4
  %sub = add i32 %cl, -1
  %arrayidx = getelementptr i16, ptr %1, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qs) #14
  %4 = call ptr @memset(ptr %qs, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xstats) #14
  %5 = ptrtoint ptr %xstats to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %xstats, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.not = icmp eq i16 %3, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i16 %3 to i32
  %slots = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %6 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slots, align 8
  %allot = getelementptr %struct.sfq_slot, ptr %7, i32 %conv, i32 6
  %8 = ptrtoint ptr %allot to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %allot, align 2
  %conv3 = sext i16 %9 to i32
  %shl = shl nsw i32 %conv3, 3
  %10 = ptrtoint ptr %xstats to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl, ptr %xstats, align 4
  %qlen = getelementptr %struct.sfq_slot, ptr %7, i32 %conv, i32 2
  %11 = ptrtoint ptr %qlen to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %qlen, align 8
  %conv5 = zext i16 %12 to i32
  %13 = ptrtoint ptr %qs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv5, ptr %qs, align 4
  %backlog = getelementptr %struct.sfq_slot, ptr %7, i32 %conv, i32 7
  %14 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %backlog, align 4
  %backlog7 = getelementptr inbounds %struct.gnet_stats_queue, ptr %qs, i32 0, i32 1
  %16 = ptrtoint ptr %backlog7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %backlog7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %qs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qs, align 4
  %call9 = call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef null, ptr noundef nonnull %qs, i32 noundef %18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call14 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef nonnull %xstats, i32 noundef 4) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ -1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xstats) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qs) #14
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @INET_ECN_set_ce(ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.skb_protocol.exit_crit_edge [
    i16 -30552, label %entry.if.then.i.i.i_crit_edge
    i16 -32512, label %entry.if.then.i.i.i_crit_edge42
  ]

entry.if.then.i.i.i_crit_edge42:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

entry.skb_protocol.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %entry.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge42
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i.i.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp.i.i.i = icmp ult i16 %3, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !48

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 598, i32 noundef 9, ptr noundef null) #14
  br label %return

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #14
  %6 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !39
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %5, align 2, !annotation !39
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
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !44

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %14, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !48
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %15 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !48
  br i1 %15, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !48

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #14
  br label %return

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #14
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %17, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool2.not.i = icmp eq i8 %29, 0
  %lnot.ext.i = zext i1 %tobool2.not.i to i32
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then3.i:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #16
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
declare dso_local void @qdisc_tree_reduce_backlog(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @sfq_drop(ptr nocapture noundef %sch, ptr nocapture noundef %to_free) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %cur_depth = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %0 = ptrtoint ptr %cur_depth to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_depth, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv1 = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %conv1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %slots = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %4 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slots, align 8
  %idxprom3 = zext i16 %3 to i32
  %arrayidx4 = getelementptr %struct.sfq_slot, ptr %5, i32 %idxprom3
  br label %drop

drop:                                             ; preds = %if.then14, %if.then
  %x.0 = phi i16 [ %3, %if.then ], [ %69, %if.then14 ]
  %slot.0 = phi ptr [ %arrayidx4, %if.then ], [ %arrayidx18, %if.then14 ]
  %headdrop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %6 = ptrtoint ptr %headdrop to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %headdrop, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %drop
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %slot.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slot.0, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  store ptr %11, ptr %slot.0, align 8
  %12 = load ptr, ptr %9, align 8
  %prev.i = getelementptr inbounds %struct.anon.0, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %slot.0, ptr %prev.i, align 4
  %prev3.i = getelementptr inbounds %struct.anon.0, ptr %9, i32 0, i32 1
  br label %cond.end

cond.false:                                       ; preds = %drop
  call void @__sanitizer_cov_trace_pc() #16
  %skblist_prev.i = getelementptr inbounds %struct.sfq_slot, ptr %slot.0, i32 0, i32 1
  %14 = ptrtoint ptr %skblist_prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skblist_prev.i, align 4
  %prev.i52 = getelementptr inbounds %struct.anon.0, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i52, align 4
  store ptr %17, ptr %skblist_prev.i, align 4
  %18 = load ptr, ptr %prev.i52, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %slot.0, ptr %18, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %prev.i52.sink = phi ptr [ %prev.i52, %cond.false ], [ %prev3.i, %cond.true ]
  %.sink = phi ptr [ %15, %cond.false ], [ %9, %cond.true ]
  %20 = ptrtoint ptr %prev.i52.sink to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %prev.i52.sink, align 4
  %21 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %.sink, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %.sink, i32 0, i32 3
  %22 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cb.i.i, align 4
  %backlog = getelementptr inbounds %struct.sfq_slot, ptr %slot.0, i32 0, i32 7
  %24 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %backlog, align 4
  %sub = sub i32 %25, %23
  store i32 %sub, ptr %backlog, align 4
  %slots.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %26 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slots.i, align 8
  %idxprom.i = zext i16 %x.0 to i32
  %dep.i = getelementptr %struct.sfq_slot, ptr %27, i32 %idxprom.i, i32 4
  %28 = ptrtoint ptr %dep.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dep.i, align 4
  %prev.i53 = getelementptr %struct.sfq_slot, ptr %27, i32 %idxprom.i, i32 4, i32 1
  %30 = ptrtoint ptr %prev.i53 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %prev.i53, align 2
  %conv.i.i = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %31)
  %cmp.i.i = icmp ult i16 %31, -128
  %dep.i.i = getelementptr %struct.sfq_slot, ptr %27, i32 %conv.i.i, i32 4
  %sub.i.i = add nsw i32 %conv.i.i, -65408
  %arrayidx4.i.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %sub.i.i
  %retval.0.i.i = select i1 %cmp.i.i, ptr %dep.i.i, ptr %arrayidx4.i.i
  %32 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %29, ptr %retval.0.i.i, align 2
  %conv.i33.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %29)
  %cmp.i34.i = icmp ult i16 %29, -128
  br i1 %cmp.i34.i, label %if.then.i37.i, label %if.end.i40.i

if.then.i37.i:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %slots.i, align 8
  %dep.i36.i = getelementptr %struct.sfq_slot, ptr %34, i32 %conv.i33.i, i32 4
  br label %sfq_dep_head.exit42.i

if.end.i40.i:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i38.i = add nsw i32 %conv.i33.i, -65408
  %arrayidx4.i39.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %sub.i38.i
  br label %sfq_dep_head.exit42.i

sfq_dep_head.exit42.i:                            ; preds = %if.end.i40.i, %if.then.i37.i
  %retval.0.i41.i = phi ptr [ %dep.i36.i, %if.then.i37.i ], [ %arrayidx4.i39.i, %if.end.i40.i ]
  %prev7.i = getelementptr inbounds %struct.sfq_head, ptr %retval.0.i41.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev7.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %31, ptr %prev7.i, align 2
  %36 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %slots.i, align 8
  %qlen.i = getelementptr %struct.sfq_slot, ptr %37, i32 %idxprom.i, i32 2
  %38 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %qlen.i, align 8
  %dec.i = add i16 %39, -1
  store i16 %dec.i, ptr %qlen.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp.i = icmp eq i16 %29, %31
  br i1 %cmp.i, label %land.lhs.true.i, label %sfq_dep_head.exit42.i.if.end.i_crit_edge

sfq_dep_head.exit42.i.if.end.i_crit_edge:         ; preds = %sfq_dep_head.exit42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sfq_dep_head.exit42.i
  %40 = ptrtoint ptr %cur_depth to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %cur_depth, align 8
  %42 = zext i8 %41 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %42)
  %cmp15.i = icmp eq i16 %39, %42
  br i1 %cmp15.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %dec18.i = add i8 %41, -1
  %43 = ptrtoint ptr %cur_depth to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %dec18.i, ptr %cur_depth, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %sfq_dep_head.exit42.i.if.end.i_crit_edge
  %44 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %slots.i, align 8
  %qlen1.i.i = getelementptr %struct.sfq_slot, ptr %45, i32 %idxprom.i, i32 2
  %46 = ptrtoint ptr %qlen1.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %qlen1.i.i, align 8
  %conv.i44.i = zext i16 %47 to i32
  %add.i.i = add i16 %47, -128
  %arrayidx3.i.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %conv.i44.i
  %48 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx3.i.i, align 4
  %dep4.i.i = getelementptr %struct.sfq_slot, ptr %45, i32 %idxprom.i, i32 4
  %50 = ptrtoint ptr %dep4.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %dep4.i.i, align 4
  %prev.i.i = getelementptr %struct.sfq_slot, ptr %45, i32 %idxprom.i, i32 4, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %add.i.i, ptr %prev.i.i, align 2
  store i16 %x.0, ptr %arrayidx3.i.i, align 4
  %conv.i.i.i = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %49)
  %cmp.i.i.i = icmp ult i16 %49, -128
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %slots.i, align 8
  %dep.i.i.i = getelementptr %struct.sfq_slot, ptr %53, i32 %conv.i.i.i, i32 4
  br label %sfq_dec.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -65408
  %arrayidx4.i.i.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i, i32 0, i32 15, i32 %sub.i.i.i
  br label %sfq_dec.exit

sfq_dec.exit:                                     ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %dep.i.i.i, %if.then.i.i.i ], [ %arrayidx4.i.i.i, %if.end.i.i.i ]
  %prev10.i.i = getelementptr inbounds %struct.sfq_head, ptr %retval.0.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev10.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %x.0, ptr %prev10.i.i, align 2
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %55 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %qlen, align 8
  %dec = add i32 %56, -1
  store i32 %dec, ptr %qlen, align 8
  %57 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cb.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %59 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %60, %58
  store i32 %sub.i, ptr %backlog.i, align 4
  %61 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %to_free, align 4
  %63 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %.sink, align 8
  store ptr %.sink, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %64 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %65, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp12 = icmp eq i8 %1, 1
  br i1 %cmp12, label %if.then14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %tail = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %66 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tail, align 8
  %next15 = getelementptr inbounds %struct.sfq_slot, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %next15 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %next15, align 2
  %slots16 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %70 = ptrtoint ptr %slots16 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %slots16, align 8
  %idxprom17 = zext i16 %69 to i32
  %arrayidx18 = getelementptr %struct.sfq_slot, ptr %71, i32 %idxprom17
  %next19 = getelementptr %struct.sfq_slot, ptr %71, i32 %idxprom17, i32 3
  %72 = ptrtoint ptr %next19 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %next19, align 2
  store i16 %73, ptr %next15, align 2
  %ht = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %74 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ht, align 4
  %hash = getelementptr %struct.sfq_slot, ptr %71, i32 %idxprom17, i32 5
  %76 = ptrtoint ptr %hash to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %hash, align 8
  %idxprom22 = zext i16 %77 to i32
  %arrayidx23 = getelementptr i16, ptr %75, i32 %idxprom22
  %78 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 -1, ptr %arrayidx23, align 2
  br label %drop

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %sfq_dec.exit
  %retval.0 = phi i32 [ %23, %sfq_dec.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_classify(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_get_hash_perturb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfq_perturbation(ptr noundef %t) #2 align 64 {
entry:
  %list.i = alloca %struct.sk_buff_head, align 4
  %nkey = alloca %struct.siphash_key_t, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sch1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %sch1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sch1, align 8
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i, align 8
  %qdisc_sleeping.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qdisc_sleeping.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc_sleeping.i, align 4
  %lock.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 17, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nkey) #14
  %6 = call ptr @memset(ptr %nkey, i32 255, i32 16)
  call void @get_random_bytes(ptr noundef nonnull %nkey, i32 noundef 16) #14
  call void @_raw_spin_lock(ptr noundef %lock.i) #14
  %perturbation = getelementptr i8, ptr %t, i32 -592
  %7 = call ptr @memcpy(ptr %perturbation, ptr %nkey, i32 16)
  %filter_list = getelementptr i8, ptr %t, i32 -572
  %8 = ptrtoint ptr %filter_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %filter_list, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tail = getelementptr i8, ptr %t, i32 -528
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail, align 8
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list.i) #14
  %12 = getelementptr inbounds i8, ptr %list.i, i32 12
  %13 = call ptr @memset(ptr %12, i32 255, i32 44)
  %14 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.52, ptr %list.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list.i, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %list.i, i32 0, i32 1
  %16 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %qlen.i.i, align 4
  %maxflows.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 2, i32 15, i32 20
  %17 = ptrtoint ptr %maxflows.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxflows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp185.not.i = icmp eq i32 %18, 0
  br i1 %cmp185.not.i, label %if.then.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %slots.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 1, i32 11
  %cur_depth.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 1, i32 7
  %ht.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 1, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0186.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slots.i, align 8
  %arrayidx.i = getelementptr %struct.sfq_slot, ptr %20, i32 %i.0186.i
  %qlen.i = getelementptr %struct.sfq_slot, ptr %20, i32 %i.0186.i, i32 2
  %21 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %qlen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %while.cond.preheader.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

while.cond.preheader.i:                           ; preds = %for.body.i
  %conv.i = trunc i32 %i.0186.i to i16
  %idxprom.i.i = and i32 %i.0186.i, 65535
  br label %while.body.i

while.body.i:                                     ; preds = %sfq_dec.exit.i.while.body.i_crit_edge, %while.cond.preheader.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  store ptr %26, ptr %arrayidx.i, align 8
  %27 = load ptr, ptr %24, align 8
  %prev.i138.i = getelementptr inbounds %struct.anon.0, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i138.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx.i, ptr %prev.i138.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.anon.0, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %prev3.i.i, align 4
  store ptr null, ptr %24, align 8
  %30 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slots.i, align 8
  %dep.i.i = getelementptr %struct.sfq_slot, ptr %31, i32 %idxprom.i.i, i32 4
  %32 = ptrtoint ptr %dep.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dep.i.i, align 4
  %prev.i139.i = getelementptr %struct.sfq_slot, ptr %31, i32 %idxprom.i.i, i32 4, i32 1
  %34 = ptrtoint ptr %prev.i139.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %prev.i139.i, align 2
  %conv.i.i.i = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %35)
  %cmp.i.i.i = icmp ult i16 %35, -128
  %dep.i.i.i = getelementptr %struct.sfq_slot, ptr %31, i32 %conv.i.i.i, i32 4
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -65408
  %arrayidx4.i.i.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i.i, i32 0, i32 15, i32 %sub.i.i.i
  %retval.0.i.i.i = select i1 %cmp.i.i.i, ptr %dep.i.i.i, ptr %arrayidx4.i.i.i
  %36 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %33, ptr %retval.0.i.i.i, align 2
  %conv.i33.i.i = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %33)
  %cmp.i34.i.i = icmp ult i16 %33, -128
  br i1 %cmp.i34.i.i, label %if.then.i37.i.i, label %if.end.i40.i.i

if.then.i37.i.i:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %slots.i, align 8
  %dep.i36.i.i = getelementptr %struct.sfq_slot, ptr %38, i32 %conv.i33.i.i, i32 4
  br label %sfq_dep_head.exit42.i.i

if.end.i40.i.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i38.i.i = add nsw i32 %conv.i33.i.i, -65408
  %arrayidx4.i39.i.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i.i, i32 0, i32 15, i32 %sub.i38.i.i
  br label %sfq_dep_head.exit42.i.i

sfq_dep_head.exit42.i.i:                          ; preds = %if.end.i40.i.i, %if.then.i37.i.i
  %retval.0.i41.i.i = phi ptr [ %dep.i36.i.i, %if.then.i37.i.i ], [ %arrayidx4.i39.i.i, %if.end.i40.i.i ]
  %prev7.i.i = getelementptr inbounds %struct.sfq_head, ptr %retval.0.i41.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev7.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %35, ptr %prev7.i.i, align 2
  %40 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %slots.i, align 8
  %qlen.i140.i = getelementptr %struct.sfq_slot, ptr %41, i32 %idxprom.i.i, i32 2
  %42 = ptrtoint ptr %qlen.i140.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %qlen.i140.i, align 8
  %dec.i.i = add i16 %43, -1
  store i16 %dec.i.i, ptr %qlen.i140.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp.i.i = icmp eq i16 %33, %35
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %sfq_dep_head.exit42.i.i.if.end.i.i_crit_edge

sfq_dep_head.exit42.i.i.if.end.i.i_crit_edge:     ; preds = %sfq_dep_head.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %sfq_dep_head.exit42.i.i
  %44 = ptrtoint ptr %cur_depth.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cur_depth.i.i, align 8
  %46 = zext i8 %45 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %46)
  %cmp15.i.i = icmp eq i16 %43, %46
  br i1 %cmp15.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dec18.i.i = add i8 %45, -1
  %47 = ptrtoint ptr %cur_depth.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %dec18.i.i, ptr %cur_depth.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %sfq_dep_head.exit42.i.i.if.end.i.i_crit_edge
  %48 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %slots.i, align 8
  %qlen1.i.i.i = getelementptr %struct.sfq_slot, ptr %49, i32 %idxprom.i.i, i32 2
  %50 = ptrtoint ptr %qlen1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %qlen1.i.i.i, align 8
  %conv.i44.i.i = zext i16 %51 to i32
  %add.i.i.i = add i16 %51, -128
  %arrayidx3.i.i.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i.i, i32 0, i32 15, i32 %conv.i44.i.i
  %52 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx3.i.i.i, align 4
  %dep4.i.i.i = getelementptr %struct.sfq_slot, ptr %49, i32 %idxprom.i.i, i32 4
  %54 = ptrtoint ptr %dep4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %dep4.i.i.i, align 4
  %prev.i.i.i = getelementptr %struct.sfq_slot, ptr %49, i32 %idxprom.i.i, i32 4, i32 1
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %add.i.i.i, ptr %prev.i.i.i, align 2
  store i16 %conv.i, ptr %arrayidx3.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %53)
  %cmp.i.i.i.i = icmp ult i16 %53, -128
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %slots.i, align 8
  %dep.i.i.i.i = getelementptr %struct.sfq_slot, ptr %57, i32 %conv.i.i.i.i, i32 4
  br label %sfq_dec.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -65408
  %arrayidx4.i.i.i.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i.i, i32 0, i32 15, i32 %sub.i.i.i.i
  br label %sfq_dec.exit.i

sfq_dec.exit.i:                                   ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %dep.i.i.i.i, %if.then.i.i.i.i ], [ %arrayidx4.i.i.i.i, %if.end.i.i.i.i ]
  %prev10.i.i.i = getelementptr inbounds %struct.sfq_head, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i, ptr %prev10.i.i.i, align 2
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i, align 4
  %61 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %list.i, ptr %24, align 8
  %62 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %prev3.i.i, align 4
  store volatile ptr %24, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %24, ptr %60, align 4
  %64 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i = add i32 %65, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i, align 4
  %66 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %.pr.i = load i16, ptr %qlen.i, align 8
  %tobool2.not.i = icmp eq i16 %.pr.i, 0
  br i1 %tobool2.not.i, label %while.cond.while.end_crit_edge.i, label %sfq_dec.exit.i.while.body.i_crit_edge

sfq_dec.exit.i.while.body.i_crit_edge:            ; preds = %sfq_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %sfq_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %backlog.i = getelementptr %struct.sfq_slot, ptr %20, i32 %i.0186.i, i32 7
  %67 = ptrtoint ptr %backlog.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %backlog.i, align 4
  %vars.i = getelementptr %struct.sfq_slot, ptr %20, i32 %i.0186.i, i32 8
  %qavg.i.i = getelementptr %struct.sfq_slot, ptr %20, i32 %i.0186.i, i32 8, i32 2
  %68 = ptrtoint ptr %qavg.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %qavg.i.i, align 8
  %69 = ptrtoint ptr %vars.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %vars.i, align 8
  %70 = ptrtoint ptr %ht.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ht.i, align 4
  %hash.i = getelementptr %struct.sfq_slot, ptr %20, i32 %i.0186.i, i32 5
  %72 = ptrtoint ptr %hash.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %hash.i, align 8
  %idxprom.i = zext i16 %73 to i32
  %arrayidx4.i = getelementptr i16, ptr %71, i32 %idxprom.i
  %74 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -1, ptr %arrayidx4.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %while.cond.while.end_crit_edge.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0186.i, 1
  %75 = ptrtoint ptr %maxflows.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %maxflows.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %76
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 1, i32 15, i32 16
  %77 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %tail.i, align 8
  %78 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %list.i, align 4
  %cmp.i.i142188.i = icmp eq ptr %79, %list.i
  %tobool.not.i183189.i = icmp eq ptr %79, null
  %tobool.not.i190.i = or i1 %cmp.i.i142188.i, %tobool.not.i183189.i
  br i1 %tobool.not.i190.i, label %for.end.i.sfq_rehash.exit_crit_edge, label %while.body9.lr.ph.i

for.end.i.sfq_rehash.exit_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sfq_rehash.exit

while.body9.lr.ph.i:                              ; preds = %for.end.i
  %perturbation.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 1, i32 4
  %divisor.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 1, i32 1
  %ht12.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 1, i32 10
  %slots14.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 1, i32 11
  %dep.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 1, i32 15, i32 20
  %maxdepth.i = getelementptr inbounds %struct.sfq_sched_data, ptr %privdata.i.i, i32 0, i32 3
  %red_parms.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 1, i32 12
  %cur_depth.i165.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 1, i32 7
  %scaled_quantum.i = getelementptr inbounds %struct.sfq_sched_data, ptr %privdata.i.i, i32 0, i32 7
  %backlog.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 19, i32 1
  br label %while.body9.i

while.body9.i:                                    ; preds = %cleanup.i.while.body9.i_crit_edge, %while.body9.lr.ph.i
  %80 = phi ptr [ %79, %while.body9.lr.ph.i ], [ %193, %cleanup.i.while.body9.i_crit_edge ]
  %drop_len.0193.i = phi i32 [ 0, %while.body9.lr.ph.i ], [ %drop_len.1.i, %cleanup.i.while.body9.i_crit_edge ]
  %dropped.0191.i = phi i32 [ 0, %while.body9.lr.ph.i ], [ %dropped.1.i, %cleanup.i.while.body9.i_crit_edge ]
  %81 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i143.i = add i32 %82, -1
  store volatile i32 %sub.i.i143.i, ptr %qlen.i.i, align 4
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %80, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.0, ptr %80, i32 0, i32 1
  %85 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %80, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.0, ptr %84, i32 0, i32 1
  %87 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %86, ptr %prev17.i.i.i, align 4
  %88 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %84, ptr %86, align 8
  %call.i.i = call i32 @skb_get_hash_perturb(ptr noundef nonnull %80, ptr noundef %perturbation.i.i) #14
  %89 = ptrtoint ptr %divisor.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %divisor.i.i, align 4
  %sub.i.i = add i32 %90, -1
  %and.i.i = and i32 %sub.i.i, %call.i.i
  %91 = ptrtoint ptr %ht12.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ht12.i, align 4
  %arrayidx13.i = getelementptr i16, ptr %92, i32 %and.i.i
  %93 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx13.i, align 2
  %95 = ptrtoint ptr %slots14.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %slots14.i, align 8
  %idxprom15.i = zext i16 %94 to i32
  %arrayidx16.i = getelementptr %struct.sfq_slot, ptr %96, i32 %idxprom15.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %94)
  %cmp18.i = icmp eq i16 %94, -1
  br i1 %cmp18.i, label %if.then20.i, label %while.body9.i.if.end36.i_crit_edge

while.body9.i.if.end36.i_crit_edge:               ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.then20.i:                                      ; preds = %while.body9.i
  %97 = ptrtoint ptr %dep.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %dep.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -129, i16 %98)
  %cmp23.i = icmp ugt i16 %98, -129
  br i1 %cmp23.i, label %if.then20.i.drop.i_crit_edge, label %if.end28.i

if.then20.i.drop.i_crit_edge:                     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %drop.i

drop.i:                                           ; preds = %if.end36.i.drop.i_crit_edge, %if.then20.i.drop.i_crit_edge
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 3
  %99 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cb.i.i.i.i, align 4
  %101 = ptrtoint ptr %backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %backlog.i.i, align 4
  %sub.i146.i = sub i32 %102, %100
  store i32 %sub.i146.i, ptr %backlog.i.i, align 4
  %103 = load i32, ptr %cb.i.i.i.i, align 4
  %add.i = add i32 %103, %drop_len.0193.i
  call void @kfree_skb_reason(ptr noundef nonnull %80, i32 noundef 0) #14
  %inc27.i = add i32 %dropped.0191.i, 1
  br label %cleanup.i

if.end28.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv22.i = zext i16 %98 to i32
  %104 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %98, ptr %arrayidx13.i, align 2
  %105 = ptrtoint ptr %slots14.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %slots14.i, align 8
  %arrayidx33.i = getelementptr %struct.sfq_slot, ptr %106, i32 %conv22.i
  %conv34.i = trunc i32 %and.i.i to i16
  %hash35.i = getelementptr %struct.sfq_slot, ptr %106, i32 %conv22.i, i32 5
  %107 = ptrtoint ptr %hash35.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv34.i, ptr %hash35.i, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end28.i, %while.body9.i.if.end36.i_crit_edge
  %slot.0.i = phi ptr [ %arrayidx33.i, %if.end28.i ], [ %arrayidx16.i, %while.body9.i.if.end36.i_crit_edge ]
  %x.0.i = phi i16 [ %98, %if.end28.i ], [ %94, %while.body9.i.if.end36.i_crit_edge ]
  %qlen37.i = getelementptr inbounds %struct.sfq_slot, ptr %slot.0.i, i32 0, i32 2
  %108 = ptrtoint ptr %qlen37.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %qlen37.i, align 8
  %110 = ptrtoint ptr %maxdepth.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %maxdepth.i, align 1
  %112 = zext i8 %111 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %109, i16 %112)
  %cmp40.not.i = icmp ult i16 %109, %112
  br i1 %cmp40.not.i, label %if.end43.i, label %if.end36.i.drop.i_crit_edge

if.end36.i.drop.i_crit_edge:                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %drop.i

if.end43.i:                                       ; preds = %if.end36.i
  %skblist_prev.i.i = getelementptr inbounds %struct.sfq_slot, ptr %slot.0.i, i32 0, i32 1
  %113 = ptrtoint ptr %skblist_prev.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %skblist_prev.i.i, align 4
  %115 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %prev9.i.i.i, align 4
  %116 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %slot.0.i, ptr %80, align 8
  %117 = load ptr, ptr %skblist_prev.i.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %80, ptr %117, align 8
  store ptr %80, ptr %skblist_prev.i.i, align 4
  %119 = ptrtoint ptr %red_parms.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %red_parms.i, align 4
  %tobool44.not.i = icmp eq ptr %120, null
  br i1 %tobool44.not.i, label %if.end43.i.if.end51.i_crit_edge, label %if.then45.i

if.end43.i.if.end51.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51.i

if.then45.i:                                      ; preds = %if.end43.i
  %qidlestart.i.i.i = getelementptr inbounds %struct.sfq_slot, ptr %slot.0.i, i32 0, i32 8, i32 3
  %121 = ptrtoint ptr %qidlestart.i.i.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %qidlestart.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %122)
  %cmp.i.not.i.i = icmp eq i64 %122, 0
  br i1 %cmp.i.not.i.i, label %if.then.i150.i, label %if.else.i.i

if.then.i150.i:                                   ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #16
  %backlog48.i = getelementptr inbounds %struct.sfq_slot, ptr %slot.0.i, i32 0, i32 7
  %123 = ptrtoint ptr %backlog48.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %backlog48.i, align 4
  %qavg.i.i.i = getelementptr inbounds %struct.sfq_slot, ptr %slot.0.i, i32 0, i32 8, i32 2
  %125 = ptrtoint ptr %qavg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %qavg.i.i.i, align 8
  %Wlog.i.i.i = getelementptr inbounds %struct.red_parms, ptr %120, i32 0, i32 9
  %127 = ptrtoint ptr %Wlog.i.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %Wlog.i.i.i, align 1
  %conv.i6.i.i = zext i8 %128 to i32
  %shr.i.i.i = lshr i32 %126, %conv.i6.i.i
  %sub.i.i148.i = add i32 %126, %124
  %add.i.i149.i = sub i32 %sub.i.i148.i, %shr.i.i.i
  br label %red_calc_qavg.exit.i

if.else.i.i:                                      ; preds = %if.then45.i
  %call.i.i.i = call i64 @ktime_get() #14
  %129 = ptrtoint ptr %qidlestart.i.i.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %qidlestart.i.i.i, align 8
  %sub.i.i.i151.i = sub i64 %call.i.i.i, %130
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i.i151.i)
  %cmp8.i.i.i.i.i.i = icmp slt i64 %sub.i.i.i151.i, 0
  %131 = call i64 @llvm.abs.i64(i64 %sub.i.i.i151.i, i1 false) #14
  %132 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %131, i32 0) #19, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i64, i32 } %132, 0
  %asmresult4.i.i.i.i.i.i.i = extractvalue { i64, i32 } %132, 1
  %133 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %131, i64 %asmresult.i.i.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i.i.i) #19, !srcloc !50
  %asmresult10.i.i.i.i.i.i.i = extractvalue { i64, i32 } %133, 0
  %tmp.0.i.i.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i.i.i, 9
  %sub210.i.i.i.i.i.i = sub nsw i64 0, %tmp.0.i.i.i.i.i.i
  %cond213.i.i.i.i.i.i = select i1 %cmp8.i.i.i.i.i.i, i64 %sub210.i.i.i.i.i.i, i64 %tmp.0.i.i.i.i.i.i
  %Scell_max.i.i.i = getelementptr inbounds %struct.red_parms, ptr %120, i32 0, i32 2
  %134 = ptrtoint ptr %Scell_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %Scell_max.i.i.i, align 4
  %conv.i8.i.i = zext i32 %135 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i.i.i, i64 %conv.i8.i.i)
  %cmp.i9.i.i = icmp slt i64 %cond213.i.i.i.i.i.i, %conv.i8.i.i
  %extract.t.i.i.i = trunc i64 %cond213.i.i.i.i.i.i to i32
  %cond.off0.i.i.i = select i1 %cmp.i9.i.i, i32 %extract.t.i.i.i, i32 %135
  %Scell_log.i.i.i = getelementptr inbounds %struct.red_parms, ptr %120, i32 0, i32 8
  %136 = ptrtoint ptr %Scell_log.i.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %Scell_log.i.i.i, align 4
  %conv4.i.i.i = zext i8 %137 to i32
  %shr.i10.i.i = ashr i32 %cond.off0.i.i.i, %conv4.i.i.i
  %and.i.i.i = and i32 %shr.i10.i.i, 255
  %arrayidx.i.i.i = getelementptr %struct.red_parms, ptr %120, i32 0, i32 11, i32 %and.i.i.i
  %138 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i.i.i = icmp eq i8 %139, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv5.i.i.i = zext i8 %139 to i32
  %qavg.i11.i.i = getelementptr inbounds %struct.sfq_slot, ptr %slot.0.i, i32 0, i32 8, i32 2
  %140 = ptrtoint ptr %qavg.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %qavg.i11.i.i, align 8
  %shr6.i.i.i = lshr i32 %141, %conv5.i.i.i
  br label %red_calc_qavg.exit.i

if.else.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %qavg7.i.i.i = getelementptr inbounds %struct.sfq_slot, ptr %slot.0.i, i32 0, i32 8, i32 2
  %142 = ptrtoint ptr %qavg7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %qavg7.i.i.i, align 8
  %conv8.i.i.i = zext i32 %143 to i64
  %conv9.i.i.i = sext i32 %cond.off0.i.i.i to i64
  %mul.i.i.i = mul nsw i64 %conv8.i.i.i, %conv9.i.i.i
  %sh_prom.i.i.i = zext i8 %137 to i64
  %shr12.i.i.i = lshr i64 %mul.i.i.i, %sh_prom.i.i.i
  %conv13.i.i.i = trunc i64 %shr12.i.i.i to i32
  %shr15.i.i.i = lshr i32 %143, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr15.i.i.i, i32 %conv13.i.i.i)
  %cmp16.i.i.i = icmp ugt i32 %shr15.i.i.i, %conv13.i.i.i
  %sub.i12.i.i = sub i32 %143, %conv13.i.i.i
  %spec.select.i.i.i = select i1 %cmp16.i.i.i, i32 %sub.i12.i.i, i32 %shr15.i.i.i
  br label %red_calc_qavg.exit.i

red_calc_qavg.exit.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i, %if.then.i150.i
  %retval.0.i.i = phi i32 [ %add.i.i149.i, %if.then.i150.i ], [ %shr6.i.i.i, %if.then.i.i.i ], [ %spec.select.i.i.i, %if.else.i.i.i ]
  %qavg.i = getelementptr inbounds %struct.sfq_slot, ptr %slot.0.i, i32 0, i32 8, i32 2
  %144 = ptrtoint ptr %qavg.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %retval.0.i.i, ptr %qavg.i, align 8
  br label %if.end51.i

if.end51.i:                                       ; preds = %red_calc_qavg.exit.i, %if.end43.i.if.end51.i_crit_edge
  %cb.i.i152.i = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 3
  %145 = ptrtoint ptr %cb.i.i152.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cb.i.i152.i, align 4
  %backlog53.i = getelementptr inbounds %struct.sfq_slot, ptr %slot.0.i, i32 0, i32 7
  %147 = ptrtoint ptr %backlog53.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %backlog53.i, align 4
  %add54.i = add i32 %148, %146
  store i32 %add54.i, ptr %backlog53.i, align 4
  %149 = ptrtoint ptr %slots14.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %slots14.i, align 8
  %idxprom.i154.i = zext i16 %x.0.i to i32
  %dep.i155.i = getelementptr %struct.sfq_slot, ptr %150, i32 %idxprom.i154.i, i32 4
  %151 = ptrtoint ptr %dep.i155.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %dep.i155.i, align 4
  %prev.i156.i = getelementptr %struct.sfq_slot, ptr %150, i32 %idxprom.i154.i, i32 4, i32 1
  %153 = ptrtoint ptr %prev.i156.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %prev.i156.i, align 2
  %conv.i.i157.i = zext i16 %154 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %154)
  %cmp.i.i158.i = icmp ult i16 %154, -128
  %dep.i.i159.i = getelementptr %struct.sfq_slot, ptr %150, i32 %conv.i.i157.i, i32 4
  %sub.i.i160.i = add nsw i32 %conv.i.i157.i, -65408
  %arrayidx4.i.i161.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i.i, i32 0, i32 15, i32 %sub.i.i160.i
  %retval.0.i.i162.i = select i1 %cmp.i.i158.i, ptr %dep.i.i159.i, ptr %arrayidx4.i.i161.i
  %155 = ptrtoint ptr %retval.0.i.i162.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %152, ptr %retval.0.i.i162.i, align 2
  %conv.i28.i.i = zext i16 %152 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %152)
  %cmp.i29.i.i = icmp ult i16 %152, -128
  br i1 %cmp.i29.i.i, label %if.then.i32.i.i, label %if.end.i35.i.i

if.then.i32.i.i:                                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #16
  %156 = ptrtoint ptr %slots14.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %slots14.i, align 8
  %dep.i31.i.i = getelementptr %struct.sfq_slot, ptr %157, i32 %conv.i28.i.i, i32 4
  br label %sfq_dep_head.exit37.i.i

if.end.i35.i.i:                                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i33.i.i = add nsw i32 %conv.i28.i.i, -65408
  %arrayidx4.i34.i.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i.i, i32 0, i32 15, i32 %sub.i33.i.i
  br label %sfq_dep_head.exit37.i.i

sfq_dep_head.exit37.i.i:                          ; preds = %if.end.i35.i.i, %if.then.i32.i.i
  %retval.0.i36.i.i = phi ptr [ %dep.i31.i.i, %if.then.i32.i.i ], [ %arrayidx4.i34.i.i, %if.end.i35.i.i ]
  %prev7.i163.i = getelementptr inbounds %struct.sfq_head, ptr %retval.0.i36.i.i, i32 0, i32 1
  %158 = ptrtoint ptr %prev7.i163.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %154, ptr %prev7.i163.i, align 2
  %159 = ptrtoint ptr %slots14.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %slots14.i, align 8
  %qlen.i164.i = getelementptr %struct.sfq_slot, ptr %160, i32 %idxprom.i154.i, i32 2
  %161 = ptrtoint ptr %qlen.i164.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %qlen.i164.i, align 8
  %inc.i.i = add i16 %162, 1
  store i16 %inc.i.i, ptr %qlen.i164.i, align 8
  %163 = ptrtoint ptr %cur_depth.i165.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %cur_depth.i165.i, align 8
  %165 = zext i8 %164 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i, i16 %165)
  %cmp.i166.i = icmp ugt i16 %inc.i.i, %165
  br i1 %cmp.i166.i, label %if.then.i167.i, label %sfq_dep_head.exit37.i.i.if.end.i175.i_crit_edge

sfq_dep_head.exit37.i.i.if.end.i175.i_crit_edge:  ; preds = %sfq_dep_head.exit37.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i175.i

if.then.i167.i:                                   ; preds = %sfq_dep_head.exit37.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv13.i.i = trunc i16 %inc.i.i to i8
  %166 = ptrtoint ptr %cur_depth.i165.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv13.i.i, ptr %cur_depth.i165.i, align 8
  br label %if.end.i175.i

if.end.i175.i:                                    ; preds = %if.then.i167.i, %sfq_dep_head.exit37.i.i.if.end.i175.i_crit_edge
  %167 = ptrtoint ptr %slots14.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %slots14.i, align 8
  %qlen1.i.i168.i = getelementptr %struct.sfq_slot, ptr %168, i32 %idxprom.i154.i, i32 2
  %169 = ptrtoint ptr %qlen1.i.i168.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %qlen1.i.i168.i, align 8
  %conv.i39.i.i = zext i16 %170 to i32
  %add.i.i169.i = add i16 %170, -128
  %arrayidx3.i.i170.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i.i, i32 0, i32 15, i32 %conv.i39.i.i
  %171 = ptrtoint ptr %arrayidx3.i.i170.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %arrayidx3.i.i170.i, align 4
  %dep4.i.i171.i = getelementptr %struct.sfq_slot, ptr %168, i32 %idxprom.i154.i, i32 4
  %173 = ptrtoint ptr %dep4.i.i171.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %172, ptr %dep4.i.i171.i, align 4
  %prev.i.i172.i = getelementptr %struct.sfq_slot, ptr %168, i32 %idxprom.i154.i, i32 4, i32 1
  %174 = ptrtoint ptr %prev.i.i172.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %add.i.i169.i, ptr %prev.i.i172.i, align 2
  store i16 %x.0.i, ptr %arrayidx3.i.i170.i, align 4
  %conv.i.i.i173.i = zext i16 %172 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %172)
  %cmp.i.i.i174.i = icmp ult i16 %172, -128
  br i1 %cmp.i.i.i174.i, label %if.then.i.i.i177.i, label %if.end.i.i.i180.i

if.then.i.i.i177.i:                               ; preds = %if.end.i175.i
  call void @__sanitizer_cov_trace_pc() #16
  %175 = ptrtoint ptr %slots14.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %slots14.i, align 8
  %dep.i.i.i176.i = getelementptr %struct.sfq_slot, ptr %176, i32 %conv.i.i.i173.i, i32 4
  br label %sfq_inc.exit.i

if.end.i.i.i180.i:                                ; preds = %if.end.i175.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i178.i = add nsw i32 %conv.i.i.i173.i, -65408
  %arrayidx4.i.i.i179.i = getelementptr %struct.sfq_sched_data, ptr %privdata.i.i, i32 0, i32 15, i32 %sub.i.i.i178.i
  br label %sfq_inc.exit.i

sfq_inc.exit.i:                                   ; preds = %if.end.i.i.i180.i, %if.then.i.i.i177.i
  %retval.0.i.i.i181.i = phi ptr [ %dep.i.i.i176.i, %if.then.i.i.i177.i ], [ %arrayidx4.i.i.i179.i, %if.end.i.i.i180.i ]
  %prev10.i.i182.i = getelementptr inbounds %struct.sfq_head, ptr %retval.0.i.i.i181.i, i32 0, i32 1
  %177 = ptrtoint ptr %prev10.i.i182.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %x.0.i, ptr %prev10.i.i182.i, align 2
  %178 = ptrtoint ptr %qlen37.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %qlen37.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %179)
  %cmp57.i = icmp eq i16 %179, 1
  br i1 %cmp57.i, label %if.then59.i, label %sfq_inc.exit.i.cleanup.i_crit_edge

sfq_inc.exit.i.cleanup.i_crit_edge:               ; preds = %sfq_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.then59.i:                                      ; preds = %sfq_inc.exit.i
  %180 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %tail.i, align 8
  %cmp61.i = icmp eq ptr %181, null
  br i1 %cmp61.i, label %if.then59.i.if.end70.i_crit_edge, label %if.else.i

if.then59.i.if.end70.i_crit_edge:                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70.i

if.else.i:                                        ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #16
  %next66.i = getelementptr inbounds %struct.sfq_slot, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %next66.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %next66.i, align 2
  %next67.i = getelementptr inbounds %struct.sfq_slot, ptr %slot.0.i, i32 0, i32 3
  %184 = ptrtoint ptr %next67.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %next67.i, align 2
  %185 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %tail.i, align 8
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.else.i, %if.then59.i.if.end70.i_crit_edge
  %.sink.i = phi ptr [ %186, %if.else.i ], [ %slot.0.i, %if.then59.i.if.end70.i_crit_edge ]
  %next69.i = getelementptr inbounds %struct.sfq_slot, ptr %.sink.i, i32 0, i32 3
  %187 = ptrtoint ptr %next69.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %x.0.i, ptr %next69.i, align 2
  %188 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %slot.0.i, ptr %tail.i, align 8
  %189 = ptrtoint ptr %scaled_quantum.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %scaled_quantum.i, align 2
  %allot.i = getelementptr inbounds %struct.sfq_slot, ptr %slot.0.i, i32 0, i32 6
  %191 = ptrtoint ptr %allot.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %190, ptr %allot.i, align 2
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end70.i, %sfq_inc.exit.i.cleanup.i_crit_edge, %drop.i
  %dropped.1.i = phi i32 [ %inc27.i, %drop.i ], [ %dropped.0191.i, %if.end70.i ], [ %dropped.0191.i, %sfq_inc.exit.i.cleanup.i_crit_edge ]
  %drop_len.1.i = phi i32 [ %add.i, %drop.i ], [ %drop_len.0193.i, %if.end70.i ], [ %drop_len.0193.i, %sfq_inc.exit.i.cleanup.i_crit_edge ]
  %192 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %list.i, align 4
  %cmp.i.i142.i = icmp eq ptr %193, %list.i
  %tobool.not.i183.i = icmp eq ptr %193, null
  %tobool.not.i.i = or i1 %cmp.i.i142.i, %tobool.not.i183.i
  br i1 %tobool.not.i.i, label %cleanup.i.sfq_rehash.exit_crit_edge, label %cleanup.i.while.body9.i_crit_edge

cleanup.i.while.body9.i_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body9.i

cleanup.i.sfq_rehash.exit_crit_edge:              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sfq_rehash.exit

sfq_rehash.exit:                                  ; preds = %cleanup.i.sfq_rehash.exit_crit_edge, %for.end.i.sfq_rehash.exit_crit_edge
  %dropped.0.lcssa.i = phi i32 [ 0, %for.end.i.sfq_rehash.exit_crit_edge ], [ %dropped.1.i, %cleanup.i.sfq_rehash.exit_crit_edge ]
  %drop_len.0.lcssa.i = phi i32 [ 0, %for.end.i.sfq_rehash.exit_crit_edge ], [ %drop_len.1.i, %cleanup.i.sfq_rehash.exit_crit_edge ]
  %qlen76.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 17, i32 2
  %194 = ptrtoint ptr %qlen76.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %qlen76.i, align 8
  %sub.i = sub i32 %195, %dropped.0.lcssa.i
  store i32 %sub.i, ptr %qlen76.i, align 8
  call void @qdisc_tree_reduce_backlog(ptr noundef %1, i32 noundef %dropped.0.lcssa.i, i32 noundef %drop_len.0.lcssa.i) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list.i) #14
  br label %if.end

if.end:                                           ; preds = %sfq_rehash.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #14
  %perturb_period = getelementptr i8, ptr %t, i32 -8
  %196 = ptrtoint ptr %perturb_period to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %perturb_period, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool4.not = icmp eq i32 %197, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %198 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %198, %197
  %call7 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nkey) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_block_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_kfree_skbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reciprocal_value(ptr sret(%struct.reciprocal_value) align 4, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
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
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !19, !20, !22, !23, !25, !26, !27}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_sch_sfq__519_938_sfq_module_init6, !1, !"__initcall__kmod_sch_sfq__519_938_sfq_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_sfq.c", i32 938, i32 1}
!2 = !{ptr @__exitcall_sfq_module_exit, !3, !"__exitcall_sfq_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_sfq.c", i32 939, i32 1}
!4 = !{ptr @__UNIQUE_ID_file520, !5, !"__UNIQUE_ID_file520", i1 false, i1 false}
!5 = !{!"../net/sched/sch_sfq.c", i32 940, i32 1}
!6 = !{ptr @__UNIQUE_ID_license521, !5, !"__UNIQUE_ID_license521", i1 false, i1 false}
!7 = !{ptr @sfq_qdisc_ops, !8, !"sfq_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_sfq.c", i32 915, i32 25}
!9 = !{ptr @sfq_class_ops, !10, !"sfq_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_sfq.c", i32 904, i32 37}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/sched/sch_sfq.c", i32 176, i32 7}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sfq_init.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../net/sched/sch_sfq.c", i32 739, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/net/netlink.h", i32 991, i32 3}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
!40 = !{i64 2149885292}
!41 = !{i64 2149890224}
!42 = !{i64 2149911936}
!43 = !{i64 2149916828}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2149993285}
!46 = !{i64 2149993610}
!47 = !{i32 0, i32 33}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 722014, i64 722041, i64 722063, i64 722091}
!50 = !{i64 722422, i64 722449, i64 722482, i64 722503, i64 722530, i64 722556}
