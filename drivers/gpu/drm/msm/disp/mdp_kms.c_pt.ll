; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp_kms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.mdp_kms_funcs = type { %struct.msm_kms_funcs, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdp_irq_wait = type { %struct.mdp_irq, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/msm/disp/mdp_kms.c\00", [61 x i8] zeroinitializer }, align 32
@wait_event = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @wait_event, i64 44), ptr getelementptr (i8, ptr @wait_event, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"list_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wait_event.lock\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [10 x i8] c"list_lock\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 97, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [11 x i8] c"wait_event\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 19, i32 8 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [38 x i8] c"../drivers/gpu/drm/msm/disp/mdp_kms.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 17, i32 8 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @list_lock, ptr @.str, ptr @wait_event, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_event to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp_irq_update(ptr noundef %mdp_kms) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #3
  %vblank_mask.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 4
  %0 = ptrtoint ptr %vblank_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vblank_mask.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @list_lock, align 4
  %2 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !17

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp_kms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 26, 0\0A.popsection", ""() #3, !srcloc !18
  unreachable

do.end9.i:                                        ; preds = %entry
  %irq_list.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 3
  %3 = ptrtoint ptr %irq_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %irq.030.i = load ptr, ptr %irq_list.i, align 4
  %cmp.not31.i = icmp eq ptr %irq.030.i, %irq_list.i
  br i1 %cmp.not31.i, label %do.end9.i.update_irq.exit_crit_edge, label %do.end9.i.for.body.i_crit_edge

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  br label %for.body.i

do.end9.i.update_irq.exit_crit_edge:              ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %update_irq.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end9.i.for.body.i_crit_edge
  %irq.033.i = phi ptr [ %irq.0.i, %for.body.i.for.body.i_crit_edge ], [ %irq.030.i, %do.end9.i.for.body.i_crit_edge ]
  %irqmask.032.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %1, %do.end9.i.for.body.i_crit_edge ]
  %irqmask13.i = getelementptr inbounds %struct.mdp_irq, ptr %irq.033.i, i32 0, i32 1
  %4 = ptrtoint ptr %irqmask13.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqmask13.i, align 4
  %or.i = or i32 %5, %irqmask.032.i
  %6 = ptrtoint ptr %irq.033.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %irq.0.i = load ptr, ptr %irq.033.i, align 4
  %cmp.not.i = icmp eq ptr %irq.0.i, %irq_list.i
  br i1 %cmp.not.i, label %for.body.i.update_irq.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.update_irq.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %update_irq.exit

update_irq.exit:                                  ; preds = %for.body.i.update_irq.exit_crit_edge, %do.end9.i.update_irq.exit_crit_edge
  %irqmask.0.lcssa.i = phi i32 [ %1, %do.end9.i.update_irq.exit_crit_edge ], [ %or.i, %for.body.i.update_irq.exit_crit_edge ]
  %funcs.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 1
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs.i, align 8
  %set_irqmask.i = getelementptr inbounds %struct.mdp_kms_funcs, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %set_irqmask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_irqmask.i, align 4
  %cur_irq_mask.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 5
  %11 = ptrtoint ptr %cur_irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_irq_mask.i, align 4
  tail call void %10(ptr noundef %mdp_kms, i32 noundef %irqmask.0.lcssa.i, i32 noundef %12) #3
  %13 = ptrtoint ptr %cur_irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %irqmask.0.lcssa.i, ptr %cur_irq_mask.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call2) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp_dispatch_irqs(ptr noundef %mdp_kms, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #3
  %in_irq = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 2
  %0 = ptrtoint ptr %in_irq to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %in_irq, align 4
  %irq_list = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 3
  %1 = ptrtoint ptr %irq_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %irq_list, align 8
  %cmp12.not48 = icmp eq ptr %2, %irq_list
  br i1 %cmp12.not48, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %handler.050 = phi ptr [ %n.051, %for.inc.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %flags.049 = phi i32 [ %flags.1, %for.inc.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %handler.050 to i32
  call void @__asan_load4_noabort(i32 %3)
  %n.051 = load ptr, ptr %handler.050, align 4
  %irqmask = getelementptr inbounds %struct.mdp_irq, ptr %handler.050, i32 0, i32 1
  %4 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqmask, align 4
  %and = and i32 %5, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %flags.049) #3
  %irq = getelementptr inbounds %struct.mdp_irq, ptr %handler.050, i32 0, i32 3
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq, align 4
  %8 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irqmask, align 4
  %and15 = and i32 %9, %status
  tail call void %7(ptr noundef %handler.050, i32 noundef %and15) #3
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %flags.1 = phi i32 [ %call24, %if.then ], [ %flags.049, %for.body.for.inc_crit_edge ]
  %cmp12.not = icmp eq ptr %n.051, %irq_list
  br i1 %cmp12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %entry.for.end_crit_edge ], [ %flags.1, %for.inc.for.end_crit_edge ]
  %10 = ptrtoint ptr %in_irq to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %in_irq, align 4
  %vblank_mask.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 4
  %11 = ptrtoint ptr %vblank_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vblank_mask.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @list_lock, align 4
  %13 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !17

do.body4.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp_kms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 26, 0\0A.popsection", ""() #3, !srcloc !18
  unreachable

do.end9.i:                                        ; preds = %for.end
  %14 = ptrtoint ptr %irq_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %irq.030.i = load ptr, ptr %irq_list, align 4
  %cmp.not31.i = icmp eq ptr %irq.030.i, %irq_list
  br i1 %cmp.not31.i, label %do.end9.i.update_irq.exit_crit_edge, label %do.end9.i.for.body.i_crit_edge

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  br label %for.body.i

do.end9.i.update_irq.exit_crit_edge:              ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %update_irq.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end9.i.for.body.i_crit_edge
  %irq.033.i = phi ptr [ %irq.0.i, %for.body.i.for.body.i_crit_edge ], [ %irq.030.i, %do.end9.i.for.body.i_crit_edge ]
  %irqmask.032.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %12, %do.end9.i.for.body.i_crit_edge ]
  %irqmask13.i = getelementptr inbounds %struct.mdp_irq, ptr %irq.033.i, i32 0, i32 1
  %15 = ptrtoint ptr %irqmask13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irqmask13.i, align 4
  %or.i = or i32 %16, %irqmask.032.i
  %17 = ptrtoint ptr %irq.033.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %irq.0.i = load ptr, ptr %irq.033.i, align 4
  %cmp.not.i = icmp eq ptr %irq.0.i, %irq_list
  br i1 %cmp.not.i, label %for.body.i.update_irq.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.update_irq.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %update_irq.exit

