; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/virtio/virtgpu_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/virtio/virtgpu_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_gpu_device = type { ptr, ptr, ptr, [16 x %struct.virtio_gpu_output], i32, %struct.virtio_gpu_queue, %struct.virtio_gpu_queue, ptr, %struct.atomic_t, %struct.ida, %struct.wait_queue_head, %struct.spinlock, i8, %struct.virtio_gpu_fence_driver, %struct.ida, i8, i8, i8, i8, i8, i8, i8, %struct.virtio_shm_region, %struct.drm_mm, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, i32, i64, %struct.list_head, %struct.spinlock, %struct.spinlock }
%struct.virtio_gpu_output = type { i32, %struct.drm_crtc, %struct.drm_connector, %struct.drm_encoder, %struct.virtio_gpu_display_one, %struct.virtio_gpu_update_cursor, ptr, i32, i32, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.virtio_gpu_fence_driver = type { %struct.atomic64_t, i64, i64, %struct.list_head, %struct.spinlock }
%struct.atomic64_t = type { i64 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.virtio_shm_region = type { i64, i64 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.virtio_gpu_object = type { %struct.drm_gem_shmem_object, i32, i8, i8, i8, i8, i32, i32, i32, %struct.uuid_t }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.uuid_t = type { [16 x i8] }
%struct.virtio_gpu_framebuffer = type { %struct.drm_framebuffer, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.79, i64, i64, i32, %struct.kref, i32 }
%union.anon.79 = type { i64 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.85, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.85 = type { [4 x i8] }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/virtio/virtgpu_plane.c\00", [57 x i8] zeroinitializer }, align 32
@virtio_gpu_cursor_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 875708738], [28 x i8] zeroinitializer }, align 32
@virtio_gpu_cursor_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @virtio_gpu_plane_prepare_fb, ptr @virtio_gpu_plane_cleanup_fb, ptr @virtio_gpu_plane_atomic_check, ptr @virtio_gpu_cursor_plane_update, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@virtio_gpu_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 875714626], [28 x i8] zeroinitializer }, align 32
@virtio_gpu_primary_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @virtio_gpu_plane_prepare_fb, ptr @virtio_gpu_plane_cleanup_fb, ptr @virtio_gpu_plane_atomic_check, ptr @virtio_gpu_primary_plane_update, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@virtio_gpu_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @virtio_gpu_plane_destroy, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"update, handle %d, pos +%d+%d, hot %d,%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"move +%d+%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nofb\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"handle 0x%x, crtc %dx%d+%d+%d, src %dx%d+%d+%d\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 875708738, i64 875713089, i64 875713112, i64 875714626]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 66, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [26 x i8] c"virtio_gpu_cursor_formats\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 37, i32 23 }
@___asan_gen_.11 = private unnamed_addr constant [31 x i8] c"virtio_gpu_cursor_helper_funcs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 367, i32 44 }
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"virtio_gpu_formats\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 33, i32 23 }
@___asan_gen_.17 = private unnamed_addr constant [32 x i8] c"virtio_gpu_primary_helper_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 360, i32 44 }
@___asan_gen_.20 = private unnamed_addr constant [23 x i8] c"virtio_gpu_plane_funcs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 76, i32 37 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 331, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 349, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 185, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [42 x i8] c"../drivers/gpu/drm/virtio/virtgpu_plane.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 208, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @virtio_gpu_cursor_formats, ptr @virtio_gpu_cursor_helper_funcs, ptr @virtio_gpu_formats, ptr @virtio_gpu_primary_helper_funcs, ptr @virtio_gpu_plane_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_cursor_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_cursor_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_primary_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_translate_format(i32 noundef %drm_fourcc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %drm_fourcc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %drm_fourcc, label %do.end [
    i32 875713112, label %entry.if.end_crit_edge
    i32 875713089, label %sw.bb1
    i32 875714626, label %sw.bb2
    i32 875708738, label %sw.bb3
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb3, %sw.bb2, %sw.bb1, %entry.if.end_crit_edge
  %format.026 = phi i32 [ 0, %do.end ], [ 2, %entry.if.end_crit_edge ], [ 1, %sw.bb1 ], [ 4, %sw.bb2 ], [ 3, %sw.bb3 ]
  ret i32 %format.026
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtio_gpu_plane_init(ptr nocapture noundef readonly %vgdev, i32 noundef %type, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 528) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp eq i32 %type, 2
  %virtio_gpu_cursor_formats.virtio_gpu_formats = select i1 %cmp, ptr @virtio_gpu_cursor_formats, ptr @virtio_gpu_formats
  %shl = shl nuw i32 1, %index
  %call4 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %1, ptr noundef nonnull %call7.i.i, i32 noundef %shl, ptr noundef nonnull @virtio_gpu_plane_funcs, ptr noundef nonnull %virtio_gpu_cursor_formats.virtio_gpu_formats, i32 noundef 1, ptr noundef null, i32 noundef %type, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %err_plane_init

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %virtio_gpu_cursor_helper_funcs.virtio_gpu_primary_helper_funcs = select i1 %cmp, ptr @virtio_gpu_cursor_helper_funcs, ptr @virtio_gpu_primary_helper_funcs
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 18
  %3 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %virtio_gpu_cursor_helper_funcs.virtio_gpu_primary_helper_funcs, ptr %helper_private.i, align 8
  br label %cleanup

err_plane_init:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %4 = inttoptr i32 %call4 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_plane_init, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %err_plane_init ], [ %call7.i.i, %if.end7 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_plane_prepare_fb(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %new_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 2
  %4 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %obj, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.if.end9_crit_edge

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %guest_blob = getelementptr inbounds %struct.virtio_gpu_object, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %guest_blob to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %guest_blob, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %lor.lhs.false.if.end9_crit_edge
  %dumb = getelementptr inbounds %struct.virtio_gpu_object, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %dumb to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dumb, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  br i1 %tobool10.not, label %if.end9.if.end20_crit_edge, label %land.lhs.true11

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true11:                                  ; preds = %if.end9
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  %fb12 = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %fb12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb12, align 4
  %cmp14.not = icmp eq ptr %17, %5
  br i1 %cmp14.not, label %land.lhs.true11.if.end20_crit_edge, label %if.then15

land.lhs.true11.if.end20_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then15:                                        ; preds = %land.lhs.true11
  %context = getelementptr inbounds %struct.virtio_gpu_device, ptr %3, i32 0, i32 13, i32 2
  %18 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %context, align 8
  %call = tail call ptr @virtio_gpu_fence_alloc(ptr noundef %3, i64 noundef %19, i32 noundef 0) #6
  %fence = getelementptr inbounds %struct.virtio_gpu_framebuffer, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %fence, align 8
  %tobool17.not = icmp eq ptr %call, null
  br i1 %tobool17.not, label %if.then15.cleanup_crit_edge, label %if.then15.if.end20_crit_edge

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.then15.if.end20_crit_edge, %land.lhs.true11.if.end20_crit_edge, %if.end9.if.end20_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then15.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_plane_cleanup_fb(ptr nocapture noundef readonly %plane, ptr nocapture noundef readnone %old_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fence = getelementptr inbounds %struct.virtio_gpu_framebuffer, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fence, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !32

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #6
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @dma_fence_release(ptr noundef %refcount.i) #6
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge
  %7 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %fence, align 8
  br label %cleanup

cleanup:                                          ; preds = %dma_fence_put.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %do.end, label %if.end24, !prof !34

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %call26 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %state, ptr noundef nonnull %11) #6
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %call26, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext %cmp, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then28, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then28 ], [ %call32, %if.end30 ], [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_cursor_plane_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %6 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private, align 4
  %state2 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %10 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state2, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %13, null
  %add.ptr = getelementptr i8, ptr %13, i32 -8
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  %crtc5 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %crtc5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc5, align 4
  %tobool6.not = icmp eq ptr %15, null
  %add.ptr11 = getelementptr i8, ptr %15, i32 -8
  %output.1 = select i1 %tobool6.not, ptr %spec.select, ptr %add.ptr11
  %tobool13.not = icmp eq ptr %output.1, null
  br i1 %tobool13.not, label %do.end, label %if.end39, !prof !34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 299, i32 noundef 9, ptr noundef null) #6
  br label %cleanup133

if.end39:                                         ; preds = %entry
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb, align 4
  %tobool41.not = icmp eq ptr %17, null
  br i1 %tobool41.not, label %if.end39.if.end74_crit_edge, label %if.end51

if.end39.if.end74_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.end51:                                         ; preds = %if.end39
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %obj, align 4
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_res_handle, align 8
  %tobool52.not = icmp eq ptr %19, null
  br i1 %tobool52.not, label %if.end51.if.end74_crit_edge, label %land.lhs.true

if.end51.if.end74_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

land.lhs.true:                                    ; preds = %if.end51
  %dumb = getelementptr inbounds %struct.virtio_gpu_object, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %dumb to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dumb, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool53.not = icmp eq i8 %23, 0
  br i1 %tobool53.not, label %land.lhs.true.if.end74_crit_edge, label %land.lhs.true54

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

land.lhs.true54:                                  ; preds = %land.lhs.true
  %fb57 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %24 = ptrtoint ptr %fb57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fb57, align 4
  %cmp.not = icmp eq ptr %17, %25
  br i1 %cmp.not, label %land.lhs.true54.if.end74_crit_edge, label %if.then58

land.lhs.true54.if.end74_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then58:                                        ; preds = %land.lhs.true54
  %call59 = tail call ptr @virtio_gpu_array_alloc(i32 noundef 1) #6
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %if.then58.cleanup133_crit_edge, label %if.end62

if.then58.cleanup133_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup133

if.end62:                                         ; preds = %if.then58
  %26 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %obj, align 4
  tail call void @virtio_gpu_array_add_obj(ptr noundef nonnull %call59, ptr noundef %27) #6
  %call66 = tail call i32 @virtio_gpu_array_lock_resv(ptr noundef nonnull %call59) #6
  %28 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state2, align 4
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_w, align 4
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 7
  %32 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %crtc_h, align 4
  %fence = getelementptr inbounds %struct.virtio_gpu_framebuffer, ptr %17, i32 0, i32 1
  %34 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fence, align 8
  tail call void @virtio_gpu_cmd_transfer_to_host_2d(ptr noundef %9, i64 noundef 0, i32 noundef %31, i32 noundef %33, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %call59, ptr noundef %35) #6
  tail call void @virtio_gpu_notify(ptr noundef %9) #6
  %36 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fence, align 8
  %call.i = tail call i32 @dma_fence_wait_timeout(ptr noundef %37, i1 noundef zeroext true, i32 noundef 2147483647) #6
  %38 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fence, align 8
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end62.dma_fence_put.exit_crit_edge, label %if.then.i

if.end62.dma_fence_put.exit_crit_edge:            ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end62
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %39, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #6
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !32

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #6
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @dma_fence_release(ptr noundef %refcount.i) #6
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end62.dma_fence_put.exit_crit_edge
  %41 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %fence, align 8
  br label %if.end74

if.end74:                                         ; preds = %dma_fence_put.exit, %land.lhs.true54.if.end74_crit_edge, %land.lhs.true.if.end74_crit_edge, %if.end51.if.end74_crit_edge, %if.end39.if.end74_crit_edge
  %handle.0201 = phi i32 [ %21, %dma_fence_put.exit ], [ %21, %land.lhs.true54.if.end74_crit_edge ], [ %21, %land.lhs.true.if.end74_crit_edge ], [ %21, %if.end51.if.end74_crit_edge ], [ 0, %if.end39.if.end74_crit_edge ]
  %42 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state2, align 4
  %fb76 = getelementptr inbounds %struct.drm_plane_state, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %fb76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fb76, align 4
  %fb77 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %46 = ptrtoint ptr %fb77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fb77, align 4
  %cmp78.not = icmp eq ptr %45, %47
  %crtc_x119 = getelementptr inbounds %struct.drm_plane_state, ptr %43, i32 0, i32 4
  %48 = ptrtoint ptr %crtc_x119 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %crtc_x119, align 4
  %crtc_y121 = getelementptr inbounds %struct.drm_plane_state, ptr %43, i32 0, i32 5
  %50 = ptrtoint ptr %crtc_y121 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %crtc_y121, align 4
  br i1 %cmp78.not, label %if.else117, label %if.then79

if.then79:                                        ; preds = %if.end74
  %tobool84.not = icmp eq ptr %45, null
  br i1 %tobool84.not, label %if.then79.cond.end94_crit_edge, label %cond.true90

if.then79.cond.end94_crit_edge:                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end94

cond.true90:                                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  %hot_x = getelementptr inbounds %struct.drm_framebuffer, ptr %45, i32 0, i32 12
  %52 = ptrtoint ptr %hot_x to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hot_x, align 4
  %hot_y = getelementptr inbounds %struct.drm_framebuffer, ptr %45, i32 0, i32 13
  %54 = ptrtoint ptr %hot_y to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hot_y, align 8
  br label %cond.end94

cond.end94:                                       ; preds = %cond.true90, %if.then79.cond.end94_crit_edge
  %cond203 = phi i32 [ %53, %cond.true90 ], [ 0, %if.then79.cond.end94_crit_edge ]
  %cond95 = phi i32 [ %55, %cond.true90 ], [ 0, %if.then79.cond.end94_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %handle.0201, i32 noundef %49, i32 noundef %51, i32 noundef %cond203, i32 noundef %cond95) #6
  %cursor = getelementptr inbounds %struct.virtio_gpu_output, ptr %output.1, i32 0, i32 5
  %56 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 196608, ptr %cursor, align 8
  %57 = tail call i32 @llvm.bswap.i32(i32 %handle.0201)
  %resource_id = getelementptr inbounds %struct.virtio_gpu_output, ptr %output.1, i32 0, i32 5, i32 2
  %58 = ptrtoint ptr %resource_id to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %resource_id, align 8
  %59 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %state2, align 4
  %fb98 = getelementptr inbounds %struct.drm_plane_state, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %fb98 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fb98, align 4
  %tobool99.not = icmp eq ptr %62, null
  br i1 %tobool99.not, label %if.else111, label %if.then100

if.then100:                                       ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #8
  %hot_x103 = getelementptr inbounds %struct.drm_framebuffer, ptr %62, i32 0, i32 12
  %63 = ptrtoint ptr %hot_x103 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hot_x103, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %hot_x105 = getelementptr inbounds %struct.virtio_gpu_output, ptr %output.1, i32 0, i32 5, i32 3
  %66 = ptrtoint ptr %hot_x105 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %hot_x105, align 4
  %67 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %state2, align 4
  %fb107 = getelementptr inbounds %struct.drm_plane_state, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %fb107 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fb107, align 4
  %hot_y108 = getelementptr inbounds %struct.drm_framebuffer, ptr %70, i32 0, i32 13
  %71 = ptrtoint ptr %hot_y108 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hot_y108, align 8
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %hot_y110 = getelementptr inbounds %struct.virtio_gpu_output, ptr %output.1, i32 0, i32 5, i32 4
  %74 = ptrtoint ptr %hot_y110 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %hot_y110, align 8
  br label %if.end125

if.else111:                                       ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #8
  %hot_x113 = getelementptr inbounds %struct.virtio_gpu_output, ptr %output.1, i32 0, i32 5, i32 3
  %75 = ptrtoint ptr %hot_x113 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %hot_x113, align 4
  %hot_y115 = getelementptr inbounds %struct.virtio_gpu_output, ptr %output.1, i32 0, i32 5, i32 4
  %76 = ptrtoint ptr %hot_y115 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %hot_y115, align 8
  br label %if.end125

if.else117:                                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %49, i32 noundef %51) #6
  %cursor122 = getelementptr inbounds %struct.virtio_gpu_output, ptr %output.1, i32 0, i32 5
  %77 = ptrtoint ptr %cursor122 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 16973824, ptr %cursor122, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.else117, %if.else111, %if.then100
  %78 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %state2, align 4
  %crtc_x127 = getelementptr inbounds %struct.drm_plane_state, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %crtc_x127 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %crtc_x127, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %x = getelementptr inbounds %struct.virtio_gpu_output, ptr %output.1, i32 0, i32 5, i32 1, i32 1
  %83 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %x, align 4
  %84 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %state2, align 4
  %crtc_y130 = getelementptr inbounds %struct.drm_plane_state, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %crtc_y130 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %crtc_y130, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %y = getelementptr inbounds %struct.virtio_gpu_output, ptr %output.1, i32 0, i32 5, i32 1, i32 2
  %89 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %y, align 8
  tail call void @virtio_gpu_cursor_ping(ptr noundef %9, ptr noundef nonnull %output.1) #6
  br label %cleanup133

cleanup133:                                       ; preds = %if.end125, %if.then58.cleanup133_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtio_gpu_fence_alloc(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtio_gpu_array_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_array_add_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_array_lock_resv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_transfer_to_host_2d(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cursor_ping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_primary_plane_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %rect = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %6 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rect) #6
  %10 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 1
  %11 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 2
  %12 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 3
  %state2 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %13 = call ptr @memset(ptr %rect, i32 255, i32 16)
  %14 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state2, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %17, null
  %add.ptr = getelementptr i8, ptr %17, i32 -8
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  %crtc5 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %crtc5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtc5, align 4
  %tobool6.not = icmp eq ptr %19, null
  %add.ptr11 = getelementptr i8, ptr %19, i32 -8
  %output.1 = select i1 %tobool6.not, ptr %spec.select, ptr %add.ptr11
  %tobool13.not = icmp eq ptr %output.1, null
  br i1 %tobool13.not, label %do.end, label %if.end39, !prof !34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end39:                                         ; preds = %entry
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fb, align 4
  %tobool41.not = icmp eq ptr %21, null
  br i1 %tobool41.not, label %if.end39.if.then45_crit_edge, label %lor.lhs.false

if.end39.if.then45_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

lor.lhs.false:                                    ; preds = %if.end39
  %state43 = getelementptr inbounds %struct.virtio_gpu_output, ptr %output.1, i32 0, i32 1, i32 22
  %22 = ptrtoint ptr %state43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state43, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %active, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool44.not = icmp eq i8 %25, 0
  br i1 %tobool44.not, label %lor.lhs.false.if.then45_crit_edge, label %if.end49

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %if.end39.if.then45_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3) #6
  %26 = ptrtoint ptr %output.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %output.1, align 8
  %28 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state2, align 4
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %src_w, align 4
  %shr = lshr i32 %31, 16
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 10
  %32 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_h, align 4
  %shr48 = lshr i32 %33, 16
  tail call void @virtio_gpu_cmd_set_scanout(ptr noundef %9, i32 noundef %27, i32 noundef 0, i32 noundef %shr, i32 noundef %shr48, i32 noundef 0, i32 noundef 0) #6
  tail call void @virtio_gpu_notify(ptr noundef %9) #6
  br label %cleanup

if.end49:                                         ; preds = %lor.lhs.false
  %call51 = call zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef %5, ptr noundef %15, ptr noundef nonnull %rect) #6
  br i1 %call51, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  %34 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %state2, align 4
  %fb56 = getelementptr inbounds %struct.drm_plane_state, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %fb56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fb56, align 4
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %obj, align 4
  %dumb = getelementptr inbounds %struct.virtio_gpu_object, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dumb to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dumb, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool59.not = icmp eq i8 %41, 0
  br i1 %tobool59.not, label %if.end53.if.end62_crit_edge, label %if.then60

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then60:                                        ; preds = %if.end53
  %42 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %11, align 4
  %44 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rect, align 4
  %46 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %12, align 4
  %48 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %10, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %37, i32 0, i32 4
  %50 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %format.i, align 8
  %52 = getelementptr inbounds %struct.drm_format_info, ptr %51, i32 0, i32 3
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 2
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %37, i32 0, i32 6
  %55 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pitches.i, align 8
  %call.i = call ptr @virtio_gpu_array_alloc(i32 noundef 1) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then60.if.end62_crit_edge, label %if.end.i

