; ModuleID = '/llk/IR_all_yes/sound/core/seq/oss/seq_oss_timer.c_pt.bc'
source_filename = "../sound/core/seq/oss/seq_oss_timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_oss_timer = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%union.anon = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.seq_oss_devinfo = type { i32, i32, i32, i32, %struct.snd_seq_addr, i32, i32, i32, i32, [16 x %struct.seq_oss_synthinfo], i32, ptr, ptr, ptr }
%struct.seq_oss_synthinfo = type { %struct.snd_seq_oss_arg, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_seq_oss_arg = type { i32, i32, i32, %struct.snd_seq_addr, ptr, i32 }
%struct.evrec_timer = type { i8, i8, i8, i8, i32 }
%struct.snd_seq_queue_tempo = type { i32, i32, i32, i32, i32, [24 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sound/core/seq/oss/seq_oss_timer.c\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 129]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.2 = internal global [7 x i64] [i64 5, i64 32, i64 21506, i64 21507, i64 21508, i64 3221509121, i64 3221509125]
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private constant [38 x i8] c"../sound/core/seq/oss/seq_oss_timer.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 224, i32 7 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @snd_seq_oss_timer_new(ptr noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dp, ptr %call7.i.i, align 8
  %cur_tick = getelementptr inbounds %struct.seq_oss_timer, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %cur_tick to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cur_tick, align 4
  %realtime = getelementptr inbounds %struct.seq_oss_timer, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %realtime to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %realtime, align 8
  %running = getelementptr inbounds %struct.seq_oss_timer, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %running, align 4
  %oss_tempo = getelementptr inbounds %struct.seq_oss_timer, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %oss_tempo to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 60, ptr %oss_tempo, align 8
  %oss_timebase = getelementptr inbounds %struct.seq_oss_timer, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %oss_timebase to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100, ptr %oss_timebase, align 4
  %tempo.i = getelementptr inbounds %struct.seq_oss_timer, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %tempo.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1000000, ptr %tempo.i, align 8
  %ppq.i = getelementptr inbounds %struct.seq_oss_timer, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %ppq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 100, ptr %ppq.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_timer_delete(ptr noundef %rec) local_unnamed_addr #0 align 64 {
entry:
  %ev.i.i = alloca %struct.snd_seq_event, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rec, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %running.i = getelementptr inbounds %struct.seq_oss_timer, ptr %rec, i32 0, i32 3
  %0 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.snd_seq_oss_timer_stop.exit_crit_edge, label %if.end.i

if.then.snd_seq_oss_timer_stop.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_seq_oss_timer_stop.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rec, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev.i.i) #6
  %4 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i, i32 0, i32 5
  %6 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i, i32 0, i32 7
  %7 = call ptr @memset(ptr %ev.i.i, i32 0, i32 28)
  %8 = ptrtoint ptr %ev.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %ev.i.i, align 4
  %cseq.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %cseq.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cseq.i.i, align 4
  %conv2.i.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv2.i.i, ptr %5, align 4
  %queue.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queue.i.i, align 4
  %conv7.i.i = trunc i32 %13 to i8
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7.i.i, ptr %4, align 1
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv7.i.i, ptr %6, align 4
  %call.i.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %10, ptr noundef nonnull %ev.i.i, i32 noundef 1, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev.i.i) #6
  %16 = ptrtoint ptr %running.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %running.i, align 4
  br label %snd_seq_oss_timer_stop.exit

snd_seq_oss_timer_stop.exit:                      ; preds = %if.end.i, %if.then.snd_seq_oss_timer_stop.exit_crit_edge
  call void @kfree(ptr noundef nonnull %rec) #6
  br label %if.end

