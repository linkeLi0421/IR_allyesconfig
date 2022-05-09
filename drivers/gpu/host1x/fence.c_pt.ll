; ModuleID = '/llk/IR_all_yes/drivers/gpu/host1x/fence.c_pt.bc'
source_filename = "../drivers/gpu/host1x/fence.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+host1x_fence_create\22, \22a\22\09"
module asm "\09.weak\09__crc_host1x_fence_create\09\09\09\09"
module asm "\09.long\09__crc_host1x_fence_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_fence_create:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_fence_create\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_fence_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.host1x_syncpt_fence = type { %struct.dma_fence, %struct.atomic_t, ptr, i32, ptr, ptr, %struct.delayed_work }
%struct.dma_fence = type { ptr, ptr, %union.anon.2, i64, i64, i32, %struct.kref, i32 }
%union.anon.2 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.host1x_syncpt = type { %struct.kref, i32, %struct.atomic_t, %struct.atomic_t, i32, ptr, i8, ptr, ptr, %struct.host1x_syncpt_intr, i8 }
%struct.host1x_syncpt_intr = type { %struct.spinlock, %struct.list_head, [12 x i8], %struct.work_struct }

@host1x_syncpt_fence_ops = dso_local constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @host1x_syncpt_fence_get_driver_name, ptr @host1x_syncpt_fence_get_timeline_name, ptr @host1x_syncpt_fence_enable_signaling, ptr null, ptr null, ptr @host1x_syncpt_fence_release, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@host1x_fence_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&fence->timeout_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@host1x_fence_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&fence->timeout_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_host1x_fence_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_fence_create = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_fence_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_fence_create to i32), ptr @__kstrtab_host1x_fence_create, ptr @__kstrtabns_host1x_fence_create }, section "___ksymtab+host1x_fence_create", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"host1x\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syncpoint\00", [22 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dma-fence.h\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"host1x_syncpt_fence_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 102, i32 28 }
@___asan_gen_.10 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 166, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 36, i32 9 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 41, i32 9 }
@___asan_gen_.32 = private constant [30 x i8] c"../drivers/gpu/host1x/fence.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 18, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [29 x i8] c"../include/linux/dma-fence.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 545, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_host1x_fence_create, ptr @host1x_syncpt_fence_ops, ptr @lock, ptr @host1x_fence_create.__key, ptr @.str, ptr @host1x_fence_create.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_syncpt_fence_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_fence_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_fence_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @host1x_syncpt_fence_get_driver_name(ptr nocapture noundef readnone %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @host1x_syncpt_fence_get_timeline_name(ptr nocapture noundef readnone %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @host1x_syncpt_fence_enable_signaling(ptr noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sp = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sp, align 4
  %threshold = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %f, i32 0, i32 3
  %2 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %threshold, align 8
  %call1 = tail call zeroext i1 @host1x_syncpt_is_expired(ptr noundef %1, i32 noundef %3) #5
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %f, null
  br i1 %tobool.not.i, label %if.end.dma_fence_get.exit_crit_edge, label %if.then.i

if.end.dma_fence_get.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !27
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !28

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !29

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #5
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end.dma_fence_get.exit_crit_edge
  %timeout_work = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %f, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %timeout_work, i32 noundef 3000) #5
  %7 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sp, align 4
  %host = getelementptr inbounds %struct.host1x_syncpt, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  %11 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %threshold, align 8
  %waiter = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %f, i32 0, i32 4
  %13 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %waiter, align 4
  %waiter_ref = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %f, i32 0, i32 5
  %call8 = tail call i32 @host1x_intr_add_action(ptr noundef %10, ptr noundef %8, i32 noundef %12, i32 noundef 3, ptr noundef %f, ptr noundef %14, ptr noundef %waiter_ref) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %dma_fence_get.exit
  %call11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work) #5
  br i1 %tobool.not.i, label %if.then9.cleanup_crit_edge, label %if.then.i30

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i30:                                      ; preds = %if.then9
  %refcount.i28 = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 6
  %call.i.i.i.i.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i28, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr %refcount.i28, i32 1, i32 3, i32 1) #5
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i28, ptr %refcount.i28, i32 1, ptr elementtype(i32) %refcount.i28) #5, !srcloc !31
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i31 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i31, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !29

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i28, i32 noundef 3) #5
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @dma_fence_release(ptr noundef %refcount.i28) #5
  br label %cleanup

if.end12:                                         ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %waiter, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end12 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.then9.cleanup_crit_edge ], [ false, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ false, %if.then10.i.i.i.i.i ], [ false, %if.then.i.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @host1x_syncpt_fence_release(ptr noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %waiter = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %f, i32 0, i32 4
  %0 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %waiter, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @dma_fence_free(ptr noundef %f) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_fence_signal(ptr noundef %f) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %signaling = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %f, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %signaling, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %signaling, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %signaling) #5, !srcloc !34
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %timeout_work = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %f, i32 0, i32 6
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work) #5
  %sp = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %f, i32 0, i32 2
  %1 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sp, align 4
  %host = getelementptr inbounds %struct.host1x_syncpt, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %id = getelementptr inbounds %struct.host1x_syncpt, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %waiter_ref = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %f, i32 0, i32 5
  %7 = ptrtoint ptr %waiter_ref to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %waiter_ref, align 8
  tail call void @host1x_intr_put_ref(ptr noundef %4, i32 noundef %6, ptr noundef %8, i1 noundef zeroext false) #5
  %call3 = tail call i32 @dma_fence_signal(ptr noundef %f) #5
  %tobool.not.i = icmp eq ptr %f, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.then.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !31
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i.i, !prof !29