if.then60.if.end62_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.end.i:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i8 %54 to i32
  %mul.i = mul i32 %45, %conv.i
  %mul8.i = mul i32 %56, %49
  %add.i = add i32 %mul.i, %mul8.i
  %sub1.i = sub i32 %47, %49
  %sub.i = sub i32 %43, %45
  call void @virtio_gpu_array_add_obj(ptr noundef nonnull %call.i, ptr noundef %39) #6
  %conv10.i = zext i32 %add.i to i64
  call void @virtio_gpu_cmd_transfer_to_host_2d(ptr noundef %9, i64 noundef %conv10.i, i32 noundef %sub.i, i32 noundef %sub1.i, i32 noundef %45, i32 noundef %49, ptr noundef nonnull %call.i, ptr noundef null) #6
  br label %if.end62

if.end62:                                         ; preds = %if.end.i, %if.then60.if.end62_crit_edge, %if.end53.if.end62_crit_edge
  %57 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %state2, align 4
  %fb64 = getelementptr inbounds %struct.drm_plane_state, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %fb64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fb64, align 4
  %fb65 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %61 = ptrtoint ptr %fb65 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fb65, align 4
  %cmp.not = icmp eq ptr %60, %62
  br i1 %cmp.not, label %lor.lhs.false66, label %if.end62.if.then86_crit_edge