update_irq.exit:                                  ; preds = %for.body.i.update_irq.exit_crit_edge, %do.end9.i.update_irq.exit_crit_edge
  %irqmask.0.lcssa.i = phi i32 [ %12, %do.end9.i.update_irq.exit_crit_edge ], [ %or.i, %for.body.i.update_irq.exit_crit_edge ]
  %funcs.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 1
  %18 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs.i, align 8
  %set_irqmask.i = getelementptr inbounds %struct.mdp_kms_funcs, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %set_irqmask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_irqmask.i, align 4
  %cur_irq_mask.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 5
  %22 = ptrtoint ptr %cur_irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_irq_mask.i, align 4
  tail call void %21(ptr noundef %mdp_kms, i32 noundef %irqmask.0.lcssa.i, i32 noundef %23) #3
  %24 = ptrtoint ptr %cur_irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %irqmask.0.lcssa.i, ptr %cur_irq_mask.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %flags.0.lcssa) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp_update_vblank_mask(ptr noundef %mdp_kms, i32 noundef %mask, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #3
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %vblank_mask = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 4
  %0 = ptrtoint ptr %vblank_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vblank_mask, align 8
  %or = or i32 %1, %mask
  store i32 %or, ptr %vblank_mask, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %neg = xor i32 %mask, -1
  %vblank_mask5 = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 4
  %2 = ptrtoint ptr %vblank_mask5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vblank_mask5, align 8
  %and = and i32 %3, %neg
  store i32 %and, ptr %vblank_mask5, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %vblank_mask.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 4
  %4 = ptrtoint ptr %vblank_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vblank_mask.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @list_lock, align 4
  %6 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !17

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp_kms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 26, 0\0A.popsection", ""() #3, !srcloc !18
  unreachable

do.end9.i:                                        ; preds = %if.end
  %irq_list.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 3
  %7 = ptrtoint ptr %irq_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %irq.030.i = load ptr, ptr %irq_list.i, align 4
  %cmp.not31.i = icmp eq ptr %irq.030.i, %irq_list.i
  br i1 %cmp.not31.i, label %do.end9.i.update_irq.exit_crit_edge, label %do.end9.i.for.body.i_crit_edge

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  br label %for.body.i

do.end9.i.update_irq.exit_crit_edge:              ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %update_irq.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end9.i.for.body.i_crit_edge
  %irq.033.i = phi ptr [ %irq.0.i, %for.body.i.for.body.i_crit_edge ], [ %irq.030.i, %do.end9.i.for.body.i_crit_edge ]
  %irqmask.032.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %5, %do.end9.i.for.body.i_crit_edge ]
  %irqmask13.i = getelementptr inbounds %struct.mdp_irq, ptr %irq.033.i, i32 0, i32 1
  %8 = ptrtoint ptr %irqmask13.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irqmask13.i, align 4
  %or.i = or i32 %9, %irqmask.032.i
  %10 = ptrtoint ptr %irq.033.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %irq.0.i = load ptr, ptr %irq.033.i, align 4
  %cmp.not.i = icmp eq ptr %irq.0.i, %irq_list.i
  br i1 %cmp.not.i, label %for.body.i.update_irq.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.update_irq.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %update_irq.exit

