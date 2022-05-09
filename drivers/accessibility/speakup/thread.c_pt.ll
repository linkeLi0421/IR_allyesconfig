; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/thread.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/thread.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+speakup_event\22, \22a\22\09"
module asm "\09.weak\09__crc_speakup_event\09\09\09\09"
module asm "\09.long\09__crc_speakup_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_speakup_event:\09\09\09\09\09"
module asm "\09.asciz \09\22speakup_event\22\09\09\09\09\09"
module asm "__kstrtabns_speakup_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.speakup_info_t = type { %struct.spinlock, i32, i32 }
%struct.bleep = type { i16, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.spk_synth = type { %struct.list_head, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.synth_indexing, i32, %struct.attribute_group, ptr }
%struct.synth_indexing = type { ptr, i8, i8, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"speakup_event.lock\00", [45 x i8] zeroinitializer }, align 32
@speakup_event = dso_local global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @speakup_event, i64 44), ptr getelementptr (i8, ptr @speakup_event, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_speakup_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_speakup_event = external dso_local constant [0 x i8], align 1
@__ksymtab_speakup_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @speakup_event to i32), ptr @__kstrtab_speakup_event, ptr @__kstrtabns_speakup_event }, section "___ksymtab_gpl+speakup_event", align 4
@spk_mutex = external dso_local global %struct.mutex, align 4
@speakup_info = external dso_local global %struct.speakup_info_t, align 4
@spk_unprocessed_sound = external dso_local local_unnamed_addr global %struct.bleep, align 4
@synth = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"speakup_event\00", align 1
@___asan_gen_.5 = private constant [42 x i8] c"../drivers/accessibility/speakup/thread.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 9, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_speakup_event, ptr @.str, ptr @speakup_event], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speakup_event to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @speakup_thread(ptr nocapture noundef readnone %data) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @spk_mutex, i32 noundef 0) #4
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = call i32 @llvm.read_register.i32(metadata !5) #4
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %2, ptr %2, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %2, ptr %3, align 4
  %call972 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @spk_unprocessed_sound to i32))
  %our_sound.sroa.0.0.copyload4973 = load i16, ptr @spk_unprocessed_sound, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1) to i32))
  %our_sound.sroa.650.0.copyload5174 = load i32, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2) to i32))
  %our_sound.sroa.8.0.copyload5275 = load i32, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  call void @prepare_to_wait(ptr noundef nonnull @speakup_event, ptr noundef nonnull %wait, i32 noundef 1) #4
  %call1276 = call zeroext i1 @kthread_should_stop() #4
  %call12.not77 = xor i1 %call1276, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %our_sound.sroa.8.0.copyload5275)
  %tobool.not78 = icmp eq i32 %our_sound.sroa.8.0.copyload5275, 0
  %or.cond79 = select i1 %call12.not77, i1 %tobool.not78, i1 false
  br i1 %or.cond79, label %while.cond.lor.rhs_crit_edge, label %while.cond.while.end.sink.split_crit_edge

while.cond.while.end.sink.split_crit_edge:        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

while.cond.lor.rhs_crit_edge:                     ; preds = %while.cond
  br label %lor.rhs