if.end62.if.then86_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86

lor.lhs.false66:                                  ; preds = %if.end62
  %src_w68 = getelementptr inbounds %struct.drm_plane_state, ptr %58, i32 0, i32 11
  %63 = ptrtoint ptr %src_w68 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %src_w68, align 4
  %src_w69 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %65 = ptrtoint ptr %src_w69 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %src_w69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp70.not = icmp eq i32 %64, %66
  br i1 %cmp70.not, label %lor.lhs.false71, label %lor.lhs.false66.if.then86_crit_edge

lor.lhs.false66.if.then86_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86

lor.lhs.false71:                                  ; preds = %lor.lhs.false66
  %src_h73 = getelementptr inbounds %struct.drm_plane_state, ptr %58, i32 0, i32 10
  %67 = ptrtoint ptr %src_h73 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %src_h73, align 4
  %src_h74 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %69 = ptrtoint ptr %src_h74 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %src_h74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp75.not = icmp eq i32 %68, %70
  br i1 %cmp75.not, label %lor.lhs.false76, label %lor.lhs.false71.if.then86_crit_edge

lor.lhs.false71.if.then86_crit_edge:              ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86

lor.lhs.false76:                                  ; preds = %lor.lhs.false71
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %58, i32 0, i32 8
  %71 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %src_x, align 4
  %src_x78 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %73 = ptrtoint ptr %src_x78 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %src_x78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp79.not = icmp eq i32 %72, %74
  br i1 %cmp79.not, label %lor.lhs.false80, label %lor.lhs.false76.if.then86_crit_edge

