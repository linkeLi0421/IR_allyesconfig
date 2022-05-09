; ModuleID = '/llk/IR_all_yes/net/sched/sch_skbprio.c_pt.bc'
source_filename = "../net/sched/sch_skbprio.c"
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.skbprio_sched_data = type { [64 x %struct.sk_buff_head], [64 x %struct.gnet_stats_queue], i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tc_skbprio_qopt = type { i32 }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }

@skbprio_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @skbprio_class_ops, [16 x i8] c"skbprio\00\00\00\00\00\00\00\00\00", i32 4868, i32 0, ptr @skbprio_enqueue, ptr @skbprio_dequeue, ptr @qdisc_peek_dequeued, ptr @skbprio_init, ptr @skbprio_reset, ptr @skbprio_destroy, ptr @skbprio_change, ptr null, ptr null, ptr null, ptr @skbprio_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_skbprio__499_316_skbprio_module_init6 = internal global ptr @skbprio_module_init, section ".initcall6.init", align 4
@__exitcall_skbprio_module_exit = internal global ptr @skbprio_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file500 = internal constant [39 x i8] c"sch_skbprio.file=net/sched/sch_skbprio\00", section ".modinfo", align 1
@__UNIQUE_ID_license501 = internal constant [24 x i8] c"sch_skbprio.license=GPL\00", section ".modinfo", align 1
@skbprio_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr null, ptr @skbprio_leaf, ptr null, ptr @skbprio_find, ptr null, ptr null, ptr @skbprio_walk, ptr null, ptr null, ptr null, ptr @skbprio_dump_class, ptr @skbprio_dump_class_stats }, [40 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"skbprio_class_ops\00", align 1
@___asan_gen_.2 = private constant [27 x i8] c"../net/sched/sch_skbprio.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 283, i32 37 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 271, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_file500, ptr @__UNIQUE_ID_license501, ptr @__exitcall_skbprio_module_exit, ptr @__initcall__kmod_sch_skbprio__499_316_skbprio_module_init6, ptr @skbprio_module_exit, ptr @skbprio_class_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skbprio_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @skbprio_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @skbprio_qdisc_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @skbprio_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @skbprio_qdisc_ops) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skbprio_enqueue(ptr noundef %skb, ptr noundef %sch, ptr nocapture noundef %to_free) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priority, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 63)
  %3 = trunc i32 %2 to i16
  %arrayidx = getelementptr [64 x %struct.sk_buff_head], ptr %privdata.i, i32 0, i32 %2
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %4 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen, align 8
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %6 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2 = icmp ult i32 %5, %7
  br i1 %cmp2, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %arrayidx, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %arrayidx, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 1
  %11 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %skb, ptr %9, align 4
  %qlen.i.i.i = getelementptr [64 x %struct.sk_buff_head], ptr %privdata.i, i32 0, i32 %2, i32 1
  %13 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %15 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %17 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %backlog.i, align 4
  %add.i = add i32 %18, %16
  store i32 %add.i, ptr %backlog.i, align 4
  %19 = load i32, ptr %cb.i.i.i, align 4
  %backlog = getelementptr %struct.skbprio_sched_data, ptr %privdata.i, i32 0, i32 1, i32 %2, i32 1
  %20 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %backlog, align 4
  %add = add i32 %21, %19
  store i32 %add, ptr %backlog, align 4
  %highest_prio = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 10, i32 18, i32 2
  %22 = ptrtoint ptr %highest_prio to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %highest_prio, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %3)
  %cmp9 = icmp ult i16 %23, %3
  br i1 %cmp9, label %if.then11, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %highest_prio to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %3, ptr %highest_prio, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then.if.end_crit_edge
  %lowest_prio = getelementptr inbounds %struct.skbprio_sched_data, ptr %privdata.i, i32 0, i32 3
  %25 = ptrtoint ptr %lowest_prio to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %lowest_prio, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %3)
  %cmp15 = icmp ugt i16 %26, %3
  br i1 %cmp15, label %if.then17, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %lowest_prio to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %3, ptr %lowest_prio, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end.if.end19_crit_edge
  %28 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qlen, align 8
  %inc = add i32 %29, 1
  store i32 %inc, ptr %qlen, align 8
  br label %cleanup

