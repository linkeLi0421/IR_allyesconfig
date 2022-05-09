; ModuleID = '/llk/IR_all_yes/drivers/cpuidle/governors/ladder.c_pt.bc'
source_filename = "../drivers/cpuidle/governors/ladder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ladder_device = type { [10 x %struct.ladder_device_state] }
%struct.ladder_device_state = type { %struct.anon, %struct.anon.0 }
%struct.anon = type { i32, i32, i64, i64 }
%struct.anon.0 = type { i32, i32 }
%struct.cpuidle_governor = type { [16 x i8], %struct.list_head, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_ladder__158_197_init_ladder2 = internal global ptr @init_ladder, section ".initcall2.init", align 4
@__pcpu_unique_ladder_devices = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@ladder_devices = weak dso_local global %struct.ladder_device zeroinitializer, section ".data..percpu", align 8
@tick_nohz_enabled = external dso_local local_unnamed_addr global i8, align 1
@ladder_governor = internal global { %struct.cpuidle_governor, [52 x i8] } { %struct.cpuidle_governor { [16 x i8] c"ladder\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, i32 10, ptr @ladder_enable_device, ptr null, ptr @ladder_select_state, ptr @ladder_reflect }, [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"ladder_governor\00", align 1
@___asan_gen_.2 = private constant [38 x i8] c"../drivers/cpuidle/governors/ladder.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 173, i32 32 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_ladder__158_197_init_ladder2, ptr @ladder_governor], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ladder_governor to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_ladder() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @tick_nohz_enabled to i32))
  %0 = load i8, ptr @tick_nohz_enabled, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 25, ptr getelementptr inbounds (%struct.cpuidle_governor, ptr @ladder_governor, i32 0, i32 2), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @cpuidle_register_governor(ptr noundef nonnull @ladder_governor) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ladder_enable_device(ptr nocapture noundef readonly %drv, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  %cpu = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx2 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %5, ptrtoint (ptr @ladder_devices to i32)
  %6 = inttoptr i32 %add to ptr
  %last_state_idx = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %last_state_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %last_state_idx, align 8
  %state_count = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 4
  %8 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %9)
  %cmp36 = icmp slt i32 %and, %9
  br i1 %cmp36, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %arrayidx6.peel = getelementptr [10 x %struct.ladder_device_state], ptr %6, i32 0, i32 %and
  %stats.peel = getelementptr [10 x %struct.ladder_device_state], ptr %6, i32 0, i32 %and, i32 1
  %10 = ptrtoint ptr %stats.peel to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %stats.peel, align 8
  %demotion_count.peel = getelementptr [10 x %struct.ladder_device_state], ptr %6, i32 0, i32 %and, i32 1, i32 1
  %11 = ptrtoint ptr %demotion_count.peel to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %demotion_count.peel, align 4
  %12 = ptrtoint ptr %arrayidx6.peel to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %arrayidx6.peel, align 8
  %demotion_count10.peel = getelementptr inbounds %struct.anon, ptr %arrayidx6.peel, i32 0, i32 1
  %13 = ptrtoint ptr %demotion_count10.peel to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %demotion_count10.peel, align 4
  %14 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state_count, align 8
  %sub.peel = add i32 %15, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %sub.peel)
  %cmp12.peel = icmp slt i32 %and, %sub.peel
  br i1 %cmp12.peel, label %if.then.peel, label %for.body.preheader.for.inc.peel_crit_edge

for.body.preheader.for.inc.peel_crit_edge:        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.peel

if.then.peel:                                     ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %exit_latency_ns.peel = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %and, i32 2
  %16 = ptrtoint ptr %exit_latency_ns.peel to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %exit_latency_ns.peel, align 8
  %promotion_time_ns.peel = getelementptr inbounds %struct.anon, ptr %arrayidx6.peel, i32 0, i32 2
  %18 = ptrtoint ptr %promotion_time_ns.peel to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %promotion_time_ns.peel, align 8
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then.peel, %for.body.preheader.for.inc.peel_crit_edge
  %inc.peel = add nuw nsw i32 %and, 1
  %19 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.peel, i32 %20)
  %cmp.peel = icmp slt i32 %inc.peel, %20
  br i1 %cmp.peel, label %for.inc.peel.for.body_crit_edge, label %for.inc.peel.for.end_crit_edge

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.peel.for.body_crit_edge:                  ; preds = %for.inc.peel
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.inc.peel.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %inc.peel, %for.inc.peel.for.body_crit_edge ]
  %arrayidx6 = getelementptr [10 x %struct.ladder_device_state], ptr %6, i32 0, i32 %i.037
  %stats = getelementptr [10 x %struct.ladder_device_state], ptr %6, i32 0, i32 %i.037, i32 1
  %21 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %stats, align 8
  %demotion_count = getelementptr [10 x %struct.ladder_device_state], ptr %6, i32 0, i32 %i.037, i32 1, i32 1
  %22 = ptrtoint ptr %demotion_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %demotion_count, align 4
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %arrayidx6, align 8
  %demotion_count10 = getelementptr inbounds %struct.anon, ptr %arrayidx6, i32 0, i32 1
  %24 = ptrtoint ptr %demotion_count10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %demotion_count10, align 4
  %25 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state_count, align 8
  %sub = add i32 %26, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.037, i32 %sub)
  %cmp12 = icmp slt i32 %i.037, %sub
  br i1 %cmp12, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %exit_latency_ns = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.037, i32 2
  %27 = ptrtoint ptr %exit_latency_ns to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %exit_latency_ns, align 8
  %promotion_time_ns = getelementptr inbounds %struct.anon, ptr %arrayidx6, i32 0, i32 2
  %29 = ptrtoint ptr %promotion_time_ns to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %promotion_time_ns, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %exit_latency_ns16 = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.037, i32 2
  %30 = ptrtoint ptr %exit_latency_ns16 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %exit_latency_ns16, align 8
  %demotion_time_ns = getelementptr inbounds %struct.anon, ptr %arrayidx6, i32 0, i32 3
  %32 = ptrtoint ptr %demotion_time_ns to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %demotion_time_ns, align 8
  %inc = add nuw nsw i32 %i.037, 1
  %33 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state_count, align 8
  %cmp = icmp slt i32 %inc, %34
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge, !llvm.loop !18

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ladder_select_state(ptr nocapture noundef readonly %drv, ptr nocapture noundef %dev, ptr nocapture noundef readnone %dummy) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !7) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @ladder_devices to i32)
  %6 = inttoptr i32 %add to ptr
  %last_state_idx = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %last_state_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_state_idx, align 8
  %flags = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 0, i32 4
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %and = and i32 %10, 1
  %cpu3 = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %cpu3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu3, align 4
  %call4 = tail call i64 @cpuidle_governor_latency_req(i32 noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call4)
  %cmp = icmp eq i64 %call4, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !20

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %stats.i = getelementptr [10 x %struct.ladder_device_state], ptr %6, i32 0, i32 %8, i32 1
  %13 = ptrtoint ptr %stats.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %stats.i, align 8
  %demotion_count.i = getelementptr [10 x %struct.ladder_device_state], ptr %6, i32 0, i32 %8, i32 1, i32 1
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %arrayidx8 = getelementptr [10 x %struct.ladder_device_state], ptr %6, i32 0, i32 %8
  %last_residency_ns = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %last_residency_ns to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %last_residency_ns, align 8
  %exit_latency_ns = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %8, i32 2
  %16 = ptrtoint ptr %exit_latency_ns to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %exit_latency_ns, align 8
  %sub = sub i64 %15, %17
  %state_count = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 4
  %18 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state_count, align 8
  %sub11 = add i32 %19, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub11)
  %cmp12 = icmp slt i32 %8, %sub11
  br i1 %cmp12, label %land.lhs.true, label %if.end.if.end35_crit_edge

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end
  %add13 = add nsw i32 %8, 1
  %arrayidx14 = getelementptr %struct.cpuidle_device, ptr %dev, i32 0, i32 7, i32 %add13
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool15.not = icmp eq i64 %21, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true16:                                  ; preds = %land.lhs.true
  %promotion_time_ns = getelementptr inbounds %struct.anon, ptr %arrayidx8, i32 0, i32 2
  %22 = ptrtoint ptr %promotion_time_ns to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %promotion_time_ns, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %23)
  %cmp17 = icmp ugt i64 %sub, %23
  br i1 %cmp17, label %land.lhs.true18, label %land.lhs.true16.if.end35_crit_edge

