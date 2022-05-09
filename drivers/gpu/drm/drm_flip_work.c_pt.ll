; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_flip_work.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_flip_work.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_flip_work_allocate_task\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_flip_work_allocate_task\09\09\09\09"
module asm "\09.long\09__crc_drm_flip_work_allocate_task\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_flip_work_allocate_task:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_flip_work_allocate_task\22\09\09\09\09\09"
module asm "__kstrtabns_drm_flip_work_allocate_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_flip_work_queue_task\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_flip_work_queue_task\09\09\09\09"
module asm "\09.long\09__crc_drm_flip_work_queue_task\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_flip_work_queue_task:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_flip_work_queue_task\22\09\09\09\09\09"
module asm "__kstrtabns_drm_flip_work_queue_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_flip_work_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_flip_work_queue\09\09\09\09"
module asm "\09.long\09__crc_drm_flip_work_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_flip_work_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_flip_work_queue\22\09\09\09\09\09"
module asm "__kstrtabns_drm_flip_work_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_flip_work_commit\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_flip_work_commit\09\09\09\09"
module asm "\09.long\09__crc_drm_flip_work_commit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_flip_work_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_flip_work_commit\22\09\09\09\09\09"
module asm "__kstrtabns_drm_flip_work_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_flip_work_init\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_flip_work_init\09\09\09\09"
module asm "\09.long\09__crc_drm_flip_work_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_flip_work_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_flip_work_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_flip_work_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_flip_work_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_flip_work_cleanup\09\09\09\09"
module asm "\09.long\09__crc_drm_flip_work_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_flip_work_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_flip_work_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_drm_flip_work_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_flip_task = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_flip_work = type { ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_drm_flip_work_allocate_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_flip_work_allocate_task = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_flip_work_allocate_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_flip_work_allocate_task to i32), ptr @__kstrtab_drm_flip_work_allocate_task, ptr @__kstrtabns_drm_flip_work_allocate_task }, section "___ksymtab+drm_flip_work_allocate_task", align 4
@__kstrtab_drm_flip_work_queue_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_flip_work_queue_task = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_flip_work_queue_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_flip_work_queue_task to i32), ptr @__kstrtab_drm_flip_work_queue_task, ptr @__kstrtabns_drm_flip_work_queue_task }, section "___ksymtab+drm_flip_work_queue_task", align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s could not allocate task!\0A\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_drm_flip_work_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_flip_work_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_flip_work_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_flip_work_queue to i32), ptr @__kstrtab_drm_flip_work_queue, ptr @__kstrtabns_drm_flip_work_queue }, section "___ksymtab+drm_flip_work_queue", align 4
@__kstrtab_drm_flip_work_commit = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_flip_work_commit = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_flip_work_commit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_flip_work_commit to i32), ptr @__kstrtab_drm_flip_work_commit, ptr @__kstrtabns_drm_flip_work_commit }, section "___ksymtab+drm_flip_work_commit", align 4
@drm_flip_work_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&work->lock\00", [20 x i8] zeroinitializer }, align 32
@drm_flip_work_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&work->worker)\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_drm_flip_work_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_flip_work_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_flip_work_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_flip_work_init to i32), ptr @__kstrtab_drm_flip_work_init, ptr @__kstrtabns_drm_flip_work_init }, section "___ksymtab+drm_flip_work_init", align 4
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/drm_flip_work.c\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_drm_flip_work_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_flip_work_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_flip_work_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_flip_work_cleanup to i32), ptr @__kstrtab_drm_flip_work_cleanup, ptr @__kstrtabns_drm_flip_work_cleanup }, section "___ksymtab+drm_flip_work_cleanup", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@kgdb_active = external dso_local global %struct.atomic_t, align 4
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 85, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 153, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 156, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [35 x i8] c"../drivers/gpu/drm/drm_flip_work.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 168, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_drm_flip_work_allocate_task, ptr @__ksymtab_drm_flip_work_cleanup, ptr @__ksymtab_drm_flip_work_commit, ptr @__ksymtab_drm_flip_work_init, ptr @__ksymtab_drm_flip_work_queue, ptr @__ksymtab_drm_flip_work_queue_task, ptr @.str, ptr @drm_flip_work_init.__key, ptr @.str.1, ptr @drm_flip_work_init.__key.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_flip_work_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_flip_work_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @drm_flip_work_allocate_task(ptr noundef %data, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !32

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and6.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.if.end_crit_edge, label %if.then