update_irq.exit:                                  ; preds = %for.body.i.update_irq.exit_crit_edge, %do.end9.i.update_irq.exit_crit_edge
  %irqmask.0.lcssa.i = phi i32 [ %5, %do.end9.i.update_irq.exit_crit_edge ], [ %or.i, %for.body.i.update_irq.exit_crit_edge ]
  %funcs.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 1
  %11 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs.i, align 8
  %set_irqmask.i = getelementptr inbounds %struct.mdp_kms_funcs, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %set_irqmask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_irqmask.i, align 4
  %cur_irq_mask.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 5
  %15 = ptrtoint ptr %cur_irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_irq_mask.i, align 4
  tail call void %14(ptr noundef %mdp_kms, i32 noundef %irqmask.0.lcssa.i, i32 noundef %16) #3
  %17 = ptrtoint ptr %cur_irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %irqmask.0.lcssa.i, ptr %cur_irq_mask.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp_irq_wait(ptr noundef %mdp_kms, i32 noundef %irqmask) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.mdp_irq_wait, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wait) #3
  %0 = getelementptr inbounds i8, ptr %wait, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %wait, align 8
  %irqmask1 = getelementptr inbounds %struct.mdp_irq, ptr %wait, i32 0, i32 1
  %3 = ptrtoint ptr %irqmask1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %irqmask, ptr %irqmask1, align 8
  %registered = getelementptr inbounds %struct.mdp_irq, ptr %wait, i32 0, i32 2
  %4 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %registered, align 4
  %irq2 = getelementptr inbounds %struct.mdp_irq, ptr %wait, i32 0, i32 3
  %5 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @wait_irq, ptr %irq2, align 8
  %count = getelementptr inbounds %struct.mdp_irq_wait, ptr %wait, i32 0, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %count, align 4
  call void @mdp_irq_register(ptr noundef %mdp_kms, ptr noundef nonnull %wait)
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 98) #3
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %entry.if.end37_crit_edge, label %if.then12

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

if.then12:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #3
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #3
  %call1552 = call i32 @prepare_to_wait_event(ptr noundef nonnull @wait_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #3
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp1853 = icmp slt i32 %11, 1
  br i1 %cmp1853, label %if.then12.for.end_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  br label %cleanup

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %__ret13.154 = phi i32 [ %__ret13.1, %cleanup.cleanup_crit_edge ], [ 10, %if.then12.cleanup_crit_edge ]
  %call35 = call i32 @schedule_timeout(i32 noundef %__ret13.154) #3
  %call15 = call i32 @prepare_to_wait_event(ptr noundef nonnull @wait_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #3
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp18 = icmp slt i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool22.not = icmp eq i32 %call35, 0
  %14 = select i1 %cmp18, i1 %tobool22.not, i1 false
  %__ret13.1 = select i1 %14, i32 1, i32 %call35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1)
  %tobool28.not = icmp eq i32 %__ret13.1, 0
  %15 = select i1 %cmp18, i1 true, i1 %tobool28.not
  br i1 %15, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then12.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @wait_event, ptr noundef nonnull %__wq_entry) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #3
  br label %if.end37