land.lhs.true16.if.end35_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %exit_latency_ns22 = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %add13, i32 2
  %24 = ptrtoint ptr %exit_latency_ns22 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %exit_latency_ns22, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %call4)
  %cmp23.not = icmp sgt i64 %25, %call4
  br i1 %cmp23.not, label %land.lhs.true18.if.end35_crit_edge, label %if.then24

land.lhs.true18.if.end35_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then24:                                        ; preds = %land.lhs.true18
  %stats = getelementptr [10 x %struct.ladder_device_state], ptr %6, i32 0, i32 %8, i32 1
  %26 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stats, align 8
  %inc = add i32 %27, 1
  store i32 %inc, ptr %stats, align 8
  %demotion_count = getelementptr [10 x %struct.ladder_device_state], ptr %6, i32 0, i32 %8, i32 1, i32 1
  %28 = ptrtoint ptr %demotion_count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %demotion_count, align 4
  %29 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx8, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %30)
  %cmp30.not = icmp ult i32 %inc, %30
  br i1 %cmp30.not, label %if.then24.if.end35_crit_edge, label %if.then31

if.then24.if.end35_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %stats, align 8
  br label %cleanup.sink.split

if.end35:                                         ; preds = %if.then24.if.end35_crit_edge, %land.lhs.true18.if.end35_crit_edge, %land.lhs.true16.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %if.end.if.end35_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %and)
  %cmp36 = icmp sgt i32 %8, %and
  br i1 %cmp36, label %land.lhs.true37, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true37:                                  ; preds = %if.end35
  %arrayidx39 = getelementptr %struct.cpuidle_device, ptr %dev, i32 0, i32 7, i32 %8
  %32 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx39, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool41.not = icmp eq i64 %33, 0
  br i1 %tobool41.not, label %lor.lhs.false, label %land.lhs.true37.if.then46_crit_edge

