; ModuleID = '/llk/IR_all_yes/net/sched/sch_prio.c_pt.bc'
source_filename = "../net/sched/sch_prio.c"
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
%struct.prio_sched_data = type { i32, ptr, ptr, [16 x i8], [16 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tc_prio_qopt_offload = type { i32, i32, i32, %union.anon.126 }
%union.anon.126 = type { %struct.tc_prio_qopt_offload_params }
%struct.tc_prio_qopt_offload_params = type { i32, [16 x i8], ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tc_prio_qopt = type { i32, [16 x i8] }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }

@prio_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @prio_class_ops, [16 x i8] c"prio\00\00\00\00\00\00\00\00\00\00\00\00", i32 92, i32 0, ptr @prio_enqueue, ptr @prio_dequeue, ptr @prio_peek, ptr @prio_init, ptr @prio_reset, ptr @prio_destroy, ptr @prio_tune, ptr null, ptr null, ptr null, ptr @prio_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_prio__368_441_prio_module_init6 = internal global ptr @prio_module_init, section ".initcall6.init", align 4
@__exitcall_prio_module_exit = internal global ptr @prio_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file369 = internal constant [33 x i8] c"sch_prio.file=net/sched/sch_prio\00", section ".modinfo", align 1
@__UNIQUE_ID_license370 = internal constant [21 x i8] c"sch_prio.license=GPL\00", section ".modinfo", align 1
@prio_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr @prio_graft, ptr @prio_leaf, ptr null, ptr @prio_find, ptr null, ptr null, ptr @prio_walk, ptr @prio_tcf_block, ptr @prio_bind, ptr @prio_unbind, ptr @prio_dump_class, ptr @prio_dump_class_stats }, [40 x i8] zeroinitializer }, align 32
@pfifo_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@noop_qdisc = external dso_local global %struct.Qdisc, align 128
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@prio_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sched/sch_prio.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@qdisc_calculate_pkt_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 8]
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"prio_class_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 403, i32 37 }
@___asan_gen_.13 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 596, i32 2 }
@___asan_gen_.19 = private constant [24 x i8] c"../net/sched/sch_prio.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 41, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 271, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 991, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_file369, ptr @__UNIQUE_ID_license370, ptr @__exitcall_prio_module_exit, ptr @__initcall__kmod_sch_prio__368_441_prio_module_init6, ptr @prio_module_exit, ptr @prio_class_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prio_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @prio_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @prio_qdisc_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @prio_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @prio_qdisc_ops) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prio_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  %res.i = alloca %struct.tcf_result, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %2 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %priority.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i) #11
  %4 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %res.i, align 4, !annotation !36
  %5 = getelementptr inbounds %struct.anon.118, ptr %res.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !36
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
  %filter_list.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %9 = ptrtoint ptr %filter_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %filter_list.i, align 4
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
  %.b56.i = load i1, ptr @prio_classify.__warned, align 1
  br i1 %.b56.i, label %land.lhs.true6.i.do.end10.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @prio_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 41, ptr noundef nonnull @.str.3) #11
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then8.i, %land.lhs.true6.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %if.then.i.do.end10.i_crit_edge
  %call12.i = call i32 @tcf_classify(ptr noundef %skb, ptr noundef null, ptr noundef %10, ptr noundef nonnull %res.i, i1 noundef zeroext false) #11
  %11 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12.i, label %sw.epilog.i [
    i32 4, label %do.end10.i.if.then.thread36_crit_edge
    i32 5, label %do.end10.i.if.then.thread36_crit_edge40
    i32 8, label %do.end10.i.if.then.thread36_crit_edge41
    i32 2, label %if.then
  ]

do.end10.i.if.then.thread36_crit_edge41:          ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.thread36

do.end10.i.if.then.thread36_crit_edge40:          ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.thread36

do.end10.i.if.then.thread36_crit_edge:            ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.thread36

if.then.thread36:                                 ; preds = %do.end10.i.if.then.thread36_crit_edge, %do.end10.i.if.then.thread36_crit_edge40, %do.end10.i.if.then.thread36_crit_edge41
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
  %arrayidx.i = getelementptr %struct.prio_sched_data, ptr %privdata.i.i, i32 0, i32 3, i32 %and21.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %14 to i32
  br label %prio_classify.exit

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
  %17 = ptrtoint ptr %privdata.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %privdata.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %18)
  %cmp26.not.i = icmp ult i32 %sub.i, %18
  br i1 %cmp26.not.i, label %if.end24.i.prio_classify.exit_crit_edge, label %if.then27.i

if.end24.i.prio_classify.exit_crit_edge:          ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prio_classify.exit

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %prio2band29.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %19 = ptrtoint ptr %prio2band29.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %prio2band29.i, align 4
  %idxprom31.i = zext i8 %20 to i32
  br label %prio_classify.exit

prio_classify.exit:                               ; preds = %if.then27.i, %if.end24.i.prio_classify.exit_crit_edge, %if.then16.i
  %idxprom.i.sink = phi i32 [ %idxprom.i, %if.then16.i ], [ %idxprom31.i, %if.then27.i ], [ %sub.i, %if.end24.i.prio_classify.exit_crit_edge ]
  %arrayidx22.i = getelementptr %struct.prio_sched_data, ptr %privdata.i.i, i32 0, i32 4, i32 %idxprom.i.sink
  %21 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %retval.0.i = load ptr, ptr %arrayidx22.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #11
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %prio_classify.exit.if.then2_crit_edge, label %if.end3

prio_classify.exit.if.then2_crit_edge:            ; preds = %prio_classify.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

if.then:                                          ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #11
  br label %if.then2

if.then2:                                         ; preds = %if.then, %prio_classify.exit.if.then2_crit_edge
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %22 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %23, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.thread36
  %ret.03035 = phi i32 [ 131072, %if.then2 ], [ 65536, %if.then.thread36 ]
  %24 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %to_free, align 4
  %26 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  br label %cleanup

if.end3:                                          ; preds = %prio_classify.exit
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %retval.0.i, i32 0, i32 5
  %27 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end3.do.end8.i.i_crit_edge