lor.lhs.false76.if.then86_crit_edge:              ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86

lor.lhs.false80:                                  ; preds = %lor.lhs.false76
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %58, i32 0, i32 9
  %75 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %src_y, align 4
  %src_y82 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %77 = ptrtoint ptr %src_y82 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %src_y82, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp83.not = icmp eq i32 %76, %78
  br i1 %cmp83.not, label %lor.lhs.false84, label %lor.lhs.false80.if.then86_crit_edge

lor.lhs.false80.if.then86_crit_edge:              ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86

lor.lhs.false84:                                  ; preds = %lor.lhs.false80
  %needs_modeset = getelementptr inbounds %struct.virtio_gpu_output, ptr %output.1, i32 0, i32 9
  %79 = ptrtoint ptr %needs_modeset to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %needs_modeset, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool85.not = icmp eq i8 %80, 0
  br i1 %tobool85.not, label %lor.lhs.false84.if.end138_crit_edge, label %lor.lhs.false84.if.then86_crit_edge

lor.lhs.false84.if.then86_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86

lor.lhs.false84.if.end138_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

if.then86:                                        ; preds = %lor.lhs.false84.if.then86_crit_edge, %lor.lhs.false80.if.then86_crit_edge, %lor.lhs.false76.if.then86_crit_edge, %lor.lhs.false71.if.then86_crit_edge, %lor.lhs.false66.if.then86_crit_edge, %if.end62.if.then86_crit_edge
  %needs_modeset87 = getelementptr inbounds %struct.virtio_gpu_output, ptr %output.1, i32 0, i32 9
  %81 = ptrtoint ptr %needs_modeset87 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %needs_modeset87, align 4
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %39, i32 0, i32 1
  %82 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hw_res_handle, align 8
  %84 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %state2, align 4
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %crtc_w, align 4
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %85, i32 0, i32 7
  %88 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %crtc_h, align 4
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %85, i32 0, i32 4
  %90 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %crtc_x, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %85, i32 0, i32 5
  %92 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %crtc_y, align 4
  %src_w93 = getelementptr inbounds %struct.drm_plane_state, ptr %85, i32 0, i32 11
  %94 = ptrtoint ptr %src_w93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %src_w93, align 4
  %shr94 = lshr i32 %95, 16
  %src_h96 = getelementptr inbounds %struct.drm_plane_state, ptr %85, i32 0, i32 10
  %96 = ptrtoint ptr %src_h96 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %src_h96, align 4
  %shr97 = lshr i32 %97, 16
  %src_x99 = getelementptr inbounds %struct.drm_plane_state, ptr %85, i32 0, i32 8
  %98 = ptrtoint ptr %src_x99 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %src_x99, align 4
  %shr100 = lshr i32 %99, 16
  %src_y102 = getelementptr inbounds %struct.drm_plane_state, ptr %85, i32 0, i32 9
  %100 = ptrtoint ptr %src_y102 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %src_y102, align 4
  %shr103 = lshr i32 %101, 16
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %83, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %shr94, i32 noundef %shr97, i32 noundef %shr100, i32 noundef %shr103) #6
  %host3d_blob = getelementptr inbounds %struct.virtio_gpu_object, ptr %39, i32 0, i32 4
  %102 = ptrtoint ptr %host3d_blob to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %host3d_blob, align 2, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool104.not = icmp eq i8 %103, 0
  br i1 %tobool104.not, label %lor.lhs.false105, label %if.then86.if.then107_crit_edge

