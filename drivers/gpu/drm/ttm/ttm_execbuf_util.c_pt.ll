; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/ttm/ttm_execbuf_util.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_execbuf_util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ttm_eu_backoff_reservation\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_eu_backoff_reservation\09\09\09\09"
module asm "\09.long\09__crc_ttm_eu_backoff_reservation\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_eu_backoff_reservation:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_eu_backoff_reservation\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_eu_backoff_reservation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttm_eu_reserve_buffers\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_eu_reserve_buffers\09\09\09\09"
module asm "\09.long\09__crc_ttm_eu_reserve_buffers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_eu_reserve_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_eu_reserve_buffers\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_eu_reserve_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttm_eu_fence_buffer_objects\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_eu_fence_buffer_objects\09\09\09\09"
module asm "\09.long\09__crc_ttm_eu_fence_buffer_objects\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_eu_fence_buffer_objects:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_eu_fence_buffer_objects\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_eu_fence_buffer_objects:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ww_class = type { %struct.atomic_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.75] }
%struct.anon.75 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_ttm_eu_backoff_reservation = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_eu_backoff_reservation = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_eu_backoff_reservation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_eu_backoff_reservation to i32), ptr @__kstrtab_ttm_eu_backoff_reservation, ptr @__kstrtabns_ttm_eu_backoff_reservation }, section "___ksymtab+ttm_eu_backoff_reservation", align 4
@reservation_ww_class = external dso_local global %struct.ww_class, align 4
@__kstrtab_ttm_eu_reserve_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_eu_reserve_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_eu_reserve_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_eu_reserve_buffers to i32), ptr @__kstrtab_ttm_eu_reserve_buffers, ptr @__kstrtabns_ttm_eu_reserve_buffers }, section "___ksymtab+ttm_eu_reserve_buffers", align 4
@__kstrtab_ttm_eu_fence_buffer_objects = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_eu_fence_buffer_objects = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_eu_fence_buffer_objects = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_eu_fence_buffer_objects to i32), ptr @__kstrtab_ttm_eu_fence_buffer_objects, ptr @__kstrtabns_ttm_eu_fence_buffer_objects }, section "___ksymtab+ttm_eu_fence_buffer_objects", align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/ww_mutex.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx->acquired\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"!ctx->contending_lock\00", [42 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ctx->done_acquire\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [42 x i8] c"../drivers/gpu/drm/ttm/ttm_execbuf_util.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 191, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 333, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"../include/linux/ww_mutex.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 173, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_ttm_eu_backoff_reservation, ptr @__ksymtab_ttm_eu_fence_buffer_objects, ptr @__ksymtab_ttm_eu_reserve_buffers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ttm_eu_backoff_reservation(ptr noundef %ticket, ptr noundef %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %1, %list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry1.017 = load ptr, ptr %list, align 4
  %cmp.not18 = icmp eq ptr %entry1.017, %list
  br i1 %cmp.not18, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %entry1.019 = phi ptr [ %entry1.0, %for.body.for.body_crit_edge ], [ %entry1.017, %for.cond.preheader.for.body_crit_edge ]
  %bo2 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %entry1.019, i32 0, i32 1
  %3 = ptrtoint ptr %bo2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bo2, align 4
  %bdev.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i = getelementptr inbounds %struct.ttm_device, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i) #6
  %resource.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 6
  %7 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resource.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %4, ptr noundef %8, ptr noundef null) #6
  %9 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i = getelementptr inbounds %struct.ttm_device, ptr %10, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i) #6
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 9
  %11 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resv, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %12) #6
  tail call void @ww_mutex_unlock(ptr noundef %12) #6
  %13 = ptrtoint ptr %entry1.019 to i32
  call void @__asan_load4_noabort(i32 %13)
  %entry1.0 = load ptr, ptr %entry1.019, align 4
  %cmp.not = icmp eq ptr %entry1.0, %list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %tobool8.not = icmp eq ptr %ticket, null
  br i1 %tobool8.not, label %for.end.cleanup_crit_edge, label %if.then9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ww_acquire_fini(ptr noundef nonnull %ticket)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ww_acquire_fini(ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@ww_acquire_fini, %__here) to i32)) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %__here.if.end36_crit_edge

__here.if.end36_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

land.lhs.true:                                    ; preds = %__here
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %acquired, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end36_crit_edge, label %do.end, !prof !26

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end.if.end36_crit_edge, label %land.lhs.true5

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end36_crit_edge

