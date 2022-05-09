; ModuleID = '/llk/IR_all_yes/drivers/scsi/aacraid/dpcsup.c_pt.bc'
source_filename = "../drivers/scsi/aacraid/dpcsup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aac_common = type { i32, i32, i32, i32 }
%struct.aac_queue = type { i64, ptr, %struct.aac_qhdr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.list_head, %struct.atomic_t, ptr }
%struct.aac_qhdr = type { i64, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.aac_dev = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.adapter_ops, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, [32 x i32], [32 x %struct.atomic_t], i32, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, %struct.delayed_work, %struct.delayed_work, i32, %struct.spinlock, %union.anon.85, ptr, ptr, ptr, i32, i32, %struct.aac_adapter_info, %struct.aac_supplement_adapter_info, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, i32, i32, i32, i32, %struct.atomic_t, i32, [32 x %struct.msix_entry], [32 x %struct.aac_msix_ctx], [5 x [256 x %struct.aac_hba_map_info]], ptr, i8, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.adapter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { ptr, ptr }
%struct.aac_adapter_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.aac_supplement_adapter_info = type { [18 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], [12 x i8], i32, %struct.anon.90, i32, i32, i32, i32, i32, [12 x i8], [8 x i8], i32, i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i64, i32, [12 x i8], i16, i16, i32, i16, i16, i16, i16, [68 x i32] }
%struct.anon.90 = type { [8 x i8], [8 x i8], [8 x i8], [8 x i8], [12 x i8] }
%struct.msix_entry = type { i32, i16 }
%struct.aac_msix_ctx = type { i32, ptr }
%struct.aac_hba_map_info = type { i32, i8, i8, i16, i32, ptr }
%struct.aac_entry = type { i32, i32 }
%struct.fib = type { ptr, i16, i16, ptr, %struct.completion, %struct.spinlock, i32, ptr, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hw_fib = type { %struct.aac_fibhdr, [480 x i8] }
%struct.aac_fibhdr = type { i32, i16, i8, i8, i16, i16, i32, %union.anon.2, i32, i32, i32 }
%union.anon.2 = type { i32 }

@aac_config = external dso_local local_unnamed_addr global %struct.aac_common, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_response_normal(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  %entry2 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.aac_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry2) #6
  %2 = ptrtoint ptr %entry2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %entry2, align 4, !annotation !9
  %lock = getelementptr inbounds %struct.aac_queue, ptr %q, i32 0, i32 6
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %call7192 = call i32 @aac_consumer_get(ptr noundef %1, ptr noundef %q, ptr noundef nonnull %entry2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7192)
  %tobool.not193 = icmp eq i32 %call7192, 0
  br i1 %tobool.not193, label %entry.if.then136_crit_edge, label %while.body.lr.ph

entry.if.then136_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then136

while.body.lr.ph:                                 ; preds = %entry
  %fibs = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 10
  %queues = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 15
  %manage_lock = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 68
  %management_fib_count = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 67
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %consumed.0195 = phi i32 [ 0, %while.body.lr.ph ], [ %consumed.1, %cleanup.while.body_crit_edge ]
  %flags.0194 = phi i32 [ %call4, %while.body.lr.ph ], [ %call124, %cleanup.while.body_crit_edge ]
  %5 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry2, align 4
  %addr = getelementptr inbounds %struct.aac_entry, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %fibs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fibs, align 4
  %shr = lshr i32 %9, 2
  %arrayidx = getelementptr %struct.fib, ptr %11, i32 %shr
  %hw_fib_va = getelementptr %struct.fib, ptr %11, i32 %shr, i32 13
  %12 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_fib_va, align 4
  call void @aac_consumer_free(ptr noundef %1, ptr noundef %q, i32 noundef 4) #6
  %14 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queues, align 8
  %numpending = getelementptr [8 x %struct.aac_queue], ptr %15, i32 0, i32 2, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %numpending, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %numpending, i32 1, i32 3, i32 1) #6
  %16 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %numpending, ptr %numpending, i32 1, ptr elementtype(i32) %numpending) #6, !srcloc !10
  %flags9 = getelementptr %struct.fib, ptr %11, i32 %shr, i32 9
  %17 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags9, align 4
  %and10 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %flags.0194) #6
  %call15 = call i32 @aac_fib_complete(ptr noundef %arrayidx) #6
  call void @aac_fib_free(ptr noundef %arrayidx) #6
  br label %cleanup

