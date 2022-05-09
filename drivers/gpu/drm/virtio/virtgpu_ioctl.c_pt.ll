; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/virtio/virtgpu_ioctl.c_pt.bc'
source_filename = "../drivers/gpu/drm/virtio/virtgpu_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
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
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.virtio_gpu_fpriv = type { i32, i32, i8, i32, i64, i64, %struct.mutex }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.virtio_gpu_fence_driver = type { %struct.atomic64_t, i64, i64, %struct.list_head, %struct.spinlock }
%struct.atomic64_t = type { i64 }
%struct.virtio_shm_region = type { i64, i64 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.drm_virtgpu_map = type { i64, i32, i32 }
%struct.drm_virtgpu_execbuffer = type { i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.79, i64, i64, i32, %struct.kref, i32 }
%union.anon.79 = type { i64 }
%struct.drm_virtgpu_getparam = type { i64, i64 }
%struct.virtio_gpu_object_params = type { i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_virtgpu_resource_create = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.drm_virtgpu_resource_info = type { i32, i32, i32, i32 }
%struct.drm_virtgpu_3d_transfer_from_host = type { i32, %struct.drm_virtgpu_3d_box, i32, i32, i32, i32 }
%struct.drm_virtgpu_3d_box = type { i32, i32, i32, i32, i32, i32 }
%struct.virtio_gpu_object_array = type { %struct.ww_acquire_ctx, %struct.list_head, i32, i32, [0 x ptr] }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.drm_virtgpu_3d_transfer_to_host = type { i32, %struct.drm_virtgpu_3d_box, i32, i32, i32, i32 }
%struct.drm_virtgpu_3d_wait = type { i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_virtgpu_get_caps = type { i32, i32, i64, i32, i32 }
%struct.virtio_gpu_drv_capset = type { i32, i32, i32 }
%struct.virtio_gpu_drv_cap_cache = type { %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t }
%struct.drm_virtgpu_resource_create_blob = type { i32, i32, i32, i32, i64, i32, i32, i64, i64 }
%struct.drm_virtgpu_context_init = type { i32, i32, i64 }
%struct.drm_virtgpu_context_set_param = type { i64, i64 }
%struct.virtio_gpu_fence_event = type { %struct.drm_pending_event, %struct.drm_event }
%struct.drm_pending_event = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.drm_event = type { i32, i32 }
%struct.virtio_gpu_fence = type { %struct.dma_fence, i32, i64, i8, ptr, ptr, %struct.list_head }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VIRTGPU_MAP\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VIRTGPU_EXECBUFFER\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VIRTGPU_GETPARAM\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VIRTGPU_RESOURCE_CREATE\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VIRTGPU_RESOURCE_INFO\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VIRTGPU_TRANSFER_FROM_HOST\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VIRTGPU_TRANSFER_TO_HOST\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VIRTGPU_WAIT\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VIRTGPU_GET_CAPS\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VIRTGPU_RESOURCE_CREATE_BLOB\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VIRTGPU_CONTEXT_INIT\00", [43 x i8] zeroinitializer }, align 32
@virtio_gpu_ioctls = dso_local global { [12 x %struct.drm_ioctl_desc], [32 x i8] } { [12 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667583, i32 32, ptr @virtio_gpu_map_ioctl, ptr @.str }, %struct.drm_ioctl_desc { i32 -1071094718, i32 32, ptr @virtio_gpu_execbuffer_ioctl, ptr @.str.1 }, %struct.drm_ioctl_desc { i32 -1072667581, i32 32, ptr @virtio_gpu_getparam_ioctl, ptr @.str.2 }, %struct.drm_ioctl_desc { i32 -1070046140, i32 32, ptr @virtio_gpu_resource_create_ioctl, ptr @.str.3 }, %struct.drm_ioctl_desc { i32 -1072667579, i32 32, ptr @virtio_gpu_resource_info_ioctl, ptr @.str.4 }, %struct.drm_ioctl_desc { i32 -1070832570, i32 32, ptr @virtio_gpu_transfer_from_host_ioctl, ptr @.str.5 }, %struct.drm_ioctl_desc { i32 -1070832569, i32 32, ptr @virtio_gpu_transfer_to_host_ioctl, ptr @.str.6 }, %struct.drm_ioctl_desc { i32 -1073191864, i32 32, ptr @virtio_gpu_wait_ioctl, ptr @.str.7 }, %struct.drm_ioctl_desc { i32 -1072143287, i32 32, ptr @virtio_gpu_get_caps_ioctl, ptr @.str.8 }, %struct.drm_ioctl_desc { i32 -1070570422, i32 32, ptr @virtio_gpu_resource_create_blob_ioctl, ptr @.str.9 }, %struct.drm_ioctl_desc { i32 -1072667573, i32 32, ptr @virtio_gpu_context_init_ioctl, ptr @.str.10 }], [32 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/virtio/virtgpu_ioctl.c\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 64, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 840, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 843, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 846, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 849, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 853, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 859, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 862, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 866, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 869, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 872, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 876, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"virtio_gpu_ioctls\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 839, i32 23 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 230, i32 6 }
@___asan_gen_.59 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 214, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 156, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [42 x i8] c"../drivers/gpu/drm/virtio/virtgpu_ioctl.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 587, i32 8 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @virtio_gpu_ioctls, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_ioctls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_create_context(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  %dbgname.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %context_lock = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %context_lock, i32 noundef 0) #10
  %context_created = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %context_created to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %context_created, align 8, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dbgname.i) #10
  %6 = call ptr @memset(ptr %dbgname.i, i32 255, i32 16)
  %7 = tail call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %call1.i = call ptr @__get_task_comm(ptr noundef nonnull %dbgname.i, i32 noundef 16, ptr noundef %10) #10
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 8
  %context_init.i = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %context_init.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %context_init.i, align 4
  %call3.i = call i32 @strlen(ptr noundef nonnull %dbgname.i) #13
  call void @virtio_gpu_cmd_context_create(ptr noundef %1, i32 noundef %12, i32 noundef %14, i32 noundef %call3.i, ptr noundef nonnull %dbgname.i) #10
  %15 = ptrtoint ptr %context_created to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %context_created, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dbgname.i) #10
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %entry.out_unlock_crit_edge
  call void @mutex_unlock(ptr noundef %context_lock) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtio_gpu_create_context_locked(ptr noundef %vgdev, ptr nocapture noundef %vfpriv) unnamed_addr #0 align 64 {
entry:
  %dbgname = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dbgname) #10
  %0 = call ptr @memset(ptr %dbgname, i32 255, i32 16)
  %1 = tail call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %call1 = call ptr @__get_task_comm(ptr noundef nonnull %dbgname, i32 noundef 16, ptr noundef %4) #10
  %5 = ptrtoint ptr %vfpriv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vfpriv, align 8
  %context_init = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %vfpriv, i32 0, i32 1
  %7 = ptrtoint ptr %context_init to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %context_init, align 4
  %call3 = call i32 @strlen(ptr noundef nonnull %dbgname) #14
  call void @virtio_gpu_cmd_context_create(ptr noundef %vgdev, i32 noundef %6, i32 noundef %8, i32 noundef %call3, ptr noundef nonnull %dbgname) #10
  %context_created = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %vfpriv, i32 0, i32 2
  %9 = ptrtoint ptr %context_created to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %context_created, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dbgname) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_map_ioctl(ptr nocapture noundef readonly %dev, ptr noundef %data, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %ddev = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 4
  %handle = getelementptr inbounds %struct.drm_virtgpu_map, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 8
  %call = tail call i32 @virtio_gpu_mode_dumb_mmap(ptr noundef %file, ptr noundef %3, i32 noundef %5, ptr noundef %data) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_execbuffer_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %fence_fd = getelementptr inbounds %struct.drm_virtgpu_execbuffer, ptr %data, i32 0, i32 5
  %4 = ptrtoint ptr %fence_fd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fence_fd, align 4
  %context = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %context, align 8
  %has_virgl_3d = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %has_virgl_3d to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_virgl_3d, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %entry.cleanup121_crit_edge, label %if.end

entry.cleanup121_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup121

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %tobool2.not = icmp ult i32 %11, 8
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup121_crit_edge

if.end.cleanup121_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup121

if.end4:                                          ; preds = %if.end
  %and6 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end19_crit_edge, label %if.then8

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then8:                                         ; preds = %if.end4
  %ring_idx9 = getelementptr inbounds %struct.drm_virtgpu_execbuffer, ptr %data, i32 0, i32 6
  %12 = ptrtoint ptr %ring_idx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring_idx9, align 8
  %num_rings = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_rings, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp10.not = icmp ult i32 %13, %15
  br i1 %cmp10.not, label %if.end13, label %if.then8.cleanup121_crit_edge

if.then8.cleanup121_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup121

if.end13:                                         ; preds = %if.then8
  %base_fence_ctx = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %base_fence_ctx to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %base_fence_ctx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool14.not = icmp eq i64 %17, 0
  br i1 %tobool14.not, label %if.end13.cleanup121_crit_edge, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end13.cleanup121_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup121

if.end19:                                         ; preds = %if.end13.if.end19_crit_edge, %if.end4.if.end19_crit_edge
  %fence_ctx.0 = phi i64 [ %7, %if.end4.if.end19_crit_edge ], [ %17, %if.end13.if.end19_crit_edge ]
  %ring_idx.0 = phi i32 [ 0, %if.end4.if.end19_crit_edge ], [ %13, %if.end13.if.end19_crit_edge ]
  %18 = ptrtoint ptr %fence_fd to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %fence_fd, align 4
  tail call void @virtio_gpu_create_context(ptr noundef %dev, ptr noundef %file)
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data, align 8
  %and22 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end19.if.end37_crit_edge, label %if.then24

if.end19.if.end37_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then24:                                        ; preds = %if.end19
  %call = tail call ptr @sync_file_get_fence(i32 noundef %5) #10
  %tobool25.not = icmp eq ptr %call, null
  br i1 %tobool25.not, label %if.then24.cleanup121_crit_edge, label %if.end27

if.then24.cleanup121_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup121

if.end27:                                         ; preds = %if.then24
  %21 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %context, align 8
  %call30 = tail call zeroext i1 @dma_fence_match_context(ptr noundef nonnull %call, i64 noundef %22) #10
  br i1 %call30, label %if.end27.if.then.i200_crit_edge, label %if.then31

if.end27.if.then.i200_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i200

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @dma_fence_wait_timeout(ptr noundef nonnull %call, i1 noundef zeroext true, i32 noundef 2147483647) #10
  %23 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #10
  br label %if.then.i200

if.then.i200:                                     ; preds = %if.then31, %if.end27.if.then.i200_crit_edge
  %ret.0 = phi i32 [ 0, %if.end27.if.then.i200_crit_edge ], [ %23, %if.then31 ]
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !44
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !45
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i201, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !46

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i201:                                   ; preds = %if.then.i200
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !47
  tail call void @dma_fence_release(ptr noundef %refcount.i) #10, !callees !48
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i201, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool34.not = icmp eq i32 %ret.0, 0
  br i1 %tobool34.not, label %cleanup.if.end37_crit_edge, label %cleanup.cleanup121_crit_edge

cleanup.cleanup121_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup121

cleanup.if.end37_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end37:                                         ; preds = %cleanup.if.end37_crit_edge, %if.end19.if.end37_crit_edge
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data, align 8
  %and39 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.if.end47_crit_edge, label %if.then41

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then41:                                        ; preds = %if.end37
  %call42 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then41.cleanup121_crit_edge, label %if.then41.if.end47_crit_edge

if.then41.if.end47_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then41.cleanup121_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup121

if.end47:                                         ; preds = %if.then41.if.end47_crit_edge, %if.end37.if.end47_crit_edge
  %out_fence_fd.0 = phi i32 [ %call42, %if.then41.if.end47_crit_edge ], [ -1, %if.end37.if.end47_crit_edge ]
  %num_bo_handles = getelementptr inbounds %struct.drm_virtgpu_execbuffer, ptr %data, i32 0, i32 4
  %27 = ptrtoint ptr %num_bo_handles to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_bo_handles, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool48.not = icmp eq i32 %28, 0
  br i1 %tobool48.not, label %if.end47.if.end70_crit_edge, label %if.then49

if.end47.if.end70_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then49:                                        ; preds = %if.end47
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 4) #10
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %if.then49.out_unused_fd.thread_crit_edge, label %kvmalloc_array.exit, !prof !49