if.end5.i.i.i.i.i.return_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %return

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @dma_fence_release(ptr noundef %refcount.i) #5
  br label %return

return:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_intr_put_ref(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @host1x_fence_create(ptr noundef %sp, i32 noundef %threshold) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 168) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 32) #8
  %waiter = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i41, ptr %waiter, align 4
  %tobool4.not = icmp eq ptr %call7.i.i41, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sp8 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %sp8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sp, ptr %sp8, align 4
  %threshold9 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %threshold9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %threshold, ptr %threshold9, align 8
  %call10 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #5
  tail call void @dma_fence_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @host1x_syncpt_fence_ops, ptr noundef nonnull @lock, i64 noundef %call10, i64 noundef 0) #5
  %timeout_work = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %timeout_work, i32 noundef 0) #5
  %5 = ptrtoint ptr %timeout_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %timeout_work, align 4
  %lockdep_map = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @host1x_fence_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry18 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  %6 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry18, ptr %entry18, align 8
  %prev.i = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry18, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @do_fence_timeout, ptr %func, align 8
  %timer = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %call7.i.i, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @host1x_fence_create.__key.1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end7 ], [ inttoptr (i32 -12 to ptr), %if.then5 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_fence_timeout(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %signaling = getelementptr i8, ptr %work, i32 -20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %signaling, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %signaling, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %signaling) #5, !srcloc !34
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -68
  %sp = getelementptr i8, ptr %work, i32 -16
  %1 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sp, align 4
  %host = getelementptr inbounds %struct.host1x_syncpt, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %id = getelementptr inbounds %struct.host1x_syncpt, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %waiter_ref = getelementptr i8, ptr %work, i32 -4
  %7 = ptrtoint ptr %waiter_ref to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %waiter_ref, align 8
  tail call void @host1x_intr_put_ref(ptr noundef %4, i32 noundef %6, ptr noundef %8, i1 noundef zeroext true) #5
  %flags.i = getelementptr i8, ptr %work, i32 -36
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.dma_fence_set_error.exit_crit_edge, label %do.end.i, !prof !29

if.end.dma_fence_set_error.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_set_error.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 545, i32 noundef 9, ptr noundef null) #5
  br label %dma_fence_set_error.exit

dma_fence_set_error.exit:                         ; preds = %do.end.i, %if.end.dma_fence_set_error.exit_crit_edge
  %error51.i = getelementptr i8, ptr %work, i32 -28
  %11 = ptrtoint ptr %error51.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -110, ptr %error51.i, align 8
  %call3 = tail call i32 @dma_fence_signal(ptr noundef %add.ptr) #5
  %tobool.not.i12 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i12, label %dma_fence_set_error.exit.cleanup_crit_edge, label %if.then.i

dma_fence_set_error.exit.cleanup_crit_edge:       ; preds = %dma_fence_set_error.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %dma_fence_set_error.exit
  %refcount.i = getelementptr i8, ptr %work, i32 -32
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !31
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !29

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @dma_fence_release(ptr noundef %refcount.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %dma_fence_set_error.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @host1x_syncpt_is_expired(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_intr_add_action(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !13, !15, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @host1x_syncpt_fence_ops, !1, !"host1x_syncpt_fence_ops", i1 false, i1 false}
!1 = !{!"../drivers/gpu/host1x/fence.c", i32 102, i32 28}
!2 = !{ptr @host1x_fence_create.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/host1x/fence.c", i32 166, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @host1x_fence_create.__key.1, !3, !"__key", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_host1x_fence_create, !8, !"__ksymtab_host1x_fence_create", i1 false, i1 false}
!8 = !{!"../drivers/gpu/host1x/fence.c", i32 170, i32 1}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/host1x/fence.c", i32 36, i32 9}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/host1x/fence.c", i32 41, i32 9}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/host1x/fence.c", i32 18, i32 8}
!15 = !{ptr @lock, !14, !"lock", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/dma-fence.h", i32 545, i32 2}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2148543993, i64 2148544025, i64 2148544054, i64 2148544088, i64 2148544119, i64 2148544142}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2148632018}
!31 = !{i64 2148546458, i64 2148546490, i64 2148546519, i64 2148546553, i64 2148546584, i64 2148546607}
!32 = !{i64 2149278693}
!33 = !{i64 2148802363}
!34 = !{i64 1049231, i64 1049248, i64 1049272, i64 1049298, i64 1049316}
!35 = !{i64 2148802733}
