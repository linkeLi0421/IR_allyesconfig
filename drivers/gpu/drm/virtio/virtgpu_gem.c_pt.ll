; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/virtio/virtgpu_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/virtio/virtgpu_gem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_gpu_object_params = type { i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.88 = type { i32, ptr }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.virtio_gpu_device = type { ptr, ptr, ptr, [16 x %struct.virtio_gpu_output], i32, %struct.virtio_gpu_queue, %struct.virtio_gpu_queue, ptr, %struct.atomic_t, %struct.ida, %struct.wait_queue_head, %struct.spinlock, i8, %struct.virtio_gpu_fence_driver, %struct.ida, i8, i8, i8, i8, i8, i8, i8, %struct.virtio_shm_region, %struct.drm_mm, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, i32, i64, %struct.list_head, %struct.spinlock, %struct.spinlock }
%struct.virtio_gpu_output = type { i32, %struct.drm_crtc, %struct.drm_connector, %struct.drm_encoder, %struct.virtio_gpu_display_one, %struct.virtio_gpu_update_cursor, ptr, i32, i32, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.virtio_gpu_display_one = type { %struct.virtio_gpu_rect, i32, i32 }
%struct.virtio_gpu_rect = type { i32, i32, i32, i32 }
%struct.virtio_gpu_update_cursor = type { %struct.virtio_gpu_ctrl_hdr, %struct.virtio_gpu_cursor_pos, i32, i32, i32, i32 }
%struct.virtio_gpu_ctrl_hdr = type { i32, i32, i64, i32, i8, [3 x i8] }
%struct.virtio_gpu_cursor_pos = type { i32, i32, i32, i32 }
%struct.virtio_gpu_queue = type { ptr, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.virtio_gpu_fence_driver = type { %struct.atomic64_t, i64, i64, %struct.list_head, %struct.spinlock }
%struct.atomic64_t = type { i64 }
%struct.virtio_shm_region = type { i64, i64 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.virtio_gpu_object_array = type { %struct.ww_acquire_ctx, %struct.list_head, i32, i32, [0 x ptr] }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }

@virtio_gpu_array_add_obj.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/virtio/virtgpu_gem.c\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [40 x i8] c"../drivers/gpu/drm/virtio/virtgpu_gem.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 207, i32 6 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_mode_dumb_create(ptr noundef %file_priv, ptr nocapture noundef readonly %dev, ptr nocapture noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %obj.i = alloca ptr, align 4
  %handle.i = alloca i32, align 4
  %params = alloca %struct.virtio_gpu_object_params, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %params) #7
  %0 = call ptr @memset(ptr %params, i32 0, i32 72)
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_private, align 4
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %3 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bpp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %cmp.not = icmp eq i32 %4, 32
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 4
  %mul = shl i32 %6, 2
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args, align 8
  %mul1 = mul i32 %mul, %8
  %conv = zext i32 %mul1 to i64
  %size = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 6
  %add = add nuw nsw i64 %conv, 4095
  %and = and i64 %add, 8589930496
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %and, ptr %size, align 8
  %call = tail call i32 @virtio_gpu_translate_format(i32 noundef 875714626) #7
  %format = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 4
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %format, align 8
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width, align 4
  %width5 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 5
  %13 = ptrtoint ptr %width5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %width5, align 4
  %14 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %args, align 8
  %height7 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 6
  %16 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height7, align 8
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %size, align 8
  %conv9 = trunc i64 %18 to i32
  %19 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv9, ptr %params, align 8
  %dumb = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 1
  %20 = ptrtoint ptr %dumb to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %dumb, align 4
  %has_resource_blob = getelementptr inbounds %struct.virtio_gpu_device, ptr %2, i32 0, i32 19
  %21 = ptrtoint ptr %has_resource_blob to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %has_resource_blob, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %has_virgl_3d = getelementptr inbounds %struct.virtio_gpu_device, ptr %2, i32 0, i32 15
  %23 = ptrtoint ptr %has_virgl_3d to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %has_virgl_3d, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool12.not = icmp eq i8 %24, 0
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %blob_mem = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 15
  %25 = ptrtoint ptr %blob_mem to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %blob_mem, align 4
  %blob_flags = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 16
  %26 = ptrtoint ptr %blob_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %blob_flags, align 8
  %blob = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 3
  %27 = ptrtoint ptr %blob to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %blob, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %handle = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 4
  %28 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %obj.i) #7
  %30 = ptrtoint ptr %obj.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %obj.i, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle.i) #7
  %31 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %handle.i, align 4, !annotation !13
  %call.i = call i32 @virtio_gpu_object_create(ptr noundef %29, ptr noundef nonnull %params, ptr noundef nonnull %obj.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end14.virtio_gpu_gem_create.exit.thread_crit_edge, label %if.end.i

if.end14.virtio_gpu_gem_create.exit.thread_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtio_gpu_gem_create.exit.thread

if.end.i:                                         ; preds = %if.end14
  %32 = ptrtoint ptr %obj.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %obj.i, align 4
  %call2.i = call i32 @drm_gem_handle_create(ptr noundef %file_priv, ptr noundef %33, ptr noundef nonnull %handle.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %34 = ptrtoint ptr %obj.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %obj.i, align 4
  br i1 %tobool.not.i, label %if.end6.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @drm_gem_object_release(ptr noundef %35) #7
  br label %virtio_gpu_gem_create.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.end6.i.if.end18_crit_edge, label %if.then.i.i

if.end6.i.if.end18_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then.i.i:                                      ; preds = %if.end6.i
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %35, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !14
  call void @llvm.prefetch.p0(ptr nonnull %35, i32 1, i32 3, i32 1) #7
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %35, ptr nonnull %35, i32 1, ptr nonnull elementtype(i32) %35) #7, !srcloc !15
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.if.end18_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !16

if.end5.i.i.i.i.i.i.i.if.end18_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %35, i32 noundef 3) #7
  br label %if.end18

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !17
  call void @drm_gem_object_free(ptr noundef nonnull %35) #7
  br label %if.end18