land.lhs.true5.if.end36_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #6
  br label %if.end36

if.end36:                                         ; preds = %do.end19, %land.lhs.true5.if.end36_crit_edge, %do.end.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %__here.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttm_eu_reserve_buffers(ptr noundef %ticket, ptr noundef %list, i1 noundef zeroext %intr, ptr noundef %dups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %1, %list
  br i1 %cmp.i.not, label %entry.cleanup61_crit_edge, label %if.end

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %ticket, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = tail call i32 @llvm.read_register.i32(metadata !16) #6
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %6 = ptrtoint ptr %ticket to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %ticket, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @reservation_ww_class, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull @reservation_ww_class, i32 1, i32 3, i32 1) #6
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @reservation_ww_class, ptr nonnull @reservation_ww_class, i32 1, ptr nonnull elementtype(i32) @reservation_ww_class) #6, !srcloc !27
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %stamp3.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 1
  %8 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %asmresult.i.i.i.i.i, ptr %stamp3.i, align 4
  %acquired.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 2
  %9 = ptrtoint ptr %acquired.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %acquired.i, align 4
  %wounded.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 3
  %10 = ptrtoint ptr %wounded.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %wounded.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5) to i32))
  %11 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5), align 4
  %conv.i98 = trunc i32 %11 to i16
  %is_wait_die4.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 4
  %12 = ptrtoint ptr %is_wait_die4.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i98, ptr %is_wait_die4.i, align 2
  %ww_class5.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 6
  %13 = ptrtoint ptr %ww_class5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @reservation_ww_class, ptr %ww_class5.i, align 4
  %done_acquire.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 5
  %14 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %done_acquire.i, align 4
  %contending_lock.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 7
  %15 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %contending_lock.i, align 4
  tail call void @debug_check_no_locks_freed(ptr noundef nonnull %ticket, i32 noundef 64) #6
  %dep_map.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 3) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 3), align 4
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef %16, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %17 = tail call ptr @llvm.returnaddress(i32 0) #6
  %18 = ptrtoint ptr %17 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %18) #6
  %deadlock_inject_interval.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 9
  %19 = ptrtoint ptr %deadlock_inject_interval.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %deadlock_inject_interval.i, align 4
  %20 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stamp3.i, align 4
  %and.i = and i32 %21, 15
  %deadlock_inject_countdown.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 10
  %22 = ptrtoint ptr %deadlock_inject_countdown.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i, ptr %deadlock_inject_countdown.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %23 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %23)
  %entry1.0146 = load ptr, ptr %list, align 4
  %cmp.not147 = icmp eq ptr %entry1.0146, %list
  br i1 %cmp.not147, label %if.end4.cleanup61_crit_edge, label %for.body.lr.ph

if.end4.cleanup61_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

for.body.lr.ph:                                   ; preds = %if.end4
  %tobool10.not = icmp eq ptr %dups, null
  %contending_lock.i.i9.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry1.0148 = phi ptr [ %entry1.0146, %for.body.lr.ph ], [ %entry1.0, %for.inc.for.body_crit_edge ]
  %bo5 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %entry1.0148, i32 0, i32 1
  %24 = ptrtoint ptr %bo5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bo5, align 4
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resv.i, align 8
  br i1 %tobool2.not, label %ttm_bo_reserve.exit.thread, label %if.end28.i

ttm_bo_reserve.exit.thread:                       ; preds = %for.body
  %call.i.i = tail call i32 @ww_mutex_trylock(ptr noundef %27, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.not.i, label %ttm_bo_reserve.exit.thread.if.end29_crit_edge, label %ttm_bo_reserve.exit.thread.if.then20_crit_edge

ttm_bo_reserve.exit.thread.if.then20_crit_edge:   ; preds = %ttm_bo_reserve.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

ttm_bo_reserve.exit.thread.if.end29_crit_edge:    ; preds = %ttm_bo_reserve.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end28.i:                                       ; preds = %for.body
  br i1 %intr, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i47.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %27, ptr noundef nonnull %ticket) #6
  br label %ttm_bo_reserve.exit

if.else.i:                                        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i48.i = tail call i32 @ww_mutex_lock(ptr noundef %27, ptr noundef nonnull %ticket) #6
  br label %ttm_bo_reserve.exit

