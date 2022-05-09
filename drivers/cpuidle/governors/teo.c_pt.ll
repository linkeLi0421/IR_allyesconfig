; ModuleID = '/llk/IR_all_yes/drivers/cpuidle/governors/teo.c_pt.bc'
source_filename = "../drivers/cpuidle/governors/teo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.teo_cpu = type { i64, i64, [10 x %struct.teo_bin], i32, i32, [9 x i32] }
%struct.teo_bin = type { i32, i32, i32 }
%struct.cpuidle_governor = type { [16 x i8], %struct.list_head, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpumask = type { [1 x i32] }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_teo__154_534_teo_governor_init2 = internal global ptr @teo_governor_init, section ".initcall2.init", align 4
@__pcpu_unique_teo_cpus = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@teo_cpus = weak dso_local global %struct.teo_cpu zeroinitializer, section ".data..percpu", align 8
@teo_governor = internal global { %struct.cpuidle_governor, [52 x i8] } { %struct.cpuidle_governor { [16 x i8] c"teo\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, i32 19, ptr @teo_enable_device, ptr null, ptr @teo_select, ptr @teo_reflect }, [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"teo_governor\00", align 1
@___asan_gen_.2 = private constant [35 x i8] c"../drivers/cpuidle/governors/teo.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 521, i32 32 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_teo__154_534_teo_governor_init2, ptr @teo_governor], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @teo_governor to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @teo_governor_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpuidle_register_governor(ptr noundef nonnull @teo_governor) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @teo_enable_device(ptr nocapture noundef readnone %drv, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @teo_cpus to i32)
  %4 = inttoptr i32 %add to ptr
  %5 = call ptr @memset(ptr %4, i32 0, i32 184)
  %uglygep = getelementptr i8, ptr %4, i32 144
  %6 = call ptr @memset(ptr %uglygep, i32 255, i32 36)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @teo_select(ptr nocapture noundef readonly %drv, ptr nocapture noundef %dev, ptr nocapture noundef writeonly %stop_tick) #3 align 64 {
entry:
  %delta_tick = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @teo_cpus to i32)
  %4 = inttoptr i32 %add to ptr
  %call = tail call i64 @cpuidle_governor_latency_req(i32 noundef %1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %delta_tick) #6
  %5 = ptrtoint ptr %delta_tick to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %delta_tick, align 8, !annotation !16
  %last_state_idx = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %last_state_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_state_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp sgt i32 %7, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, ptrtoint (ptr @teo_cpus to i32)
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %12, align 8
  %sleep_length_ns.i = getelementptr inbounds %struct.teo_cpu, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %sleep_length_ns.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sleep_length_ns.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp.not.i = icmp slt i64 %14, %16
  br i1 %cmp.not.i, label %if.else.i, label %if.then.if.end7.i_crit_edge

if.then.if.end7.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %exit_latency_ns.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %7, i32 2
  %17 = ptrtoint ptr %exit_latency_ns.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %exit_latency_ns.i, align 8
  %last_residency_ns.i = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 4
  %19 = ptrtoint ptr %last_residency_ns.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %last_residency_ns.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %18)
  %cmp3.not.i = icmp ult i64 %20, %18
  %div115.i = lshr i64 %18, 1
  %sub.i = sub i64 %20, %div115.i
  %div6113.i = lshr i64 %20, 1
  %measured_ns.0.i = select i1 %cmp3.not.i, i64 %div6113.i, i64 %sub.i
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then.if.end7.i_crit_edge
  %measured_ns.1.i = phi i64 [ %measured_ns.0.i, %if.else.i ], [ -1, %if.then.if.end7.i_crit_edge ]
  %total.i = getelementptr inbounds %struct.teo_cpu, ptr %12, i32 0, i32 3
  %21 = ptrtoint ptr %total.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %total.i, align 8
  %state_count.i = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 4
  %22 = ptrtoint ptr %state_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp8117.i = icmp sgt i32 %23, 0
  br i1 %cmp8117.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.for.end.i_crit_edge

if.end7.i.for.end.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %idx_duration.0120.i = phi i32 [ %idx_duration.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7.i.for.body.i_crit_edge ]
  %idx_timer.0119.i = phi i32 [ %idx_timer.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7.i.for.body.i_crit_edge ]
  %i.0118.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7.i.for.body.i_crit_edge ]
  %target_residency_ns11.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.0118.i, i32 3
  %24 = ptrtoint ptr %target_residency_ns11.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %target_residency_ns11.i, align 8
  %arrayidx12.i = getelementptr %struct.teo_cpu, ptr %12, i32 0, i32 2, i32 %i.0118.i
  %hits.i = getelementptr %struct.teo_cpu, ptr %12, i32 0, i32 2, i32 %i.0118.i, i32 1
  %26 = ptrtoint ptr %hits.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hits.i, align 4
  %shr.i = lshr i32 %27, 3
  %sub14.i = sub i32 %27, %shr.i
  store i32 %sub14.i, ptr %hits.i, align 4
  %28 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx12.i, align 4
  %shr15.i = lshr i32 %29, 3
  %sub17.i = sub i32 %29, %shr15.i
  store i32 %sub17.i, ptr %arrayidx12.i, align 4
  %add20.i = add i32 %sub17.i, %sub14.i
  %30 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %total.i, align 8
  %add22.i = add i32 %add20.i, %31
  store i32 %add22.i, ptr %total.i, align 8
  %32 = ptrtoint ptr %sleep_length_ns.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %sleep_length_ns.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %33)
  %cmp24.not.i = icmp sgt i64 %25, %33
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %measured_ns.1.i)
  %cmp26.not.i = icmp ugt i64 %25, %measured_ns.1.i
  %idx_timer.1.i = select i1 %cmp24.not.i, i32 %idx_timer.0119.i, i32 %i.0118.i
  %34 = select i1 %cmp24.not.i, i1 true, i1 %cmp26.not.i
  %idx_duration.1.i = select i1 %34, i32 %idx_duration.0120.i, i32 %i.0118.i
  %inc.i = add nuw nsw i32 %i.0118.i, 1
  %35 = ptrtoint ptr %state_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state_count.i, align 8
  %cmp8.i = icmp slt i32 %inc.i, %36
  br i1 %cmp8.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end7.i.for.end.i_crit_edge
  %idx_timer.0.lcssa.i = phi i32 [ 0, %if.end7.i.for.end.i_crit_edge ], [ %idx_timer.1.i, %for.body.i.for.end.i_crit_edge ]
  %idx_duration.0.lcssa.i = phi i32 [ 0, %if.end7.i.for.end.i_crit_edge ], [ %idx_duration.1.i, %for.body.i.for.end.i_crit_edge ]
  %next_recent_idx.i = getelementptr inbounds %struct.teo_cpu, ptr %12, i32 0, i32 4
  %37 = ptrtoint ptr %next_recent_idx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %next_recent_idx.i, align 4
  %inc30.i = add i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc30.i)
  %cmp32.i = icmp sgt i32 %inc30.i, 8
  %spec.select116.i = select i1 %cmp32.i, i32 0, i32 %inc30.i
  %39 = ptrtoint ptr %next_recent_idx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.select116.i, ptr %next_recent_idx.i, align 4
  %arrayidx36.i = getelementptr %struct.teo_cpu, ptr %12, i32 0, i32 5, i32 %38
  %40 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp37.i = icmp sgt i32 %41, -1
  br i1 %cmp37.i, label %if.then38.i, label %for.end.i.if.end43.i_crit_edge

