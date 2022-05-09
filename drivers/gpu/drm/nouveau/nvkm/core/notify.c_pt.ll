; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/core/notify.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/notify.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }

@nvkm_notify_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&notify->work)\00", [63 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/nvkm/core/notify.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 147, i32 5 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @nvkm_notify_init.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_notify_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_notify_put(ptr noundef %notify) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %land.lhs.true, !prof !12

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %flags4 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 2
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end17_crit_edge, label %do.body6

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body6:                                         ; preds = %land.lhs.true
  %refs_lock = getelementptr inbounds %struct.nvkm_event, ptr %1, i32 0, i32 3
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %refs_lock) #4
  %block.i = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 3
  %2 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %do.body6.nvkm_notify_put_locked.exit_crit_edge

do.body6.nvkm_notify_put_locked.exit_crit_edge:   ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_notify_put_locked.exit

if.then.i:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notify, align 4
  %types.i = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 5
  %6 = ptrtoint ptr %types.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %types.i, align 4
  %index.i = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 6
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  tail call void @nvkm_event_put(ptr noundef %5, i32 noundef %7, i32 noundef %9) #4
  br label %nvkm_notify_put_locked.exit

nvkm_notify_put_locked.exit:                      ; preds = %if.then.i, %do.body6.nvkm_notify_put_locked.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %refs_lock, i32 noundef %call8) #4
  %10 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags4, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %nvkm_notify_put_locked.exit.if.end17_crit_edge, label %if.then15

nvkm_notify_put_locked.exit.if.end17_crit_edge:   ; preds = %nvkm_notify_put_locked.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then15:                                        ; preds = %nvkm_notify_put_locked.exit
  call void @__sanitizer_cov_trace_pc() #6
  %work = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 8
  %call16 = tail call zeroext i1 @flush_work(ptr noundef %work) #4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %nvkm_notify_put_locked.exit.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_notify_get(ptr noundef %notify) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true, !prof !12

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags4 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 2
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %do.body6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body6:                                         ; preds = %land.lhs.true
  %refs_lock = getelementptr inbounds %struct.nvkm_event, ptr %1, i32 0, i32 3
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %refs_lock) #4
  %block.i = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 3
  %2 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block.i, align 4
  %dec.i = add i32 %3, -1
  store i32 %dec.i, ptr %block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %do.body6.nvkm_notify_get_locked.exit_crit_edge

do.body6.nvkm_notify_get_locked.exit_crit_edge:   ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_notify_get_locked.exit

if.then.i:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notify, align 4
  %types.i = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 5
  %6 = ptrtoint ptr %types.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %types.i, align 4
  %index.i = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 6
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  tail call void @nvkm_event_get(ptr noundef %5, i32 noundef %7, i32 noundef %9) #4
  br label %nvkm_notify_get_locked.exit

nvkm_notify_get_locked.exit:                      ; preds = %if.then.i, %do.body6.nvkm_notify_get_locked.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %refs_lock, i32 noundef %call8) #4
  br label %if.end

if.end:                                           ; preds = %nvkm_notify_get_locked.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_notify_send(ptr noundef %notify, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify, align 4
  %list_lock = getelementptr inbounds %struct.nvkm_event, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %2 = ptrtoint ptr %list_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %list_lock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body5, label %do.body11, !prof !12

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/notify.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 96, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

do.body11:                                        ; preds = %entry
  %size12 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 7
  %4 = ptrtoint ptr %size12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %size)
  %cmp.not = icmp eq i32 %5, %size
  br i1 %cmp.not, label %do.body30, label %do.body20, !prof !14

do.body20:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/notify.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #4, !srcloc !15
  unreachable

do.body30:                                        ; preds = %do.body11
  %refs_lock = getelementptr inbounds %struct.nvkm_event, ptr %1, i32 0, i32 3
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %refs_lock) #4
  %block = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 3
  %6 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool38.not = icmp eq i32 %7, 0
  br i1 %tobool38.not, label %nvkm_notify_put_locked.exit, label %if.then39

if.then39:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %refs_lock, i32 noundef %call33) #4
  br label %cleanup

nvkm_notify_put_locked.exit:                      ; preds = %do.body30
  %8 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %block, align 4
  %9 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %notify, align 4
  %types.i = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 5
  %11 = ptrtoint ptr %types.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %types.i, align 4
  %index.i = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 6
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  tail call void @nvkm_event_put(ptr noundef %10, i32 noundef %12, i32 noundef %14) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %refs_lock, i32 noundef %call33) #4
  %flags43 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 2
  %15 = ptrtoint ptr %flags43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags43, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool45.not = icmp eq i32 %17, 0
  %data49 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 9
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %nvkm_notify_put_locked.exit
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %data49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data49, align 4
  %20 = call ptr @memcpy(ptr %19, ptr %data, i32 %size)
  %work = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %work) #4
  br label %cleanup