virtio_gpu_gem_create.exit.thread:                ; preds = %if.then3.i, %if.end14.virtio_gpu_gem_create.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end14.virtio_gpu_gem_create.exit.thread_crit_edge ], [ %call2.i, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obj.i) #7
  br label %cleanup

if.end18:                                         ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.if.end18_crit_edge, %if.end6.i.if.end18_crit_edge
  %37 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %handle.i, align 4
  %39 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %handle, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obj.i) #7
  %pitch19 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %40 = ptrtoint ptr %pitch19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul, ptr %pitch19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %virtio_gpu_gem_create.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %virtio_gpu_gem_create.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %params) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_translate_format(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_mode_dumb_mmap(ptr noundef %file_priv, ptr nocapture noundef readnone %dev, i32 noundef %handle, ptr noundef writeonly %offset_p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %offset_p, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !18

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/virtio/virtgpu_gem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 108, 0\0A.popsection", ""() #7, !srcloc !19
  unreachable

do.end9:                                          ; preds = %entry
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %handle) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end9.cleanup_crit_edge, label %if.then.i

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %do.end9
  %start.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %start.i, align 8
  %shl.i = shl i64 %1, 12
  %2 = ptrtoint ptr %offset_p to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %shl.i, ptr %offset_p, align 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !14
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #7, !srcloc !15
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !16

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #7
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !17
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end9.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_gem_object_open(ptr noundef %obj, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %4 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_priv, align 4
  %has_virgl_3d = getelementptr inbounds %struct.virtio_gpu_device, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %has_virgl_3d to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_virgl_3d, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.out_notify_crit_edge, label %if.end

entry.out_notify_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_notify

if.end:                                           ; preds = %entry
  tail call void @virtio_gpu_create_context(ptr noundef %1, ptr noundef %file) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 84) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %nents2.i = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %nents2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %nents2.i, align 8
  %total.i = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %total.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %total.i, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %obj, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %obj, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %obj, ptr %obj, i32 1, ptr elementtype(i32) %obj) #7, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end4.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !18

if.end4.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end4
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.drm_gem_object_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !16

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.drm_gem_object_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_gem_object_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end4.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end4.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %obj, i32 noundef %.sink.i.i.i.i.i.i) #7
  br label %drm_gem_object_get.exit.i

drm_gem_object_get.exit.i:                        ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.drm_gem_object_get.exit.i_crit_edge
  %13 = ptrtoint ptr %nents2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nents2.i, align 8
  %arrayidx.i = getelementptr %struct.virtio_gpu_object_array, ptr %call7.i.i, i32 0, i32 4, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %obj, ptr %arrayidx.i, align 4
  %16 = load i32, ptr %nents2.i, align 8
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %nents2.i, align 8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 8
  tail call void @virtio_gpu_cmd_context_attach_resource(ptr noundef %3, i32 noundef %18, ptr noundef nonnull %call7.i.i) #7
  br label %out_notify

