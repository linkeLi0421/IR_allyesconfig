; ModuleID = '/llk/IR_all_yes/net/sched/sch_multiq.c_pt.bc'
source_filename = "../net/sched/sch_multiq.c"
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.multiq_sched_data = type { i16, i16, i16, ptr, ptr, ptr }
%struct.tc_multiq_qopt = type { i16, i16 }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }

@multiq_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @multiq_class_ops, [16 x i8] c"multiq\00\00\00\00\00\00\00\00\00\00", i32 20, i32 0, ptr @multiq_enqueue, ptr @multiq_dequeue, ptr @multiq_peek, ptr @multiq_init, ptr @multiq_reset, ptr @multiq_destroy, ptr @multiq_tune, ptr null, ptr null, ptr null, ptr @multiq_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_multiq__368_417_multiq_module_init6 = internal global ptr @multiq_module_init, section ".initcall6.init", align 4
@__exitcall_multiq_module_exit = internal global ptr @multiq_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file369 = internal constant [37 x i8] c"sch_multiq.file=net/sched/sch_multiq\00", section ".modinfo", align 1
@__UNIQUE_ID_license370 = internal constant [23 x i8] c"sch_multiq.license=GPL\00", section ".modinfo", align 1
@multiq_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr @multiq_graft, ptr @multiq_leaf, ptr null, ptr @multiq_find, ptr null, ptr null, ptr @multiq_walk, ptr @multiq_tcf_block, ptr @multiq_bind, ptr @multiq_unbind, ptr @multiq_dump_class, ptr @multiq_dump_class_stats }, [40 x i8] zeroinitializer }, align 32
@noop_qdisc = external dso_local global %struct.Qdisc, align 128
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@multiq_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/sched/sch_multiq.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@qdisc_calculate_pkt_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@pfifo_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 8]
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"multiq_class_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 379, i32 37 }
@___asan_gen_.13 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 596, i32 2 }
@___asan_gen_.19 = private constant [26 x i8] c"../net/sched/sch_multiq.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 35, i32 25 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 271, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 991, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_file369, ptr @__UNIQUE_ID_license370, ptr @__exitcall_multiq_module_exit, ptr @__initcall__kmod_sch_multiq__368_417_multiq_module_init6, ptr @multiq_module_exit, ptr @multiq_class_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multiq_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @multiq_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @multiq_qdisc_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @multiq_qdisc_ops) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  %res.i = alloca %struct.tcf_result, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i) #12
  %0 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %res.i, align 4, !annotation !36
  %1 = getelementptr inbounds %struct.anon.118, ptr %res.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !36
  %filter_list.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %3 = ptrtoint ptr %filter_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %filter_list.i, align 4
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end8.i_crit_edge

entry.do.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %entry
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b29.i = load i1, ptr @multiq_classify.__warned, align 1
  br i1 %.b29.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @multiq_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 35, ptr noundef nonnull @.str.3) #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %entry.do.end8.i_crit_edge
  %call10.i = call i32 @tcf_classify(ptr noundef %skb, ptr noundef null, ptr noundef %4, ptr noundef nonnull %res.i, i1 noundef zeroext false) #12
  %5 = zext i32 %call10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call10.i, label %sw.epilog.i [
    i32 4, label %do.end8.i.if.then.thread32_crit_edge
    i32 5, label %do.end8.i.if.then.thread32_crit_edge36
    i32 8, label %do.end8.i.if.then.thread32_crit_edge37
    i32 2, label %if.then
  ]

do.end8.i.if.then.thread32_crit_edge37:           ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.thread32

do.end8.i.if.then.thread32_crit_edge36:           ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.thread32

do.end8.i.if.then.thread32_crit_edge:             ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.thread32

if.then.thread32:                                 ; preds = %do.end8.i.if.then.thread32_crit_edge, %do.end8.i.if.then.thread32_crit_edge36, %do.end8.i.if.then.thread32_crit_edge37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #12
  br label %if.end

sw.epilog.i:                                      ; preds = %do.end8.i
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %6 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %queue_mapping.i.i, align 8
  %8 = ptrtoint ptr %privdata.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %privdata.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp.not.i = icmp ult i16 %7, %9
  br i1 %cmp.not.i, label %if.end16.i, label %if.then15.i

if.then15.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %queues.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %10 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queues.i, align 4
  br label %multiq_classify.exit

if.end16.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i16 %7 to i32
  %queues17.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %12 = ptrtoint ptr %queues17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queues17.i, align 4
  %arrayidx18.i = getelementptr ptr, ptr %13, i32 %conv.i
  br label %multiq_classify.exit

multiq_classify.exit:                             ; preds = %if.end16.i, %if.then15.i
  %retval.0.i.in = phi ptr [ %11, %if.then15.i ], [ %arrayidx18.i, %if.end16.i ]
  %14 = ptrtoint ptr %retval.0.i.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %retval.0.i = load ptr, ptr %retval.0.i.in, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #12
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %multiq_classify.exit.if.then1_crit_edge, label %if.end2

multiq_classify.exit.if.then1_crit_edge:          ; preds = %multiq_classify.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then1