if.end:                                           ; preds = %while.body
  %and = and i32 %9, 1
  %21 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %flags.0194) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.end.if.end35_crit_edge, label %if.then32

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.hw_fib, ptr %13, i32 0, i32 1
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %data, align 4
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %13, align 4
  %or = or i32 %25, 131072
  store i32 %or, ptr %13, align 4
  %26 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags9, align 4
  %or34 = or i32 %27, 8
  store i32 %or34, ptr %flags9, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end.if.end35_crit_edge
  %Command = getelementptr inbounds %struct.aac_fibhdr, ptr %13, i32 0, i32 1
  %28 = ptrtoint ptr %Command to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %Command, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 11265, i16 %29)
  %cmp38 = icmp eq i16 %29, 11265
  br i1 %cmp38, label %if.then40, label %if.end35.if.end47_crit_edge

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then40:                                        ; preds = %if.end35
  %data41 = getelementptr inbounds %struct.hw_fib, ptr %13, i32 0, i32 1
  %30 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data41, align 4
  %and43 = and i32 %31, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then40.if.end47_crit_edge, label %if.then45

if.then40.if.end47_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %data41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %data41, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then40.if.end47_crit_edge, %if.end35.if.end47_crit_edge
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %13, align 4
  %and50 = and i32 %34, 2162688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else59, label %if.end58

if.end58:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %callback = getelementptr %struct.fib, ptr %11, i32 %shr, i32 7
  %35 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %callback, align 4
  %callback_data = getelementptr %struct.fib, ptr %11, i32 %shr, i32 8
  %37 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %callback_data, align 4
  call void %36(ptr noundef %38, ptr noundef %arrayidx) #6
  br label %if.end114

if.else59:                                        ; preds = %if.end47
  %event_lock = getelementptr %struct.fib, ptr %11, i32 %shr, i32 5
  %call68 = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #6
  %done = getelementptr %struct.fib, ptr %11, i32 %shr, i32 6
  %39 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool73.not = icmp eq i32 %40, 0
  br i1 %tobool73.not, label %if.then74, label %if.else59.if.end76_crit_edge

if.else59.if.end76_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then74:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %done, align 4
  %event_wait = getelementptr %struct.fib, ptr %11, i32 %shr, i32 4
  call void @complete(ptr noundef %event_wait) #6
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.else59.if.end76_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call68) #6
  %call86 = call i32 @_raw_spin_lock_irqsave(ptr noundef %manage_lock) #6
  %42 = ptrtoint ptr %management_fib_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %management_fib_count, align 8
  %dec = add i32 %43, -1
  store i32 %dec, ptr %management_fib_count, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %manage_lock, i32 noundef %call86) #6
  %44 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp93 = icmp eq i32 %45, 2
  br i1 %cmp93, label %do.body97, label %if.end76.if.end114_crit_edge

if.end76.if.end114_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

do.body97:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %call105 = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #6
  %46 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %done, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call105) #6
  %call112 = call i32 @aac_fib_complete(ptr noundef %arrayidx) #6
  call void @aac_fib_free(ptr noundef %arrayidx) #6
  br label %if.end114

if.end114:                                        ; preds = %do.body97, %if.end76.if.end114_crit_edge, %if.end58
  %inc = add i32 %consumed.0195, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end114, %if.then
  %consumed.1 = phi i32 [ %consumed.0195, %if.then ], [ %inc, %if.end114 ]
  %47 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lock, align 4
  %call124 = call i32 @_raw_spin_lock_irqsave(ptr noundef %48) #6
  %call7 = call i32 @aac_consumer_get(ptr noundef %1, ptr noundef %q, ptr noundef nonnull %entry2) #6
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %while.end, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %cleanup
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 1) to i32))
  %49 = load i32, ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %consumed.1, i32 %49)
  %cmp130 = icmp ugt i32 %consumed.1, %49
  br i1 %cmp130, label %if.end133.thread, label %if.end133

if.end133.thread:                                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 1) to i32))
  store i32 %consumed.1, ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 1), align 4
  br label %if.end138