if.then49.out_unused_fd.thread_crit_edge:         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unused_fd.thread

kvmalloc_array.exit:                              ; preds = %if.then49
  %31 = extractvalue { i32, i1 } %29, 0
  %call.i.i202 = tail call noalias ptr @kvmalloc_node(i32 noundef %31, i32 noundef 3264, i32 noundef -1) #15
  %tobool52.not = icmp eq ptr %call.i.i202, null
  br i1 %tobool52.not, label %kvmalloc_array.exit.out_unused_fd.thread_crit_edge, label %if.end54

kvmalloc_array.exit.out_unused_fd.thread_crit_edge: ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unused_fd.thread

if.end54:                                         ; preds = %kvmalloc_array.exit
  %bo_handles58 = getelementptr inbounds %struct.drm_virtgpu_execbuffer, ptr %data, i32 0, i32 3
  %32 = ptrtoint ptr %bo_handles58 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %bo_handles58, align 8
  %conv59 = trunc i64 %33 to i32
  %34 = inttoptr i32 %conv59 to ptr
  %35 = ptrtoint ptr %num_bo_handles to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_bo_handles, align 8
  %mul = shl i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end54
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_unused_fd.thread_crit_edge, label %if.then27.i.i, !prof !46

land.rhs16.i.i.out_unused_fd.thread_crit_edge:    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unused_fd.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %out_unused_fd.thread

if.then.i.i.i:                                    ; preds = %if.end54
  tail call void @__check_object_size(ptr noundef nonnull %call.i.i202, i32 noundef %mul, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %37 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %34, i32 %mul, i32 -1226833920) #16, !srcloc !50
  %asmresult.i.i = extractvalue { i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !46

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i202, i32 noundef %mul) #10
  %38 = tail call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !51
  %and.i.i.i.i = and i32 %40, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i.i202, ptr noundef %34, i32 noundef %mul) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #10, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end64, label %if.then11.i.i, !prof !46

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i202, i32 %sub.i.i
  %41 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out_unused_fd.thread

if.end64:                                         ; preds = %if.end.i.i
  %42 = ptrtoint ptr %num_bo_handles to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_bo_handles, align 8
  %call66 = tail call ptr @virtio_gpu_array_from_handles(ptr noundef %file, ptr noundef nonnull %call.i.i202, i32 noundef %43) #10
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.end64.out_unused_fd.thread_crit_edge, label %if.end69

if.end64.out_unused_fd.thread_crit_edge:          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unused_fd.thread

if.end69:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree(ptr noundef nonnull %call.i.i202) #10
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end47.if.end70_crit_edge
  %buflist.0 = phi ptr [ %call66, %if.end69 ], [ null, %if.end47.if.end70_crit_edge ]
  %command = getelementptr inbounds %struct.drm_virtgpu_execbuffer, ptr %data, i32 0, i32 2
  %44 = ptrtoint ptr %command to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %command, align 8
  %conv77 = trunc i64 %45 to i32
  %46 = inttoptr i32 %conv77 to ptr
  %size = getelementptr inbounds %struct.drm_virtgpu_execbuffer, ptr %data, i32 0, i32 1
  %47 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size, align 4
  %call78 = tail call ptr @vmemdup_user(ptr noundef %46, i32 noundef %48) #10
  %cmp.i = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %call78 to i32
  br label %out_unused_fd

if.end82:                                         ; preds = %if.end70
  %tobool83.not = icmp eq ptr %buflist.0, null
  br i1 %tobool83.not, label %if.end82.if.end89_crit_edge, label %if.then84

if.end82.if.end89_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then84:                                        ; preds = %if.end82
  %call85 = tail call i32 @virtio_gpu_array_lock_resv(ptr noundef nonnull %buflist.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then84.if.end89_crit_edge, label %if.then84.out_memdup_crit_edge

if.then84.out_memdup_crit_edge:                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_memdup

if.then84.if.end89_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.end89:                                         ; preds = %if.then84.if.end89_crit_edge, %if.end82.if.end89_crit_edge
  %call90 = tail call ptr @virtio_gpu_fence_alloc(ptr noundef %1, i64 noundef %fence_ctx.0, i32 noundef %ring_idx.0) #10
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %if.end89.out_unresv_crit_edge, label %if.end93

if.end89.out_unresv_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unresv

if.end93:                                         ; preds = %if.end89
  %call94 = tail call fastcc i32 @virtio_gpu_fence_event_create(ptr noundef %dev, ptr noundef %file, ptr noundef nonnull %call90, i32 noundef %ring_idx.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end93.out_unresv_crit_edge

if.end93.out_unresv_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unresv

if.end97:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %out_fence_fd.0)
  %cmp98 = icmp sgt i32 %out_fence_fd.0, -1
  br i1 %cmp98, label %if.then100, label %if.end97.if.end108_crit_edge

if.end97.if.end108_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then100:                                       ; preds = %if.end97
  %call101 = tail call ptr @sync_file_create(ptr noundef nonnull %call90) #10
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @dma_fence_put(ptr noundef nonnull %call90)
  br label %out_unresv

if.end105:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %fence_fd to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %out_fence_fd.0, ptr %fence_fd, align 4
  %51 = ptrtoint ptr %call101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call101, align 4
  tail call void @fd_install(i32 noundef %out_fence_fd.0, ptr noundef %52) #10
  br label %if.end108

if.end108:                                        ; preds = %if.end105, %if.end97.if.end108_crit_edge
  %53 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size, align 4
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %3, align 8
  tail call void @virtio_gpu_cmd_submit(ptr noundef %1, ptr noundef %call78, i32 noundef %54, i32 noundef %56, ptr noundef %buflist.0, ptr noundef nonnull %call90) #10
  tail call fastcc void @dma_fence_put(ptr noundef nonnull %call90)
  tail call void @virtio_gpu_notify(ptr noundef %1) #10
  br label %cleanup121

out_unresv:                                       ; preds = %if.then103, %if.end93.out_unresv_crit_edge, %if.end89.out_unresv_crit_edge
  %ret.1 = phi i32 [ %call94, %if.end93.out_unresv_crit_edge ], [ -12, %if.then103 ], [ -12, %if.end89.out_unresv_crit_edge ]
  br i1 %tobool83.not, label %out_unresv.out_memdup_crit_edge, label %if.then112

out_unresv.out_memdup_crit_edge:                  ; preds = %out_unresv
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_memdup

if.then112:                                       ; preds = %out_unresv
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @virtio_gpu_array_unlock_resv(ptr noundef nonnull %buflist.0) #10
  br label %out_memdup

out_memdup:                                       ; preds = %if.then112, %out_unresv.out_memdup_crit_edge, %if.then84.out_memdup_crit_edge
  %ret.2 = phi i32 [ %call85, %if.then84.out_memdup_crit_edge ], [ %ret.1, %if.then112 ], [ %ret.1, %out_unresv.out_memdup_crit_edge ]
  tail call void @kvfree(ptr noundef %call78) #10
  br label %out_unused_fd

out_unused_fd.thread:                             ; preds = %if.end64.out_unused_fd.thread_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.out_unused_fd.thread_crit_edge, %kvmalloc_array.exit.out_unused_fd.thread_crit_edge, %if.then49.out_unused_fd.thread_crit_edge
  %ret.3.ph = phi i32 [ -2, %if.end64.out_unused_fd.thread_crit_edge ], [ -12, %kvmalloc_array.exit.out_unused_fd.thread_crit_edge ], [ -12, %if.then49.out_unused_fd.thread_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_unused_fd.thread_crit_edge ]
  %bo_handles.1.ph = phi ptr [ %call.i.i202, %if.end64.out_unused_fd.thread_crit_edge ], [ null, %kvmalloc_array.exit.out_unused_fd.thread_crit_edge ], [ null, %if.then49.out_unused_fd.thread_crit_edge ], [ %call.i.i202, %if.then11.i.i ], [ %call.i.i202, %if.then27.i.i ], [ %call.i.i202, %land.rhs16.i.i.out_unused_fd.thread_crit_edge ]
  tail call void @kvfree(ptr noundef %bo_handles.1.ph) #10
  br label %if.end116

out_unused_fd:                                    ; preds = %out_memdup, %if.then80
  %ret.3 = phi i32 [ %49, %if.then80 ], [ %ret.2, %out_memdup ]
  tail call void @kvfree(ptr noundef null) #10
  %tobool114.not = icmp eq ptr %buflist.0, null
  br i1 %tobool114.not, label %out_unused_fd.if.end116_crit_edge, label %if.then115

out_unused_fd.if.end116_crit_edge:                ; preds = %out_unused_fd
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then115:                                       ; preds = %out_unused_fd
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @virtio_gpu_array_put_free(ptr noundef nonnull %buflist.0) #10
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %out_unused_fd.if.end116_crit_edge, %out_unused_fd.thread
  %ret.3216 = phi i32 [ %ret.3.ph, %out_unused_fd.thread ], [ %ret.3, %if.then115 ], [ %ret.3, %out_unused_fd.if.end116_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %out_fence_fd.0)
  %cmp117 = icmp sgt i32 %out_fence_fd.0, -1
  br i1 %cmp117, label %if.then119, label %if.end116.cleanup121_crit_edge

if.end116.cleanup121_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup121

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @put_unused_fd(i32 noundef %out_fence_fd.0) #10
  br label %cleanup121

cleanup121:                                       ; preds = %if.then119, %if.end116.cleanup121_crit_edge, %if.end108, %if.then41.cleanup121_crit_edge, %cleanup.cleanup121_crit_edge, %if.then24.cleanup121_crit_edge, %if.end13.cleanup121_crit_edge, %if.then8.cleanup121_crit_edge, %if.end.cleanup121_crit_edge, %entry.cleanup121_crit_edge
  %retval.1 = phi i32 [ 0, %if.end108 ], [ %ret.0, %cleanup.cleanup121_crit_edge ], [ -38, %entry.cleanup121_crit_edge ], [ -22, %if.end.cleanup121_crit_edge ], [ -22, %if.then8.cleanup121_crit_edge ], [ -22, %if.end13.cleanup121_crit_edge ], [ %call42, %if.then41.cleanup121_crit_edge ], [ %ret.3216, %if.then119 ], [ %ret.3216, %if.end116.cleanup121_crit_edge ], [ -22, %if.then24.cleanup121_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_getparam_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i64 %3, label %entry.cleanup_crit_edge [
    i64 1, label %sw.bb
    i64 2, label %sw.bb2
    i64 3, label %sw.bb3
    i64 4, label %sw.bb6
    i64 5, label %sw.bb9
    i64 6, label %sw.bb12
    i64 7, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %has_virgl_3d = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %has_virgl_3d to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_virgl_3d, align 4, !range !43
  %6 = zext i8 %5 to i32
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %value, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %has_resource_blob = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %has_resource_blob to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_resource_blob, align 8, !range !43
  %11 = zext i8 %10 to i32
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %value, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %has_host_visible = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %has_host_visible to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_host_visible, align 1, !range !43
  %15 = zext i8 %14 to i32
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %value, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %has_resource_assign_uuid = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %has_resource_assign_uuid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_resource_assign_uuid, align 1, !range !43
  %19 = zext i8 %18 to i32
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %value, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %has_context_init = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 21
  %21 = ptrtoint ptr %has_context_init to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %has_context_init, align 2, !range !43
  %23 = zext i8 %22 to i32
  %24 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %value, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %capset_id_mask = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 30
  %25 = ptrtoint ptr %capset_id_mask to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %capset_id_mask, align 8
  %conv = trunc i64 %26 to i32
  %27 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %value, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb3, %sw.bb2, %sw.bb
  %value18 = getelementptr inbounds %struct.drm_virtgpu_getparam, ptr %data, i32 0, i32 1
  %28 = ptrtoint ptr %value18 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %value18, align 8
  %conv19 = trunc i64 %29 to i32
  %30 = inttoptr i32 %conv19 to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %sw.epilog.cleanup_crit_edge, label %if.end.i.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.epilog
  %31 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %30, i32 4, i32 -1226833920) #16, !srcloc !54
  %asmresult.i.i = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %value, i32 noundef 4) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %30, ptr noundef nonnull %value, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool20.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool20.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %sw.epilog.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_resource_create_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef %file) #0 align 64 {
