; ModuleID = '/llk/IR_all_yes/sound/core/seq/oss/seq_oss_readq.c_pt.bc'
source_filename = "../sound/core/seq/oss/seq_oss_readq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_oss_readq = type { ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.evrec = type { %struct.evrec_timer }
%struct.evrec_timer = type { i8, i8, i8, i8, i32 }
%struct.readq_sysex_ctx = type { ptr, i32 }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon.2 }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%union.anon.2 = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@snd_seq_oss_readq_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&q->midi_sleep\00", [17 x i8] zeroinitializer }, align 32
@snd_seq_oss_readq_new.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&q->lock\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sound/core/seq/oss/seq_oss_readq.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"  read queue [%s] length = %d : tick = %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sleeping\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"running\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 50, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 51, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 183, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [38 x i8] c"../sound/core/seq/oss/seq_oss_readq.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 246, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @snd_seq_oss_readq_new.__key, ptr @.str, ptr @snd_seq_oss_readq_new.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_oss_readq_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_oss_readq_new.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_seq_oss_readq_new(ptr nocapture noundef readnone %dp, i32 noundef %maxlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 124) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %maxlen, i32 8) #8
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !21

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call7.i.i, align 8
  br label %if.then5

if.end7.i.i:                                      ; preds = %if.end
  %4 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #12
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %tobool4.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not, label %if.end7.i.i.if.then5_crit_edge, label %if.end6

