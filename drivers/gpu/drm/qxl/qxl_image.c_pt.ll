; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/qxl/qxl_image.c_pt.bc'
source_filename = "../drivers/gpu/drm/qxl/qxl_image.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qxl_drm_image = type { ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.qxl_drm_chunk = type { %struct.list_head, ptr }
%struct.qxl_data_chunk = type <{ i32, i64, i64, [0 x i8] }>
%struct.qxl_image_descriptor = type <{ i64, i8, i8, i32, i32 }>
%struct.qxl_image = type { %struct.qxl_image_descriptor, %union.anon.93 }
%union.anon.93 = type <{ %struct.qxl_encoder_data, [26 x i8] }>
%struct.qxl_encoder_data = type { i32, [0 x i8] }
%struct.qxl_bitmap = type <{ i8, i8, i32, i32, i32, i64, i64 }>
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
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.qxl_device = type { %struct.drm_device, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.qxl_mman, %struct.qxl_gem, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qxl_memslot, %struct.qxl_memslot, %struct.spinlock, %struct.idr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, [32 x %struct.qxl_debugfs], i32, %struct.mutex, %struct.idr, %struct.spinlock, i32, %struct.mutex, ptr, ptr, %struct.mutex, [3 x ptr], [3 x i32], %struct.work_struct, ptr, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.qxl_mman = type { %struct.ttm_device }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.qxl_gem = type { %struct.mutex, %struct.list_head }
%struct.qxl_memslot = type { i32, ptr, i8, i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.qxl_debugfs = type { ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported image bit depth\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 24, i64 32]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [35 x i8] c"../drivers/gpu/drm/qxl/qxl_image.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 214, i32 3 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_image_alloc_objects(ptr noundef %qdev, ptr noundef %release, ptr nocapture noundef writeonly %image_ptr, i32 noundef %height, i32 noundef %stride) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %chunk_list = getelementptr inbounds %struct.qxl_drm_image, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %chunk_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %chunk_list, ptr %chunk_list, align 4
  %prev.i = getelementptr inbounds %struct.qxl_drm_image, ptr %call7.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %chunk_list, ptr %prev.i, align 8
  %call1 = tail call i32 @qxl_alloc_bo_reserved(ptr noundef %qdev, ptr noundef %release, i32 noundef 48, ptr noundef nonnull %call7.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 12) #7
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end4.if.then7_crit_edge, label %if.end.i

if.end4.if.then7_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.end.i:                                         ; preds = %if.end4
  %mul = mul i32 %stride, %height
  %add = add i32 %mul, 20
  %bo.i = getelementptr inbounds %struct.qxl_drm_chunk, ptr %call7.i.i, i32 0, i32 1
  %call1.i = tail call i32 @qxl_alloc_bo_reserved(ptr noundef %qdev, ptr noundef %release, i32 noundef %add, ptr noundef %bo.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %if.then7

if.end4.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %5, ptr noundef %chunk_list) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.if.end9_crit_edge

if.end4.i.if.end9_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %prev.i, align 8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %chunk_list, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i, ptr %5, align 4
  br label %if.end9

if.then7:                                         ; preds = %if.then3.i, %if.end4.if.then7_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.then3.i ], [ -12, %if.end4.if.then7_crit_edge ]
  tail call void @qxl_bo_unref(ptr noundef nonnull %call7.i) #4
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i.i, %if.end4.i.if.end9_crit_edge
  %10 = ptrtoint ptr %image_ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %image_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %retval.0.i, %if.then7 ], [ 0, %if.end9 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_alloc_bo_reserved(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_bo_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_image_free_objects(ptr nocapture noundef readnone %qdev, ptr noundef %dimage) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_list = getelementptr inbounds %struct.qxl_drm_image, ptr %dimage, i32 0, i32 1
  %0 = ptrtoint ptr %chunk_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_list, align 4
  %cmp.not21 = icmp eq ptr %1, %chunk_list
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %chunk.022 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %chunk.022 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %chunk.022, align 4
  %bo = getelementptr inbounds %struct.qxl_drm_chunk, ptr %chunk.022, i32 0, i32 1
  tail call void @qxl_bo_unref(ptr noundef %bo) #4
  tail call void @kfree(ptr noundef %chunk.022) #4
  %cmp.not = icmp eq ptr %tmp.0, %chunk_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @qxl_bo_unref(ptr noundef %dimage) #4
  tail call void @kfree(ptr noundef %dimage) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_image_init(ptr noundef %qdev, ptr nocapture noundef readnone %release, ptr nocapture noundef readonly %dimage, ptr nocapture noundef readonly %data, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height, i32 noundef %depth, i32 noundef %stride) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %stride, %y
  %div = sdiv i32 %depth, 8
  %mul1 = mul i32 %div, %x
  %add = add i32 %mul, %mul1
  %add.ptr = getelementptr i8, ptr %data, i32 %add
  %mul.i = mul i32 %depth, %width
  %div.i = sdiv i32 %mul.i, 8
  %chunk_list.i = getelementptr inbounds %struct.qxl_drm_image, ptr %dimage, i32 0, i32 1
  %0 = ptrtoint ptr %chunk_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_list.i, align 4
  %bo.i = getelementptr inbounds %struct.qxl_drm_chunk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo.i, align 4
  %call.i = tail call ptr @qxl_bo_kmap_atomic_page(ptr noundef %qdev, ptr noundef %3, i32 noundef 0) #4
  %mul1.i = mul i32 %stride, %height
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %mul1.i, ptr %call.i, align 1
  %prev_chunk.i = getelementptr inbounds %struct.qxl_data_chunk, ptr %call.i, i32 0, i32 1
  %5 = call ptr @memset(ptr %prev_chunk.i, i32 0, i32 16)
  tail call void @qxl_bo_kunmap_atomic_page(ptr noundef %qdev, ptr noundef %3, ptr noundef %call.i) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %stride)
  %cmp.i = icmp eq i32 %div.i, %stride
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %height)
  %cmp136.i = icmp sgt i32 %height, 0
  br i1 %cmp136.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end35.i_crit_edge