if.end3.do.end8.i.i_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end3
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.3) #11
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %if.end3.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %28, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__qdisc_calculate_pkt_len(ptr noundef %skb, ptr noundef nonnull %28) #11
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %29 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %retval.0.i, align 128
  %call.i = call i32 %30(ptr noundef %skb, ptr noundef nonnull %retval.0.i, ptr noundef %to_free) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp eq i32 %call.i, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %qdisc_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #13
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %31 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %backlog, align 4
  %add = add i32 %32, %1
  store i32 %add, ptr %backlog, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %33 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen, align 8
  %inc = add i32 %34, 1
  store i32 %inc, ptr %qlen, align 8
  br label %cleanup

if.end7:                                          ; preds = %qdisc_enqueue.exit
  %and8 = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %drops.i.i23 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %35 = ptrtoint ptr %drops.i.i23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %drops.i.i23, align 4
  %inc.i.i24 = add i32 %36, 1
  store i32 %inc.i.i24, ptr %drops.i.i23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end7.cleanup_crit_edge, %if.then6, %if.end
  %retval.0 = phi i32 [ %ret.03035, %if.end ], [ 0, %if.then6 ], [ %call.i, %if.end7.cleanup_crit_edge ], [ %call.i, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @prio_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %privdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp27 = icmp sgt i32 %1, 0
  br i1 %cmp27, label %entry.for.body_crit_edge, label %entry.cleanup4_crit_edge

entry.cleanup4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup4

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %qdisc_dequeue_peeked.exit
  %inc = add nuw nsw i32 %prio.028, 1
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %privdata.i, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup4_crit_edge

for.cond.cleanup4_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup4

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %prio.028 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.prio_sched_data, ptr %privdata.i, i32 0, i32 4, i32 %prio.028
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %gso_skb.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %gso_skb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gso_skb.i, align 4
  %cmp.i.i = icmp eq ptr %7, %gso_skb.i
  %tobool.not31.i = icmp eq ptr %7, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not31.i
  br i1 %tobool.not.i, label %qdisc_dequeue_peeked.exit, label %__skb_dequeue.exit.i

__skb_dequeue.exit.i:                             ; preds = %for.body
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 16, i32 1
  %8 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.0, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %7, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.0, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %prev17.i.i.i, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %11, ptr %13, align 8
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %__skb_dequeue.exit.i
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !37
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3
  %19 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cb.i.i.i.i, align 4
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 12
  %21 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpu_qstats.i.i, align 4
  %backlog.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %backlog.i.i to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !26) #11
  %and.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add14.i.i = sub i32 %32, %20
  store i32 %add14.i.i, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !38
  %and.i.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i19.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i19.i, label %if.then.i20.i, label %if.then4.i.qdisc_qstats_cpu_backlog_dec.exit.i_crit_edge, !prof !39

if.then4.i.qdisc_qstats_cpu_backlog_dec.exit.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_qstats_cpu_backlog_dec.exit.i

if.then.i20.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %qdisc_qstats_cpu_backlog_dec.exit.i

qdisc_qstats_cpu_backlog_dec.exit.i:              ; preds = %if.then.i20.i, %if.then4.i.qdisc_qstats_cpu_backlog_dec.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #11, !srcloc !40
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !37
  %35 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cpu_qstats.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !26) #11
  %and.i.i22.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i22.i to ptr
  %cpu.i23.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu.i23.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu.i23.i, align 4
  %arrayidx.i24.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i24.i, align 4
  %add.i25.i = add i32 %43, %37
  %44 = inttoptr i32 %add.i25.i to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add13.i.i = add i32 %46, -1
  store i32 %add13.i.i, ptr %44, align 4
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !38
  %and.i.i.i26.i = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i26.i)
  %tobool.not.i27.i = icmp eq i32 %and.i.i.i26.i, 0
  br i1 %tobool.not.i27.i, label %if.then.i28.i, label %qdisc_qstats_cpu_backlog_dec.exit.i.qdisc_qstats_cpu_qlen_dec.exit.i_crit_edge, !prof !39

qdisc_qstats_cpu_backlog_dec.exit.i.qdisc_qstats_cpu_qlen_dec.exit.i_crit_edge: ; preds = %qdisc_qstats_cpu_backlog_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_qstats_cpu_qlen_dec.exit.i

if.then.i28.i:                                    ; preds = %qdisc_qstats_cpu_backlog_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %qdisc_qstats_cpu_qlen_dec.exit.i

qdisc_qstats_cpu_qlen_dec.exit.i:                 ; preds = %if.then.i28.i, %qdisc_qstats_cpu_backlog_dec.exit.i.qdisc_qstats_cpu_qlen_dec.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #11, !srcloc !40
  br label %if.then

if.else.i:                                        ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %cb.i.i.i29.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3
  %48 = ptrtoint ptr %cb.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cb.i.i.i29.i, align 4
  %backlog.i30.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 19, i32 1
  %50 = ptrtoint ptr %backlog.i30.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %backlog.i30.i, align 4
  %sub.i.i = sub i32 %51, %49
  store i32 %sub.i.i, ptr %backlog.i30.i, align 4
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 17, i32 2
  %52 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %qlen.i, align 8
  %dec.i = add i32 %53, -1
  store i32 %dec.i, ptr %qlen.i, align 8
  br label %if.then

qdisc_dequeue_peeked.exit:                        ; preds = %for.body
  %dequeue.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 1
  %54 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dequeue.i, align 4
  %call6.i = tail call ptr %55(ptr noundef %5) #11
  %tobool.not = icmp eq ptr %call6.i, null
  br i1 %tobool.not, label %for.cond, label %qdisc_dequeue_peeked.exit.if.then_crit_edge

qdisc_dequeue_peeked.exit.if.then_crit_edge:      ; preds = %qdisc_dequeue_peeked.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %qdisc_dequeue_peeked.exit.if.then_crit_edge, %if.else.i, %qdisc_qstats_cpu_qlen_dec.exit.i
  %skb.0.i18 = phi ptr [ %7, %qdisc_qstats_cpu_qlen_dec.exit.i ], [ %7, %if.else.i ], [ %call6.i, %qdisc_dequeue_peeked.exit.if.then_crit_edge ]
  %cb.i.i.i.i15 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i18, i32 0, i32 3
  %56 = ptrtoint ptr %cb.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cb.i.i.i.i15, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i18, i32 0, i32 17
  %58 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool.i.not.i.i = icmp eq i16 %61, 0
  br i1 %tobool.i.not.i.i, label %if.then.cond.end.i.i_crit_edge, label %cond.true.i.i