for.end.i.if.end43.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.then38.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %recent.i = getelementptr %struct.teo_cpu, ptr %12, i32 0, i32 2, i32 %41, i32 2
  %42 = ptrtoint ptr %recent.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %recent.i, align 4
  %dec.i = add i32 %43, -1
  store i32 %dec.i, ptr %recent.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then38.i, %for.end.i.if.end43.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %idx_timer.0.lcssa.i, i32 %idx_duration.0.lcssa.i)
  %cmp44.i = icmp eq i32 %idx_timer.0.lcssa.i, %idx_duration.0.lcssa.i
  br i1 %cmp44.i, label %if.then45.i, label %if.else52.i

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %hits48.i = getelementptr %struct.teo_cpu, ptr %12, i32 0, i32 2, i32 %idx_timer.0.lcssa.i, i32 1
  br label %teo_update.exit

if.else52.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx54.i = getelementptr %struct.teo_cpu, ptr %12, i32 0, i32 2, i32 %idx_duration.0.lcssa.i
  %44 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx54.i, align 4
  %add56.i = add i32 %45, 1024
  store i32 %add56.i, ptr %arrayidx54.i, align 4
  %recent59.i = getelementptr %struct.teo_cpu, ptr %12, i32 0, i32 2, i32 %idx_duration.0.lcssa.i, i32 2
  br label %teo_update.exit