if.end22:                                         ; preds = %entry
  %lowest_prio23 = getelementptr inbounds %struct.skbprio_sched_data, ptr %privdata.i, i32 0, i32 3
  %30 = ptrtoint ptr %lowest_prio23 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %lowest_prio23, align 2
  %conv25 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %3)
  %cmp26.not = icmp ult i16 %31, %3
  br i1 %cmp26.not, label %if.end38, label %if.then28

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %drops = getelementptr %struct.skbprio_sched_data, ptr %privdata.i, i32 0, i32 1, i32 %2, i32 2
  %32 = ptrtoint ptr %drops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %drops, align 4
  %inc32 = add i32 %33, 1
  store i32 %inc32, ptr %drops, align 4
  %overlimits = getelementptr %struct.skbprio_sched_data, ptr %privdata.i, i32 0, i32 1, i32 %2, i32 4
  %34 = ptrtoint ptr %overlimits to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %overlimits, align 4
  %inc36 = add i32 %35, 1
  store i32 %inc36, ptr %overlimits, align 4
  %36 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %to_free, align 4
  %38 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %39 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %40, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end22
  %prev.i.i188 = getelementptr inbounds %struct.sk_buff_list, ptr %arrayidx, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i188 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i188, align 4
  %43 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %arrayidx, ptr %skb, align 8
  %prev10.i.i.i189 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 1
  %44 = ptrtoint ptr %prev10.i.i.i189 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %prev10.i.i.i189, align 4
  store volatile ptr %skb, ptr %prev.i.i188, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %skb, ptr %42, align 4
  %qlen.i.i.i190 = getelementptr [64 x %struct.sk_buff_head], ptr %privdata.i, i32 0, i32 %2, i32 1
  %46 = ptrtoint ptr %qlen.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qlen.i.i.i190, align 4
  %add.i.i.i191 = add i32 %47, 1
  store volatile i32 %add.i.i.i191, ptr %qlen.i.i.i190, align 4
  %cb.i.i.i192 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %48 = ptrtoint ptr %cb.i.i.i192 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cb.i.i.i192, align 4
  %backlog.i193 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %50 = ptrtoint ptr %backlog.i193 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %backlog.i193, align 4
  %add.i194 = add i32 %51, %49
  store i32 %add.i194, ptr %backlog.i193, align 4
  %52 = load i32, ptr %cb.i.i.i192, align 4
  %backlog43 = getelementptr %struct.skbprio_sched_data, ptr %privdata.i, i32 0, i32 1, i32 %2, i32 1
  %53 = ptrtoint ptr %backlog43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %backlog43, align 4
  %add44 = add i32 %54, %52
  store i32 %add44, ptr %backlog43, align 4
  %arrayidx47 = getelementptr [64 x %struct.sk_buff_head], ptr %privdata.i, i32 0, i32 %conv25
  %prev.i.i196 = getelementptr inbounds %struct.anon.52, ptr %arrayidx47, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i196 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %prev.i.i196, align 4
  %cmp.i.i = icmp eq ptr %56, %arrayidx47
  %tobool.not.i205 = icmp eq ptr %56, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i205
  br i1 %tobool.not.i, label %do.body53, label %do.end59

do.body53:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sched/sch_skbprio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #11, !srcloc !24
  unreachable

do.end59:                                         ; preds = %if.end38
  %qlen.i.i = getelementptr [64 x %struct.sk_buff_head], ptr %privdata.i, i32 0, i32 %conv25, i32 1
  %57 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %58, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.0, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %56, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.0, ptr %60, i32 0, i32 1
  %63 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %62, ptr %prev17.i.i, align 4
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %60, ptr %62, align 8
  %cb.i.i.i197 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 3
  %65 = ptrtoint ptr %cb.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cb.i.i.i197, align 4
  %67 = ptrtoint ptr %backlog.i193 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %backlog.i193, align 4
  %sub.i = sub i32 %68, %66
  store i32 %sub.i, ptr %backlog.i193, align 4
  %69 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %to_free, align 4
  store ptr %70, ptr %56, align 8
  store ptr %56, ptr %to_free, align 4
  %drops.i.i.i199 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %71 = ptrtoint ptr %drops.i.i.i199 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %drops.i.i.i199, align 4
  %inc.i.i.i200 = add i32 %72, 1
  store i32 %inc.i.i.i200, ptr %drops.i.i.i199, align 4
  %73 = load i32, ptr %cb.i.i.i197, align 4
  %backlog65 = getelementptr %struct.skbprio_sched_data, ptr %privdata.i, i32 0, i32 1, i32 %conv25, i32 1
  %74 = ptrtoint ptr %backlog65 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %backlog65, align 4
  %sub = sub i32 %75, %73
  store i32 %sub, ptr %backlog65, align 4
  %drops69 = getelementptr %struct.skbprio_sched_data, ptr %privdata.i, i32 0, i32 1, i32 %conv25, i32 2
  %76 = ptrtoint ptr %drops69 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %drops69, align 4
  %inc70 = add i32 %77, 1
  store i32 %inc70, ptr %drops69, align 4
  %overlimits74 = getelementptr %struct.skbprio_sched_data, ptr %privdata.i, i32 0, i32 1, i32 %conv25, i32 4
  %78 = ptrtoint ptr %overlimits74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %overlimits74, align 4
  %inc75 = add i32 %79, 1
  store i32 %inc75, ptr %overlimits74, align 4
  %80 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx47, align 4
  %cmp.i.not = icmp eq ptr %81, %arrayidx47
  br i1 %cmp.i.not, label %if.then78, label %do.end59.if.end112_crit_edge