kzalloc.exit.if.end_crit_edge:                    ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %data1 = getelementptr inbounds %struct.drm_flip_task, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %data1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %kzalloc.exit.if.end_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_flip_work_queue_task(ptr noundef %work, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %queued = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %task, ptr noundef %1, ptr noundef %queued) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %task, ptr %prev.i, align 4
  %3 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queued, ptr %task, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %task, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %task, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_flip_work_queue(ptr noundef %work, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !22) #5
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.drm_can_sleep.exit.thread_crit_edge

entry.drm_can_sleep.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_can_sleep.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !33
  %and.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.drm_can_sleep.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.drm_can_sleep.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_can_sleep.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %5 = tail call i32 @llvm.read_register.i32(metadata !22) #5
  %and.i35.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i35.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %9 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp13.i = icmp eq i32 %8, %9
  br i1 %cmp13.i, label %land.lhs.true.i.drm_can_sleep.exit.thread_crit_edge, label %land.lhs.true.i.drm_can_sleep.exit_crit_edge

land.lhs.true.i.drm_can_sleep.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_can_sleep.exit

land.lhs.true.i.drm_can_sleep.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_can_sleep.exit.thread

drm_can_sleep.exit:                               ; preds = %land.lhs.true.i.drm_can_sleep.exit_crit_edge, %lor.lhs.false.i.drm_can_sleep.exit_crit_edge
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !33
  %and.i36.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i)
  %tobool34.not.i = icmp eq i32 %and.i36.i, 0
  %phi.bo = select i1 %tobool34.not.i, i32 3520, i32 2848
  br label %drm_can_sleep.exit.thread

drm_can_sleep.exit.thread:                        ; preds = %drm_can_sleep.exit, %land.lhs.true.i.drm_can_sleep.exit.thread_crit_edge, %entry.drm_can_sleep.exit.thread_crit_edge
  %11 = phi i32 [ 2848, %land.lhs.true.i.drm_can_sleep.exit.thread_crit_edge ], [ 2848, %entry.drm_can_sleep.exit.thread_crit_edge ], [ %phi.bo, %drm_can_sleep.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef %11, i32 noundef 12) #8
  %tobool.not.i7 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i7, label %if.else, label %if.then

if.then:                                          ; preds = %drm_can_sleep.exit.thread
  %data1.i = getelementptr inbounds %struct.drm_flip_task, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %val, ptr %data1.i, align 8
  %lock.i = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %queued.i = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i8 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %15, ptr noundef %queued.i) #5
  br i1 %call.i.i.i8, label %if.end.i.i.i, label %if.then.drm_flip_work_queue_task.exit_crit_edge

if.then.drm_flip_work_queue_task.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_flip_work_queue_task.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %queued.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i.i.i, ptr %15, align 4
  br label %drm_flip_work_queue_task.exit

drm_flip_work_queue_task.exit:                    ; preds = %if.end.i.i.i, %if.then.drm_flip_work_queue_task.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #5
  br label %if.end

if.else:                                          ; preds = %drm_can_sleep.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %work, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef %21) #5
  %func = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 1
  %22 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %func, align 4
  tail call void %23(ptr noundef %work, ptr noundef %val) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %drm_flip_work_queue_task.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_flip_work_commit(ptr noundef %work, ptr noundef %wq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %queued = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 3
  %0 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queued, align 4
  %cmp.i.not.i = icmp eq ptr %1, %queued
  br i1 %cmp.i.not.i, label %entry.list_splice_tail.exit_crit_edge, label %if.then.i

entry.list_splice_tail.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_splice_tail.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %commited = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %3, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %commited, ptr %5, align 4
  store ptr %5, ptr %prev.i, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i, %entry.list_splice_tail.exit_crit_edge
  %9 = ptrtoint ptr %queued to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %queued, ptr %queued, align 4
  %prev.i13 = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %queued, ptr %prev.i13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  %worker = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %wq, ptr noundef %worker) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_flip_work_init(ptr noundef %work, ptr noundef %name, ptr noundef %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %name, ptr %work, align 4
  %queued = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 3
  %1 = ptrtoint ptr %queued to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %queued, ptr %queued, align 4
  %prev.i = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %queued, ptr %prev.i, align 4
  %commited = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 4
  %3 = ptrtoint ptr %commited to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %commited, ptr %commited, align 4
  %prev.i20 = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %commited, ptr %prev.i20, align 4
  %lock = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @drm_flip_work_init.__key, i16 noundef signext 3) #5
  %func2 = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 1
  %5 = ptrtoint ptr %func2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %func, ptr %func2, align 4
  %worker = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 2
  tail call void @__init_work(ptr noundef %worker, i32 noundef 0) #5
  %6 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %worker, align 4
  %lockdep_map = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @drm_flip_work_init.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry7 = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i21 = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 2, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i21 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry7, ptr %prev.i21, align 4
  %func9 = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %func9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @flip_worker, ptr %func9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flip_worker(ptr noundef %w) #0 align 64 {