if.then:                                          ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #12
  br label %if.then1

if.then1:                                         ; preds = %if.then, %multiq_classify.exit.if.then1_crit_edge
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %15 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %16, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.thread32
  %ret.02631 = phi i32 [ 131072, %if.then1 ], [ 65536, %if.then.thread32 ]
  %17 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %to_free, align 4
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  br label %cleanup

if.end2:                                          ; preds = %multiq_classify.exit
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %retval.0.i, i32 0, i32 5
  %20 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i = call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end2.do.end8.i.i_crit_edge

if.end2.do.end8.i.i_crit_edge:                    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end2
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

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %if.end2.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %21, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__qdisc_calculate_pkt_len(ptr noundef %skb, ptr noundef nonnull %21) #12
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %22 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %retval.0.i, align 128
  %call.i = call i32 %23(ptr noundef %skb, ptr noundef nonnull %retval.0.i, ptr noundef %to_free) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp eq i32 %call.i, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %qdisc_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #14
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %24 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qlen, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %qlen, align 8
  br label %cleanup

if.end6:                                          ; preds = %qdisc_enqueue.exit
  %and7 = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %drops.i.i19 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %26 = ptrtoint ptr %drops.i.i19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %drops.i.i19, align 4
  %inc.i.i20 = add i32 %27, 1
  store i32 %inc.i.i20, ptr %drops.i.i19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %if.then5, %if.end
  %retval.0 = phi i32 [ %ret.02631, %if.end ], [ 0, %if.then5 ], [ %call.i, %if.end6.cleanup_crit_edge ], [ %call.i, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @multiq_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %privdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp40.not = icmp eq i16 %1, 0
  br i1 %cmp40.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %curband = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %queues = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i16 [ %1, %for.body.lr.ph ], [ %78, %for.inc.for.body_crit_edge ]
  %band.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc21, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %curband to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %curband, align 4
  %inc = add i16 %4, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %2)
  %cmp6.not = icmp ult i16 %inc, %2
  %spec.store.select = select i1 %cmp6.not, i16 %inc, i16 0
  %5 = ptrtoint ptr %curband to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %spec.store.select, ptr %curband, align 4
  %6 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_queue.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %conv11 = zext i16 %spec.store.select to i32
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %11, i32 %conv11, i32 13
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i, align 4
  %and.i = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then14:                                        ; preds = %for.body
  %14 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queues, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %conv11
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dequeue, align 4
  %call16 = tail call ptr %19(ptr noundef %17) #12
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %if.then14.for.inc_crit_edge, label %if.then17

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then17:                                        ; preds = %if.then14
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 3
  %20 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cb.i.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 17
  %22 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.i.not.i.i = icmp eq i16 %25, 0
  br i1 %tobool.i.not.i.i, label %if.then17.cond.end.i.i_crit_edge, label %cond.true.i.i

if.then17.cond.end.i.i_crit_edge:                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 5
  %26 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %27 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then17.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %if.then17.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %29 = tail call i32 @llvm.read_register.i32(metadata !26) #12
  %and.i.i.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  %33 = tail call i32 @llvm.read_register.i32(metadata !26) #12
  %and.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %38, ptrtoint (ptr @lockdep_recursion to i32)
  %39 = inttoptr i32 %add.i.i.i.i.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !38
  %42 = tail call i32 @llvm.read_register.i32(metadata !26) #12
  %and.i.i.i7.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %46 = tail call i32 @llvm.read_register.i32(metadata !26) #12
  %and.i.i.i.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i.i.i.i.i = icmp eq i32 %49, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %50 = tail call i32 @llvm.read_register.i32(metadata !26) #12
  %and.i.i.i9.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %53, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !39
  %54 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %57, ptrtoint (ptr @hardirqs_enabled to i32)
  %58 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %58, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !40
  %61 = tail call i32 @llvm.read_register.i32(metadata !26) #12
  %and.i.i.i12.i.i.i.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %60, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !41

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %21 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %65 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %66, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !42
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %67 = tail call ptr @llvm.returnaddress(i32 0) #12
  %68 = ptrtoint ptr %67 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %68) #12
  %69 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %70, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %71 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %72, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %68) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !43
  %73 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %74, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %75 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %qlen, align 8
  %dec = add i32 %76, -1
  store i32 %dec, ptr %qlen, align 8
  br label %cleanup