do.end59.if.end112_crit_edge:                     ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.then78:                                        ; preds = %do.end59
  %82 = ptrtoint ptr %lowest_prio23 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %lowest_prio23, align 2
  %highest_prio81 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 10, i32 18, i32 2
  %84 = ptrtoint ptr %highest_prio81 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %highest_prio81, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %83, i16 %85)
  %cmp83 = icmp eq i16 %83, %85
  br i1 %cmp83, label %do.body86, label %if.else

do.body86:                                        ; preds = %if.then78
  %86 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp89.not = icmp eq i32 %87, 1
  br i1 %cmp89.not, label %do.end106, label %do.body98, !prof !25

do.body98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sched/sch_skbprio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #11, !srcloc !26
  unreachable

do.end106:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %lowest_prio23 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %3, ptr %lowest_prio23, align 2
  %89 = ptrtoint ptr %highest_prio81 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %3, ptr %highest_prio81, align 4
  br label %if.end112

if.else:                                          ; preds = %if.then78
  %conv.i202 = zext i16 %83 to i32
  %90 = call i16 @llvm.umax.i16(i16 %83, i16 %85)
  %umax = zext i16 %90 to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.else
  %prio.0.in.i = phi i32 [ %conv.i202, %if.else ], [ %prio.0.i, %for.body.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %prio.0.in.i, i32 %umax)
  %exitcond.not = icmp eq i32 %prio.0.in.i, %umax
  br i1 %exitcond.not, label %for.cond.i.calc_new_low_prio.exit_crit_edge, label %for.body.i

for.cond.i.calc_new_low_prio.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_new_low_prio.exit

for.body.i:                                       ; preds = %for.cond.i
  %prio.0.i = add nuw nsw i32 %prio.0.in.i, 1
  %arrayidx.i = getelementptr [64 x %struct.sk_buff_head], ptr %privdata.i, i32 0, i32 %prio.0.i
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %92, %arrayidx.i
  br i1 %cmp.i.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.then.i203

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then.i203:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv3.i = trunc i32 %prio.0.i to i16
  br label %calc_new_low_prio.exit

calc_new_low_prio.exit:                           ; preds = %if.then.i203, %for.cond.i.calc_new_low_prio.exit_crit_edge
  %retval.0.i = phi i16 [ %conv3.i, %if.then.i203 ], [ 63, %for.cond.i.calc_new_low_prio.exit_crit_edge ]
  %93 = ptrtoint ptr %lowest_prio23 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %retval.0.i, ptr %lowest_prio23, align 2
  br label %if.end112