if.end:                                           ; preds = %snd_seq_oss_timer_stop.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_timer_stop(ptr nocapture noundef %timer) local_unnamed_addr #0 align 64 {
entry:
  %ev.i = alloca %struct.snd_seq_event, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 3
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev.i) #6
  %4 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i, i32 0, i32 5
  %6 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i, i32 0, i32 7
  %7 = call ptr @memset(ptr %ev.i, i32 0, i32 28)
  %8 = ptrtoint ptr %ev.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %ev.i, align 4
  %cseq.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %cseq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cseq.i, align 4
  %conv2.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv2.i, ptr %5, align 4
  %queue.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queue.i, align 4
  %conv7.i = trunc i32 %13 to i8
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7.i, ptr %4, align 1
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv7.i, ptr %6, align 4
  %call.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %10, ptr noundef nonnull %ev.i, i32 noundef 1, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev.i) #6
  %16 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %running, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_process_timer_event(ptr nocapture noundef %rec, ptr nocapture noundef readonly %ev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %time = getelementptr inbounds %struct.evrec_timer, ptr %ev, i32 0, i32 4
  %0 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %time, align 4
  %2 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ev, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 -127, label %if.then
    i8 2, label %if.then21
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %cmd = getelementptr inbounds %struct.evrec_timer, ptr %ev, i32 0, i32 1
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cmd, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %6, label %if.then.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %if.then.sw.bb3_crit_edge
    i8 4, label %sw.bb15
  ]

if.then.sw.bb3_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %cur_tick = getelementptr inbounds %struct.seq_oss_timer, ptr %rec, i32 0, i32 1
  %8 = ptrtoint ptr %cur_tick to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_tick, align 4
  %add = add i32 %9, %1
  %realtime = getelementptr inbounds %struct.seq_oss_timer, ptr %rec, i32 0, i32 2
  %10 = ptrtoint ptr %realtime to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %realtime, align 4
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %if.then.sw.bb3_crit_edge
  %parm.0 = phi i32 [ %1, %if.then.sw.bb3_crit_edge ], [ %add, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parm.0)
  %cmp4 = icmp eq i32 %parm.0, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %realtime7 = getelementptr inbounds %struct.seq_oss_timer, ptr %rec, i32 0, i32 2
  %11 = ptrtoint ptr %realtime7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %realtime7, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb3
  %cur_tick8 = getelementptr inbounds %struct.seq_oss_timer, ptr %rec, i32 0, i32 1
  %12 = ptrtoint ptr %cur_tick8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_tick8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %parm.0, i32 %13)
  %cmp9.not = icmp ult i32 %parm.0, %13
  br i1 %cmp9.not, label %if.else.cleanup_crit_edge, label %if.then11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %realtime12 = getelementptr inbounds %struct.seq_oss_timer, ptr %rec, i32 0, i32 2
  %14 = ptrtoint ptr %realtime12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %realtime12, align 4
  %15 = ptrtoint ptr %cur_tick8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %parm.0, ptr %cur_tick8, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @snd_seq_oss_timer_start(ptr noundef %rec)
  br label %cleanup

if.then21:                                        ; preds = %entry
  %16 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ev, align 4
  %shr = lshr i32 %17, 8
  %cur_tick22 = getelementptr inbounds %struct.seq_oss_timer, ptr %rec, i32 0, i32 1
  %18 = ptrtoint ptr %cur_tick22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_tick22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %19)
  %cmp23 = icmp ugt i32 %shr, %19
  br i1 %cmp23, label %if.then25, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %cur_tick22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr, ptr %cur_tick22, align 4
  %realtime27 = getelementptr inbounds %struct.seq_oss_timer, ptr %rec, i32 0, i32 2
  %21 = ptrtoint ptr %realtime27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %realtime27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.then21.cleanup_crit_edge, %sw.bb15, %if.then11, %if.else.cleanup_crit_edge, %if.then6, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb15 ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %if.then11 ], [ 1, %if.then6 ], [ 1, %if.then25 ], [ 1, %if.then21.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_timer_start(ptr nocapture noundef %timer) local_unnamed_addr #0 align 64 {
entry:
  %ev.i = alloca %struct.snd_seq_event, align 4
  %ev.i.i = alloca %struct.snd_seq_event, align 4
  %tmprec = alloca %struct.snd_seq_queue_tempo, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmprec) #6
  %running = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 3
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %snd_seq_oss_timer_stop.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