entry:
  %qobj = alloca ptr, align 4
  %handle = alloca i32, align 4
  %params = alloca %struct.virtio_gpu_object_params, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qobj) #10
  %2 = ptrtoint ptr %qobj to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %qobj, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #10
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %handle, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %params) #10
  %4 = call ptr @memset(ptr %params, i32 0, i32 72)
  %has_virgl_3d = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %has_virgl_3d to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %has_virgl_3d, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @virtio_gpu_create_context(ptr noundef %dev, ptr noundef %file)
  %virgl = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 2
  %7 = ptrtoint ptr %virgl to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %virgl, align 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %target1 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 7
  %10 = ptrtoint ptr %target1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %target1, align 4
  %bind = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %bind to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bind, align 4
  %bind2 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 8
  %13 = ptrtoint ptr %bind2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %bind2, align 8
  %depth = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 5
  %14 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %depth, align 4
  %depth3 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 9
  %16 = ptrtoint ptr %depth3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %depth3, align 4
  %array_size = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 6
  %17 = ptrtoint ptr %array_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %array_size, align 4
  %array_size4 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 10
  %19 = ptrtoint ptr %array_size4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %array_size4, align 8
  %last_level = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 7
  %20 = ptrtoint ptr %last_level to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_level, align 4
  %last_level5 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 11
  %22 = ptrtoint ptr %last_level5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %last_level5, align 4
  %nr_samples = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 8
  %23 = ptrtoint ptr %nr_samples to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_samples, align 4
  %nr_samples6 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 12
  %25 = ptrtoint ptr %nr_samples6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %nr_samples6, align 8
  %flags = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 9
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %flags7 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 13
  %28 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %flags7, align 4
  br label %if.end26

if.else:                                          ; preds = %entry
  %depth8 = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 5
  %29 = ptrtoint ptr %depth8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %depth8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp = icmp ugt i32 %30, 1
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.else
  %nr_samples10 = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 8
  %31 = ptrtoint ptr %nr_samples10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_samples10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp11 = icmp ugt i32 %32, 1
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %last_level14 = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 7
  %33 = ptrtoint ptr %last_level14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %last_level14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp15 = icmp ugt i32 %34, 1
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp19.not = icmp eq i32 %36, 2
  br i1 %cmp19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %array_size22 = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 6
  %37 = ptrtoint ptr %array_size22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %array_size22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp23 = icmp ugt i32 %38, 1
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end21.if.end26_crit_edge, %if.then
  %format = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 1
  %39 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %format, align 4
  %format27 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 4
  %41 = ptrtoint ptr %format27 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %format27, align 8
  %width = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 3
  %42 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %width, align 4
  %width28 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 5
  %44 = ptrtoint ptr %width28 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %width28, align 4
  %height = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 4
  %45 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height, align 4
  %height29 = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 6
  %47 = ptrtoint ptr %height29 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %height29, align 8
  %size = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 12
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp32 = icmp eq i32 %49, 0
  %spec.select = select i1 %cmp32, i32 4096, i32 %49
  %50 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %spec.select, ptr %params, align 8
  %context = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 13, i32 2
  %51 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %context, align 8
  %call = tail call ptr @virtio_gpu_fence_alloc(ptr noundef %1, i64 noundef %52, i32 noundef 0) #10
  %tobool36.not = icmp eq ptr %call, null
  br i1 %tobool36.not, label %if.end26.cleanup_crit_edge, label %if.then.i

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end26
  %call39 = call i32 @virtio_gpu_object_create(ptr noundef %1, ptr noundef nonnull %params, ptr noundef nonnull %qobj, ptr noundef nonnull %call) #10
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !44
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %53 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !45
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !46

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !47
  call void @dma_fence_release(ptr noundef %refcount.i) #10, !callees !48
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %dma_fence_put.exit.cleanup_crit_edge, label %if.end42

dma_fence_put.exit.cleanup_crit_edge:             ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %dma_fence_put.exit
  %54 = ptrtoint ptr %qobj to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %qobj, align 4
  %call44 = call i32 @drm_gem_handle_create(ptr noundef %file, ptr noundef %55, ptr noundef nonnull %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  call void @drm_gem_object_release(ptr noundef %55) #10
  br label %cleanup

if.end47:                                         ; preds = %if.end42
  %tobool.not.i84 = icmp eq ptr %55, null
  br i1 %tobool.not.i84, label %if.end47.drm_gem_object_put.exit_crit_edge, label %if.then.i85

if.end47.drm_gem_object_put.exit_crit_edge:       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then.i85:                                      ; preds = %if.end47
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %55, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !44
  call void @llvm.prefetch.p0(ptr nonnull %55, i32 1, i32 3, i32 1) #10
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %55, ptr nonnull %55, i32 1, ptr nonnull elementtype(i32) %55) #10, !srcloc !45
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !46

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %55, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !47
  call void @drm_gem_object_free(ptr noundef nonnull %55) #10, !callees !48
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %if.end47.drm_gem_object_put.exit_crit_edge
  %57 = ptrtoint ptr %qobj to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %qobj, align 4
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hw_res_handle, align 8
  %res_handle = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 11
  %61 = ptrtoint ptr %res_handle to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %res_handle, align 4
  %62 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %handle, align 4
  %bo_handle = getelementptr inbounds %struct.drm_virtgpu_resource_create, ptr %data, i32 0, i32 10
  %64 = ptrtoint ptr %bo_handle to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %bo_handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %drm_gem_object_put.exit, %if.then46, %dma_fence_put.exit.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call44, %if.then46 ], [ 0, %drm_gem_object_put.exit ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ -12, %if.end26.cleanup_crit_edge ], [ %call39, %dma_fence_put.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %params) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qobj) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_resource_info_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %1) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %size2 = getelementptr inbounds %struct.drm_virtgpu_resource_info, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %size2, align 4
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_res_handle, align 8
  %res_handle = getelementptr inbounds %struct.drm_virtgpu_resource_info, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %res_handle to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %res_handle, align 4
  %host3d_blob = getelementptr inbounds %struct.virtio_gpu_object, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %host3d_blob to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %host3d_blob, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %guest_blob = getelementptr inbounds %struct.virtio_gpu_object, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %guest_blob to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %guest_blob, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then.i_crit_edge, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