if.end133:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %consumed.1)
  %cmp134 = icmp eq i32 %consumed.1, 0
  br i1 %cmp134, label %if.end133.if.then136_crit_edge, label %if.end133.if.end138_crit_edge

if.end133.if.end138_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

if.end133.if.then136_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then136

if.then136:                                       ; preds = %if.end133.if.then136_crit_edge, %entry.if.then136_crit_edge
  %flags.0.lcssa201207 = phi i32 [ %call124, %if.end133.if.then136_crit_edge ], [ %call4, %entry.if.then136_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 2) to i32))
  %50 = load i32, ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 2), align 4
  %inc137 = add i32 %50, 1
  store i32 %inc137, ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 2), align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.end133.if.end138_crit_edge, %if.end133.thread
  %flags.0.lcssa200 = phi i32 [ %call124, %if.end133.thread ], [ %flags.0.lcssa201207, %if.then136 ], [ %call124, %if.end133.if.end138_crit_edge ]
  %51 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %flags.0.lcssa200) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry2) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_consumer_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_consumer_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_fib_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_fib_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_command_normal(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  %entry2 = alloca ptr, align 4
  %fibctx = alloca %struct.fib, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fibctx.sroa.gep83 = getelementptr inbounds %struct.fib, ptr %fibctx, i32 0, i32 3
  %fibctx.sroa.gep80 = getelementptr inbounds %struct.fib, ptr %fibctx, i32 0, i32 11
  %fibctx.sroa.gep77 = getelementptr inbounds %struct.fib, ptr %fibctx, i32 0, i32 13
  %fibctx.sroa.gep74 = getelementptr inbounds %struct.fib, ptr %fibctx, i32 0, i32 2
  %fibctx.sroa.gep71 = getelementptr inbounds %struct.fib, ptr %fibctx, i32 0, i32 1
  %fibctx.sroa.gep = getelementptr inbounds %struct.fib, ptr %fibctx, i32 0, i32 10
  %dev1 = getelementptr inbounds %struct.aac_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry2) #6
  %2 = ptrtoint ptr %entry2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %entry2, align 4, !annotation !9
  %lock = getelementptr inbounds %struct.aac_queue, ptr %q, i32 0, i32 6
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %call7102 = call i32 @aac_consumer_get(ptr noundef %1, ptr noundef %q, ptr noundef nonnull %entry2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7102)
  %tobool.not103 = icmp eq i32 %call7102, 0
  br i1 %tobool.not103, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %aif_base_va = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 9
  %aif_thread = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 50
  %cmdq = getelementptr inbounds %struct.aac_queue, ptr %q, i32 0, i32 8
  %prev.i85 = getelementptr inbounds %struct.aac_queue, ptr %q, i32 0, i32 8, i32 1
  %cmdready = getelementptr inbounds %struct.aac_queue, ptr %q, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %while.body.lr.ph
  %flags.0104 = phi i32 [ %call4, %while.body.lr.ph ], [ %flags.1, %if.end40.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %fibctx) #6
  %5 = call ptr @memset(ptr %fibctx, i32 255, i32 164)
  %6 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entry2, align 4
  %addr = getelementptr inbounds %struct.aac_entry, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %div84 = lshr i32 %10, 9
  %11 = ptrtoint ptr %aif_base_va to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aif_base_va, align 8
  %arrayidx = getelementptr %struct.hw_fib, ptr %12, i32 %div84
  %13 = ptrtoint ptr %aif_thread to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aif_thread, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %while.body.if.end13_crit_edge, label %if.then

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 2592, i32 noundef 164) #9
  %cmp10 = icmp eq ptr %call7.i, null
  %spec.store.select = select i1 %cmp10, ptr %fibctx, ptr %call7.i
  %call7.i.sroa.gep100 = getelementptr inbounds %struct.fib, ptr %call7.i, i32 0, i32 3
  %spec.store.select.sroa.sel101 = select i1 %cmp10, ptr %fibctx.sroa.gep83, ptr %call7.i.sroa.gep100
  %call7.i.sroa.gep97 = getelementptr inbounds %struct.fib, ptr %call7.i, i32 0, i32 11
  %spec.store.select.sroa.sel98 = select i1 %cmp10, ptr %fibctx.sroa.gep80, ptr %call7.i.sroa.gep97
  %call7.i.sroa.gep94 = getelementptr inbounds %struct.fib, ptr %call7.i, i32 0, i32 13
  %spec.store.select.sroa.sel95 = select i1 %cmp10, ptr %fibctx.sroa.gep77, ptr %call7.i.sroa.gep94
  %call7.i.sroa.gep91 = getelementptr inbounds %struct.fib, ptr %call7.i, i32 0, i32 2
  %spec.store.select.sroa.sel92 = select i1 %cmp10, ptr %fibctx.sroa.gep74, ptr %call7.i.sroa.gep91
  %call7.i.sroa.gep88 = getelementptr inbounds %struct.fib, ptr %call7.i, i32 0, i32 1
  %spec.store.select.sroa.sel89 = select i1 %cmp10, ptr %fibctx.sroa.gep71, ptr %call7.i.sroa.gep88
  %call7.i.sroa.gep = getelementptr inbounds %struct.fib, ptr %call7.i, i32 0, i32 10
  %spec.store.select.sroa.sel = select i1 %cmp10, ptr %fibctx.sroa.gep, ptr %call7.i.sroa.gep
  br label %if.end13