if.end37:                                         ; preds = %for.end, %entry.if.end37_crit_edge
  call void @mdp_irq_unregister(ptr noundef %mdp_kms, ptr noundef nonnull %wait)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wait) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wait_irq(ptr nocapture noundef %irq, i32 noundef %irqstatus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.mdp_irq_wait, ptr %irq, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %count, align 4
  tail call void @__wake_up(ptr noundef nonnull @wait_event, i32 noundef 3, i32 noundef 0, ptr noundef null) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp_irq_register(ptr noundef %mdp_kms, ptr noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #3
  %registered = getelementptr inbounds %struct.mdp_irq, ptr %irq, i32 0, i32 2
  %0 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %registered, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9.sink.split_crit_edge

entry.if.end9.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.sink.split

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %registered, align 4
  %irq_list = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 3
  %3 = ptrtoint ptr %irq_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %irq, ptr noundef %irq_list, ptr noundef %4) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add.exit_crit_edge

if.then.list_add.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %irq, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %irq, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %irq, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %irq_list, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %irq_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %irq, ptr %irq_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then.list_add.exit_crit_edge
  %in_irq = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 2
  %9 = ptrtoint ptr %in_irq to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %in_irq, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %extract.t.not = icmp eq i8 %10, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call2) #3
  br i1 %extract.t.not, label %list_add.exit.if.end9_crit_edge, label %if.then8

list_add.exit.if.end9_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then8:                                         ; preds = %list_add.exit
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #3
  %vblank_mask.i.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 4
  %11 = ptrtoint ptr %vblank_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vblank_mask.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr @list_lock, align 4
  %13 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !17

do.body4.i.i:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp_kms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 26, 0\0A.popsection", ""() #3, !srcloc !18
  unreachable

do.end9.i.i:                                      ; preds = %if.then8
  %14 = ptrtoint ptr %irq_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %irq.030.i.i = load ptr, ptr %irq_list, align 4
  %cmp.not31.i.i = icmp eq ptr %irq.030.i.i, %irq_list
  br i1 %cmp.not31.i.i, label %do.end9.i.i.mdp_irq_update.exit_crit_edge, label %do.end9.i.i.for.body.i.i_crit_edge

do.end9.i.i.for.body.i.i_crit_edge:               ; preds = %do.end9.i.i
  br label %for.body.i.i

do.end9.i.i.mdp_irq_update.exit_crit_edge:        ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mdp_irq_update.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end9.i.i.for.body.i.i_crit_edge
  %irq.033.i.i = phi ptr [ %irq.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %irq.030.i.i, %do.end9.i.i.for.body.i.i_crit_edge ]
  %irqmask.032.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %12, %do.end9.i.i.for.body.i.i_crit_edge ]
  %irqmask13.i.i = getelementptr inbounds %struct.mdp_irq, ptr %irq.033.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %irqmask13.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irqmask13.i.i, align 4
  %or.i.i = or i32 %16, %irqmask.032.i.i
  %17 = ptrtoint ptr %irq.033.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %irq.0.i.i = load ptr, ptr %irq.033.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %irq.0.i.i, %irq_list
  br i1 %cmp.not.i.i, label %for.body.i.i.mdp_irq_update.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

for.body.i.i.mdp_irq_update.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mdp_irq_update.exit

mdp_irq_update.exit:                              ; preds = %for.body.i.i.mdp_irq_update.exit_crit_edge, %do.end9.i.i.mdp_irq_update.exit_crit_edge
  %irqmask.0.lcssa.i.i = phi i32 [ %12, %do.end9.i.i.mdp_irq_update.exit_crit_edge ], [ %or.i.i, %for.body.i.i.mdp_irq_update.exit_crit_edge ]
  %funcs.i.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 1
  %18 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs.i.i, align 8
  %set_irqmask.i.i = getelementptr inbounds %struct.mdp_kms_funcs, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %set_irqmask.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_irqmask.i.i, align 4
  %cur_irq_mask.i.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 5
  %22 = ptrtoint ptr %cur_irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_irq_mask.i.i, align 4
  tail call void %21(ptr noundef %mdp_kms, i32 noundef %irqmask.0.lcssa.i.i, i32 noundef %23) #3
  %24 = ptrtoint ptr %cur_irq_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %irqmask.0.lcssa.i.i, ptr %cur_irq_mask.i.i, align 4
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %mdp_irq_update.exit, %entry.if.end9.sink.split_crit_edge
  %call2.sink = phi i32 [ %call2.i, %mdp_irq_update.exit ], [ %call2, %entry.if.end9.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call2.sink) #3
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %list_add.exit.if.end9_crit_edge
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp_irq_unregister(ptr noundef %mdp_kms, ptr noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #3
  %registered = getelementptr inbounds %struct.mdp_irq, ptr %irq, i32 0, i32 2
  %0 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %registered, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end9.sink.split_crit_edge, label %if.then

entry.if.end9.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.sink.split

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %registered, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %irq) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %irq, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %irq, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %irq, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %in_irq = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 2
  %11 = ptrtoint ptr %in_irq to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %in_irq, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call2) #3
  br i1 %tobool6.not, label %if.then8, label %list_del.exit.if.end9_crit_edge

