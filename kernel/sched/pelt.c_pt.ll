; ModuleID = '/llk/IR_all_yes/kernel/sched/pelt.c_pt.bc'
source_filename = "../kernel/sched/pelt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.55 }
%struct.atomic_t = type { i32 }
%union.anon.55 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.93, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.93 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.94, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.94 = type { i64, i64 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.76 }
%struct.llist_node = type { ptr }
%union.anon.76 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }

@runnable_avg_yN_inv = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -92032294, i32 -182092524, i32 -270222950, i32 -356464922, i32 -440858906, i32 -523444501, i32 -604260458, i32 -683344695, i32 -760734319, i32 -836465644, i32 -910574203, i32 -983094768, i32 -1054061367, i32 -1123507298, i32 -1191465146, i32 -1257966797, i32 -1323043455, i32 -1386725655, i32 -1449043276, i32 -1510025559, i32 -1569701118, i32 -1628097953, i32 -1685243463, i32 -1741164464, i32 -1795887192, i32 -1849437325, i32 -1901839990, i32 -1953119773, i32 -2003300736, i32 -2052406425, i32 -2100459880], [32 x i8] zeroinitializer }, align 32
@__tracepoint_pelt_se_tp = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/sched.h\00", [35 x i8] zeroinitializer }, align 32
@trace_pelt_se_tp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@sched_feat_keys = external dso_local global [25 x %struct.static_key], align 4
@__tracepoint_pelt_cfs_tp = external dso_local global %struct.tracepoint, align 4
@trace_pelt_cfs_tp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_pelt_rt_tp = external dso_local global %struct.tracepoint, align 4
@trace_pelt_rt_tp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_pelt_dl_tp = external dso_local global %struct.tracepoint, align 4
@trace_pelt_dl_tp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_pelt_thermal_tp = external dso_local global %struct.tracepoint, align 4
@trace_pelt_thermal_tp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__tracepoint_pelt_irq_tp = external dso_local global %struct.tracepoint, align 4
@trace_pelt_irq_tp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_ = private constant [23 x i8] c"../kernel/sched/pelt.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [20 x i8] c"runnable_avg_yN_inv\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [29 x i8] c"../kernel/sched/sched-pelt.h\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 4, i32 18 }
@___asan_gen_.10 = private unnamed_addr constant [32 x i8] c"../include/trace/events/sched.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 711, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 108, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @runnable_avg_yN_inv, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @runnable_avg_yN_inv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__update_load_avg_blocked_se(i64 noundef %now, ptr noundef %se) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %avg = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15
  %0 = ptrtoint ptr %avg to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %avg, align 128
  %sub.i = sub i64 %now, %1
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %avg to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %now, ptr %avg, align 128
  br label %return

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp ult i64 %sub.i, 1024
  br i1 %tobool.not.i, label %return, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %shr.i = lshr i64 %sub.i, 10
  %shl.i = and i64 %sub.i, -1024
  %add.i = add i64 %shl.i, %1
  %3 = ptrtoint ptr %avg to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %add.i, ptr %avg, align 128
  %period_contrib.i.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 4
  %4 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_contrib.i.i, align 4
  %conv1.i.i = zext i32 %5 to i64
  %add.i.i = add nuw nsw i64 %shr.i, %conv1.i.i
  %div63.i.i = lshr i64 %add.i.i, 10
  %tobool.not.i.i = icmp ult i64 %add.i.i, 1024
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  %load_sum.i.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %load_sum.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %load_sum.i.i, align 8
  %cmp.i.i.i = icmp ugt i64 %add.i.i, 2065407
  br i1 %cmp.i.i.i, label %decay_load.exit113.i.i, label %if.end.i.i.i, !prof !35

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %conv.i.i.i = trunc i64 %div63.i.i to i32
  %cmp2.i.i.i = icmp ugt i32 %conv.i.i.i, 31
  br i1 %cmp2.i.i.i, label %if.then10.i.i.i, label %if.end11.i.i.i, !prof !35

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  %div18.i.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i.i.i = zext i32 %div18.i.i.i to i64
  %shr.i.i.i = lshr i64 %7, %sh_prom.i.i.i
  %rem.i.i.i = and i32 %conv.i.i.i, 31
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.end.i.i.i
  %val.addr.0.i.i.i = phi i64 [ %shr.i.i.i, %if.then10.i.i.i ], [ %7, %if.end.i.i.i ]
  %local_n.0.i.i.i = phi i32 [ %rem.i.i.i, %if.then10.i.i.i ], [ %conv.i.i.i, %if.end.i.i.i ]
  %arrayidx.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i.i.i.i.i = and i64 %val.addr.0.i.i.i, 4294967295
  %conv1.i.i.i.i.i = zext i32 %9 to i64
  %mul.i.i.i.i.i = mul nuw i64 %conv.i.i.i.i.i, %conv1.i.i.i.i.i
  %shr2.i.i.i.i = lshr i64 %mul.i.i.i.i.i, 32
  %tobool.not.i.i.i.i = icmp ult i64 %val.addr.0.i.i.i, 4294967296
  br i1 %tobool.not.i.i.i.i, label %if.end.i69.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end11.i.i.i
  %shr.i.i.i.i = lshr i64 %val.addr.0.i.i.i, 32
  %mul.i3.i.i.i.i = mul nuw i64 %shr.i.i.i.i, %conv1.i.i.i.i.i
  %add.i.i.i.i = add nuw i64 %shr2.i.i.i.i, %mul.i3.i.i.i.i
  br label %if.end.i69.i.i

if.end.i69.i.i:                                   ; preds = %if.then.i.i.i.i, %if.end11.i.i.i
  %retval.0.i.ph.i.i = phi i64 [ %shr2.i.i.i.i, %if.end11.i.i.i ], [ %add.i.i.i.i, %if.then.i.i.i.i ]
  %10 = ptrtoint ptr %load_sum.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %retval.0.i.ph.i.i, ptr %load_sum.i.i, align 8
  %runnable_sum117.i.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 2
  %11 = ptrtoint ptr %runnable_sum117.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %runnable_sum117.i.i, align 16
  br i1 %cmp2.i.i.i, label %if.then10.i74.i.i, label %if.end11.i83.i.i, !prof !35

if.then10.i74.i.i:                                ; preds = %if.end.i69.i.i
  %div18.i70.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i71.i.i = zext i32 %div18.i70.i.i to i64
  %shr.i72.i.i = lshr i64 %12, %sh_prom.i71.i.i
  %rem.i73.i.i = and i32 %conv.i.i.i, 31
  br label %if.end11.i83.i.i

if.end11.i83.i.i:                                 ; preds = %if.then10.i74.i.i, %if.end.i69.i.i
  %val.addr.0.i75.i.i = phi i64 [ %shr.i72.i.i, %if.then10.i74.i.i ], [ %12, %if.end.i69.i.i ]
  %local_n.0.i76.i.i = phi i32 [ %rem.i73.i.i, %if.then10.i74.i.i ], [ %conv.i.i.i, %if.end.i69.i.i ]
  %arrayidx.i77.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i76.i.i
  %13 = ptrtoint ptr %arrayidx.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i77.i.i, align 4
  %conv.i.i.i78.i.i = and i64 %val.addr.0.i75.i.i, 4294967295
  %conv1.i.i.i79.i.i = zext i32 %14 to i64
  %mul.i.i.i80.i.i = mul nuw i64 %conv.i.i.i78.i.i, %conv1.i.i.i79.i.i
  %shr2.i.i81.i.i = lshr i64 %mul.i.i.i80.i.i, 32
  %tobool.not.i.i82.i.i = icmp ult i64 %val.addr.0.i75.i.i, 4294967296
  br i1 %tobool.not.i.i82.i.i, label %if.end.i93.i.i, label %if.then.i.i87.i.i

if.then.i.i87.i.i:                                ; preds = %if.end11.i83.i.i
  %shr.i.i84.i.i = lshr i64 %val.addr.0.i75.i.i, 32
  %mul.i3.i.i85.i.i = mul nuw i64 %shr.i.i84.i.i, %conv1.i.i.i79.i.i
  %add.i.i86.i.i = add nuw i64 %shr2.i.i81.i.i, %mul.i3.i.i85.i.i
  br label %if.end.i93.i.i

if.end.i93.i.i:                                   ; preds = %if.then.i.i87.i.i, %if.end11.i83.i.i
  %retval.0.i88.ph.i.i = phi i64 [ %shr2.i.i81.i.i, %if.end11.i83.i.i ], [ %add.i.i86.i.i, %if.then.i.i87.i.i ]
  %15 = ptrtoint ptr %runnable_sum117.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %retval.0.i88.ph.i.i, ptr %runnable_sum117.i.i, align 16
  %util_sum122.i.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 3
  %16 = ptrtoint ptr %util_sum122.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %util_sum122.i.i, align 8
  %conv5123.i.i = zext i32 %17 to i64
  br i1 %cmp2.i.i.i, label %if.then10.i98.i.i, label %decay_load.exit113.thread.i.i, !prof !35

if.then10.i98.i.i:                                ; preds = %if.end.i93.i.i
  %div18.i94.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i95.i.i = zext i32 %div18.i94.i.i to i64
  %shr.i96.i.i = lshr i64 %conv5123.i.i, %sh_prom.i95.i.i
  %rem.i97.i.i = and i32 %conv.i.i.i, 31
  br label %decay_load.exit113.thread.i.i

decay_load.exit113.i.i:                           ; preds = %if.then.i.i
  %18 = trunc i64 %add.i.i to i32
  %19 = call ptr @memset(ptr %load_sum.i.i, i32 0, i32 20)
  br label %if.end14.thread.i.i

decay_load.exit113.thread.i.i:                    ; preds = %if.then10.i98.i.i, %if.end.i93.i.i
  %val.addr.0.i99.i.i = phi i64 [ %shr.i96.i.i, %if.then10.i98.i.i ], [ %conv5123.i.i, %if.end.i93.i.i ]
  %local_n.0.i100.i.i = phi i32 [ %rem.i97.i.i, %if.then10.i98.i.i ], [ %conv.i.i.i, %if.end.i93.i.i ]
  %arrayidx.i101.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i100.i.i
  %20 = ptrtoint ptr %arrayidx.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i101.i.i, align 4
  %conv1.i.i.i103.i.i = zext i32 %21 to i64
  %mul.i.i.i104.i.i = mul nuw i64 %val.addr.0.i99.i.i, %conv1.i.i.i103.i.i
  %shr2.i.i105.i.i = lshr i64 %mul.i.i.i104.i.i, 32
  %conv7129.i.i = trunc i64 %shr2.i.i105.i.i to i32
  %22 = ptrtoint ptr %util_sum122.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv7129.i.i, ptr %util_sum122.i.i, align 8
  %23 = trunc i64 %add.i.i to i32
  br label %if.end14.thread.i.i

if.end14.thread.i.i:                              ; preds = %decay_load.exit113.thread.i.i, %decay_load.exit113.i.i
  %delta.addr.0.off0.ph.i.i.in = phi i32 [ %23, %decay_load.exit113.thread.i.i ], [ %18, %decay_load.exit113.i.i ]
  %delta.addr.0.off0.ph.i.i = and i32 %delta.addr.0.off0.ph.i.i.in, 1023
  br label %___update_load_sum.exit

if.end14.i.i:                                     ; preds = %if.end3.i
  %extract.t65.i.i = trunc i64 %add.i.i to i32
  br label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %if.end14.i.i, %if.end14.thread.i.i
  %storemerge = phi i32 [ %delta.addr.0.off0.ph.i.i, %if.end14.thread.i.i ], [ %extract.t65.i.i, %if.end14.i.i ]
  %24 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge, ptr %period_contrib.i.i, align 4
  %conv36.i.i = trunc i64 %div63.i.i to i32
  %tobool8.not.i.not = icmp eq i32 %conv36.i.i, 0
  br i1 %tobool8.not.i.not, label %return, label %if.then

if.then:                                          ; preds = %___update_load_sum.exit
  %25 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %se, align 128
  %27 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %period_contrib.i.i, align 4
  %add.i.i7 = add i32 %28, 46718
  %conv.i = zext i32 %26 to i64
  %load_sum.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 1
  %29 = ptrtoint ptr %load_sum.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %load_sum.i, align 8
  %mul.i = mul i64 %30, %conv.i
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !36

if.then168.i.i.i:                                 ; preds = %if.then
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %add.i.i7
  br label %if.else162.i.i124.i

if.else174.i.i.i:                                 ; preds = %if.then
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.i7, i64 %mul.i) #6, !srcloc !37
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %31, 1
  %extract.t137.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %if.else162.i.i124.i

if.else162.i.i124.i:                              ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t137.i, %if.else174.i.i.i ]
  %load_avg.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 5
  %32 = ptrtoint ptr %load_avg.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %load_avg.i, align 32
  %runnable_sum.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 2
  %33 = ptrtoint ptr %runnable_sum.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %runnable_sum.i, align 16
  %cmp164.i.i123.i = icmp ult i64 %34, 4294967296
  br i1 %cmp164.i.i123.i, label %if.then168.i.i128.i, label %if.else174.i.i130.i, !prof !36

if.then168.i.i128.i:                              ; preds = %if.else162.i.i124.i
  %conv169.i.i125.i = trunc i64 %34 to i32
  %div172.i.i126.i = udiv i32 %conv169.i.i125.i, %add.i.i7
  br label %___update_load_avg.exit

if.else174.i.i130.i:                              ; preds = %if.else162.i.i124.i
  %35 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.i7, i64 %34) #6, !srcloc !37
  %asmresult1.i.i.i129.i = extractvalue { i64, i64 } %35, 1
  %extract.t139.i = trunc i64 %asmresult1.i.i.i129.i to i32
  br label %___update_load_avg.exit

___update_load_avg.exit:                          ; preds = %if.else174.i.i130.i, %if.then168.i.i128.i
  %dividend.addr.0.i.i131.off0.i = phi i32 [ %div172.i.i126.i, %if.then168.i.i128.i ], [ %extract.t139.i, %if.else174.i.i130.i ]
  %runnable_avg.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 6
  %36 = ptrtoint ptr %runnable_avg.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %dividend.addr.0.i.i131.off0.i, ptr %runnable_avg.i, align 4
  %util_sum.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 3
  %37 = ptrtoint ptr %util_sum.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %util_sum.i, align 8
  %div.i = udiv i32 %38, %add.i.i7
  %util_avg.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 7
  %39 = ptrtoint ptr %util_avg.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %div.i, ptr %util_avg.i, align 8
  tail call fastcc void @trace_pelt_se_tp(ptr noundef %se)
  br label %return

return:                                           ; preds = %___update_load_avg.exit, %___update_load_sum.exit, %if.end.i, %if.then.i
  %retval.0 = phi i32 [ 1, %___update_load_avg.exit ], [ 0, %___update_load_sum.exit ], [ 0, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pelt_se_tp(ptr noundef %se) unnamed_addr #1 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_se_tp, i32 0, i32 1), ptr blockaddress(@trace_pelt_se_tp, %do.body)) #4
          to label %if.end48 [label %do.body], !srcloc !38

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !36

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %do.body
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end69, label %cleanup.thread

cleanup.thread:                                   ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !39
  %call42 = tail call i32 @__traceiter_pelt_se_tp(ptr noundef null, ptr noundef %se) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !40
  %13 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %cpu_online.exit85, label %land.rhs.i.i.i.i79

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %cpu_online.exit85, label %if.then.i.i.i.i80, !prof !36

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79, %if.end48
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_se_tp, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_se_tp, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #4
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #4
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_pelt_se_tp.__warned, align 1
  br i1 %.b72, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_pelt_se_tp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 713, ptr noundef nonnull @.str.1) #4
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !42
  %31 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85, %cpu_online.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__update_load_avg_se(i64 noundef %now, ptr nocapture noundef readonly %cfs_rq, ptr noundef %se) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %avg = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15
  %on_rq = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 3
  %0 = ptrtoint ptr %on_rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %on_rq, align 4
  %tobool = icmp ne i32 %1, 0
  %lnot.ext = zext i1 %tobool to i32
  %my_q.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 12
  %2 = ptrtoint ptr %my_q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %my_q.i, align 4
  %tobool.not.i21 = icmp eq ptr %3, null
  br i1 %tobool.not.i21, label %se_runnable.exit, label %if.else.i

if.else.i:                                        ; preds = %entry
  %runnable_weight.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 13
  %4 = ptrtoint ptr %runnable_weight.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runnable_weight.i, align 8
  br label %se_runnable.exit

se_runnable.exit:                                 ; preds = %if.else.i, %entry
  %retval.0.i23 = phi i32 [ %5, %if.else.i ], [ %lnot.ext, %entry ]
  %curr = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 11
  %6 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %curr, align 8
  %cmp = icmp eq ptr %7, %se
  %8 = ptrtoint ptr %avg to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %avg, align 128
  %sub.i = sub i64 %now, %9
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %se_runnable.exit
  %10 = ptrtoint ptr %avg to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %now, ptr %avg, align 128
  br label %return