teo_update.exit:                                  ; preds = %if.else52.i, %if.then45.i
  %recent59.sink123.i = phi ptr [ %recent59.i, %if.else52.i ], [ %hits48.i, %if.then45.i ]
  %.sink122.i = phi i32 [ 1, %if.else52.i ], [ 1024, %if.then45.i ]
  %storemerge.i = phi i32 [ %idx_duration.0.lcssa.i, %if.else52.i ], [ -1, %if.then45.i ]
  %46 = ptrtoint ptr %recent59.sink123.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %recent59.sink123.i, align 4
  %inc60.i = add i32 %47, %.sink122.i
  store i32 %inc60.i, ptr %recent59.sink123.i, align 4
  %48 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %storemerge.i, ptr %arrayidx36.i, align 4
  %49 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %total.i, align 8
  %add65.i = add i32 %50, 1024
  store i32 %add65.i, ptr %total.i, align 8
  %51 = ptrtoint ptr %last_state_idx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %last_state_idx, align 8
  br label %if.end

if.end:                                           ; preds = %teo_update.exit, %entry.if.end_crit_edge
  %call.i = tail call i64 @sched_clock() #6
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %call.i, ptr %4, align 8
  %call5 = call i64 @tick_nohz_get_sleep_length(ptr noundef nonnull %delta_tick) #6
  %sleep_length_ns = getelementptr inbounds %struct.teo_cpu, ptr %4, i32 0, i32 1
  %53 = ptrtoint ptr %sleep_length_ns to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %call5, ptr %sleep_length_ns, align 8
  %state_count = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 4
  %54 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp6 = icmp slt i32 %55, 2
  br i1 %cmp6, label %if.end.end_crit_edge, label %if.end8

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end8:                                          ; preds = %if.end
  %states_usage = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 7
  %56 = ptrtoint ptr %states_usage to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %states_usage, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %57)
  %tobool.not = icmp eq i64 %57, 0
  br i1 %tobool.not, label %if.then10, label %if.end8.for.body.preheader_crit_edge

if.end8.for.body.preheader_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.then10:                                        ; preds = %if.end8
  %target_residency_ns = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 1, i32 3
  %58 = ptrtoint ptr %target_residency_ns to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %target_residency_ns, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %call5)
  %cmp12 = icmp sgt i64 %59, %call5
  br i1 %cmp12, label %if.then10.end_crit_edge, label %if.then10.for.body.preheader_crit_edge

if.then10.for.body.preheader_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.then10.end_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