for.inc:                                          ; preds = %if.then14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc21 = add nuw nsw i32 %band.041, 1
  %77 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %privdata.i, align 4
  %conv = zext i16 %78 to i32
  %cmp = icmp ult i32 %inc21, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %qdisc_bstats_update.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call16, %qdisc_bstats_update.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @multiq_peek(ptr nocapture noundef readonly %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %queues = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %privdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp32.not = icmp eq i16 %1, 0
  br i1 %cmp32.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %conv231 = zext i16 %1 to i32
  %curband1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %2 = ptrtoint ptr %curband1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %curband1, align 4
  %conv = zext i16 %3 to i32
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv235 = phi i32 [ %conv231, %for.body.lr.ph ], [ %conv2, %for.inc.for.body_crit_edge ]
  %band.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %for.inc.for.body_crit_edge ]
  %curband.033 = phi i32 [ %conv, %for.body.lr.ph ], [ %spec.store.select, %for.inc.for.body_crit_edge ]
  %inc = add i32 %curband.033, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv235)
  %cmp6.not = icmp ult i32 %inc, %conv235
  %spec.store.select = select i1 %cmp6.not, i32 %inc, i32 0
  %4 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_queue.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %9, i32 %spec.store.select, i32 13
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  %and.i = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then11:                                        ; preds = %for.body
  %12 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queues, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %spec.store.select
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %ops = getelementptr inbounds %struct.Qdisc, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 16
  %peek = getelementptr inbounds %struct.Qdisc_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %peek to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %peek, align 4
  %call12 = tail call ptr %19(ptr noundef %15) #12
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.then11.for.inc_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.then11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc16 = add nuw nsw i32 %band.034, 1
  %20 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %privdata.i, align 4
  %conv2 = zext i16 %21 to i32
  %cmp = icmp ult i32 %inc16, %conv2
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %call12, %if.then11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %queues = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %0 = ptrtoint ptr %queues to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %queues, align 4
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %filter_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %call1 = tail call i32 @tcf_block_get(ptr noundef %block, ptr noundef %filter_list, ptr noundef %sch, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %1 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_queue.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 128
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 104
  %5 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_tx_queues, align 4
  %conv = trunc i32 %6 to i16
  %max_bands = getelementptr inbounds %struct.multiq_sched_data, ptr %privdata.i, i32 0, i32 1
  %7 = ptrtoint ptr %max_bands to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %max_bands, align 2
  %conv7 = shl i32 %6, 2
  %8 = and i32 %conv7, 262140
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #15
  %9 = ptrtoint ptr %queues to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i.i, ptr %queues, align 4
  %tobool11.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool11.not, label %if.end4.cleanup_crit_edge, label %for.cond.preheader

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end4
  %10 = ptrtoint ptr %max_bands to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %max_bands, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp40.not = icmp eq i16 %11, 0
  br i1 %cmp40.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %12 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queues, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.041
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @noop_qdisc, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.041, 1
  %15 = ptrtoint ptr %max_bands to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_bands, align 2
  %conv15 = zext i16 %16 to i32
  %cmp = icmp ult i32 %inc, %conv15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call18 = tail call i32 @multiq_tune(ptr noundef %sch, ptr noundef nonnull %opt, ptr noundef %extack)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -105, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @multiq_reset(ptr nocapture noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %privdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp9.not = icmp eq i16 %1, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %queues = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queues, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @qdisc_reset(ptr noundef %5) #12
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %6 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %privdata.i, align 4
  %8 = zext i16 %7 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %9 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %qlen, align 8
  %curband = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %10 = ptrtoint ptr %curband to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %curband, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @multiq_destroy(ptr nocapture noundef readonly %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 4
  tail call void @tcf_block_put(ptr noundef %1) #12
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %privdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp9.not = icmp eq i16 %3, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %queues = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %band.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queues, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %band.010
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @qdisc_put(ptr noundef %7) #12
  %inc = add nuw nsw i32 %band.010, 1
  %8 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %privdata.i, align 4
  %conv = zext i16 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %queues2 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %10 = ptrtoint ptr %queues2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queues2, align 4
  tail call void @kfree(ptr noundef %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq_tune(ptr noundef %sch, ptr nocapture noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %qstats.i.i156 = alloca %struct.gnet_stats_queue, align 4
  %qstats.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i122 = icmp ugt i32 %5, 1
  br i1 %cmp.i122, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %opt, align 2
  %8 = and i16 %7, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %8)
  %cmp = icmp eq i16 %8, 4
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %opt, i32 4
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 105
  %9 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %real_num_tx_queues, align 8
  %conv = trunc i32 %10 to i16
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %add.ptr.i, align 2
  %max_bands = getelementptr inbounds %struct.multiq_sched_data, ptr %privdata.i, i32 0, i32 1
  %12 = ptrtoint ptr %max_bands to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %max_bands, align 2
  %conv8 = zext i16 %13 to i32
  %14 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %privdata.i, align 4
  %conv10 = zext i16 %15 to i32
  %sub = sub nsw i32 %conv8, %conv10
  %mul = shl nsw i32 %sub, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end13.sch_tree_lock.exit_crit_edge

if.end13.sch_tree_lock.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.end13
  %18 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_queue.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i124 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i124)
  %tobool.not.i.i125 = icmp eq i32 %call1.i.i124, 0
  br i1 %tobool.not.i.i125, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !41

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end13.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end13.sch_tree_lock.exit_crit_edge ], [ %21, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %21, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %21, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #12
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 2
  %24 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %privdata.i, align 4
  %25 = ptrtoint ptr %max_bands to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %max_bands, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %26)
  %cmp20181 = icmp ult i16 %23, %26
  br i1 %cmp20181, label %for.body.lr.ph, label %sch_tree_lock.exit.for.end_crit_edge

sch_tree_lock.exit.for.end_crit_edge:             ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %sch_tree_lock.exit
  %conv17 = zext i16 %23 to i32
  %queues = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %backlog3.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n_removed.0183 = phi i32 [ 0, %for.body.lr.ph ], [ %n_removed.1, %for.inc.for.body_crit_edge ]
  %i.0182 = phi i32 [ %conv17, %for.body.lr.ph ], [ %inc31, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %queues, align 4
  %arrayidx = getelementptr ptr, ptr %28, i32 %i.0182
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %cmp22.not = icmp eq ptr %30, @noop_qdisc
  br i1 %cmp22.not, label %for.body.for.inc_crit_edge, label %if.then24

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @noop_qdisc, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i) #12
  %32 = call ptr @memset(ptr %qstats.i.i, i32 0, i32 20)
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %30, i32 0, i32 12
  %33 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cpu_qstats.i.i, align 4
  %qstats1.i.i = getelementptr inbounds %struct.Qdisc, ptr %30, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i, ptr noundef %34, ptr noundef %qstats1.i.i) #12
  %35 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qstats.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %30, i32 0, i32 17, i32 2
  %37 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qlen.i.i.i, align 8
  %add.i.i = add i32 %38, %36
  %39 = ptrtoint ptr %backlog3.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %backlog3.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i) #12
  call void @qdisc_reset(ptr noundef %30) #12
  call void @qdisc_tree_reduce_backlog(ptr noundef %30, i32 noundef %add.i.i, i32 noundef %40) #12
  %inc = add i32 %n_removed.0183, 1
  %arrayidx29 = getelementptr ptr, ptr %call9.i, i32 %n_removed.0183
  %41 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %30, ptr %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %for.body.for.inc_crit_edge
  %n_removed.1 = phi i32 [ %inc, %if.then24 ], [ %n_removed.0183, %for.body.for.inc_crit_edge ]
  %inc31 = add nuw nsw i32 %i.0182, 1
  %42 = ptrtoint ptr %max_bands to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %max_bands, align 2
  %conv19 = zext i16 %43 to i32
  %cmp20 = icmp ult i32 %inc31, %conv19
  br i1 %cmp20, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sch_tree_lock.exit.for.end_crit_edge
  %n_removed.0.lcssa = phi i32 [ 0, %sch_tree_lock.exit.for.end_crit_edge ], [ %n_removed.1, %for.inc.for.end_crit_edge ]
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i, align 8
  %and.i128 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128)
  %tobool.not.i129 = icmp eq i32 %and.i128, 0
  br i1 %tobool.not.i129, label %if.else.i134, label %for.end.sch_tree_unlock.exit_crit_edge