for.cond.preheader.i.if.end35.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %mul.i)
  %cmp182.i = icmp sgt i32 %mul.i, 7
  br label %for.body.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1.i)
  %cmp48.i = icmp sgt i32 %mul1.i, 0
  br i1 %cmp48.i, label %if.then.i.while.body.i_crit_edge, label %if.then.i.if.end35.i_crit_edge

if.then.i.if.end35.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.i

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.i.while.body.i_crit_edge
  %page.011.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.then.i.while.body.i_crit_edge ]
  %remain.010.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %mul1.i, %if.then.i.while.body.i_crit_edge ]
  %i_data.09.i = phi ptr [ %add.ptr11.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr, %if.then.i.while.body.i_crit_edge ]
  %shl.i = shl i32 %page.011.i, 12
  %call5.i = tail call ptr @qxl_bo_kmap_atomic_page(ptr noundef %qdev, ptr noundef %3, i32 noundef %shl.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page.011.i)
  %cmp6.i = icmp eq i32 %page.011.i, 0
  %data8.i = getelementptr inbounds %struct.qxl_data_chunk, ptr %call5.i, i32 0, i32 3
  %k_data.0.i = select i1 %cmp6.i, ptr %data8.i, ptr %call5.i
  %size.0.i = select i1 %cmp6.i, i32 4076, i32 4096
  %6 = tail call i32 @llvm.umin.i32(i32 %size.0.i, i32 %remain.010.i) #4
  %7 = call ptr @memcpy(ptr %k_data.0.i, ptr %i_data.09.i, i32 %6)
  tail call void @qxl_bo_kunmap_atomic_page(ptr noundef %qdev, ptr noundef %3, ptr noundef %call5.i) #4
  %add.ptr11.i = getelementptr i8, ptr %i_data.09.i, i32 %6
  %sub.i = sub nsw i32 %remain.010.i, %6
  %inc.i = add i32 %page.011.i, 1
  %cmp4.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp4.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.if.end35.i_crit_edge