snd_seq_oss_timer_stop.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev.i.i) #6
  %4 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i, i32 0, i32 5
  %6 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i, i32 0, i32 7
  %7 = call ptr @memset(ptr %ev.i.i, i32 0, i32 28)
  %8 = ptrtoint ptr %ev.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %ev.i.i, align 4
  %cseq.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %cseq.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cseq.i.i, align 4
  %conv2.i.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv2.i.i, ptr %5, align 4
  %queue.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queue.i.i, align 4
  %conv7.i.i = trunc i32 %13 to i8
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7.i.i, ptr %4, align 1
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv7.i.i, ptr %6, align 4
  %call.i.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %10, ptr noundef nonnull %ev.i.i, i32 noundef 1, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev.i.i) #6
  %16 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %running, align 4
  br label %if.end

if.end:                                           ; preds = %snd_seq_oss_timer_stop.exit, %entry.if.end_crit_edge
  %17 = getelementptr inbounds i8, ptr %tmprec, i32 12
  %18 = call ptr @memset(ptr %17, i32 0, i32 32)
  %queue = getelementptr inbounds %struct.seq_oss_devinfo, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %queue, align 4
  %21 = ptrtoint ptr %tmprec to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tmprec, align 4
  %ppq = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 5
  %22 = ptrtoint ptr %ppq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ppq, align 4
  %ppq3 = getelementptr inbounds %struct.snd_seq_queue_tempo, ptr %tmprec, i32 0, i32 2
  %24 = ptrtoint ptr %ppq3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ppq3, align 4
  %tempo = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 4
  %25 = ptrtoint ptr %tempo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tempo, align 4
  %tempo4 = getelementptr inbounds %struct.snd_seq_queue_tempo, ptr %tmprec, i32 0, i32 1
  %27 = ptrtoint ptr %tempo4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tempo4, align 4
  %cseq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cseq, align 4
  %call5 = call i32 @snd_seq_set_queue_tempo(i32 noundef %29, ptr noundef nonnull %tmprec) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev.i) #6
  %30 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i, i32 0, i32 3
  %31 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i, i32 0, i32 5
  %32 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i, i32 0, i32 7
  %33 = call ptr @memset(ptr %ev.i, i32 0, i32 28)
  %34 = ptrtoint ptr %ev.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 30, ptr %ev.i, align 4
  %35 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cseq, align 4
  %conv2.i = trunc i32 %36 to i8
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv2.i, ptr %31, align 4
  %38 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %queue, align 4
  %conv7.i = trunc i32 %39 to i8
  %40 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv7.i, ptr %30, align 1
  %41 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv7.i, ptr %32, align 4
  %call.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %36, ptr noundef nonnull %ev.i, i32 noundef 1, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev.i) #6
  %42 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %running, align 4
  %cur_tick = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 1
  %43 = ptrtoint ptr %cur_tick to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %cur_tick, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmprec) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_set_queue_tempo(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_timer_continue(ptr nocapture noundef %timer) local_unnamed_addr #0 align 64 {
entry:
  %ev.i = alloca %struct.snd_seq_event, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 3
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev.i) #6
  %4 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i, i32 0, i32 5
  %6 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i, i32 0, i32 7
  %7 = call ptr @memset(ptr %ev.i, i32 0, i32 28)
  %8 = ptrtoint ptr %ev.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 31, ptr %ev.i, align 4
  %cseq.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %cseq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cseq.i, align 4
  %conv2.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv2.i, ptr %5, align 4
  %queue.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queue.i, align 4
  %conv7.i = trunc i32 %13 to i8
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7.i, ptr %4, align 1
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv7.i, ptr %6, align 4
  %call.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %10, ptr noundef nonnull %ev.i, i32 noundef 1, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev.i) #6
  %16 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %running, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_timer_tempo(ptr nocapture noundef %timer, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %ev.i = alloca %struct.snd_seq_event, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smin.i32(i32 %value, i32 360)
  %1 = tail call i32 @llvm.smax.i32(i32 %0, i32 8)
  %oss_tempo = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 6
  %2 = ptrtoint ptr %oss_tempo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %oss_tempo, align 4
  %div.i12 = udiv i32 60000000, %1
  %tempo.i = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 4
  %3 = ptrtoint ptr %tempo.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div.i12, ptr %tempo.i, align 4
  %oss_timebase.i = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 7
  %4 = ptrtoint ptr %oss_timebase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oss_timebase.i, align 4
  %ppq.i = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 5
  %6 = ptrtoint ptr %ppq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ppq.i, align 4
  %running = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 3
  %7 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then4

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %timer, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev.i) #6
  %11 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i, i32 0, i32 5
  %13 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i, i32 0, i32 7
  %14 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i, i32 0, i32 7, i32 0, i32 4
  %15 = call ptr @memset(ptr %ev.i, i32 0, i32 28)
  %16 = ptrtoint ptr %ev.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 35, ptr %ev.i, align 4
  %cseq.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %cseq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cseq.i, align 4
  %conv2.i = trunc i32 %18 to i8
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv2.i, ptr %12, align 4
  %queue.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %10, i32 0, i32 3
  %20 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %queue.i, align 4
  %conv7.i = trunc i32 %21 to i8
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv7.i, ptr %11, align 1
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv7.i, ptr %13, align 4
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div.i12, ptr %14, align 4
  %call.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %18, ptr noundef nonnull %ev.i, i32 noundef 1, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev.i) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_timer_ioctl(ptr nocapture noundef %timer, i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %ev.i.i105 = alloca %struct.snd_seq_event, align 4
  %ev.i.i96 = alloca %struct.snd_seq_event, align 4
  %ev.i.i = alloca %struct.snd_seq_event, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073458941, i32 %cmd)
  %cmp = icmp eq i32 %cmd, -1073458941
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 224) #6
  %0 = tail call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !12
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #6, !srcloc !15
  %asmresult = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1)
  %tobool4.not = icmp eq i32 %asmresult1, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %oss_tempo = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 6
  %4 = ptrtoint ptr %oss_tempo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oss_tempo, align 4
  %oss_timebase = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 7
  %6 = ptrtoint ptr %oss_timebase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oss_timebase, align 4
  %mul = mul i32 %7, %5
  %add = add i32 %mul, 30
  %div = sdiv i32 %add, 60
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 229) #6
  %8 = tail call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i.i84 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i84 to ptr
  %cpu_domain.i.i85 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i85) #4, !srcloc !12
  %and.i86 = and i32 %10, -13
  %or.i87 = or i32 %and.i86, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i87) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  %11 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 %div, i32 -1226833921) #6, !srcloc !16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool16.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool16.not, i32 0, i32 -14
  br label %cleanup