land.lhs.true37.if.then46_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

lor.lhs.false:                                    ; preds = %land.lhs.true37
  %34 = ptrtoint ptr %exit_latency_ns to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %exit_latency_ns, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %call4)
  %cmp45 = icmp sgt i64 %35, %call4
  br i1 %cmp45, label %lor.lhs.false.if.then46_crit_edge, label %land.lhs.true57.critedge

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.then46:                                        ; preds = %lor.lhs.false.if.then46_crit_edge, %land.lhs.true37.if.then46_crit_edge
  %36 = add nsw i32 %8, -1
  %smin = call i32 @llvm.smin.i32(i32 %36, i32 %and)
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then46
  %i.0.in = phi i32 [ %8, %if.then46 ], [ %i.0, %for.body.for.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %and)
  %cmp48 = icmp sgt i32 %i.0, %and
  br i1 %cmp48, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %exit_latency_ns51 = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.0, i32 2
  %37 = ptrtoint ptr %exit_latency_ns51 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %exit_latency_ns51, align 8
  %cmp52.not = icmp sgt i64 %38, %call4
  br i1 %cmp52.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.0, %for.body.for.end_crit_edge ], [ %smin, %for.cond.for.end_crit_edge ]
  %stats.i138 = getelementptr [10 x %struct.ladder_device_state], ptr %6, i32 0, i32 %8, i32 1
  %39 = ptrtoint ptr %stats.i138 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %stats.i138, align 8
  %demotion_count.i139 = getelementptr [10 x %struct.ladder_device_state], ptr %6, i32 0, i32 %8, i32 1, i32 1
  br label %cleanup.sink.split