if.end112:                                        ; preds = %calc_new_low_prio.exit, %do.end106, %do.end59.if.end112_crit_edge
  %highest_prio114 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 10, i32 18, i32 2
  %94 = ptrtoint ptr %highest_prio114 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %highest_prio114, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %95, i16 %3)
  %cmp116 = icmp ult i16 %95, %3
  br i1 %cmp116, label %if.then118, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then118:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %highest_prio114 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %3, ptr %highest_prio114, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then118, %if.end112.cleanup_crit_edge, %if.then28, %if.end19
  %retval.0 = phi i32 [ 0, %if.end19 ], [ 1, %if.then28 ], [ 2, %if.then118 ], [ 2, %if.end112.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @skbprio_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %highest_prio = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 10, i32 18, i32 2
  %0 = ptrtoint ptr %highest_prio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %highest_prio, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [64 x %struct.sk_buff_head], ptr %privdata.i, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp.i.i = icmp eq ptr %3, %arrayidx
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %3
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %qlen.i.i = getelementptr [64 x %struct.sk_buff_head], ptr %privdata.i, i32 0, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %5, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %6 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.0, ptr %spec.store.select.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.0, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %prev17.i.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %7, ptr %9, align 8
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %12 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen, align 8
  %dec = add i32 %13, -1
  store i32 %dec, ptr %qlen, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %17, %15
  store i32 %sub.i, ptr %backlog.i, align 4
  %18 = load i32, ptr %cb.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 17
  %19 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.i.not.i.i = icmp eq i16 %22, 0
  br i1 %tobool.i.not.i.i, label %if.end.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end.cond.end.i.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 5
  %23 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %24 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %if.end.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %25 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !14) #11
  %and.i.i.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  %30 = tail call i32 @llvm.read_register.i32(metadata !14) #11
  %and.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %35, ptrtoint (ptr @lockdep_recursion to i32)
  %36 = inttoptr i32 %add.i.i.i.i.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  %39 = tail call i32 @llvm.read_register.i32(metadata !14) #11
  %and.i.i.i7.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %38, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %43 = tail call i32 @llvm.read_register.i32(metadata !14) #11
  %and.i.i.i.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i.i.i.i.i = icmp eq i32 %46, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %47 = tail call i32 @llvm.read_register.i32(metadata !14) #11
  %and.i.i.i9.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %50, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %51 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %54, ptrtoint (ptr @hardirqs_enabled to i32)
  %55 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %58 = tail call i32 @llvm.read_register.i32(metadata !14) #11
  %and.i.i.i12.i.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %61, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %57, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !25

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %18 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %62 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %63, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !31
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %64 = tail call ptr @llvm.returnaddress(i32 0) #11
  %65 = ptrtoint ptr %64 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %65) #11
  %66 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %67, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %68 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %69, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %65) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !32
  %70 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %71, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %72 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cb.i.i.i, align 4
  %74 = ptrtoint ptr %highest_prio to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %highest_prio, align 4
  %idxprom8 = zext i16 %75 to i32
  %backlog = getelementptr %struct.skbprio_sched_data, ptr %privdata.i, i32 0, i32 1, i32 %idxprom8, i32 1
  %76 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %backlog, align 4
  %sub = sub i32 %77, %73
  store i32 %sub, ptr %backlog, align 4
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %79, %arrayidx
  br i1 %cmp.i.not, label %if.then12, label %qdisc_bstats_update.exit.cleanup_crit_edge

qdisc_bstats_update.exit.cleanup_crit_edge:       ; preds = %qdisc_bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12:                                        ; preds = %qdisc_bstats_update.exit
  %lowest_prio = getelementptr inbounds %struct.skbprio_sched_data, ptr %privdata.i, i32 0, i32 3
  %80 = ptrtoint ptr %lowest_prio to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %lowest_prio, align 2
  %82 = ptrtoint ptr %highest_prio to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %highest_prio, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %81, i16 %83)
  %cmp = icmp eq i16 %81, %83
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %if.then12
  %84 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool19.not = icmp eq i32 %85, 0
  br i1 %tobool19.not, label %do.end33, label %do.body27, !prof !25

do.body27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sched/sch_skbprio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #11, !srcloc !33
  unreachable

do.end33:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %highest_prio to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %highest_prio, align 4
  %87 = ptrtoint ptr %lowest_prio to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 63, ptr %lowest_prio, align 2
  br label %cleanup

if.else:                                          ; preds = %if.then12
  %conv.i60 = zext i16 %83 to i32
  %conv1.i = zext i16 %81 to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.else
  %prio.0.in.i = phi i32 [ %conv.i60, %if.else ], [ %prio.0.i, %for.body.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %prio.0.in.i, i32 %conv1.i)
  %cmp.not.not.i = icmp sgt i32 %prio.0.in.i, %conv1.i
  br i1 %cmp.not.not.i, label %for.body.i, label %for.cond.i.calc_new_high_prio.exit_crit_edge

for.cond.i.calc_new_high_prio.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_new_high_prio.exit

for.body.i:                                       ; preds = %for.cond.i
  %prio.0.i = add nsw i32 %prio.0.in.i, -1
  %arrayidx.i = getelementptr [64 x %struct.sk_buff_head], ptr %privdata.i, i32 0, i32 %prio.0.i
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %89, %arrayidx.i
  br i1 %cmp.i.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.then.i61

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then.i61:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv3.i = trunc i32 %prio.0.i to i16
  br label %calc_new_high_prio.exit