if.then.cond.end.i.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %59, i32 0, i32 5
  %62 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %63 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %if.then.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %64 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i.i.i.i.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.cleanup_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.cleanup_crit_edge:                   ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %65 = tail call i32 @llvm.read_register.i32(metadata !26) #11
  %and.i.i.i.i.i.i.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %68, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !41
  %69 = tail call i32 @llvm.read_register.i32(metadata !26) #11
  %and.i.i.i.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %74, ptrtoint (ptr @lockdep_recursion to i32)
  %75 = inttoptr i32 %add.i.i.i.i.i to ptr
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %75, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !42
  %78 = tail call i32 @llvm.read_register.i32(metadata !26) #11
  %and.i.i.i7.i.i.i.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %81, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %77, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.cleanup_crit_edge

land.lhs.true.i.i.i.i.i.cleanup_crit_edge:        ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %82 = tail call i32 @llvm.read_register.i32(metadata !26) #11
  %and.i.i.i.i.i.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.i.i.i.i.i = icmp eq i32 %85, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.cleanup_crit_edge

land.rhs.i.i.i.i.i.cleanup_crit_edge:             ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %86 = tail call i32 @llvm.read_register.i32(metadata !26) #11
  %and.i.i.i9.i.i.i.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %89, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !43
  %90 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %93, ptrtoint (ptr @hardirqs_enabled to i32)
  %94 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %94, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !44
  %97 = tail call i32 @llvm.read_register.i32(metadata !26) #11
  %and.i.i.i12.i.i.i.i.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %100, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %96, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.cleanup_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.cleanup_crit_edge:           ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.cleanup_crit_edge, label %if.then.i.i.i.i.i, !prof !45

land.rhs58.i.i.i.i.i.cleanup_crit_edge:           ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.cleanup_crit_edge, %land.rhs22.i.i.i.i.i.cleanup_crit_edge, %land.rhs.i.i.i.i.i.cleanup_crit_edge, %land.lhs.true.i.i.i.i.i.cleanup_crit_edge, %cond.end.i.i.cleanup_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %57 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %101 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %102, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !46
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %103 = tail call ptr @llvm.returnaddress(i32 0) #11
  %104 = ptrtoint ptr %103 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %104) #11
  %105 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %106, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %107 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %108, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %104) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !47
  %109 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %110, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %111 = ptrtoint ptr %cb.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cb.i.i.i.i15, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %113 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %114, %112
  store i32 %sub.i, ptr %backlog.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %115 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %qlen, align 8
  %dec = add i32 %116, -1
  store i32 %dec, ptr %qlen, align 8
  br label %cleanup4

