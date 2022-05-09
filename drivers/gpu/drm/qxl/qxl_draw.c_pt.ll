; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/qxl/qxl_draw.c_pt.bc'
source_filename = "../drivers/gpu/drm/qxl/qxl_draw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qxl_rect = type { i32, i32, i32, i32 }
%struct.dma_buf_map = type { %union.anon.85, i8 }
%union.anon.85 = type { ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.qxl_drawable = type <{ %union.qxl_release_info, i32, i8, i8, i8, %struct.qxl_rect, %struct.qxl_rect, %struct.qxl_clip, i32, [3 x i32], [3 x %struct.qxl_rect], %union.anon.93 }>
%union.qxl_release_info = type { i64 }
%struct.qxl_clip = type <{ i32, i64 }>
%union.anon.93 = type <{ %struct.qxl_opaque, [4 x i8] }>
%struct.qxl_opaque = type { i64, %struct.qxl_rect, %struct.qxl_brush, i16, i8, %struct.qxl_q_mask }
%struct.qxl_brush = type <{ i32, %union.anon.94 }>
%union.anon.94 = type { %struct.qxl_pattern }
%struct.qxl_pattern = type { i64, %struct.qxl_point }
%struct.qxl_point = type { i32, i32 }
%struct.qxl_q_mask = type <{ i8, %struct.qxl_point, i64 }>
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
%struct.qxl_copy = type <{ i64, %struct.qxl_rect, i16, i8, %struct.qxl_q_mask }>
%struct.qxl_rom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8, i8, i8, i8, i8, [58 x i8], i32, %struct.anon.89 }
%struct.anon.89 = type { i16, i16, [64 x %struct.qxl_urect] }
%struct.qxl_urect = type { i32, i32, i32, i32 }
%struct.qxl_clip_rects = type { i32, %struct.qxl_data_chunk }
%struct.qxl_data_chunk = type <{ i32, i64, i64, [0 x i8] }>

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_draw_dirty_fb(ptr noundef %qdev, ptr nocapture noundef readonly %fb, ptr noundef %bo, i32 noundef %flags, i32 noundef %color, ptr nocapture noundef %clips, i32 noundef %num_clips, i32 noundef %inc, i32 noundef %dumb_shadow_offset) local_unnamed_addr #0 align 64 {
entry:
  %drawable_rect = alloca %struct.qxl_rect, align 4
  %surface_map = alloca %struct.dma_buf_map, align 8
  %release = alloca ptr, align 4
  %clips_bo = alloca ptr, align 4
  %dimage = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %drawable_rect) #4
  %0 = getelementptr inbounds %struct.qxl_rect, ptr %drawable_rect, i32 0, i32 1
  %1 = getelementptr inbounds %struct.qxl_rect, ptr %drawable_rect, i32 0, i32 2
  %2 = getelementptr inbounds %struct.qxl_rect, ptr %drawable_rect, i32 0, i32 3
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %3 = call ptr @memset(ptr %drawable_rect, i32 255, i32 16)
  %4 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pitches, align 8
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %format, align 8
  %8 = getelementptr inbounds %struct.drm_format_info, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 2
  %conv = zext i8 %10 to i32
  %mul = shl nuw nsw i32 %conv, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %surface_map) #4
  %11 = ptrtoint ptr %surface_map to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %surface_map, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %release) #4
  %12 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %release, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clips_bo) #4
  %13 = ptrtoint ptr %clips_bo to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %clips_bo, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dimage) #4
  %14 = ptrtoint ptr %dimage to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %dimage, align 4, !annotation !9
  %call.i = call i32 @qxl_alloc_release_reserved(ptr noundef %qdev, i32 noundef 191, i32 noundef 0, ptr noundef nonnull %release, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %clips to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %clips, align 2
  %17 = trunc i32 %dumb_shadow_offset to i16
  %conv3 = add i16 %16, %17
  store i16 %conv3, ptr %clips, align 2
  %x2 = getelementptr inbounds %struct.drm_clip_rect, ptr %clips, i32 0, i32 2
  %18 = ptrtoint ptr %x2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %x2, align 2
  %conv6 = add i16 %19, %17
  store i16 %conv6, ptr %x2, align 2
  %conv8 = zext i16 %conv3 to i32
  %conv10 = zext i16 %conv6 to i32
  %y1 = getelementptr inbounds %struct.drm_clip_rect, ptr %clips, i32 0, i32 1
  %20 = ptrtoint ptr %y1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %y1, align 2
  %conv11 = zext i16 %21 to i32
  %y2 = getelementptr inbounds %struct.drm_clip_rect, ptr %clips, i32 0, i32 3
  %22 = ptrtoint ptr %y2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %y2, align 2
  %conv12 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_clips)
  %cmp267 = icmp ugt i32 %num_clips, 1
  br i1 %cmp267, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %clips.pn273 = phi ptr [ %clips_ptr.0, %for.body.for.body_crit_edge ], [ %clips, %if.end.for.body_crit_edge ]
  %i.0272 = phi i32 [ %inc45, %for.body.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %left.0271 = phi i32 [ %26, %for.body.for.body_crit_edge ], [ %conv8, %if.end.for.body_crit_edge ]
  %right.0270 = phi i32 [ %29, %for.body.for.body_crit_edge ], [ %conv10, %if.end.for.body_crit_edge ]
  %bottom.0269 = phi i32 [ %35, %for.body.for.body_crit_edge ], [ %conv12, %if.end.for.body_crit_edge ]
  %top.0268 = phi i32 [ %32, %for.body.for.body_crit_edge ], [ %conv11, %if.end.for.body_crit_edge ]
  %clips_ptr.0 = getelementptr %struct.drm_clip_rect, ptr %clips.pn273, i32 %inc
  %24 = ptrtoint ptr %clips_ptr.0 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %clips_ptr.0, align 2
  %conv15 = zext i16 %25 to i32
  %26 = call i32 @llvm.smin.i32(i32 %left.0271, i32 %conv15)
  %x218 = getelementptr %struct.drm_clip_rect, ptr %clips.pn273, i32 %inc, i32 2
  %27 = ptrtoint ptr %x218 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %x218, align 2
  %conv19 = zext i16 %28 to i32
  %29 = call i32 @llvm.smax.i32(i32 %right.0270, i32 %conv19)
  %y127 = getelementptr %struct.drm_clip_rect, ptr %clips.pn273, i32 %inc, i32 1
  %30 = ptrtoint ptr %y127 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %y127, align 2
  %conv28 = zext i16 %31 to i32
  %32 = call i32 @llvm.smin.i32(i32 %top.0268, i32 %conv28)
  %y236 = getelementptr %struct.drm_clip_rect, ptr %clips.pn273, i32 %inc, i32 3
  %33 = ptrtoint ptr %y236 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %y236, align 2
  %conv37 = zext i16 %34 to i32
  %35 = call i32 @llvm.smax.i32(i32 %bottom.0269, i32 %conv37)
  %inc45 = add nuw i32 %i.0272, 1
  %exitcond.not = icmp eq i32 %inc45, %num_clips
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %top.0.lcssa = phi i32 [ %conv11, %if.end.for.end_crit_edge ], [ %32, %for.body.for.end_crit_edge ]
  %bottom.0.lcssa = phi i32 [ %conv12, %if.end.for.end_crit_edge ], [ %35, %for.body.for.end_crit_edge ]
  %right.0.lcssa = phi i32 [ %conv10, %if.end.for.end_crit_edge ], [ %29, %for.body.for.end_crit_edge ]
  %left.0.lcssa = phi i32 [ %conv8, %if.end.for.end_crit_edge ], [ %26, %for.body.for.end_crit_edge ]
  %sub = sub i32 %right.0.lcssa, %left.0.lcssa
  %sub47 = sub i32 %bottom.0.lcssa, %top.0.lcssa
  %36 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %release, align 4
  %mul.i = shl i32 %num_clips, 4
  %add.i = add i32 %mul.i, 24
  %call.i248 = call i32 @qxl_alloc_bo_reserved(ptr noundef %qdev, ptr noundef %37, i32 noundef %add.i, ptr noundef nonnull %clips_bo) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %tobool49.not = icmp eq i32 %call.i248, 0
  br i1 %tobool49.not, label %if.end51, label %for.end.if.then137_crit_edge

for.end.if.then137_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then137

if.end51:                                         ; preds = %for.end
  %38 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %release, align 4
  %call52 = call i32 @qxl_image_alloc_objects(ptr noundef %qdev, ptr noundef %39, ptr noundef nonnull %dimage, i32 noundef %sub47, i32 noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %out_free_drawable.thread264

out_free_drawable.thread264:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  call void @qxl_bo_unref(ptr noundef nonnull %clips_bo) #4
  br label %if.then137

if.end55:                                         ; preds = %if.end51
  %40 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %release, align 4
  %call56 = call i32 @qxl_release_reserve_list(ptr noundef %41, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.out_free_drawable_crit_edge

if.end55.out_free_drawable_crit_edge:             ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_drawable

if.end59:                                         ; preds = %if.end55
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %left.0.lcssa, ptr %0, align 4
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %right.0.lcssa, ptr %2, align 4
  %44 = ptrtoint ptr %drawable_rect to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %top.0.lcssa, ptr %drawable_rect, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %bottom.0.lcssa, ptr %1, align 4
  %46 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %release, align 4
  %call64 = call fastcc i32 @make_drawable(ptr noundef %qdev, ptr noundef nonnull %drawable_rect, ptr noundef %47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end59.if.then134_crit_edge

if.end59.if.then134_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then134

if.end67:                                         ; preds = %if.end59
  %call68 = call i32 @qxl_bo_vmap_locked(ptr noundef %bo, ptr noundef nonnull %surface_map) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.if.then134_crit_edge

if.end67.if.then134_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then134

if.end71:                                         ; preds = %if.end67
  %48 = ptrtoint ptr %surface_map to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %surface_map, align 8
  %50 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %release, align 4
  %52 = ptrtoint ptr %dimage to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dimage, align 4
  %sub72 = sub i32 %left.0.lcssa, %dumb_shadow_offset
  %call73 = call i32 @qxl_image_init(ptr noundef %qdev, ptr noundef %51, ptr noundef %53, ptr noundef %49, i32 noundef %sub72, i32 noundef %top.0.lcssa, i32 noundef %sub, i32 noundef %sub47, i32 noundef %mul, i32 noundef %5) #4
  call void @qxl_bo_vunmap_locked(ptr noundef %bo) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end71.if.then134_crit_edge

if.end71.if.then134_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then134

if.end76:                                         ; preds = %if.end71
  %54 = ptrtoint ptr %clips_bo to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clips_bo, align 4
  %call77 = call fastcc ptr @drawable_set_clipping(i32 noundef %num_clips, ptr noundef %55)
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %if.end76.if.then134_crit_edge, label %if.end80

if.end76.if.then134_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then134

if.end80:                                         ; preds = %if.end76
  %56 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %release, align 4
  %call81 = call ptr @qxl_release_map(ptr noundef %qdev, ptr noundef %57) #4
  %clip = getelementptr inbounds %struct.qxl_drawable, ptr %call81, i32 0, i32 7
  %58 = ptrtoint ptr %clip to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 1, ptr %clip, align 1
  %59 = ptrtoint ptr %clips_bo to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %clips_bo, align 4
  %resource.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp.i = icmp eq i32 %64, 2
  %main_slot.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 24
  %surfaces_slot.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 25
  %cond.i = select i1 %cmp.i, ptr %main_slot.i, ptr %surfaces_slot.i
  %high_bits.i = getelementptr inbounds %struct.qxl_memslot, ptr %cond.i, i32 0, i32 5
  %65 = ptrtoint ptr %high_bits.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %high_bits.i, align 8
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %62, align 4
  %shl.i = shl i32 %68, 12
  %conv.i = zext i32 %shl.i to i64
  %or.i = or i64 %66, %conv.i
  %data = getelementptr inbounds %struct.qxl_drawable, ptr %call81, i32 0, i32 7, i32 1
  %69 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 %or.i, ptr %data, align 1
  %u = getelementptr inbounds %struct.qxl_drawable, ptr %call81, i32 0, i32 11
  %src_area = getelementptr inbounds %struct.qxl_drawable, ptr %call81, i32 0, i32 11, i32 0, i32 1
  %70 = ptrtoint ptr %src_area to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 0, ptr %src_area, align 1
  %bottom87 = getelementptr inbounds %struct.qxl_drawable, ptr %call81, i32 0, i32 11, i32 0, i32 1, i32 2
  %71 = ptrtoint ptr %bottom87 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %sub47, ptr %bottom87, align 1
  %left90 = getelementptr inbounds %struct.qxl_drawable, ptr %call81, i32 0, i32 11, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %left90 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 0, ptr %left90, align 1
  %right93 = getelementptr inbounds %struct.qxl_drawable, ptr %call81, i32 0, i32 11, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %right93 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %sub, ptr %right93, align 1
  %rop_descriptor = getelementptr inbounds %struct.qxl_drawable, ptr %call81, i32 0, i32 11, i32 0, i32 2
  %74 = ptrtoint ptr %rop_descriptor to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 8, ptr %rop_descriptor, align 1
  %scale_mode = getelementptr inbounds %struct.qxl_copy, ptr %u, i32 0, i32 3
  %75 = call ptr @memset(ptr %scale_mode, i32 0, i32 18)
  %76 = ptrtoint ptr %dimage to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dimage, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %resource.i249 = getelementptr inbounds %struct.ttm_buffer_object, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %resource.i249 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %resource.i249, align 4
  %mem_type.i250 = getelementptr inbounds %struct.ttm_resource, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %mem_type.i250 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mem_type.i250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp.i251 = icmp eq i32 %83, 2
  %cond.i254 = select i1 %cmp.i251, ptr %main_slot.i, ptr %surfaces_slot.i
  %high_bits.i255 = getelementptr inbounds %struct.qxl_memslot, ptr %cond.i254, i32 0, i32 5
  %84 = ptrtoint ptr %high_bits.i255 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %high_bits.i255, align 8
  %86 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %81, align 4
  %shl.i256 = shl i32 %87, 12
  %conv.i257 = zext i32 %shl.i256 to i64
  %or.i258 = or i64 %85, %conv.i257
  %88 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %or.i258, ptr %u, align 1
  %89 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %release, align 4
  call void @qxl_release_unmap(ptr noundef %qdev, ptr noundef %90, ptr noundef %call81) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_clips)
  %cmp109277.not = icmp eq i32 %num_clips, 0
  br i1 %cmp109277.not, label %if.end80.out_release_backoff_crit_edge, label %if.end80.for.body111_crit_edge

if.end80.for.body111_crit_edge:                   ; preds = %if.end80
  br label %for.body111

if.end80.out_release_backoff_crit_edge:           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_release_backoff

for.body111:                                      ; preds = %for.body111.for.body111_crit_edge, %if.end80.for.body111_crit_edge
  %clips_ptr.1279 = phi ptr [ %add.ptr130, %for.body111.for.body111_crit_edge ], [ %clips, %if.end80.for.body111_crit_edge ]
  %i.1278 = phi i32 [ %inc129, %for.body111.for.body111_crit_edge ], [ 0, %if.end80.for.body111_crit_edge ]
  %91 = ptrtoint ptr %clips_ptr.1279 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %clips_ptr.1279, align 2
  %conv113 = zext i16 %92 to i32
  %arrayidx114 = getelementptr %struct.qxl_rect, ptr %call77, i32 %i.1278
  %left115 = getelementptr %struct.qxl_rect, ptr %call77, i32 %i.1278, i32 1
  %93 = ptrtoint ptr %left115 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %conv113, ptr %left115, align 1
  %x2116 = getelementptr inbounds %struct.drm_clip_rect, ptr %clips_ptr.1279, i32 0, i32 2
  %94 = ptrtoint ptr %x2116 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %x2116, align 2
  %conv117 = zext i16 %95 to i32
  %right119 = getelementptr %struct.qxl_rect, ptr %call77, i32 %i.1278, i32 3
  %96 = ptrtoint ptr %right119 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %conv117, ptr %right119, align 1
  %y1120 = getelementptr inbounds %struct.drm_clip_rect, ptr %clips_ptr.1279, i32 0, i32 1
  %97 = ptrtoint ptr %y1120 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %y1120, align 2
  %conv121 = zext i16 %98 to i32
  %99 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %conv121, ptr %arrayidx114, align 1
  %y2124 = getelementptr inbounds %struct.drm_clip_rect, ptr %clips_ptr.1279, i32 0, i32 3
  %100 = ptrtoint ptr %y2124 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %y2124, align 2
  %conv125 = zext i16 %101 to i32
  %bottom127 = getelementptr %struct.qxl_rect, ptr %call77, i32 %i.1278, i32 2
  %102 = ptrtoint ptr %bottom127 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 %conv125, ptr %bottom127, align 1
  %inc129 = add nuw i32 %i.1278, 1
  %add.ptr130 = getelementptr %struct.drm_clip_rect, ptr %clips_ptr.1279, i32 %inc
  %exitcond283.not = icmp eq i32 %inc129, %num_clips
  br i1 %exitcond283.not, label %for.body111.out_release_backoff_crit_edge, label %for.body111.for.body111_crit_edge

for.body111.for.body111_crit_edge:                ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body111

for.body111.out_release_backoff_crit_edge:        ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_release_backoff

out_release_backoff:                              ; preds = %for.body111.out_release_backoff_crit_edge, %if.end80.out_release_backoff_crit_edge
  %103 = ptrtoint ptr %clips_bo to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %clips_bo, align 4
  call void @qxl_bo_vunmap_locked(ptr noundef %104) #4
  %105 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %release, align 4
  call void @qxl_release_fence_buffer_objects(ptr noundef %106) #4
  %107 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %release, align 4
  %call132 = call i32 @qxl_push_command_ring_release(ptr noundef %qdev, ptr noundef %108, i32 noundef 1, i1 noundef zeroext false) #4
  br label %out_free_drawable

if.then134:                                       ; preds = %if.end76.if.then134_crit_edge, %if.end71.if.then134_crit_edge, %if.end67.if.then134_crit_edge, %if.end59.if.then134_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.end76.if.then134_crit_edge ], [ %call73, %if.end71.if.then134_crit_edge ], [ %call68, %if.end67.if.then134_crit_edge ], [ %call64, %if.end59.if.then134_crit_edge ]
  %109 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %release, align 4
  call void @qxl_release_backoff_reserve_list(ptr noundef %110) #4
  br label %out_free_drawable

out_free_drawable:                                ; preds = %if.then134, %out_release_backoff, %if.end55.out_free_drawable_crit_edge
  %ret.1 = phi i32 [ %call56, %if.end55.out_free_drawable_crit_edge ], [ %ret.0.ph, %if.then134 ], [ 0, %out_release_backoff ]
  %111 = ptrtoint ptr %dimage to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dimage, align 4
  call void @qxl_image_free_objects(ptr noundef %qdev, ptr noundef %112) #4
  call void @qxl_bo_unref(ptr noundef nonnull %clips_bo) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool136.not = icmp eq i32 %ret.1, 0
  br i1 %tobool136.not, label %out_free_drawable.cleanup_crit_edge, label %out_free_drawable.if.then137_crit_edge

out_free_drawable.if.then137_crit_edge:           ; preds = %out_free_drawable
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then137

out_free_drawable.cleanup_crit_edge:              ; preds = %out_free_drawable
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then137:                                       ; preds = %out_free_drawable.if.then137_crit_edge, %out_free_drawable.thread264, %for.end.if.then137_crit_edge
  %113 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %release, align 4
  call void @qxl_release_free(ptr noundef %qdev, ptr noundef %114) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then137, %out_free_drawable.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dimage) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clips_bo) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %release) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %surface_map) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %drawable_rect) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_image_alloc_objects(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_release_reserve_list(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @make_drawable(ptr noundef %qdev, ptr noundef readonly %rect, ptr noundef %release) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @qxl_release_map(ptr noundef %qdev, ptr noundef %release) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %type1 = getelementptr inbounds %struct.qxl_drawable, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %type1, align 1
  %surface_id = getelementptr inbounds %struct.qxl_drawable, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %surface_id to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 0, ptr %surface_id, align 1
  %effect = getelementptr inbounds %struct.qxl_drawable, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %effect to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %effect, align 1
  %self_bitmap = getelementptr inbounds %struct.qxl_drawable, ptr %call, i32 0, i32 4
  %clip = getelementptr inbounds %struct.qxl_drawable, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %clip to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 0, ptr %clip, align 1
  %uglygep = getelementptr i8, ptr %call, i32 63
  %4 = call ptr @memset(ptr %self_bitmap, i32 0, i32 17)
  %5 = call ptr @memset(ptr %uglygep, i32 255, i32 12)
  %tobool6.not = icmp eq ptr %rect, null
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %bbox = getelementptr inbounds %struct.qxl_drawable, ptr %call, i32 0, i32 6
  %6 = call ptr @memcpy(ptr %bbox, ptr %rect, i32 16)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %rom = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 7
  %7 = ptrtoint ptr %rom to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rom, align 4
  %mm_clock = getelementptr inbounds %struct.qxl_rom, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %mm_clock to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %mm_clock, align 1
  %mm_time = getelementptr inbounds %struct.qxl_drawable, ptr %call, i32 0, i32 8
  %11 = ptrtoint ptr %mm_time to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %mm_time, align 1
  tail call void @qxl_release_unmap(ptr noundef %qdev, ptr noundef %release, ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_bo_vmap_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_image_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_bo_vunmap_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @drawable_set_clipping(i32 noundef %num_clips, ptr noundef %clips_bo) unnamed_addr #0 align 64 {
entry:
  %map = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map) #4
  %0 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %map, align 8, !annotation !9
  %call = call i32 @qxl_bo_vmap_locked(ptr noundef %clips_bo, ptr noundef nonnull %map) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %num_clips, ptr %2, align 1
  %chunk = getelementptr inbounds %struct.qxl_clip_rects, ptr %2, i32 0, i32 1
  %prev_chunk = getelementptr inbounds %struct.qxl_clip_rects, ptr %2, i32 0, i32 1, i32 1
  %mul = shl i32 %num_clips, 4
  %4 = call ptr @memset(ptr %prev_chunk, i32 0, i32 16)
  %5 = ptrtoint ptr %chunk to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %mul, ptr %chunk, align 1
  %data = getelementptr inbounds %struct.qxl_clip_rects, ptr %2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %data, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map) #4
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qxl_release_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_release_unmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_release_fence_buffer_objects(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_push_command_ring_release(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_release_backoff_reserve_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_image_free_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_alloc_release_reserved(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_alloc_bo_reserved(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_release_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