calc_new_high_prio.exit:                          ; preds = %if.then.i61, %for.cond.i.calc_new_high_prio.exit_crit_edge
  %retval.0.i = phi i16 [ %conv3.i, %if.then.i61 ], [ 0, %for.cond.i.calc_new_high_prio.exit_crit_edge ]
  %90 = ptrtoint ptr %highest_prio to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %retval.0.i, ptr %highest_prio, align 4
  br label %cleanup

cleanup:                                          ; preds = %calc_new_high_prio.exit, %do.end33, %qdisc_bstats_update.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %do.end33 ], [ %spec.store.select.i.i, %calc_new_high_prio.exit ], [ %3, %qdisc_bstats_update.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
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

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skbprio_init(ptr noundef %sch, ptr noundef readonly %opt, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %prio.011 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x %struct.sk_buff_head], ptr %privdata.i, i32 0, i32 %prio.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr inbounds %struct.anon.52, ptr %arrayidx, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %prev.i, align 4
  %qlen.i = getelementptr [64 x %struct.sk_buff_head], ptr %privdata.i, i32 0, i32 %prio.011, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %qlen.i, align 4
  %inc = add nuw nsw i32 %prio.011, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %qstats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 8
  %lowest_prio = getelementptr inbounds %struct.skbprio_sched_data, ptr %privdata.i, i32 0, i32 3
  %3 = call ptr @memset(ptr %qstats, i32 0, i32 1282)
  %4 = ptrtoint ptr %lowest_prio to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 63, ptr %lowest_prio, align 2
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %5 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 64, ptr %limit, align 4
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.end
  %6 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %opt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %7)
  %cmp.not.i = icmp eq i16 %7, 8
  br i1 %cmp.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %10 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %limit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end.i ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skbprio_reset(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %backlog, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %1 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %qlen, align 8
  br label %for.body

for.body:                                         ; preds = %__skb_queue_purge.exit.for.body_crit_edge, %entry
  %prio.010 = phi i32 [ 0, %entry ], [ %inc, %__skb_queue_purge.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x %struct.sk_buff_head], ptr %privdata.i, i32 0, i32 %prio.010
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp.i.i2.i = icmp eq ptr %3, %arrayidx
  %tobool.not.i13.i = icmp eq ptr %3, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %for.body.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

for.body.__skb_queue_purge.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %for.body
  %qlen.i.i.i = getelementptr [64 x %struct.sk_buff_head], ptr %privdata.i, i32 0, i32 %prio.010, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %4 = phi ptr [ %3, %while.body.lr.ph.i ], [ %14, %while.body.i.while.body.i_crit_edge ]
  %5 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.0, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %4, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.0, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %prev17.i.i.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %10, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %4, i32 noundef 0) #11
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %cmp.i.i.i = icmp eq ptr %14, %arrayidx
  %tobool.not.i1.i = icmp eq ptr %14, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %for.body.__skb_queue_purge.exit_crit_edge
  %inc = add nuw nsw i32 %prio.010, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %__skb_queue_purge.exit.for.body_crit_edge