ttm_bo_reserve.exit:                              ; preds = %if.else.i, %if.then30.i
  %ret.0.i = phi i32 [ %call.i47.i, %if.then30.i ], [ %call.i48.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %ret.0.i)
  %cmp.i99 = icmp eq i32 %ret.0.i, -4
  %.ret.0.i = select i1 %cmp.i99, i32 -512, i32 %ret.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -114, i32 %.ret.0.i)
  %cmp9 = icmp ne i32 %.ret.0.i, -114
  %or.cond = or i1 %tobool10.not, %cmp9
  br i1 %or.cond, label %if.end18, label %if.then11

if.then11:                                        ; preds = %ttm_bo_reserve.exit
  %prev = getelementptr inbounds %struct.list_head, ptr %entry1.0148, i32 0, i32 1
  %28 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev, align 4
  %call.i.i100 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.0148) #6
  br i1 %call.i.i100, label %if.end.i.i, label %if.then11.list_del.exit_crit_edge

if.then11.list_del.exit_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev, align 4
  %32 = ptrtoint ptr %entry1.0148 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %entry1.0148, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then11.list_del.exit_crit_edge
  %36 = ptrtoint ptr %entry1.0148 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.0148, align 4
  %37 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev, align 4
  %38 = ptrtoint ptr %dups to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dups, align 4
  %call.i.i101 = tail call zeroext i1 @__list_add_valid(ptr noundef %entry1.0148, ptr noundef nonnull %dups, ptr noundef %39) #6
  br i1 %call.i.i101, label %if.end.i.i102, label %list_del.exit.for.inc_crit_edge

list_del.exit.for.inc_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i.i102:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry1.0148, ptr %prev1.i.i, align 4
  %41 = ptrtoint ptr %entry1.0148 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %entry1.0148, align 4
  %42 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dups, ptr %prev, align 4
  br label %for.inc.sink.split

if.end18:                                         ; preds = %ttm_bo_reserve.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.ret.0.i)
  %tobool19.not = icmp eq i32 %.ret.0.i, 0
  br i1 %tobool19.not, label %if.end18.if.then20_crit_edge, label %if.end18.if.end29_crit_edge

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then20:                                        ; preds = %if.end18.if.then20_crit_edge, %ttm_bo_reserve.exit.thread.if.then20_crit_edge
  %num_shared = getelementptr inbounds %struct.ttm_validate_buffer, ptr %entry1.0148, i32 0, i32 2
  %43 = ptrtoint ptr %num_shared to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_shared, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool21.not = icmp eq i32 %44, 0
  br i1 %tobool21.not, label %if.then20.for.inc_crit_edge, label %if.end23

if.then20.for.inc_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end23:                                         ; preds = %if.then20
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %25, i32 0, i32 9
  %45 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resv, align 8
  %call25 = tail call i32 @dma_resv_reserve_shared(ptr noundef %46, i32 noundef %44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.for.inc_crit_edge, label %if.end23.if.end29_crit_edge

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end29:                                         ; preds = %if.end23.if.end29_crit_edge, %if.end18.if.end29_crit_edge, %ttm_bo_reserve.exit.thread.if.end29_crit_edge
  %ret.0 = phi i32 [ %.ret.0.i, %if.end18.if.end29_crit_edge ], [ %call25, %if.end23.if.end29_crit_edge ], [ -16, %ttm_bo_reserve.exit.thread.if.end29_crit_edge ]
  %entry.addr.0.in12.i = getelementptr inbounds %struct.list_head, ptr %entry1.0148, i32 0, i32 1
  %47 = ptrtoint ptr %entry.addr.0.in12.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %entry.addr.013.i = load ptr, ptr %entry.addr.0.in12.i, align 4
  %cmp.not14.i = icmp eq ptr %entry.addr.013.i, %list
  br i1 %cmp.not14.i, label %if.end29.ttm_eu_backoff_reservation_reverse.exit_crit_edge, label %if.end29.for.body.i_crit_edge

if.end29.for.body.i_crit_edge:                    ; preds = %if.end29
  br label %for.body.i

if.end29.ttm_eu_backoff_reservation_reverse.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %ttm_eu_backoff_reservation_reverse.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end29.for.body.i_crit_edge
  %entry.addr.015.i = phi ptr [ %entry.addr.0.i, %for.body.i.for.body.i_crit_edge ], [ %entry.addr.013.i, %if.end29.for.body.i_crit_edge ]
  %bo3.i = getelementptr inbounds %struct.ttm_validate_buffer, ptr %entry.addr.015.i, i32 0, i32 1
  %48 = ptrtoint ptr %bo3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bo3.i, align 4
  %resv.i103 = getelementptr inbounds %struct.drm_gem_object, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %resv.i103 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %resv.i103, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %51) #6
  tail call void @ww_mutex_unlock(ptr noundef %51) #6
  %entry.addr.0.in.i = getelementptr inbounds %struct.list_head, ptr %entry.addr.015.i, i32 0, i32 1
  %52 = ptrtoint ptr %entry.addr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %entry.addr.0.i = load ptr, ptr %entry.addr.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry.addr.0.i, %list
  br i1 %cmp.not.i, label %for.body.i.ttm_eu_backoff_reservation_reverse.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.ttm_eu_backoff_reservation_reverse.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ttm_eu_backoff_reservation_reverse.exit