land.lhs.true57.critedge:                         ; preds = %lor.lhs.false
  %demotion_time_ns = getelementptr inbounds %struct.anon, ptr %arrayidx8, i32 0, i32 3
  %40 = ptrtoint ptr %demotion_time_ns to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %demotion_time_ns, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %41)
  %cmp59 = icmp ult i64 %sub, %41
  br i1 %cmp59, label %if.then60, label %land.lhs.true57.critedge.cleanup_crit_edge

land.lhs.true57.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true57.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then60:                                        ; preds = %land.lhs.true57.critedge
  %stats61 = getelementptr [10 x %struct.ladder_device_state], ptr %6, i32 0, i32 %8, i32 1
  %demotion_count62 = getelementptr [10 x %struct.ladder_device_state], ptr %6, i32 0, i32 %8, i32 1, i32 1
  %42 = ptrtoint ptr %demotion_count62 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %demotion_count62, align 4
  %inc63 = add i32 %43, 1
  store i32 %inc63, ptr %demotion_count62, align 4
  %44 = ptrtoint ptr %stats61 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %stats61, align 8
  %demotion_count69 = getelementptr inbounds %struct.anon, ptr %arrayidx8, i32 0, i32 1
  %45 = ptrtoint ptr %demotion_count69 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %demotion_count69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc63, i32 %46)
  %cmp70.not = icmp ult i32 %inc63, %46
  br i1 %cmp70.not, label %if.then60.cleanup_crit_edge, label %if.then71

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then71:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %sub72 = add nsw i32 %8, -1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then71, %for.end, %if.then31, %if.then
  %demotion_count62.sink = phi ptr [ %demotion_count62, %if.then71 ], [ %demotion_count.i139, %for.end ], [ %demotion_count, %if.then31 ], [ %demotion_count.i, %if.then ]
  %sub72.sink = phi i32 [ %sub72, %if.then71 ], [ %i.0.lcssa, %for.end ], [ %add13, %if.then31 ], [ 0, %if.then ]
  %47 = ptrtoint ptr %demotion_count62.sink to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %demotion_count62.sink, align 4
  %48 = ptrtoint ptr %last_state_idx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub72.sink, ptr %last_state_idx, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then60.cleanup_crit_edge, %land.lhs.true57.critedge.cleanup_crit_edge, %if.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end35.cleanup_crit_edge ], [ %8, %if.then60.cleanup_crit_edge ], [ %8, %land.lhs.true57.critedge.cleanup_crit_edge ], [ %sub72.sink, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ladder_reflect(ptr nocapture noundef writeonly %dev, i32 noundef %index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp sgt i32 %index, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %last_state_idx = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %last_state_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %index, ptr %last_state_idx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @cpuidle_governor_latency_req(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.named.register.sp = !{!7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__initcall__kmod_ladder__158_197_init_ladder2, !1, !"__initcall__kmod_ladder__158_197_init_ladder2", i1 false, i1 false}
!1 = !{!"../drivers/cpuidle/governors/ladder.c", i32 197, i32 1}
!2 = !{ptr @__pcpu_unique_ladder_devices, !3, !"__pcpu_unique_ladder_devices", i1 false, i1 false}
!3 = !{!"../drivers/cpuidle/governors/ladder.c", i32 43, i32 8}
!4 = !{ptr @ladder_devices, !3, !"ladder_devices", i1 false, i1 false}
!5 = !{ptr @ladder_governor, !6, !"ladder_governor", i1 false, i1 false}
!6 = !{!"../drivers/cpuidle/governors/ladder.c", i32 173, i32 32}
!7 = !{!"sp"}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.peeled.count", i32 1}
!20 = !{!"branch_weights", i32 1, i32 2000}