list_del.exit.if.end9_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then8:                                         ; preds = %list_del.exit
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #3
  %vblank_mask.i.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 4
  %13 = ptrtoint ptr %vblank_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vblank_mask.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr @list_lock, align 4
  %15 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !17

do.body4.i.i:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp_kms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 26, 0\0A.popsection", ""() #3, !srcloc !18
  unreachable

do.end9.i.i:                                      ; preds = %if.then8
  %irq_list.i.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 3
  %16 = ptrtoint ptr %irq_list.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %irq.030.i.i = load ptr, ptr %irq_list.i.i, align 4
  %cmp.not31.i.i = icmp eq ptr %irq.030.i.i, %irq_list.i.i
  br i1 %cmp.not31.i.i, label %do.end9.i.i.mdp_irq_update.exit_crit_edge, label %do.end9.i.i.for.body.i.i_crit_edge

do.end9.i.i.for.body.i.i_crit_edge:               ; preds = %do.end9.i.i
  br label %for.body.i.i

do.end9.i.i.mdp_irq_update.exit_crit_edge:        ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mdp_irq_update.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end9.i.i.for.body.i.i_crit_edge
  %irq.033.i.i = phi ptr [ %irq.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %irq.030.i.i, %do.end9.i.i.for.body.i.i_crit_edge ]
  %irqmask.032.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %14, %do.end9.i.i.for.body.i.i_crit_edge ]
  %irqmask13.i.i = getelementptr inbounds %struct.mdp_irq, ptr %irq.033.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %irqmask13.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irqmask13.i.i, align 4
  %or.i.i = or i32 %18, %irqmask.032.i.i
  %19 = ptrtoint ptr %irq.033.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %irq.0.i.i = load ptr, ptr %irq.033.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %irq.0.i.i, %irq_list.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.mdp_irq_update.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

for.body.i.i.mdp_irq_update.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mdp_irq_update.exit

mdp_irq_update.exit:                              ; preds = %for.body.i.i.mdp_irq_update.exit_crit_edge, %do.end9.i.i.mdp_irq_update.exit_crit_edge
  %irqmask.0.lcssa.i.i = phi i32 [ %14, %do.end9.i.i.mdp_irq_update.exit_crit_edge ], [ %or.i.i, %for.body.i.i.mdp_irq_update.exit_crit_edge ]
  %funcs.i.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 1
  %20 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs.i.i, align 8
  %set_irqmask.i.i = getelementptr inbounds %struct.mdp_kms_funcs, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %set_irqmask.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_irqmask.i.i, align 4
  %cur_irq_mask.i.i = getelementptr inbounds %struct.mdp_kms, ptr %mdp_kms, i32 0, i32 5
  %24 = ptrtoint ptr %cur_irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cur_irq_mask.i.i, align 4
  tail call void %23(ptr noundef %mdp_kms, i32 noundef %irqmask.0.lcssa.i.i, i32 noundef %25) #3
  %26 = ptrtoint ptr %cur_irq_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %irqmask.0.lcssa.i.i, ptr %cur_irq_mask.i.i, align 4
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %mdp_irq_update.exit, %entry.if.end9.sink.split_crit_edge
  %call2.sink = phi i32 [ %call2.i, %mdp_irq_update.exit ], [ %call2, %entry.if.end9.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call2.sink) #3
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %list_del.exit.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp_kms.c", i32 97, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp_kms.c", i32 19, i32 8}
!4 = !{ptr @list_lock, !3, !"list_lock", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/disp/mdp_kms.c", i32 17, i32 8}
!7 = !{ptr @wait_event, !6, !"wait_event", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2157057857, i64 2157058355, i64 2157057894, i64 2157057950, i64 2157057984, i64 2157058008, i64 2157058049, i64 2157058070, i64 2157058098, i64 2157058132}
!19 = !{i8 0, i8 2}