lor.rhs:                                          ; preds = %if.end.lor.rhs_crit_edge, %while.cond.lor.rhs_crit_edge
  %our_sound.sroa.650.0.copyload5182 = phi i32 [ %our_sound.sroa.650.0.copyload51, %if.end.lor.rhs_crit_edge ], [ %our_sound.sroa.650.0.copyload5174, %while.cond.lor.rhs_crit_edge ]
  %our_sound.sroa.0.0.copyload4981 = phi i16 [ %our_sound.sroa.0.0.copyload49, %if.end.lor.rhs_crit_edge ], [ %our_sound.sroa.0.0.copyload4973, %while.cond.lor.rhs_crit_edge ]
  %call980 = phi i32 [ %call9, %if.end.lor.rhs_crit_edge ], [ %call972, %while.cond.lor.rhs_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %15 = load ptr, ptr @synth, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %lor.rhs.if.end.sink.split_crit_edge, label %land.lhs.true

lor.rhs.if.end.sink.split_crit_edge:              ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

land.lhs.true:                                    ; preds = %lor.rhs
  %catch_up = getelementptr inbounds %struct.spk_synth, ptr %15, i32 0, i32 24
  %16 = ptrtoint ptr %catch_up to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %catch_up, align 4
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %land.lhs.true.if.end.sink.split_crit_edge, label %land.lhs.true17

land.lhs.true.if.end.sink.split_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

land.lhs.true17:                                  ; preds = %land.lhs.true
  %alive = getelementptr inbounds %struct.spk_synth, ptr %15, i32 0, i32 31
  %18 = ptrtoint ptr %alive to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not = icmp eq i32 %19, 0
  br i1 %tobool18.not, label %land.lhs.true17.if.end.sink.split_crit_edge, label %land.rhs

land.lhs.true17.if.end.sink.split_crit_edge:      ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

land.rhs:                                         ; preds = %land.lhs.true17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2) to i32))
  %20 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool19.not = icmp eq i32 %20, 0
  br i1 %tobool19.not, label %lor.rhs20, label %land.rhs.while.end.sink.split_crit_edge

land.rhs.while.end.sink.split_crit_edge:          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

lor.rhs20:                                        ; preds = %land.rhs
  %call21 = call i32 @synth_buffer_empty() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call980) #4
  br i1 %tobool22.not, label %lor.rhs20.while.end_crit_edge, label %lor.rhs20.if.end_crit_edge

lor.rhs20.if.end_crit_edge:                       ; preds = %lor.rhs20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.rhs20.while.end_crit_edge:                    ; preds = %lor.rhs20
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.sink.split:                                ; preds = %land.lhs.true17.if.end.sink.split_crit_edge, %land.lhs.true.if.end.sink.split_crit_edge, %lor.rhs.if.end.sink.split_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call980) #4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %lor.rhs20.if.end_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @spk_mutex) #4
  call void @schedule() #4
  call void @mutex_lock_nested(ptr noundef nonnull @spk_mutex, i32 noundef 0) #4
  %call9 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @spk_unprocessed_sound to i32))
  %our_sound.sroa.0.0.copyload49 = load i16, ptr @spk_unprocessed_sound, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1) to i32))
  %our_sound.sroa.650.0.copyload51 = load i32, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2) to i32))
  %our_sound.sroa.8.0.copyload52 = load i32, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  call void @prepare_to_wait(ptr noundef nonnull @speakup_event, ptr noundef nonnull %wait, i32 noundef 1) #4
  %call12 = call zeroext i1 @kthread_should_stop() #4
  %call12.not = xor i1 %call12, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %our_sound.sroa.8.0.copyload52)
  %tobool.not = icmp eq i32 %our_sound.sroa.8.0.copyload52, 0
  %or.cond = select i1 %call12.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.end.lor.rhs_crit_edge, label %if.end.while.end.sink.split_crit_edge

if.end.while.end.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

if.end.lor.rhs_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs

while.end.sink.split:                             ; preds = %if.end.while.end.sink.split_crit_edge, %land.rhs.while.end.sink.split_crit_edge, %while.cond.while.end.sink.split_crit_edge
  %call980.lcssa.sink = phi i32 [ %call972, %while.cond.while.end.sink.split_crit_edge ], [ %call9, %if.end.while.end.sink.split_crit_edge ], [ %call980, %land.rhs.while.end.sink.split_crit_edge ]
  %our_sound.sroa.0.0.copyload4969.ph = phi i16 [ %our_sound.sroa.0.0.copyload4973, %while.cond.while.end.sink.split_crit_edge ], [ %our_sound.sroa.0.0.copyload49, %if.end.while.end.sink.split_crit_edge ], [ %our_sound.sroa.0.0.copyload4981, %land.rhs.while.end.sink.split_crit_edge ]
  %our_sound.sroa.650.0.copyload5166.ph = phi i32 [ %our_sound.sroa.650.0.copyload5174, %while.cond.while.end.sink.split_crit_edge ], [ %our_sound.sroa.650.0.copyload51, %if.end.while.end.sink.split_crit_edge ], [ %our_sound.sroa.650.0.copyload5182, %land.rhs.while.end.sink.split_crit_edge ]
  %tobool.not63.ph = phi i1 [ %tobool.not78, %while.cond.while.end.sink.split_crit_edge ], [ %tobool.not, %if.end.while.end.sink.split_crit_edge ], [ true, %land.rhs.while.end.sink.split_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call980.lcssa.sink) #4
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %lor.rhs20.while.end_crit_edge
  %our_sound.sroa.0.0.copyload4969 = phi i16 [ %our_sound.sroa.0.0.copyload4969.ph, %while.end.sink.split ], [ %our_sound.sroa.0.0.copyload4981, %lor.rhs20.while.end_crit_edge ]
  %our_sound.sroa.650.0.copyload5166 = phi i32 [ %our_sound.sroa.650.0.copyload5166.ph, %while.end.sink.split ], [ %our_sound.sroa.650.0.copyload5182, %lor.rhs20.while.end_crit_edge ]
  %tobool.not63 = phi i1 [ %tobool.not63.ph, %while.end.sink.split ], [ true, %lor.rhs20.while.end_crit_edge ]
  call void @finish_wait(ptr noundef nonnull @speakup_event, ptr noundef nonnull %wait) #4
  %call25 = call zeroext i1 @kthread_should_stop() #4
  br i1 %call25, label %while.end45, label %if.end27

if.end27:                                         ; preds = %while.end
  br i1 %tobool.not63, label %if.end27.if.end34_crit_edge, label %if.then30

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %conv32 = sext i16 %our_sound.sroa.0.0.copyload4969 to i32
  call void @kd_mksound(i32 noundef %conv32, i32 noundef %our_sound.sroa.650.0.copyload5166) #4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end27.if.end34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %21 = load ptr, ptr @synth, align 4
  %tobool35.not = icmp eq ptr %21, null
  br i1 %tobool35.not, label %if.end34.cleanup_crit_edge, label %land.lhs.true36

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true36:                                  ; preds = %if.end34
  %catch_up37 = getelementptr inbounds %struct.spk_synth, ptr %21, i32 0, i32 24
  %22 = ptrtoint ptr %catch_up37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %catch_up37, align 4
  %tobool38.not = icmp eq ptr %23, null
  br i1 %tobool38.not, label %land.lhs.true36.cleanup_crit_edge, label %land.lhs.true39

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true39:                                  ; preds = %land.lhs.true36
  %alive40 = getelementptr inbounds %struct.spk_synth, ptr %21, i32 0, i32 31
  %24 = ptrtoint ptr %alive40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %alive40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool41.not = icmp eq i32 %25, 0
  br i1 %tobool41.not, label %land.lhs.true39.cleanup_crit_edge, label %if.then42

land.lhs.true39.cleanup_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then42:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #6
  call void %23(ptr noundef nonnull %21) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %land.lhs.true39.cleanup_crit_edge, %land.lhs.true36.cleanup_crit_edge, %if.end34.cleanup_crit_edge
  call void @speakup_start_ttys() #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #4
  br label %while.cond

while.end45:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #4
  call void @mutex_unlock(ptr noundef nonnull @spk_mutex) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_buffer_empty() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kd_mksound(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @speakup_start_ttys() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.named.register.sp = !{!5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/thread.c", i32 9, i32 1}
!2 = !{ptr @speakup_event, !1, !"speakup_event", i1 false, i1 false}
!3 = !{ptr @__ksymtab_speakup_event, !4, !"__ksymtab_speakup_event", i1 false, i1 false}
!4 = !{!"../drivers/accessibility/speakup/thread.c", i32 10, i32 1}
!5 = !{!"sp"}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