lor.lhs.false.if.then.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %blob_mem = getelementptr inbounds %struct.virtio_gpu_object, ptr %call, i32 0, i32 6
  %12 = ptrtoint ptr %blob_mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blob_mem, align 8
  %blob_mem5 = getelementptr inbounds %struct.drm_virtgpu_resource_info, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %blob_mem5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %blob_mem5, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then4, %lor.lhs.false.if.then.i_crit_edge
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !44
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !45
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !46

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !47
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10, !callees !48
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_transfer_from_host_ioctl(ptr nocapture noundef readonly %dev, ptr noundef %data, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %offset1 = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_from_host, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset1, align 4
  %has_virgl_3d = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %has_virgl_3d to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_virgl_3d, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @virtio_gpu_create_context(ptr noundef %dev, ptr noundef %file)
  %call = tail call ptr @virtio_gpu_array_from_handles(ptr noundef %file, ptr noundef %data, i32 noundef 1) #10
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %objs7 = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %objs7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %objs7, align 4
  %guest_blob = getelementptr inbounds %struct.virtio_gpu_object, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %guest_blob to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %guest_blob, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %land.lhs.true

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end6
  %host3d_blob = getelementptr inbounds %struct.virtio_gpu_object, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %host3d_blob to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %host3d_blob, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  br i1 %tobool10.not, label %land.lhs.true.err_put_free_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true.err_put_free_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_free

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %host3d_blob13 = getelementptr inbounds %struct.virtio_gpu_object, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %host3d_blob13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %host3d_blob13, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true15:                                  ; preds = %if.end12
  %stride = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_from_host, ptr %data, i32 0, i32 4
  %16 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stride, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool16.not = icmp eq i32 %17, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %land.lhs.true15.err_put_free_crit_edge

land.lhs.true15.err_put_free_crit_edge:           ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_free

lor.lhs.false:                                    ; preds = %land.lhs.true15
  %layer_stride = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_from_host, ptr %data, i32 0, i32 5
  %18 = ptrtoint ptr %layer_stride to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %layer_stride, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool17.not = icmp eq i32 %19, 0
  br i1 %tobool17.not, label %lor.lhs.false.if.end19_crit_edge, label %lor.lhs.false.err_put_free_crit_edge

lor.lhs.false.err_put_free_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_free

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end19:                                         ; preds = %lor.lhs.false.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  %call20 = tail call i32 @virtio_gpu_array_lock_resv(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end24, label %if.end19.err_put_free_crit_edge

if.end19.err_put_free_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_free

if.end24:                                         ; preds = %if.end19
  %context = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 13, i32 2
  %20 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %context, align 8
  %call25 = tail call ptr @virtio_gpu_fence_alloc(ptr noundef %1, i64 noundef %21, i32 noundef 0) #10
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then27, label %if.then.i

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @virtio_gpu_array_unlock_resv(ptr noundef nonnull %call) #10
  br label %err_put_free

if.then.i:                                        ; preds = %if.end24
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 8
  %conv29 = zext i32 %5 to i64
  %level = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_from_host, ptr %data, i32 0, i32 2
  %24 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %level, align 4
  %stride30 = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_from_host, ptr %data, i32 0, i32 4
  %26 = ptrtoint ptr %stride30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stride30, align 4
  %layer_stride31 = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_from_host, ptr %data, i32 0, i32 5
  %28 = ptrtoint ptr %layer_stride31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %layer_stride31, align 4
  %box = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_from_host, ptr %data, i32 0, i32 1
  tail call void @virtio_gpu_cmd_transfer_from_host_3d(ptr noundef %1, i32 noundef %23, i64 noundef %conv29, i32 noundef %25, i32 noundef %27, i32 noundef %29, ptr noundef %box, ptr noundef nonnull %call, ptr noundef nonnull %call25) #10
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call25, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !44
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !45
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !46

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !47
  tail call void @dma_fence_release(ptr noundef %refcount.i) #10, !callees !48
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge
  tail call void @virtio_gpu_notify(ptr noundef %1) #10
  br label %cleanup

err_put_free:                                     ; preds = %if.then27, %if.end19.err_put_free_crit_edge, %lor.lhs.false.err_put_free_crit_edge, %land.lhs.true15.err_put_free_crit_edge, %land.lhs.true.err_put_free_crit_edge
  %ret.0 = phi i32 [ %call20, %if.end19.err_put_free_crit_edge ], [ -12, %if.then27 ], [ -22, %land.lhs.true.err_put_free_crit_edge ], [ -22, %lor.lhs.false.err_put_free_crit_edge ], [ -22, %land.lhs.true15.err_put_free_crit_edge ]
  tail call void @virtio_gpu_array_put_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %err_put_free, %dma_fence_put.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_put_free ], [ 0, %dma_fence_put.exit ], [ -38, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_transfer_to_host_ioctl(ptr nocapture noundef readonly %dev, ptr noundef %data, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %offset1 = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_to_host, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset1, align 4
  %call = tail call ptr @virtio_gpu_array_from_handles(ptr noundef %file, ptr noundef %data, i32 noundef 1) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %objs2 = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %objs2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %objs2, align 4
  %guest_blob = getelementptr inbounds %struct.virtio_gpu_object, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %guest_blob to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %guest_blob, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %host3d_blob = getelementptr inbounds %struct.virtio_gpu_object, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %host3d_blob to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %host3d_blob, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %land.lhs.true.err_put_free_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true.err_put_free_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_free

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %has_virgl_3d = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %has_virgl_3d to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_virgl_3d, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i32 %5 to i64
  %box = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_to_host, ptr %data, i32 0, i32 1
  %w = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_to_host, ptr %data, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %w, align 4
  %h = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_to_host, ptr %data, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %h, align 4
  %18 = ptrtoint ptr %box to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %box, align 4
  %y = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_to_host, ptr %data, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %y, align 4
  tail call void @virtio_gpu_cmd_transfer_to_host_2d(ptr noundef %1, i64 noundef %conv, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, ptr noundef nonnull %call, ptr noundef null) #10
  br label %if.end32

if.else:                                          ; preds = %if.end5
  tail call void @virtio_gpu_create_context(ptr noundef %dev, ptr noundef %file)
  %host3d_blob11 = getelementptr inbounds %struct.virtio_gpu_object, ptr %7, i32 0, i32 4
  %22 = ptrtoint ptr %host3d_blob11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %host3d_blob11, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool12.not = icmp eq i8 %23, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true13:                                  ; preds = %if.else
  %stride = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_to_host, ptr %data, i32 0, i32 4
  %24 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stride, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool14.not = icmp eq i32 %25, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %land.lhs.true13.err_put_free_crit_edge

land.lhs.true13.err_put_free_crit_edge:           ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_free

lor.lhs.false:                                    ; preds = %land.lhs.true13
  %layer_stride = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_to_host, ptr %data, i32 0, i32 5
  %26 = ptrtoint ptr %layer_stride to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %layer_stride, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool15.not = icmp eq i32 %27, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.end17_crit_edge, label %lor.lhs.false.err_put_free_crit_edge

lor.lhs.false.err_put_free_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_free

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %lor.lhs.false.if.end17_crit_edge, %if.else.if.end17_crit_edge
  %call18 = tail call i32 @virtio_gpu_array_lock_resv(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end22, label %if.end17.err_put_free_crit_edge

if.end17.err_put_free_crit_edge:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_free

if.end22:                                         ; preds = %if.end17
  %context = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 13, i32 2
  %28 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %context, align 8
  %call23 = tail call ptr @virtio_gpu_fence_alloc(ptr noundef %1, i64 noundef %29, i32 noundef 0) #10
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %err_unlock, label %if.end26

if.end26:                                         ; preds = %if.end22
  %tobool27.not = icmp eq ptr %3, null
  br i1 %tobool27.not, label %if.end26.if.then.i_crit_edge, label %cond.true

if.end26.if.then.i_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

cond.true:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %3, align 8
  br label %if.then.i

if.then.i:                                        ; preds = %cond.true, %if.end26.if.then.i_crit_edge
  %cond = phi i32 [ %31, %cond.true ], [ 0, %if.end26.if.then.i_crit_edge ]
  %conv28 = zext i32 %5 to i64
  %level = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_to_host, ptr %data, i32 0, i32 2
  %32 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %level, align 4
  %stride29 = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_to_host, ptr %data, i32 0, i32 4
  %34 = ptrtoint ptr %stride29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stride29, align 4
  %layer_stride30 = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_to_host, ptr %data, i32 0, i32 5
  %36 = ptrtoint ptr %layer_stride30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %layer_stride30, align 4
  %box31 = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_to_host, ptr %data, i32 0, i32 1
  tail call void @virtio_gpu_cmd_transfer_to_host_3d(ptr noundef %1, i32 noundef %cond, i64 noundef %conv28, i32 noundef %33, i32 noundef %35, i32 noundef %37, ptr noundef %box31, ptr noundef nonnull %call, ptr noundef nonnull %call23) #10
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call23, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !44
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !45
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end32_crit_edge, label %if.then10.i.i.i.i.i, !prof !46

if.end5.i.i.i.i.i.if.end32_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %if.end32

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !47
  tail call void @dma_fence_release(ptr noundef %refcount.i) #10, !callees !48
  br label %if.end32

if.end32:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end32_crit_edge, %if.then7
  tail call void @virtio_gpu_notify(ptr noundef %1) #10
  br label %cleanup

err_unlock:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @virtio_gpu_array_unlock_resv(ptr noundef nonnull %call) #10
  br label %err_put_free

err_put_free:                                     ; preds = %err_unlock, %if.end17.err_put_free_crit_edge, %lor.lhs.false.err_put_free_crit_edge, %land.lhs.true13.err_put_free_crit_edge, %land.lhs.true.err_put_free_crit_edge
  %ret.0 = phi i32 [ %call18, %if.end17.err_put_free_crit_edge ], [ -12, %err_unlock ], [ -22, %land.lhs.true.err_put_free_crit_edge ], [ -22, %lor.lhs.false.err_put_free_crit_edge ], [ -22, %land.lhs.true13.err_put_free_crit_edge ]
  tail call void @virtio_gpu_array_put_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %err_put_free, %if.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_put_free ], [ 0, %if.end32 ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_wait_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %1) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.drm_virtgpu_3d_wait, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %resv3 = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %resv3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv3, align 8
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call zeroext i1 @dma_resv_test_signaled(ptr noundef %5, i1 noundef zeroext true) #10
  %conv = zext i1 %call2 to i32
  br label %if.then.i

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @dma_resv_wait_timeout(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 1500) #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.else, %if.then1
  %ret.0 = phi i32 [ %conv, %if.then1 ], [ %call4, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp6 = icmp eq i32 %ret.0, 0
  %6 = tail call i32 @llvm.smin.i32(i32 %ret.0, i32 0)
  %ret.1 = select i1 %cmp6, i32 -16, i32 %6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !44
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !45
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !46

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !47
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10, !callees !48
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %ret.1, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.1, %if.then10.i.i.i.i.i.i ], [ %ret.1, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_get_caps_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  %cache_ent = alloca ptr, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cache_ent) #10
  %num_capsets = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %num_capsets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_capsets, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup106_crit_edge, label %if.end

entry.cleanup106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup106

if.end:                                           ; preds = %entry
  %size1 = getelementptr inbounds %struct.drm_virtgpu_get_caps, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.end.cleanup106_crit_edge, label %if.end4

if.end.cleanup106_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup106

if.end4:                                          ; preds = %if.end
  %display_info_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %display_info_lock) #10
  %6 = ptrtoint ptr %num_capsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_capsets, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6165.not = icmp eq i32 %7, 0
  br i1 %cmp6165.not, label %if.end4.if.then16_crit_edge, label %for.body.lr.ph

if.end4.if.then16_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

for.body.lr.ph:                                   ; preds = %if.end4
  %capsets = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %capsets, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 8
  %cap_set_ver = getelementptr inbounds %struct.drm_virtgpu_get_caps, ptr %data, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0166 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.virtio_gpu_drv_capset, ptr %9, i32 %i.0166
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp7 = icmp eq i32 %13, %11
  br i1 %cmp7, label %if.then8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then8:                                         ; preds = %for.body
  %max_version = getelementptr %struct.virtio_gpu_drv_capset, ptr %9, i32 %i.0166, i32 1
  %14 = ptrtoint ptr %max_version to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_version, align 4
  %16 = ptrtoint ptr %cap_set_ver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cap_set_ver, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp11.not = icmp ult i32 %15, %17
  br i1 %cmp11.not, label %if.then8.for.inc_crit_edge, label %if.end18

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.then8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0166, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.if.then16_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.then16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then16:                                        ; preds = %for.inc.if.then16_crit_edge, %if.end4.if.then16_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %display_info_lock) #10
  br label %cleanup106

if.end18:                                         ; preds = %if.then8
  %18 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %capsets, align 4
  %max_size = getelementptr %struct.virtio_gpu_drv_capset, ptr %19, i32 %i.0166, i32 2
  %20 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_size, align 4
  %22 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size1, align 8
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %21)
  %cap_cache = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 31
  %25 = ptrtoint ptr %cap_cache to i32
  call void @__asan_load4_noabort(i32 %25)
  %storemerge168 = load ptr, ptr %cap_cache, align 4
  %26 = ptrtoint ptr %cache_ent to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %storemerge168, ptr %cache_ent, align 4
  %cmp26.not169 = icmp eq ptr %storemerge168, %cap_cache
  br i1 %cmp26.not169, label %if.end18.for.end42_crit_edge, label %for.body27.lr.ph