ttm_eu_backoff_reservation_reverse.exit:          ; preds = %for.body.i.ttm_eu_backoff_reservation_reverse.exit_crit_edge, %if.end29.ttm_eu_backoff_reservation_reverse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %ret.0)
  %cmp30 = icmp eq i32 %ret.0, -35
  br i1 %cmp30, label %if.then31, label %ttm_eu_backoff_reservation_reverse.exit.if.end34_crit_edge

ttm_eu_backoff_reservation_reverse.exit.if.end34_crit_edge: ; preds = %ttm_eu_backoff_reservation_reverse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then31:                                        ; preds = %ttm_eu_backoff_reservation_reverse.exit
  %resv.i104 = getelementptr inbounds %struct.drm_gem_object, ptr %25, i32 0, i32 9
  %53 = ptrtoint ptr %resv.i104 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %resv.i104, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %55 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i.i = icmp eq i32 %55, 0
  br i1 %intr, label %if.then.i105, label %if.end2.i

if.then.i105:                                     ; preds = %if.then31
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.then.i105.dma_resv_lock_slow_interruptible.exit.i_crit_edge

if.then.i105.dma_resv_lock_slow_interruptible.exit.i_crit_edge: ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_resv_lock_slow_interruptible.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i105
  %56 = ptrtoint ptr %contending_lock.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %contending_lock.i.i9.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %57, null
  br i1 %tobool1.not.i.i.i, label %do.end.i.i.i, label %land.lhs.true.i.i.i.dma_resv_lock_slow_interruptible.exit.i_crit_edge, !prof !28

land.lhs.true.i.i.i.dma_resv_lock_slow_interruptible.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_resv_lock_slow_interruptible.exit.i

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i106 = tail call i32 @debug_locks_off() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i106)
  %tobool5.not.i.i.i = icmp eq i32 %call.i.i.i106, 0
  br i1 %tobool5.not.i.i.i, label %do.end.i.i.i.dma_resv_lock_slow_interruptible.exit.i_crit_edge, label %land.lhs.true6.i.i.i

do.end.i.i.i.dma_resv_lock_slow_interruptible.exit.i_crit_edge: ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_resv_lock_slow_interruptible.exit.i

land.lhs.true6.i.i.i:                             ; preds = %do.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %58 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool7.not.i.i.i = icmp eq i32 %58, 0
  br i1 %tobool7.not.i.i.i, label %do.end20.i.i.i, label %land.lhs.true6.i.i.i.dma_resv_lock_slow_interruptible.exit.i_crit_edge

land.lhs.true6.i.i.i.dma_resv_lock_slow_interruptible.exit.i_crit_edge: ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_resv_lock_slow_interruptible.exit.i

do.end20.i.i.i:                                   ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 333, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #6
  br label %dma_resv_lock_slow_interruptible.exit.i

dma_resv_lock_slow_interruptible.exit.i:          ; preds = %do.end20.i.i.i, %land.lhs.true6.i.i.i.dma_resv_lock_slow_interruptible.exit.i_crit_edge, %do.end.i.i.i.dma_resv_lock_slow_interruptible.exit.i_crit_edge, %land.lhs.true.i.i.i.dma_resv_lock_slow_interruptible.exit.i_crit_edge, %if.then.i105.dma_resv_lock_slow_interruptible.exit.i_crit_edge
  %call38.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %54, ptr noundef %ticket) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call38.i.i.i)
  %cmp.i107 = icmp eq i32 %call38.i.i.i, -4
  br i1 %cmp.i107, label %dma_resv_lock_slow_interruptible.exit.i.if.then49_crit_edge, label %dma_resv_lock_slow_interruptible.exit.i.if.end34_crit_edge