if.end17:                                         ; preds = %entry
  %12 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %timer, align 4
  %seq_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18 = icmp eq i32 %15, 0
  br i1 %cmp18, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %16 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %cmd, label %if.end20.cleanup_crit_edge [
    i32 21506, label %sw.bb
    i32 21507, label %sw.bb22
    i32 21508, label %sw.bb24
    i32 -1073458171, label %sw.bb26
    i32 -1073458175, label %sw.bb43
  ]

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 @snd_seq_oss_timer_start(ptr noundef %timer)
  br label %cleanup

sw.bb22:                                          ; preds = %if.end20
  %running.i = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 3
  %17 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %sw.bb22.cleanup_crit_edge, label %if.end.i

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev.i.i) #6
  %19 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i, i32 0, i32 3
  %20 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i, i32 0, i32 5
  %21 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i, i32 0, i32 7
  %22 = call ptr @memset(ptr %ev.i.i, i32 0, i32 28)
  %23 = ptrtoint ptr %ev.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 32, ptr %ev.i.i, align 4
  %cseq.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %13, i32 0, i32 1
  %24 = ptrtoint ptr %cseq.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cseq.i.i, align 4
  %conv2.i.i = trunc i32 %25 to i8
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv2.i.i, ptr %20, align 4
  %queue.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %13, i32 0, i32 3
  %27 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %queue.i.i, align 4
  %conv7.i.i = trunc i32 %28 to i8
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv7.i.i, ptr %19, align 1
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv7.i.i, ptr %21, align 4
  %call.i.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %25, ptr noundef nonnull %ev.i.i, i32 noundef 1, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev.i.i) #6
  %31 = ptrtoint ptr %running.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %running.i, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %if.end20
  %running.i97 = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 3
  %32 = ptrtoint ptr %running.i97 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %running.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i98 = icmp eq i32 %33, 0
  br i1 %tobool.not.i98, label %if.end.i104, label %sw.bb24.cleanup_crit_edge

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i104:                                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev.i.i96) #6
  %34 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i96, i32 0, i32 3
  %35 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i96, i32 0, i32 5
  %36 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i96, i32 0, i32 7
  %37 = call ptr @memset(ptr %ev.i.i96, i32 0, i32 28)
  %38 = ptrtoint ptr %ev.i.i96 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 31, ptr %ev.i.i96, align 4
  %cseq.i.i99 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %13, i32 0, i32 1
  %39 = ptrtoint ptr %cseq.i.i99 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cseq.i.i99, align 4
  %conv2.i.i100 = trunc i32 %40 to i8
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv2.i.i100, ptr %35, align 4
  %queue.i.i101 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %13, i32 0, i32 3
  %42 = ptrtoint ptr %queue.i.i101 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %queue.i.i101, align 4
  %conv7.i.i102 = trunc i32 %43 to i8
  %44 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv7.i.i102, ptr %34, align 1
  %45 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv7.i.i102, ptr %36, align 4
  %call.i.i103 = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %40, ptr noundef nonnull %ev.i.i96, i32 noundef 1, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev.i.i96) #6
  %46 = ptrtoint ptr %running.i97 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %running.i97, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %if.end20
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 243) #6
  %47 = tail call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i.i88 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i88 to ptr
  %cpu_domain.i.i89 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i89) #4, !srcloc !12
  %and.i90 = and i32 %49, -13
  %or.i91 = or i32 %and.i90, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i91) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  %50 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #6, !srcloc !17
  %asmresult36 = extractvalue { i32, i32 } %50, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult36)
  %tobool39.not = icmp eq i32 %asmresult36, 0
  br i1 %tobool39.not, label %if.end41, label %sw.bb26.cleanup_crit_edge

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %sw.bb26
  %asmresult37 = extractvalue { i32, i32 } %50, 1
  %51 = tail call i32 @llvm.smin.i32(i32 %asmresult37, i32 360) #6
  %52 = tail call i32 @llvm.smax.i32(i32 %51, i32 8) #6
  %oss_tempo.i = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 6
  %53 = ptrtoint ptr %oss_tempo.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %oss_tempo.i, align 4
  %div.i12.i = udiv i32 60000000, %52
  %tempo.i.i = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 4
  %54 = ptrtoint ptr %tempo.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div.i12.i, ptr %tempo.i.i, align 4
  %oss_timebase.i.i = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 7
  %55 = ptrtoint ptr %oss_timebase.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %oss_timebase.i.i, align 4
  %ppq.i.i = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 5
  %57 = ptrtoint ptr %ppq.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %ppq.i.i, align 4
  %running.i106 = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 3
  %58 = ptrtoint ptr %running.i106 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %running.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i107 = icmp eq i32 %59, 0
  br i1 %tobool.not.i107, label %if.end41.cleanup_crit_edge, label %if.then4.i

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %timer, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev.i.i105) #6
  %62 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i105, i32 0, i32 3
  %63 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i105, i32 0, i32 5
  %64 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i105, i32 0, i32 7
  %65 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i105, i32 0, i32 7, i32 0, i32 4
  %66 = call ptr @memset(ptr %ev.i.i105, i32 0, i32 28)
  %67 = ptrtoint ptr %ev.i.i105 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 35, ptr %ev.i.i105, align 4
  %cseq.i.i108 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %61, i32 0, i32 1
  %68 = ptrtoint ptr %cseq.i.i108 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cseq.i.i108, align 4
  %conv2.i.i109 = trunc i32 %69 to i8
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv2.i.i109, ptr %63, align 4
  %queue.i.i110 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %61, i32 0, i32 3
  %71 = ptrtoint ptr %queue.i.i110 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %queue.i.i110, align 4
  %conv7.i.i111 = trunc i32 %72 to i8
  %73 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv7.i.i111, ptr %62, align 1
  %74 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv7.i.i111, ptr %64, align 4
  %75 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %div.i12.i, ptr %65, align 4
  %call.i.i112 = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %69, ptr noundef nonnull %ev.i.i105, i32 noundef 1, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev.i.i105) #6
  br label %cleanup