if.end18.for.end42_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end42

for.body27.lr.ph:                                 ; preds = %if.end18
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data, align 8
  br label %for.body27

for.body27:                                       ; preds = %for.inc36.for.body27_crit_edge, %for.body27.lr.ph
  %storemerge170 = phi ptr [ %storemerge168, %for.body27.lr.ph ], [ %storemerge, %for.inc36.for.body27_crit_edge ]
  %id28 = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %storemerge170, i32 0, i32 2
  %29 = ptrtoint ptr %id28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %28)
  %cmp30 = icmp eq i32 %30, %28
  br i1 %cmp30, label %land.lhs.true, label %for.body27.for.inc36_crit_edge

for.body27.for.inc36_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36

land.lhs.true:                                    ; preds = %for.body27
  %version = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %storemerge170, i32 0, i32 3
  %31 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %version, align 4
  %33 = ptrtoint ptr %cap_set_ver to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cap_set_ver, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp32 = icmp eq i32 %32, %34
  br i1 %cmp32, label %if.then33, label %land.lhs.true.for.inc36_crit_edge

land.lhs.true.for.inc36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %display_info_lock) #10
  br label %copy_exit

for.inc36:                                        ; preds = %land.lhs.true.for.inc36_crit_edge, %for.body27.for.inc36_crit_edge
  %35 = ptrtoint ptr %storemerge170 to i32
  call void @__asan_load4_noabort(i32 %35)
  %storemerge = load ptr, ptr %storemerge170, align 4
  %36 = ptrtoint ptr %cache_ent to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %storemerge, ptr %cache_ent, align 4
  %cmp26.not = icmp eq ptr %storemerge, %cap_cache
  br i1 %cmp26.not, label %for.inc36.for.end42_crit_edge, label %for.inc36.for.body27_crit_edge

for.inc36.for.body27_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body27

for.inc36.for.end42_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end42

for.end42:                                        ; preds = %for.inc36.for.end42_crit_edge, %if.end18.for.end42_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %display_info_lock) #10
  %37 = ptrtoint ptr %cap_set_ver to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cap_set_ver, align 4
  %call = call i32 @virtio_gpu_cmd_get_capset(ptr noundef %1, i32 noundef %i.0166, i32 noundef %38, ptr noundef nonnull %cache_ent) #10
  call void @virtio_gpu_notify(ptr noundef %1) #10
  br label %copy_exit

copy_exit:                                        ; preds = %for.end42, %if.then33
  call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 588) #10
  %39 = ptrtoint ptr %cache_ent to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cache_ent, align 4
  %is_valid = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %40, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %is_valid, i32 noundef 4) #10
  %41 = ptrtoint ptr %is_valid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %is_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not = icmp eq i32 %42, 0
  br i1 %tobool.not, label %if.then59, label %copy_exit.do.end95_crit_edge

copy_exit.do.end95_crit_edge:                     ; preds = %copy_exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95

if.then59:                                        ; preds = %copy_exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %43 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %resp_wq = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 10
  br label %for.cond61

for.cond61:                                       ; preds = %cleanup, %if.then59
  %__ret60.0 = phi i32 [ 500, %if.then59 ], [ %call83, %cleanup ]
  %call62 = call i32 @prepare_to_wait_event(ptr noundef %resp_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %44 = ptrtoint ptr %cache_ent to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cache_ent, align 4
  %is_valid64 = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %45, i32 0, i32 5
  %call.i.i154 = call zeroext i1 @__kasan_check_read(ptr noundef %is_valid64, i32 noundef 4) #10
  %46 = ptrtoint ptr %is_valid64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %is_valid64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool66.not = icmp eq i32 %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret60.0)
  %tobool70.not = icmp eq i32 %__ret60.0, 0
  %spec.store.select115 = select i1 %tobool70.not, i32 1, i32 %__ret60.0
  %__ret60.1 = select i1 %tobool66.not, i32 %__ret60.0, i32 %spec.store.select115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret60.1)
  %tobool76.not = icmp eq i32 %__ret60.1, 0
  %not.tobool66.not = xor i1 %tobool66.not, true
  %48 = select i1 %not.tobool66.not, i1 true, i1 %tobool76.not
  br i1 %48, label %if.end87, label %cleanup

cleanup:                                          ; preds = %for.cond61
  call void @__sanitizer_cov_trace_pc() #12
  %call83 = call i32 @schedule_timeout(i32 noundef %__ret60.1) #10
  br label %for.cond61

if.end87:                                         ; preds = %for.cond61
  call void @finish_wait(ptr noundef %resp_wq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br i1 %tobool76.not, label %if.end87.cleanup106_crit_edge, label %if.end87.do.end95_crit_edge

if.end87.do.end95_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95

if.end87.cleanup106_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup106

do.end95:                                         ; preds = %if.end87.do.end95_crit_edge, %copy_exit.do.end95_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %49 = ptrtoint ptr %cache_ent to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cache_ent, align 4
  %caps_cache = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %caps_cache to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %caps_cache, align 4
  %addr = getelementptr inbounds %struct.drm_virtgpu_get_caps, ptr %data, i32 0, i32 2
  %53 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %addr, align 8
  %conv101 = trunc i64 %54 to i32
  %55 = inttoptr i32 %conv101 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp9.i.i = icmp slt i32 %24, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %do.end95
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup106_crit_edge, label %if.then27.i.i, !prof !46

land.rhs16.i.i.cleanup106_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup106

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %cleanup106

if.then.i.i.i:                                    ; preds = %do.end95
  call void @__check_object_size(ptr noundef %52, i32 noundef %24, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #10
  %call.i.i155 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i155, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %56 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %55, i32 %24, i32 -1226833920) #16, !srcloc !54
  %asmresult.i.i = extractvalue { i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %52, i32 noundef %24) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %55, ptr noundef %52, i32 noundef %24) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %24, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %24, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool103.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool103.not, i32 0, i32 -14
  br label %cleanup106

cleanup106:                                       ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.cleanup106_crit_edge, %if.end87.cleanup106_crit_edge, %if.then16, %if.end.cleanup106_crit_edge, %entry.cleanup106_crit_edge
  %retval.0 = phi i32 [ -22, %if.then16 ], [ -38, %entry.cleanup106_crit_edge ], [ -22, %if.end.cleanup106_crit_edge ], [ -16, %if.end87.cleanup106_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup106_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cache_ent) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_resource_create_blob_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef %file) #0 align 64 {
entry:
  %handle = alloca i32, align 4
  %bo = alloca ptr, align 4
  %params = alloca %struct.virtio_gpu_object_params, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #10
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %handle, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #10
  %1 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bo, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %params) #10
  %2 = call ptr @memset(ptr %params, i32 0, i32 72)
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_private, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %5 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_priv, align 4
  %has_resource_blob.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %4, i32 0, i32 19
  %7 = ptrtoint ptr %has_resource_blob.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_resource_blob.i, align 8, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %entry.cleanup51_crit_edge, label %if.end.i

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.end.i:                                         ; preds = %entry
  %blob_flags.i = getelementptr inbounds %struct.drm_virtgpu_resource_create_blob, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %blob_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blob_flags.i, align 4
  %11 = add i32 %10, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %11)
  %12 = icmp ult i32 %11, -7
  br i1 %12, label %if.end.i.cleanup51_crit_edge, label %if.end5.i

if.end.i.cleanup51_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.end5.i:                                        ; preds = %if.end.i
  %and7.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.if.end13.i_crit_edge, label %if.then9.i

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end5.i
  %has_resource_assign_uuid.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %4, i32 0, i32 18
  %13 = ptrtoint ptr %has_resource_assign_uuid.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_resource_assign_uuid.i, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not.i = icmp eq i8 %14, 0
  br i1 %tobool10.not.i, label %if.then9.i.cleanup51_crit_edge, label %if.then9.i.if.end13.i_crit_edge