if.end13:                                         ; preds = %if.then, %while.body.if.end13_crit_edge
  %fib.0 = phi ptr [ %spec.store.select, %if.then ], [ %fibctx, %while.body.if.end13_crit_edge ]
  %fib.0.sroa.phi = phi ptr [ %spec.store.select.sroa.sel, %if.then ], [ %fibctx.sroa.gep, %while.body.if.end13_crit_edge ]
  %fib.0.sroa.phi69 = phi ptr [ %spec.store.select.sroa.sel89, %if.then ], [ %fibctx.sroa.gep71, %while.body.if.end13_crit_edge ]
  %fib.0.sroa.phi72 = phi ptr [ %spec.store.select.sroa.sel92, %if.then ], [ %fibctx.sroa.gep74, %while.body.if.end13_crit_edge ]
  %fib.0.sroa.phi75 = phi ptr [ %spec.store.select.sroa.sel95, %if.then ], [ %fibctx.sroa.gep77, %while.body.if.end13_crit_edge ]
  %fib.0.sroa.phi78 = phi ptr [ %spec.store.select.sroa.sel98, %if.then ], [ %fibctx.sroa.gep80, %while.body.if.end13_crit_edge ]
  %fib.0.sroa.phi81 = phi ptr [ %spec.store.select.sroa.sel101, %if.then ], [ %fibctx.sroa.gep83, %while.body.if.end13_crit_edge ]
  %16 = call ptr @memset(ptr %fib.0, i32 0, i32 164)
  %17 = ptrtoint ptr %fib.0.sroa.phi to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %fib.0.sroa.phi, ptr %fib.0.sroa.phi, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fib.0.sroa.phi, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fib.0.sroa.phi, ptr %prev.i, align 4
  %19 = ptrtoint ptr %fib.0.sroa.phi69 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 780, ptr %fib.0.sroa.phi69, align 4
  %20 = ptrtoint ptr %fib.0.sroa.phi72 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 164, ptr %fib.0.sroa.phi72, align 2
  %21 = ptrtoint ptr %fib.0.sroa.phi75 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx, ptr %fib.0.sroa.phi75, align 4
  %data = getelementptr %struct.hw_fib, ptr %12, i32 %div84, i32 1
  %22 = ptrtoint ptr %fib.0.sroa.phi78 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %data, ptr %fib.0.sroa.phi78, align 4
  %23 = ptrtoint ptr %fib.0.sroa.phi81 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %1, ptr %fib.0.sroa.phi81, align 4
  %24 = ptrtoint ptr %aif_thread to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %aif_thread, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool17.not = icmp eq i32 %25, 0
  %cmp18.not = icmp eq ptr %fib.0, %fibctx
  %or.cond = or i1 %cmp18.not, %tobool17.not
  br i1 %or.cond, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end13
  %fiblink21 = getelementptr inbounds %struct.fib, ptr %fib.0, i32 0, i32 10
  %26 = ptrtoint ptr %prev.i85 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i85, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %fiblink21, ptr noundef %27, ptr noundef %cmdq) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then20.list_add_tail.exit_crit_edge