if.end.i:                                         ; preds = %se_runnable.exit
  %tobool.not.i = icmp ult i64 %sub.i, 1024
  br i1 %tobool.not.i, label %return, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %shr.i = lshr i64 %sub.i, 10
  %shl.i = and i64 %sub.i, -1024
  %add.i = add i64 %shl.i, %9
  %11 = ptrtoint ptr %avg to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add.i, ptr %avg, align 128
  %spec.select.i = select i1 %tobool, i32 %retval.0.i23, i32 0
  %conv.i.i = trunc i64 %shr.i to i32
  %period_contrib.i.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 4
  %12 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %period_contrib.i.i, align 4
  %conv1.i.i = zext i32 %13 to i64
  %add.i.i = add nuw nsw i64 %shr.i, %conv1.i.i
  %div63.i.i = lshr i64 %add.i.i, 10
  %tobool.not.i.i = icmp ult i64 %add.i.i, 1024
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  %load_sum.i.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 1
  %14 = ptrtoint ptr %load_sum.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %load_sum.i.i, align 8
  %cmp.i.i.i = icmp ugt i64 %add.i.i, 2065407
  br i1 %cmp.i.i.i, label %decay_load.exit113.i.i, label %if.end.i.i.i, !prof !35

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %conv.i.i.i = trunc i64 %div63.i.i to i32
  %cmp2.i.i.i = icmp ugt i32 %conv.i.i.i, 31
  br i1 %cmp2.i.i.i, label %if.then10.i.i.i, label %if.end11.i.i.i, !prof !35

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  %div18.i.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i.i.i = zext i32 %div18.i.i.i to i64
  %shr.i.i.i = lshr i64 %15, %sh_prom.i.i.i
  %rem.i.i.i = and i32 %conv.i.i.i, 31
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.end.i.i.i
  %val.addr.0.i.i.i = phi i64 [ %shr.i.i.i, %if.then10.i.i.i ], [ %15, %if.end.i.i.i ]
  %local_n.0.i.i.i = phi i32 [ %rem.i.i.i, %if.then10.i.i.i ], [ %conv.i.i.i, %if.end.i.i.i ]
  %arrayidx.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i.i.i
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i.i.i.i.i = and i64 %val.addr.0.i.i.i, 4294967295
  %conv1.i.i.i.i.i = zext i32 %17 to i64
  %mul.i.i.i.i.i = mul nuw i64 %conv.i.i.i.i.i, %conv1.i.i.i.i.i
  %shr2.i.i.i.i = lshr i64 %mul.i.i.i.i.i, 32
  %tobool.not.i.i.i.i = icmp ult i64 %val.addr.0.i.i.i, 4294967296
  br i1 %tobool.not.i.i.i.i, label %if.end.i69.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end11.i.i.i
  %shr.i.i.i.i = lshr i64 %val.addr.0.i.i.i, 32
  %mul.i3.i.i.i.i = mul nuw i64 %shr.i.i.i.i, %conv1.i.i.i.i.i
  %add.i.i.i.i = add nuw i64 %shr2.i.i.i.i, %mul.i3.i.i.i.i
  br label %if.end.i69.i.i

if.end.i69.i.i:                                   ; preds = %if.then.i.i.i.i, %if.end11.i.i.i
  %retval.0.i.ph.i.i = phi i64 [ %shr2.i.i.i.i, %if.end11.i.i.i ], [ %add.i.i.i.i, %if.then.i.i.i.i ]
  %18 = ptrtoint ptr %load_sum.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %retval.0.i.ph.i.i, ptr %load_sum.i.i, align 8
  %runnable_sum117.i.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 2
  %19 = ptrtoint ptr %runnable_sum117.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %runnable_sum117.i.i, align 16
  br i1 %cmp2.i.i.i, label %if.then10.i74.i.i, label %if.end11.i83.i.i, !prof !35

if.then10.i74.i.i:                                ; preds = %if.end.i69.i.i
  %div18.i70.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i71.i.i = zext i32 %div18.i70.i.i to i64
  %shr.i72.i.i = lshr i64 %20, %sh_prom.i71.i.i
  %rem.i73.i.i = and i32 %conv.i.i.i, 31
  br label %if.end11.i83.i.i

if.end11.i83.i.i:                                 ; preds = %if.then10.i74.i.i, %if.end.i69.i.i
  %val.addr.0.i75.i.i = phi i64 [ %shr.i72.i.i, %if.then10.i74.i.i ], [ %20, %if.end.i69.i.i ]
  %local_n.0.i76.i.i = phi i32 [ %rem.i73.i.i, %if.then10.i74.i.i ], [ %conv.i.i.i, %if.end.i69.i.i ]
  %arrayidx.i77.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i76.i.i
  %21 = ptrtoint ptr %arrayidx.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i77.i.i, align 4
  %conv.i.i.i78.i.i = and i64 %val.addr.0.i75.i.i, 4294967295
  %conv1.i.i.i79.i.i = zext i32 %22 to i64
  %mul.i.i.i80.i.i = mul nuw i64 %conv.i.i.i78.i.i, %conv1.i.i.i79.i.i
  %shr2.i.i81.i.i = lshr i64 %mul.i.i.i80.i.i, 32
  %tobool.not.i.i82.i.i = icmp ult i64 %val.addr.0.i75.i.i, 4294967296
  br i1 %tobool.not.i.i82.i.i, label %if.end.i93.i.i, label %if.then.i.i87.i.i

if.then.i.i87.i.i:                                ; preds = %if.end11.i83.i.i
  %shr.i.i84.i.i = lshr i64 %val.addr.0.i75.i.i, 32
  %mul.i3.i.i85.i.i = mul nuw i64 %shr.i.i84.i.i, %conv1.i.i.i79.i.i
  %add.i.i86.i.i = add nuw i64 %shr2.i.i81.i.i, %mul.i3.i.i85.i.i
  br label %if.end.i93.i.i

if.end.i93.i.i:                                   ; preds = %if.then.i.i87.i.i, %if.end11.i83.i.i
  %retval.0.i88.ph.i.i = phi i64 [ %shr2.i.i81.i.i, %if.end11.i83.i.i ], [ %add.i.i86.i.i, %if.then.i.i87.i.i ]
  %23 = ptrtoint ptr %runnable_sum117.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %retval.0.i88.ph.i.i, ptr %runnable_sum117.i.i, align 16
  %util_sum122.i.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 3
  %24 = ptrtoint ptr %util_sum122.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %util_sum122.i.i, align 8
  %conv5123.i.i = zext i32 %25 to i64
  br i1 %cmp2.i.i.i, label %if.then10.i98.i.i, label %decay_load.exit113.thread.i.i, !prof !35

if.then10.i98.i.i:                                ; preds = %if.end.i93.i.i
  %div18.i94.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i95.i.i = zext i32 %div18.i94.i.i to i64
  %shr.i96.i.i = lshr i64 %conv5123.i.i, %sh_prom.i95.i.i
  %rem.i97.i.i = and i32 %conv.i.i.i, 31
  br label %decay_load.exit113.thread.i.i

decay_load.exit113.i.i:                           ; preds = %if.then.i.i
  %26 = trunc i64 %add.i.i to i32
  %extract.t64.i.i = and i32 %26, 1023
  %27 = call ptr @memset(ptr %load_sum.i.i, i32 0, i32 20)
  br i1 %tobool, label %if.end14.thread145.i.i, label %if.end14.thread.i.i

decay_load.exit113.thread.i.i:                    ; preds = %if.then10.i98.i.i, %if.end.i93.i.i
  %val.addr.0.i99.i.i = phi i64 [ %shr.i96.i.i, %if.then10.i98.i.i ], [ %conv5123.i.i, %if.end.i93.i.i ]
  %local_n.0.i100.i.i = phi i32 [ %rem.i97.i.i, %if.then10.i98.i.i ], [ %conv.i.i.i, %if.end.i93.i.i ]
  %arrayidx.i101.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i100.i.i
  %28 = ptrtoint ptr %arrayidx.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i101.i.i, align 4
  %conv1.i.i.i103.i.i = zext i32 %29 to i64
  %mul.i.i.i104.i.i = mul nuw i64 %val.addr.0.i99.i.i, %conv1.i.i.i103.i.i
  %shr2.i.i105.i.i = lshr i64 %mul.i.i.i104.i.i, 32
  %conv7129.i.i = trunc i64 %shr2.i.i105.i.i to i32
  %30 = ptrtoint ptr %util_sum122.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv7129.i.i, ptr %util_sum122.i.i, align 8
  %31 = trunc i64 %add.i.i to i32
  %extract.t64132.i.i = and i32 %31, 1023
  br i1 %tobool, label %if.end.i.i.i.i, label %if.end14.thread.i.i

if.end.i.i.i.i:                                   ; preds = %decay_load.exit113.thread.i.i
  %sub135.i.i = sub i32 1024, %13
  %conv.i114136.i.i = zext i32 %sub135.i.i to i64
  br i1 %cmp2.i.i.i, label %if.then10.i15.i.i.i, label %if.end.i10.i.i.i, !prof !35

if.end.i10.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %conv.i.i.i
  %32 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv1.i.i.i.i.i.i = zext i32 %33 to i64
  %mul.i.i.i.i.i.i = mul nuw i64 %conv1.i.i.i.i.i.i, %conv.i114136.i.i
  %shr2.i.i.i.i.i = lshr i64 %mul.i.i.i.i.i.i, 32
  %conv1.i.i.i = trunc i64 %shr2.i.i.i.i.i to i32
  br label %if.end11.i24.i.i.i

if.then10.i15.i.i.i:                              ; preds = %if.end.i.i.i.i
  %div18.i.i.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i.i.i.i = zext i32 %div18.i.i.i.i to i64
  %shr.i.i115.i.i = lshr i64 %conv.i114136.i.i, %sh_prom.i.i.i.i
  %rem.i.i.i.i = and i32 %conv.i.i.i, 31
  %arrayidx.i36.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %rem.i.i.i.i
  %34 = ptrtoint ptr %arrayidx.i36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i36.i.i.i, align 4
  %conv1.i.i.i37.i.i.i = zext i32 %35 to i64
  %mul.i.i.i38.i.i.i = mul nuw nsw i64 %shr.i.i115.i.i, %conv1.i.i.i37.i.i.i
  %shr2.i.i39.i.i.i = lshr i64 %mul.i.i.i38.i.i.i, 32
  %conv140.i.i.i = trunc i64 %shr2.i.i39.i.i.i to i32
  %shr.i13.i.i.i = lshr i64 47742, %sh_prom.i.i.i.i
  br label %if.end11.i24.i.i.i

if.end11.i24.i.i.i:                               ; preds = %if.then10.i15.i.i.i, %if.end.i10.i.i.i
  %conv141.i.i.i = phi i32 [ %conv140.i.i.i, %if.then10.i15.i.i.i ], [ %conv1.i.i.i, %if.end.i10.i.i.i ]
  %val.addr.0.i16.i.i.i = phi i64 [ %shr.i13.i.i.i, %if.then10.i15.i.i.i ], [ 47742, %if.end.i10.i.i.i ]
  %local_n.0.i17.i.i.i = phi i32 [ %rem.i.i.i.i, %if.then10.i15.i.i.i ], [ %conv.i.i.i, %if.end.i10.i.i.i ]
  %arrayidx.i18.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i17.i.i.i
  %36 = ptrtoint ptr %arrayidx.i18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i18.i.i.i, align 4
  %conv1.i.i.i20.i.i.i = zext i32 %37 to i64
  %mul.i.i.i21.i.i.i = mul nuw nsw i64 %val.addr.0.i16.i.i.i, %conv1.i.i.i20.i.i.i
  %shr2.i.i22.i.i.i = lshr i64 %mul.i.i.i21.i.i.i, 32
  %extract.t.i.i.i = trunc i64 %shr2.i.i22.i.i.i to i32
  %phi.bo.i.i.i = add i32 %conv141.i.i.i, 46718
  %38 = sub i32 %phi.bo.i.i.i, %extract.t.i.i.i
  br label %if.end14.thread145.i.i

if.end14.thread145.i.i:                           ; preds = %if.end11.i24.i.i.i, %decay_load.exit113.i.i
  %extract.t64133138.i.i = phi i32 [ %extract.t64132.i.i, %if.end11.i24.i.i.i ], [ %extract.t64.i.i, %decay_load.exit113.i.i ]
  %add.i.i.i = phi i32 [ %38, %if.end11.i24.i.i.i ], [ 46718, %decay_load.exit113.i.i ]
  %add5.i.i.i = add i32 %add.i.i.i, %extract.t64133138.i.i
  %39 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %extract.t64133138.i.i, ptr %period_contrib.i.i, align 4
  br label %if.then18.i.i

if.end14.thread.i.i:                              ; preds = %decay_load.exit113.thread.i.i, %decay_load.exit113.i.i
  %delta.addr.0.off0.ph.i.i = phi i32 [ %extract.t64132.i.i, %decay_load.exit113.thread.i.i ], [ %extract.t64.i.i, %decay_load.exit113.i.i ]
  %40 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %delta.addr.0.off0.ph.i.i, ptr %period_contrib.i.i, align 4
  br label %if.end22.i.i

if.end14.i.i:                                     ; preds = %if.end3.i
  %extract.t65.i.i = trunc i64 %add.i.i to i32
  %41 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %extract.t65.i.i, ptr %period_contrib.i.i, align 4
  br i1 %tobool, label %if.then18.i.i, label %if.end22.i.i

if.then18.i.i:                                    ; preds = %if.end14.i.i, %if.end14.thread145.i.i
  %contrib.0149.i.i = phi i32 [ %add5.i.i.i, %if.end14.thread145.i.i ], [ %conv.i.i, %if.end14.i.i ]
  %conv19.i.i = zext i32 %contrib.0149.i.i to i64
  %load_sum20.i.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 1
  %42 = ptrtoint ptr %load_sum20.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %load_sum20.i.i, align 8
  %add21.i.i = add i64 %43, %conv19.i.i
  store i64 %add21.i.i, ptr %load_sum20.i.i, align 8
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then18.i.i, %if.end14.i.i, %if.end14.thread.i.i
  %contrib.0143.i.i = phi i32 [ %conv.i.i, %if.end14.thread.i.i ], [ %contrib.0149.i.i, %if.then18.i.i ], [ %conv.i.i, %if.end14.i.i ]
  %tobool23.not.i.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool23.not.i.i, label %if.end29.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.end22.i.i
  %mul25.i.i = shl i32 %spec.select.i, 10
  %shl.i.i = mul i32 %mul25.i.i, %contrib.0143.i.i
  %conv26.i.i = zext i32 %shl.i.i to i64
  %runnable_sum27.i.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 2
  %44 = ptrtoint ptr %runnable_sum27.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %runnable_sum27.i.i, align 16
  %add28.i.i = add i64 %45, %conv26.i.i
  store i64 %add28.i.i, ptr %runnable_sum27.i.i, align 16
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then24.i.i, %if.end22.i.i
  %46 = and i1 %tobool, %cmp
  br i1 %46, label %if.then31.i.i, label %___update_load_sum.exit

if.then31.i.i:                                    ; preds = %if.end29.i.i
  %shl32.i.i = shl i32 %contrib.0143.i.i, 10
  %util_sum33.i.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 3
  %47 = ptrtoint ptr %util_sum33.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %util_sum33.i.i, align 8
  %add34.i.i = add i32 %48, %shl32.i.i
  store i32 %add34.i.i, ptr %util_sum33.i.i, align 8
  br label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %if.then31.i.i, %if.end29.i.i
  %conv36.i.i = trunc i64 %div63.i.i to i32
  %tobool8.not.i.not = icmp eq i32 %conv36.i.i, 0
  br i1 %tobool8.not.i.not, label %return, label %if.then

if.then:                                          ; preds = %___update_load_sum.exit
  %49 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %se, align 128
  %51 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %period_contrib.i.i, align 4
  %add.i.i15 = add i32 %52, 46718
  %conv.i = zext i32 %50 to i64
  %load_sum.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 1
  %53 = ptrtoint ptr %load_sum.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %load_sum.i, align 8
  %mul.i = mul i64 %54, %conv.i
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !36

if.then168.i.i.i:                                 ; preds = %if.then
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %add.i.i15
  br label %if.else162.i.i124.i

if.else174.i.i.i:                                 ; preds = %if.then
  %55 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.i15, i64 %mul.i) #6, !srcloc !37
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %55, 1
  %extract.t137.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %if.else162.i.i124.i

if.else162.i.i124.i:                              ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t137.i, %if.else174.i.i.i ]
  %load_avg.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 5
  %56 = ptrtoint ptr %load_avg.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %load_avg.i, align 32
  %runnable_sum.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 2
  %57 = ptrtoint ptr %runnable_sum.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %runnable_sum.i, align 16
  %cmp164.i.i123.i = icmp ult i64 %58, 4294967296
  br i1 %cmp164.i.i123.i, label %if.then168.i.i128.i, label %if.else174.i.i130.i, !prof !36

if.then168.i.i128.i:                              ; preds = %if.else162.i.i124.i
  %conv169.i.i125.i = trunc i64 %58 to i32
  %div172.i.i126.i = udiv i32 %conv169.i.i125.i, %add.i.i15
  br label %___update_load_avg.exit

if.else174.i.i130.i:                              ; preds = %if.else162.i.i124.i
  %59 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.i15, i64 %58) #6, !srcloc !37
  %asmresult1.i.i.i129.i = extractvalue { i64, i64 } %59, 1
  %extract.t139.i = trunc i64 %asmresult1.i.i.i129.i to i32
  br label %___update_load_avg.exit

___update_load_avg.exit:                          ; preds = %if.else174.i.i130.i, %if.then168.i.i128.i
  %dividend.addr.0.i.i131.off0.i = phi i32 [ %div172.i.i126.i, %if.then168.i.i128.i ], [ %extract.t139.i, %if.else174.i.i130.i ]
  %runnable_avg.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 6
  %60 = ptrtoint ptr %runnable_avg.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %dividend.addr.0.i.i131.off0.i, ptr %runnable_avg.i, align 4
  %util_sum.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 3
  %61 = ptrtoint ptr %util_sum.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %util_sum.i, align 8
  %div.i = udiv i32 %62, %add.i.i15
  %util_avg.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 7
  %63 = ptrtoint ptr %util_avg.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 %div.i, ptr %util_avg.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ([25 x %struct.static_key], ptr @sched_feat_keys, i32 0, i32 20), i32 1), ptr blockaddress(@__update_load_avg_se, %cfs_se_util_change.exit)) #4
          to label %if.end.i25 [label %cfs_se_util_change.exit], !srcloc !38

if.end.i25:                                       ; preds = %___update_load_avg.exit
  %util_est.i = getelementptr inbounds %struct.sched_entity, ptr %se, i32 0, i32 15, i32 9
  %64 = ptrtoint ptr %util_est.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %util_est.i, align 16
  %tobool.not.i24 = icmp sgt i32 %65, -1
  br i1 %tobool.not.i24, label %cfs_se_util_change.exit, label %if.end3.i26

if.end3.i26:                                      ; preds = %if.end.i25
  %and4.i = and i32 %65, 2147483647
  %66 = ptrtoint ptr %util_est.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 %and4.i, ptr %util_est.i, align 16
  br label %cfs_se_util_change.exit

cfs_se_util_change.exit:                          ; preds = %if.end3.i26, %if.end.i25, %___update_load_avg.exit
  tail call fastcc void @trace_pelt_se_tp(ptr noundef %se)
  br label %return