if.then9.i.if.end13.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then9.i.cleanup51_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.end13.i:                                       ; preds = %if.then9.i.if.end13.i_crit_edge, %if.end5.i.if.end13.i_crit_edge
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %16, label %if.end13.i.cleanup51_crit_edge [
    i32 1, label %if.else.i
    i32 3, label %sw.bb14.i
    i32 2, label %if.end13.i.if.then17.i_crit_edge
  ]

if.end13.i.if.then17.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

if.end13.i.cleanup51_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

sw.bb14.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

if.then17.i:                                      ; preds = %sw.bb14.i, %if.end13.i.if.then17.i_crit_edge
  %guest_blob.1 = phi i8 [ 0, %if.end13.i.if.then17.i_crit_edge ], [ 1, %sw.bb14.i ]
  %has_virgl_3d.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %4, i32 0, i32 15
  %18 = ptrtoint ptr %has_virgl_3d.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_virgl_3d.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not.i = icmp eq i8 %19, 0
  br i1 %tobool18.not.i, label %if.then17.i.cleanup51_crit_edge, label %if.end20.i

if.then17.i.cleanup51_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.end20.i:                                       ; preds = %if.then17.i
  %cmd_size.i = getelementptr inbounds %struct.drm_virtgpu_resource_create_blob, ptr %data, i32 0, i32 6
  %20 = ptrtoint ptr %cmd_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_size.i, align 4
  %rem.i = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %if.end22.i, label %if.end20.i.cleanup51_crit_edge

if.end20.i.cleanup51_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.end22.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %6, align 8
  %ctx_id23.i = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 14
  %24 = ptrtoint ptr %ctx_id23.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ctx_id23.i, align 8
  %blob_id.i = getelementptr inbounds %struct.drm_virtgpu_resource_create_blob, ptr %data, i32 0, i32 8
  %25 = ptrtoint ptr %blob_id.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %blob_id.i, align 8
  %blob_id24.i = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 17
  %27 = ptrtoint ptr %blob_id24.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %blob_id24.i, align 8
  br label %if.end

if.else.i:                                        ; preds = %if.end13.i
  %blob_id25.i = getelementptr inbounds %struct.drm_virtgpu_resource_create_blob, ptr %data, i32 0, i32 8
  %28 = ptrtoint ptr %blob_id25.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %blob_id25.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp26.not.i = icmp eq i64 %29, 0
  br i1 %cmp26.not.i, label %if.end28.i, label %if.else.i.cleanup51_crit_edge

if.else.i.cleanup51_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.end28.i:                                       ; preds = %if.else.i
  %cmd_size29.i = getelementptr inbounds %struct.drm_virtgpu_resource_create_blob, ptr %data, i32 0, i32 6
  %30 = ptrtoint ptr %cmd_size29.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmd_size29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp30.not.i = icmp eq i32 %31, 0
  br i1 %cmp30.not.i, label %if.end28.i.if.end_crit_edge, label %if.end28.i.cleanup51_crit_edge

if.end28.i.cleanup51_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.end28.i.if.end_crit_edge:                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %if.end28.i.if.end_crit_edge, %if.end22.i
  %guest_blob.2 = phi i8 [ %guest_blob.1, %if.end22.i ], [ 1, %if.end28.i.if.end_crit_edge ]
  %tobool20.not = phi i1 [ false, %if.end22.i ], [ true, %if.end28.i.if.end_crit_edge ]
  %host3d_blob.1 = phi i8 [ 1, %if.end22.i ], [ 0, %if.end28.i.if.end_crit_edge ]
  %blob_mem35.i = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 15
  %32 = ptrtoint ptr %blob_mem35.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %16, ptr %blob_mem35.i, align 4
  %size.i = getelementptr inbounds %struct.drm_virtgpu_resource_create_blob, ptr %data, i32 0, i32 4
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %size.i, align 8
  %conv.i = trunc i64 %34 to i32
  %35 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv.i, ptr %params, align 8
  %blob.i = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 3
  %36 = ptrtoint ptr %blob.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %blob.i, align 2
  %blob_flags38.i = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 16
  %37 = ptrtoint ptr %blob_flags38.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %10, ptr %blob_flags38.i, align 8
  %has_virgl_3d = getelementptr inbounds %struct.virtio_gpu_device, ptr %4, i32 0, i32 15
  %38 = ptrtoint ptr %has_virgl_3d to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %has_virgl_3d, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool1.not = icmp eq i8 %39, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @virtio_gpu_create_context(ptr noundef %dev, ptr noundef %file)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %cmd_size = getelementptr inbounds %struct.drm_virtgpu_resource_create_blob, ptr %data, i32 0, i32 6
  %40 = ptrtoint ptr %cmd_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cmd_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool4.not = icmp eq i32 %41, 0
  br i1 %tobool4.not, label %if.end3.if.end15_crit_edge, label %if.then5

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then5:                                         ; preds = %if.end3
  %cmd = getelementptr inbounds %struct.drm_virtgpu_resource_create_blob, ptr %data, i32 0, i32 7
  %42 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %cmd, align 8
  %conv7 = trunc i64 %43 to i32
  %44 = inttoptr i32 %conv7 to ptr
  %call9 = tail call ptr @memdup_user(ptr noundef %44, i32 noundef %41) #10
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %call9 to i32
  br label %cleanup51

cleanup:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %cmd_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cmd_size, align 4
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %6, align 8
  tail call void @virtio_gpu_cmd_submit(ptr noundef %4, ptr noundef %call9, i32 noundef %47, i32 noundef %49, ptr noundef null, ptr noundef null) #10
  br label %if.end15

if.end15:                                         ; preds = %cleanup, %if.end3.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %guest_blob.2)
  %tobool16.not = icmp eq i8 %guest_blob.2, 0
  br i1 %tobool16.not, label %land.lhs.true, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = call i32 @virtio_gpu_object_create(ptr noundef %4, ptr noundef nonnull %params, ptr noundef nonnull %bo, ptr noundef null) #10
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end15
  br i1 %tobool20.not, label %land.lhs.true.cleanup51_crit_edge, label %if.then22

land.lhs.true.cleanup51_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = call i32 @virtio_gpu_vram_create(ptr noundef %4, ptr noundef nonnull %params, ptr noundef nonnull %bo) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.then17
  %host3d_blob.297 = phi i8 [ %host3d_blob.1, %if.then17 ], [ 1, %if.then22 ]
  %ret.0 = phi i32 [ %call18, %if.then17 ], [ %call23, %if.then22 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp27 = icmp slt i32 %ret.0, 0
  br i1 %cmp27, label %if.end26.cleanup51_crit_edge, label %if.end30

if.end26.cleanup51_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.end30:                                         ; preds = %if.end26
  %50 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bo, align 4
  %guest_blob32 = getelementptr inbounds %struct.virtio_gpu_object, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %guest_blob32 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %guest_blob.2, ptr %guest_blob32, align 1
  %host3d_blob34 = getelementptr inbounds %struct.virtio_gpu_object, ptr %51, i32 0, i32 4
  %53 = ptrtoint ptr %host3d_blob34 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %host3d_blob.297, ptr %host3d_blob34, align 2
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data, align 8
  %blob_mem36 = getelementptr inbounds %struct.virtio_gpu_object, ptr %51, i32 0, i32 6
  %56 = ptrtoint ptr %blob_mem36 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %blob_mem36, align 8
  %57 = ptrtoint ptr %blob_flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %blob_flags.i, align 4
  %blob_flags37 = getelementptr inbounds %struct.virtio_gpu_object, ptr %51, i32 0, i32 7
  %59 = ptrtoint ptr %blob_flags37 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %blob_flags37, align 4
  %60 = ptrtoint ptr %blob_flags38.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %blob_flags38.i, align 8
  %and = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.end30.if.end46_crit_edge, label %if.then41

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then41:                                        ; preds = %if.end30
  %call42 = call i32 @virtio_gpu_resource_assign_uuid(ptr noundef %4, ptr noundef %51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then41.if.end46_crit_edge, label %if.then44

if.then41.if.end46_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  call void @drm_gem_object_release(ptr noundef %51) #10
  br label %cleanup51

if.end46:                                         ; preds = %if.then41.if.end46_crit_edge, %if.end30.if.end46_crit_edge
  %call47 = call i32 @drm_gem_handle_create(ptr noundef %file, ptr noundef %51, ptr noundef nonnull %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  call void @drm_gem_object_release(ptr noundef %51) #10
  br label %cleanup51

if.end50:                                         ; preds = %if.end46
  %tobool.not.i88 = icmp eq ptr %51, null
  br i1 %tobool.not.i88, label %if.end50.drm_gem_object_put.exit_crit_edge, label %if.then.i

if.end50.drm_gem_object_put.exit_crit_edge:       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %if.end50
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %51, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !44
  call void @llvm.prefetch.p0(ptr nonnull %51, i32 1, i32 3, i32 1) #10
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %51, ptr nonnull %51, i32 1, ptr nonnull elementtype(i32) %51) #10, !srcloc !45
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !46

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %51, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !47
  call void @drm_gem_object_free(ptr noundef nonnull %51) #10, !callees !48
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %if.end50.drm_gem_object_put.exit_crit_edge
  %63 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bo, align 4
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hw_res_handle, align 8
  %res_handle = getelementptr inbounds %struct.drm_virtgpu_resource_create_blob, ptr %data, i32 0, i32 3
  %67 = ptrtoint ptr %res_handle to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %res_handle, align 4
  %68 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %handle, align 4
  %bo_handle = getelementptr inbounds %struct.drm_virtgpu_resource_create_blob, ptr %data, i32 0, i32 2
  %70 = ptrtoint ptr %bo_handle to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %bo_handle, align 8
  br label %cleanup51

cleanup51:                                        ; preds = %drm_gem_object_put.exit, %if.then49, %if.then44, %if.end26.cleanup51_crit_edge, %land.lhs.true.cleanup51_crit_edge, %cleanup.thread, %if.end28.i.cleanup51_crit_edge, %if.else.i.cleanup51_crit_edge, %if.end20.i.cleanup51_crit_edge, %if.then17.i.cleanup51_crit_edge, %if.end13.i.cleanup51_crit_edge, %if.then9.i.cleanup51_crit_edge, %if.end.i.cleanup51_crit_edge, %entry.cleanup51_crit_edge
  %retval.1 = phi i32 [ %call42, %if.then44 ], [ %call47, %if.then49 ], [ 0, %drm_gem_object_put.exit ], [ -22, %land.lhs.true.cleanup51_crit_edge ], [ %ret.0, %if.end26.cleanup51_crit_edge ], [ %45, %cleanup.thread ], [ -22, %entry.cleanup51_crit_edge ], [ -22, %if.end.i.cleanup51_crit_edge ], [ -22, %if.then9.i.cleanup51_crit_edge ], [ -22, %if.end13.i.cleanup51_crit_edge ], [ -22, %if.then17.i.cleanup51_crit_edge ], [ -22, %if.end20.i.cleanup51_crit_edge ], [ -22, %if.else.i.cleanup51_crit_edge ], [ -22, %if.end28.i.cleanup51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %params) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_context_init_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 8
  %mul = shl i32 %5, 4
  %has_context_init = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %has_context_init to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_context_init, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %has_virgl_3d = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %has_virgl_3d to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_virgl_3d, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  %or.cond = select i1 %tobool2.not, i1 true, i1 %cmp
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %ctx_set_params7 = getelementptr inbounds %struct.drm_virtgpu_context_init, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %ctx_set_params7 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ctx_set_params7, align 8
  %conv8 = trunc i64 %11 to i32
  %12 = inttoptr i32 %conv8 to ptr
  %call = tail call ptr @memdup_user(ptr noundef %12, i32 noundef %mul) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %context_lock = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %context_lock, i32 noundef 0) #10
  %context_created = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %context_created to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %context_created, align 8, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %for.cond.preheader, label %if.end12.out_unlock_crit_edge

if.end12.out_unlock_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

for.cond.preheader:                               ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp16121.not = icmp eq i32 %5, 0
  br i1 %cmp16121.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ring_idx_mask = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %3, i32 0, i32 5
  %base_fence_ctx = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %3, i32 0, i32 4
  %num_rings = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %3, i32 0, i32 3
  %capset_id_mask = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 30
  %context_init = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %call, align 8
  %conv19 = trunc i64 %17 to i32
  %value21 = getelementptr %struct.drm_virtgpu_context_set_param, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %value21 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %value21, align 8
  %conv22 = trunc i64 %19 to i32
  %20 = zext i32 %conv19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %conv19, label %for.body.lr.ph.out_unlock_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb36
    i32 3, label %sw.bb46
  ]

