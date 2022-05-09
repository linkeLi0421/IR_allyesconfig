; ModuleID = '/llk/IR_all_yes/drivers/dma-buf/dma-fence-array.c_pt.bc'
source_filename = "../drivers/dma-buf/dma-fence-array.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dma_fence_array_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_fence_array_ops\09\09\09\09"
module asm "\09.long\09__crc_dma_fence_array_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_array_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_array_ops\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_array_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_fence_array_create\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_fence_array_create\09\09\09\09"
module asm "\09.long\09__crc_dma_fence_array_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_array_create:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_array_create\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_array_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_fence_match_context\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_fence_match_context\09\09\09\09"
module asm "\09.long\09__crc_dma_fence_match_context\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_match_context:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_match_context\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_match_context:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.2, i64, i64, i32, %struct.kref, i32 }
%union.anon.2 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dma_fence_array = type { %struct.dma_fence, %struct.spinlock, i32, %struct.atomic_t, ptr, %struct.irq_work }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_array_cb = type { %struct.dma_fence_cb, ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }

@dma_fence_array_ops = dso_local constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @dma_fence_array_get_driver_name, ptr @dma_fence_array_get_timeline_name, ptr @dma_fence_array_enable_signaling, ptr @dma_fence_array_signaled, ptr null, ptr @dma_fence_array_release, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_dma_fence_array_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_array_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_array_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_array_ops to i32), ptr @__kstrtab_dma_fence_array_ops, ptr @__kstrtabns_dma_fence_array_ops }, section "___ksymtab+dma_fence_array_ops", align 4
@dma_fence_array_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&array->lock\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_dma_fence_array_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_array_create = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_array_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_array_create to i32), ptr @__kstrtab_dma_fence_array_create, ptr @__kstrtabns_dma_fence_array_create }, section "___ksymtab+dma_fence_array_create", align 4
@__kstrtab_dma_fence_match_context = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_match_context = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_match_context = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_match_context to i32), ptr @__kstrtab_dma_fence_match_context, ptr @__kstrtabns_dma_fence_match_context }, section "___ksymtab+dma_fence_match_context", align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dma_fence_array\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unbound\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [20 x i8] c"dma_fence_array_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 126, i32 28 }
@___asan_gen_.6 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 168, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 20, i32 9 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [37 x i8] c"../drivers/dma-buf/dma-fence-array.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 25, i32 9 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_dma_fence_array_create, ptr @__ksymtab_dma_fence_array_ops, ptr @__ksymtab_dma_fence_match_context, ptr @dma_fence_array_ops, ptr @dma_fence_array_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_fence_array_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_fence_array_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @dma_fence_array_get_driver_name(ptr nocapture noundef readnone %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @dma_fence_array_get_timeline_name(ptr nocapture noundef readnone %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dma_fence_array_enable_signaling(ptr noundef %fence) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.not.i = icmp eq ptr %1, @dma_fence_array_ops
  %fence..i = select i1 %cmp.not.i, ptr %fence, ptr null
  %arrayidx = getelementptr %struct.dma_fence_array, ptr %fence..i, i32 1
  %num_fences = getelementptr inbounds %struct.dma_fence_array, ptr %fence..i, i32 0, i32 2
  %2 = ptrtoint ptr %num_fences to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_fences, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp48.not = icmp eq i32 %3, 0
  br i1 %cmp48.not, label %entry.cleanup15_crit_edge, label %for.body.lr.ph

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup15

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i = icmp eq ptr %fence..i, null
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence..i, i32 0, i32 6
  %fences = getelementptr inbounds %struct.dma_fence_array, ptr %fence..i, i32 0, i32 4
  %error1.i = getelementptr inbounds %struct.dma_fence, ptr %fence..i, i32 0, i32 7
  %num_pending = getelementptr inbounds %struct.dma_fence_array, ptr %fence..i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr %struct.dma_fence_array_cb, ptr %arrayidx, i32 %i.049
  %array2 = getelementptr inbounds %struct.dma_fence_array_cb, ptr %arrayidx1, i32 0, i32 1
  %4 = ptrtoint ptr %array2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fence..i, ptr %array2, align 4
  br i1 %tobool.not.i, label %for.body.dma_fence_get.exit_crit_edge, label %if.then.i

for.body.dma_fence_get.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %for.body
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #6, !srcloc !24
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !25

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !26

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #6
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %for.body.dma_fence_get.exit_crit_edge
  %7 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fences, align 4
  %arrayidx4 = getelementptr ptr, ptr %8, i32 %i.049
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx4, align 4
  %call7 = tail call i32 @dma_fence_add_callback(ptr noundef %10, ptr noundef %arrayidx1, ptr noundef nonnull @dma_fence_array_cb_func) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %dma_fence_get.exit.for.inc_crit_edge, label %if.then