return:                                           ; preds = %cfs_se_util_change.exit, %___update_load_sum.exit, %if.end.i, %if.then.i
  %retval.0 = phi i32 [ 1, %cfs_se_util_change.exit ], [ 0, %___update_load_sum.exit ], [ 0, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__update_load_avg_cfs_rq(i64 noundef %now, ptr noundef %cfs_rq) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %avg = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17
  %0 = ptrtoint ptr %cfs_rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfs_rq, align 128
  %h_nr_running = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 2
  %2 = ptrtoint ptr %h_nr_running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_nr_running, align 4
  %curr = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 11
  %4 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curr, align 8
  %cmp.not = icmp eq ptr %5, null
  %6 = ptrtoint ptr %avg to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %avg, align 128
  %sub.i = sub i64 %now, %7
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %avg to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %now, ptr %avg, align 128
  br label %return

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp ult i64 %sub.i, 1024
  br i1 %tobool.not.i, label %return, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %shr.i = lshr i64 %sub.i, 10
  %shl.i = and i64 %sub.i, -1024
  %add.i = add i64 %shl.i, %7
  %9 = ptrtoint ptr %avg to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add.i, ptr %avg, align 128
  %tobool5.not.i = icmp eq i32 %1, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 0, i32 %3
  %conv.i.i = trunc i64 %shr.i to i32
  %period_contrib.i.i = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 4
  %10 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_contrib.i.i, align 4
  %conv1.i.i = zext i32 %11 to i64
  %add.i.i = add nuw nsw i64 %shr.i, %conv1.i.i
  %div63.i.i = lshr i64 %add.i.i, 10
  %tobool.not.i.i = icmp ult i64 %add.i.i, 1024
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  %load_sum.i.i = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %load_sum.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %load_sum.i.i, align 8
  %cmp.i.i.i = icmp ugt i64 %add.i.i, 2065407
  br i1 %cmp.i.i.i, label %decay_load.exit113.i.i, label %if.end.i.i.i, !prof !35

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %conv.i.i.i = trunc i64 %div63.i.i to i32
  %cmp2.i.i.i = icmp ugt i32 %conv.i.i.i, 31
  br i1 %cmp2.i.i.i, label %if.then10.i.i.i, label %if.end11.i.i.i, !prof !35

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  %div18.i.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i.i.i = zext i32 %div18.i.i.i to i64
  %shr.i.i.i = lshr i64 %13, %sh_prom.i.i.i
  %rem.i.i.i = and i32 %conv.i.i.i, 31
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.end.i.i.i
  %val.addr.0.i.i.i = phi i64 [ %shr.i.i.i, %if.then10.i.i.i ], [ %13, %if.end.i.i.i ]
  %local_n.0.i.i.i = phi i32 [ %rem.i.i.i, %if.then10.i.i.i ], [ %conv.i.i.i, %if.end.i.i.i ]
  %arrayidx.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i.i.i
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i.i.i.i.i = and i64 %val.addr.0.i.i.i, 4294967295
  %conv1.i.i.i.i.i = zext i32 %15 to i64
  %mul.i.i.i.i.i = mul nuw i64 %conv.i.i.i.i.i, %conv1.i.i.i.i.i
  %shr2.i.i.i.i = lshr i64 %mul.i.i.i.i.i, 32
  %tobool.not.i.i.i.i = icmp ult i64 %val.addr.0.i.i.i, 4294967296
  br i1 %tobool.not.i.i.i.i, label %if.end.i69.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end11.i.i.i
  %shr.i.i.i.i = lshr i64 %val.addr.0.i.i.i, 32
  %mul.i3.i.i.i.i = mul nuw i64 %shr.i.i.i.i, %conv1.i.i.i.i.i
  %add.i.i.i.i = add nuw i64 %shr2.i.i.i.i, %mul.i3.i.i.i.i
  br label %if.end.i69.i.i

if.end.i69.i.i:                                   ; preds = %if.then.i.i.i.i, %if.end11.i.i.i
  %retval.0.i.ph.i.i = phi i64 [ %shr2.i.i.i.i, %if.end11.i.i.i ], [ %add.i.i.i.i, %if.then.i.i.i.i ]
  %16 = ptrtoint ptr %load_sum.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %retval.0.i.ph.i.i, ptr %load_sum.i.i, align 8
  %runnable_sum117.i.i = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 2
  %17 = ptrtoint ptr %runnable_sum117.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %runnable_sum117.i.i, align 16
  br i1 %cmp2.i.i.i, label %if.then10.i74.i.i, label %if.end11.i83.i.i, !prof !35

if.then10.i74.i.i:                                ; preds = %if.end.i69.i.i
  %div18.i70.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i71.i.i = zext i32 %div18.i70.i.i to i64
  %shr.i72.i.i = lshr i64 %18, %sh_prom.i71.i.i
  %rem.i73.i.i = and i32 %conv.i.i.i, 31
  br label %if.end11.i83.i.i

if.end11.i83.i.i:                                 ; preds = %if.then10.i74.i.i, %if.end.i69.i.i
  %val.addr.0.i75.i.i = phi i64 [ %shr.i72.i.i, %if.then10.i74.i.i ], [ %18, %if.end.i69.i.i ]
  %local_n.0.i76.i.i = phi i32 [ %rem.i73.i.i, %if.then10.i74.i.i ], [ %conv.i.i.i, %if.end.i69.i.i ]
  %arrayidx.i77.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i76.i.i
  %19 = ptrtoint ptr %arrayidx.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i77.i.i, align 4
  %conv.i.i.i78.i.i = and i64 %val.addr.0.i75.i.i, 4294967295
  %conv1.i.i.i79.i.i = zext i32 %20 to i64
  %mul.i.i.i80.i.i = mul nuw i64 %conv.i.i.i78.i.i, %conv1.i.i.i79.i.i
  %shr2.i.i81.i.i = lshr i64 %mul.i.i.i80.i.i, 32
  %tobool.not.i.i82.i.i = icmp ult i64 %val.addr.0.i75.i.i, 4294967296
  br i1 %tobool.not.i.i82.i.i, label %if.end.i93.i.i, label %if.then.i.i87.i.i

if.then.i.i87.i.i:                                ; preds = %if.end11.i83.i.i
  %shr.i.i84.i.i = lshr i64 %val.addr.0.i75.i.i, 32
  %mul.i3.i.i85.i.i = mul nuw i64 %shr.i.i84.i.i, %conv1.i.i.i79.i.i
  %add.i.i86.i.i = add nuw i64 %shr2.i.i81.i.i, %mul.i3.i.i85.i.i
  br label %if.end.i93.i.i

if.end.i93.i.i:                                   ; preds = %if.then.i.i87.i.i, %if.end11.i83.i.i
  %retval.0.i88.ph.i.i = phi i64 [ %shr2.i.i81.i.i, %if.end11.i83.i.i ], [ %add.i.i86.i.i, %if.then.i.i87.i.i ]
  %21 = ptrtoint ptr %runnable_sum117.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %retval.0.i88.ph.i.i, ptr %runnable_sum117.i.i, align 16
  %util_sum122.i.i = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 3
  %22 = ptrtoint ptr %util_sum122.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %util_sum122.i.i, align 8
  %conv5123.i.i = zext i32 %23 to i64
  br i1 %cmp2.i.i.i, label %if.then10.i98.i.i, label %decay_load.exit113.thread.i.i, !prof !35

if.then10.i98.i.i:                                ; preds = %if.end.i93.i.i
  %div18.i94.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i95.i.i = zext i32 %div18.i94.i.i to i64
  %shr.i96.i.i = lshr i64 %conv5123.i.i, %sh_prom.i95.i.i
  %rem.i97.i.i = and i32 %conv.i.i.i, 31
  br label %decay_load.exit113.thread.i.i

decay_load.exit113.i.i:                           ; preds = %if.then.i.i
  %24 = trunc i64 %add.i.i to i32
  %extract.t64.i.i = and i32 %24, 1023
  %25 = call ptr @memset(ptr %load_sum.i.i, i32 0, i32 20)
  br i1 %tobool5.not.i, label %if.end14.thread.i.i, label %if.end14.thread145.i.i

decay_load.exit113.thread.i.i:                    ; preds = %if.then10.i98.i.i, %if.end.i93.i.i
  %val.addr.0.i99.i.i = phi i64 [ %shr.i96.i.i, %if.then10.i98.i.i ], [ %conv5123.i.i, %if.end.i93.i.i ]
  %local_n.0.i100.i.i = phi i32 [ %rem.i97.i.i, %if.then10.i98.i.i ], [ %conv.i.i.i, %if.end.i93.i.i ]
  %arrayidx.i101.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i100.i.i
  %26 = ptrtoint ptr %arrayidx.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i101.i.i, align 4
  %conv1.i.i.i103.i.i = zext i32 %27 to i64
  %mul.i.i.i104.i.i = mul nuw i64 %val.addr.0.i99.i.i, %conv1.i.i.i103.i.i
  %shr2.i.i105.i.i = lshr i64 %mul.i.i.i104.i.i, 32
  %conv7129.i.i = trunc i64 %shr2.i.i105.i.i to i32
  %28 = ptrtoint ptr %util_sum122.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv7129.i.i, ptr %util_sum122.i.i, align 8
  %29 = trunc i64 %add.i.i to i32
  %extract.t64132.i.i = and i32 %29, 1023
  br i1 %tobool5.not.i, label %if.end14.thread.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %decay_load.exit113.thread.i.i
  %sub135.i.i = sub i32 1024, %11
  %conv.i114136.i.i = zext i32 %sub135.i.i to i64
  br i1 %cmp2.i.i.i, label %if.then10.i15.i.i.i, label %if.end.i10.i.i.i, !prof !35

if.end.i10.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %conv.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv1.i.i.i.i.i.i = zext i32 %31 to i64
  %mul.i.i.i.i.i.i = mul nuw i64 %conv1.i.i.i.i.i.i, %conv.i114136.i.i
  %shr2.i.i.i.i.i = lshr i64 %mul.i.i.i.i.i.i, 32
  %conv1.i.i.i = trunc i64 %shr2.i.i.i.i.i to i32
  br label %if.end11.i24.i.i.i

if.then10.i15.i.i.i:                              ; preds = %if.end.i.i.i.i
  %div18.i.i.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i.i.i.i = zext i32 %div18.i.i.i.i to i64
  %shr.i.i115.i.i = lshr i64 %conv.i114136.i.i, %sh_prom.i.i.i.i
  %rem.i.i.i.i = and i32 %conv.i.i.i, 31
  %arrayidx.i36.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %rem.i.i.i.i
  %32 = ptrtoint ptr %arrayidx.i36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i36.i.i.i, align 4
  %conv1.i.i.i37.i.i.i = zext i32 %33 to i64
  %mul.i.i.i38.i.i.i = mul nuw nsw i64 %shr.i.i115.i.i, %conv1.i.i.i37.i.i.i
  %shr2.i.i39.i.i.i = lshr i64 %mul.i.i.i38.i.i.i, 32
  %conv140.i.i.i = trunc i64 %shr2.i.i39.i.i.i to i32
  %shr.i13.i.i.i = lshr i64 47742, %sh_prom.i.i.i.i
  br label %if.end11.i24.i.i.i

if.end11.i24.i.i.i:                               ; preds = %if.then10.i15.i.i.i, %if.end.i10.i.i.i
  %conv141.i.i.i = phi i32 [ %conv140.i.i.i, %if.then10.i15.i.i.i ], [ %conv1.i.i.i, %if.end.i10.i.i.i ]
  %val.addr.0.i16.i.i.i = phi i64 [ %shr.i13.i.i.i, %if.then10.i15.i.i.i ], [ 47742, %if.end.i10.i.i.i ]
  %local_n.0.i17.i.i.i = phi i32 [ %rem.i.i.i.i, %if.then10.i15.i.i.i ], [ %conv.i.i.i, %if.end.i10.i.i.i ]
  %arrayidx.i18.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i17.i.i.i
  %34 = ptrtoint ptr %arrayidx.i18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i18.i.i.i, align 4
  %conv1.i.i.i20.i.i.i = zext i32 %35 to i64
  %mul.i.i.i21.i.i.i = mul nuw nsw i64 %val.addr.0.i16.i.i.i, %conv1.i.i.i20.i.i.i
  %shr2.i.i22.i.i.i = lshr i64 %mul.i.i.i21.i.i.i, 32
  %extract.t.i.i.i = trunc i64 %shr2.i.i22.i.i.i to i32
  %phi.bo.i.i.i = add i32 %conv141.i.i.i, 46718
  %36 = sub i32 %phi.bo.i.i.i, %extract.t.i.i.i
  br label %if.end14.thread145.i.i

if.end14.thread145.i.i:                           ; preds = %if.end11.i24.i.i.i, %decay_load.exit113.i.i
  %extract.t64133138.i.i = phi i32 [ %extract.t64132.i.i, %if.end11.i24.i.i.i ], [ %extract.t64.i.i, %decay_load.exit113.i.i ]
  %add.i.i.i = phi i32 [ %36, %if.end11.i24.i.i.i ], [ 46718, %decay_load.exit113.i.i ]
  %add5.i.i.i = add i32 %add.i.i.i, %extract.t64133138.i.i
  %37 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %extract.t64133138.i.i, ptr %period_contrib.i.i, align 4
  br label %if.then18.i.i

if.end14.thread.i.i:                              ; preds = %decay_load.exit113.thread.i.i, %decay_load.exit113.i.i
  %delta.addr.0.off0.ph.i.i = phi i32 [ %extract.t64132.i.i, %decay_load.exit113.thread.i.i ], [ %extract.t64.i.i, %decay_load.exit113.i.i ]
  %38 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %delta.addr.0.off0.ph.i.i, ptr %period_contrib.i.i, align 4
  br label %if.end22.i.i

if.end14.i.i:                                     ; preds = %if.end3.i
  %extract.t65.i.i = trunc i64 %add.i.i to i32
  %39 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %extract.t65.i.i, ptr %period_contrib.i.i, align 4
  br i1 %tobool5.not.i, label %if.end22.i.i, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.end14.i.i, %if.end14.thread145.i.i
  %contrib.0149.i.i = phi i32 [ %add5.i.i.i, %if.end14.thread145.i.i ], [ %conv.i.i, %if.end14.i.i ]
  %mul.i.i = mul i32 %contrib.0149.i.i, %1
  %conv19.i.i = zext i32 %mul.i.i to i64
  %load_sum20.i.i = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 1
  %40 = ptrtoint ptr %load_sum20.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %load_sum20.i.i, align 8
  %add21.i.i = add i64 %41, %conv19.i.i
  store i64 %add21.i.i, ptr %load_sum20.i.i, align 8
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then18.i.i, %if.end14.i.i, %if.end14.thread.i.i
  %contrib.0143.i.i = phi i32 [ %conv.i.i, %if.end14.thread.i.i ], [ %contrib.0149.i.i, %if.then18.i.i ], [ %conv.i.i, %if.end14.i.i ]
  %tobool23.not.i.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool23.not.i.i, label %if.end29.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.end22.i.i
  %mul25.i.i = shl i32 %spec.select.i, 10
  %shl.i.i = mul i32 %mul25.i.i, %contrib.0143.i.i
  %conv26.i.i = zext i32 %shl.i.i to i64
  %runnable_sum27.i.i = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 2
  %42 = ptrtoint ptr %runnable_sum27.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %runnable_sum27.i.i, align 16
  %add28.i.i = add i64 %43, %conv26.i.i
  store i64 %add28.i.i, ptr %runnable_sum27.i.i, align 16
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then24.i.i, %if.end22.i.i
  %tobool30.not.i.i = or i1 %tobool5.not.i, %cmp.not
  br i1 %tobool30.not.i.i, label %___update_load_sum.exit, label %if.then31.i.i

if.then31.i.i:                                    ; preds = %if.end29.i.i
  %shl32.i.i = shl i32 %contrib.0143.i.i, 10
  %util_sum33.i.i = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 3
  %44 = ptrtoint ptr %util_sum33.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %util_sum33.i.i, align 8
  %add34.i.i = add i32 %45, %shl32.i.i
  store i32 %add34.i.i, ptr %util_sum33.i.i, align 8
  br label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %if.then31.i.i, %if.end29.i.i
  %conv36.i.i = trunc i64 %div63.i.i to i32
  %tobool8.not.i.not = icmp eq i32 %conv36.i.i, 0
  br i1 %tobool8.not.i.not, label %return, label %if.then

if.then:                                          ; preds = %___update_load_sum.exit
  %46 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %period_contrib.i.i, align 4
  %add.i.i8 = add i32 %47, 46718
  %load_sum.i = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 1
  %48 = ptrtoint ptr %load_sum.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %load_sum.i, align 8
  %cmp164.i.i.i = icmp ult i64 %49, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !36

if.then168.i.i.i:                                 ; preds = %if.then
  %conv169.i.i.i = trunc i64 %49 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %add.i.i8
  br label %if.else162.i.i124.i

if.else174.i.i.i:                                 ; preds = %if.then
  %50 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.i8, i64 %49) #6, !srcloc !37
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %50, 1
  %extract.t137.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %if.else162.i.i124.i

if.else162.i.i124.i:                              ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t137.i, %if.else174.i.i.i ]
  %load_avg.i = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 5
  %51 = ptrtoint ptr %load_avg.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %load_avg.i, align 32
  %runnable_sum.i = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 2
  %52 = ptrtoint ptr %runnable_sum.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %runnable_sum.i, align 16
  %cmp164.i.i123.i = icmp ult i64 %53, 4294967296
  br i1 %cmp164.i.i123.i, label %if.then168.i.i128.i, label %if.else174.i.i130.i, !prof !36

if.then168.i.i128.i:                              ; preds = %if.else162.i.i124.i
  %conv169.i.i125.i = trunc i64 %53 to i32
  %div172.i.i126.i = udiv i32 %conv169.i.i125.i, %add.i.i8
  br label %___update_load_avg.exit

if.else174.i.i130.i:                              ; preds = %if.else162.i.i124.i
  %54 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.i8, i64 %53) #6, !srcloc !37
  %asmresult1.i.i.i129.i = extractvalue { i64, i64 } %54, 1
  %extract.t139.i = trunc i64 %asmresult1.i.i.i129.i to i32
  br label %___update_load_avg.exit

___update_load_avg.exit:                          ; preds = %if.else174.i.i130.i, %if.then168.i.i128.i
  %dividend.addr.0.i.i131.off0.i = phi i32 [ %div172.i.i126.i, %if.then168.i.i128.i ], [ %extract.t139.i, %if.else174.i.i130.i ]
  %runnable_avg.i = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 6
  %55 = ptrtoint ptr %runnable_avg.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %dividend.addr.0.i.i131.off0.i, ptr %runnable_avg.i, align 4
  %util_sum.i = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 3
  %56 = ptrtoint ptr %util_sum.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %util_sum.i, align 8
  %div.i = udiv i32 %57, %add.i.i8
  %util_avg.i = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 7
  %58 = ptrtoint ptr %util_avg.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 %div.i, ptr %util_avg.i, align 8
  tail call fastcc void @trace_pelt_cfs_tp(ptr noundef %cfs_rq)
  br label %return