if.then86.if.then107_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then107

lor.lhs.false105:                                 ; preds = %if.then86
  %guest_blob = getelementptr inbounds %struct.virtio_gpu_object, ptr %39, i32 0, i32 5
  %104 = ptrtoint ptr %guest_blob to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %guest_blob, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool106.not = icmp eq i8 %105, 0
  br i1 %tobool106.not, label %if.else, label %lor.lhs.false105.if.then107_crit_edge

lor.lhs.false105.if.then107_crit_edge:            ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then107

if.then107:                                       ; preds = %lor.lhs.false105.if.then107_crit_edge, %if.then86.if.then107_crit_edge
  %106 = ptrtoint ptr %output.1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %output.1, align 8
  %108 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %state2, align 4
  %fb110 = getelementptr inbounds %struct.drm_plane_state, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %fb110 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fb110, align 4
  %src_w112 = getelementptr inbounds %struct.drm_plane_state, ptr %109, i32 0, i32 11
  %112 = ptrtoint ptr %src_w112 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %src_w112, align 4
  %shr113 = lshr i32 %113, 16
  %src_h115 = getelementptr inbounds %struct.drm_plane_state, ptr %109, i32 0, i32 10
  %114 = ptrtoint ptr %src_h115 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %src_h115, align 4
  %shr116 = lshr i32 %115, 16
  %src_x118 = getelementptr inbounds %struct.drm_plane_state, ptr %109, i32 0, i32 8
  %116 = ptrtoint ptr %src_x118 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %src_x118, align 4
  %shr119 = lshr i32 %117, 16
  %src_y121 = getelementptr inbounds %struct.drm_plane_state, ptr %109, i32 0, i32 9
  %118 = ptrtoint ptr %src_y121 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %src_y121, align 4
  %shr122 = lshr i32 %119, 16
  call void @virtio_gpu_cmd_set_scanout_blob(ptr noundef %9, i32 noundef %107, ptr noundef %39, ptr noundef %111, i32 noundef %shr113, i32 noundef %shr116, i32 noundef %shr119, i32 noundef %shr122) #6
  br label %if.end138