for.body.lr.ph.out_unlock_crit_edge:              ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

sw.bb:                                            ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %conv22)
  %cmp23 = icmp ugt i32 %conv22, 63
  br i1 %cmp23, label %sw.bb.out_unlock_crit_edge, label %if.end26

sw.bb.out_unlock_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end26:                                         ; preds = %sw.bb
  %21 = ptrtoint ptr %capset_id_mask to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %capset_id_mask, align 8
  %sh_prom = and i64 %19, 4294967295
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %22, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp27 = icmp eq i64 %and, 0
  br i1 %cmp27, label %if.end26.out_unlock_crit_edge, label %if.end30

if.end26.out_unlock_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end30:                                         ; preds = %if.end26
  %23 = ptrtoint ptr %context_init to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %context_init, align 4
  %and31 = and i32 %24, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.out_unlock_crit_edge

if.end30.out_unlock_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %24, %conv22
  %25 = ptrtoint ptr %context_init to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or, ptr %context_init, align 4
  br label %for.inc

sw.bb36:                                          ; preds = %for.body.lr.ph
  %26 = ptrtoint ptr %base_fence_ctx to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %base_fence_ctx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool37.not = icmp ne i64 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv22)
  %cmp40 = icmp ugt i32 %conv22, 64
  %or.cond120 = select i1 %tobool37.not, i1 true, i1 %cmp40
  br i1 %or.cond120, label %sw.bb36.out_unlock_crit_edge, label %if.end43

sw.bb36.out_unlock_crit_edge:                     ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end43:                                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #12
  %call44 = tail call i64 @dma_fence_context_alloc(i32 noundef %conv22) #10
  %28 = ptrtoint ptr %base_fence_ctx to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call44, ptr %base_fence_ctx, align 8
  %29 = ptrtoint ptr %num_rings to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv22, ptr %num_rings, align 4
  br label %for.inc

sw.bb46:                                          ; preds = %for.body.lr.ph
  %30 = ptrtoint ptr %ring_idx_mask to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ring_idx_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool47.not = icmp eq i64 %31, 0
  br i1 %tobool47.not, label %if.end49, label %sw.bb46.out_unlock_crit_edge

sw.bb46.out_unlock_crit_edge:                     ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end49:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #12
  %conv50 = and i64 %19, 4294967295
  %32 = ptrtoint ptr %ring_idx_mask to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv50, ptr %ring_idx_mask, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end49, %if.end43, %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %exitcond.not = icmp eq i32 %5, 1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.drm_virtgpu_context_set_param, ptr %call, i32 1
  %33 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.1, align 8
  %conv19.1 = trunc i64 %34 to i32
  %value21.1 = getelementptr %struct.drm_virtgpu_context_set_param, ptr %call, i32 1, i32 1
  %35 = ptrtoint ptr %value21.1 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %value21.1, align 8
  %conv22.1 = trunc i64 %36 to i32
  %37 = zext i32 %conv19.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %conv19.1, label %for.body.1.out_unlock_crit_edge [
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb36.1
    i32 3, label %sw.bb46.1
  ]

for.body.1.out_unlock_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

sw.bb46.1:                                        ; preds = %for.body.1
  %38 = ptrtoint ptr %ring_idx_mask to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ring_idx_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool47.not.1 = icmp eq i64 %39, 0
  br i1 %tobool47.not.1, label %if.end49.1, label %sw.bb46.1.out_unlock_crit_edge

sw.bb46.1.out_unlock_crit_edge:                   ; preds = %sw.bb46.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end49.1:                                       ; preds = %sw.bb46.1
  call void @__sanitizer_cov_trace_pc() #12
  %conv50.1 = and i64 %36, 4294967295
  %40 = ptrtoint ptr %ring_idx_mask to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv50.1, ptr %ring_idx_mask, align 8
  br label %for.inc.1

sw.bb36.1:                                        ; preds = %for.body.1
  %41 = ptrtoint ptr %base_fence_ctx to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %base_fence_ctx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %tobool37.not.1 = icmp ne i64 %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv22.1)
  %cmp40.1 = icmp ugt i32 %conv22.1, 64
  %or.cond120.1 = select i1 %tobool37.not.1, i1 true, i1 %cmp40.1
  br i1 %or.cond120.1, label %sw.bb36.1.out_unlock_crit_edge, label %if.end43.1

sw.bb36.1.out_unlock_crit_edge:                   ; preds = %sw.bb36.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end43.1:                                       ; preds = %sw.bb36.1
  call void @__sanitizer_cov_trace_pc() #12
  %call44.1 = tail call i64 @dma_fence_context_alloc(i32 noundef %conv22.1) #10
  %43 = ptrtoint ptr %base_fence_ctx to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %call44.1, ptr %base_fence_ctx, align 8
  %44 = ptrtoint ptr %num_rings to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv22.1, ptr %num_rings, align 4
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %conv22.1)
  %cmp23.1 = icmp ugt i32 %conv22.1, 63
  br i1 %cmp23.1, label %sw.bb.1.out_unlock_crit_edge, label %if.end26.1

sw.bb.1.out_unlock_crit_edge:                     ; preds = %sw.bb.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end26.1:                                       ; preds = %sw.bb.1
  %45 = ptrtoint ptr %capset_id_mask to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %capset_id_mask, align 8
  %sh_prom.1 = and i64 %36, 4294967295
  %shl.1 = shl nuw i64 1, %sh_prom.1
  %and.1 = and i64 %46, %shl.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1)
  %cmp27.1 = icmp eq i64 %and.1, 0
  br i1 %cmp27.1, label %if.end26.1.out_unlock_crit_edge, label %if.end30.1

if.end26.1.out_unlock_crit_edge:                  ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end30.1:                                       ; preds = %if.end26.1
  %47 = ptrtoint ptr %context_init to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %context_init, align 4
  %and31.1 = and i32 %48, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.1)
  %tobool32.not.1 = icmp eq i32 %and31.1, 0
  br i1 %tobool32.not.1, label %if.end34.1, label %if.end30.1.out_unlock_crit_edge

if.end30.1.out_unlock_crit_edge:                  ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end34.1:                                       ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #12
  %or.1 = or i32 %48, %conv22.1
  %49 = ptrtoint ptr %context_init to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or.1, ptr %context_init, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end34.1, %if.end43.1, %if.end49.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %exitcond.not.1 = icmp eq i32 %5, 2
  br i1 %exitcond.not.1, label %for.inc.1.for.end_crit_edge, label %for.body.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.drm_virtgpu_context_set_param, ptr %call, i32 2
  %50 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx.2, align 8
  %conv19.2 = trunc i64 %51 to i32
  %value21.2 = getelementptr %struct.drm_virtgpu_context_set_param, ptr %call, i32 2, i32 1
  %52 = ptrtoint ptr %value21.2 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %value21.2, align 8
  %conv22.2 = trunc i64 %53 to i32
  %54 = zext i32 %conv19.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %conv19.2, label %for.body.2.out_unlock_crit_edge [
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb36.2
    i32 3, label %sw.bb46.2
  ]

for.body.2.out_unlock_crit_edge:                  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

sw.bb46.2:                                        ; preds = %for.body.2
  %55 = ptrtoint ptr %ring_idx_mask to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ring_idx_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %tobool47.not.2 = icmp eq i64 %56, 0
  br i1 %tobool47.not.2, label %if.end49.2, label %sw.bb46.2.out_unlock_crit_edge

sw.bb46.2.out_unlock_crit_edge:                   ; preds = %sw.bb46.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end49.2:                                       ; preds = %sw.bb46.2
  call void @__sanitizer_cov_trace_pc() #12
  %conv50.2 = and i64 %53, 4294967295
  %57 = ptrtoint ptr %ring_idx_mask to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv50.2, ptr %ring_idx_mask, align 8
  br label %for.end

sw.bb36.2:                                        ; preds = %for.body.2
  %58 = ptrtoint ptr %base_fence_ctx to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %base_fence_ctx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %tobool37.not.2 = icmp ne i64 %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv22.2)
  %cmp40.2 = icmp ugt i32 %conv22.2, 64
  %or.cond120.2 = select i1 %tobool37.not.2, i1 true, i1 %cmp40.2
  br i1 %or.cond120.2, label %sw.bb36.2.out_unlock_crit_edge, label %if.end43.2