cleanup4:                                         ; preds = %cleanup, %for.cond.cleanup4_crit_edge, %entry.cleanup4_crit_edge
  %retval.2 = phi ptr [ %skb.0.i18, %cleanup ], [ null, %entry.cleanup4_crit_edge ], [ null, %for.cond.cleanup4_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @prio_peek(ptr nocapture noundef readonly %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %privdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10 = icmp sgt i32 %1, 0
  br i1 %cmp10, label %entry.for.body_crit_edge, label %entry.cleanup3_crit_edge

entry.cleanup3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup3

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %prio.011, 1
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %privdata.i, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup3_crit_edge

for.cond.cleanup3_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup3

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %prio.011 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.prio_sched_data, ptr %privdata.i, i32 0, i32 4, i32 %prio.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %ops = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 16
  %peek = getelementptr inbounds %struct.Qdisc_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %peek to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peek, align 4
  %call1 = tail call ptr %9(ptr noundef %5) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup3_crit_edge

for.body.cleanup3_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup3

cleanup3:                                         ; preds = %for.body.cleanup3_crit_edge, %for.cond.cleanup3_crit_edge, %entry.cleanup3_crit_edge
  %retval.2 = phi ptr [ null, %entry.cleanup3_crit_edge ], [ null, %for.cond.cleanup3_crit_edge ], [ %call1, %for.body.cleanup3_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prio_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %filter_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %call1 = tail call i32 @tcf_block_get(ptr noundef %block, ptr noundef %filter_list, ptr noundef %sch, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @prio_tune(ptr noundef %sch, ptr noundef nonnull %opt, ptr noundef %extack)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prio_reset(ptr nocapture noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %privdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp sgt i32 %1, 0
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %prio.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.prio_sched_data, ptr %privdata.i, i32 0, i32 4, i32 %prio.08
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @qdisc_reset(ptr noundef %3) #11
  %inc = add nuw nsw i32 %prio.08, 1
  %4 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %privdata.i, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %backlog, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %7 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prio_destroy(ptr nocapture noundef readonly %sch) #2 align 64 {
entry:
  %opt.i = alloca %struct.tc_prio_qopt_offload, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 4
  tail call void @tcf_block_put(ptr noundef %1) #11
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %opt.i) #11
  %6 = getelementptr inbounds i8, ptr %opt.i, i32 12
  %7 = call ptr @memset(ptr %6, i32 0, i32 24)
  %handle.i = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %opt.i, i32 0, i32 1
  %handle1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %8 = ptrtoint ptr %handle1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle1.i, align 32
  %10 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %handle.i, align 4
  %parent.i = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %opt.i, i32 0, i32 2
  %parent2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %11 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %parent2.i, align 4
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %parent.i, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %14 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %15, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.prio_offload.exit_crit_edge, label %lor.lhs.false.i

entry.prio_offload.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %prio_offload.exit

lor.lhs.false.i:                                  ; preds = %entry
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 16
  %16 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %17, i32 0, i32 42
  %18 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.prio_offload.exit_crit_edge, label %if.end.i

lor.lhs.false.i.prio_offload.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prio_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %opt.i, align 4
  %call13.i = call i32 %19(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %opt.i) #11
  br label %prio_offload.exit

prio_offload.exit:                                ; preds = %if.end.i, %lor.lhs.false.i.prio_offload.exit_crit_edge, %entry.prio_offload.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %opt.i) #11
  %21 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %privdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7 = icmp sgt i32 %22, 0
  br i1 %cmp7, label %prio_offload.exit.for.body_crit_edge, label %prio_offload.exit.for.end_crit_edge

prio_offload.exit.for.end_crit_edge:              ; preds = %prio_offload.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

prio_offload.exit.for.body_crit_edge:             ; preds = %prio_offload.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %prio_offload.exit.for.body_crit_edge
  %prio.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %prio_offload.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.prio_sched_data, ptr %privdata.i, i32 0, i32 4, i32 %prio.08
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  call void @qdisc_put(ptr noundef %24) #11
  %inc = add nuw nsw i32 %prio.08, 1
  %25 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %privdata.i, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %prio_offload.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prio_tune(ptr noundef %sch, ptr noundef readonly %opt, ptr noundef %extack) #2 align 64 {
entry:
  %qstats.i.i = alloca %struct.gnet_stats_queue, align 4
  %opt.i = alloca %struct.tc_prio_qopt_offload, align 4
  %queues = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %queues) #11
  %0 = call ptr @memset(ptr %queues, i32 255, i32 64)
  %1 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %privdata.i, align 4
  %3 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %opt, align 2
  %conv.i = zext i16 %4 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %opt, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %7 = add i32 %6, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %7)
  %8 = icmp ult i32 %7, -15
  br i1 %8, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %9 = trunc i32 %6 to i8
  %arrayidx = getelementptr i8, ptr %opt, i32 8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %9)
  %cmp11.not = icmp ult i8 %11, %9
  br i1 %cmp11.not, label %for.cond, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr i8, ptr %opt, i32 9
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %9)
  %cmp11.not.1 = icmp ult i8 %13, %9
  br i1 %cmp11.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i8, ptr %opt, i32 10
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %9)
  %cmp11.not.2 = icmp ult i8 %15, %9
  br i1 %cmp11.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr i8, ptr %opt, i32 11
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %9)
  %cmp11.not.3 = icmp ult i8 %17, %9
  br i1 %cmp11.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr i8, ptr %opt, i32 12
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %9)
  %cmp11.not.4 = icmp ult i8 %19, %9
  br i1 %cmp11.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr i8, ptr %opt, i32 13
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %9)
  %cmp11.not.5 = icmp ult i8 %21, %9
  br i1 %cmp11.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr i8, ptr %opt, i32 14
  %22 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %9)
  %cmp11.not.6 = icmp ult i8 %23, %9
  br i1 %cmp11.not.6, label %for.cond.6, label %for.cond.5.cleanup_crit_edge

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr i8, ptr %opt, i32 15
  %24 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %9)
  %cmp11.not.7 = icmp ult i8 %25, %9
  br i1 %cmp11.not.7, label %for.cond.7, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx.8 = getelementptr i8, ptr %opt, i32 16
  %26 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %9)
  %cmp11.not.8 = icmp ult i8 %27, %9
  br i1 %cmp11.not.8, label %for.cond.8, label %for.cond.7.cleanup_crit_edge

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx.9 = getelementptr i8, ptr %opt, i32 17
  %28 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %9)
  %cmp11.not.9 = icmp ult i8 %29, %9
  br i1 %cmp11.not.9, label %for.cond.9, label %for.cond.8.cleanup_crit_edge

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  %arrayidx.10 = getelementptr i8, ptr %opt, i32 18
  %30 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %9)
  %cmp11.not.10 = icmp ult i8 %31, %9
  br i1 %cmp11.not.10, label %for.cond.10, label %for.cond.9.cleanup_crit_edge

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.10:                                      ; preds = %for.cond.9
  %arrayidx.11 = getelementptr i8, ptr %opt, i32 19
  %32 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %9)
  %cmp11.not.11 = icmp ult i8 %33, %9
  br i1 %cmp11.not.11, label %for.cond.11, label %for.cond.10.cleanup_crit_edge

for.cond.10.cleanup_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.11:                                      ; preds = %for.cond.10
  %arrayidx.12 = getelementptr i8, ptr %opt, i32 20
  %34 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.12, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %9)
  %cmp11.not.12 = icmp ult i8 %35, %9
  br i1 %cmp11.not.12, label %for.cond.12, label %for.cond.11.cleanup_crit_edge

for.cond.11.cleanup_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.12:                                      ; preds = %for.cond.11
  %arrayidx.13 = getelementptr i8, ptr %opt, i32 21
  %36 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.13, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %9)
  %cmp11.not.13 = icmp ult i8 %37, %9
  br i1 %cmp11.not.13, label %for.cond.13, label %for.cond.12.cleanup_crit_edge

for.cond.12.cleanup_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.13:                                      ; preds = %for.cond.12
  %arrayidx.14 = getelementptr i8, ptr %opt, i32 22
  %38 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %9)
  %cmp11.not.14 = icmp ult i8 %39, %9
  br i1 %cmp11.not.14, label %for.cond.14, label %for.cond.13.cleanup_crit_edge

for.cond.13.cleanup_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.14:                                      ; preds = %for.cond.13
  %arrayidx.15 = getelementptr i8, ptr %opt, i32 23
  %40 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %9)
  %cmp11.not.15 = icmp ult i8 %41, %9
  br i1 %cmp11.not.15, label %for.cond.15, label %for.cond.14.cleanup_crit_edge

for.cond.14.cleanup_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.15:                                      ; preds = %for.cond.14
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  br label %for.cond15

for.cond15:                                       ; preds = %for.body19.for.cond15_crit_edge, %for.cond.15
  %i.1 = phi i32 [ %add, %for.body19.for.cond15_crit_edge ], [ %2, %for.cond.15 ]
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %43)
  %cmp17 = icmp slt i32 %i.1, %43
  %44 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_queue, align 8
  br i1 %cmp17, label %for.body19, label %for.end31

for.body19:                                       ; preds = %for.cond15
  %46 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %handle, align 32
  %and = and i32 %47, -65536
  %add = add nsw i32 %i.1, 1
  %and20 = and i32 %add, 65535
  %or = or i32 %and, %and20
  %call21 = tail call ptr @qdisc_create_dflt(ptr noundef %45, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %or, ptr noundef %extack) #11
  %arrayidx22 = getelementptr [16 x ptr], ptr %queues, i32 0, i32 %i.1
  %48 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call21, ptr %arrayidx22, align 4
  %tobool.not = icmp eq ptr %call21, null
  br i1 %tobool.not, label %while.cond.preheader, label %for.body19.for.cond15_crit_edge

