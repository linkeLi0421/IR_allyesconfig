; ModuleID = '/llk/IR_all_yes/net/sched/sch_plug.c_pt.bc'
source_filename = "../net/sched/sch_plug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.plug_sched_data = type { i8, i8, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.119, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.119 = type { ptr }
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

@plug_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr null, [16 x i8] c"plug\00\00\00\00\00\00\00\00\00\00\00\00", i32 20, i32 0, ptr @plug_enqueue, ptr @plug_dequeue, ptr @qdisc_peek_head, ptr @plug_init, ptr @qdisc_reset_queue, ptr null, ptr @plug_change, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_plug__364_229_plug_module_init6 = internal global ptr @plug_module_init, section ".initcall6.init", align 4
@__exitcall_plug_module_exit = internal global ptr @plug_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file365 = internal constant [33 x i8] c"sch_plug.file=net/sched/sch_plug\00", section ".modinfo", align 1
@__UNIQUE_ID_license366 = internal constant [21 x i8] c"sch_plug.license=GPL\00", section ".modinfo", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__qdisc_reset_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_ = private constant [24 x i8] c"../net/sched/sch_plug.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 271, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 1165, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file365, ptr @__UNIQUE_ID_license366, ptr @__exitcall_plug_module_exit, ptr @__initcall__kmod_sch_plug__364_229_plug_module_init6, ptr @plug_module_exit, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @plug_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @plug_qdisc_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @plug_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @plug_qdisc_ops) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @plug_enqueue(ptr noundef %skb, ptr nocapture noundef %sch, ptr nocapture noundef %to_free) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %backlog, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add = add i32 %3, %1
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %4 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp.not = icmp ugt i32 %add, %5
  br i1 %cmp.not, label %if.end5, label %if.then, !prof !26

if.then:                                          ; preds = %entry
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %6 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %privdata.i, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %pkts_current_epoch = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %8 = ptrtoint ptr %pkts_current_epoch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pkts_current_epoch, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %pkts_current_epoch, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %tail.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %skb, align 8
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %skb, ptr %11, align 8
  br label %qdisc_enqueue_tail.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %q.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %skb, ptr %tail.i.i, align 4
  br label %qdisc_enqueue_tail.exit