out_notify:                                       ; preds = %drm_gem_object_get.exit.i, %entry.out_notify_crit_edge
  tail call void @virtio_gpu_notify(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %out_notify, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out_notify ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_create_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtio_gpu_array_alloc(i32 noundef %nents) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nents, i32 4) #7
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 80) #7
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %nents2 = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %call9.i, i32 0, i32 2
  %3 = ptrtoint ptr %nents2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nents2, align 8
  %total = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %call9.i, i32 0, i32 3
  %4 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %nents, ptr %total, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call9.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_array_add_obj(ptr nocapture noundef %objs, ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nents = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 2
  %0 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nents, align 4
  %total = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 3
  %2 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.rhs, label %if.end37.critedge

land.rhs:                                         ; preds = %entry
  %.b48 = load i1, ptr @virtio_gpu_array_add_obj.__already_done, align 1
  br i1 %.b48, label %land.rhs.return_crit_edge, label %if.then, !prof !16

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @virtio_gpu_array_add_obj.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 207, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end37.critedge:                                ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %obj, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %obj, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %obj, ptr %obj, i32 1, ptr elementtype(i32) %obj) #7, !srcloc !20
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end37.critedge.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !18

if.end37.critedge.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end37.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end37.critedge
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !16

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_gem_object_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end37.critedge.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end37.critedge.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %obj, i32 noundef %.sink.i.i.i.i.i) #7
  br label %drm_gem_object_get.exit

drm_gem_object_get.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge
  %6 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nents, align 4
  %arrayidx = getelementptr %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 4, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %obj, ptr %arrayidx, align 4
  %9 = load i32, ptr %nents, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %nents, align 4
  br label %return

return:                                           ; preds = %drm_gem_object_get.exit, %if.then, %land.rhs.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_context_attach_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_gem_object_close(ptr noundef %obj, ptr nocapture noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %4 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_priv, align 4
  %has_virgl_3d = getelementptr inbounds %struct.virtio_gpu_device, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %has_virgl_3d to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_virgl_3d, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 84) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %nents2.i = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %nents2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %nents2.i, align 8
  %total.i = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %total.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %total.i, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %obj, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %obj, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %obj, ptr %obj, i32 1, ptr elementtype(i32) %obj) #7, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end3.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !18

if.end3.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end3
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.drm_gem_object_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !16

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.drm_gem_object_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_gem_object_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end3.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end3.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %obj, i32 noundef %.sink.i.i.i.i.i.i) #7
  br label %drm_gem_object_get.exit.i

drm_gem_object_get.exit.i:                        ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.drm_gem_object_get.exit.i_crit_edge
  %13 = ptrtoint ptr %nents2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nents2.i, align 8
  %arrayidx.i = getelementptr %struct.virtio_gpu_object_array, ptr %call7.i.i, i32 0, i32 4, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %obj, ptr %arrayidx.i, align 4
  %16 = load i32, ptr %nents2.i, align 8
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %nents2.i, align 8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 8
  tail call void @virtio_gpu_cmd_context_detach_resource(ptr noundef %3, i32 noundef %18, ptr noundef nonnull %call7.i.i) #7
  tail call void @virtio_gpu_notify(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %drm_gem_object_get.exit.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_context_detach_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtio_gpu_array_from_handles(ptr noundef %drm_file, ptr nocapture noundef readonly %handles, i32 noundef %nents) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nents, i32 4) #7
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 80) #7
  %retval.0.i.i = select i1 %1, i32 -1, i32 %spec.select.i.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %virtio_gpu_array_alloc.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

virtio_gpu_array_alloc.exit:                      ; preds = %entry
  %nents2.i = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %call9.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %nents2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nents2.i, align 8
  %total.i = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %call9.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %total.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %nents, ptr %total.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %cmp26.not = icmp eq i32 %nents, 0
  br i1 %cmp26.not, label %virtio_gpu_array_alloc.exit.for.end_crit_edge, label %virtio_gpu_array_alloc.exit.for.body_crit_edge

virtio_gpu_array_alloc.exit.for.body_crit_edge:   ; preds = %virtio_gpu_array_alloc.exit
  br label %for.body