if.then20.list_add_tail.exit_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %prev.i85 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %fiblink21, ptr %prev.i85, align 4
  %29 = ptrtoint ptr %fiblink21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %cmdq, ptr %fiblink21, align 4
  %prev3.i.i = getelementptr inbounds %struct.fib, ptr %fib.0, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %fiblink21, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then20.list_add_tail.exit_crit_edge
  call void @aac_consumer_free(ptr noundef %1, ptr noundef %q, i32 noundef 0) #6
  call void @__wake_up(ptr noundef %cmdready, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %if.end40

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void @aac_consumer_free(ptr noundef %1, ptr noundef %q, i32 noundef 0) #6
  %32 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %flags.0104) #6
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %data, align 4
  %call25 = call i32 @aac_fib_adapter_complete(ptr noundef %fib.0, i16 noundef zeroext 4) #6
  %35 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lock, align 4
  %call35 = call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #6
  br label %if.end40

if.end40:                                         ; preds = %if.else, %list_add_tail.exit
  %flags.1 = phi i32 [ %flags.0104, %list_add_tail.exit ], [ %call35, %if.else ]
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %fibctx) #6
  %call7 = call i32 @aac_consumer_get(ptr noundef %1, ptr noundef %q, ptr noundef nonnull %entry2) #6
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end40.while.end_crit_edge, label %if.end40.while.body_crit_edge

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end40.while.end_crit_edge, %entry.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call4, %entry.while.end_crit_edge ], [ %flags.1, %if.end40.while.end_crit_edge ]
  %37 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %flags.0.lcssa) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry2) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_fib_adapter_complete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_intr_normal(ptr noundef %dev, i32 noundef %index, i32 noundef %isAif, i32 noundef %isFastResponse, ptr noundef readonly %aif_fib) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %isAif to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %isAif, label %if.else41 [
    i32 1, label %if.then
    i32 2, label %if.then30
  ]

if.then:                                          ; preds = %entry
  %queues = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %queues, align 8
  %aif_thread = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 50
  %3 = ptrtoint ptr %aif_thread to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %aif_thread, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then.cleanup209_crit_edge, label %lor.lhs.false

if.then.cleanup209_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

lor.lhs.false:                                    ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 164) #9
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup209_crit_edge, label %if.end

lor.lhs.false.cleanup209_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i290 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2848, i32 noundef 512) #9
  %tobool4.not = icmp eq ptr %call7.i.i290, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup209

if.end6:                                          ; preds = %if.end
  %sa_firmware = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 66
  %7 = ptrtoint ptr %sa_firmware to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sa_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %hbacmd_size = getelementptr inbounds %struct.fib, ptr %call7.i.i, i32 0, i32 17
  %9 = ptrtoint ptr %hbacmd_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %index, ptr %hbacmd_size, align 8
  br label %if.end13

if.else:                                          ; preds = %if.end6
  %cmp9.not = icmp eq ptr %aif_fib, null
  br i1 %cmp9.not, label %if.else11, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %10 = call ptr @memcpy(ptr %call7.i.i290, ptr %aif_fib, i32 512)
  br label %if.end13

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %13 = ptrtoint ptr %12 to i32
  %add = add i32 %13, %index
  %14 = inttoptr i32 %add to ptr
  %15 = call ptr @memcpy(ptr %call7.i.i290, ptr %14, i32 512)
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then10, %if.then8
  %fiblink = getelementptr inbounds %struct.fib, ptr %call7.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %fiblink to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %fiblink, ptr %fiblink, align 8
  %prev.i = getelementptr inbounds %struct.fib, ptr %call7.i.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %fiblink, ptr %prev.i, align 4
  %type = getelementptr inbounds %struct.fib, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 780, ptr %type, align 4
  %size = getelementptr inbounds %struct.fib, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 164, ptr %size, align 2
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %call7.i.i, i32 0, i32 13
  %20 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i290, ptr %hw_fib_va, align 8
  %data = getelementptr inbounds %struct.hw_fib, ptr %call7.i.i290, i32 0, i32 1
  %data14 = getelementptr inbounds %struct.fib, ptr %call7.i.i, i32 0, i32 11
  %21 = ptrtoint ptr %data14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %data, ptr %data14, align 8
  %dev15 = getelementptr inbounds %struct.fib, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %dev15, align 8
  %lock = getelementptr inbounds %struct.aac_queue, ptr %2, i32 0, i32 6
  %23 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock, align 4
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #6
  %cmdq = getelementptr inbounds %struct.aac_queue, ptr %2, i32 0, i32 8
  %prev.i291 = getelementptr inbounds %struct.aac_queue, ptr %2, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %prev.i291 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i291, align 4
  %call.i.i292 = tail call zeroext i1 @__list_add_valid(ptr noundef %fiblink, ptr noundef %26, ptr noundef %cmdq) #6
  br i1 %call.i.i292, label %if.end.i.i, label %if.end13.list_add_tail.exit_crit_edge