for.body.preheader:                               ; preds = %if.then10.for.body.preheader_crit_edge, %if.end8.for.body.preheader_crit_edge
  %idx.1276.ph = phi i32 [ 0, %if.then10.for.body.preheader_crit_edge ], [ -1, %if.end8.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0277 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %idx.1276 = phi i32 [ %idx.3.ph, %for.inc.for.body_crit_edge ], [ %idx.1276.ph, %for.body.preheader ]
  %idx0.0275 = phi i32 [ %idx0.2.ph, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %constraint_idx.0274 = phi i32 [ %constraint_idx.2.ph, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %hit_sum.0273 = phi i32 [ %add22, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %idx_hit_sum.0272 = phi i32 [ %idx_hit_sum.1.ph, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %recent_sum.0271 = phi i32 [ %add23, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %idx_recent_sum.0270 = phi i32 [ %idx_recent_sum.1.ph, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %intercept_sum.0269 = phi i32 [ %add21, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %idx_intercept_sum.0268 = phi i32 [ %idx_intercept_sum.1.ph, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sub = add nsw i32 %i.0277, -1
  %arrayidx18 = getelementptr %struct.teo_cpu, ptr %4, i32 0, i32 2, i32 %sub
  %60 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx18, align 4
  %add21 = add i32 %61, %intercept_sum.0269
  %hits = getelementptr %struct.teo_cpu, ptr %4, i32 0, i32 2, i32 %sub, i32 1
  %62 = ptrtoint ptr %hits to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hits, align 4
  %add22 = add i32 %63, %hit_sum.0273
  %recent = getelementptr %struct.teo_cpu, ptr %4, i32 0, i32 2, i32 %sub, i32 2
  %64 = ptrtoint ptr %recent to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %recent, align 4
  %add23 = add i32 %65, %recent_sum.0271
  %arrayidx25 = getelementptr %struct.cpuidle_device, ptr %dev, i32 0, i32 7, i32 %i.0277
  %66 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx25, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %67)
  %tobool27.not = icmp eq i64 %67, 0
  br i1 %tobool27.not, label %if.end29, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end29:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.1276)
  %cmp30 = icmp slt i32 %idx.1276, 0
  %spec.select = select i1 %cmp30, i32 %i.0277, i32 %idx0.0275
  %target_residency_ns33 = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.0277, i32 3
  %68 = ptrtoint ptr %target_residency_ns33 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %target_residency_ns33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %call5)
  %cmp34 = icmp sgt i64 %69, %call5
  br i1 %cmp34, label %for.end.thread, label %if.end36

if.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %exit_latency_ns = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.0277, i32 2
  %70 = ptrtoint ptr %exit_latency_ns to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %exit_latency_ns, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %call)
  %cmp37.not = icmp sgt i64 %71, %call
  %spec.select215 = select i1 %cmp37.not, i32 %constraint_idx.0274, i32 %i.0277
  br label %for.inc

for.end.thread:                                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select214 = select i1 %cmp30, i32 %i.0277, i32 %idx.1276
  br label %if.else

for.inc:                                          ; preds = %if.end36, %for.body.for.inc_crit_edge
  %idx_intercept_sum.1.ph = phi i32 [ %idx_intercept_sum.0268, %for.body.for.inc_crit_edge ], [ %add21, %if.end36 ]
  %idx_recent_sum.1.ph = phi i32 [ %idx_recent_sum.0270, %for.body.for.inc_crit_edge ], [ %add23, %if.end36 ]
  %idx_hit_sum.1.ph = phi i32 [ %idx_hit_sum.0272, %for.body.for.inc_crit_edge ], [ %add22, %if.end36 ]
  %constraint_idx.2.ph = phi i32 [ %constraint_idx.0274, %for.body.for.inc_crit_edge ], [ %spec.select215, %if.end36 ]
  %idx0.2.ph = phi i32 [ %idx0.0275, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end36 ]
  %idx.3.ph = phi i32 [ %idx.1276, %for.body.for.inc_crit_edge ], [ %i.0277, %if.end36 ]
  %inc = add nuw nsw i32 %i.0277, 1
  %exitcond.not = icmp eq i32 %inc, %55
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.3.ph)
  %cmp41 = icmp slt i32 %idx.3.ph, 0
  br i1 %cmp41, label %for.end.end_crit_edge, label %for.end.if.else_crit_edge

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

for.end.end_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.else:                                          ; preds = %for.end.if.else_crit_edge, %for.end.thread
  %idx.4306 = phi i32 [ %spec.select214, %for.end.thread ], [ %idx.3.ph, %for.end.if.else_crit_edge ]
  %idx0.3305 = phi i32 [ %spec.select, %for.end.thread ], [ %idx0.2.ph, %for.end.if.else_crit_edge ]
  %constraint_idx.0260304 = phi i32 [ %constraint_idx.0274, %for.end.thread ], [ %constraint_idx.2.ph, %for.end.if.else_crit_edge ]
  %idx_hit_sum.0262303 = phi i32 [ %idx_hit_sum.0272, %for.end.thread ], [ %idx_hit_sum.1.ph, %for.end.if.else_crit_edge ]
  %idx_recent_sum.0264302 = phi i32 [ %idx_recent_sum.0270, %for.end.thread ], [ %idx_recent_sum.1.ph, %for.end.if.else_crit_edge ]
  %idx_intercept_sum.0266301 = phi i32 [ %idx_intercept_sum.0268, %for.end.thread ], [ %idx_intercept_sum.1.ph, %for.end.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.4306, i32 %idx0.3305)
  %cmp43 = icmp eq i32 %idx.4306, %idx0.3305
  br i1 %cmp43, label %if.else.end_crit_edge, label %if.end46

if.else.end_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end46:                                         ; preds = %if.else
  %mul = shl i32 %idx_intercept_sum.0266301, 1
  %total = getelementptr inbounds %struct.teo_cpu, ptr %4, i32 0, i32 3
  %72 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %total, align 8
  %sub47 = sub i32 %73, %idx_hit_sum.0262303
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %sub47)
  %cmp48 = icmp ugt i32 %mul, %sub47
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx_recent_sum.0264302)
  %cmp49 = icmp ugt i32 %idx_recent_sum.0264302, 4
  %brmerge = select i1 %cmp49, i1 true, i1 %cmp48
  br i1 %brmerge, label %for.cond55.preheader, label %if.end46.if.end102_crit_edge

if.end46.if.end102_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

for.cond55.preheader:                             ; preds = %if.end46
  %cmp49.not = xor i1 %cmp49, true
  %cmp48.not = xor i1 %cmp48, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.4306)
  %cmp56331 = icmp sgt i32 %idx.4306, 0
  br i1 %cmp56331, label %for.cond55.preheader.for.body57_crit_edge, label %for.cond55.preheader.if.end102_crit_edge

for.cond55.preheader.if.end102_crit_edge:         ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

for.cond55.preheader.for.body57_crit_edge:        ; preds = %for.cond55.preheader
  br label %for.body57

for.body57:                                       ; preds = %cleanup96.for.body57_crit_edge, %for.cond55.preheader.for.body57_crit_edge
  %first_suitable_idx.0336 = phi i32 [ %first_suitable_idx.1, %cleanup96.for.body57_crit_edge ], [ %idx.4306, %for.cond55.preheader.for.body57_crit_edge ]
  %first_suitable_span_ns.0335 = phi i64 [ %first_suitable_span_ns.1, %cleanup96.for.body57_crit_edge ], [ %call5, %for.cond55.preheader.for.body57_crit_edge ]
  %i.1.in334 = phi i32 [ %i.1337, %cleanup96.for.body57_crit_edge ], [ %idx.4306, %for.cond55.preheader.for.body57_crit_edge ]
  %recent_sum.1333 = phi i32 [ %add63, %cleanup96.for.body57_crit_edge ], [ 0, %for.cond55.preheader.for.body57_crit_edge ]
  %intercept_sum.1332 = phi i32 [ %add61, %cleanup96.for.body57_crit_edge ], [ 0, %for.cond55.preheader.for.body57_crit_edge ]
  %i.1337 = add nsw i32 %i.1.in334, -1
  %arrayidx59 = getelementptr %struct.teo_cpu, ptr %4, i32 0, i32 2, i32 %i.1337
  %74 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx59, align 4
  %add61 = add i32 %75, %intercept_sum.1332
  %recent62 = getelementptr %struct.teo_cpu, ptr %4, i32 0, i32 2, i32 %i.1337, i32 2
  %76 = ptrtoint ptr %recent62 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %recent62, align 4
  %add63 = add i32 %77, %recent_sum.1333
  %target_residency_ns.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.1337, i32 3
  %78 = ptrtoint ptr %target_residency_ns.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %target_residency_ns.i, align 8
  %target_residency_ns3.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.1.in334, i32 3
  %80 = ptrtoint ptr %target_residency_ns3.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %target_residency_ns3.i, align 8
  %add4.i = add i64 %81, %79
  %div.i = sdiv i64 %add4.i, 2
  %mul67 = shl i32 %add63, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul67, i32 %idx_recent_sum.0264302)
  %cmp68 = icmp ugt i32 %mul67, %idx_recent_sum.0264302
  %or.cond = select i1 %cmp49.not, i1 true, i1 %cmp68
  %mul71 = shl i32 %add61, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul71, i32 %idx_intercept_sum.0266301)
  %cmp72 = icmp ugt i32 %mul71, %idx_intercept_sum.0266301
  %or.cond216 = select i1 %cmp48.not, i1 true, i1 %cmp72
  %or.cond284 = select i1 %or.cond, i1 %or.cond216, i1 false
  br i1 %or.cond284, label %if.then73, label %if.end83