sw.bb36.2.out_unlock_crit_edge:                   ; preds = %sw.bb36.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end43.2:                                       ; preds = %sw.bb36.2
  call void @__sanitizer_cov_trace_pc() #12
  %call44.2 = tail call i64 @dma_fence_context_alloc(i32 noundef %conv22.2) #10
  %60 = ptrtoint ptr %base_fence_ctx to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %call44.2, ptr %base_fence_ctx, align 8
  %61 = ptrtoint ptr %num_rings to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv22.2, ptr %num_rings, align 4
  br label %for.end

sw.bb.2:                                          ; preds = %for.body.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %conv22.2)
  %cmp23.2 = icmp ugt i32 %conv22.2, 63
  br i1 %cmp23.2, label %sw.bb.2.out_unlock_crit_edge, label %if.end26.2

sw.bb.2.out_unlock_crit_edge:                     ; preds = %sw.bb.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end26.2:                                       ; preds = %sw.bb.2
  %62 = ptrtoint ptr %capset_id_mask to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %capset_id_mask, align 8
  %sh_prom.2 = and i64 %53, 4294967295
  %shl.2 = shl nuw i64 1, %sh_prom.2
  %and.2 = and i64 %63, %shl.2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.2)
  %cmp27.2 = icmp eq i64 %and.2, 0
  br i1 %cmp27.2, label %if.end26.2.out_unlock_crit_edge, label %if.end30.2

if.end26.2.out_unlock_crit_edge:                  ; preds = %if.end26.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end30.2:                                       ; preds = %if.end26.2
  %64 = ptrtoint ptr %context_init to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %context_init, align 4
  %and31.2 = and i32 %65, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.2)
  %tobool32.not.2 = icmp eq i32 %and31.2, 0
  br i1 %tobool32.not.2, label %if.end34.2, label %if.end30.2.out_unlock_crit_edge

if.end30.2.out_unlock_crit_edge:                  ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end34.2:                                       ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #12
  %or.2 = or i32 %65, %conv22.2
  %66 = ptrtoint ptr %context_init to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or.2, ptr %context_init, align 4
  br label %for.end

for.end:                                          ; preds = %if.end34.2, %if.end43.2, %if.end49.2, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ring_idx_mask52 = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %3, i32 0, i32 5
  %67 = ptrtoint ptr %ring_idx_mask52 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %ring_idx_mask52, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %68)
  %tobool53.not = icmp eq i64 %68, 0
  br i1 %tobool53.not, label %for.end.if.end71_crit_edge, label %for.cond55.preheader

for.end.if.end71_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

for.cond55.preheader:                             ; preds = %for.end
  %num_rings56 = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %3, i32 0, i32 3
  %69 = ptrtoint ptr %num_rings56 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_rings56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp57123.not = icmp eq i32 %70, 0
  br i1 %cmp57123.not, label %for.cond55.preheader.for.end65_crit_edge, label %for.cond55.preheader.for.body59_crit_edge

for.cond55.preheader.for.body59_crit_edge:        ; preds = %for.cond55.preheader
  br label %for.body59

for.cond55.preheader.for.end65_crit_edge:         ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end65

for.body59:                                       ; preds = %for.body59.for.body59_crit_edge, %for.cond55.preheader.for.body59_crit_edge
  %valid_ring_mask.0125 = phi i64 [ %or62, %for.body59.for.body59_crit_edge ], [ 0, %for.cond55.preheader.for.body59_crit_edge ]
  %i.1124 = phi i32 [ %inc64, %for.body59.for.body59_crit_edge ], [ 0, %for.cond55.preheader.for.body59_crit_edge ]
  %sh_prom60 = zext i32 %i.1124 to i64
  %shl61 = shl nuw i64 1, %sh_prom60
  %or62 = or i64 %shl61, %valid_ring_mask.0125
  %inc64 = add nuw i32 %i.1124, 1
  %exitcond126.not = icmp eq i32 %inc64, %70
  br i1 %exitcond126.not, label %for.end65.loopexit, label %for.body59.for.body59_crit_edge

for.body59.for.body59_crit_edge:                  ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body59

for.end65.loopexit:                               ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = xor i64 %or62, -1
  br label %for.end65

for.end65:                                        ; preds = %for.end65.loopexit, %for.cond55.preheader.for.end65_crit_edge
  %valid_ring_mask.0.lcssa = phi i64 [ -1, %for.cond55.preheader.for.end65_crit_edge ], [ %phi.bo, %for.end65.loopexit ]
  %and67 = and i64 %68, %valid_ring_mask.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and67)
  %tobool68.not = icmp eq i64 %and67, 0
  br i1 %tobool68.not, label %for.end65.if.end71_crit_edge, label %for.end65.out_unlock_crit_edge

for.end65.out_unlock_crit_edge:                   ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

for.end65.if.end71_crit_edge:                     ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.end71:                                         ; preds = %for.end65.if.end71_crit_edge, %for.end.if.end71_crit_edge
  tail call fastcc void @virtio_gpu_create_context_locked(ptr noundef %1, ptr noundef %3)
  tail call void @virtio_gpu_notify(ptr noundef %1) #10
  br label %out_unlock

out_unlock:                                       ; preds = %if.end71, %for.end65.out_unlock_crit_edge, %if.end30.2.out_unlock_crit_edge, %if.end26.2.out_unlock_crit_edge, %sw.bb.2.out_unlock_crit_edge, %sw.bb36.2.out_unlock_crit_edge, %sw.bb46.2.out_unlock_crit_edge, %for.body.2.out_unlock_crit_edge, %if.end30.1.out_unlock_crit_edge, %if.end26.1.out_unlock_crit_edge, %sw.bb.1.out_unlock_crit_edge, %sw.bb36.1.out_unlock_crit_edge, %sw.bb46.1.out_unlock_crit_edge, %for.body.1.out_unlock_crit_edge, %sw.bb46.out_unlock_crit_edge, %sw.bb36.out_unlock_crit_edge, %if.end30.out_unlock_crit_edge, %if.end26.out_unlock_crit_edge, %sw.bb.out_unlock_crit_edge, %for.body.lr.ph.out_unlock_crit_edge, %if.end12.out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end71 ], [ -17, %if.end12.out_unlock_crit_edge ], [ -22, %for.end65.out_unlock_crit_edge ], [ -22, %if.end30.2.out_unlock_crit_edge ], [ -22, %if.end26.2.out_unlock_crit_edge ], [ -22, %sw.bb.2.out_unlock_crit_edge ], [ -22, %sw.bb36.2.out_unlock_crit_edge ], [ -22, %sw.bb46.2.out_unlock_crit_edge ], [ -22, %for.body.2.out_unlock_crit_edge ], [ -22, %if.end30.1.out_unlock_crit_edge ], [ -22, %if.end26.1.out_unlock_crit_edge ], [ -22, %sw.bb.1.out_unlock_crit_edge ], [ -22, %sw.bb36.1.out_unlock_crit_edge ], [ -22, %sw.bb46.1.out_unlock_crit_edge ], [ -22, %for.body.1.out_unlock_crit_edge ], [ -22, %sw.bb.out_unlock_crit_edge ], [ -22, %if.end26.out_unlock_crit_edge ], [ -22, %if.end30.out_unlock_crit_edge ], [ -22, %sw.bb36.out_unlock_crit_edge ], [ -22, %sw.bb46.out_unlock_crit_edge ], [ -22, %for.body.lr.ph.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %context_lock) #10
  tail call void @kfree(ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then10, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then10 ], [ %ret.0, %out_unlock ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_context_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_mode_dumb_mmap(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_get_fence(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_match_context(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_fence_put(ptr noundef %fence) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !44
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !45
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !46

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !47
  tail call void @dma_fence_release(ptr noundef %refcount) #10, !callees !48
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtio_gpu_array_from_handles(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmemdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_array_lock_resv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtio_gpu_fence_alloc(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @virtio_gpu_fence_event_create(ptr noundef %dev, ptr noundef %file, ptr nocapture noundef writeonly %fence, i32 noundef %ring_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %ring_idx_mask = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ring_idx_mask to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ring_idx_mask, align 8
  %shl = shl nuw i32 1, %ring_idx
  %conv = sext i32 %shl to i64
  %and = and i64 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 44) #17
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %event = getelementptr inbounds %struct.virtio_gpu_fence_event, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1879048192, ptr %event, align 4
  %length = getelementptr inbounds %struct.virtio_gpu_fence_event, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %length, align 8
  %call6 = tail call i32 @drm_event_reserve_init(ptr noundef %dev, ptr noundef %file, ptr noundef nonnull %call7.i.i, ptr noundef %event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %free

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %e10 = getelementptr inbounds %struct.virtio_gpu_fence, ptr %fence, i32 0, i32 4
  %7 = ptrtoint ptr %e10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %e10, align 4
  br label %cleanup

free:                                             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %free ], [ 0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_submit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_array_unlock_resv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_array_put_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_event_reserve_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_object_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_transfer_from_host_3d(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_transfer_to_host_2d(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_transfer_to_host_3d(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_resv_test_signaled(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_cmd_get_capset(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_vram_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_resource_assign_uuid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/virtio/virtgpu_ioctl.c", i32 840, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/virtio/virtgpu_ioctl.c", i32 843, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/virtio/virtgpu_ioctl.c", i32 846, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/virtio/virtgpu_ioctl.c", i32 849, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/virtio/virtgpu_ioctl.c", i32 853, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/virtio/virtgpu_ioctl.c", i32 859, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/virtio/virtgpu_ioctl.c", i32 862, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/virtio/virtgpu_ioctl.c", i32 866, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/virtio/virtgpu_ioctl.c", i32 869, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/virtio/virtgpu_ioctl.c", i32 872, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/virtio/virtgpu_ioctl.c", i32 876, i32 2}
!22 = !{ptr @virtio_gpu_ioctls, !23, !"virtio_gpu_ioctls", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/virtio/virtgpu_ioctl.c", i32 839, i32 23}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/virtio/virtgpu_ioctl.c", i32 587, i32 8}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i8 0, i8 2}
!44 = !{i64 2148329752}
!45 = !{i64 2148244216, i64 2148244248, i64 2148244277, i64 2148244311, i64 2148244342, i64 2148244365}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2149375925}
!48 = !{ptr @dma_fence_release, ptr @drm_gem_object_free}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2150624091, i64 2150624116}
!51 = !{i64 3119646}
!52 = !{i64 3119843}
!53 = !{i64 2150605076}
!54 = !{i64 2150624772, i64 2150624797}
!55 = !{!"auto-init"}
!56 = !{i64 2156869459}