return:                                           ; preds = %___update_load_avg.exit, %___update_load_sum.exit, %if.end.i, %if.then.i
  %retval.0 = phi i32 [ 1, %___update_load_avg.exit ], [ 0, %___update_load_sum.exit ], [ 0, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pelt_cfs_tp(ptr noundef %cfs_rq) unnamed_addr #1 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_cfs_tp, i32 0, i32 1), ptr blockaddress(@trace_pelt_cfs_tp, %do.body)) #4
          to label %if.end48 [label %do.body], !srcloc !38

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !36

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %do.body
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end69, label %cleanup.thread

cleanup.thread:                                   ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !43
  %call42 = tail call i32 @__traceiter_pelt_cfs_tp(ptr noundef null, ptr noundef %cfs_rq) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !44
  %13 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %cpu_online.exit85, label %land.rhs.i.i.i.i79

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %cpu_online.exit85, label %if.then.i.i.i.i80, !prof !36

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79, %if.end48
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_cfs_tp, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_cfs_tp, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #4
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #4
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_pelt_cfs_tp.__warned, align 1
  br i1 %.b72, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_pelt_cfs_tp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 693, ptr noundef nonnull @.str.1) #4
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !42
  %31 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85, %cpu_online.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @update_rt_rq_load_avg(i64 noundef %now, ptr noundef %rq, i32 noundef %running) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %avg_rt = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 50
  %0 = ptrtoint ptr %avg_rt to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %avg_rt, align 128
  %sub.i = sub i64 %now, %1
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %avg_rt to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %now, ptr %avg_rt, align 128
  br label %return

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp ult i64 %sub.i, 1024
  br i1 %tobool.not.i, label %return, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %shr.i = lshr i64 %sub.i, 10
  %shl.i = and i64 %sub.i, -1024
  %add.i = add i64 %shl.i, %1
  %3 = ptrtoint ptr %avg_rt to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %add.i, ptr %avg_rt, align 128
  %tobool5.not.i = icmp eq i32 %running, 0
  %period_contrib.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 50, i32 4
  %4 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_contrib.i.i, align 4
  %conv1.i.i = zext i32 %5 to i64
  %add.i.i = add nuw nsw i64 %shr.i, %conv1.i.i
  %div63.i.i = lshr i64 %add.i.i, 10
  %tobool.not.i.i = icmp ult i64 %add.i.i, 1024
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  %load_sum.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 50, i32 1
  %6 = ptrtoint ptr %load_sum.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %load_sum.i.i, align 8
  %cmp.i.i.i = icmp ugt i64 %add.i.i, 2065407
  br i1 %cmp.i.i.i, label %decay_load.exit113.i.i, label %if.end.i.i.i, !prof !35

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %conv.i.i.i = trunc i64 %div63.i.i to i32
  %cmp2.i.i.i = icmp ugt i32 %conv.i.i.i, 31
  br i1 %cmp2.i.i.i, label %if.then10.i.i.i, label %if.end11.i.i.i, !prof !35

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  %div18.i.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i.i.i = zext i32 %div18.i.i.i to i64
  %shr.i.i.i = lshr i64 %7, %sh_prom.i.i.i
  %rem.i.i.i = and i32 %conv.i.i.i, 31
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.end.i.i.i
  %val.addr.0.i.i.i = phi i64 [ %shr.i.i.i, %if.then10.i.i.i ], [ %7, %if.end.i.i.i ]
  %local_n.0.i.i.i = phi i32 [ %rem.i.i.i, %if.then10.i.i.i ], [ %conv.i.i.i, %if.end.i.i.i ]
  %arrayidx.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i.i.i.i.i = and i64 %val.addr.0.i.i.i, 4294967295
  %conv1.i.i.i.i.i = zext i32 %9 to i64
  %mul.i.i.i.i.i = mul nuw i64 %conv.i.i.i.i.i, %conv1.i.i.i.i.i
  %shr2.i.i.i.i = lshr i64 %mul.i.i.i.i.i, 32
  %tobool.not.i.i.i.i = icmp ult i64 %val.addr.0.i.i.i, 4294967296
  br i1 %tobool.not.i.i.i.i, label %if.end.i69.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end11.i.i.i
  %shr.i.i.i.i = lshr i64 %val.addr.0.i.i.i, 32
  %mul.i3.i.i.i.i = mul nuw i64 %shr.i.i.i.i, %conv1.i.i.i.i.i
  %add.i.i.i.i = add nuw i64 %shr2.i.i.i.i, %mul.i3.i.i.i.i
  br label %if.end.i69.i.i

if.end.i69.i.i:                                   ; preds = %if.then.i.i.i.i, %if.end11.i.i.i
  %retval.0.i.ph.i.i = phi i64 [ %shr2.i.i.i.i, %if.end11.i.i.i ], [ %add.i.i.i.i, %if.then.i.i.i.i ]
  %10 = ptrtoint ptr %load_sum.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %retval.0.i.ph.i.i, ptr %load_sum.i.i, align 8
  %runnable_sum117.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 50, i32 2
  %11 = ptrtoint ptr %runnable_sum117.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %runnable_sum117.i.i, align 16
  br i1 %cmp2.i.i.i, label %if.then10.i74.i.i, label %if.end11.i83.i.i, !prof !35

if.then10.i74.i.i:                                ; preds = %if.end.i69.i.i
  %div18.i70.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i71.i.i = zext i32 %div18.i70.i.i to i64
  %shr.i72.i.i = lshr i64 %12, %sh_prom.i71.i.i
  %rem.i73.i.i = and i32 %conv.i.i.i, 31
  br label %if.end11.i83.i.i

if.end11.i83.i.i:                                 ; preds = %if.then10.i74.i.i, %if.end.i69.i.i
  %val.addr.0.i75.i.i = phi i64 [ %shr.i72.i.i, %if.then10.i74.i.i ], [ %12, %if.end.i69.i.i ]
  %local_n.0.i76.i.i = phi i32 [ %rem.i73.i.i, %if.then10.i74.i.i ], [ %conv.i.i.i, %if.end.i69.i.i ]
  %arrayidx.i77.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i76.i.i
  %13 = ptrtoint ptr %arrayidx.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i77.i.i, align 4
  %conv.i.i.i78.i.i = and i64 %val.addr.0.i75.i.i, 4294967295
  %conv1.i.i.i79.i.i = zext i32 %14 to i64
  %mul.i.i.i80.i.i = mul nuw i64 %conv.i.i.i78.i.i, %conv1.i.i.i79.i.i
  %shr2.i.i81.i.i = lshr i64 %mul.i.i.i80.i.i, 32
  %tobool.not.i.i82.i.i = icmp ult i64 %val.addr.0.i75.i.i, 4294967296
  br i1 %tobool.not.i.i82.i.i, label %if.end.i93.i.i, label %if.then.i.i87.i.i

if.then.i.i87.i.i:                                ; preds = %if.end11.i83.i.i
  %shr.i.i84.i.i = lshr i64 %val.addr.0.i75.i.i, 32
  %mul.i3.i.i85.i.i = mul nuw i64 %shr.i.i84.i.i, %conv1.i.i.i79.i.i
  %add.i.i86.i.i = add nuw i64 %shr2.i.i81.i.i, %mul.i3.i.i85.i.i
  br label %if.end.i93.i.i

if.end.i93.i.i:                                   ; preds = %if.then.i.i87.i.i, %if.end11.i83.i.i
  %retval.0.i88.ph.i.i = phi i64 [ %shr2.i.i81.i.i, %if.end11.i83.i.i ], [ %add.i.i86.i.i, %if.then.i.i87.i.i ]
  %15 = ptrtoint ptr %runnable_sum117.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %retval.0.i88.ph.i.i, ptr %runnable_sum117.i.i, align 16
  %util_sum122.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 50, i32 3
  %16 = ptrtoint ptr %util_sum122.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %util_sum122.i.i, align 8
  %conv5123.i.i = zext i32 %17 to i64
  br i1 %cmp2.i.i.i, label %if.then10.i98.i.i, label %decay_load.exit113.thread.i.i, !prof !35

if.then10.i98.i.i:                                ; preds = %if.end.i93.i.i
  %div18.i94.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i95.i.i = zext i32 %div18.i94.i.i to i64
  %shr.i96.i.i = lshr i64 %conv5123.i.i, %sh_prom.i95.i.i
  %rem.i97.i.i = and i32 %conv.i.i.i, 31
  br label %decay_load.exit113.thread.i.i

decay_load.exit113.i.i:                           ; preds = %if.then.i.i
  %18 = trunc i64 %add.i.i to i32
  %extract.t64.i.i = and i32 %18, 1023
  %19 = call ptr @memset(ptr %load_sum.i.i, i32 0, i32 20)
  br i1 %tobool5.not.i, label %if.end14.thread.i.i, label %if.end14.thread145.i.i

decay_load.exit113.thread.i.i:                    ; preds = %if.then10.i98.i.i, %if.end.i93.i.i
  %val.addr.0.i99.i.i = phi i64 [ %shr.i96.i.i, %if.then10.i98.i.i ], [ %conv5123.i.i, %if.end.i93.i.i ]
  %local_n.0.i100.i.i = phi i32 [ %rem.i97.i.i, %if.then10.i98.i.i ], [ %conv.i.i.i, %if.end.i93.i.i ]
  %arrayidx.i101.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i100.i.i
  %20 = ptrtoint ptr %arrayidx.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i101.i.i, align 4
  %conv1.i.i.i103.i.i = zext i32 %21 to i64
  %mul.i.i.i104.i.i = mul nuw i64 %val.addr.0.i99.i.i, %conv1.i.i.i103.i.i
  %shr2.i.i105.i.i = lshr i64 %mul.i.i.i104.i.i, 32
  %conv7129.i.i = trunc i64 %shr2.i.i105.i.i to i32
  %22 = ptrtoint ptr %util_sum122.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv7129.i.i, ptr %util_sum122.i.i, align 8
  %23 = trunc i64 %add.i.i to i32
  %extract.t64132.i.i = and i32 %23, 1023
  br i1 %tobool5.not.i, label %if.end14.thread.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %decay_load.exit113.thread.i.i
  %sub135.i.i = sub i32 1024, %5
  %conv.i114136.i.i = zext i32 %sub135.i.i to i64
  br i1 %cmp2.i.i.i, label %if.then10.i15.i.i.i, label %if.end.i10.i.i.i, !prof !35

if.end.i10.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %conv.i.i.i
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv1.i.i.i.i.i.i = zext i32 %25 to i64
  %mul.i.i.i.i.i.i = mul nuw i64 %conv1.i.i.i.i.i.i, %conv.i114136.i.i
  %shr2.i.i.i.i.i = lshr i64 %mul.i.i.i.i.i.i, 32
  %conv1.i.i.i = trunc i64 %shr2.i.i.i.i.i to i32
  br label %if.end11.i24.i.i.i

if.then10.i15.i.i.i:                              ; preds = %if.end.i.i.i.i
  %div18.i.i.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i.i.i.i = zext i32 %div18.i.i.i.i to i64
  %shr.i.i115.i.i = lshr i64 %conv.i114136.i.i, %sh_prom.i.i.i.i
  %rem.i.i.i.i = and i32 %conv.i.i.i, 31
  %arrayidx.i36.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %rem.i.i.i.i
  %26 = ptrtoint ptr %arrayidx.i36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i36.i.i.i, align 4
  %conv1.i.i.i37.i.i.i = zext i32 %27 to i64
  %mul.i.i.i38.i.i.i = mul nuw nsw i64 %shr.i.i115.i.i, %conv1.i.i.i37.i.i.i
  %shr2.i.i39.i.i.i = lshr i64 %mul.i.i.i38.i.i.i, 32
  %conv140.i.i.i = trunc i64 %shr2.i.i39.i.i.i to i32
  %shr.i13.i.i.i = lshr i64 47742, %sh_prom.i.i.i.i
  br label %if.end11.i24.i.i.i

if.end11.i24.i.i.i:                               ; preds = %if.then10.i15.i.i.i, %if.end.i10.i.i.i
  %conv141.i.i.i = phi i32 [ %conv140.i.i.i, %if.then10.i15.i.i.i ], [ %conv1.i.i.i, %if.end.i10.i.i.i ]
  %val.addr.0.i16.i.i.i = phi i64 [ %shr.i13.i.i.i, %if.then10.i15.i.i.i ], [ 47742, %if.end.i10.i.i.i ]
  %local_n.0.i17.i.i.i = phi i32 [ %rem.i.i.i.i, %if.then10.i15.i.i.i ], [ %conv.i.i.i, %if.end.i10.i.i.i ]
  %arrayidx.i18.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i17.i.i.i
  %28 = ptrtoint ptr %arrayidx.i18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i18.i.i.i, align 4
  %conv1.i.i.i20.i.i.i = zext i32 %29 to i64
  %mul.i.i.i21.i.i.i = mul nuw nsw i64 %val.addr.0.i16.i.i.i, %conv1.i.i.i20.i.i.i
  %shr2.i.i22.i.i.i = lshr i64 %mul.i.i.i21.i.i.i, 32
  %extract.t.i.i.i = trunc i64 %shr2.i.i22.i.i.i to i32
  %phi.bo.i.i.i = add i32 %conv141.i.i.i, 46718
  %30 = sub i32 %phi.bo.i.i.i, %extract.t.i.i.i
  br label %if.end14.thread145.i.i

if.end14.thread145.i.i:                           ; preds = %if.end11.i24.i.i.i, %decay_load.exit113.i.i
  %extract.t64133138.i.i = phi i32 [ %extract.t64132.i.i, %if.end11.i24.i.i.i ], [ %extract.t64.i.i, %decay_load.exit113.i.i ]
  %add.i.i.i = phi i32 [ %30, %if.end11.i24.i.i.i ], [ 46718, %decay_load.exit113.i.i ]
  %add5.i.i.i = add i32 %add.i.i.i, %extract.t64133138.i.i
  %31 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %extract.t64133138.i.i, ptr %period_contrib.i.i, align 4
  br label %if.then31.i.i

if.end14.thread.i.i:                              ; preds = %decay_load.exit113.thread.i.i, %decay_load.exit113.i.i
  %delta.addr.0.off0.ph.i.i = phi i32 [ %extract.t64132.i.i, %decay_load.exit113.thread.i.i ], [ %extract.t64.i.i, %decay_load.exit113.i.i ]
  %32 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %delta.addr.0.off0.ph.i.i, ptr %period_contrib.i.i, align 4
  br label %___update_load_sum.exit

if.end14.i.i:                                     ; preds = %if.end3.i
  %conv.i.i = trunc i64 %shr.i to i32
  %extract.t65.i.i = trunc i64 %add.i.i to i32
  %33 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %extract.t65.i.i, ptr %period_contrib.i.i, align 4
  br i1 %tobool5.not.i, label %___update_load_sum.exit, label %if.then31.i.i

if.then31.i.i:                                    ; preds = %if.end14.i.i, %if.end14.thread145.i.i
  %contrib.0149.i.i = phi i32 [ %add5.i.i.i, %if.end14.thread145.i.i ], [ %conv.i.i, %if.end14.i.i ]
  %mul.i.i = mul i32 %contrib.0149.i.i, %running
  %conv19.i.i = zext i32 %mul.i.i to i64
  %load_sum20.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 50, i32 1
  %34 = ptrtoint ptr %load_sum20.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %load_sum20.i.i, align 8
  %add21.i.i = add i64 %35, %conv19.i.i
  store i64 %add21.i.i, ptr %load_sum20.i.i, align 8
  %mul25.i.i = shl i32 %running, 10
  %shl.i.i = mul i32 %mul25.i.i, %contrib.0149.i.i
  %conv26.i.i = zext i32 %shl.i.i to i64
  %runnable_sum27.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 50, i32 2
  %36 = ptrtoint ptr %runnable_sum27.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %runnable_sum27.i.i, align 16
  %add28.i.i = add i64 %37, %conv26.i.i
  store i64 %add28.i.i, ptr %runnable_sum27.i.i, align 16
  %shl32.i.i = shl i32 %contrib.0149.i.i, 10
  %util_sum33.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 50, i32 3
  %38 = ptrtoint ptr %util_sum33.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %util_sum33.i.i, align 8
  %add34.i.i = add i32 %39, %shl32.i.i
  store i32 %add34.i.i, ptr %util_sum33.i.i, align 8
  br label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %if.then31.i.i, %if.end14.i.i, %if.end14.thread.i.i
  %conv36.i.i = trunc i64 %div63.i.i to i32
  %tobool8.not.i.not = icmp eq i32 %conv36.i.i, 0
  br i1 %tobool8.not.i.not, label %return, label %if.then

if.then:                                          ; preds = %___update_load_sum.exit
  %40 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %period_contrib.i.i, align 4
  %add.i.i7 = add i32 %41, 46718
  %load_sum.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 50, i32 1
  %42 = ptrtoint ptr %load_sum.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %load_sum.i, align 8
  %cmp164.i.i.i = icmp ult i64 %43, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !36

if.then168.i.i.i:                                 ; preds = %if.then
  %conv169.i.i.i = trunc i64 %43 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %add.i.i7
  br label %if.else162.i.i124.i

if.else174.i.i.i:                                 ; preds = %if.then
  %44 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.i7, i64 %43) #6, !srcloc !37
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %44, 1
  %extract.t137.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %if.else162.i.i124.i

if.else162.i.i124.i:                              ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t137.i, %if.else174.i.i.i ]
  %load_avg.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 50, i32 5
  %45 = ptrtoint ptr %load_avg.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %load_avg.i, align 32
  %runnable_sum.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 50, i32 2
  %46 = ptrtoint ptr %runnable_sum.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %runnable_sum.i, align 16
  %cmp164.i.i123.i = icmp ult i64 %47, 4294967296
  br i1 %cmp164.i.i123.i, label %if.then168.i.i128.i, label %if.else174.i.i130.i, !prof !36

if.then168.i.i128.i:                              ; preds = %if.else162.i.i124.i
  %conv169.i.i125.i = trunc i64 %47 to i32
  %div172.i.i126.i = udiv i32 %conv169.i.i125.i, %add.i.i7
  br label %___update_load_avg.exit