sw.bb43:                                          ; preds = %if.end20
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 247) #6
  %76 = tail call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i.i92 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i92 to ptr
  %cpu_domain.i.i93 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 4
  %78 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i93) #4, !srcloc !12
  %and.i94 = and i32 %78, -13
  %or.i95 = or i32 %and.i94, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i95) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  %79 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #6, !srcloc !18
  %asmresult53 = extractvalue { i32, i32 } %79, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult53)
  %tobool56.not = icmp eq i32 %asmresult53, 0
  br i1 %tobool56.not, label %if.end58, label %sw.bb43.cleanup_crit_edge

sw.bb43.cleanup_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end58:                                         ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  %asmresult54 = extractvalue { i32, i32 } %79, 1
  %80 = tail call i32 @llvm.smin.i32(i32 %asmresult54, i32 1000)
  %81 = tail call i32 @llvm.smax.i32(i32 %80, i32 1)
  %oss_timebase65 = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 7
  %82 = ptrtoint ptr %oss_timebase65 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %oss_timebase65, align 4
  %oss_tempo.i113 = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 6
  %83 = ptrtoint ptr %oss_tempo.i113 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %oss_tempo.i113, align 4
  %div.i = sdiv i32 60000000, %84
  %tempo.i = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 4
  %85 = ptrtoint ptr %tempo.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %div.i, ptr %tempo.i, align 4
  %ppq.i = getelementptr inbounds %struct.seq_oss_timer, ptr %timer, i32 0, i32 5
  %86 = ptrtoint ptr %ppq.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %81, ptr %ppq.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %sw.bb43.cleanup_crit_edge, %if.then4.i, %if.end41.cleanup_crit_edge, %sw.bb26.cleanup_crit_edge, %if.end.i104, %sw.bb24.cleanup_crit_edge, %if.end.i, %sw.bb22.cleanup_crit_edge, %sw.bb, %if.end20.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end6, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end6 ], [ 0, %if.end58 ], [ 0, %sw.bb ], [ -14, %if.then.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ -14, %sw.bb26.cleanup_crit_edge ], [ -14, %sw.bb43.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ 0, %sw.bb22.cleanup_crit_edge ], [ 0, %if.end.i ], [ 0, %sw.bb24.cleanup_crit_edge ], [ 0, %if.end.i104 ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %if.then4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_dispatch(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.named.register.sp = !{!2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/core/seq/oss/seq_oss_timer.c", i32 224, i32 7}
!2 = !{!"sp"}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i64 4646821}
!13 = !{i64 4647018}
!14 = !{i64 2152132251}
!15 = !{i64 2153942373, i64 2153942653, i64 2153942987, i64 2153943321}
!16 = !{i64 2153951848, i64 2153952128, i64 2153952462, i64 2153952796}
!17 = !{i64 2153965261, i64 2153965541, i64 2153965875, i64 2153966209}
!18 = !{i64 2153978164, i64 2153978444, i64 2153978778, i64 2153979112}
