; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/virtio/virtgpu_prime.c_pt.bc'
source_filename = "../drivers/gpu/drm/virtio/virtgpu_prime.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.virtio_dma_buf_ops = type { %struct.dma_buf_ops, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.88 = type { i32, ptr }
%struct.virtio_gpu_object = type { %struct.drm_gem_shmem_object, i32, i8, i8, i8, i8, i32, i32, i32, %struct.uuid_t }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.uuid_t = type { [16 x i8] }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.79, i8 }
%union.anon.79 = type { ptr }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virtio_gpu\00", [21 x i8] zeroinitializer }, align 32
@__const.virtgpu_gem_prime_export.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, align 8
@virtgpu_dmabuf_ops = internal constant { %struct.virtio_dma_buf_ops, [36 x i8] } { %struct.virtio_dma_buf_ops { %struct.dma_buf_ops { i8 1, ptr @virtio_dma_buf_attach, ptr @drm_gem_map_detach, ptr null, ptr null, ptr @virtgpu_gem_map_dma_buf, ptr @virtgpu_gem_unmap_dma_buf, ptr @drm_gem_dmabuf_release, ptr null, ptr null, ptr @drm_gem_dmabuf_mmap, ptr @drm_gem_dmabuf_vmap, ptr @drm_gem_dmabuf_vunmap }, ptr @drm_gem_map_attach, ptr @virtgpu_virtio_get_uuid }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/virtio/virtgpu_prime.c\00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 117, i32 2 }
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"virtgpu_dmabuf_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 74, i32 40 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [42 x i8] c"../drivers/gpu/drm/virtio/virtgpu_prime.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 37, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @virtgpu_dmabuf_ops, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtgpu_dmabuf_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_resource_assign_uuid(ptr noundef %vgdev, ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @virtio_gpu_array_alloc(i32 noundef 1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @virtio_gpu_array_add_obj(ptr noundef nonnull %call, ptr noundef %bo) #5
  %call2 = tail call i32 @virtio_gpu_cmd_resource_assign_uuid(ptr noundef %vgdev, ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtio_gpu_array_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_array_add_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_cmd_resource_assign_uuid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtgpu_gem_prime_export(ptr noundef %obj, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %exp_info = alloca %struct.dma_buf_export_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %host3d_blob = getelementptr inbounds %struct.virtio_gpu_object, ptr %obj, i32 0, i32 4
  %4 = ptrtoint ptr %host3d_blob to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %host3d_blob, align 2, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.rhs, label %if.else10.critedge

lor.rhs:                                          ; preds = %entry
  %guest_blob = getelementptr inbounds %struct.virtio_gpu_object, ptr %obj, i32 0, i32 5
  %6 = ptrtoint ptr %guest_blob to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %guest_blob, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %exp_info) #5
  %8 = load i64, ptr @__const.virtgpu_gem_prime_export.exp_info, align 8
  %9 = ptrtoint ptr %exp_info to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %exp_info, align 8
  br i1 %tobool2.not, label %if.then, label %lor.rhs.if.else10_crit_edge

lor.rhs.if.else10_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10

if.then:                                          ; preds = %lor.rhs
  %has_resource_assign_uuid = getelementptr inbounds %struct.virtio_gpu_device, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %has_resource_assign_uuid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_resource_assign_uuid, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %call.i = tail call ptr @virtio_gpu_array_alloc(i32 noundef 1) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then5.if.then7_crit_edge, label %virtio_gpu_resource_assign_uuid.exit

if.then5.if.then7_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

virtio_gpu_resource_assign_uuid.exit:             ; preds = %if.then5
  tail call void @virtio_gpu_array_add_obj(ptr noundef nonnull %call.i, ptr noundef %obj) #5
  %call2.i = tail call i32 @virtio_gpu_cmd_resource_assign_uuid(ptr noundef %3, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool6.not = icmp eq i32 %call2.i, 0
  br i1 %tobool6.not, label %if.end, label %virtio_gpu_resource_assign_uuid.exit.if.then7_crit_edge

virtio_gpu_resource_assign_uuid.exit.if.then7_crit_edge: ; preds = %virtio_gpu_resource_assign_uuid.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.then7:                                         ; preds = %virtio_gpu_resource_assign_uuid.exit.if.then7_crit_edge, %if.then5.if.then7_crit_edge
  %retval.0.i47 = phi i32 [ %call2.i, %virtio_gpu_resource_assign_uuid.exit.if.then7_crit_edge ], [ -12, %if.then5.if.then7_crit_edge ]
  %12 = inttoptr i32 %retval.0.i47 to ptr
  br label %cleanup

if.end:                                           ; preds = %virtio_gpu_resource_assign_uuid.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @virtio_gpu_notify(ptr noundef %3) #5
  br label %if.end15

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %uuid_state = getelementptr inbounds %struct.virtio_gpu_object, ptr %obj, i32 0, i32 8
  %13 = ptrtoint ptr %uuid_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %uuid_state, align 8
  br label %if.end15

if.else10.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %exp_info) #5
  %14 = load i64, ptr @__const.virtgpu_gem_prime_export.exp_info, align 8
  %15 = ptrtoint ptr %exp_info to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %exp_info, align 8
  br label %if.else10

if.else10:                                        ; preds = %if.else10.critedge, %lor.rhs.if.else10_crit_edge
  %blob_flags = getelementptr inbounds %struct.virtio_gpu_object, ptr %obj, i32 0, i32 7
  %16 = ptrtoint ptr %blob_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blob_flags, align 4
  %and = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.then12, label %if.else10.if.end15_crit_edge

if.else10.if.end15_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then12:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #7
  %uuid_state13 = getelementptr inbounds %struct.virtio_gpu_object, ptr %obj, i32 0, i32 8
  %18 = ptrtoint ptr %uuid_state13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %uuid_state13, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else10.if.end15_crit_edge, %if.else, %if.end
  %ops = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 2
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @virtgpu_dmabuf_ops, ptr %ops, align 8
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 8
  %size16 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 3
  %22 = ptrtoint ptr %size16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %size16, align 4
  %flags17 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 4
  %23 = ptrtoint ptr %flags17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %flags, ptr %flags17, align 8
  %priv = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 6
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %obj, ptr %priv, align 8
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %25 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resv, align 8
  %resv18 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 5
  %27 = ptrtoint ptr %resv18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %resv18, align 4
  %call19 = call ptr @virtio_dma_buf_export(ptr noundef nonnull %exp_info) #5
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  call void @drm_dev_get(ptr noundef %1) #5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %obj, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %obj, i32 1, i32 3, i32 1) #5
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %obj, ptr %obj, i32 1, ptr elementtype(i32) %obj) #5, !srcloc !16
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end22.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !17

if.end22.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end22
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !18

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end22.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end22.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %obj, i32 noundef %.sink.i.i.i.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then7
  %retval.0 = phi ptr [ %12, %if.then7 ], [ %call19, %if.end15.cleanup_crit_edge ], [ %call19, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ %call19, %if.end15.sink.split.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %exp_info) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtio_dma_buf_export(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtgpu_gem_prime_import(ptr noundef %dev, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %cmp = icmp eq ptr %1, @virtgpu_dmabuf_ops
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %cmp2 = icmp eq ptr %5, %dev
  br i1 %cmp2, label %if.then3, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %if.then
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #5
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #5, !srcloc !16
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !17

if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then3
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !18

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef %.sink.i.i.i.i.i) #5
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call = tail call ptr @drm_gem_prime_import(ptr noundef %dev, ptr noundef %buf) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end4 ], [ %3, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ %3, %if.end15.sink.split.i.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_prime_import(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @virtgpu_gem_prime_import_sg_table(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attach, ptr nocapture noundef readnone %table) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 -19 to ptr)
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_dma_buf_attach(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_map_detach(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @virtgpu_gem_map_dma_buf(ptr noundef %attach, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attach, align 4
  %priv = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call zeroext i1 @virtio_gpu_is_vram(ptr noundef %3) #5
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %attach, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call1 = tail call ptr @virtio_gpu_vram_map_dma_buf(ptr noundef %3, ptr noundef %5, i32 noundef %dir) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call ptr @drm_gem_map_dma_buf(ptr noundef %attach, i32 noundef %dir) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %call1, %if.then ], [ %call2, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtgpu_gem_unmap_dma_buf(ptr noundef %attach, ptr noundef %sgt, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attach, align 4
  %priv = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call zeroext i1 @virtio_gpu_is_vram(ptr noundef %3) #5
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %attach, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @virtio_gpu_vram_unmap_dma_buf(ptr noundef %5, ptr noundef %sgt, i32 noundef %dir) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_gem_unmap_dma_buf(ptr noundef %attach, ptr noundef %sgt, i32 noundef %dir) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_dmabuf_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_dmabuf_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_dmabuf_vmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_dmabuf_vunmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_map_attach(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtgpu_virtio_get_uuid(ptr nocapture noundef readonly %buf, ptr nocapture noundef writeonly %uuid) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 37) #5
  %uuid_state = getelementptr inbounds %struct.virtio_gpu_object, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %uuid_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uuid_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %resp_wq = getelementptr inbounds %struct.virtio_gpu_device, ptr %5, i32 0, i32 10
  %call28 = call i32 @prepare_to_wait_event(ptr noundef %resp_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %9 = ptrtoint ptr %uuid_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uuid_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6.not29 = icmp eq i32 %10, 0
  br i1 %cmp6.not29, label %if.end.cleanup_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #5
  %call = call i32 @prepare_to_wait_event(ptr noundef %resp_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %11 = ptrtoint ptr %uuid_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %uuid_state, align 8
  %cmp6.not = icmp eq i32 %12, 0
  br i1 %cmp6.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %resp_wq, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  %13 = ptrtoint ptr %uuid_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %uuid_state, align 8
  br label %do.end12

do.end12:                                         ; preds = %for.end, %entry.do.end12_crit_edge
  %14 = phi i32 [ %7, %entry.do.end12_crit_edge ], [ %.pr, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp14.not = icmp eq i32 %14, 1
  br i1 %cmp14.not, label %if.end16, label %do.end12.cleanup18_crit_edge

do.end12.cleanup18_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup18

if.end16:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  %uuid17 = getelementptr inbounds %struct.virtio_gpu_object, ptr %1, i32 0, i32 9
  %15 = call ptr @memcpy(ptr %uuid, ptr %uuid17, i32 16)
  br label %cleanup18

cleanup18:                                        ; preds = %if.end16, %do.end12.cleanup18_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -19, %do.end12.cleanup18_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtio_gpu_is_vram(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtio_gpu_vram_map_dma_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_map_dma_buf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_vram_unmap_dma_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_unmap_dma_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/virtio/virtgpu_prime.c", i32 117, i32 2}
!2 = !{ptr @virtgpu_dmabuf_ops, !3, !"virtgpu_dmabuf_ops", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/virtio/virtgpu_prime.c", i32 74, i32 40}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/virtio/virtgpu_prime.c", i32 37, i32 2}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
!16 = !{i64 2148361067, i64 2148361099, i64 2148361128, i64 2148361162, i64 2148361193, i64 2148361216}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!"branch_weights", i32 2000, i32 1}