dma_resv_lock_slow_interruptible.exit.i.if.end34_crit_edge: ; preds = %dma_resv_lock_slow_interruptible.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

dma_resv_lock_slow_interruptible.exit.i.if.then49_crit_edge: ; preds = %dma_resv_lock_slow_interruptible.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

if.end2.i:                                        ; preds = %if.then31
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i11.i, label %if.end2.i.if.end34.thread_crit_edge

if.end2.i.if.end34.thread_crit_edge:              ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.thread

land.lhs.true.i.i11.i:                            ; preds = %if.end2.i
  %59 = ptrtoint ptr %contending_lock.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %contending_lock.i.i9.i, align 4
  %tobool1.not.i.i10.i = icmp eq ptr %60, null
  br i1 %tobool1.not.i.i10.i, label %do.end.i.i14.i, label %land.lhs.true.i.i11.i.if.end34.thread_crit_edge, !prof !28

land.lhs.true.i.i11.i.if.end34.thread_crit_edge:  ; preds = %land.lhs.true.i.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.thread

do.end.i.i14.i:                                   ; preds = %land.lhs.true.i.i11.i
  %call.i.i12.i = tail call i32 @debug_locks_off() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12.i)
  %tobool5.not.i.i13.i = icmp eq i32 %call.i.i12.i, 0
  br i1 %tobool5.not.i.i13.i, label %do.end.i.i14.i.if.end34.thread_crit_edge, label %land.lhs.true6.i.i16.i

do.end.i.i14.i.if.end34.thread_crit_edge:         ; preds = %do.end.i.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.thread

land.lhs.true6.i.i16.i:                           ; preds = %do.end.i.i14.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %61 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool7.not.i.i15.i = icmp eq i32 %61, 0
  br i1 %tobool7.not.i.i15.i, label %do.end20.i.i17.i, label %land.lhs.true6.i.i16.i.if.end34.thread_crit_edge

land.lhs.true6.i.i16.i.if.end34.thread_crit_edge: ; preds = %land.lhs.true6.i.i16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.thread

do.end20.i.i17.i:                                 ; preds = %land.lhs.true6.i.i16.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 297, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #6
  br label %if.end34.thread

if.end34.thread:                                  ; preds = %do.end20.i.i17.i, %land.lhs.true6.i.i16.i.if.end34.thread_crit_edge, %do.end.i.i14.i.if.end34.thread_crit_edge, %land.lhs.true.i.i11.i.if.end34.thread_crit_edge, %if.end2.i.if.end34.thread_crit_edge
  %call38.i.i18.i = tail call i32 @ww_mutex_lock(ptr noundef %54, ptr noundef %ticket) #6
  br label %land.lhs.true36