if.else174.i.i130.i:                              ; preds = %if.else162.i.i124.i
  %48 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.i7, i64 %47) #6, !srcloc !37
  %asmresult1.i.i.i129.i = extractvalue { i64, i64 } %48, 1
  %extract.t139.i = trunc i64 %asmresult1.i.i.i129.i to i32
  br label %___update_load_avg.exit

___update_load_avg.exit:                          ; preds = %if.else174.i.i130.i, %if.then168.i.i128.i
  %dividend.addr.0.i.i131.off0.i = phi i32 [ %div172.i.i126.i, %if.then168.i.i128.i ], [ %extract.t139.i, %if.else174.i.i130.i ]
  %runnable_avg.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 50, i32 6
  %49 = ptrtoint ptr %runnable_avg.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %dividend.addr.0.i.i131.off0.i, ptr %runnable_avg.i, align 4
  %util_sum.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 50, i32 3
  %50 = ptrtoint ptr %util_sum.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %util_sum.i, align 8
  %div.i = udiv i32 %51, %add.i.i7
  %util_avg.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 50, i32 7
  %52 = ptrtoint ptr %util_avg.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %div.i, ptr %util_avg.i, align 8
  tail call fastcc void @trace_pelt_rt_tp(ptr noundef %rq)
  br label %return

return:                                           ; preds = %___update_load_avg.exit, %___update_load_sum.exit, %if.end.i, %if.then.i
  %retval.0 = phi i32 [ 1, %___update_load_avg.exit ], [ 0, %___update_load_sum.exit ], [ 0, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pelt_rt_tp(ptr noundef %rq) unnamed_addr #1 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_rt_tp, i32 0, i32 1), ptr blockaddress(@trace_pelt_rt_tp, %do.body)) #4
          to label %if.end48 [label %do.body], !srcloc !38

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !36

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %do.body
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end69, label %cleanup.thread

cleanup.thread:                                   ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !45
  %call42 = tail call i32 @__traceiter_pelt_rt_tp(ptr noundef null, ptr noundef %rq) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !46
  %13 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %cpu_online.exit85, label %land.rhs.i.i.i.i79

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %cpu_online.exit85, label %if.then.i.i.i.i80, !prof !36

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79, %if.end48
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_rt_tp, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_rt_tp, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #4
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #4
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_pelt_rt_tp.__warned, align 1
  br i1 %.b72, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_pelt_rt_tp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 697, ptr noundef nonnull @.str.1) #4
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !42
  %31 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85, %cpu_online.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @update_dl_rq_load_avg(i64 noundef %now, ptr noundef %rq, i32 noundef %running) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %avg_dl = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 51
  %0 = ptrtoint ptr %avg_dl to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %avg_dl, align 128
  %sub.i = sub i64 %now, %1
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %avg_dl to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %now, ptr %avg_dl, align 128
  br label %return

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp ult i64 %sub.i, 1024
  br i1 %tobool.not.i, label %return, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %shr.i = lshr i64 %sub.i, 10
  %shl.i = and i64 %sub.i, -1024
  %add.i = add i64 %shl.i, %1
  %3 = ptrtoint ptr %avg_dl to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %add.i, ptr %avg_dl, align 128
  %tobool5.not.i = icmp eq i32 %running, 0
  %period_contrib.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 51, i32 4
  %4 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_contrib.i.i, align 4
  %conv1.i.i = zext i32 %5 to i64
  %add.i.i = add nuw nsw i64 %shr.i, %conv1.i.i
  %div63.i.i = lshr i64 %add.i.i, 10
  %tobool.not.i.i = icmp ult i64 %add.i.i, 1024
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  %load_sum.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 51, i32 1
  %6 = ptrtoint ptr %load_sum.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %load_sum.i.i, align 8
  %cmp.i.i.i = icmp ugt i64 %add.i.i, 2065407
  br i1 %cmp.i.i.i, label %decay_load.exit113.i.i, label %if.end.i.i.i, !prof !35

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %conv.i.i.i = trunc i64 %div63.i.i to i32
  %cmp2.i.i.i = icmp ugt i32 %conv.i.i.i, 31
  br i1 %cmp2.i.i.i, label %if.then10.i.i.i, label %if.end11.i.i.i, !prof !35

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  %div18.i.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i.i.i = zext i32 %div18.i.i.i to i64
  %shr.i.i.i = lshr i64 %7, %sh_prom.i.i.i
  %rem.i.i.i = and i32 %conv.i.i.i, 31
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.end.i.i.i
  %val.addr.0.i.i.i = phi i64 [ %shr.i.i.i, %if.then10.i.i.i ], [ %7, %if.end.i.i.i ]
  %local_n.0.i.i.i = phi i32 [ %rem.i.i.i, %if.then10.i.i.i ], [ %conv.i.i.i, %if.end.i.i.i ]
  %arrayidx.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i.i.i.i.i = and i64 %val.addr.0.i.i.i, 4294967295
  %conv1.i.i.i.i.i = zext i32 %9 to i64
  %mul.i.i.i.i.i = mul nuw i64 %conv.i.i.i.i.i, %conv1.i.i.i.i.i
  %shr2.i.i.i.i = lshr i64 %mul.i.i.i.i.i, 32
  %tobool.not.i.i.i.i = icmp ult i64 %val.addr.0.i.i.i, 4294967296
  br i1 %tobool.not.i.i.i.i, label %if.end.i69.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end11.i.i.i
  %shr.i.i.i.i = lshr i64 %val.addr.0.i.i.i, 32
  %mul.i3.i.i.i.i = mul nuw i64 %shr.i.i.i.i, %conv1.i.i.i.i.i
  %add.i.i.i.i = add nuw i64 %shr2.i.i.i.i, %mul.i3.i.i.i.i
  br label %if.end.i69.i.i

if.end.i69.i.i:                                   ; preds = %if.then.i.i.i.i, %if.end11.i.i.i
  %retval.0.i.ph.i.i = phi i64 [ %shr2.i.i.i.i, %if.end11.i.i.i ], [ %add.i.i.i.i, %if.then.i.i.i.i ]
  %10 = ptrtoint ptr %load_sum.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %retval.0.i.ph.i.i, ptr %load_sum.i.i, align 8
  %runnable_sum117.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 51, i32 2
  %11 = ptrtoint ptr %runnable_sum117.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %runnable_sum117.i.i, align 16
  br i1 %cmp2.i.i.i, label %if.then10.i74.i.i, label %if.end11.i83.i.i, !prof !35

if.then10.i74.i.i:                                ; preds = %if.end.i69.i.i
  %div18.i70.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i71.i.i = zext i32 %div18.i70.i.i to i64
  %shr.i72.i.i = lshr i64 %12, %sh_prom.i71.i.i
  %rem.i73.i.i = and i32 %conv.i.i.i, 31
  br label %if.end11.i83.i.i

if.end11.i83.i.i:                                 ; preds = %if.then10.i74.i.i, %if.end.i69.i.i
  %val.addr.0.i75.i.i = phi i64 [ %shr.i72.i.i, %if.then10.i74.i.i ], [ %12, %if.end.i69.i.i ]
  %local_n.0.i76.i.i = phi i32 [ %rem.i73.i.i, %if.then10.i74.i.i ], [ %conv.i.i.i, %if.end.i69.i.i ]
  %arrayidx.i77.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i76.i.i
  %13 = ptrtoint ptr %arrayidx.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i77.i.i, align 4
  %conv.i.i.i78.i.i = and i64 %val.addr.0.i75.i.i, 4294967295
  %conv1.i.i.i79.i.i = zext i32 %14 to i64
  %mul.i.i.i80.i.i = mul nuw i64 %conv.i.i.i78.i.i, %conv1.i.i.i79.i.i
  %shr2.i.i81.i.i = lshr i64 %mul.i.i.i80.i.i, 32
  %tobool.not.i.i82.i.i = icmp ult i64 %val.addr.0.i75.i.i, 4294967296
  br i1 %tobool.not.i.i82.i.i, label %if.end.i93.i.i, label %if.then.i.i87.i.i

if.then.i.i87.i.i:                                ; preds = %if.end11.i83.i.i
  %shr.i.i84.i.i = lshr i64 %val.addr.0.i75.i.i, 32
  %mul.i3.i.i85.i.i = mul nuw i64 %shr.i.i84.i.i, %conv1.i.i.i79.i.i
  %add.i.i86.i.i = add nuw i64 %shr2.i.i81.i.i, %mul.i3.i.i85.i.i
  br label %if.end.i93.i.i

if.end.i93.i.i:                                   ; preds = %if.then.i.i87.i.i, %if.end11.i83.i.i
  %retval.0.i88.ph.i.i = phi i64 [ %shr2.i.i81.i.i, %if.end11.i83.i.i ], [ %add.i.i86.i.i, %if.then.i.i87.i.i ]
  %15 = ptrtoint ptr %runnable_sum117.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %retval.0.i88.ph.i.i, ptr %runnable_sum117.i.i, align 16
  %util_sum122.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 51, i32 3
  %16 = ptrtoint ptr %util_sum122.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %util_sum122.i.i, align 8
  %conv5123.i.i = zext i32 %17 to i64
  br i1 %cmp2.i.i.i, label %if.then10.i98.i.i, label %decay_load.exit113.thread.i.i, !prof !35

if.then10.i98.i.i:                                ; preds = %if.end.i93.i.i
  %div18.i94.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i95.i.i = zext i32 %div18.i94.i.i to i64
  %shr.i96.i.i = lshr i64 %conv5123.i.i, %sh_prom.i95.i.i
  %rem.i97.i.i = and i32 %conv.i.i.i, 31
  br label %decay_load.exit113.thread.i.i

decay_load.exit113.i.i:                           ; preds = %if.then.i.i
  %18 = trunc i64 %add.i.i to i32
  %extract.t64.i.i = and i32 %18, 1023
  %19 = call ptr @memset(ptr %load_sum.i.i, i32 0, i32 20)
  br i1 %tobool5.not.i, label %if.end14.thread.i.i, label %if.end14.thread145.i.i

decay_load.exit113.thread.i.i:                    ; preds = %if.then10.i98.i.i, %if.end.i93.i.i
  %val.addr.0.i99.i.i = phi i64 [ %shr.i96.i.i, %if.then10.i98.i.i ], [ %conv5123.i.i, %if.end.i93.i.i ]
  %local_n.0.i100.i.i = phi i32 [ %rem.i97.i.i, %if.then10.i98.i.i ], [ %conv.i.i.i, %if.end.i93.i.i ]
  %arrayidx.i101.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i100.i.i
  %20 = ptrtoint ptr %arrayidx.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i101.i.i, align 4
  %conv1.i.i.i103.i.i = zext i32 %21 to i64
  %mul.i.i.i104.i.i = mul nuw i64 %val.addr.0.i99.i.i, %conv1.i.i.i103.i.i
  %shr2.i.i105.i.i = lshr i64 %mul.i.i.i104.i.i, 32
  %conv7129.i.i = trunc i64 %shr2.i.i105.i.i to i32
  %22 = ptrtoint ptr %util_sum122.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv7129.i.i, ptr %util_sum122.i.i, align 8
  %23 = trunc i64 %add.i.i to i32
  %extract.t64132.i.i = and i32 %23, 1023
  br i1 %tobool5.not.i, label %if.end14.thread.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %decay_load.exit113.thread.i.i
  %sub135.i.i = sub i32 1024, %5
  %conv.i114136.i.i = zext i32 %sub135.i.i to i64
  br i1 %cmp2.i.i.i, label %if.then10.i15.i.i.i, label %if.end.i10.i.i.i, !prof !35

if.end.i10.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %conv.i.i.i
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv1.i.i.i.i.i.i = zext i32 %25 to i64
  %mul.i.i.i.i.i.i = mul nuw i64 %conv1.i.i.i.i.i.i, %conv.i114136.i.i
  %shr2.i.i.i.i.i = lshr i64 %mul.i.i.i.i.i.i, 32
  %conv1.i.i.i = trunc i64 %shr2.i.i.i.i.i to i32
  br label %if.end11.i24.i.i.i

if.then10.i15.i.i.i:                              ; preds = %if.end.i.i.i.i
  %div18.i.i.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i.i.i.i = zext i32 %div18.i.i.i.i to i64
  %shr.i.i115.i.i = lshr i64 %conv.i114136.i.i, %sh_prom.i.i.i.i
  %rem.i.i.i.i = and i32 %conv.i.i.i, 31
  %arrayidx.i36.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %rem.i.i.i.i
  %26 = ptrtoint ptr %arrayidx.i36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i36.i.i.i, align 4
  %conv1.i.i.i37.i.i.i = zext i32 %27 to i64
  %mul.i.i.i38.i.i.i = mul nuw nsw i64 %shr.i.i115.i.i, %conv1.i.i.i37.i.i.i
  %shr2.i.i39.i.i.i = lshr i64 %mul.i.i.i38.i.i.i, 32
  %conv140.i.i.i = trunc i64 %shr2.i.i39.i.i.i to i32
  %shr.i13.i.i.i = lshr i64 47742, %sh_prom.i.i.i.i
  br label %if.end11.i24.i.i.i

if.end11.i24.i.i.i:                               ; preds = %if.then10.i15.i.i.i, %if.end.i10.i.i.i
  %conv141.i.i.i = phi i32 [ %conv140.i.i.i, %if.then10.i15.i.i.i ], [ %conv1.i.i.i, %if.end.i10.i.i.i ]
  %val.addr.0.i16.i.i.i = phi i64 [ %shr.i13.i.i.i, %if.then10.i15.i.i.i ], [ 47742, %if.end.i10.i.i.i ]
  %local_n.0.i17.i.i.i = phi i32 [ %rem.i.i.i.i, %if.then10.i15.i.i.i ], [ %conv.i.i.i, %if.end.i10.i.i.i ]
  %arrayidx.i18.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i17.i.i.i
  %28 = ptrtoint ptr %arrayidx.i18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i18.i.i.i, align 4
  %conv1.i.i.i20.i.i.i = zext i32 %29 to i64
  %mul.i.i.i21.i.i.i = mul nuw nsw i64 %val.addr.0.i16.i.i.i, %conv1.i.i.i20.i.i.i
  %shr2.i.i22.i.i.i = lshr i64 %mul.i.i.i21.i.i.i, 32
  %extract.t.i.i.i = trunc i64 %shr2.i.i22.i.i.i to i32
  %phi.bo.i.i.i = add i32 %conv141.i.i.i, 46718
  %30 = sub i32 %phi.bo.i.i.i, %extract.t.i.i.i
  br label %if.end14.thread145.i.i

if.end14.thread145.i.i:                           ; preds = %if.end11.i24.i.i.i, %decay_load.exit113.i.i
  %extract.t64133138.i.i = phi i32 [ %extract.t64132.i.i, %if.end11.i24.i.i.i ], [ %extract.t64.i.i, %decay_load.exit113.i.i ]
  %add.i.i.i = phi i32 [ %30, %if.end11.i24.i.i.i ], [ 46718, %decay_load.exit113.i.i ]
  %add5.i.i.i = add i32 %add.i.i.i, %extract.t64133138.i.i
  %31 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %extract.t64133138.i.i, ptr %period_contrib.i.i, align 4
  br label %if.then31.i.i

if.end14.thread.i.i:                              ; preds = %decay_load.exit113.thread.i.i, %decay_load.exit113.i.i
  %delta.addr.0.off0.ph.i.i = phi i32 [ %extract.t64132.i.i, %decay_load.exit113.thread.i.i ], [ %extract.t64.i.i, %decay_load.exit113.i.i ]
  %32 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %delta.addr.0.off0.ph.i.i, ptr %period_contrib.i.i, align 4
  br label %___update_load_sum.exit

if.end14.i.i:                                     ; preds = %if.end3.i
  %conv.i.i = trunc i64 %shr.i to i32
  %extract.t65.i.i = trunc i64 %add.i.i to i32
  %33 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %extract.t65.i.i, ptr %period_contrib.i.i, align 4
  br i1 %tobool5.not.i, label %___update_load_sum.exit, label %if.then31.i.i

if.then31.i.i:                                    ; preds = %if.end14.i.i, %if.end14.thread145.i.i
  %contrib.0149.i.i = phi i32 [ %add5.i.i.i, %if.end14.thread145.i.i ], [ %conv.i.i, %if.end14.i.i ]
  %mul.i.i = mul i32 %contrib.0149.i.i, %running
  %conv19.i.i = zext i32 %mul.i.i to i64
  %load_sum20.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 51, i32 1
  %34 = ptrtoint ptr %load_sum20.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %load_sum20.i.i, align 8
  %add21.i.i = add i64 %35, %conv19.i.i
  store i64 %add21.i.i, ptr %load_sum20.i.i, align 8
  %mul25.i.i = shl i32 %running, 10
  %shl.i.i = mul i32 %mul25.i.i, %contrib.0149.i.i
  %conv26.i.i = zext i32 %shl.i.i to i64
  %runnable_sum27.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 51, i32 2
  %36 = ptrtoint ptr %runnable_sum27.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %runnable_sum27.i.i, align 16
  %add28.i.i = add i64 %37, %conv26.i.i
  store i64 %add28.i.i, ptr %runnable_sum27.i.i, align 16
  %shl32.i.i = shl i32 %contrib.0149.i.i, 10
  %util_sum33.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 51, i32 3
  %38 = ptrtoint ptr %util_sum33.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %util_sum33.i.i, align 8
  %add34.i.i = add i32 %39, %shl32.i.i
  store i32 %add34.i.i, ptr %util_sum33.i.i, align 8
  br label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %if.then31.i.i, %if.end14.i.i, %if.end14.thread.i.i
  %conv36.i.i = trunc i64 %div63.i.i to i32
  %tobool8.not.i.not = icmp eq i32 %conv36.i.i, 0
  br i1 %tobool8.not.i.not, label %return, label %if.then

if.then:                                          ; preds = %___update_load_sum.exit
  %40 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %period_contrib.i.i, align 4
  %add.i.i7 = add i32 %41, 46718
  %load_sum.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 51, i32 1
  %42 = ptrtoint ptr %load_sum.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %load_sum.i, align 8
  %cmp164.i.i.i = icmp ult i64 %43, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !36

if.then168.i.i.i:                                 ; preds = %if.then
  %conv169.i.i.i = trunc i64 %43 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %add.i.i7
  br label %if.else162.i.i124.i

if.else174.i.i.i:                                 ; preds = %if.then
  %44 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.i7, i64 %43) #6, !srcloc !37
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %44, 1
  %extract.t137.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %if.else162.i.i124.i