if.else:                                          ; preds = %nvkm_notify_put_locked.exit
  %22 = ptrtoint ptr %data49 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %data, ptr %data49, align 4
  %23 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %notify, align 4
  %func.i = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 4
  %25 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %func.i, align 4
  %call.i = tail call i32 %26(ptr noundef %notify) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i68 = icmp eq i32 %call.i, 1
  br i1 %cmp.i68, label %if.else.do.body4.i_crit_edge, label %lor.lhs.false.i

if.else.do.body4.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4.i

lor.lhs.false.i:                                  ; preds = %if.else
  %call3.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags43) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.do.body4.i_crit_edge, label %lor.lhs.false.i.nvkm_notify_func.exit_crit_edge

lor.lhs.false.i.nvkm_notify_func.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_notify_func.exit

lor.lhs.false.i.do.body4.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4.i

do.body4.i:                                       ; preds = %lor.lhs.false.i.do.body4.i_crit_edge, %if.else.do.body4.i_crit_edge
  %refs_lock.i = getelementptr inbounds %struct.nvkm_event, ptr %24, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %refs_lock.i) #4
  %27 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %block, align 4
  %dec.i.i = add i32 %28, -1
  store i32 %dec.i.i, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i69 = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i69, label %if.then.i.i, label %do.body4.i.nvkm_notify_get_locked.exit.i_crit_edge

do.body4.i.nvkm_notify_get_locked.exit.i_crit_edge: ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_notify_get_locked.exit.i

if.then.i.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %notify, align 4
  %31 = ptrtoint ptr %types.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %types.i, align 4
  %33 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index.i, align 4
  tail call void @nvkm_event_get(ptr noundef %30, i32 noundef %32, i32 noundef %34) #4
  br label %nvkm_notify_get_locked.exit.i

nvkm_notify_get_locked.exit.i:                    ; preds = %if.then.i.i, %do.body4.i.nvkm_notify_get_locked.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %refs_lock.i, i32 noundef %call7.i) #4
  br label %nvkm_notify_func.exit

nvkm_notify_func.exit:                            ; preds = %nvkm_notify_get_locked.exit.i, %lor.lhs.false.i.nvkm_notify_func.exit_crit_edge
  %35 = ptrtoint ptr %data49 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %data49, align 4
  br label %cleanup

cleanup:                                          ; preds = %nvkm_notify_func.exit, %if.then46, %if.then39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_notify_fini(ptr noundef %notify) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @nvkm_notify_put(ptr noundef %notify)
  %2 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notify, align 4
  %list_lock = getelementptr inbounds %struct.nvkm_event, ptr %3, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #4
  %head = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %notify, align 4
  %list_lock7 = getelementptr inbounds %struct.nvkm_event, ptr %13, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock7, i32 noundef %call3) #4
  %data = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 9
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %15) #4
  %16 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %notify, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_notify_init(ptr noundef %object, ptr noundef %event, ptr noundef %func, i1 noundef zeroext %work, ptr noundef %data, i32 noundef %size, i32 noundef %reply, ptr noundef %notify) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %event, ptr %notify, align 4
  %refs = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 6
  %1 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %refs, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.then42_crit_edge, label %if.then

entry.if.then42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %event, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call = tail call i32 %6(ptr noundef %object, ptr noundef %data, i32 noundef %size, ptr noundef %notify) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.then.if.then42_crit_edge

if.then.if.then42_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

land.lhs.true:                                    ; preds = %if.then
  %size3 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 7
  %7 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %reply)
  %cmp4 = icmp eq i32 %8, %reply
  br i1 %cmp4, label %if.then5, label %land.lhs.true.if.then42_crit_edge

land.lhs.true.if.then42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

if.then5:                                         ; preds = %land.lhs.true
  %flags6 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 2
  %9 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flags6, align 4
  %block = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 3
  %10 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %block, align 4
  %func7 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 4
  %11 = ptrtoint ptr %func7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %func, ptr %func7, align 4
  %data8 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 9
  %12 = ptrtoint ptr %data8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %data8, align 4
  br i1 %work, label %do.body, label %if.then5.do.body30_crit_edge

if.then5.do.body30_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body30