if.end34:                                         ; preds = %dma_resv_lock_slow_interruptible.exit.i.if.end34_crit_edge, %ttm_eu_backoff_reservation_reverse.exit.if.end34_crit_edge
  %ret.1 = phi i32 [ %ret.0, %ttm_eu_backoff_reservation_reverse.exit.if.end34_crit_edge ], [ %call38.i.i.i, %dma_resv_lock_slow_interruptible.exit.i.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool35.not = icmp eq i32 %ret.1, 0
  br i1 %tobool35.not, label %if.end34.land.lhs.true36_crit_edge, label %if.end34.if.then49_crit_edge

if.end34.if.then49_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

if.end34.land.lhs.true36_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.end34.land.lhs.true36_crit_edge, %if.end34.thread
  %num_shared37 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %entry1.0148, i32 0, i32 2
  %62 = ptrtoint ptr %num_shared37 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_shared37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool38.not = icmp eq i32 %63, 0
  br i1 %tobool38.not, label %land.lhs.true36.if.end53_crit_edge, label %if.end44

land.lhs.true36.if.end53_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.end44:                                         ; preds = %land.lhs.true36
  %resv41 = getelementptr inbounds %struct.drm_gem_object, ptr %25, i32 0, i32 9
  %64 = ptrtoint ptr %resv41 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %resv41, align 8
  %call43 = tail call i32 @dma_resv_reserve_shared(ptr noundef %65, i32 noundef %63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp45.not = icmp eq i32 %call43, 0
  br i1 %cmp45.not, label %if.end44.if.end53_crit_edge, label %if.end44.if.then49_crit_edge, !prof !26

if.end44.if.then49_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then49:                                        ; preds = %if.end44.if.then49_crit_edge, %if.end34.if.then49_crit_edge, %dma_resv_lock_slow_interruptible.exit.i.if.then49_crit_edge
  %ret.2131 = phi i32 [ %call43, %if.end44.if.then49_crit_edge ], [ %ret.1, %if.end34.if.then49_crit_edge ], [ -512, %dma_resv_lock_slow_interruptible.exit.i.if.then49_crit_edge ]
  br i1 %tobool2.not, label %if.then49.cleanup61_crit_edge, label %if.then51

if.then49.cleanup61_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ww_acquire_done(ptr noundef nonnull %ticket)
  tail call fastcc void @ww_acquire_fini(ptr noundef nonnull %ticket)
  br label %cleanup61

if.end53:                                         ; preds = %if.end44.if.end53_crit_edge, %land.lhs.true36.if.end53_crit_edge
  %call.i.i108 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.0148) #6
  br i1 %call.i.i108, label %if.end.i.i111, label %if.end53.list_del.exit113_crit_edge

if.end53.list_del.exit113_crit_edge:              ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit113

if.end.i.i111:                                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %entry.addr.0.in12.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %entry.addr.0.in12.i, align 4
  %68 = ptrtoint ptr %entry1.0148 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %entry1.0148, align 4
  %prev1.i.i.i110 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev1.i.i.i110, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %67, align 4
  br label %list_del.exit113

list_del.exit113:                                 ; preds = %if.end.i.i111, %if.end53.list_del.exit113_crit_edge
  %72 = ptrtoint ptr %entry1.0148 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.0148, align 4
  %73 = ptrtoint ptr %entry.addr.0.in12.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 290 to ptr), ptr %entry.addr.0.in12.i, align 4
  %74 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %list, align 4
  %call.i.i114 = tail call zeroext i1 @__list_add_valid(ptr noundef %entry1.0148, ptr noundef %list, ptr noundef %75) #6
  br i1 %call.i.i114, label %if.end.i.i117, label %list_del.exit113.for.inc_crit_edge

list_del.exit113.for.inc_crit_edge:               ; preds = %list_del.exit113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i.i117:                                    ; preds = %list_del.exit113
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i115 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i115 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %entry1.0148, ptr %prev1.i.i115, align 4
  %77 = ptrtoint ptr %entry1.0148 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %75, ptr %entry1.0148, align 4
  %78 = ptrtoint ptr %entry.addr.0.in12.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %list, ptr %entry.addr.0.in12.i, align 4
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end.i.i117, %if.end.i.i102
  %dups.sink = phi ptr [ %dups, %if.end.i.i102 ], [ %list, %if.end.i.i117 ]
  %entry1.1.ph.ph = phi ptr [ %29, %if.end.i.i102 ], [ %entry1.0148, %if.end.i.i117 ]
  %79 = ptrtoint ptr %dups.sink to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %entry1.0148, ptr %dups.sink, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %list_del.exit113.for.inc_crit_edge, %if.end23.for.inc_crit_edge, %if.then20.for.inc_crit_edge, %list_del.exit.for.inc_crit_edge
  %entry1.1.ph = phi ptr [ %entry1.0148, %list_del.exit113.for.inc_crit_edge ], [ %29, %list_del.exit.for.inc_crit_edge ], [ %entry1.0148, %if.end23.for.inc_crit_edge ], [ %entry1.0148, %if.then20.for.inc_crit_edge ], [ %entry1.1.ph.ph, %for.inc.sink.split ]
  %80 = ptrtoint ptr %entry1.1.ph to i32
  call void @__asan_load4_noabort(i32 %80)
  %entry1.0 = load ptr, ptr %entry1.1.ph, align 4
  %cmp.not = icmp eq ptr %entry1.0, %list
  br i1 %cmp.not, label %for.inc.cleanup61_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup61_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