if.else162.i.i124.i:                              ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t137.i, %if.else174.i.i.i ]
  %load_avg.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 51, i32 5
  %45 = ptrtoint ptr %load_avg.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %load_avg.i, align 32
  %runnable_sum.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 51, i32 2
  %46 = ptrtoint ptr %runnable_sum.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %runnable_sum.i, align 16
  %cmp164.i.i123.i = icmp ult i64 %47, 4294967296
  br i1 %cmp164.i.i123.i, label %if.then168.i.i128.i, label %if.else174.i.i130.i, !prof !36

if.then168.i.i128.i:                              ; preds = %if.else162.i.i124.i
  %conv169.i.i125.i = trunc i64 %47 to i32
  %div172.i.i126.i = udiv i32 %conv169.i.i125.i, %add.i.i7
  br label %___update_load_avg.exit

if.else174.i.i130.i:                              ; preds = %if.else162.i.i124.i
  %48 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.i7, i64 %47) #6, !srcloc !37
  %asmresult1.i.i.i129.i = extractvalue { i64, i64 } %48, 1
  %extract.t139.i = trunc i64 %asmresult1.i.i.i129.i to i32
  br label %___update_load_avg.exit

___update_load_avg.exit:                          ; preds = %if.else174.i.i130.i, %if.then168.i.i128.i
  %dividend.addr.0.i.i131.off0.i = phi i32 [ %div172.i.i126.i, %if.then168.i.i128.i ], [ %extract.t139.i, %if.else174.i.i130.i ]
  %runnable_avg.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 51, i32 6
  %49 = ptrtoint ptr %runnable_avg.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %dividend.addr.0.i.i131.off0.i, ptr %runnable_avg.i, align 4
  %util_sum.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 51, i32 3
  %50 = ptrtoint ptr %util_sum.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %util_sum.i, align 8
  %div.i = udiv i32 %51, %add.i.i7
  %util_avg.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 51, i32 7
  %52 = ptrtoint ptr %util_avg.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %div.i, ptr %util_avg.i, align 8
  tail call fastcc void @trace_pelt_dl_tp(ptr noundef %rq)
  br label %return

return:                                           ; preds = %___update_load_avg.exit, %___update_load_sum.exit, %if.end.i, %if.then.i
  %retval.0 = phi i32 [ 1, %___update_load_avg.exit ], [ 0, %___update_load_sum.exit ], [ 0, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pelt_dl_tp(ptr noundef %rq) unnamed_addr #1 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_dl_tp, i32 0, i32 1), ptr blockaddress(@trace_pelt_dl_tp, %do.body)) #4
          to label %if.end48 [label %do.body], !srcloc !38

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !36

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %do.body
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end69, label %cleanup.thread

cleanup.thread:                                   ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !47
  %call42 = tail call i32 @__traceiter_pelt_dl_tp(ptr noundef null, ptr noundef %rq) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !48
  %13 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %cpu_online.exit85, label %land.rhs.i.i.i.i79

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %cpu_online.exit85, label %if.then.i.i.i.i80, !prof !36

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79, %if.end48
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_dl_tp, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_dl_tp, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #4
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #4
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_pelt_dl_tp.__warned, align 1
  br i1 %.b72, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_pelt_dl_tp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 701, ptr noundef nonnull @.str.1) #4
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !42
  %31 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85, %cpu_online.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @update_thermal_load_avg(i64 noundef %now, ptr noundef %rq, i64 noundef %capacity) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %avg_thermal = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 53
  %conv = trunc i64 %capacity to i32
  %0 = ptrtoint ptr %avg_thermal to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %avg_thermal, align 128
  %sub.i = sub i64 %now, %1
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %avg_thermal to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %now, ptr %avg_thermal, align 128
  br label %return

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp ult i64 %sub.i, 1024
  br i1 %tobool.not.i, label %return, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %shr.i = lshr i64 %sub.i, 10
  %shl.i = and i64 %sub.i, -1024
  %add.i = add i64 %shl.i, %1
  %3 = ptrtoint ptr %avg_thermal to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %add.i, ptr %avg_thermal, align 128
  %tobool5.not.i = icmp eq i32 %conv, 0
  %period_contrib.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 53, i32 4
  %4 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_contrib.i.i, align 4
  %conv1.i.i = zext i32 %5 to i64
  %add.i.i = add nuw nsw i64 %shr.i, %conv1.i.i
  %div63.i.i = lshr i64 %add.i.i, 10
  %tobool.not.i.i = icmp ult i64 %add.i.i, 1024
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  %load_sum.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 53, i32 1
  %6 = ptrtoint ptr %load_sum.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %load_sum.i.i, align 8
  %cmp.i.i.i = icmp ugt i64 %add.i.i, 2065407
  br i1 %cmp.i.i.i, label %decay_load.exit113.i.i, label %if.end.i.i.i, !prof !35

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %conv.i.i.i = trunc i64 %div63.i.i to i32
  %cmp2.i.i.i = icmp ugt i32 %conv.i.i.i, 31
  br i1 %cmp2.i.i.i, label %if.then10.i.i.i, label %if.end11.i.i.i, !prof !35

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  %div18.i.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i.i.i = zext i32 %div18.i.i.i to i64
  %shr.i.i.i = lshr i64 %7, %sh_prom.i.i.i
  %rem.i.i.i = and i32 %conv.i.i.i, 31
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.end.i.i.i
  %val.addr.0.i.i.i = phi i64 [ %shr.i.i.i, %if.then10.i.i.i ], [ %7, %if.end.i.i.i ]
  %local_n.0.i.i.i = phi i32 [ %rem.i.i.i, %if.then10.i.i.i ], [ %conv.i.i.i, %if.end.i.i.i ]
  %arrayidx.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i.i.i.i.i = and i64 %val.addr.0.i.i.i, 4294967295
  %conv1.i.i.i.i.i = zext i32 %9 to i64
  %mul.i.i.i.i.i = mul nuw i64 %conv.i.i.i.i.i, %conv1.i.i.i.i.i
  %shr2.i.i.i.i = lshr i64 %mul.i.i.i.i.i, 32
  %tobool.not.i.i.i.i = icmp ult i64 %val.addr.0.i.i.i, 4294967296
  br i1 %tobool.not.i.i.i.i, label %if.end.i69.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end11.i.i.i
  %shr.i.i.i.i = lshr i64 %val.addr.0.i.i.i, 32
  %mul.i3.i.i.i.i = mul nuw i64 %shr.i.i.i.i, %conv1.i.i.i.i.i
  %add.i.i.i.i = add nuw i64 %shr2.i.i.i.i, %mul.i3.i.i.i.i
  br label %if.end.i69.i.i

if.end.i69.i.i:                                   ; preds = %if.then.i.i.i.i, %if.end11.i.i.i
  %retval.0.i.ph.i.i = phi i64 [ %shr2.i.i.i.i, %if.end11.i.i.i ], [ %add.i.i.i.i, %if.then.i.i.i.i ]
  %10 = ptrtoint ptr %load_sum.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %retval.0.i.ph.i.i, ptr %load_sum.i.i, align 8
  %runnable_sum117.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 53, i32 2
  %11 = ptrtoint ptr %runnable_sum117.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %runnable_sum117.i.i, align 16
  br i1 %cmp2.i.i.i, label %if.then10.i74.i.i, label %if.end11.i83.i.i, !prof !35

if.then10.i74.i.i:                                ; preds = %if.end.i69.i.i
  %div18.i70.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i71.i.i = zext i32 %div18.i70.i.i to i64
  %shr.i72.i.i = lshr i64 %12, %sh_prom.i71.i.i
  %rem.i73.i.i = and i32 %conv.i.i.i, 31
  br label %if.end11.i83.i.i

if.end11.i83.i.i:                                 ; preds = %if.then10.i74.i.i, %if.end.i69.i.i
  %val.addr.0.i75.i.i = phi i64 [ %shr.i72.i.i, %if.then10.i74.i.i ], [ %12, %if.end.i69.i.i ]
  %local_n.0.i76.i.i = phi i32 [ %rem.i73.i.i, %if.then10.i74.i.i ], [ %conv.i.i.i, %if.end.i69.i.i ]
  %arrayidx.i77.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i76.i.i
  %13 = ptrtoint ptr %arrayidx.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i77.i.i, align 4
  %conv.i.i.i78.i.i = and i64 %val.addr.0.i75.i.i, 4294967295
  %conv1.i.i.i79.i.i = zext i32 %14 to i64
  %mul.i.i.i80.i.i = mul nuw i64 %conv.i.i.i78.i.i, %conv1.i.i.i79.i.i
  %shr2.i.i81.i.i = lshr i64 %mul.i.i.i80.i.i, 32
  %tobool.not.i.i82.i.i = icmp ult i64 %val.addr.0.i75.i.i, 4294967296
  br i1 %tobool.not.i.i82.i.i, label %if.end.i93.i.i, label %if.then.i.i87.i.i

if.then.i.i87.i.i:                                ; preds = %if.end11.i83.i.i
  %shr.i.i84.i.i = lshr i64 %val.addr.0.i75.i.i, 32
  %mul.i3.i.i85.i.i = mul nuw i64 %shr.i.i84.i.i, %conv1.i.i.i79.i.i
  %add.i.i86.i.i = add nuw i64 %shr2.i.i81.i.i, %mul.i3.i.i85.i.i
  br label %if.end.i93.i.i

if.end.i93.i.i:                                   ; preds = %if.then.i.i87.i.i, %if.end11.i83.i.i
  %retval.0.i88.ph.i.i = phi i64 [ %shr2.i.i81.i.i, %if.end11.i83.i.i ], [ %add.i.i86.i.i, %if.then.i.i87.i.i ]
  %15 = ptrtoint ptr %runnable_sum117.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %retval.0.i88.ph.i.i, ptr %runnable_sum117.i.i, align 16
  %util_sum122.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 53, i32 3
  %16 = ptrtoint ptr %util_sum122.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %util_sum122.i.i, align 8
  %conv5123.i.i = zext i32 %17 to i64
  br i1 %cmp2.i.i.i, label %if.then10.i98.i.i, label %decay_load.exit113.thread.i.i, !prof !35

if.then10.i98.i.i:                                ; preds = %if.end.i93.i.i
  %div18.i94.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i95.i.i = zext i32 %div18.i94.i.i to i64
  %shr.i96.i.i = lshr i64 %conv5123.i.i, %sh_prom.i95.i.i
  %rem.i97.i.i = and i32 %conv.i.i.i, 31
  br label %decay_load.exit113.thread.i.i

decay_load.exit113.i.i:                           ; preds = %if.then.i.i
  %18 = trunc i64 %add.i.i to i32
  %extract.t64.i.i = and i32 %18, 1023
  %19 = call ptr @memset(ptr %load_sum.i.i, i32 0, i32 20)
  br i1 %tobool5.not.i, label %if.end14.thread.i.i, label %if.end14.thread145.i.i

decay_load.exit113.thread.i.i:                    ; preds = %if.then10.i98.i.i, %if.end.i93.i.i
  %val.addr.0.i99.i.i = phi i64 [ %shr.i96.i.i, %if.then10.i98.i.i ], [ %conv5123.i.i, %if.end.i93.i.i ]
  %local_n.0.i100.i.i = phi i32 [ %rem.i97.i.i, %if.then10.i98.i.i ], [ %conv.i.i.i, %if.end.i93.i.i ]
  %arrayidx.i101.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i100.i.i
  %20 = ptrtoint ptr %arrayidx.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i101.i.i, align 4
  %conv1.i.i.i103.i.i = zext i32 %21 to i64
  %mul.i.i.i104.i.i = mul nuw i64 %val.addr.0.i99.i.i, %conv1.i.i.i103.i.i
  %shr2.i.i105.i.i = lshr i64 %mul.i.i.i104.i.i, 32
  %conv7129.i.i = trunc i64 %shr2.i.i105.i.i to i32
  %22 = ptrtoint ptr %util_sum122.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv7129.i.i, ptr %util_sum122.i.i, align 8
  %23 = trunc i64 %add.i.i to i32
  %extract.t64132.i.i = and i32 %23, 1023
  br i1 %tobool5.not.i, label %if.end14.thread.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %decay_load.exit113.thread.i.i
  %sub135.i.i = sub i32 1024, %5
  %conv.i114136.i.i = zext i32 %sub135.i.i to i64
  br i1 %cmp2.i.i.i, label %if.then10.i15.i.i.i, label %if.end.i10.i.i.i, !prof !35

if.end.i10.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %conv.i.i.i
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv1.i.i.i.i.i.i = zext i32 %25 to i64
  %mul.i.i.i.i.i.i = mul nuw i64 %conv1.i.i.i.i.i.i, %conv.i114136.i.i
  %shr2.i.i.i.i.i = lshr i64 %mul.i.i.i.i.i.i, 32
  %conv1.i.i.i = trunc i64 %shr2.i.i.i.i.i to i32
  br label %if.end11.i24.i.i.i

if.then10.i15.i.i.i:                              ; preds = %if.end.i.i.i.i
  %div18.i.i.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i.i.i.i = zext i32 %div18.i.i.i.i to i64
  %shr.i.i115.i.i = lshr i64 %conv.i114136.i.i, %sh_prom.i.i.i.i
  %rem.i.i.i.i = and i32 %conv.i.i.i, 31
  %arrayidx.i36.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %rem.i.i.i.i
  %26 = ptrtoint ptr %arrayidx.i36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i36.i.i.i, align 4
  %conv1.i.i.i37.i.i.i = zext i32 %27 to i64
  %mul.i.i.i38.i.i.i = mul nuw nsw i64 %shr.i.i115.i.i, %conv1.i.i.i37.i.i.i
  %shr2.i.i39.i.i.i = lshr i64 %mul.i.i.i38.i.i.i, 32
  %conv140.i.i.i = trunc i64 %shr2.i.i39.i.i.i to i32
  %shr.i13.i.i.i = lshr i64 47742, %sh_prom.i.i.i.i
  br label %if.end11.i24.i.i.i

if.end11.i24.i.i.i:                               ; preds = %if.then10.i15.i.i.i, %if.end.i10.i.i.i
  %conv141.i.i.i = phi i32 [ %conv140.i.i.i, %if.then10.i15.i.i.i ], [ %conv1.i.i.i, %if.end.i10.i.i.i ]
  %val.addr.0.i16.i.i.i = phi i64 [ %shr.i13.i.i.i, %if.then10.i15.i.i.i ], [ 47742, %if.end.i10.i.i.i ]
  %local_n.0.i17.i.i.i = phi i32 [ %rem.i.i.i.i, %if.then10.i15.i.i.i ], [ %conv.i.i.i, %if.end.i10.i.i.i ]
  %arrayidx.i18.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i17.i.i.i
  %28 = ptrtoint ptr %arrayidx.i18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i18.i.i.i, align 4
  %conv1.i.i.i20.i.i.i = zext i32 %29 to i64
  %mul.i.i.i21.i.i.i = mul nuw nsw i64 %val.addr.0.i16.i.i.i, %conv1.i.i.i20.i.i.i
  %shr2.i.i22.i.i.i = lshr i64 %mul.i.i.i21.i.i.i, 32
  %extract.t.i.i.i = trunc i64 %shr2.i.i22.i.i.i to i32
  %phi.bo.i.i.i = add i32 %conv141.i.i.i, 46718
  %30 = sub i32 %phi.bo.i.i.i, %extract.t.i.i.i
  br label %if.end14.thread145.i.i

if.end14.thread145.i.i:                           ; preds = %if.end11.i24.i.i.i, %decay_load.exit113.i.i
  %extract.t64133138.i.i = phi i32 [ %extract.t64132.i.i, %if.end11.i24.i.i.i ], [ %extract.t64.i.i, %decay_load.exit113.i.i ]
  %add.i.i.i = phi i32 [ %30, %if.end11.i24.i.i.i ], [ 46718, %decay_load.exit113.i.i ]
  %add5.i.i.i = add i32 %add.i.i.i, %extract.t64133138.i.i
  %31 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %extract.t64133138.i.i, ptr %period_contrib.i.i, align 4
  br label %if.then31.i.i

if.end14.thread.i.i:                              ; preds = %decay_load.exit113.thread.i.i, %decay_load.exit113.i.i
  %delta.addr.0.off0.ph.i.i = phi i32 [ %extract.t64132.i.i, %decay_load.exit113.thread.i.i ], [ %extract.t64.i.i, %decay_load.exit113.i.i ]
  %32 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %delta.addr.0.off0.ph.i.i, ptr %period_contrib.i.i, align 4
  br label %___update_load_sum.exit

if.end14.i.i:                                     ; preds = %if.end3.i
  %conv.i.i = trunc i64 %shr.i to i32
  %extract.t65.i.i = trunc i64 %add.i.i to i32
  %33 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %extract.t65.i.i, ptr %period_contrib.i.i, align 4
  br i1 %tobool5.not.i, label %___update_load_sum.exit, label %if.then31.i.i

if.then31.i.i:                                    ; preds = %if.end14.i.i, %if.end14.thread145.i.i
  %contrib.0149.i.i = phi i32 [ %add5.i.i.i, %if.end14.thread145.i.i ], [ %conv.i.i, %if.end14.i.i ]
  %mul.i.i = mul i32 %contrib.0149.i.i, %conv
  %conv19.i.i = zext i32 %mul.i.i to i64
  %load_sum20.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 53, i32 1
  %34 = ptrtoint ptr %load_sum20.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %load_sum20.i.i, align 8
  %add21.i.i = add i64 %35, %conv19.i.i
  store i64 %add21.i.i, ptr %load_sum20.i.i, align 8
  %mul25.i.i = shl i32 %conv, 10
  %shl.i.i = mul i32 %mul25.i.i, %contrib.0149.i.i
  %conv26.i.i = zext i32 %shl.i.i to i64
  %runnable_sum27.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 53, i32 2
  %36 = ptrtoint ptr %runnable_sum27.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %runnable_sum27.i.i, align 16
  %add28.i.i = add i64 %37, %conv26.i.i
  store i64 %add28.i.i, ptr %runnable_sum27.i.i, align 16
  %shl32.i.i = shl i32 %contrib.0149.i.i, 10
  %util_sum33.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 53, i32 3
  %38 = ptrtoint ptr %util_sum33.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %util_sum33.i.i, align 8
  %add34.i.i = add i32 %39, %shl32.i.i
  store i32 %add34.i.i, ptr %util_sum33.i.i, align 8
  br label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %if.then31.i.i, %if.end14.i.i, %if.end14.thread.i.i
  %conv36.i.i = trunc i64 %div63.i.i to i32
  %tobool8.not.i.not = icmp eq i32 %conv36.i.i, 0
  br i1 %tobool8.not.i.not, label %return, label %if.then