if.then73:                                        ; preds = %for.body57
  %call.i220 = call zeroext i1 @tick_nohz_tick_stopped() #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000000, i64 %div.i)
  %cmp.i = icmp ult i64 %div.i, 10000000
  %82 = and i1 %cmp.i, %call.i220
  br i1 %82, label %if.then73.if.else81_crit_edge, label %land.lhs.true75

if.then73.if.else81_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else81

land.lhs.true75:                                  ; preds = %if.then73
  %arrayidx77 = getelementptr %struct.cpuidle_device, ptr %dev, i32 0, i32 7, i32 %i.1337
  %83 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx77, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %84)
  %tobool79.not = icmp eq i64 %84, 0
  br i1 %tobool79.not, label %land.lhs.true75.if.end102_crit_edge, label %land.lhs.true75.if.else81_crit_edge

land.lhs.true75.if.else81_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else81

land.lhs.true75.if.end102_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.else81:                                        ; preds = %land.lhs.true75.if.else81_crit_edge, %if.then73.if.else81_crit_edge
  br label %if.end102

if.end83:                                         ; preds = %for.body57
  %arrayidx85 = getelementptr %struct.cpuidle_device, ptr %dev, i32 0, i32 7, i32 %i.1337
  %85 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx85, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %86)
  %tobool87.not = icmp eq i64 %86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end83.cleanup96_crit_edge