entry:
  %tasks = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tasks) #5
  %0 = getelementptr inbounds %struct.list_head, ptr %tasks, i32 0, i32 1
  %lock = getelementptr i8, ptr %w, i32 60
  %commited = getelementptr i8, ptr %w, i32 52
  %prev2.i.i = getelementptr i8, ptr %w, i32 56
  %func = getelementptr i8, ptr %w, i32 -4
  br label %while.cond

while.cond:                                       ; preds = %for.body.while.cond_crit_edge, %entry
  %1 = ptrtoint ptr %tasks to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %tasks, ptr %tasks, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tasks, ptr %0, align 4
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %3 = ptrtoint ptr %commited to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %commited, align 4
  %cmp.i.not.i = icmp eq ptr %4, %commited
  br i1 %cmp.i.not.i, label %while.cond.list_splice_tail.exit_crit_edge, label %if.then.i

while.cond.list_splice_tail.exit_crit_edge:       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_splice_tail.exit

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tasks, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i, %while.cond.list_splice_tail.exit_crit_edge
  %12 = ptrtoint ptr %commited to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %commited, ptr %commited, align 4
  %13 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %commited, ptr %prev2.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  %14 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %tasks, align 4
  %cmp.i.not = icmp eq ptr %15, %tasks
  br i1 %cmp.i.not, label %while.end, label %list_splice_tail.exit.for.body_crit_edge

list_splice_tail.exit.for.body_crit_edge:         ; preds = %list_splice_tail.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_splice_tail.exit.for.body_crit_edge
  %task.040 = phi ptr [ %tmp1.0, %for.body.for.body_crit_edge ], [ %15, %list_splice_tail.exit.for.body_crit_edge ]
  %16 = ptrtoint ptr %task.040 to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp1.0 = load ptr, ptr %task.040, align 4
  %17 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %func, align 4
  %data = getelementptr inbounds %struct.drm_flip_task, ptr %task.040, i32 0, i32 1
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  call void %18(ptr noundef %add.ptr, ptr noundef %20) #5
  call void @kfree(ptr noundef %task.040) #5
  %cmp18.not = icmp eq ptr %tmp1.0, %tasks
  br i1 %cmp18.not, label %for.body.while.cond_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.while.cond_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tasks) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_flip_work_cleanup(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %queued = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 3
  %0 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queued, align 4
  %cmp.i.not = icmp eq ptr %1, %queued
  br i1 %cmp.i.not, label %lor.rhs, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %commited = getelementptr inbounds %struct.drm_flip_work, ptr %work, i32 0, i32 4
  %2 = ptrtoint ptr %commited to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %commited, align 4
  %cmp.i25.not = icmp eq ptr %3, %commited
  br i1 %cmp.i25.not, label %lor.rhs.if.end_crit_edge, label %lor.rhs.do.end_crit_edge, !prof !32

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !18, !20}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__ksymtab_drm_flip_work_allocate_task, !1, !"__ksymtab_drm_flip_work_allocate_task", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_flip_work.c", i32 47, i32 1}
!2 = !{ptr @__ksymtab_drm_flip_work_queue_task, !3, !"__ksymtab_drm_flip_work_queue_task", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_flip_work.c", i32 66, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_flip_work.c", i32 85, i32 3}
!6 = !{ptr @__ksymtab_drm_flip_work_queue, !7, !"__ksymtab_drm_flip_work_queue", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_flip_work.c", i32 89, i32 1}
!8 = !{ptr @__ksymtab_drm_flip_work_commit, !9, !"__ksymtab_drm_flip_work_commit", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_flip_work.c", i32 112, i32 1}
!10 = !{ptr @drm_flip_work_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_flip_work.c", i32 153, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @drm_flip_work_init.__key.2, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/drm_flip_work.c", i32 156, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__ksymtab_drm_flip_work_init, !17, !"__ksymtab_drm_flip_work_init", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_flip_work.c", i32 158, i32 1}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_flip_work.c", i32 168, i32 2}
!20 = !{ptr @__ksymtab_drm_flip_work_cleanup, !21, !"__ksymtab_drm_flip_work_cleanup", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/drm_flip_work.c", i32 170, i32 1}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 990983}