for.body19.for.cond15_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond15

while.cond.preheader:                             ; preds = %for.body19
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %2)
  %cmp25158 = icmp sgt i32 %i.1, %2
  br i1 %cmp25158, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.2159 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.1, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i32 %i.2159, -1
  %arrayidx27 = getelementptr [16 x ptr], ptr %queues, i32 0, i32 %dec
  %49 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx27, align 4
  tail call void @qdisc_put(ptr noundef %50) #11
  %cmp25 = icmp sgt i32 %dec, %2
  br i1 %cmp25, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

for.end31:                                        ; preds = %for.cond15
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %45, align 128
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %opt.i) #11
  %53 = call ptr @memset(ptr %opt.i, i32 0, i32 36)
  %handle.i = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %opt.i, i32 0, i32 1
  %54 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %handle, align 32
  %56 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %handle.i, align 4
  %parent.i = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %opt.i, i32 0, i32 2
  %parent2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %57 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %parent2.i, align 4
  %59 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %parent.i, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 23
  %60 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %61, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.end31.prio_offload.exit_crit_edge, label %lor.lhs.false.i

for.end31.prio_offload.exit_crit_edge:            ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %prio_offload.exit

lor.lhs.false.i:                                  ; preds = %for.end31
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 16
  %62 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %63, i32 0, i32 42
  %64 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool.not.i = icmp eq ptr %65, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.prio_offload.exit_crit_edge, label %if.end.i

lor.lhs.false.i.prio_offload.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prio_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %tobool4.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %66 = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %opt.i, i32 0, i32 3
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %43, ptr %66, align 4
  %priomap.i = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %opt.i, i32 0, i32 3, i32 0, i32 1
  %priomap7.i = getelementptr i8, ptr %opt, i32 8
  %68 = call ptr @memcpy(ptr %priomap.i, ptr %priomap7.i, i32 16)
  %qstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  %qstats8.i = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %opt.i, i32 0, i32 3, i32 0, i32 2
  %69 = ptrtoint ptr %qstats8.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %qstats.i, ptr %qstats8.i, align 4
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %opt.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then5.i
  %71 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc12.i = getelementptr inbounds %struct.net_device_ops, ptr %72, i32 0, i32 42
  %73 = ptrtoint ptr %ndo_setup_tc12.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ndo_setup_tc12.i, align 4
  %call13.i = call i32 %74(ptr noundef %52, i32 noundef 8, ptr noundef nonnull %opt.i) #11
  br label %prio_offload.exit

prio_offload.exit:                                ; preds = %if.end10.i, %lor.lhs.false.i.prio_offload.exit_crit_edge, %for.end31.prio_offload.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %opt.i) #11
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %75 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %76, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i130 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i130, label %if.else.i131, label %prio_offload.exit.sch_tree_lock.exit_crit_edge

prio_offload.exit.sch_tree_lock.exit_crit_edge:   ; preds = %prio_offload.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit

if.else.i131:                                     ; preds = %prio_offload.exit
  %77 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_queue, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i131.sch_tree_lock.exit_crit_edge

if.else.i131.sch_tree_lock.exit_crit_edge:        ; preds = %if.else.i131
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i131
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !45

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #11
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i131.sch_tree_lock.exit_crit_edge, %prio_offload.exit.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %prio_offload.exit.sch_tree_lock.exit_crit_edge ], [ %80, %if.else.i131.sch_tree_lock.exit_crit_edge ], [ %80, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %80, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #11
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i, align 4
  %83 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %privdata.i, align 4
  %prio2band = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %priomap35 = getelementptr i8, ptr %opt, i32 8
  %84 = call ptr @memcpy(ptr %prio2band, ptr %priomap35, i32 16)
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %2)
  %cmp39152 = icmp slt i32 %82, %2
  br i1 %cmp39152, label %for.body41.lr.ph, label %sch_tree_lock.exit.for.cond47.preheader_crit_edge

sch_tree_lock.exit.for.cond47.preheader_crit_edge: ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond47.preheader

for.body41.lr.ph:                                 ; preds = %sch_tree_lock.exit
  %backlog3.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i, i32 0, i32 1
  br label %for.body41

for.cond47.preheader:                             ; preds = %for.body41.for.cond47.preheader_crit_edge, %sch_tree_lock.exit.for.cond47.preheader_crit_edge
  %85 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %privdata.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %86)
  %cmp49154 = icmp slt i32 %2, %86
  br i1 %cmp49154, label %for.cond47.preheader.for.body51_crit_edge, label %for.cond47.preheader.for.end65_crit_edge

for.cond47.preheader.for.end65_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end65

for.cond47.preheader.for.body51_crit_edge:        ; preds = %for.cond47.preheader
  br label %for.body51

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.body41.lr.ph
  %i.3153 = phi i32 [ %82, %for.body41.lr.ph ], [ %inc45, %for.body41.for.body41_crit_edge ]
  %arrayidx43 = getelementptr %struct.prio_sched_data, ptr %privdata.i, i32 0, i32 4, i32 %i.3153
  %87 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx43, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i) #11
  %89 = call ptr @memset(ptr %qstats.i.i, i32 0, i32 20)
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %88, i32 0, i32 12
  %90 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cpu_qstats.i.i, align 4
  %qstats1.i.i = getelementptr inbounds %struct.Qdisc, ptr %88, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i, ptr noundef %91, ptr noundef %qstats1.i.i) #11
  %92 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %qstats.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %88, i32 0, i32 17, i32 2
  %94 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %qlen.i.i.i, align 8
  %add.i.i = add i32 %95, %93
  %96 = ptrtoint ptr %backlog3.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %backlog3.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i) #11
  call void @qdisc_tree_reduce_backlog(ptr noundef %88, i32 noundef %add.i.i, i32 noundef %97) #11
  %inc45 = add i32 %i.3153, 1
  %exitcond.not = icmp eq i32 %inc45, %2
  br i1 %exitcond.not, label %for.body41.for.cond47.preheader_crit_edge, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body41