if.end83.cleanup96_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup96

if.end89:                                         ; preds = %if.end83
  %call.i221 = call zeroext i1 @tick_nohz_tick_stopped() #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000000, i64 %div.i)
  %cmp.i222 = icmp ult i64 %div.i, 10000000
  %87 = and i1 %cmp.i222, %call.i221
  br i1 %87, label %if.then91, label %if.end89.cleanup96_crit_edge

if.end89.cleanup96_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup96

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_cmp4(i32 %first_suitable_idx.0336, i32 %idx.4306)
  %cmp92.not = icmp eq i32 %first_suitable_idx.0336, %idx.4306
  br i1 %cmp92.not, label %if.then91.if.end102_crit_edge, label %if.then91.cleanup96_crit_edge

if.then91.cleanup96_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup96

if.then91.if.end102_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

cleanup96:                                        ; preds = %if.then91.cleanup96_crit_edge, %if.end89.cleanup96_crit_edge, %if.end83.cleanup96_crit_edge
  %first_suitable_span_ns.1 = phi i64 [ %first_suitable_span_ns.0335, %if.end83.cleanup96_crit_edge ], [ %first_suitable_span_ns.0335, %if.then91.cleanup96_crit_edge ], [ %div.i, %if.end89.cleanup96_crit_edge ]
  %first_suitable_idx.1 = phi i32 [ %first_suitable_idx.0336, %if.end83.cleanup96_crit_edge ], [ %first_suitable_idx.0336, %if.then91.cleanup96_crit_edge ], [ %i.1337, %if.end89.cleanup96_crit_edge ]
  %cmp56 = icmp sgt i32 %i.1.in334, 1
  br i1 %cmp56, label %cleanup96.for.body57_crit_edge, label %cleanup96.if.end102_crit_edge

cleanup96.if.end102_crit_edge:                    ; preds = %cleanup96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

cleanup96.for.body57_crit_edge:                   ; preds = %cleanup96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57