if.else:                                          ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %output.1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %output.1, align 8
  %122 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %hw_res_handle, align 8
  %124 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %state2, align 4
  %src_w126 = getelementptr inbounds %struct.drm_plane_state, ptr %125, i32 0, i32 11
  %126 = ptrtoint ptr %src_w126 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %src_w126, align 4
  %shr127 = lshr i32 %127, 16
  %src_h129 = getelementptr inbounds %struct.drm_plane_state, ptr %125, i32 0, i32 10
  %128 = ptrtoint ptr %src_h129 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %src_h129, align 4
  %shr130 = lshr i32 %129, 16
  %src_x132 = getelementptr inbounds %struct.drm_plane_state, ptr %125, i32 0, i32 8
  %130 = ptrtoint ptr %src_x132 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %src_x132, align 4
  %shr133 = lshr i32 %131, 16
  %src_y135 = getelementptr inbounds %struct.drm_plane_state, ptr %125, i32 0, i32 9
  %132 = ptrtoint ptr %src_y135 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %src_y135, align 4
  %shr136 = lshr i32 %133, 16
  call void @virtio_gpu_cmd_set_scanout(ptr noundef %9, i32 noundef %121, i32 noundef %123, i32 noundef %shr127, i32 noundef %shr130, i32 noundef %shr133, i32 noundef %shr136) #6
  br label %if.end138