virtio_gpu_array_alloc.exit.for.end_crit_edge:    ; preds = %virtio_gpu_array_alloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %virtio_gpu_array_alloc.exit.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %virtio_gpu_array_alloc.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %handles, i32 %i.027
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %call1 = tail call ptr @drm_gem_object_lookup(ptr noundef %drm_file, i32 noundef %6) #7
  %arrayidx3 = getelementptr %struct.virtio_gpu_object_array, ptr %call9.i.i, i32 0, i32 4, i32 %i.027
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %arrayidx3, align 4
  %tobool6.not = icmp eq ptr %call1, null
  br i1 %tobool6.not, label %if.then7, label %for.inc

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %nents2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.027, ptr %nents2.i, align 8
  tail call void @virtio_gpu_array_put_free(ptr noundef nonnull %call9.i.i)
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %virtio_gpu_array_alloc.exit.for.end_crit_edge
  %9 = ptrtoint ptr %nents2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %nents, ptr %nents2.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then7 ], [ %call9.i.i, %for.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_array_put_free(ptr noundef %objs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nents = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 2
  %0 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %drm_gem_object_put.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %drm_gem_object_put.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 4, i32 %i.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.drm_gem_object_put.exit_crit_edge, label %if.then.i

for.body.drm_gem_object_put.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %for.body
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !14
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #7, !srcloc !15
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !16

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #7
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !17
  tail call void @drm_gem_object_free(ptr noundef nonnull %3) #7
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %for.body.drm_gem_object_put.exit_crit_edge
  %inc = add nuw i32 %i.07, 1
  %5 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nents, align 4
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %drm_gem_object_put.exit.for.body_crit_edge, label %drm_gem_object_put.exit.for.end_crit_edge

drm_gem_object_put.exit.for.end_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

drm_gem_object_put.exit.for.body_crit_edge:       ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %drm_gem_object_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %objs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_array_lock_resv(ptr noundef %objs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nents = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 2
  %0 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %objs1 = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %objs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %objs1, align 4
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv, align 8
  %call.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %5, ptr noundef null) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @drm_gem_lock_reservations(ptr noundef %objs1, i32 noundef %1, ptr noundef %objs) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call.i, %if.then ], [ %call4, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_lock_reservations(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_array_unlock_resv(ptr noundef %objs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nents = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 2
  %0 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %objs1 = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %objs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %objs1, align 4
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %5) #7
  tail call void @ww_mutex_unlock(ptr noundef %5) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_gem_unlock_reservations(ptr noundef %objs1, i32 noundef %1, ptr noundef %objs) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_unlock_reservations(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_array_add_fence(ptr nocapture noundef readonly %objs, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nents = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 2
  %0 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 4, i32 %i.06
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv, align 8
  tail call void @dma_resv_add_excl_fence(ptr noundef %5, ptr noundef %fence) #7
  %inc = add nuw i32 %i.06, 1
  %6 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nents, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_array_put_free_delayed(ptr noundef %vgdev, ptr noundef %objs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %obj_free_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %obj_free_lock) #7
  %next = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 1
  %obj_free_list = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 27
  %prev.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 27, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %next, ptr noundef %1, ptr noundef %obj_free_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %next, ptr %prev.i, align 4
  %3 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %obj_free_list, ptr %next, align 4
  %prev3.i.i = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %next, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %obj_free_lock) #7
  %obj_free_work = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i5 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %obj_free_work) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_array_put_free_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %obj_free_lock = getelementptr i8, ptr %work, i32 44
  tail call void @_raw_spin_lock(ptr noundef %obj_free_lock) #7
  %obj_free_list = getelementptr i8, ptr %work, i32 88
  %0 = ptrtoint ptr %obj_free_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %obj_free_list, align 4
  %cmp.i.not15 = icmp eq ptr %1, %obj_free_list
  br i1 %cmp.i.not15, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr4 = getelementptr i8, ptr %2, i32 -64
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #7
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %obj_free_lock) #7
  tail call void @virtio_gpu_array_put_free(ptr noundef %add.ptr4)
  tail call void @_raw_spin_lock(ptr noundef %obj_free_lock) #7
  %11 = ptrtoint ptr %obj_free_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %obj_free_list, align 4
  %cmp.i.not = icmp eq ptr %12, %obj_free_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %obj_free_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_object_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/virtio/virtgpu_gem.c", i32 207, i32 6}
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
!12 = !{i8 0, i8 2}
!13 = !{!"auto-init"}
!14 = !{i64 2148598464}
!15 = !{i64 2148512904, i64 2148512936, i64 2148512965, i64 2148512999, i64 2148513030, i64 2148513053}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149902846}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2156777249, i64 2156777750, i64 2156777286, i64 2156777342, i64 2156777376, i64 2156777400, i64 2156777441, i64 2156777462, i64 2156777490, i64 2156777524}
!20 = !{i64 2148510439, i64 2148510471, i64 2148510500, i64 2148510534, i64 2148510565, i64 2148510588}