dma_fence_get.exit.for.inc_crit_edge:             ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %dma_fence_get.exit
  %11 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fences, align 4
  %arrayidx9 = getelementptr ptr, ptr %12, i32 %i.049
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx9, align 4
  %error10 = getelementptr inbounds %struct.dma_fence, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %error10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i33 = icmp eq i32 %16, 0
  br i1 %tobool.not.i33, label %if.then.dma_fence_array_set_pending_error.exit_crit_edge, label %if.then.i35

if.then.dma_fence_array_set_pending_error.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_array_set_pending_error.exit

if.then.i35:                                      ; preds = %if.then
  %call.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %error1.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %error1.i, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then.i35
  %17 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %error1.i, i32 1, i32 %16) #6, !srcloc !28
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !29
  br label %dma_fence_array_set_pending_error.exit

dma_fence_array_set_pending_error.exit:           ; preds = %__cmpxchg.exit.i, %if.then.dma_fence_array_set_pending_error.exit_crit_edge
  br i1 %tobool.not.i, label %dma_fence_array_set_pending_error.exit.dma_fence_put.exit_crit_edge, label %if.then.i39

dma_fence_array_set_pending_error.exit.dma_fence_put.exit_crit_edge: ; preds = %dma_fence_array_set_pending_error.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_put.exit

if.then.i39:                                      ; preds = %dma_fence_array_set_pending_error.exit
  %call.i.i.i.i.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #6
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i40 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i40, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !26

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #6
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !32
  tail call void @dma_fence_release(ptr noundef %refcount.i) #6
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %dma_fence_array_set_pending_error.exit.dma_fence_put.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_pending, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %num_pending, i32 1, i32 3, i32 1) #6
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_pending, ptr %num_pending, i32 1, ptr elementtype(i32) %num_pending) #6, !srcloc !34
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then13, label %dma_fence_put.exit.for.inc_crit_edge

dma_fence_put.exit.for.inc_crit_edge:             ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then13:                                        ; preds = %dma_fence_put.exit
  %call.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %error1.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %error1.i, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i44

do.body.i.i44:                                    ; preds = %do.body.i.i44.do.body.i.i44_crit_edge, %if.then13
  %20 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %error1.i, i32 1, i32 0) #6, !srcloc !28
  %asmresult.i.i42 = extractvalue { i32, i32 } %20, 0
  %tobool.not.i.i43 = icmp eq i32 %asmresult.i.i42, 0
  br i1 %tobool.not.i.i43, label %dma_fence_array_clear_pending_error.exit, label %do.body.i.i44.do.body.i.i44_crit_edge

do.body.i.i44.do.body.i.i44_crit_edge:            ; preds = %do.body.i.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i44

dma_fence_array_clear_pending_error.exit:         ; preds = %do.body.i.i44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !37
  br label %cleanup15

for.inc:                                          ; preds = %dma_fence_put.exit.for.inc_crit_edge, %dma_fence_get.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.049, 1
  %21 = ptrtoint ptr %num_fences to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_fences, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup15_crit_edge

for.inc.cleanup15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup15

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup15:                                        ; preds = %for.inc.cleanup15_crit_edge, %dma_fence_array_clear_pending_error.exit, %entry.cleanup15_crit_edge
  %cmp47 = phi i1 [ false, %dma_fence_array_clear_pending_error.exit ], [ true, %entry.cleanup15_crit_edge ], [ true, %for.inc.cleanup15_crit_edge ]
  ret i1 %cmp47
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dma_fence_array_signaled(ptr noundef %fence) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.not.i = icmp eq ptr %1, @dma_fence_array_ops
  %fence..i = select i1 %cmp.not.i, ptr %fence, ptr null
  %num_pending = getelementptr inbounds %struct.dma_fence_array, ptr %fence..i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_pending, i32 noundef 4) #6
  %2 = ptrtoint ptr %num_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %num_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %error.i = getelementptr inbounds %struct.dma_fence, ptr %fence..i, i32 0, i32 7
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %error.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %error.i, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end
  %4 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %error.i, i32 1, i32 0) #6, !srcloc !28
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %dma_fence_array_clear_pending_error.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

dma_fence_array_clear_pending_error.exit:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !37
  br label %cleanup