if.then:                                          ; preds = %___update_load_sum.exit
  %40 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %period_contrib.i.i, align 4
  %add.i.i9 = add i32 %41, 46718
  %load_sum.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 53, i32 1
  %42 = ptrtoint ptr %load_sum.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %load_sum.i, align 8
  %cmp164.i.i.i = icmp ult i64 %43, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !36

if.then168.i.i.i:                                 ; preds = %if.then
  %conv169.i.i.i = trunc i64 %43 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %add.i.i9
  br label %if.else162.i.i124.i

if.else174.i.i.i:                                 ; preds = %if.then
  %44 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.i9, i64 %43) #6, !srcloc !37
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %44, 1
  %extract.t137.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %if.else162.i.i124.i

if.else162.i.i124.i:                              ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t137.i, %if.else174.i.i.i ]
  %load_avg.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 53, i32 5
  %45 = ptrtoint ptr %load_avg.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %load_avg.i, align 32
  %runnable_sum.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 53, i32 2
  %46 = ptrtoint ptr %runnable_sum.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %runnable_sum.i, align 16
  %cmp164.i.i123.i = icmp ult i64 %47, 4294967296
  br i1 %cmp164.i.i123.i, label %if.then168.i.i128.i, label %if.else174.i.i130.i, !prof !36

if.then168.i.i128.i:                              ; preds = %if.else162.i.i124.i
  %conv169.i.i125.i = trunc i64 %47 to i32
  %div172.i.i126.i = udiv i32 %conv169.i.i125.i, %add.i.i9
  br label %___update_load_avg.exit

if.else174.i.i130.i:                              ; preds = %if.else162.i.i124.i
  %48 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.i9, i64 %47) #6, !srcloc !37
  %asmresult1.i.i.i129.i = extractvalue { i64, i64 } %48, 1
  %extract.t139.i = trunc i64 %asmresult1.i.i.i129.i to i32
  br label %___update_load_avg.exit

___update_load_avg.exit:                          ; preds = %if.else174.i.i130.i, %if.then168.i.i128.i
  %dividend.addr.0.i.i131.off0.i = phi i32 [ %div172.i.i126.i, %if.then168.i.i128.i ], [ %extract.t139.i, %if.else174.i.i130.i ]
  %runnable_avg.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 53, i32 6
  %49 = ptrtoint ptr %runnable_avg.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %dividend.addr.0.i.i131.off0.i, ptr %runnable_avg.i, align 4
  %util_sum.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 53, i32 3
  %50 = ptrtoint ptr %util_sum.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %util_sum.i, align 8
  %div.i = udiv i32 %51, %add.i.i9
  %util_avg.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 53, i32 7
  %52 = ptrtoint ptr %util_avg.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %div.i, ptr %util_avg.i, align 8
  tail call fastcc void @trace_pelt_thermal_tp(ptr noundef %rq)
  br label %return

return:                                           ; preds = %___update_load_avg.exit, %___update_load_sum.exit, %if.end.i, %if.then.i
  %retval.0 = phi i32 [ 1, %___update_load_avg.exit ], [ 0, %___update_load_sum.exit ], [ 0, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pelt_thermal_tp(ptr noundef %rq) unnamed_addr #1 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_thermal_tp, i32 0, i32 1), ptr blockaddress(@trace_pelt_thermal_tp, %do.body)) #4
          to label %if.end48 [label %do.body], !srcloc !38

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !36

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %do.body
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end69, label %cleanup.thread

cleanup.thread:                                   ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !49
  %call42 = tail call i32 @__traceiter_pelt_thermal_tp(ptr noundef null, ptr noundef %rq) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !50
  %13 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %cpu_online.exit85, label %land.rhs.i.i.i.i79

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %cpu_online.exit85, label %if.then.i.i.i.i80, !prof !36

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79, %if.end48
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_thermal_tp, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_thermal_tp, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #4
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #4
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_pelt_thermal_tp.__warned, align 1
  br i1 %.b72, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_pelt_thermal_tp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 705, ptr noundef nonnull @.str.1) #4
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !42
  %31 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85, %cpu_online.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @update_irq_load_avg(ptr noundef %rq, i64 noundef %running) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %mul = and i64 %running, 18014398509481983
  %0 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i119 = add i32 %3, ptrtoint (ptr @cpu_scale to i32)
  %4 = inttoptr i32 %add.i119 to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %conv4 = zext i32 %6 to i64
  %mul5 = mul i64 %mul, %conv4
  %shr6 = lshr i64 %mul5, 10
  %clock = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 26
  %7 = ptrtoint ptr %clock to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %clock, align 32
  %sub = sub i64 %8, %shr6
  %avg_irq = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52
  %9 = ptrtoint ptr %avg_irq to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %avg_irq, align 128
  %sub.i = sub i64 %sub, %10
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %11 = ptrtoint ptr %avg_irq to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %sub, ptr %avg_irq, align 128
  br label %___update_load_sum.exit

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp ult i64 %sub.i, 1024
  br i1 %tobool.not.i, label %___update_load_sum.exit, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %shr.i = lshr i64 %sub.i, 10
  %shl.i = and i64 %sub.i, -1024
  %add.i = add i64 %shl.i, %10
  %12 = ptrtoint ptr %avg_irq to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add.i, ptr %avg_irq, align 128
  %period_contrib.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 4
  %13 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %period_contrib.i.i, align 4
  %conv1.i.i = zext i32 %14 to i64
  %add.i.i = add nuw nsw i64 %shr.i, %conv1.i.i
  %div63.i.i = lshr i64 %add.i.i, 10
  %tobool.not.i.i = icmp ult i64 %add.i.i, 1024
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  %load_sum.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 1
  %15 = ptrtoint ptr %load_sum.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %load_sum.i.i, align 8
  %cmp.i.i.i = icmp ugt i64 %add.i.i, 2065407
  br i1 %cmp.i.i.i, label %decay_load.exit113.i.i, label %if.end.i.i.i, !prof !35

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %conv.i.i.i = trunc i64 %div63.i.i to i32
  %cmp2.i.i.i = icmp ugt i32 %conv.i.i.i, 31
  br i1 %cmp2.i.i.i, label %if.then10.i.i.i, label %if.end11.i.i.i, !prof !35

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  %div18.i.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i.i.i = zext i32 %div18.i.i.i to i64
  %shr.i.i.i = lshr i64 %16, %sh_prom.i.i.i
  %rem.i.i.i = and i32 %conv.i.i.i, 31
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.end.i.i.i
  %val.addr.0.i.i.i = phi i64 [ %shr.i.i.i, %if.then10.i.i.i ], [ %16, %if.end.i.i.i ]
  %local_n.0.i.i.i = phi i32 [ %rem.i.i.i, %if.then10.i.i.i ], [ %conv.i.i.i, %if.end.i.i.i ]
  %arrayidx.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i.i.i.i.i = and i64 %val.addr.0.i.i.i, 4294967295
  %conv1.i.i.i.i.i = zext i32 %18 to i64
  %mul.i.i.i.i.i = mul nuw i64 %conv.i.i.i.i.i, %conv1.i.i.i.i.i
  %shr2.i.i.i.i = lshr i64 %mul.i.i.i.i.i, 32
  %tobool.not.i.i.i.i = icmp ult i64 %val.addr.0.i.i.i, 4294967296
  br i1 %tobool.not.i.i.i.i, label %if.end.i69.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end11.i.i.i
  %shr.i.i.i.i = lshr i64 %val.addr.0.i.i.i, 32
  %mul.i3.i.i.i.i = mul nuw i64 %shr.i.i.i.i, %conv1.i.i.i.i.i
  %add.i.i.i.i = add nuw i64 %shr2.i.i.i.i, %mul.i3.i.i.i.i
  br label %if.end.i69.i.i

if.end.i69.i.i:                                   ; preds = %if.then.i.i.i.i, %if.end11.i.i.i
  %retval.0.i.ph.i.i = phi i64 [ %shr2.i.i.i.i, %if.end11.i.i.i ], [ %add.i.i.i.i, %if.then.i.i.i.i ]
  %19 = ptrtoint ptr %load_sum.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %retval.0.i.ph.i.i, ptr %load_sum.i.i, align 8
  %runnable_sum117.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 2
  %20 = ptrtoint ptr %runnable_sum117.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %runnable_sum117.i.i, align 16
  br i1 %cmp2.i.i.i, label %if.then10.i74.i.i, label %if.end11.i83.i.i, !prof !35

if.then10.i74.i.i:                                ; preds = %if.end.i69.i.i
  %div18.i70.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i71.i.i = zext i32 %div18.i70.i.i to i64
  %shr.i72.i.i = lshr i64 %21, %sh_prom.i71.i.i
  %rem.i73.i.i = and i32 %conv.i.i.i, 31
  br label %if.end11.i83.i.i

if.end11.i83.i.i:                                 ; preds = %if.then10.i74.i.i, %if.end.i69.i.i
  %val.addr.0.i75.i.i = phi i64 [ %shr.i72.i.i, %if.then10.i74.i.i ], [ %21, %if.end.i69.i.i ]
  %local_n.0.i76.i.i = phi i32 [ %rem.i73.i.i, %if.then10.i74.i.i ], [ %conv.i.i.i, %if.end.i69.i.i ]
  %arrayidx.i77.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i76.i.i
  %22 = ptrtoint ptr %arrayidx.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i77.i.i, align 4
  %conv.i.i.i78.i.i = and i64 %val.addr.0.i75.i.i, 4294967295
  %conv1.i.i.i79.i.i = zext i32 %23 to i64
  %mul.i.i.i80.i.i = mul nuw i64 %conv.i.i.i78.i.i, %conv1.i.i.i79.i.i
  %shr2.i.i81.i.i = lshr i64 %mul.i.i.i80.i.i, 32
  %tobool.not.i.i82.i.i = icmp ult i64 %val.addr.0.i75.i.i, 4294967296
  br i1 %tobool.not.i.i82.i.i, label %if.end.i93.i.i, label %if.then.i.i87.i.i

if.then.i.i87.i.i:                                ; preds = %if.end11.i83.i.i
  %shr.i.i84.i.i = lshr i64 %val.addr.0.i75.i.i, 32
  %mul.i3.i.i85.i.i = mul nuw i64 %shr.i.i84.i.i, %conv1.i.i.i79.i.i
  %add.i.i86.i.i = add nuw i64 %shr2.i.i81.i.i, %mul.i3.i.i85.i.i
  br label %if.end.i93.i.i

if.end.i93.i.i:                                   ; preds = %if.then.i.i87.i.i, %if.end11.i83.i.i
  %retval.0.i88.ph.i.i = phi i64 [ %shr2.i.i81.i.i, %if.end11.i83.i.i ], [ %add.i.i86.i.i, %if.then.i.i87.i.i ]
  %24 = ptrtoint ptr %runnable_sum117.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %retval.0.i88.ph.i.i, ptr %runnable_sum117.i.i, align 16
  %util_sum122.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 3
  %25 = ptrtoint ptr %util_sum122.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %util_sum122.i.i, align 8
  %conv5123.i.i = zext i32 %26 to i64
  br i1 %cmp2.i.i.i, label %if.then10.i98.i.i, label %decay_load.exit113.thread.i.i, !prof !35

if.then10.i98.i.i:                                ; preds = %if.end.i93.i.i
  %div18.i94.i.i = lshr i32 %conv.i.i.i, 5
  %sh_prom.i95.i.i = zext i32 %div18.i94.i.i to i64
  %shr.i96.i.i = lshr i64 %conv5123.i.i, %sh_prom.i95.i.i
  %rem.i97.i.i = and i32 %conv.i.i.i, 31
  br label %decay_load.exit113.thread.i.i

decay_load.exit113.i.i:                           ; preds = %if.then.i.i
  %27 = trunc i64 %add.i.i to i32
  %28 = call ptr @memset(ptr %load_sum.i.i, i32 0, i32 20)
  br label %if.end14.thread.i.i

decay_load.exit113.thread.i.i:                    ; preds = %if.then10.i98.i.i, %if.end.i93.i.i
  %val.addr.0.i99.i.i = phi i64 [ %shr.i96.i.i, %if.then10.i98.i.i ], [ %conv5123.i.i, %if.end.i93.i.i ]
  %local_n.0.i100.i.i = phi i32 [ %rem.i97.i.i, %if.then10.i98.i.i ], [ %conv.i.i.i, %if.end.i93.i.i ]
  %arrayidx.i101.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i100.i.i
  %29 = ptrtoint ptr %arrayidx.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i101.i.i, align 4
  %conv1.i.i.i103.i.i = zext i32 %30 to i64
  %mul.i.i.i104.i.i = mul nuw i64 %val.addr.0.i99.i.i, %conv1.i.i.i103.i.i
  %shr2.i.i105.i.i = lshr i64 %mul.i.i.i104.i.i, 32
  %conv7129.i.i = trunc i64 %shr2.i.i105.i.i to i32
  %31 = ptrtoint ptr %util_sum122.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv7129.i.i, ptr %util_sum122.i.i, align 8
  %32 = trunc i64 %add.i.i to i32
  br label %if.end14.thread.i.i

if.end14.thread.i.i:                              ; preds = %decay_load.exit113.thread.i.i, %decay_load.exit113.i.i
  %delta.addr.0.off0.ph.i.i.in = phi i32 [ %32, %decay_load.exit113.thread.i.i ], [ %27, %decay_load.exit113.i.i ]
  %delta.addr.0.off0.ph.i.i = and i32 %delta.addr.0.off0.ph.i.i.in, 1023
  br label %if.end22.i.i

if.end14.i.i:                                     ; preds = %if.end3.i
  %extract.t65.i.i = trunc i64 %add.i.i to i32
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.end14.i.i, %if.end14.thread.i.i
  %storemerge = phi i32 [ %delta.addr.0.off0.ph.i.i, %if.end14.thread.i.i ], [ %extract.t65.i.i, %if.end14.i.i ]
  %33 = ptrtoint ptr %period_contrib.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge, ptr %period_contrib.i.i, align 4
  %conv36.i.i = trunc i64 %div63.i.i to i32
  %tobool8.not.i = icmp ne i32 %conv36.i.i, 0
  %spec.select21.i = zext i1 %tobool8.not.i to i32
  br label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %if.end22.i.i, %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ 0, %if.end.i ], [ %spec.select21.i, %if.end22.i.i ]
  %34 = ptrtoint ptr %avg_irq to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %avg_irq, align 128
  %sub.i23 = sub i64 %8, %35
  %cmp.i24 = icmp slt i64 %sub.i23, 0
  br i1 %cmp.i24, label %if.then.i25, label %if.end.i27

if.then.i25:                                      ; preds = %___update_load_sum.exit
  %36 = ptrtoint ptr %avg_irq to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %8, ptr %avg_irq, align 128
  br label %___update_load_sum.exit110

if.end.i27:                                       ; preds = %___update_load_sum.exit
  %tobool.not.i26 = icmp ult i64 %sub.i23, 1024
  br i1 %tobool.not.i26, label %___update_load_sum.exit110, label %if.end3.i37

if.end3.i37:                                      ; preds = %if.end.i27
  %shr.i28 = lshr i64 %sub.i23, 10
  %shl.i29 = and i64 %sub.i23, -1024
  %add.i30 = add i64 %shl.i29, %35
  %37 = ptrtoint ptr %avg_irq to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add.i30, ptr %avg_irq, align 128
  %period_contrib.i.i32 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 4
  %38 = ptrtoint ptr %period_contrib.i.i32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %period_contrib.i.i32, align 4
  %conv1.i.i33 = zext i32 %39 to i64
  %add.i.i34 = add nuw nsw i64 %shr.i28, %conv1.i.i33
  %div63.i.i35 = lshr i64 %add.i.i34, 10
  %tobool.not.i.i36 = icmp ult i64 %add.i.i34, 1024
  br i1 %tobool.not.i.i36, label %if.end14.i.i104, label %if.then.i.i40

if.then.i.i40:                                    ; preds = %if.end3.i37
  %load_sum.i.i38 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 1
  %40 = ptrtoint ptr %load_sum.i.i38 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %load_sum.i.i38, align 8
  %cmp.i.i.i39 = icmp ugt i64 %add.i.i34, 2065407
  br i1 %cmp.i.i.i39, label %decay_load.exit113.i.i93, label %if.end.i.i.i43, !prof !35

if.end.i.i.i43:                                   ; preds = %if.then.i.i40
  %conv.i.i.i41 = trunc i64 %div63.i.i35 to i32
  %cmp2.i.i.i42 = icmp ugt i32 %conv.i.i.i41, 31
  br i1 %cmp2.i.i.i42, label %if.then10.i.i.i48, label %if.end11.i.i.i57, !prof !35

if.then10.i.i.i48:                                ; preds = %if.end.i.i.i43
  %div18.i.i.i44 = lshr i32 %conv.i.i.i41, 5
  %sh_prom.i.i.i45 = zext i32 %div18.i.i.i44 to i64
  %shr.i.i.i46 = lshr i64 %41, %sh_prom.i.i.i45
  %rem.i.i.i47 = and i32 %conv.i.i.i41, 31
  br label %if.end11.i.i.i57

if.end11.i.i.i57:                                 ; preds = %if.then10.i.i.i48, %if.end.i.i.i43
  %val.addr.0.i.i.i49 = phi i64 [ %shr.i.i.i46, %if.then10.i.i.i48 ], [ %41, %if.end.i.i.i43 ]
  %local_n.0.i.i.i50 = phi i32 [ %rem.i.i.i47, %if.then10.i.i.i48 ], [ %conv.i.i.i41, %if.end.i.i.i43 ]
  %arrayidx.i.i.i51 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i.i.i50
  %42 = ptrtoint ptr %arrayidx.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i.i51, align 4
  %conv.i.i.i.i.i52 = and i64 %val.addr.0.i.i.i49, 4294967295
  %conv1.i.i.i.i.i53 = zext i32 %43 to i64
  %mul.i.i.i.i.i54 = mul nuw i64 %conv.i.i.i.i.i52, %conv1.i.i.i.i.i53
  %shr2.i.i.i.i55 = lshr i64 %mul.i.i.i.i.i54, 32
  %tobool.not.i.i.i.i56 = icmp ult i64 %val.addr.0.i.i.i49, 4294967296
  br i1 %tobool.not.i.i.i.i56, label %if.end.i69.i.i64, label %if.then.i.i.i.i61