for.body41.for.cond47.preheader_crit_edge:        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond47.preheader

for.body51:                                       ; preds = %for.inc63.for.body51_crit_edge, %for.cond47.preheader.for.body51_crit_edge
  %i.4155 = phi i32 [ %inc64, %for.inc63.for.body51_crit_edge ], [ %2, %for.cond47.preheader.for.body51_crit_edge ]
  %arrayidx52 = getelementptr [16 x ptr], ptr %queues, i32 0, i32 %i.4155
  %98 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx52, align 4
  %arrayidx54 = getelementptr %struct.prio_sched_data, ptr %privdata.i, i32 0, i32 4, i32 %i.4155
  %100 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %arrayidx54, align 4
  %cmp57.not = icmp eq ptr %99, @noop_qdisc
  br i1 %cmp57.not, label %for.body51.for.inc63_crit_edge, label %if.then59

for.body51.for.inc63_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc63

if.then59:                                        ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #13
  call void @qdisc_hash_add(ptr noundef %99, i1 noundef zeroext true) #11
  br label %for.inc63

for.inc63:                                        ; preds = %if.then59, %for.body51.for.inc63_crit_edge
  %inc64 = add nsw i32 %i.4155, 1
  %101 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %privdata.i, align 4
  %cmp49 = icmp slt i32 %inc64, %102
  br i1 %cmp49, label %for.inc63.for.body51_crit_edge, label %for.inc63.for.end65_crit_edge

for.inc63.for.end65_crit_edge:                    ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end65

for.inc63.for.body51_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body51

for.end65:                                        ; preds = %for.inc63.for.end65_crit_edge, %for.cond47.preheader.for.end65_crit_edge
  %103 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i, align 8
  %and.i134 = and i32 %104, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i134)
  %tobool.not.i135 = icmp eq i32 %and.i134, 0
  br i1 %tobool.not.i135, label %if.else.i140, label %for.end65.sch_tree_unlock.exit_crit_edge

for.end65.sch_tree_unlock.exit_crit_edge:         ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_unlock.exit

if.else.i140:                                     ; preds = %for.end65
  %105 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev_queue, align 8
  %qdisc_sleeping.i.i.i137 = getelementptr inbounds %struct.netdev_queue, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %qdisc_sleeping.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %qdisc_sleeping.i.i.i137, align 4
  %call1.i.i138 = call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i138)
  %tobool.not.i.i139 = icmp eq i32 %call1.i.i138, 0
  br i1 %tobool.not.i.i139, label %land.rhs.i.i142, label %if.else.i140.sch_tree_unlock.exit_crit_edge

if.else.i140.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_unlock.exit

land.rhs.i.i142:                                  ; preds = %if.else.i140
  %.b41.i.i141 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i141, label %land.rhs.i.i142.sch_tree_unlock.exit_crit_edge, label %if.then.i.i143, !prof !45

land.rhs.i.i142.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i142
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_unlock.exit

if.then.i.i143:                                   ; preds = %land.rhs.i.i142
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #11
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i143, %land.rhs.i.i142.sch_tree_unlock.exit_crit_edge, %if.else.i140.sch_tree_unlock.exit_crit_edge, %for.end65.sch_tree_unlock.exit_crit_edge
  %.sink.i144 = phi ptr [ %sch, %for.end65.sch_tree_unlock.exit_crit_edge ], [ %108, %if.else.i140.sch_tree_unlock.exit_crit_edge ], [ %108, %land.rhs.i.i142.sch_tree_unlock.exit_crit_edge ], [ %108, %if.then.i.i143 ]
  %lock.i.i.i145 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i144, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i145) #11
  %109 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %privdata.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %2)
  %cmp68156 = icmp slt i32 %110, %2
  br i1 %cmp68156, label %sch_tree_unlock.exit.for.body70_crit_edge, label %sch_tree_unlock.exit.cleanup_crit_edge

sch_tree_unlock.exit.cleanup_crit_edge:           ; preds = %sch_tree_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sch_tree_unlock.exit.for.body70_crit_edge:        ; preds = %sch_tree_unlock.exit
  br label %for.body70

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %sch_tree_unlock.exit.for.body70_crit_edge
  %i.5157 = phi i32 [ %inc74, %for.body70.for.body70_crit_edge ], [ %110, %sch_tree_unlock.exit.for.body70_crit_edge ]
  %arrayidx72 = getelementptr %struct.prio_sched_data, ptr %privdata.i, i32 0, i32 4, i32 %i.5157
  %111 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx72, align 4
  call void @qdisc_put(ptr noundef %112) #11
  %inc74 = add i32 %i.5157, 1
  %exitcond164.not = icmp eq i32 %inc74, %2
  br i1 %exitcond164.not, label %for.body70.cleanup_crit_edge, label %for.body70.for.body70_crit_edge

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body70