if.end138:                                        ; preds = %if.else, %if.then107, %lor.lhs.false84.if.end138_crit_edge
  %134 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rect, align 4
  %136 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %10, align 4
  %138 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %11, align 4
  %sub = sub i32 %139, %135
  %140 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %12, align 4
  %sub141 = sub i32 %141, %137
  %142 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %143, i32 0, i32 5
  %144 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev_private.i, align 4
  %146 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %state2, align 4
  %fb.i203 = getelementptr inbounds %struct.drm_plane_state, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %fb.i203 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %fb.i203, align 4
  %obj.i204 = getelementptr inbounds %struct.drm_framebuffer, ptr %149, i32 0, i32 15
  %150 = ptrtoint ptr %obj.i204 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %obj.i204, align 4
  %fence.i = getelementptr inbounds %struct.virtio_gpu_framebuffer, ptr %149, i32 0, i32 1
  %152 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %fence.i, align 8
  %tobool.not.i205 = icmp eq ptr %153, null
  br i1 %tobool.not.i205, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end138
  %call.i206 = call ptr @virtio_gpu_array_alloc(i32 noundef 1) #6
  %tobool5.not.i = icmp eq ptr %call.i206, null
  br i1 %tobool5.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i207

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i207:                                      ; preds = %if.then.i
  %154 = ptrtoint ptr %obj.i204 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %obj.i204, align 4
  call void @virtio_gpu_array_add_obj(ptr noundef nonnull %call.i206, ptr noundef %155) #6
  %call10.i = call i32 @virtio_gpu_array_lock_resv(ptr noundef nonnull %call.i206) #6
  %hw_res_handle.i = getelementptr inbounds %struct.virtio_gpu_object, ptr %151, i32 0, i32 1
  %156 = ptrtoint ptr %hw_res_handle.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %hw_res_handle.i, align 8
  %158 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %fence.i, align 8
  call void @virtio_gpu_cmd_resource_flush(ptr noundef %145, i32 noundef %157, i32 noundef %135, i32 noundef %137, i32 noundef %sub, i32 noundef %sub141, ptr noundef nonnull %call.i206, ptr noundef %159) #6
  call void @virtio_gpu_notify(ptr noundef %145) #6
  %160 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %fence.i, align 8
  %call14.i = call i32 @dma_fence_wait_timeout(ptr noundef %161, i1 noundef zeroext true, i32 noundef 5) #6
  %162 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %fence.i, align 8
  %tobool.not.i.i = icmp eq ptr %163, null
  br i1 %tobool.not.i.i, label %if.end.i207.dma_fence_put.exit.i_crit_edge, label %if.then.i.i