if.end13.list_add_tail.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %prev.i291 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %fiblink, ptr %prev.i291, align 4
  %28 = ptrtoint ptr %fiblink to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cmdq, ptr %fiblink, align 8
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %fiblink, ptr %26, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end13.list_add_tail.exit_crit_edge
  %cmdready = getelementptr inbounds %struct.aac_queue, ptr %2, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %cmdready, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  %31 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %call19) #6
  br label %cleanup209

if.then30:                                        ; preds = %entry
  %call31 = tail call ptr @aac_fib_alloc(ptr noundef %dev) #6
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.then30.cleanup209_crit_edge, label %if.end34

if.then30.cleanup209_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end34:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @aac_fib_init(ptr noundef nonnull %call31) #6
  %hw_fib_va35 = getelementptr inbounds %struct.fib, ptr %call31, i32 0, i32 13
  %33 = ptrtoint ptr %hw_fib_va35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_fib_va35, align 4
  %data36 = getelementptr inbounds %struct.hw_fib, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %data36 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -939524096, ptr %data36, align 4
  %call38 = tail call i32 @aac_fib_send(i16 noundef zeroext 700, ptr noundef nonnull %call31, i32 noundef 480, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @aac_aif_callback, ptr noundef nonnull %call31) #6
  br label %cleanup209

if.else41:                                        ; preds = %entry
  %fibs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 10
  %36 = ptrtoint ptr %fibs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fibs, align 4
  %arrayidx43 = getelementptr %struct.fib, ptr %37, i32 %index
  %queues44 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 15
  %38 = ptrtoint ptr %queues44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %queues44, align 8
  %numpending = getelementptr [8 x %struct.aac_queue], ptr %39, i32 0, i32 2, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %numpending, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %numpending, i32 1, i32 3, i32 1) #6
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %numpending, ptr %numpending, i32 1, ptr elementtype(i32) %numpending) #6, !srcloc !10
  %flags47 = getelementptr %struct.fib, ptr %37, i32 %index, i32 9
  %41 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags47, align 4
  %and = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %if.end53, label %if.then51, !prof !11

if.then51:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = tail call i32 @aac_fib_complete(ptr noundef %arrayidx43) #6
  tail call void @aac_fib_free(ptr noundef %arrayidx43) #6
  br label %cleanup209

if.end53:                                         ; preds = %if.else41
  %and55 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.else105, label %if.then57

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isFastResponse)
  %tobool58.not = icmp eq i32 %isFastResponse, 0
  br i1 %tobool58.not, label %if.then57.if.end61_crit_edge, label %if.then59

if.then57.if.end61_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then59:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %42, 8
  %43 = ptrtoint ptr %flags47 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or, ptr %flags47, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then57.if.end61_crit_edge
  %callback = getelementptr %struct.fib, ptr %37, i32 %index, i32 7
  %44 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %callback, align 4
  %tobool62.not = icmp eq ptr %45, null
  br i1 %tobool62.not, label %if.else64, label %if.end61.if.then190_crit_edge

if.end61.if.then190_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then190

if.else64:                                        ; preds = %if.end61
  %event_lock = getelementptr %struct.fib, ptr %37, i32 %index, i32 5
  %call73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #6
  %done = getelementptr %struct.fib, ptr %37, i32 %index, i32 6
  %46 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp78 = icmp eq i32 %47, 2
  %48 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %done, align 4
  br i1 %cmp78, label %if.then80, label %if.else82