for.body70.cleanup_crit_edge:                     ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body70.cleanup_crit_edge, %sch_tree_unlock.exit.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %for.cond.14.cleanup_crit_edge, %for.cond.13.cleanup_crit_edge, %for.cond.12.cleanup_crit_edge, %for.cond.11.cleanup_crit_edge, %for.cond.10.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %while.cond.preheader.cleanup_crit_edge ], [ 0, %sch_tree_unlock.exit.cleanup_crit_edge ], [ -22, %for.cond.14.cleanup_crit_edge ], [ -22, %for.cond.13.cleanup_crit_edge ], [ -22, %for.cond.12.cleanup_crit_edge ], [ -22, %for.cond.11.cleanup_crit_edge ], [ -22, %for.cond.10.cleanup_crit_edge ], [ -22, %for.cond.9.cleanup_crit_edge ], [ -22, %for.cond.8.cleanup_crit_edge ], [ -22, %for.cond.7.cleanup_crit_edge ], [ -22, %for.cond.6.cleanup_crit_edge ], [ -22, %for.cond.5.cleanup_crit_edge ], [ -22, %for.cond.4.cleanup_crit_edge ], [ -22, %for.cond.3.cleanup_crit_edge ], [ -22, %for.cond.2.cleanup_crit_edge ], [ -22, %for.cond.1.cleanup_crit_edge ], [ -22, %for.cond.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ], [ -12, %while.body.cleanup_crit_edge ], [ 0, %for.body70.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %queues) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prio_dump(ptr noundef %sch, ptr noundef %skb) #2 align 64 {
entry:
  %hw_stats.i = alloca %struct.tc_prio_qopt_offload, align 4
  %opt = alloca %struct.tc_prio_qopt, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %opt) #11
  %2 = getelementptr inbounds %struct.tc_prio_qopt, ptr %opt, i32 0, i32 1
  %3 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %privdata.i, align 4
  %5 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %opt, align 4
  %prio2band = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %6 = call ptr @memcpy(ptr %2, ptr %prio2band, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hw_stats.i) #11
  %7 = getelementptr inbounds i8, ptr %hw_stats.i, i32 20
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %9 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %hw_stats.i, align 4
  %handle.i = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %hw_stats.i, i32 0, i32 1
  %handle1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %10 = ptrtoint ptr %handle1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %handle1.i, align 32
  %12 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %handle.i, align 4
  %parent.i = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %hw_stats.i, i32 0, i32 2
  %parent2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %13 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %parent2.i, align 4
  %15 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %parent.i, align 4
  %16 = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %hw_stats.i, i32 0, i32 3
  %bstats3.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bstats3.i, ptr %16, align 4
  %qstats.i = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %hw_stats.i, i32 0, i32 3, i32 0, i32 1
  %qstats4.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  %18 = ptrtoint ptr %qstats.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %qstats4.i, ptr %qstats.i, align 4
  %call.i = call i32 @qdisc_offload_dump_helper(ptr noundef %sch, i32 noundef 8, ptr noundef nonnull %hw_stats.i) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hw_stats.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %call4 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 20, ptr noundef nonnull %opt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %22, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !39

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end7
  %retval.0 = phi i32 [ %20, %if.end7 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %opt) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prio_graft(ptr noundef %sch, i32 noundef %arg, ptr noundef %new, ptr nocapture noundef %old, ptr noundef %extack) #2 align 64 {
entry:
  %qstats.i.i.i = alloca %struct.gnet_stats_queue, align 4
  %graft_offload = alloca %struct.tc_prio_qopt_offload, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %graft_offload) #11
  %0 = call ptr @memset(ptr %graft_offload, i32 255, i32 36)
  %tobool.not = icmp eq ptr %new, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %1 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_queue, align 8
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %handle, align 32
  %and = and i32 %4, -65536
  %and1 = and i32 %arg, 65535
  %or = or i32 %and, %and1
  %call2 = tail call ptr @qdisc_create_dflt(ptr noundef %2, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %or, ptr noundef %extack) #11
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
  %sub = add i32 %arg, -1
  %arrayidx = getelementptr %struct.prio_sched_data, ptr %privdata.i, i32 0, i32 4, i32 %sub
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end5.sch_tree_lock.exit.i_crit_edge

if.end5.sch_tree_lock.exit.i_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %if.end5
  %dev_queue.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %7 = ptrtoint ptr %dev_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_queue.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !45

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #11
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %if.end5.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %sch, %if.end5.sch_tree_lock.exit.i_crit_edge ], [ %10, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %10, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %10, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #11
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  store ptr %new.addr.0, ptr %arrayidx, align 4
  %cmp.not.i = icmp eq ptr %12, null
  br i1 %cmp.not.i, label %sch_tree_lock.exit.i.if.end.i_crit_edge, label %if.then.i

sch_tree_lock.exit.i.if.end.i_crit_edge:          ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i.i) #11
  %13 = call ptr @memset(ptr %qstats.i.i.i, i32 0, i32 20)
  %cpu_qstats.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 12
  %14 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %qstats1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i.i, ptr noundef %15, ptr noundef %qstats1.i.i.i) #11
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
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i.i) #11
  call void @qdisc_reset(ptr noundef nonnull %12) #11
  call void @qdisc_tree_reduce_backlog(ptr noundef nonnull %12, i32 noundef %add.i.i.i, i32 noundef %21) #11
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
  call void @__sanitizer_cov_trace_pc() #13
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
  %call1.i.i10.i = call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %call1.i.i10.i, 0
  br i1 %tobool.not.i.i11.i, label %land.rhs.i.i14.i, label %if.else.i12.i.qdisc_replace.exit_crit_edge

if.else.i12.i.qdisc_replace.exit_crit_edge:       ; preds = %if.else.i12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_replace.exit

land.rhs.i.i14.i:                                 ; preds = %if.else.i12.i
  %.b41.i.i13.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i13.i, label %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, label %if.then.i.i15.i, !prof !45

land.rhs.i.i14.i.qdisc_replace.exit_crit_edge:    ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_replace.exit

if.then.i.i15.i:                                  ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #11
  br label %qdisc_replace.exit