for.end.sch_tree_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.else.i134:                                     ; preds = %for.end
  %46 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_queue.i, align 8
  %qdisc_sleeping.i.i.i131 = getelementptr inbounds %struct.netdev_queue, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %qdisc_sleeping.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %qdisc_sleeping.i.i.i131, align 4
  %call1.i.i132 = call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i132)
  %tobool.not.i.i133 = icmp eq i32 %call1.i.i132, 0
  br i1 %tobool.not.i.i133, label %land.rhs.i.i136, label %if.else.i134.sch_tree_unlock.exit_crit_edge

if.else.i134.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i134
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

land.rhs.i.i136:                                  ; preds = %if.else.i134
  %.b41.i.i135 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i135, label %land.rhs.i.i136.sch_tree_unlock.exit_crit_edge, label %if.then.i.i137, !prof !41

land.rhs.i.i136.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.then.i.i137:                                   ; preds = %land.rhs.i.i136
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i137, %land.rhs.i.i136.sch_tree_unlock.exit_crit_edge, %if.else.i134.sch_tree_unlock.exit_crit_edge, %for.end.sch_tree_unlock.exit_crit_edge
  %.sink.i138 = phi ptr [ %sch, %for.end.sch_tree_unlock.exit_crit_edge ], [ %49, %if.else.i134.sch_tree_unlock.exit_crit_edge ], [ %49, %land.rhs.i.i136.sch_tree_unlock.exit_crit_edge ], [ %49, %if.then.i.i137 ]
  %lock.i.i.i139 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i138, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i139) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_removed.0.lcssa)
  %cmp33184 = icmp sgt i32 %n_removed.0.lcssa, 0
  br i1 %cmp33184, label %sch_tree_unlock.exit.for.body35_crit_edge, label %sch_tree_unlock.exit.for.end39_crit_edge

sch_tree_unlock.exit.for.end39_crit_edge:         ; preds = %sch_tree_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end39

sch_tree_unlock.exit.for.body35_crit_edge:        ; preds = %sch_tree_unlock.exit
  br label %for.body35

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %sch_tree_unlock.exit.for.body35_crit_edge
  %i.1185 = phi i32 [ %inc38, %for.body35.for.body35_crit_edge ], [ 0, %sch_tree_unlock.exit.for.body35_crit_edge ]
  %arrayidx36 = getelementptr ptr, ptr %call9.i, i32 %i.1185
  %50 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx36, align 4
  call void @qdisc_put(ptr noundef %51) #12
  %inc38 = add nuw nsw i32 %i.1185, 1
  %exitcond.not = icmp eq i32 %inc38, %n_removed.0.lcssa
  br i1 %exitcond.not, label %for.body35.for.end39_crit_edge, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body35