if.then80:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call73) #6
  %manage_lock.c280 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 68
  %call94.c282 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %manage_lock.c280) #6
  %management_fib_count.c283 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 67
  %49 = ptrtoint ptr %management_fib_count.c283 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %management_fib_count.c283, align 8
  %dec.c284 = add i32 %50, -1
  store i32 %dec.c284, ptr %management_fib_count.c283, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %manage_lock.c280, i32 noundef %call94.c282) #6
  %call102 = tail call i32 @aac_fib_complete(ptr noundef %arrayidx43) #6
  br label %cleanup209

if.else82:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #8
  %event_wait = getelementptr %struct.fib, ptr %37, i32 %index, i32 4
  tail call void @complete(ptr noundef %event_wait) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call73) #6
  %manage_lock.c = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 68
  %call94.c = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %manage_lock.c) #6
  %management_fib_count.c = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 67
  %51 = ptrtoint ptr %management_fib_count.c to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %management_fib_count.c, align 8
  %dec.c = add i32 %52, -1
  store i32 %dec.c, ptr %management_fib_count.c, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %manage_lock.c, i32 noundef %call94.c) #6
  br label %cleanup209

if.else105:                                       ; preds = %if.end53
  %hw_fib_va106 = getelementptr %struct.fib, ptr %37, i32 %index, i32 13
  %53 = ptrtoint ptr %hw_fib_va106 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw_fib_va106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isFastResponse)
  %tobool107.not = icmp eq i32 %isFastResponse, 0
  br i1 %tobool107.not, label %if.else105.if.end114_crit_edge, label %if.then108

if.else105.if.end114_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then108:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #8
  %data109 = getelementptr inbounds %struct.hw_fib, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %data109 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %data109, align 4
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %54, align 4
  %or111 = or i32 %57, 131072
  store i32 %or111, ptr %54, align 4
  %58 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags47, align 4
  %or113 = or i32 %59, 8
  store i32 %or113, ptr %flags47, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then108, %if.else105.if.end114_crit_edge
  %Command = getelementptr inbounds %struct.aac_fibhdr, ptr %54, i32 0, i32 1
  %60 = ptrtoint ptr %Command to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %Command, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 11265, i16 %61)
  %cmp117 = icmp eq i16 %61, 11265
  br i1 %cmp117, label %if.then119, label %if.end114.if.end126_crit_edge

if.end114.if.end126_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

if.then119:                                       ; preds = %if.end114
  %data120 = getelementptr inbounds %struct.hw_fib, ptr %54, i32 0, i32 1
  %62 = ptrtoint ptr %data120 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data120, align 4
  %and122 = and i32 %63, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.then119.if.end126_crit_edge, label %if.then124

if.then119.if.end126_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

if.then124:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %data120 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %data120, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %if.then119.if.end126_crit_edge, %if.end114.if.end126_crit_edge
  %65 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %54, align 4
  %and129 = and i32 %66, 2162688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.else139, label %if.end126.if.then190_crit_edge

if.end126.if.then190_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then190

if.else139:                                       ; preds = %if.end126
  %event_lock149 = getelementptr %struct.fib, ptr %37, i32 %index, i32 5
  %call151 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock149) #6
  %done156 = getelementptr %struct.fib, ptr %37, i32 %index, i32 6
  %67 = ptrtoint ptr %done156 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %done156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp157 = icmp eq i32 %68, 2
  %69 = ptrtoint ptr %done156 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %done156, align 4
  br i1 %cmp157, label %if.then159, label %if.else161

if.then159:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock149, i32 noundef %call151) #6
  %manage_lock173.c285 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 68
  %call175.c287 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %manage_lock173.c285) #6
  %management_fib_count180.c288 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 67
  %70 = ptrtoint ptr %management_fib_count180.c288 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %management_fib_count180.c288, align 8
  %dec181.c289 = add i32 %71, -1
  store i32 %dec181.c289, ptr %management_fib_count180.c288, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %manage_lock173.c285, i32 noundef %call175.c287) #6
  %call185 = tail call i32 @aac_fib_complete(ptr noundef %arrayidx43) #6
  br label %cleanup209

if.else161:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #8
  %event_wait163 = getelementptr %struct.fib, ptr %37, i32 %index, i32 4
  tail call void @complete(ptr noundef %event_wait163) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock149, i32 noundef %call151) #6
  %manage_lock173.c = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 68
  %call175.c = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %manage_lock173.c) #6
  %management_fib_count180.c = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 67
  %72 = ptrtoint ptr %management_fib_count180.c to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %management_fib_count180.c, align 8
  %dec181.c = add i32 %73, -1
  store i32 %dec181.c, ptr %management_fib_count180.c, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %manage_lock173.c, i32 noundef %call175.c) #6
  br label %cleanup209

