; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/ttm/ttm_range_manager.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_range_manager.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ttm_range_man_init_nocheck\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_range_man_init_nocheck\09\09\09\09"
module asm "\09.long\09__crc_ttm_range_man_init_nocheck\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_range_man_init_nocheck:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_range_man_init_nocheck\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_range_man_init_nocheck:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttm_range_man_fini_nocheck\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_range_man_fini_nocheck\09\09\09\09"
module asm "\09.long\09__crc_ttm_range_man_fini_nocheck\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_range_man_fini_nocheck:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_range_man_fini_nocheck\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_range_man_fini_nocheck:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ttm_resource_manager_func = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ttm_range_manager = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.73] }
%struct.anon.73 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dma_fence = type { ptr, ptr, %union.anon.71, i64, i64, i32, %struct.kref, i32 }
%union.anon.71 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_range_mgr_node = type { %struct.ttm_resource, [0 x %struct.drm_mm_node] }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }

@ttm_range_manager_func = internal constant { %struct.ttm_resource_manager_func, [20 x i8] } { %struct.ttm_resource_manager_func { ptr @ttm_range_man_alloc, ptr @ttm_range_man_free, ptr @ttm_range_man_debug }, [20 x i8] zeroinitializer }, align 32
@ttm_range_man_init_nocheck.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&rman->lock\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_ttm_range_man_init_nocheck = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_range_man_init_nocheck = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_range_man_init_nocheck = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_range_man_init_nocheck to i32), ptr @__kstrtab_ttm_range_man_init_nocheck, ptr @__kstrtabns_ttm_range_man_init_nocheck }, section "___ksymtab+ttm_range_man_init_nocheck", align 4
@__kstrtab_ttm_range_man_fini_nocheck = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_range_man_fini_nocheck = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_range_man_fini_nocheck = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_range_man_fini_nocheck to i32), ptr @__kstrtab_ttm_range_man_fini_nocheck, ptr @__kstrtabns_ttm_range_man_fini_nocheck }, section "___ksymtab+ttm_range_man_fini_nocheck", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/drm/ttm/ttm_resource.h\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [23 x i8] c"ttm_range_manager_func\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 124, i32 47 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.9 = private constant [43 x i8] c"../drivers/gpu/drm/ttm/ttm_range_manager.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 162, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [34 x i8] c"../include/drm/ttm/ttm_resource.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 229, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_ttm_range_man_fini_nocheck, ptr @__ksymtab_ttm_range_man_init_nocheck, ptr @ttm_range_manager_func, ptr @ttm_range_man_init_nocheck.__key, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_range_manager_func to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_range_man_init_nocheck.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttm_range_man_init_nocheck(ptr nocapture noundef writeonly %bdev, i32 noundef %type, i1 noundef zeroext %use_tt, i32 noundef %p_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 304) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %use_tt to i8
  %use_tt2 = getelementptr inbounds %struct.ttm_resource_manager, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %use_tt2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %use_tt2, align 1
  %func = getelementptr inbounds %struct.ttm_resource_manager, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ttm_range_manager_func, ptr %func, align 8
  tail call void @ttm_resource_manager_init(ptr noundef nonnull %call7.i.i, i32 noundef %p_size) #4
  %mm = getelementptr inbounds %struct.ttm_range_manager, ptr %call7.i.i, i32 0, i32 1
  %conv = zext i32 %p_size to i64
  tail call void @drm_mm_init(ptr noundef %mm, i64 noundef 0, i64 noundef %conv) #4
  %lock = getelementptr inbounds %struct.ttm_range_manager, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @ttm_range_man_init_nocheck.__key, i16 noundef signext 3) #4
  %arrayidx.i = getelementptr %struct.ttm_device, ptr %bdev, i32 0, i32 3, i32 %type
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %arrayidx.i, align 4
  %arrayidx.i15 = getelementptr %struct.ttm_resource_manager, ptr %call7.i.i, i32 0, i32 5, i32 0
  %4 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.i15, align 8
  %cmp.i.not.i = icmp eq ptr %5, %arrayidx.i15
  br i1 %cmp.i.not.i, label %if.end.if.end.i_crit_edge, label %do.end.i, !prof !20

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.ttm_resource_manager, ptr %call7.i.i, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.1.i, align 8
  %cmp.i.not.1.i = icmp eq ptr %7, %arrayidx.1.i
  br i1 %cmp.i.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %do.end.1.i, !prof !20

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.1.i