for.body35.for.end39_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end39

for.end39:                                        ; preds = %for.body35.for.end39_crit_edge, %sch_tree_unlock.exit.for.end39_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i) #12
  %52 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %privdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp43187.not = icmp eq i16 %53, 0
  br i1 %cmp43187.not, label %for.end39.cleanup_crit_edge, label %for.body45.lr.ph

for.end39.cleanup_crit_edge:                      ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body45.lr.ph:                                 ; preds = %for.end39
  %queues46 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %backlog3.i.i161 = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i156, i32 0, i32 1
  br label %for.body45

for.body45:                                       ; preds = %for.inc70.for.body45_crit_edge, %for.body45.lr.ph
  %i.2188 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc71.pre-phi, %for.inc70.for.body45_crit_edge ]
  %54 = ptrtoint ptr %queues46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %queues46, align 4
  %arrayidx47 = getelementptr ptr, ptr %55, i32 %i.2188
  %56 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx47, align 4
  %cmp48 = icmp eq ptr %57, @noop_qdisc
  br i1 %cmp48, label %if.then50, label %for.body45.for.inc70_crit_edge

for.body45.for.inc70_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = add nuw nsw i32 %i.2188, 1
  br label %for.inc70

if.then50:                                        ; preds = %for.body45
  %58 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_queue.i, align 8
  %60 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %handle, align 32
  %and = and i32 %61, -65536
  %add = add nuw nsw i32 %i.2188, 1
  %or = or i32 %and, %add
  %call53 = call ptr @qdisc_create_dflt(ptr noundef %59, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %or, ptr noundef %extack) #12
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.then50.for.inc70_crit_edge, label %if.then55

if.then50.for.inc70_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc70

if.then55:                                        ; preds = %if.then50
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i, align 8
  %and.i142 = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142)
  %tobool.not.i143 = icmp eq i32 %and.i142, 0
  br i1 %tobool.not.i143, label %if.else.i148, label %if.then55.sch_tree_lock.exit155_crit_edge

if.then55.sch_tree_lock.exit155_crit_edge:        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit155

if.else.i148:                                     ; preds = %if.then55
  %64 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_queue.i, align 8
  %qdisc_sleeping.i.i.i145 = getelementptr inbounds %struct.netdev_queue, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %qdisc_sleeping.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %qdisc_sleeping.i.i.i145, align 4
  %call1.i.i146 = call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i146)
  %tobool.not.i.i147 = icmp eq i32 %call1.i.i146, 0
  br i1 %tobool.not.i.i147, label %land.rhs.i.i150, label %if.else.i148.sch_tree_lock.exit155_crit_edge

if.else.i148.sch_tree_lock.exit155_crit_edge:     ; preds = %if.else.i148
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit155

land.rhs.i.i150:                                  ; preds = %if.else.i148
  %.b41.i.i149 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i149, label %land.rhs.i.i150.sch_tree_lock.exit155_crit_edge, label %if.then.i.i151, !prof !41

land.rhs.i.i150.sch_tree_lock.exit155_crit_edge:  ; preds = %land.rhs.i.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit155

if.then.i.i151:                                   ; preds = %land.rhs.i.i150
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_lock.exit155

sch_tree_lock.exit155:                            ; preds = %if.then.i.i151, %land.rhs.i.i150.sch_tree_lock.exit155_crit_edge, %if.else.i148.sch_tree_lock.exit155_crit_edge, %if.then55.sch_tree_lock.exit155_crit_edge
  %.sink.i152 = phi ptr [ %sch, %if.then55.sch_tree_lock.exit155_crit_edge ], [ %67, %if.else.i148.sch_tree_lock.exit155_crit_edge ], [ %67, %land.rhs.i.i150.sch_tree_lock.exit155_crit_edge ], [ %67, %if.then.i.i151 ]
  %lock.i.i.i153 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i152, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i153) #12
  %68 = ptrtoint ptr %queues46 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %queues46, align 4
  %arrayidx57 = getelementptr ptr, ptr %69, i32 %i.2188
  %70 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx57, align 4
  store ptr %call53, ptr %arrayidx57, align 4
  %cmp60.not = icmp eq ptr %call53, @noop_qdisc
  br i1 %cmp60.not, label %sch_tree_lock.exit155.if.end63_crit_edge, label %if.then62

sch_tree_lock.exit155.if.end63_crit_edge:         ; preds = %sch_tree_lock.exit155
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then62:                                        ; preds = %sch_tree_lock.exit155
  call void @__sanitizer_cov_trace_pc() #14
  call void @qdisc_hash_add(ptr noundef nonnull %call53, i1 noundef zeroext true) #12
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %sch_tree_lock.exit155.if.end63_crit_edge
  %cmp64.not = icmp eq ptr %71, @noop_qdisc
  br i1 %cmp64.not, label %if.end63.if.end67_crit_edge, label %if.then66