if.then190:                                       ; preds = %if.end126.if.then190_crit_edge, %if.end61.if.then190_crit_edge
  %callback191 = getelementptr %struct.fib, ptr %37, i32 %index, i32 7
  %74 = ptrtoint ptr %callback191 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %callback191, align 4
  %tobool192.not = icmp eq ptr %75, null
  br i1 %tobool192.not, label %if.then190.if.else203_crit_edge, label %land.rhs, !prof !12

if.then190.if.else203_crit_edge:                  ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else203

land.rhs:                                         ; preds = %if.then190
  %callback_data = getelementptr %struct.fib, ptr %37, i32 %index, i32 8
  %76 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %callback_data, align 4
  %tobool193.not = icmp eq ptr %77, null
  br i1 %tobool193.not, label %land.rhs.if.else203_crit_edge, label %if.then200, !prof !12

land.rhs.if.else203_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else203

if.then200:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %75(ptr noundef nonnull %77, ptr noundef %arrayidx43) #6
  br label %cleanup209

if.else203:                                       ; preds = %land.rhs.if.else203_crit_edge, %if.then190.if.else203_crit_edge
  %call204 = tail call i32 @aac_fib_complete(ptr noundef %arrayidx43) #6
  tail call void @aac_fib_free(ptr noundef %arrayidx43) #6
  br label %cleanup209

cleanup209:                                       ; preds = %if.else203, %if.then200, %if.else161, %if.then159, %if.else82, %if.then80, %if.then51, %if.end34, %if.then30.cleanup209_crit_edge, %list_add_tail.exit, %if.then5, %lor.lhs.false.cleanup209_crit_edge, %if.then.cleanup209_crit_edge
  %retval.3 = phi i32 [ 1, %if.then.cleanup209_crit_edge ], [ 1, %lor.lhs.false.cleanup209_crit_edge ], [ 1, %list_add_tail.exit ], [ 1, %if.then5 ], [ %call38, %if.end34 ], [ 1, %if.then30.cleanup209_crit_edge ], [ 0, %if.else203 ], [ 0, %if.then200 ], [ 0, %if.then51 ], [ 0, %if.else82 ], [ 0, %if.then80 ], [ 0, %if.else161 ], [ 0, %if.then159 ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aac_fib_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_fib_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_fib_send(i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_aif_callback(ptr noundef %context, ptr noundef %fibptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %fibptr, null
  br i1 %cmp, label %do.body2, label %do.end7, !prof !12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/dpcsup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 235, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

do.end7:                                          ; preds = %entry
  %dev8 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 3
  %0 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev8, align 4
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %2 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_fib_va, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %do.end7.if.then11_crit_edge

do.end7.if.then11_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

lor.lhs.false:                                    ; preds = %do.end7
  %sa_firmware = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 66
  %6 = ptrtoint ptr %sa_firmware to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sa_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %if.end12, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %do.end7.if.then11_crit_edge
  %call = tail call i32 @aac_fib_complete(ptr noundef nonnull %fibptr) #6
  tail call void @aac_fib_free(ptr noundef nonnull %fibptr) #6
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 @aac_intr_normal(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef %3)
  tail call void @aac_fib_init(ptr noundef %context) #6
  %hw_fib_va15 = getelementptr inbounds %struct.fib, ptr %context, i32 0, i32 13
  %8 = ptrtoint ptr %hw_fib_va15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_fib_va15, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -939524096, ptr %data, align 4
  %call16 = tail call i32 @aac_fib_send(i16 noundef zeroext 700, ptr noundef %context, i32 noundef 480, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @aac_aif_callback, ptr noundef %context) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
!10 = !{i64 2148222335, i64 2148222361, i64 2148222390, i64 2148222424, i64 2148222455, i64 2148222478}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2155035363, i64 2155035857, i64 2155035400, i64 2155035456, i64 2155035490, i64 2155035514, i64 2155035555, i64 2155035576, i64 2155035604, i64 2155035638}