if.end7.i.i.if.then5_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then5:                                         ; preds = %if.end7.i.i.if.then5_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %maxlen7 = getelementptr inbounds %struct.seq_oss_readq, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %maxlen7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %maxlen, ptr %maxlen7, align 8
  %qlen = getelementptr inbounds %struct.seq_oss_readq, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen, align 4
  %tail = getelementptr inbounds %struct.seq_oss_readq, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tail, align 8
  %head = getelementptr inbounds %struct.seq_oss_readq, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %head, align 4
  %midi_sleep = getelementptr inbounds %struct.seq_oss_readq, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %midi_sleep, ptr noundef nonnull @.str, ptr noundef nonnull @snd_seq_oss_readq_new.__key) #8
  %lock = getelementptr inbounds %struct.seq_oss_readq, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_seq_oss_readq_new.__key.1, i16 noundef signext 3) #8
  %pre_event_timeout = getelementptr inbounds %struct.seq_oss_readq, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %pre_event_timeout to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 360000, ptr %pre_event_timeout, align 4
  %input_time = getelementptr inbounds %struct.seq_oss_readq, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %input_time to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %input_time, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end6 ], [ null, %if.then5 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_readq_delete(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %q, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  tail call void @kfree(ptr noundef %1) #8
  tail call void @kfree(ptr noundef nonnull %q) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_readq_clear(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 1
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %qlen, align 4
  %tail = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 4
  %3 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tail, align 4
  %head = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 3
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %head, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %midi_sleep = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %midi_sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %input_time = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 6
  %5 = ptrtoint ptr %input_time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %input_time, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_readq_puts(ptr noundef %q, i32 noundef %dev, ptr nocapture noundef readonly %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp10 = icmp sgt i32 %len, 0
  br i1 %cmp10, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %lock.i = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 8
  %qlen.i = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 1
  %maxlen.i = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 2
  %tail.i = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 4
  %conv.mask = and i32 %dev, 255
  %rec.sroa.8.0.insert.ext = zext i32 %conv.mask to i64
  %rec.sroa.8.0.insert.shift = shl nuw nsw i64 %rec.sroa.8.0.insert.ext, 40
  %midi_sleep.i = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %snd_seq_oss_readq_put_event.exit.while.body_crit_edge, %while.body.lr.ph
  %len.addr.012 = phi i32 [ %len, %while.body.lr.ph ], [ %dec, %snd_seq_oss_readq_put_event.exit.while.body_crit_edge ]
  %data.addr.011 = phi ptr [ %data, %while.body.lr.ph ], [ %incdec.ptr, %snd_seq_oss_readq_put_event.exit.while.body_crit_edge ]
  %0 = ptrtoint ptr %data.addr.011 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.addr.011, align 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  %4 = ptrtoint ptr %maxlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxlen.i, align 4
  %sub.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub.i)
  %cmp5.not.i = icmp slt i32 %3, %sub.i
  br i1 %cmp5.not.i, label %snd_seq_oss_readq_put_event.exit, label %snd_seq_oss_readq_put_event.exit.thread

snd_seq_oss_readq_put_event.exit.thread:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  br label %cleanup

snd_seq_oss_readq_put_event.exit:                 ; preds = %while.body
  %incdec.ptr = getelementptr i8, ptr %data.addr.011, i32 1
  %dec = add nsw i32 %len.addr.012, -1
  %6 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %q, align 4
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail.i, align 4
  %arrayidx.i = getelementptr %union.evrec, ptr %7, i32 %9
  %rec.sroa.6.0.insert.ext = zext i8 %1 to i64
  %rec.sroa.6.0.insert.shift = shl nuw nsw i64 %rec.sroa.6.0.insert.ext, 48
  %rec.sroa.6.0.insert.insert = or i64 %rec.sroa.6.0.insert.shift, %rec.sroa.8.0.insert.shift
  %rec.sroa.0.0.insert.insert = or i64 %rec.sroa.6.0.insert.insert, 360287970189639680
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %rec.sroa.0.0.insert.insert, ptr %arrayidx.i, align 4
  %11 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %11, 1
  %12 = ptrtoint ptr %maxlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxlen.i, align 4
  %rem.i = srem i32 %add.i, %13
  store i32 %rem.i, ptr %tail.i, align 4
  %14 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %qlen.i, align 4
  tail call void @__wake_up(ptr noundef %midi_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  %cmp = icmp sgt i32 %len.addr.012, 1
  br i1 %cmp, label %snd_seq_oss_readq_put_event.exit.while.body_crit_edge, label %snd_seq_oss_readq_put_event.exit.cleanup_crit_edge

snd_seq_oss_readq_put_event.exit.cleanup_crit_edge: ; preds = %snd_seq_oss_readq_put_event.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

snd_seq_oss_readq_put_event.exit.while.body_crit_edge: ; preds = %snd_seq_oss_readq_put_event.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup:                                          ; preds = %snd_seq_oss_readq_put_event.exit.cleanup_crit_edge, %snd_seq_oss_readq_put_event.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %snd_seq_oss_readq_put_event.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ 0, %snd_seq_oss_readq_put_event.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_readq_put_event(ptr noundef %q, ptr nocapture noundef readonly %ev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %qlen = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 1
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 4
  %maxlen = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 2
  %2 = ptrtoint ptr %maxlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxlen, align 4
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub)
  %cmp5.not = icmp slt i32 %1, %sub
  br i1 %cmp5.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q, align 4
  %tail = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 4
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr %union.evrec, ptr %5, i32 %7
  %8 = ptrtoint ptr %ev to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %ev, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %arrayidx, align 4
  %11 = load i32, ptr %tail, align 4
  %add = add i32 %11, 1
  %12 = ptrtoint ptr %maxlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxlen, align 4
  %rem = srem i32 %add, %13
  store i32 %rem, ptr %tail, align 4
  %14 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %qlen, align 4
  %midi_sleep = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %midi_sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_readq_sysex(ptr noundef %q, i32 noundef %dev, ptr noundef %ev) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.readq_sysex_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctx) #8
  %0 = getelementptr inbounds %struct.readq_sysex_ctx, ptr %ctx, i32 0, i32 1
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %q, ptr %ctx, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dev, ptr %0, align 4
  %flags = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags, align 1
  %5 = and i8 %4, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp.not = icmp eq i8 %5, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = call i32 @snd_seq_dump_var_event(ptr noundef %ev, ptr noundef nonnull @readq_dump_sysex, ptr noundef nonnull %ctx) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctx) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_dump_var_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @readq_dump_sysex(ptr nocapture noundef readonly %ptr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %dev = getelementptr inbounds %struct.readq_sysex_ctx, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 4
  %call = tail call i32 @snd_seq_oss_readq_puts(ptr noundef %1, i32 noundef %3, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_seq_oss_readq_pick(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %rec) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 1
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  %head = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 3
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %arrayidx = getelementptr %union.evrec, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %rec to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %rec, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_readq_wait(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pre_event_timeout = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 5
  %0 = ptrtoint ptr %pre_event_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pre_event_timeout, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 185) #8
  %qlen = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 1
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %entry.if.end45_crit_edge, label %lor.end

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

lor.end:                                          ; preds = %entry
  %head = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 3
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 4
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp4 = icmp eq i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool8.not = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp4, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %lor.end.if.end45_crit_edge, label %if.then11

lor.end.if.end45_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then11:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %9 = ptrtoint ptr %pre_event_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pre_event_timeout, align 4
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %midi_sleep = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 7
  %call81 = call i32 @prepare_to_wait_event(ptr noundef %midi_sleep, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %11 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1682 = icmp sgt i32 %12, 0
  br i1 %cmp1682, label %if.then11.for.end_crit_edge, label %if.then11.lor.end21_crit_edge

if.then11.lor.end21_crit_edge:                    ; preds = %if.then11
  br label %lor.end21

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.end21:                                        ; preds = %cleanup.lor.end21_crit_edge, %if.then11.lor.end21_crit_edge
  %call84 = phi i32 [ %call, %cleanup.lor.end21_crit_edge ], [ %call81, %if.then11.lor.end21_crit_edge ]
  %__ret12.083 = phi i32 [ %call42, %cleanup.lor.end21_crit_edge ], [ %10, %if.then11.lor.end21_crit_edge ]
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %head, align 4
  %15 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp20 = icmp eq i32 %14, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.083)
  %tobool32.not = icmp eq i32 %__ret12.083, 0
  %or.cond79 = select i1 %cmp20, i1 true, i1 %tobool32.not
  br i1 %or.cond79, label %lor.end21.for.end_crit_edge, label %if.end38

lor.end21.for.end_crit_edge:                      ; preds = %lor.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end38:                                         ; preds = %lor.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool39.not = icmp eq i32 %call84, 0
  br i1 %tobool39.not, label %cleanup, label %if.end38.__out_crit_edge

if.end38.__out_crit_edge:                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out

cleanup:                                          ; preds = %if.end38
  %call42 = call i32 @schedule_timeout(i32 noundef %__ret12.083) #8
  %call = call i32 @prepare_to_wait_event(ptr noundef %midi_sleep, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %17 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen, align 4
  %cmp16 = icmp sgt i32 %18, 0
  br i1 %cmp16, label %cleanup.for.end_crit_edge, label %cleanup.lor.end21_crit_edge

cleanup.lor.end21_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end21

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.end21.for.end_crit_edge, %if.then11.for.end_crit_edge
  call void @finish_wait(ptr noundef %midi_sleep, ptr noundef nonnull %__wq_entry) #8
  br label %__out

__out:                                            ; preds = %for.end, %if.end38.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end45

if.end45:                                         ; preds = %__out, %lor.end.if.end45_crit_edge, %entry.if.end45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @snd_seq_oss_readq_free(ptr nocapture noundef %q) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 1
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %head = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 3
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head, align 4
  %add = add i32 %3, 1
  %maxlen = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 2
  %4 = ptrtoint ptr %maxlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxlen, align 4
  %rem = srem i32 %add, %5
  store i32 %rem, ptr %head, align 4
  %dec = add nsw i32 %1, -1
  %6 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec, ptr %qlen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_readq_poll(ptr noundef %q, ptr noundef %file, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %midi_sleep = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  %tobool3.not.i = icmp eq ptr %midi_sleep, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %1(ptr noundef %file, ptr noundef nonnull %midi_sleep, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %qlen = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 1
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_readq_put_timestamp(ptr noundef %q, i32 noundef %curt, i32 noundef %seq_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %input_time = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 6
  %0 = ptrtoint ptr %input_time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input_time, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %curt)
  %cmp.not = icmp eq i32 %1, %curt
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = zext i32 %seq_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %seq_mode, label %if.then.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  %lock.i = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %qlen.i = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 1
  %3 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i, align 4
  %maxlen.i = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 2
  %5 = ptrtoint ptr %maxlen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %maxlen.i, align 4
  %sub.i = add i32 %6, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %sub.i)
  %cmp5.not.i = icmp slt i32 %4, %sub.i
  br i1 %cmp5.not.i, label %if.end.i, label %sw.bb.snd_seq_oss_readq_put_event.exit_crit_edge

sw.bb.snd_seq_oss_readq_put_event.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_oss_readq_put_event.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %curt, 8
  %7 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %q, align 4
  %tail.i = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 4
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tail.i, align 4
  %arrayidx.i = getelementptr %union.evrec, ptr %8, i32 %10
  %rec.sroa.0.sroa.0.0.insert.insert = or i32 %shl, 2
  %rec.sroa.0.0.insert.ext = zext i32 %rec.sroa.0.sroa.0.0.insert.insert to i64
  %rec.sroa.0.0.insert.shift = shl nuw i64 %rec.sroa.0.0.insert.ext, 32
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %rec.sroa.0.0.insert.shift, ptr %arrayidx.i, align 4
  %12 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %12, 1
  %13 = ptrtoint ptr %maxlen.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %maxlen.i, align 4
  %rem.i = srem i32 %add.i, %14
  store i32 %rem.i, ptr %tail.i, align 4
  %15 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %qlen.i, align 4
  %midi_sleep.i = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %midi_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %snd_seq_oss_readq_put_event.exit

snd_seq_oss_readq_put_event.exit:                 ; preds = %if.end.i, %sw.bb.snd_seq_oss_readq_put_event.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.then
  %lock.i10 = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 8
  %call2.i11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i10) #8
  %qlen.i12 = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 1
  %17 = ptrtoint ptr %qlen.i12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i12, align 4
  %maxlen.i13 = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 2
  %19 = ptrtoint ptr %maxlen.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %maxlen.i13, align 4
  %sub.i14 = add i32 %20, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub.i14)
  %cmp5.not.i15 = icmp slt i32 %18, %sub.i14
  br i1 %cmp5.not.i15, label %if.end.i22, label %sw.bb1.snd_seq_oss_readq_put_event.exit24_crit_edge

sw.bb1.snd_seq_oss_readq_put_event.exit24_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_oss_readq_put_event.exit24

if.end.i22:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %q, align 4
  %tail.i16 = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 4
  %23 = ptrtoint ptr %tail.i16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tail.i16, align 4
  %arrayidx.i17 = getelementptr %union.evrec, ptr %22, i32 %24
  %rec.sroa.12.0.insert.ext32 = zext i32 %curt to i64
  %rec.sroa.0.0.insert.insert29 = or i64 %rec.sroa.12.0.insert.ext32, -9150751492863426560
  %25 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %rec.sroa.0.0.insert.insert29, ptr %arrayidx.i17, align 4
  %26 = load i32, ptr %tail.i16, align 4
  %add.i18 = add i32 %26, 1
  %27 = ptrtoint ptr %maxlen.i13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %maxlen.i13, align 4
  %rem.i19 = srem i32 %add.i18, %28
  store i32 %rem.i19, ptr %tail.i16, align 4
  %29 = ptrtoint ptr %qlen.i12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i12, align 4
  %inc.i20 = add i32 %30, 1
  store i32 %inc.i20, ptr %qlen.i12, align 4
  %midi_sleep.i21 = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %midi_sleep.i21, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %snd_seq_oss_readq_put_event.exit24

snd_seq_oss_readq_put_event.exit24:               ; preds = %if.end.i22, %sw.bb1.snd_seq_oss_readq_put_event.exit24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i10, i32 noundef %call2.i11) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %snd_seq_oss_readq_put_event.exit24, %snd_seq_oss_readq_put_event.exit, %if.then.sw.epilog_crit_edge
  %31 = ptrtoint ptr %input_time to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %curt, ptr %input_time, align 4
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_readq_info_read(ptr noundef %q, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %head.i = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %3, %head.i
  %cond = select i1 %cmp.i.i.not, ptr @.str.6, ptr @.str.5
  %qlen = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 1
  %4 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen, align 4
  %input_time = getelementptr inbounds %struct.seq_oss_readq, ptr %q, i32 0, i32 6
  %6 = ptrtoint ptr %input_time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %input_time, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %cond, i32 noundef %5, i32 noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @snd_seq_oss_readq_new.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/core/seq/oss/seq_oss_readq.c", i32 50, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @snd_seq_oss_readq_new.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../sound/core/seq/oss/seq_oss_readq.c", i32 51, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/core/seq/oss/seq_oss_readq.c", i32 183, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/core/seq/oss/seq_oss_readq.c", i32 246, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