do.body:                                          ; preds = %if.then5
  %work11 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 8
  tail call void @__init_work(ptr noundef %work11, i32 noundef 0) #4
  %13 = ptrtoint ptr %work11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %work11, align 4
  %lockdep_map = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_notify_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry16 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 8, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry16, ptr %prev.i, align 4
  %func18 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 8, i32 2
  %16 = ptrtoint ptr %func18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nvkm_notify_work, ptr %func18, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags6) #4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %reply, i32 noundef 3264) #7
  %17 = ptrtoint ptr %data8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i, ptr %data8, align 4
  %tobool23.not = icmp eq ptr %call9.i, null
  br i1 %tobool23.not, label %do.body.if.then42_crit_edge, label %do.body.do.body30_crit_edge

do.body.do.body30_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body30

do.body.if.then42_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

do.body30:                                        ; preds = %do.body.do.body30_crit_edge, %if.then5.do.body30_crit_edge
  %list_lock = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 4
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #4
  %head = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 1
  %list = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 5
  %prev.i70 = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %prev.i70 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i70, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %19, ptr noundef %list) #4
  br i1 %call.i.i, label %if.end.i.i71, label %do.body30.if.end40_crit_edge

do.body30.if.end40_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.end.i.i71:                                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %prev.i70 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %head, ptr %prev.i70, align 4
  %21 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %head, ptr %19, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end.i.i71, %do.body30.if.end40_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock, i32 noundef %call33) #4
  br label %if.end44

if.then42:                                        ; preds = %do.body.if.then42_crit_edge, %land.lhs.true.if.then42_crit_edge, %if.then.if.then42_crit_edge, %entry.if.then42_crit_edge
  %ret.1.ph = phi i32 [ -19, %entry.if.then42_crit_edge ], [ %call, %if.then.if.then42_crit_edge ], [ -22, %land.lhs.true.if.then42_crit_edge ], [ -12, %do.body.if.then42_crit_edge ]
  %24 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %notify, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40
  %ret.177 = phi i32 [ %ret.1.ph, %if.then42 ], [ 0, %if.end40 ]
  ret i32 %ret.177
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_notify_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %func.i = getelementptr i8, ptr %work, i32 -16
  %2 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func.i, align 4
  %call.i = tail call i32 %3(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %entry.do.body4.i_crit_edge, label %lor.lhs.false.i

entry.do.body4.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4.i

lor.lhs.false.i:                                  ; preds = %entry
  %flags2.i = getelementptr i8, ptr %work, i32 -24
  %call3.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.do.body4.i_crit_edge, label %lor.lhs.false.i.nvkm_notify_func.exit_crit_edge

lor.lhs.false.i.nvkm_notify_func.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_notify_func.exit

lor.lhs.false.i.do.body4.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4.i

do.body4.i:                                       ; preds = %lor.lhs.false.i.do.body4.i_crit_edge, %entry.do.body4.i_crit_edge
  %refs_lock.i = getelementptr inbounds %struct.nvkm_event, ptr %1, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %refs_lock.i) #4
  %block.i.i = getelementptr i8, ptr %work, i32 -20
  %4 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block.i.i, align 4
  %dec.i.i = add i32 %5, -1
  store i32 %dec.i.i, ptr %block.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %do.body4.i.nvkm_notify_get_locked.exit.i_crit_edge

do.body4.i.nvkm_notify_get_locked.exit.i_crit_edge: ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_notify_get_locked.exit.i

if.then.i.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %types.i.i = getelementptr i8, ptr %work, i32 -12
  %8 = ptrtoint ptr %types.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %types.i.i, align 4
  %index.i.i = getelementptr i8, ptr %work, i32 -8
  %10 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i, align 4
  tail call void @nvkm_event_get(ptr noundef %7, i32 noundef %9, i32 noundef %11) #4
  br label %nvkm_notify_get_locked.exit.i

nvkm_notify_get_locked.exit.i:                    ; preds = %if.then.i.i, %do.body4.i.nvkm_notify_get_locked.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %refs_lock.i, i32 noundef %call7.i) #4
  br label %nvkm_notify_func.exit

nvkm_notify_func.exit:                            ; preds = %nvkm_notify_get_locked.exit.i, %lor.lhs.false.i.nvkm_notify_func.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_put(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @nvkm_notify_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/notify.c", i32 147, i32 5}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2156188529, i64 2156189035, i64 2156188566, i64 2156188622, i64 2156188656, i64 2156188680, i64 2156188721, i64 2156188742, i64 2156188770, i64 2156188804}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2156190191, i64 2156190697, i64 2156190228, i64 2156190284, i64 2156190318, i64 2156190342, i64 2156190383, i64 2156190404, i64 2156190432, i64 2156190466}