if.then.i.i.i.i61:                                ; preds = %if.end11.i.i.i57
  %shr.i.i.i.i58 = lshr i64 %val.addr.0.i.i.i49, 32
  %mul.i3.i.i.i.i59 = mul nuw i64 %shr.i.i.i.i58, %conv1.i.i.i.i.i53
  %add.i.i.i.i60 = add nuw i64 %shr2.i.i.i.i55, %mul.i3.i.i.i.i59
  br label %if.end.i69.i.i64

if.end.i69.i.i64:                                 ; preds = %if.then.i.i.i.i61, %if.end11.i.i.i57
  %retval.0.i.ph.i.i62 = phi i64 [ %shr2.i.i.i.i55, %if.end11.i.i.i57 ], [ %add.i.i.i.i60, %if.then.i.i.i.i61 ]
  %44 = ptrtoint ptr %load_sum.i.i38 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %retval.0.i.ph.i.i62, ptr %load_sum.i.i38, align 8
  %runnable_sum117.i.i63 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 2
  %45 = ptrtoint ptr %runnable_sum117.i.i63 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %runnable_sum117.i.i63, align 16
  br i1 %cmp2.i.i.i42, label %if.then10.i74.i.i69, label %if.end11.i83.i.i78, !prof !35

if.then10.i74.i.i69:                              ; preds = %if.end.i69.i.i64
  %div18.i70.i.i65 = lshr i32 %conv.i.i.i41, 5
  %sh_prom.i71.i.i66 = zext i32 %div18.i70.i.i65 to i64
  %shr.i72.i.i67 = lshr i64 %46, %sh_prom.i71.i.i66
  %rem.i73.i.i68 = and i32 %conv.i.i.i41, 31
  br label %if.end11.i83.i.i78

if.end11.i83.i.i78:                               ; preds = %if.then10.i74.i.i69, %if.end.i69.i.i64
  %val.addr.0.i75.i.i70 = phi i64 [ %shr.i72.i.i67, %if.then10.i74.i.i69 ], [ %46, %if.end.i69.i.i64 ]
  %local_n.0.i76.i.i71 = phi i32 [ %rem.i73.i.i68, %if.then10.i74.i.i69 ], [ %conv.i.i.i41, %if.end.i69.i.i64 ]
  %arrayidx.i77.i.i72 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i76.i.i71
  %47 = ptrtoint ptr %arrayidx.i77.i.i72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i77.i.i72, align 4
  %conv.i.i.i78.i.i73 = and i64 %val.addr.0.i75.i.i70, 4294967295
  %conv1.i.i.i79.i.i74 = zext i32 %48 to i64
  %mul.i.i.i80.i.i75 = mul nuw i64 %conv.i.i.i78.i.i73, %conv1.i.i.i79.i.i74
  %shr2.i.i81.i.i76 = lshr i64 %mul.i.i.i80.i.i75, 32
  %tobool.not.i.i82.i.i77 = icmp ult i64 %val.addr.0.i75.i.i70, 4294967296
  br i1 %tobool.not.i.i82.i.i77, label %if.end.i93.i.i86, label %if.then.i.i87.i.i82

if.then.i.i87.i.i82:                              ; preds = %if.end11.i83.i.i78
  %shr.i.i84.i.i79 = lshr i64 %val.addr.0.i75.i.i70, 32
  %mul.i3.i.i85.i.i80 = mul nuw i64 %shr.i.i84.i.i79, %conv1.i.i.i79.i.i74
  %add.i.i86.i.i81 = add nuw i64 %shr2.i.i81.i.i76, %mul.i3.i.i85.i.i80
  br label %if.end.i93.i.i86

if.end.i93.i.i86:                                 ; preds = %if.then.i.i87.i.i82, %if.end11.i83.i.i78
  %retval.0.i88.ph.i.i83 = phi i64 [ %shr2.i.i81.i.i76, %if.end11.i83.i.i78 ], [ %add.i.i86.i.i81, %if.then.i.i87.i.i82 ]
  %49 = ptrtoint ptr %runnable_sum117.i.i63 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %retval.0.i88.ph.i.i83, ptr %runnable_sum117.i.i63, align 16
  %util_sum122.i.i84 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 3
  %50 = ptrtoint ptr %util_sum122.i.i84 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %util_sum122.i.i84, align 8
  %conv5123.i.i85 = zext i32 %51 to i64
  br i1 %cmp2.i.i.i42, label %if.then10.i98.i.i91, label %decay_load.exit113.thread.i.i102, !prof !35

if.then10.i98.i.i91:                              ; preds = %if.end.i93.i.i86
  %div18.i94.i.i87 = lshr i32 %conv.i.i.i41, 5
  %sh_prom.i95.i.i88 = zext i32 %div18.i94.i.i87 to i64
  %shr.i96.i.i89 = lshr i64 %conv5123.i.i85, %sh_prom.i95.i.i88
  %rem.i97.i.i90 = and i32 %conv.i.i.i41, 31
  br label %decay_load.exit113.thread.i.i102

decay_load.exit113.i.i93:                         ; preds = %if.then.i.i40
  %52 = trunc i64 %add.i.i34 to i32
  %53 = call ptr @memset(ptr %load_sum.i.i38, i32 0, i32 20)
  br label %if.end14.thread145.i.i

decay_load.exit113.thread.i.i102:                 ; preds = %if.then10.i98.i.i91, %if.end.i93.i.i86
  %val.addr.0.i99.i.i94 = phi i64 [ %shr.i96.i.i89, %if.then10.i98.i.i91 ], [ %conv5123.i.i85, %if.end.i93.i.i86 ]
  %local_n.0.i100.i.i95 = phi i32 [ %rem.i97.i.i90, %if.then10.i98.i.i91 ], [ %conv.i.i.i41, %if.end.i93.i.i86 ]
  %arrayidx.i101.i.i96 = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i100.i.i95
  %54 = ptrtoint ptr %arrayidx.i101.i.i96 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i101.i.i96, align 4
  %conv1.i.i.i103.i.i97 = zext i32 %55 to i64
  %mul.i.i.i104.i.i98 = mul nuw i64 %val.addr.0.i99.i.i94, %conv1.i.i.i103.i.i97
  %shr2.i.i105.i.i99 = lshr i64 %mul.i.i.i104.i.i98, 32
  %conv7129.i.i100 = trunc i64 %shr2.i.i105.i.i99 to i32
  %56 = ptrtoint ptr %util_sum122.i.i84 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv7129.i.i100, ptr %util_sum122.i.i84, align 8
  %57 = trunc i64 %add.i.i34 to i32
  %sub135.i.i = sub i32 1024, %39
  %conv.i114136.i.i = zext i32 %sub135.i.i to i64
  br i1 %cmp2.i.i.i42, label %if.then10.i15.i.i.i, label %if.end.i10.i.i.i, !prof !35

if.end.i10.i.i.i:                                 ; preds = %decay_load.exit113.thread.i.i102
  %arrayidx.i.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %conv.i.i.i41
  %58 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv1.i.i.i.i.i.i = zext i32 %59 to i64
  %mul.i.i.i.i.i.i = mul nuw i64 %conv1.i.i.i.i.i.i, %conv.i114136.i.i
  %shr2.i.i.i.i.i = lshr i64 %mul.i.i.i.i.i.i, 32
  %conv1.i.i.i = trunc i64 %shr2.i.i.i.i.i to i32
  br label %if.end11.i24.i.i.i

if.then10.i15.i.i.i:                              ; preds = %decay_load.exit113.thread.i.i102
  %div18.i.i.i.i = lshr i32 %conv.i.i.i41, 5
  %sh_prom.i.i.i.i = zext i32 %div18.i.i.i.i to i64
  %shr.i.i115.i.i = lshr i64 %conv.i114136.i.i, %sh_prom.i.i.i.i
  %rem.i.i.i.i = and i32 %conv.i.i.i41, 31
  %arrayidx.i36.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %rem.i.i.i.i
  %60 = ptrtoint ptr %arrayidx.i36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i36.i.i.i, align 4
  %conv1.i.i.i37.i.i.i = zext i32 %61 to i64
  %mul.i.i.i38.i.i.i = mul nuw nsw i64 %shr.i.i115.i.i, %conv1.i.i.i37.i.i.i
  %shr2.i.i39.i.i.i = lshr i64 %mul.i.i.i38.i.i.i, 32
  %conv140.i.i.i = trunc i64 %shr2.i.i39.i.i.i to i32
  %shr.i13.i.i.i = lshr i64 47742, %sh_prom.i.i.i.i
  br label %if.end11.i24.i.i.i

if.end11.i24.i.i.i:                               ; preds = %if.then10.i15.i.i.i, %if.end.i10.i.i.i
  %conv141.i.i.i = phi i32 [ %conv140.i.i.i, %if.then10.i15.i.i.i ], [ %conv1.i.i.i, %if.end.i10.i.i.i ]
  %val.addr.0.i16.i.i.i = phi i64 [ %shr.i13.i.i.i, %if.then10.i15.i.i.i ], [ 47742, %if.end.i10.i.i.i ]
  %local_n.0.i17.i.i.i = phi i32 [ %rem.i.i.i.i, %if.then10.i15.i.i.i ], [ %conv.i.i.i41, %if.end.i10.i.i.i ]
  %arrayidx.i18.i.i.i = getelementptr [32 x i32], ptr @runnable_avg_yN_inv, i32 0, i32 %local_n.0.i17.i.i.i
  %62 = ptrtoint ptr %arrayidx.i18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i18.i.i.i, align 4
  %conv1.i.i.i20.i.i.i = zext i32 %63 to i64
  %mul.i.i.i21.i.i.i = mul nuw nsw i64 %val.addr.0.i16.i.i.i, %conv1.i.i.i20.i.i.i
  %shr2.i.i22.i.i.i = lshr i64 %mul.i.i.i21.i.i.i, 32
  %extract.t.i.i.i = trunc i64 %shr2.i.i22.i.i.i to i32
  %phi.bo.i.i.i = add i32 %conv141.i.i.i, 46718
  %64 = sub i32 %phi.bo.i.i.i, %extract.t.i.i.i
  br label %if.end14.thread145.i.i

if.end14.thread145.i.i:                           ; preds = %if.end11.i24.i.i.i, %decay_load.exit113.i.i93
  %extract.t64133138.i.i.in = phi i32 [ %57, %if.end11.i24.i.i.i ], [ %52, %decay_load.exit113.i.i93 ]
  %add.i.i.i = phi i32 [ %64, %if.end11.i24.i.i.i ], [ 46718, %decay_load.exit113.i.i93 ]
  %extract.t64133138.i.i = and i32 %extract.t64133138.i.i.in, 1023
  %add5.i.i.i = add i32 %add.i.i.i, %extract.t64133138.i.i
  br label %if.then18.i.i

if.end14.i.i104:                                  ; preds = %if.end3.i37
  %conv.i.i31 = trunc i64 %shr.i28 to i32
  %extract.t65.i.i103 = trunc i64 %add.i.i34 to i32
  br label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.end14.i.i104, %if.end14.thread145.i.i
  %storemerge120 = phi i32 [ %extract.t64133138.i.i, %if.end14.thread145.i.i ], [ %extract.t65.i.i103, %if.end14.i.i104 ]
  %contrib.0149.i.i = phi i32 [ %add5.i.i.i, %if.end14.thread145.i.i ], [ %conv.i.i31, %if.end14.i.i104 ]
  %65 = ptrtoint ptr %period_contrib.i.i32 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %storemerge120, ptr %period_contrib.i.i32, align 4
  %conv19.i.i = zext i32 %contrib.0149.i.i to i64
  %load_sum20.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 1
  %66 = ptrtoint ptr %load_sum20.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %load_sum20.i.i, align 8
  %add21.i.i = add i64 %67, %conv19.i.i
  store i64 %add21.i.i, ptr %load_sum20.i.i, align 8
  %shl.i.i = shl i32 %contrib.0149.i.i, 10
  %conv26.i.i = zext i32 %shl.i.i to i64
  %runnable_sum27.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 2
  %68 = ptrtoint ptr %runnable_sum27.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %runnable_sum27.i.i, align 16
  %add28.i.i = add i64 %69, %conv26.i.i
  store i64 %add28.i.i, ptr %runnable_sum27.i.i, align 16
  %util_sum33.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 3
  %70 = ptrtoint ptr %util_sum33.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %util_sum33.i.i, align 8
  %add34.i.i = add i32 %71, %shl.i.i
  store i32 %add34.i.i, ptr %util_sum33.i.i, align 8
  %conv36.i.i106 = trunc i64 %div63.i.i35 to i32
  %tobool8.not.i107 = icmp ne i32 %conv36.i.i106, 0
  %spec.select21.i108 = zext i1 %tobool8.not.i107 to i32
  br label %___update_load_sum.exit110

___update_load_sum.exit110:                       ; preds = %if.then18.i.i, %if.end.i27, %if.then.i25
  %retval.0.i109 = phi i32 [ 0, %if.then.i25 ], [ 0, %if.end.i27 ], [ %spec.select21.i108, %if.then18.i.i ]
  %add = add nuw nsw i32 %retval.0.i109, %retval.0.i
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %___update_load_sum.exit110
  %period_contrib.i.i111 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 4
  %72 = ptrtoint ptr %period_contrib.i.i111 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %period_contrib.i.i111, align 4
  %add.i.i112 = add i32 %73, 46718
  %load_sum.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 1
  %74 = ptrtoint ptr %load_sum.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %load_sum.i, align 8
  %cmp164.i.i.i = icmp ult i64 %75, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !36

if.then168.i.i.i:                                 ; preds = %if.then
  %conv169.i.i.i = trunc i64 %75 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %add.i.i112
  br label %if.else162.i.i124.i

if.else174.i.i.i:                                 ; preds = %if.then
  %76 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.i112, i64 %75) #6, !srcloc !37
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %76, 1
  %extract.t137.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %if.else162.i.i124.i

if.else162.i.i124.i:                              ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t137.i, %if.else174.i.i.i ]
  %load_avg.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 5
  %77 = ptrtoint ptr %load_avg.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %load_avg.i, align 32
  %runnable_sum.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 2
  %78 = ptrtoint ptr %runnable_sum.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %runnable_sum.i, align 16
  %cmp164.i.i123.i = icmp ult i64 %79, 4294967296
  br i1 %cmp164.i.i123.i, label %if.then168.i.i128.i, label %if.else174.i.i130.i, !prof !36

if.then168.i.i128.i:                              ; preds = %if.else162.i.i124.i
  %conv169.i.i125.i = trunc i64 %79 to i32
  %div172.i.i126.i = udiv i32 %conv169.i.i125.i, %add.i.i112
  br label %___update_load_avg.exit

if.else174.i.i130.i:                              ; preds = %if.else162.i.i124.i
  %80 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.i112, i64 %79) #6, !srcloc !37
  %asmresult1.i.i.i129.i = extractvalue { i64, i64 } %80, 1
  %extract.t139.i = trunc i64 %asmresult1.i.i.i129.i to i32
  br label %___update_load_avg.exit

___update_load_avg.exit:                          ; preds = %if.else174.i.i130.i, %if.then168.i.i128.i
  %dividend.addr.0.i.i131.off0.i = phi i32 [ %div172.i.i126.i, %if.then168.i.i128.i ], [ %extract.t139.i, %if.else174.i.i130.i ]
  %runnable_avg.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 6
  %81 = ptrtoint ptr %runnable_avg.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %dividend.addr.0.i.i131.off0.i, ptr %runnable_avg.i, align 4
  %util_sum.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 3
  %82 = ptrtoint ptr %util_sum.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %util_sum.i, align 8
  %div.i = udiv i32 %83, %add.i.i112
  %util_avg.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 52, i32 7
  %84 = ptrtoint ptr %util_avg.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 %div.i, ptr %util_avg.i, align 8
  tail call fastcc void @trace_pelt_irq_tp(ptr noundef %rq)
  br label %if.end

if.end:                                           ; preds = %___update_load_avg.exit, %___update_load_sum.exit110
  ret i32 %add
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pelt_irq_tp(ptr noundef %rq) unnamed_addr #1 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_irq_tp, i32 0, i32 1), ptr blockaddress(@trace_pelt_irq_tp, %do.body)) #4
          to label %if.end48 [label %do.body], !srcloc !38

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !36

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %do.body
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end69, label %cleanup.thread

cleanup.thread:                                   ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !51
  %call42 = tail call i32 @__traceiter_pelt_irq_tp(ptr noundef null, ptr noundef %rq) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !52
  %13 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %cpu_online.exit85, label %land.rhs.i.i.i.i79

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %cpu_online.exit85, label %if.then.i.i.i.i80, !prof !36

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79, %if.end48
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_irq_tp, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_irq_tp, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #4
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #4
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_pelt_irq_tp.__warned, align 1
  br i1 %.b72, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_pelt_irq_tp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 709, ptr noundef nonnull @.str.1) #4
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !42
  %31 = tail call i32 @llvm.read_register.i32(metadata !25) #4
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85, %cpu_online.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pelt_se_tp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pelt_cfs_tp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pelt_rt_tp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pelt_dl_tp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pelt_thermal_tp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pelt_irq_tp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @runnable_avg_yN_inv, !1, !"runnable_avg_yN_inv", i1 false, i1 false}
!1 = !{!"../kernel/sched/sched-pelt.h", i32 4, i32 18}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/trace/events/sched.h", i32 711, i32 1}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/trace/events/sched.h", i32 691, i32 1}
!12 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/trace/events/sched.h", i32 695, i32 1}
!15 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/trace/events/sched.h", i32 699, i32 1}
!18 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/trace/events/sched.h", i32 703, i32 1}
!21 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/trace/events/sched.h", i32 707, i32 1}
!24 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2148268462, i64 2148268742, i64 2148269076, i64 2148269410}
!38 = !{i64 2148243275, i64 2148243280, i64 2148243293, i64 2148243337, i64 2148243371, i64 2148243392}
!39 = !{i64 2157815563}
!40 = !{i64 2157815750}
!41 = !{i64 2149265955}
!42 = !{i64 2149266991}
!43 = !{i64 2157734184}
!44 = !{i64 2157734381}
!45 = !{i64 2157749596}
!46 = !{i64 2157749783}
!47 = !{i64 2157768967}
!48 = !{i64 2157769154}
!49 = !{i64 2157784462}
!50 = !{i64 2157784659}
!51 = !{i64 2157800079}
!52 = !{i64 2157800268}