cleanup:                                          ; preds = %dma_fence_array_clear_pending_error.exit, %entry.cleanup_crit_edge
  %5 = xor i1 %cmp, true
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_fence_array_release(ptr noundef %fence) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.not.i = icmp eq ptr %1, @dma_fence_array_ops
  %fence..i = select i1 %cmp.not.i, ptr %fence, ptr null
  %num_fences = getelementptr inbounds %struct.dma_fence_array, ptr %fence..i, i32 0, i32 2
  %2 = ptrtoint ptr %num_fences to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_fences, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fences = getelementptr inbounds %struct.dma_fence_array, ptr %fence..i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %dma_fence_put.exit.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dma_fence_put.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fences, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.08
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.dma_fence_put.exit_crit_edge, label %if.then.i

for.body.dma_fence_put.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %for.body
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %7, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #6
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !26

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #6
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !32
  tail call void @dma_fence_release(ptr noundef %refcount.i) #6
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %for.body.dma_fence_put.exit_crit_edge
  %inc = add nuw i32 %i.08, 1
  %9 = ptrtoint ptr %num_fences to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_fences, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %dma_fence_put.exit.for.body_crit_edge, label %dma_fence_put.exit.for.end_crit_edge

dma_fence_put.exit.for.end_crit_edge:             ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

dma_fence_put.exit.for.body_crit_edge:            ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %dma_fence_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %fences1 = getelementptr inbounds %struct.dma_fence_array, ptr %fence..i, i32 0, i32 4
  %11 = ptrtoint ptr %fences1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fences1, align 4
  tail call void @kfree(ptr noundef %12) #6
  tail call void @dma_fence_free(ptr noundef %fence) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_fence_array_create(i32 noundef %num_fences, ptr noundef %fences, i64 noundef %context, i32 noundef %seqno, i1 noundef zeroext %signal_on_any) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %num_fences, 4
  %add = add i32 %mul, 120
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.dma_fence_array, ptr %call9.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @dma_fence_array_create.__key, i16 noundef signext 3) #6
  %conv = zext i32 %seqno to i64
  tail call void @dma_fence_init(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @dma_fence_array_ops, ptr noundef %lock, i64 noundef %context, i64 noundef %conv) #6
  %work = getelementptr inbounds %struct.dma_fence_array, ptr %call9.i.i, i32 0, i32 5
  %0 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %work, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.dma_fence_array, ptr %call9.i.i, i32 0, i32 5, i32 0, i32 1
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.dma_fence_array, ptr %call9.i.i, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @irq_dma_fence_array_work, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 16
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.dma_fence_array, ptr %call9.i.i, i32 0, i32 5, i32 2
  %3 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %num_fences3 = getelementptr inbounds %struct.dma_fence_array, ptr %call9.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %num_fences3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %num_fences, ptr %num_fences3, align 4
  %num_pending = getelementptr inbounds %struct.dma_fence_array, ptr %call9.i.i, i32 0, i32 3
  %spec.select = select i1 %signal_on_any, i32 1, i32 %num_fences
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_pending, i32 noundef 4) #6
  %5 = ptrtoint ptr %num_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %spec.select, ptr %num_pending, align 32
  %fences6 = getelementptr inbounds %struct.dma_fence_array, ptr %call9.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %fences6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fences, ptr %fences6, align 4
  %error = getelementptr inbounds %struct.dma_fence, ptr %call9.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %error, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_dma_fence_array_work(ptr noundef %wrk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %error.i = getelementptr i8, ptr %wrk, i32 -64
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %error.i, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %error.i, i32 1, i32 0) #6, !srcloc !28
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %dma_fence_array_clear_pending_error.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

dma_fence_array_clear_pending_error.exit:         ; preds = %do.body.i.i
  %add.ptr = getelementptr i8, ptr %wrk, i32 -104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !37
  %call = tail call i32 @dma_fence_signal(ptr noundef %add.ptr) #6
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %dma_fence_array_clear_pending_error.exit.dma_fence_put.exit_crit_edge, label %if.then.i