if.end102:                                        ; preds = %cleanup96.if.end102_crit_edge, %if.then91.if.end102_crit_edge, %if.else81, %land.lhs.true75.if.end102_crit_edge, %for.cond55.preheader.if.end102_crit_edge, %if.end46.if.end102_crit_edge
  %idx.9 = phi i32 [ %idx.4306, %if.end46.if.end102_crit_edge ], [ %i.1337, %land.lhs.true75.if.end102_crit_edge ], [ %first_suitable_idx.0336, %if.else81 ], [ %idx.4306, %for.cond55.preheader.if.end102_crit_edge ], [ %idx.4306, %if.then91.if.end102_crit_edge ], [ %idx.4306, %cleanup96.if.end102_crit_edge ]
  %duration_ns.4 = phi i64 [ %call5, %if.end46.if.end102_crit_edge ], [ %div.i, %land.lhs.true75.if.end102_crit_edge ], [ %first_suitable_span_ns.0335, %if.else81 ], [ %call5, %for.cond55.preheader.if.end102_crit_edge ], [ %call5, %if.then91.if.end102_crit_edge ], [ %call5, %cleanup96.if.end102_crit_edge ]
  %88 = call i32 @llvm.smin.i32(i32 %idx.9, i32 %constraint_idx.0260304)
  br label %end

end:                                              ; preds = %if.end102, %if.else.end_crit_edge, %for.end.end_crit_edge, %if.then10.end_crit_edge, %if.end.end_crit_edge
  %idx0.4 = phi i32 [ %idx0.3305, %if.else.end_crit_edge ], [ 0, %if.then10.end_crit_edge ], [ 0, %if.end.end_crit_edge ], [ %idx0.2.ph, %for.end.end_crit_edge ], [ %idx0.3305, %if.end102 ]
  %idx.10 = phi i32 [ %idx0.3305, %if.else.end_crit_edge ], [ 0, %if.then10.end_crit_edge ], [ 0, %if.end.end_crit_edge ], [ 0, %for.end.end_crit_edge ], [ %88, %if.end102 ]
  %duration_ns.5 = phi i64 [ %call5, %if.else.end_crit_edge ], [ %call5, %if.then10.end_crit_edge ], [ %call5, %if.end.end_crit_edge ], [ %call5, %for.end.end_crit_edge ], [ %duration_ns.4, %if.end102 ]
  %flags = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %idx.10, i32 4
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags, align 8
  %and = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool108.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000000, i64 %duration_ns.5)
  %cmp110 = icmp slt i64 %duration_ns.5, 10000000
  %or.cond219 = select i1 %tobool108.not, i1 true, i1 %cmp110
  br i1 %or.cond219, label %land.lhs.true111, label %end.if.end123_crit_edge

end.if.end123_crit_edge:                          ; preds = %end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

land.lhs.true111:                                 ; preds = %end
  %call112 = call zeroext i1 @tick_nohz_tick_stopped() #6
  br i1 %call112, label %land.lhs.true111.if.end123_crit_edge, label %if.then113

land.lhs.true111.if.end123_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then113:                                       ; preds = %land.lhs.true111
  %91 = ptrtoint ptr %stop_tick to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %stop_tick, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.10, i32 %idx0.4)
  %cmp114 = icmp sgt i32 %idx.10, %idx0.4
  br i1 %cmp114, label %land.lhs.true115, label %if.then113.if.end123_crit_edge

if.then113.if.end123_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

land.lhs.true115:                                 ; preds = %if.then113
  %target_residency_ns118 = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %idx.10, i32 3
  %92 = ptrtoint ptr %target_residency_ns118 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %target_residency_ns118, align 8
  %94 = ptrtoint ptr %delta_tick to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %delta_tick, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %93, i64 %95)
  %cmp119 = icmp sgt i64 %93, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.10)
  %cmp11.i = icmp sgt i32 %idx.10, 0
  %or.cond252 = select i1 %cmp119, i1 %cmp11.i, i1 false
  br i1 %or.cond252, label %for.body.i226.preheader, label %land.lhs.true115.if.end123_crit_edge

land.lhs.true115.if.end123_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

for.body.i226.preheader:                          ; preds = %land.lhs.true115
  %i.010.i = add nsw i32 %idx.10, -1
  br label %for.body.i226

for.body.i226:                                    ; preds = %for.inc.i.for.body.i226_crit_edge, %for.body.i226.preheader
  %i.013.i = phi i32 [ %i.0.i, %for.inc.i.for.body.i226_crit_edge ], [ %i.010.i, %for.body.i226.preheader ]
  %state_idx.addr.012.i = phi i32 [ %state_idx.addr.1.i, %for.inc.i.for.body.i226_crit_edge ], [ %idx.10, %for.body.i226.preheader ]
  %arrayidx.i225 = getelementptr %struct.cpuidle_device, ptr %dev, i32 0, i32 7, i32 %i.013.i
  %96 = ptrtoint ptr %arrayidx.i225 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx.i225, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %97)
  %tobool.not.i = icmp eq i64 %97, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i226.for.inc.i_crit_edge