qdisc_enqueue_tail.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %qh.sink.i.i = phi ptr [ %q.i, %if.else.i.i ], [ %tail.i.i, %if.then.i.i ]
  %15 = ptrtoint ptr %qh.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %skb, ptr %qh.sink.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %16 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i.i, align 4
  %inc.i.i = add i32 %17, 1
  store i32 %inc.i.i, ptr %qlen.i.i, align 4
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %18 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cb.i.i.i.i, align 4
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %to_free, align 4
  %22 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %qdisc_enqueue_tail.exit
  %drops.i.i.i.sink15 = phi ptr [ %drops.i.i.i, %if.end5 ], [ %backlog, %qdisc_enqueue_tail.exit ]
  %.sink14 = phi i32 [ 1, %if.end5 ], [ %19, %qdisc_enqueue_tail.exit ]
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %qdisc_enqueue_tail.exit ]
  %23 = ptrtoint ptr %drops.i.i.i.sink15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %drops.i.i.i.sink15, align 4
  %inc.i.i.i = add i32 %24, %.sink14
  store i32 %inc.i.i.i, ptr %drops.i.i.i.sink15, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @plug_dequeue(ptr noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %throttled = getelementptr inbounds %struct.plug_sched_data, ptr %privdata.i, i32 0, i32 1
  %0 = ptrtoint ptr %throttled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %throttled, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %privdata.i, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %pkts_to_release = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %4 = ptrtoint ptr %pkts_to_release to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pkts_to_release, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %throttled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %throttled, align 1
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %5, -1
  %7 = ptrtoint ptr %pkts_to_release to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dec, ptr %pkts_to_release, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end.if.end8_crit_edge
  %q.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %8 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %q.i, align 4
  %cmp.not.i.i = icmp eq ptr %9, null
  br i1 %cmp.not.i.i, label %if.end8.cleanup_crit_edge, label %if.then.i.i, !prof !26

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %q.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %q.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %13 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i.i, align 4
  %dec.i.i = add i32 %14, -1
  store i32 %dec.i.i, ptr %qlen.i.i, align 4
  %cmp4.i.i = icmp eq ptr %11, null
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.then.i.i.if.then.i_crit_edge

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %tail.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %tail.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then5.i.i, %if.then.i.i.if.then.i_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %9, align 8
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3
  %17 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %19 = ptrtoint ptr %backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %backlog.i.i, align 4
  %sub.i.i = sub i32 %20, %18
  store i32 %sub.i.i, ptr %backlog.i.i, align 4
  %21 = load i32, ptr %cb.i.i.i.i, align 4
  %end.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 17
  %22 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i.i.i.i.i, align 4
  %gso_size.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %gso_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %gso_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.i.not.i.i.i = icmp eq i16 %25, 0
  br i1 %tobool.i.not.i.i.i, label %if.then.i.cond.end.i.i.i_crit_edge, label %cond.true.i.i.i

if.then.i.cond.end.i.i.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i.i

cond.true.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %gso_segs.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 5
  %26 = ptrtoint ptr %gso_segs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %gso_segs.i.i.i, align 2
  %conv4.i.i.i = zext i16 %27 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.true.i.i.i, %if.then.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv4.i.i.i, %cond.true.i.i.i ], [ 1, %if.then.i.cond.end.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %cond.end.i.i.i.qdisc_bstats_update.exit.i_crit_edge, label %land.lhs.true.i.i.i.i.i.i

cond.end.i.i.i.qdisc_bstats_update.exit.i_crit_edge: ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qdisc_bstats_update.exit.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %cond.end.i.i.i
  %29 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %33 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %38, ptrtoint (ptr @lockdep_recursion to i32)
  %39 = inttoptr i32 %add.i.i.i.i.i.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %42 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i7.i.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i7.i.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool20.not.i.i.i.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool20.not.i.i.i.i.i.i, label %land.rhs.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.qdisc_bstats_update.exit.i_crit_edge

land.lhs.true.i.i.i.i.i.i.qdisc_bstats_update.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qdisc_bstats_update.exit.i

land.rhs.i.i.i.i.i.i:                             ; preds = %land.lhs.true.i.i.i.i.i.i
  %46 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i.i.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i.i.i.i.i.i = icmp eq i32 %49, 0
  br i1 %cmp.i.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.i, label %land.rhs.i.i.i.i.i.i.qdisc_bstats_update.exit.i_crit_edge

land.rhs.i.i.i.i.i.i.qdisc_bstats_update.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qdisc_bstats_update.exit.i

land.rhs22.i.i.i.i.i.i:                           ; preds = %land.rhs.i.i.i.i.i.i
  %50 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i9.i.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i9.i.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i.i = add i32 %53, 1
  store volatile i32 %add.i11.i.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  %54 = ptrtoint ptr %cpu.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx46.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx46.i.i.i.i.i.i, align 4
  %add47.i.i.i.i.i.i = add i32 %57, ptrtoint (ptr @hardirqs_enabled to i32)
  %58 = inttoptr i32 %add47.i.i.i.i.i.i to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %58, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !31
  %61 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i12.i.i.i.i.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i12.i.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i14.i.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool54.not.i.i.i.i.i.i = icmp eq i32 %60, 0
  br i1 %tobool54.not.i.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.i.qdisc_bstats_update.exit.i_crit_edge, label %land.rhs58.i.i.i.i.i.i

land.rhs22.i.i.i.i.i.i.qdisc_bstats_update.exit.i_crit_edge: ; preds = %land.rhs22.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qdisc_bstats_update.exit.i

land.rhs58.i.i.i.i.i.i:                           ; preds = %land.rhs22.i.i.i.i.i.i
  %.b1.i.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.i.qdisc_bstats_update.exit.i_crit_edge, label %if.then.i.i.i.i.i.i, !prof !32

land.rhs58.i.i.i.i.i.i.qdisc_bstats_update.exit.i_crit_edge: ; preds = %land.rhs58.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qdisc_bstats_update.exit.i

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs58.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %qdisc_bstats_update.exit.i

qdisc_bstats_update.exit.i:                       ; preds = %if.then.i.i.i.i.i.i, %land.rhs58.i.i.i.i.i.i.qdisc_bstats_update.exit.i_crit_edge, %land.rhs22.i.i.i.i.i.i.qdisc_bstats_update.exit.i_crit_edge, %land.rhs.i.i.i.i.i.i.qdisc_bstats_update.exit.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.qdisc_bstats_update.exit.i_crit_edge, %cond.end.i.i.i.qdisc_bstats_update.exit.i_crit_edge
  %bstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i.i = zext i32 %21 to i64
  %syncp.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %65 = ptrtoint ptr %syncp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %syncp.i.i.i.i, align 4
  %inc.i.i.i.i.i.i.i.i = add i32 %66, 1
  store i32 %inc.i.i.i.i.i.i.i.i, ptr %syncp.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !33
  %dep_map.i.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %67 = tail call ptr @llvm.returnaddress(i32 0) #8
  %68 = ptrtoint ptr %67 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %68) #8
  %69 = ptrtoint ptr %bstats.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %bstats.i.i, align 8
  %add.i.i.i.i.i = add i64 %70, %conv.i.i.i
  store i64 %add.i.i.i.i.i, ptr %bstats.i.i, align 8
  %packets2.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i.i = zext i32 %cond.i.i.i to i64
  %71 = ptrtoint ptr %packets2.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %packets2.i.i.i.i, align 8
  %add.i8.i.i.i.i = add i64 %72, %conv.i7.i.i.i.i
  store i64 %add.i8.i.i.i.i, ptr %packets2.i.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i.i, i32 noundef %68) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  %73 = ptrtoint ptr %syncp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %syncp.i.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %74, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %qdisc_bstats_update.exit.i, %if.end8.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end8.cleanup_crit_edge ], [ %9, %qdisc_bstats_update.exit.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @qdisc_peek_head(ptr nocapture noundef readonly %sch) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %q = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @plug_init(ptr nocapture noundef %sch, ptr noundef readonly %opt, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %pkts_current_epoch = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %0 = ptrtoint ptr %pkts_current_epoch to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pkts_current_epoch, align 4
  %pkts_last_epoch = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %1 = ptrtoint ptr %pkts_last_epoch to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pkts_last_epoch, align 4
  %pkts_to_release = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %2 = ptrtoint ptr %pkts_to_release to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pkts_to_release, align 4
  %3 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %privdata.i, align 4
  %cmp = icmp eq ptr %opt, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %4 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_queue.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 107
  %8 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_queue_len, align 16
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 20
  %10 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 19
  %12 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %13 to i32
  %add.i = add i32 %11, %conv.i
  %mul = mul i32 %add.i, %9
  br label %if.end10

if.else:                                          ; preds = %entry
  %14 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %opt, align 2
  %conv.i23 = zext i16 %15 to i32
  %sub.i = add nsw i32 %conv.i23, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i)
  %cmp6 = icmp ult i32 %sub.i, 8
  br i1 %cmp6, label %if.else.cleanup11_crit_edge, label %if.end

if.else.cleanup11_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup11

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %limit8 = getelementptr i8, ptr %opt, i32 8
  %16 = ptrtoint ptr %limit8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %limit8, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %.sink = phi i32 [ %17, %if.end ], [ %mul, %if.then ]
  %limit9 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %18 = ptrtoint ptr %limit9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %limit9, align 4
  %throttled = getelementptr inbounds %struct.plug_sched_data, ptr %privdata.i, i32 0, i32 1
  %19 = ptrtoint ptr %throttled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %throttled, align 1
  br label %cleanup11

cleanup11:                                        ; preds = %if.end10, %if.else.cleanup11_crit_edge
  %retval.1 = phi i32 [ 0, %if.end10 ], [ -22, %if.else.cleanup11_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qdisc_reset_queue(ptr nocapture noundef %sch) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %q = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %call.i = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.end29.i_crit_edge

entry.if.end29.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

land.rhs.i:                                       ; preds = %entry
  %.b50.i = load i1, ptr @__qdisc_reset_queue.__already_done, align 1
  br i1 %.b50.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !32

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__qdisc_reset_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1165, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1165) #8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %entry.if.end29.i_crit_edge
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool37.not.i = icmp eq i32 %1, 0
  br i1 %tobool37.not.i, label %if.end29.i.__qdisc_reset_queue.exit_crit_edge, label %if.then38.i

if.end29.i.__qdisc_reset_queue.exit_crit_edge:    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__qdisc_reset_queue.exit

if.then38.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 4
  tail call void @rtnl_kfree_skbs(ptr noundef %3, ptr noundef %5) #8
  %6 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %q, align 4
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i, align 4
  %8 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i, align 4
  br label %__qdisc_reset_queue.exit

__qdisc_reset_queue.exit:                         ; preds = %if.then38.i, %if.end29.i.__qdisc_reset_queue.exit_crit_edge
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %9 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %backlog, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plug_change(ptr nocapture noundef %sch, ptr noundef readonly %opt, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %cmp = icmp eq ptr %opt, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %opt, align 2
  %conv.i = zext i16 %1 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i)
  %cmp3 = icmp ult i32 %sub.i, 8
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %opt, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end5.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb14
    i32 3, label %sw.bb21
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  %pkts_current_epoch = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %5 = ptrtoint ptr %pkts_current_epoch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pkts_current_epoch, align 4
  %pkts_last_epoch = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %7 = ptrtoint ptr %pkts_last_epoch to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pkts_last_epoch, align 4
  store i32 0, ptr %pkts_current_epoch, align 4
  %8 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %privdata.i, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %sw.bb.if.end8_crit_edge, label %if.then7

sw.bb.if.end8_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %throttled = getelementptr inbounds %struct.plug_sched_data, ptr %privdata.i, i32 0, i32 1
  %10 = ptrtoint ptr %throttled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %throttled, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %sw.bb.if.end8_crit_edge
  %11 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %privdata.i, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %pkts_last_epoch11 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %12 = ptrtoint ptr %pkts_last_epoch11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pkts_last_epoch11, align 4
  %pkts_to_release = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %14 = ptrtoint ptr %pkts_to_release to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pkts_to_release, align 4
  %add = add i32 %15, %13
  store i32 %add, ptr %pkts_to_release, align 4
  store i32 0, ptr %pkts_last_epoch11, align 4
  %throttled13 = getelementptr inbounds %struct.plug_sched_data, ptr %privdata.i, i32 0, i32 1
  %16 = ptrtoint ptr %throttled13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %throttled13, align 1
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %17 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_queue, align 8
  tail call void @netif_schedule_queue(ptr noundef %18) #8
  br label %cleanup

sw.bb14:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %privdata.i, align 4
  %pkts_to_release16 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %20 = ptrtoint ptr %pkts_to_release16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %pkts_to_release16, align 4
  %pkts_last_epoch17 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %21 = ptrtoint ptr %pkts_last_epoch17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %pkts_last_epoch17, align 4
  %pkts_current_epoch18 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %22 = ptrtoint ptr %pkts_current_epoch18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %pkts_current_epoch18, align 4
  %throttled19 = getelementptr inbounds %struct.plug_sched_data, ptr %privdata.i, i32 0, i32 1
  %23 = ptrtoint ptr %throttled19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %throttled19, align 1
  %dev_queue20 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %24 = ptrtoint ptr %dev_queue20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_queue20, align 8
  tail call void @netif_schedule_queue(ptr noundef %25) #8
  br label %cleanup

sw.bb21:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %limit = getelementptr i8, ptr %opt, i32 8
  %26 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %limit, align 4
  %limit22 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %28 = ptrtoint ptr %limit22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %limit22, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb21, %sw.bb14, %sw.bb10, %if.end8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %sw.bb21 ], [ 0, %sw.bb14 ], [ 0, %sw.bb10 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_kfree_skbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !15}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__initcall__kmod_sch_plug__364_229_plug_module_init6, !1, !"__initcall__kmod_sch_plug__364_229_plug_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_plug.c", i32 229, i32 1}
!2 = !{ptr @__exitcall_plug_module_exit, !3, !"__exitcall_plug_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_plug.c", i32 230, i32 1}
!4 = !{ptr @__UNIQUE_ID_file365, !5, !"__UNIQUE_ID_file365", i1 false, i1 false}
!5 = !{!"../net/sched/sch_plug.c", i32 231, i32 1}
!6 = !{ptr @__UNIQUE_ID_license366, !5, !"__UNIQUE_ID_license366", i1 false, i1 false}
!7 = !{ptr @plug_qdisc_ops, !8, !"plug_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_plug.c", i32 208, i32 25}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/net/sch_generic.h", i32 1165, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{!"sp"}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i8 0, i8 2}
!28 = !{i64 2149868790}
!29 = !{i64 2149873722}
!30 = !{i64 2149895434}
!31 = !{i64 2149900326}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2149976783}
!34 = !{i64 2149977108}