if.end63.if.end67_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i156) #12
  %72 = call ptr @memset(ptr %qstats.i.i156, i32 0, i32 20)
  %cpu_qstats.i.i157 = getelementptr inbounds %struct.Qdisc, ptr %71, i32 0, i32 12
  %73 = ptrtoint ptr %cpu_qstats.i.i157 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cpu_qstats.i.i157, align 4
  %qstats1.i.i158 = getelementptr inbounds %struct.Qdisc, ptr %71, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i156, ptr noundef %74, ptr noundef %qstats1.i.i158) #12
  %75 = ptrtoint ptr %qstats.i.i156 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %qstats.i.i156, align 4
  %qlen.i.i.i159 = getelementptr inbounds %struct.Qdisc, ptr %71, i32 0, i32 17, i32 2
  %77 = ptrtoint ptr %qlen.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %qlen.i.i.i159, align 8
  %add.i.i160 = add i32 %78, %76
  %79 = ptrtoint ptr %backlog3.i.i161 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %backlog3.i.i161, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i156) #12
  call void @qdisc_reset(ptr noundef %71) #12
  call void @qdisc_tree_reduce_backlog(ptr noundef %71, i32 noundef %add.i.i160, i32 noundef %80) #12
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end63.if.end67_crit_edge
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags.i, align 8
  %and.i163 = and i32 %82, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %tobool.not.i164 = icmp eq i32 %and.i163, 0
  br i1 %tobool.not.i164, label %if.else.i169, label %if.end67.sch_tree_unlock.exit176_crit_edge

if.end67.sch_tree_unlock.exit176_crit_edge:       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit176

if.else.i169:                                     ; preds = %if.end67
  %83 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_queue.i, align 8
  %qdisc_sleeping.i.i.i166 = getelementptr inbounds %struct.netdev_queue, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %qdisc_sleeping.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %qdisc_sleeping.i.i.i166, align 4
  %call1.i.i167 = call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i167)
  %tobool.not.i.i168 = icmp eq i32 %call1.i.i167, 0
  br i1 %tobool.not.i.i168, label %land.rhs.i.i171, label %if.else.i169.sch_tree_unlock.exit176_crit_edge

if.else.i169.sch_tree_unlock.exit176_crit_edge:   ; preds = %if.else.i169
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit176

land.rhs.i.i171:                                  ; preds = %if.else.i169
  %.b41.i.i170 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i170, label %land.rhs.i.i171.sch_tree_unlock.exit176_crit_edge, label %if.then.i.i172, !prof !41

land.rhs.i.i171.sch_tree_unlock.exit176_crit_edge: ; preds = %land.rhs.i.i171
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit176

if.then.i.i172:                                   ; preds = %land.rhs.i.i171
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_unlock.exit176

sch_tree_unlock.exit176:                          ; preds = %if.then.i.i172, %land.rhs.i.i171.sch_tree_unlock.exit176_crit_edge, %if.else.i169.sch_tree_unlock.exit176_crit_edge, %if.end67.sch_tree_unlock.exit176_crit_edge
  %.sink.i173 = phi ptr [ %sch, %if.end67.sch_tree_unlock.exit176_crit_edge ], [ %86, %if.else.i169.sch_tree_unlock.exit176_crit_edge ], [ %86, %land.rhs.i.i171.sch_tree_unlock.exit176_crit_edge ], [ %86, %if.then.i.i172 ]
  %lock.i.i.i174 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i173, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i174) #12
  call void @qdisc_put(ptr noundef %71) #12
  br label %for.inc70

for.inc70:                                        ; preds = %sch_tree_unlock.exit176, %if.then50.for.inc70_crit_edge, %for.body45.for.inc70_crit_edge
  %inc71.pre-phi = phi i32 [ %.pre, %for.body45.for.inc70_crit_edge ], [ %add, %if.then50.for.inc70_crit_edge ], [ %add, %sch_tree_unlock.exit176 ]
  %87 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %privdata.i, align 4
  %conv42 = zext i16 %88 to i32
  %cmp43 = icmp ult i32 %inc71.pre-phi, %conv42
  br i1 %cmp43, label %for.inc70.for.body45_crit_edge, label %for.inc70.cleanup_crit_edge

for.inc70.cleanup_crit_edge:                      ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc70.for.body45_crit_edge:                   ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body45