while.body.i.if.end35.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc34.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %cmp182.i, label %while.body19.preheader.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

while.body19.preheader.i:                         ; preds = %for.body.i
  %mul14.i = mul i32 %i.07.i, %stride
  %add.i = add i32 %mul14.i, 20
  %add.ptr15.i = getelementptr i8, ptr %add.ptr, i32 %mul14.i
  br label %while.body19.i

while.body19.i:                                   ; preds = %while.body19.i.while.body19.i_crit_edge, %while.body19.preheader.i
  %out_offset.05.i = phi i32 [ %add32.i, %while.body19.i.while.body19.i_crit_edge ], [ %add.i, %while.body19.preheader.i ]
  %remain.14.i = phi i32 [ %sub30.i, %while.body19.i.while.body19.i_crit_edge ], [ %div.i, %while.body19.preheader.i ]
  %i_data.13.i = phi ptr [ %add.ptr31.i, %while.body19.i.while.body19.i_crit_edge ], [ %add.ptr15.i, %while.body19.preheader.i ]
  %and.i = and i32 %out_offset.05.i, -4096
  %and20.i = and i32 %out_offset.05.i, 4095
  %sub21.i = sub nuw nsw i32 4096, %and20.i
  %8 = tail call i32 @llvm.umin.i32(i32 %sub21.i, i32 %remain.14.i) #4
  %call28.i = tail call ptr @qxl_bo_kmap_atomic_page(ptr noundef %qdev, ptr noundef %3, i32 noundef %and.i) #4
  %add.ptr29.i = getelementptr i8, ptr %call28.i, i32 %and20.i
  %9 = call ptr @memcpy(ptr %add.ptr29.i, ptr %i_data.13.i, i32 %8)
  tail call void @qxl_bo_kunmap_atomic_page(ptr noundef %qdev, ptr noundef %3, ptr noundef %call28.i) #4
  %sub30.i = sub i32 %remain.14.i, %8
  %add.ptr31.i = getelementptr i8, ptr %i_data.13.i, i32 %8
  %add32.i = add i32 %8, %out_offset.05.i
  %cmp18.i = icmp sgt i32 %sub30.i, 0
  br i1 %cmp18.i, label %while.body19.i.while.body19.i_crit_edge, label %while.body19.i.for.inc.i_crit_edge

while.body19.i.for.inc.i_crit_edge:               ; preds = %while.body19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

while.body19.i.while.body19.i_crit_edge:          ; preds = %while.body19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body19.i

for.inc.i:                                        ; preds = %while.body19.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc34.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc34.i, %height
  br i1 %exitcond.not.i, label %for.inc.i.if.end35.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.if.end35.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.i

if.end35.i:                                       ; preds = %for.inc.i.if.end35.i_crit_edge, %while.body.i.if.end35.i_crit_edge, %if.then.i.if.end35.i_crit_edge, %for.cond.preheader.i.if.end35.i_crit_edge
  tail call void @qxl_bo_vunmap_locked(ptr noundef %3) #4
  %10 = ptrtoint ptr %dimage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dimage, align 4
  %call37.i = tail call ptr @qxl_bo_kmap_atomic_page(ptr noundef %qdev, ptr noundef %11, i32 noundef 0) #4
  %12 = ptrtoint ptr %call37.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 0, ptr %call37.i, align 1
  %type.i = getelementptr inbounds %struct.qxl_image_descriptor, ptr %call37.i, i32 0, i32 1
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %type.i, align 1
  %flags.i = getelementptr inbounds %struct.qxl_image_descriptor, ptr %call37.i, i32 0, i32 2
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %flags.i, align 1
  %width41.i = getelementptr inbounds %struct.qxl_image_descriptor, ptr %call37.i, i32 0, i32 3
  %15 = ptrtoint ptr %width41.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %width, ptr %width41.i, align 1
  %height43.i = getelementptr inbounds %struct.qxl_image_descriptor, ptr %call37.i, i32 0, i32 4
  %16 = ptrtoint ptr %height43.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %height, ptr %height43.i, align 1
  %17 = zext i32 %depth to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %depth, label %sw.default.i [
    i32 1, label %if.end35.i.sw.epilog.i_crit_edge
    i32 24, label %sw.bb44.i
    i32 32, label %sw.bb47.i
  ]