do.end.1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %do.end.1.i, %if.end.i.if.end.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.ttm_resource_manager, ptr %call7.i.i, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.2.i, align 8
  %cmp.i.not.2.i = icmp eq ptr %9, %arrayidx.2.i
  br i1 %cmp.i.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %do.end.2.i, !prof !20

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.2.i

do.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %do.end.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.ttm_resource_manager, ptr %call7.i.i, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx.3.i, align 8
  %cmp.i.not.3.i = icmp eq ptr %11, %arrayidx.3.i
  br i1 %cmp.i.not.3.i, label %if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge, label %do.end.3.i, !prof !20

if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ttm_resource_manager_set_used.exit

do.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %ttm_resource_manager_set_used.exit

ttm_resource_manager_set_used.exit:               ; preds = %do.end.3.i, %if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %ttm_resource_manager_set_used.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ttm_resource_manager_set_used.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_manager_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttm_range_man_fini_nocheck(ptr noundef %bdev, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ttm_device, ptr %bdev, i32 0, i32 3, i32 %type
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %mm2 = getelementptr inbounds %struct.ttm_range_manager, ptr %1, i32 0, i32 1
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i24 = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 0
  %2 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx.i24, align 4
  %cmp.i.not.i = icmp eq ptr %3, %arrayidx.i24
  br i1 %cmp.i.not.i, label %if.end.if.end.i_crit_edge, label %do.end.i, !prof !20

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.not.1.i = icmp eq ptr %5, %arrayidx.1.i
  br i1 %cmp.i.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %do.end.1.i, !prof !20

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.1.i

do.end.1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %do.end.1.i, %if.end.i.if.end.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.2.i, align 4
  %cmp.i.not.2.i = icmp eq ptr %7, %arrayidx.2.i
  br i1 %cmp.i.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %do.end.2.i, !prof !20

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.2.i

do.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %do.end.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.3.i, align 4
  %cmp.i.not.3.i = icmp eq ptr %9, %arrayidx.3.i
  br i1 %cmp.i.not.3.i, label %if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge, label %do.end.3.i, !prof !20

if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ttm_resource_manager_set_used.exit

do.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %ttm_resource_manager_set_used.exit

ttm_resource_manager_set_used.exit:               ; preds = %do.end.3.i, %if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %1, align 8
  %call3 = tail call i32 @ttm_resource_manager_evict_all(ptr noundef %bdev, ptr noundef nonnull %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %ttm_resource_manager_set_used.exit.cleanup_crit_edge

ttm_resource_manager_set_used.exit.cleanup_crit_edge: ; preds = %ttm_resource_manager_set_used.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %ttm_resource_manager_set_used.exit
  %lock = getelementptr inbounds %struct.ttm_range_manager, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %node_list.i = getelementptr inbounds %struct.ttm_range_manager, ptr %1, i32 0, i32 1, i32 2, i32 4
  %11 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %node_list.i, align 4
  tail call void @drm_mm_takedown(ptr noundef %mm2) #4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  %move.i = getelementptr inbounds %struct.ttm_resource_manager, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %move.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %move.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end6.ttm_set_driver_manager.exit_crit_edge, label %if.then.i.i

if.end6.ttm_set_driver_manager.exit_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %ttm_set_driver_manager.exit

if.then.i.i:                                      ; preds = %if.end6
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %14, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #4
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #4, !srcloc !22
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.ttm_set_driver_manager.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !20

if.end5.i.i.i.i.i.i.ttm_set_driver_manager.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ttm_set_driver_manager.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #4
  br label %ttm_set_driver_manager.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @dma_fence_release(ptr noundef %refcount.i.i) #4
  br label %ttm_set_driver_manager.exit

ttm_set_driver_manager.exit:                      ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.ttm_set_driver_manager.exit_crit_edge, %if.end6.ttm_set_driver_manager.exit_crit_edge
  %16 = ptrtoint ptr %move.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %move.i, align 8
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #4
  br label %cleanup

cleanup:                                          ; preds = %ttm_set_driver_manager.exit, %ttm_resource_manager_set_used.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ttm_set_driver_manager.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call3, %ttm_resource_manager_set_used.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_resource_manager_evict_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttm_range_man_alloc(ptr noundef %man, ptr noundef %bo, ptr noundef %place, ptr nocapture noundef writeonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mm1 = getelementptr inbounds %struct.ttm_range_manager, ptr %man, i32 0, i32 1
  %lpfn2 = getelementptr inbounds %struct.ttm_place, ptr %place, i32 0, i32 1
  %0 = ptrtoint ptr %lpfn2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lpfn2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %size = getelementptr inbounds %struct.ttm_resource_manager, ptr %man, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size, align 8
  %conv = trunc i64 %3 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lpfn.0 = phi i32 [ %1, %entry.if.end_crit_edge ], [ %conv, %if.then ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 144) #7
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.ttm_place, ptr %place, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 2
  tail call void @ttm_resource_init(ptr noundef %bo, ptr noundef %place, ptr noundef nonnull %call7.i.i) #4
  %lock = getelementptr inbounds %struct.ttm_range_manager, ptr %man, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %mm_nodes = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %call7.i.i, i32 0, i32 1
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_pages, align 4
  %conv12 = zext i32 %8 to i64
  %page_alignment = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 3
  %9 = ptrtoint ptr %page_alignment to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %page_alignment, align 8
  %conv13 = zext i32 %10 to i64
  %11 = ptrtoint ptr %place to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %place, align 4
  %conv14 = zext i32 %12 to i64
  %conv15 = zext i32 %lpfn.0 to i64
  %call16 = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %mm1, ptr noundef %mm_nodes, i64 noundef %conv12, i64 noundef %conv13, i32 noundef 0, i64 noundef %conv14, i64 noundef %conv15, i32 noundef %and) #4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  br i1 %tobool18.not, label %if.end22, label %if.then21, !prof !20

if.then21:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.end22:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %start = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %call7.i.i, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %start, align 8
  %conv25 = trunc i64 %14 to i32
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv25, ptr %call7.i.i, align 8
  %16 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then21, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then21 ], [ 0, %if.end22 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttm_range_man_free(ptr noundef %man, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ttm_range_manager, ptr %man, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %mm_nodes = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %res, i32 0, i32 1
  tail call void @drm_mm_remove_node(ptr noundef %mm_nodes) #4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  tail call void @kfree(ptr noundef %res) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttm_range_man_debug(ptr noundef %man, ptr noundef %printer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ttm_range_manager, ptr %man, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %mm = getelementptr inbounds %struct.ttm_range_manager, ptr %man, i32 0, i32 1
  tail call void @drm_mm_print(ptr noundef %mm, ptr noundef %printer) #4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_print(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @ttm_range_man_init_nocheck.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/ttm/ttm_range_manager.c", i32 162, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_ttm_range_man_init_nocheck, !4, !"__ksymtab_ttm_range_man_init_nocheck", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/ttm/ttm_range_manager.c", i32 168, i32 1}
!5 = !{ptr @__ksymtab_ttm_range_man_fini_nocheck, !6, !"__ksymtab_ttm_range_man_fini_nocheck", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/ttm/ttm_range_manager.c", i32 206, i32 1}
!7 = !{ptr @ttm_range_manager_func, !8, !"ttm_range_manager_func", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/ttm/ttm_range_manager.c", i32 124, i32 47}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/drm/ttm/ttm_resource.h", i32 229, i32 3}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148443053}
!22 = !{i64 2148357493, i64 2148357525, i64 2148357554, i64 2148357588, i64 2148357619, i64 2148357642}
!23 = !{i64 2149590926}