cleanup:                                          ; preds = %for.inc70.cleanup_crit_edge, %for.end39.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %for.end39.cleanup_crit_edge ], [ 0, %for.inc70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #2 align 64 {
entry:
  %opt = alloca %struct.tc_multiq_qopt, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt) #12
  %2 = getelementptr inbounds %struct.tc_multiq_qopt, ptr %opt, i32 0, i32 1
  %3 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %privdata.i, align 4
  %5 = ptrtoint ptr %opt to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %opt, align 2
  %max_bands = getelementptr inbounds %struct.multiq_sched_data, ptr %privdata.i, i32 0, i32 1
  %6 = ptrtoint ptr %max_bands to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_bands, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %2, align 2
  %call4 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %opt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %nla_put_failure

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %entry
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %12, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !44

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ %10, %if.end ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq_graft(ptr noundef %sch, i32 noundef %arg, ptr noundef %new, ptr nocapture noundef writeonly %old, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %qstats.i.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %arg, -1
  %cmp = icmp eq ptr %new, null
  %spec.store.select = select i1 %cmp, ptr @noop_qdisc, ptr %new
  %queues = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %0 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queues, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %sub
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.sch_tree_lock.exit.i_crit_edge

entry.sch_tree_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %entry
  %dev_queue.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %4 = ptrtoint ptr %dev_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_queue.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !41

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %entry.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %sch, %entry.sch_tree_lock.exit.i_crit_edge ], [ %7, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %7, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %7, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #12
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  store ptr %spec.store.select, ptr %arrayidx, align 4
  %cmp.not.i = icmp eq ptr %9, null
  br i1 %cmp.not.i, label %sch_tree_lock.exit.i.if.end.i_crit_edge, label %if.then.i

sch_tree_lock.exit.i.if.end.i_crit_edge:          ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i.i) #12
  %10 = call ptr @memset(ptr %qstats.i.i.i, i32 0, i32 20)
  %cpu_qstats.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 12
  %11 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %qstats1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i.i, ptr noundef %12, ptr noundef %qstats1.i.i.i) #12
  %13 = ptrtoint ptr %qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qstats.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 17, i32 2
  %15 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i.i.i.i, align 8
  %add.i.i.i = add i32 %16, %14
  %backlog3.i.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %backlog3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %backlog3.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i.i) #12
  call void @qdisc_reset(ptr noundef nonnull %9) #12
  call void @qdisc_tree_reduce_backlog(ptr noundef nonnull %9, i32 noundef %add.i.i.i, i32 noundef %18) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sch_tree_lock.exit.i.if.end.i_crit_edge
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i.i, align 8
  %and.i6.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.not.i7.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool.not.i7.i, label %if.else.i12.i, label %if.end.i.qdisc_replace.exit_crit_edge

if.end.i.qdisc_replace.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_replace.exit

if.else.i12.i:                                    ; preds = %if.end.i
  %dev_queue.i.i.i8.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %21 = ptrtoint ptr %dev_queue.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_queue.i.i.i8.i, align 8
  %qdisc_sleeping.i.i.i9.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %qdisc_sleeping.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qdisc_sleeping.i.i.i9.i, align 4
  %call1.i.i10.i = call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %call1.i.i10.i, 0
  br i1 %tobool.not.i.i11.i, label %land.rhs.i.i14.i, label %if.else.i12.i.qdisc_replace.exit_crit_edge

if.else.i12.i.qdisc_replace.exit_crit_edge:       ; preds = %if.else.i12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_replace.exit

land.rhs.i.i14.i:                                 ; preds = %if.else.i12.i
  %.b41.i.i13.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i13.i, label %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, label %if.then.i.i15.i, !prof !41

land.rhs.i.i14.i.qdisc_replace.exit_crit_edge:    ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_replace.exit

if.then.i.i15.i:                                  ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %qdisc_replace.exit