if.end35.i.sw.epilog.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb44.i:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb47.i:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %qxl_image_init_helper.exit

sw.epilog.i:                                      ; preds = %sw.bb47.i, %sw.bb44.i, %if.end35.i.sw.epilog.i_crit_edge
  %.sink.i = phi i8 [ 8, %sw.bb47.i ], [ 7, %sw.bb44.i ], [ 2, %if.end35.i.sw.epilog.i_crit_edge ]
  %u48.i = getelementptr inbounds %struct.qxl_image, ptr %call37.i, i32 0, i32 1
  %18 = ptrtoint ptr %u48.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink.i, ptr %u48.i, align 1
  %flags51.i = getelementptr inbounds %struct.qxl_bitmap, ptr %u48.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags51.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %flags51.i, align 1
  %x.i = getelementptr inbounds %struct.qxl_bitmap, ptr %u48.i, i32 0, i32 2
  %20 = ptrtoint ptr %x.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %width, ptr %x.i, align 1
  %y.i = getelementptr inbounds %struct.qxl_image, ptr %call37.i, i32 0, i32 1, i32 1, i32 2
  %21 = ptrtoint ptr %y.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %height, ptr %y.i, align 1
  %stride55.i = getelementptr inbounds %struct.qxl_image, ptr %call37.i, i32 0, i32 1, i32 1, i32 6
  %22 = ptrtoint ptr %stride55.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %stride, ptr %stride55.i, align 1
  %palette.i = getelementptr inbounds %struct.qxl_image, ptr %call37.i, i32 0, i32 1, i32 1, i32 10
  %23 = ptrtoint ptr %palette.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 0, ptr %palette.i, align 1
  %resource.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %3, i32 0, i32 6
  %24 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resource.i.i, align 4
  %mem_type.i.i = getelementptr inbounds %struct.ttm_resource, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %mem_type.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mem_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i.i = icmp eq i32 %27, 2
  %main_slot.i.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 24
  %surfaces_slot.i.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 25
  %cond.i.i = select i1 %cmp.i.i, ptr %main_slot.i.i, ptr %surfaces_slot.i.i
  %high_bits.i.i = getelementptr inbounds %struct.qxl_memslot, ptr %cond.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %high_bits.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %high_bits.i.i, align 8
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %25, align 4
  %shl.i.i = shl i32 %31, 12
  %conv.i.i = zext i32 %shl.i.i to i64
  %or.i.i = or i64 %29, %conv.i.i
  %data59.i = getelementptr inbounds %struct.qxl_image, ptr %call37.i, i32 0, i32 1, i32 1, i32 18
  %32 = ptrtoint ptr %data59.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %or.i.i, ptr %data59.i, align 1
  br label %qxl_image_init_helper.exit

qxl_image_init_helper.exit:                       ; preds = %sw.epilog.i, %sw.default.i
  %retval.0.i = phi i32 [ -22, %sw.default.i ], [ 0, %sw.epilog.i ]
  tail call void @qxl_bo_kunmap_atomic_page(ptr noundef %qdev, ptr noundef %11, ptr noundef %call37.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qxl_bo_kmap_atomic_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_bo_kunmap_atomic_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_bo_vunmap_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/qxl/qxl_image.c", i32 214, i32 3}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