if.end.i207.dma_fence_put.exit.i_crit_edge:       ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_put.exit.i

if.then.i.i:                                      ; preds = %if.end.i207
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %163, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #6
  %164 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %164, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !32

if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #6
  br label %dma_fence_put.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  call void @dma_fence_release(ptr noundef %refcount.i.i) #6
  br label %dma_fence_put.exit.i

dma_fence_put.exit.i:                             ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge, %if.end.i207.dma_fence_put.exit.i_crit_edge
  %165 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %fence.i, align 8
  br label %cleanup

if.else.i:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  %hw_res_handle18.i = getelementptr inbounds %struct.virtio_gpu_object, ptr %151, i32 0, i32 1
  %166 = ptrtoint ptr %hw_res_handle18.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %hw_res_handle18.i, align 8
  call void @virtio_gpu_cmd_resource_flush(ptr noundef %145, i32 noundef %167, i32 noundef %135, i32 noundef %137, i32 noundef %sub, i32 noundef %sub141, ptr noundef null, ptr noundef null) #6
  call void @virtio_gpu_notify(ptr noundef %145) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %dma_fence_put.exit.i, %if.then.i.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.then45, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rect) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_set_scanout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_set_scanout_blob(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_resource_flush(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_plane_destroy(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_plane_cleanup(ptr noundef %plane) #6
  tail call void @kfree(ptr noundef %plane) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/virtio/virtgpu_plane.c", i32 66, i32 2}
!2 = !{ptr @virtio_gpu_cursor_formats, !3, !"virtio_gpu_cursor_formats", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/virtio/virtgpu_plane.c", i32 37, i32 23}
!4 = !{ptr @virtio_gpu_cursor_helper_funcs, !5, !"virtio_gpu_cursor_helper_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/virtio/virtgpu_plane.c", i32 367, i32 44}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/virtio/virtgpu_plane.c", i32 331, i32 3}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/virtio/virtgpu_plane.c", i32 349, i32 3}
!10 = !{ptr @virtio_gpu_formats, !11, !"virtio_gpu_formats", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/virtio/virtgpu_plane.c", i32 33, i32 23}
!12 = !{ptr @virtio_gpu_primary_helper_funcs, !13, !"virtio_gpu_primary_helper_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/virtio/virtgpu_plane.c", i32 360, i32 44}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/virtio/virtgpu_plane.c", i32 185, i32 3}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/virtio/virtgpu_plane.c", i32 208, i32 3}
!18 = !{ptr @virtio_gpu_plane_funcs, !19, !"virtio_gpu_plane_funcs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/virtio/virtgpu_plane.c", i32 76, i32 37}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i8 0, i8 2}
!30 = !{i64 2148497684}
!31 = !{i64 2148412136, i64 2148412168, i64 2148412197, i64 2148412231, i64 2148412262, i64 2148412285}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2150145835}
!34 = !{!"branch_weights", i32 1, i32 2000}