__skb_queue_purge.exit.for.body_crit_edge:        ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #13
  %qstats2 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 8
  %lowest_prio = getelementptr inbounds %struct.skbprio_sched_data, ptr %privdata.i, i32 0, i32 3
  %15 = call ptr @memset(ptr %qstats2, i32 0, i32 1282)
  %16 = ptrtoint ptr %lowest_prio to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 63, ptr %lowest_prio, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skbprio_destroy(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %__skb_queue_purge.exit.for.body_crit_edge, %entry
  %prio.03 = phi i32 [ 0, %entry ], [ %inc, %__skb_queue_purge.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x %struct.sk_buff_head], ptr %privdata.i, i32 0, i32 %prio.03
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.i.i2.i = icmp eq ptr %1, %arrayidx
  %tobool.not.i13.i = icmp eq ptr %1, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %for.body.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

for.body.__skb_queue_purge.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %for.body
  %qlen.i.i.i = getelementptr [64 x %struct.sk_buff_head], ptr %privdata.i, i32 0, i32 %prio.03, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = phi ptr [ %1, %while.body.lr.ph.i ], [ %12, %while.body.i.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #11
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp.i.i.i = icmp eq ptr %12, %arrayidx
  %tobool.not.i1.i = icmp eq ptr %12, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %for.body.__skb_queue_purge.exit_crit_edge
  %inc = add nuw nsw i32 %prio.03, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %__skb_queue_purge.exit.for.body_crit_edge

__skb_queue_purge.exit.for.body_crit_edge:        ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @skbprio_change(ptr nocapture noundef writeonly %sch, ptr nocapture noundef readonly %opt, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %opt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %1)
  %cmp.not = icmp eq i16 %1, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %opt, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %limit3 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %4 = ptrtoint ptr %limit3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %limit3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skbprio_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #2 align 64 {
entry:
  %opt = alloca %struct.tc_skbprio_qopt, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt) #11
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %0 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %limit, align 4
  %2 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %opt, align 4
  %call = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %opt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @skbprio_leaf(ptr nocapture noundef readnone %sch, i32 noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @skbprio_find(ptr nocapture noundef readnone %sch, i32 noundef %classid) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skbprio_walk(ptr noundef %sch, ptr noundef %arg) #2 align 64 {
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
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.021 = phi i32 [ 0, %for.cond.preheader ], [ %inc11.pre-phi, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %4 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp1 = icmp slt i32 %3, %5
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = add nuw nsw i32 %i.021, 1
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %6 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fn, align 4
  %add = add nuw nsw i32 %i.021, 1
  %call = tail call i32 %7(ptr noundef %sch, i32 noundef %add, ptr noundef %arg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %arg, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %for.body.for.inc_crit_edge
  %inc11.pre-phi = phi i32 [ %.pre, %for.body.for.inc_crit_edge ], [ %add, %if.end8 ]
  %storemerge.in = phi i32 [ %3, %for.body.for.inc_crit_edge ], [ %10, %if.end8 ]
  %storemerge = add i32 %storemerge.in, 1
  %11 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %count, align 4
  %exitcond.not = icmp eq i32 %inc11.pre-phi, 64
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @skbprio_dump_class(ptr nocapture noundef readnone %sch, i32 noundef %cl, ptr nocapture noundef readnone %skb, ptr nocapture noundef %tcm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
define internal i32 @skbprio_dump_class_stats(ptr noundef %sch, i32 noundef %cl, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %sub = add i32 %cl, -1
  %arrayidx = getelementptr %struct.skbprio_sched_data, ptr %privdata.i, i32 0, i32 1, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call4 = tail call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef null, ptr noundef %arrayidx, i32 noundef %1) #11
  %call4.lobit = ashr i32 %call4, 31
  ret i32 %call4.lobit
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_sch_skbprio__499_316_skbprio_module_init6, !1, !"__initcall__kmod_sch_skbprio__499_316_skbprio_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_skbprio.c", i32 316, i32 1}
!2 = !{ptr @__exitcall_skbprio_module_exit, !3, !"__exitcall_skbprio_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_skbprio.c", i32 317, i32 1}
!4 = !{ptr @__UNIQUE_ID_file500, !5, !"__UNIQUE_ID_file500", i1 false, i1 false}
!5 = !{!"../net/sched/sch_skbprio.c", i32 319, i32 1}
!6 = !{ptr @__UNIQUE_ID_license501, !5, !"__UNIQUE_ID_license501", i1 false, i1 false}
!7 = !{ptr @skbprio_qdisc_ops, !8, !"skbprio_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_skbprio.c", i32 291, i32 25}
!9 = !{ptr @skbprio_class_ops, !10, !"skbprio_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_skbprio.c", i32 283, i32 37}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2157315787, i64 2157316275, i64 2157315824, i64 2157315880, i64 2157315914, i64 2157315938, i64 2157315979, i64 2157316000, i64 2157316028, i64 2157316062}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2157317387, i64 2157317875, i64 2157317424, i64 2157317480, i64 2157317514, i64 2157317538, i64 2157317579, i64 2157317600, i64 2157317628, i64 2157317662}
!27 = !{i64 2149869980}
!28 = !{i64 2149874912}
!29 = !{i64 2149896624}
!30 = !{i64 2149901516}
!31 = !{i64 2149977973}
!32 = !{i64 2149978298}
!33 = !{i64 2157319026, i64 2157319514, i64 2157319063, i64 2157319119, i64 2157319153, i64 2157319177, i64 2157319218, i64 2157319239, i64 2157319267, i64 2157319301}