qdisc_replace.exit:                               ; preds = %if.then.i.i15.i, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, %if.else.i12.i.qdisc_replace.exit_crit_edge, %if.end.i.qdisc_replace.exit_crit_edge
  %.sink.i16.i = phi ptr [ %sch, %if.end.i.qdisc_replace.exit_crit_edge ], [ %24, %if.else.i12.i.qdisc_replace.exit_crit_edge ], [ %24, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge ], [ %24, %if.then.i.i15.i ]
  %lock.i.i.i17.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i16.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i17.i) #12
  %25 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %9, ptr %old, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @multiq_leaf(ptr nocapture noundef readonly %sch, i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %arg, -1
  %queues = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %0 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queues, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @multiq_find(ptr nocapture noundef readonly %sch, i32 noundef %classid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %and = and i32 %classid, 65535
  %sub = add nsw i32 %and, -1
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %privdata.i, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp.not = icmp ult i32 %sub, %conv
  %and. = select i1 %cmp.not, i32 %and, i32 0
  ret i32 %and.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @multiq_walk(ptr noundef %sch, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
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
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %privdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp28.not = icmp eq i16 %3, 0
  br i1 %cmp28.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %band.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc15.pre-phi, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %6 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2 = icmp slt i32 %5, %7
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = add nuw nsw i32 %band.029, 1
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %8 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fn, align 4
  %add = add nuw nsw i32 %band.029, 1
  %call7 = tail call i32 %9(ptr noundef %sch, i32 noundef %add, ptr noundef %arg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %arg, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %for.body.for.inc_crit_edge
  %inc15.pre-phi = phi i32 [ %.pre, %for.body.for.inc_crit_edge ], [ %add, %if.end12 ]
  %storemerge.in = phi i32 [ %5, %for.body.for.inc_crit_edge ], [ %12, %if.end12 ]
  %storemerge = add i32 %storemerge.in, 1
  %13 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %count, align 4
  %14 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %privdata.i, align 4
  %conv = zext i16 %15 to i32
  %cmp = icmp ult i32 %inc15.pre-phi, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then10, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @multiq_tcf_block(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %extack) #4 align 64 {
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
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @multiq_bind(ptr nocapture noundef readonly %sch, i32 noundef %parent, i32 noundef %classid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %and.i = and i32 %classid, 65535
  %sub.i = add nsw i32 %and.i, -1
  %0 = ptrtoint ptr %privdata.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %privdata.i.i, align 4
  %conv.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %sub.i, %conv.i
  %and..i = select i1 %cmp.not.i, i32 %and.i, i32 0
  ret i32 %and..i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @multiq_unbind(ptr nocapture noundef %q, i32 noundef %cl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @multiq_dump_class(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %skb, ptr nocapture noundef %tcm) #6 align 64 {
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
  %queues = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %2 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queues, align 4
  %sub = add i32 %cl, -1
  %arrayidx = getelementptr ptr, ptr %3, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %handle = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 32
  %tcm_info = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 6
  %8 = ptrtoint ptr %tcm_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tcm_info, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multiq_dump_class_stats(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %queues = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %0 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queues, align 4
  %sub = add i32 %cl, -1
  %arrayidx = getelementptr ptr, ptr %1, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cpu_bstats = getelementptr inbounds %struct.Qdisc, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %cpu_bstats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_bstats, align 16
  %bstats = getelementptr inbounds %struct.Qdisc, ptr %3, i32 0, i32 18
  %call1 = tail call i32 @gnet_stats_copy_basic(ptr noundef %d, ptr noundef %5, ptr noundef %bstats, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qstats.i.i, align 32
  %flags.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call216.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call216.i.i, i32 %10)
  %cmp17.i.i = icmp ult i32 %call216.i.i, %10
  br i1 %cmp17.i.i, label %do.body.lr.ph.i.i, label %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge

for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_qstats_copy.exit

do.body.lr.ph.i.i:                                ; preds = %for.cond.preheader.i.i
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %3, i32 0, i32 12
  %11 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu_qstats.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %call219.i.i = phi i32 [ %call216.i.i, %do.body.lr.ph.i.i ], [ %call2.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %qlen.018.i.i = phi i32 [ %7, %do.body.lr.ph.i.i ], [ %add5.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call219.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %15, %13
  %16 = inttoptr i32 %add.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add5.i.i = add i32 %18, %qlen.018.i.i
  %call2.i.i = tail call i32 @cpumask_next(i32 noundef %call219.i.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp.i.i = icmp ult i32 %call2.i.i, %10
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.qdisc_qstats_copy.exit_crit_edge

do.body.i.i.qdisc_qstats_copy.exit_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_qstats_copy.exit

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %qlen7.i.i = getelementptr inbounds %struct.Qdisc, ptr %3, i32 0, i32 17, i32 2
  %19 = ptrtoint ptr %qlen7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qlen7.i.i, align 8
  %add8.i.i = add i32 %20, %7
  br label %qdisc_qstats_copy.exit

qdisc_qstats_copy.exit:                           ; preds = %if.else.i.i, %do.body.i.i.qdisc_qstats_copy.exit_crit_edge, %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge
  %qlen.1.i.i = phi i32 [ %add8.i.i, %if.else.i.i ], [ %7, %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge ], [ %add5.i.i, %do.body.i.i.qdisc_qstats_copy.exit_crit_edge ]
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %3, i32 0, i32 12
  %21 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpu_qstats.i, align 4
  %call1.i = tail call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef %22, ptr noundef %qstats.i.i, i32 noundef %qlen.1.i.i) #12
  %call1.i.lobit = ashr i32 %call1.i, 31
  br label %cleanup

cleanup:                                          ; preds = %qdisc_qstats_copy.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %call1.i.lobit, %qdisc_qstats_copy.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

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
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_block_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_hash_add(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !18, !19, !21, !23, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__initcall__kmod_sch_multiq__368_417_multiq_module_init6, !1, !"__initcall__kmod_sch_multiq__368_417_multiq_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_multiq.c", i32 417, i32 1}
!2 = !{ptr @__exitcall_multiq_module_exit, !3, !"__exitcall_multiq_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_multiq.c", i32 418, i32 1}
!4 = !{ptr @__UNIQUE_ID_file369, !5, !"__UNIQUE_ID_file369", i1 false, i1 false}
!5 = !{!"../net/sched/sch_multiq.c", i32 420, i32 1}
!6 = !{ptr @__UNIQUE_ID_license370, !5, !"__UNIQUE_ID_license370", i1 false, i1 false}
!7 = !{ptr @multiq_qdisc_ops, !8, !"multiq_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_multiq.c", i32 391, i32 25}
!9 = !{ptr @multiq_class_ops, !10, !"multiq_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_multiq.c", i32 379, i32 37}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/sched/sch_multiq.c", i32 35, i32 25}
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
!37 = !{i64 2149871260}
!38 = !{i64 2149876192}
!39 = !{i64 2149897904}
!40 = !{i64 2149902796}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2149979253}
!43 = !{i64 2149979578}
!44 = !{!"branch_weights", i32 1, i32 2000}