dma_fence_array_clear_pending_error.exit.dma_fence_put.exit_crit_edge: ; preds = %dma_fence_array_clear_pending_error.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %dma_fence_array_clear_pending_error.exit
  %refcount.i = getelementptr i8, ptr %wrk, i32 -68
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #6
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !26

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #6
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !32
  tail call void @dma_fence_release(ptr noundef %refcount.i) #6
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %dma_fence_array_clear_pending_error.exit.dma_fence_put.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_fence_match_context(ptr nocapture noundef readonly %fence, i64 noundef %context) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.not.i = icmp eq ptr %1, @dma_fence_array_ops
  br i1 %cmp.not.i, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %num_fences = getelementptr inbounds %struct.dma_fence_array, ptr %fence, i32 0, i32 2
  %2 = ptrtoint ptr %num_fences to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_fences, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp316.not = icmp eq i32 %3, 0
  br i1 %cmp316.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fences = getelementptr inbounds %struct.dma_fence_array, ptr %fence, i32 0, i32 4
  %4 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fences, align 4
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %context2 = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 3
  %6 = ptrtoint ptr %context2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %context2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %context)
  %cmp = icmp eq i64 %7, %context
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.017
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %context4 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %context4 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %context4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %context)
  %cmp5.not = icmp eq i64 %11, %context
  %cmp5.not.not = xor i1 %cmp5.not, true
  %inc = add nuw i32 %i.017, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %3)
  %exitcond.not = icmp eq i32 %inc, %3
  %or.cond = select i1 %cmp5.not.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.then ], [ true, %for.cond.preheader.cleanup_crit_edge ], [ %cmp5.not, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_fence_array_cb_func(ptr nocapture noundef readonly %f, ptr nocapture noundef readonly %cb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %array1 = getelementptr inbounds %struct.dma_fence_array_cb, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %array1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %array1, align 4
  %error = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 7
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.dma_fence_array_set_pending_error.exit_crit_edge, label %if.then.i

entry.dma_fence_array_set_pending_error.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_array_set_pending_error.exit

if.then.i:                                        ; preds = %entry
  %error1.i = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 7
  %call.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %error1.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %error1.i, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then.i
  %4 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %error1.i, i32 1, i32 %3) #6, !srcloc !28
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !29
  br label %dma_fence_array_set_pending_error.exit

dma_fence_array_set_pending_error.exit:           ; preds = %__cmpxchg.exit.i, %entry.dma_fence_array_set_pending_error.exit_crit_edge
  %num_pending = getelementptr inbounds %struct.dma_fence_array, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_pending, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %num_pending, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_pending, ptr %num_pending, i32 1, ptr elementtype(i32) %num_pending) #6, !srcloc !34
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.else

if.then:                                          ; preds = %dma_fence_array_set_pending_error.exit
  call void @__sanitizer_cov_trace_pc() #8
  %work = getelementptr inbounds %struct.dma_fence_array, ptr %1, i32 0, i32 5
  %call2 = tail call zeroext i1 @irq_work_queue(ptr noundef %work) #6
  br label %if.end

if.else:                                          ; preds = %dma_fence_array_set_pending_error.exit
  %tobool.not.i7 = icmp eq ptr %1, null
  br i1 %tobool.not.i7, label %if.else.if.end_crit_edge, label %if.then.i8

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i8:                                       ; preds = %if.else
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !26

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #6
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !32
  tail call void @dma_fence_release(ptr noundef %refcount.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @dma_fence_array_ops, !1, !"dma_fence_array_ops", i1 false, i1 false}
!1 = !{!"../drivers/dma-buf/dma-fence-array.c", i32 126, i32 28}
!2 = !{ptr @__ksymtab_dma_fence_array_ops, !3, !"__ksymtab_dma_fence_array_ops", i1 false, i1 false}
!3 = !{!"../drivers/dma-buf/dma-fence-array.c", i32 133, i32 1}
!4 = !{ptr @dma_fence_array_create.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/dma-buf/dma-fence-array.c", i32 168, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_dma_fence_array_create, !8, !"__ksymtab_dma_fence_array_create", i1 false, i1 false}
!8 = !{!"../drivers/dma-buf/dma-fence-array.c", i32 181, i32 1}
!9 = !{ptr @__ksymtab_dma_fence_match_context, !10, !"__ksymtab_dma_fence_match_context", i1 false, i1 false}
!10 = !{!"../drivers/dma-buf/dma-fence-array.c", i32 207, i32 1}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/dma-buf/dma-fence-array.c", i32 20, i32 9}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/dma-buf/dma-fence-array.c", i32 25, i32 9}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2148586074, i64 2148586106, i64 2148586135, i64 2148586169, i64 2148586200, i64 2148586223}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2152998527}
!28 = !{i64 1094036, i64 1094057, i64 1094080, i64 1094099, i64 1094118}
!29 = !{i64 2152998932}
!30 = !{i64 2148674099}
!31 = !{i64 2148588539, i64 2148588571, i64 2148588600, i64 2148588634, i64 2148588665, i64 2148588688}
!32 = !{i64 2149871872}
!33 = !{i64 2148673020}
!34 = !{i64 2148587729, i64 2148587761, i64 2148587790, i64 2148587824, i64 2148587855, i64 2148587878}
!35 = !{i64 2148673249}
!36 = !{i64 2152999851}
!37 = !{i64 2153000252}