for.body.i226.for.inc.i_crit_edge:                ; preds = %for.body.i226
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i226
  %target_residency_ns.i227 = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.013.i, i32 3
  %98 = ptrtoint ptr %target_residency_ns.i227 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %target_residency_ns.i227, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %99, i64 %95)
  %cmp2.not.i = icmp sgt i64 %99, %95
  br i1 %cmp2.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.if.end123_crit_edge

if.end.i.if.end123_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i226.for.inc.i_crit_edge
  %state_idx.addr.1.i = phi i32 [ %state_idx.addr.012.i, %for.body.i226.for.inc.i_crit_edge ], [ %i.013.i, %if.end.i.for.inc.i_crit_edge ]
  %i.0.i = add i32 %i.013.i, -1
  %cmp.i228 = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i228, label %for.inc.i.for.body.i226_crit_edge, label %for.inc.i.if.end123_crit_edge

for.inc.i.if.end123_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

for.inc.i.for.body.i226_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i226

if.end123:                                        ; preds = %for.inc.i.if.end123_crit_edge, %if.end.i.if.end123_crit_edge, %land.lhs.true115.if.end123_crit_edge, %if.then113.if.end123_crit_edge, %land.lhs.true111.if.end123_crit_edge, %end.if.end123_crit_edge
  %idx.11 = phi i32 [ %idx.10, %land.lhs.true111.if.end123_crit_edge ], [ %idx.10, %land.lhs.true115.if.end123_crit_edge ], [ %idx.10, %if.then113.if.end123_crit_edge ], [ %idx.10, %end.if.end123_crit_edge ], [ %state_idx.addr.1.i, %for.inc.i.if.end123_crit_edge ], [ %i.013.i, %if.end.i.if.end123_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %delta_tick) #6
  ret i32 %idx.11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @teo_reflect(ptr nocapture noundef %dev, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @teo_cpus to i32)
  %4 = inttoptr i32 %add to ptr
  %last_state_idx = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %last_state_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %state, ptr %last_state_idx, align 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %dev, align 8
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i1 @tick_nohz_idle_got_tick() #6
  br i1 %call, label %land.lhs.true, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %sleep_length_ns = getelementptr inbounds %struct.teo_cpu, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %sleep_length_ns to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sleep_length_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000000, i64 %9)
  %cmp = icmp sgt i64 %9, 10000000
  br i1 %cmp, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load2 = load i8, ptr %dev, align 8
  %bf.clear3 = and i8 %bf.load2, -33
  store i8 %bf.clear3, ptr %dev, align 8
  %sleep_length_ns4 = getelementptr inbounds %struct.teo_cpu, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %sleep_length_ns4 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %sleep_length_ns4, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %call.i = tail call i64 @sched_clock() #6
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %4, align 8
  %sub = sub i64 %call.i, %14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i64 [ %sub, %if.else ], [ %12, %if.then ]
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %storemerge, ptr %4, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @cpuidle_governor_latency_req(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @tick_nohz_get_sleep_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tick_nohz_tick_stopped() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tick_nohz_idle_got_tick() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__initcall__kmod_teo__154_534_teo_governor_init2, !1, !"__initcall__kmod_teo__154_534_teo_governor_init2", i1 false, i1 false}
!1 = !{!"../drivers/cpuidle/governors/teo.c", i32 534, i32 1}
!2 = !{ptr @__pcpu_unique_teo_cpus, !3, !"__pcpu_unique_teo_cpus", i1 false, i1 false}
!3 = !{!"../drivers/cpuidle/governors/teo.c", i32 153, i32 8}
!4 = !{ptr @teo_cpus, !3, !"teo_cpus", i1 false, i1 false}
!5 = !{ptr @teo_governor, !6, !"teo_governor", i1 false, i1 false}
!6 = !{!"../drivers/cpuidle/governors/teo.c", i32 521, i32 32}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"auto-init"}