cleanup61:                                        ; preds = %for.inc.cleanup61_crit_edge, %if.then51, %if.then49.cleanup61_crit_edge, %if.end4.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup61_crit_edge ], [ %ret.2131, %if.then51 ], [ %ret.2131, %if.then49.cleanup61_crit_edge ], [ 0, %if.end4.cleanup61_crit_edge ], [ 0, %for.inc.cleanup61_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ww_acquire_done(ptr noundef %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !28

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool24.not = icmp eq i32 %1, 0
  br i1 %tobool24.not, label %land.lhs.true, label %if.end.if.end71_crit_edge

if.end.if.end71_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

land.lhs.true:                                    ; preds = %if.end
  %done_acquire = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 5
  %2 = ptrtoint ptr %done_acquire to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %done_acquire, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool25.not = icmp eq i32 %3, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end71_crit_edge, label %do.end35, !prof !26

land.lhs.true.if.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

do.end35:                                         ; preds = %land.lhs.true
  %call36 = tail call i32 @debug_locks_off() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.end35.if.end71_crit_edge, label %land.lhs.true38

do.end35.if.end71_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

land.lhs.true38:                                  ; preds = %do.end35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %4 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool39.not = icmp eq i32 %4, 0
  br i1 %tobool39.not, label %do.end53, label %land.lhs.true38.if.end71_crit_edge

land.lhs.true38.if.end71_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

do.end53:                                         ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 173, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #6
  br label %if.end71

if.end71:                                         ; preds = %do.end53, %land.lhs.true38.if.end71_crit_edge, %do.end35.if.end71_crit_edge, %land.lhs.true.if.end71_crit_edge, %if.end.if.end71_crit_edge
  %done_acquire73 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 5
  %5 = ptrtoint ptr %done_acquire73 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %done_acquire73, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ttm_eu_fence_buffer_objects(ptr noundef %ticket, ptr noundef %list, ptr noundef %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %1, %list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry1.028 = load ptr, ptr %list, align 4
  %cmp.not29 = icmp eq ptr %entry1.028, %list
  br i1 %cmp.not29, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %entry1.030 = phi ptr [ %entry1.0, %if.end7.for.body_crit_edge ], [ %entry1.028, %for.cond.preheader.for.body_crit_edge ]
  %bo2 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %entry1.030, i32 0, i32 1
  %3 = ptrtoint ptr %bo2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bo2, align 4
  %num_shared = getelementptr inbounds %struct.ttm_validate_buffer, ptr %entry1.030, i32 0, i32 2
  %5 = ptrtoint ptr %num_shared to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_shared, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  %resv6 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 9
  %7 = ptrtoint ptr %resv6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resv6, align 8
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_resv_add_shared_fence(ptr noundef %8, ptr noundef %fence) #6
  br label %if.end7

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_resv_add_excl_fence(ptr noundef %8, ptr noundef %fence) #6
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %bdev.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i = getelementptr inbounds %struct.ttm_device, ptr %10, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i) #6
  %resource.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 6
  %11 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resource.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %4, ptr noundef %12, ptr noundef null) #6
  %13 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i = getelementptr inbounds %struct.ttm_device, ptr %14, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i) #6
  %resv9 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 9
  %15 = ptrtoint ptr %resv9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resv9, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %16) #6
  tail call void @ww_mutex_unlock(ptr noundef %16) #6
  %17 = ptrtoint ptr %entry1.030 to i32
  call void @__asan_load4_noabort(i32 %17)
  %entry1.0 = load ptr, ptr %entry1.030, align 4
  %cmp.not = icmp eq ptr %entry1.0, %list
  br i1 %cmp.not, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end7.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %tobool15.not = icmp eq ptr %ticket, null
  br i1 %tobool15.not, label %for.end.cleanup_crit_edge, label %if.then16

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ww_acquire_fini(ptr noundef nonnull %ticket)
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_trylock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_ttm_eu_backoff_reservation, !1, !"__ksymtab_ttm_eu_backoff_reservation", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/ttm/ttm_execbuf_util.c", i32 64, i32 1}
!2 = !{ptr @__ksymtab_ttm_eu_reserve_buffers, !3, !"__ksymtab_ttm_eu_reserve_buffers", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/ttm/ttm_execbuf_util.c", i32 144, i32 1}
!4 = !{ptr @__ksymtab_ttm_eu_fence_buffer_objects, !5, !"__ksymtab_ttm_eu_fence_buffer_objects", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/ttm/ttm_execbuf_util.c", i32 168, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/ww_mutex.h", i32 191, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/ww_mutex.h", i32 333, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/ww_mutex.h", i32 173, i32 2}
!16 = !{!"sp"}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2148519564, i64 2148519596, i64 2148519625, i64 2148519659, i64 2148519690, i64 2148519713}
!28 = !{!"branch_weights", i32 1, i32 2000}