qdisc_replace.exit:                               ; preds = %if.then.i.i15.i, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, %if.else.i12.i.qdisc_replace.exit_crit_edge, %if.end.i.qdisc_replace.exit_crit_edge
  %.sink.i16.i = phi ptr [ %sch, %if.end.i.qdisc_replace.exit_crit_edge ], [ %27, %if.else.i12.i.qdisc_replace.exit_crit_edge ], [ %27, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge ], [ %27, %if.then.i.i15.i ]
  %lock.i.i.i17.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i16.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i17.i) #11
  %28 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %12, ptr %old, align 4
  %handle7 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %29 = ptrtoint ptr %handle7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %handle7, align 32
  %handle8 = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %graft_offload, i32 0, i32 1
  %31 = ptrtoint ptr %handle8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %handle8, align 4
  %parent = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %parent, align 4
  %parent9 = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %graft_offload, i32 0, i32 2
  %34 = ptrtoint ptr %parent9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %parent9, align 4
  %conv = trunc i32 %sub to i8
  %35 = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %graft_offload, i32 0, i32 3
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv, ptr %35, align 4
  %handle11 = getelementptr inbounds %struct.Qdisc, ptr %new.addr.0, i32 0, i32 7
  %37 = ptrtoint ptr %handle11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %handle11, align 32
  %child_handle = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %graft_offload, i32 0, i32 3, i32 0, i32 1
  %39 = ptrtoint ptr %child_handle to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %child_handle, align 4
  %40 = ptrtoint ptr %graft_offload to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %graft_offload, align 4
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %41 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_queue.i, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 128
  call void @qdisc_offload_graft_helper(ptr noundef %44, ptr noundef %sch, ptr noundef %new.addr.0, ptr noundef %12, i32 noundef 8, ptr noundef nonnull %graft_offload, ptr noundef %extack) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %graft_offload) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @prio_leaf(ptr nocapture noundef readonly %sch, i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %sub = add i32 %arg, -1
  %arrayidx = getelementptr %struct.prio_sched_data, ptr %privdata.i, i32 0, i32 4, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prio_find(ptr nocapture noundef readonly %sch, i32 noundef %classid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %and = and i32 %classid, 65535
  %sub = add nsw i32 %and, -1
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %privdata.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %1)
  %cmp.not = icmp ult i32 %sub, %1
  %and. = select i1 %cmp.not, i32 %and, i32 0
  ret i32 %and.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prio_walk(ptr noundef %sch, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
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
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %privdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp24 = icmp sgt i32 %3, 0
  br i1 %cmp24, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %prio.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc12.pre-phi, %for.inc.for.body_crit_edge ]
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
  %.pre = add nuw nsw i32 %prio.025, 1
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %8 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fn, align 4
  %add = add nuw nsw i32 %prio.025, 1
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
  %14 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %privdata.i, align 4
  %cmp = icmp slt i32 %inc12.pre-phi, %15
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @prio_tcf_block(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cl)
  %tobool.not = icmp eq i32 %cl, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prio_bind(ptr nocapture noundef readonly %sch, i32 noundef %parent, i32 noundef %classid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %and.i = and i32 %classid, 65535
  %sub.i = add nsw i32 %and.i, -1
  %0 = ptrtoint ptr %privdata.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %privdata.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %1)
  %cmp.not.i = icmp ult i32 %sub.i, %1
  %and..i = select i1 %cmp.not.i, i32 %and.i, i32 0
  ret i32 %and..i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @prio_unbind(ptr nocapture noundef %q, i32 noundef %cl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prio_dump_class(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %skb, ptr nocapture noundef %tcm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %and = and i32 %cl, 65535
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %0 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tcm_handle, align 4
  %or = or i32 %1, %and
  store i32 %or, ptr %tcm_handle, align 4
  %sub = add i32 %cl, -1
  %arrayidx = getelementptr %struct.prio_sched_data, ptr %privdata.i, i32 0, i32 4, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %handle = getelementptr inbounds %struct.Qdisc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 32
  %tcm_info = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 6
  %6 = ptrtoint ptr %tcm_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tcm_info, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prio_dump_class_stats(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %sub = add i32 %cl, -1
  %arrayidx = getelementptr %struct.prio_sched_data, ptr %privdata.i, i32 0, i32 4, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cpu_bstats = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %cpu_bstats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_bstats, align 16
  %bstats = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 18
  %call1 = tail call i32 @gnet_stats_copy_basic(ptr noundef %d, ptr noundef %3, ptr noundef %bstats, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qstats.i.i, align 32
  %flags.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %call216.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call216.i.i, i32 %8)
  %cmp17.i.i = icmp ult i32 %call216.i.i, %8
  br i1 %cmp17.i.i, label %do.body.lr.ph.i.i, label %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge

for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_qstats_copy.exit

do.body.lr.ph.i.i:                                ; preds = %for.cond.preheader.i.i
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_qstats.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %call219.i.i = phi i32 [ %call216.i.i, %do.body.lr.ph.i.i ], [ %call2.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %qlen.018.i.i = phi i32 [ %5, %do.body.lr.ph.i.i ], [ %add5.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call219.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %13, %11
  %14 = inttoptr i32 %add.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add5.i.i = add i32 %16, %qlen.018.i.i
  %call2.i.i = tail call i32 @cpumask_next(i32 noundef %call219.i.i, ptr noundef nonnull @__cpu_possible_mask) #14
  %cmp.i.i = icmp ult i32 %call2.i.i, %8
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
  %17 = ptrtoint ptr %qlen7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen7.i.i, align 8
  %add8.i.i = add i32 %18, %5
  br label %qdisc_qstats_copy.exit

qdisc_qstats_copy.exit:                           ; preds = %if.else.i.i, %do.body.i.i.qdisc_qstats_copy.exit_crit_edge, %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge
  %qlen.1.i.i = phi i32 [ %add8.i.i, %if.else.i.i ], [ %5, %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge ], [ %add5.i.i, %do.body.i.i.qdisc_qstats_copy.exit_crit_edge ]
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cpu_qstats.i, align 4
  %call1.i = tail call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef %20, ptr noundef %qstats.i.i, i32 noundef %qlen.1.i.i) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_offload_graft_helper(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

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
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qdisc_offload_dump_helper(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !18, !19, !21, !23, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__initcall__kmod_sch_prio__368_441_prio_module_init6, !1, !"__initcall__kmod_sch_prio__368_441_prio_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_prio.c", i32 441, i32 1}
!2 = !{ptr @__exitcall_prio_module_exit, !3, !"__exitcall_prio_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_prio.c", i32 442, i32 1}
!4 = !{ptr @__UNIQUE_ID_file369, !5, !"__UNIQUE_ID_file369", i1 false, i1 false}
!5 = !{!"../net/sched/sch_prio.c", i32 444, i32 1}
!6 = !{ptr @__UNIQUE_ID_license370, !5, !"__UNIQUE_ID_license370", i1 false, i1 false}
!7 = !{ptr @prio_qdisc_ops, !8, !"prio_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_prio.c", i32 415, i32 25}
!9 = !{ptr @prio_class_ops, !10, !"prio_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_prio.c", i32 403, i32 37}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/sched/sch_prio.c", i32 41, i32 8}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/net/sch_generic.h", i32 835, i32 34}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/net/netlink.h", i32 991, i32 3}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
!37 = !{i64 751667, i64 751728}
!38 = !{i64 754399}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 754684}
!41 = !{i64 2149872125}
!42 = !{i64 2149877057}
!43 = !{i64 2149898769}
!44 = !{i64 2149903661}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2149980118}
!47 = !{i64 2149980443}
