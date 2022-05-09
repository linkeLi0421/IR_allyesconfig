; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/virtio/virtgpu_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/virtio/virtgpu_kms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.88 = type { i32, ptr }
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
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.virtio_device_id = type { i32, i32 }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_gpu_drv_capset = type { i32, i32, i32 }
%struct.virtio_gpu_drv_cap_cache = type { %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t }
%struct.virtio_gpu_fpriv = type { i32, i32, i8, i32, i64, i64, %struct.mutex }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }

@virtio_gpu_init.callbacks = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @virtio_gpu_ctrl_ack, ptr @virtio_gpu_cursor_ack], [24 x i8] zeroinitializer }, align 32
@virtio_gpu_init.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str, ptr @.str.1], [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cursor\00", [25 x i8] zeroinitializer }, align 32
@virtio_gpu_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&vgdev->display_info_lock\00", [38 x i8] zeroinitializer }, align 32
@virtio_gpu_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&vgdev->resource_export_lock\00", [35 x i8] zeroinitializer }, align 32
@virtio_gpu_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&vgdev->host_visible_lock\00", [38 x i8] zeroinitializer }, align 32
@virtio_gpu_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&vgdev->resp_wq\00", [16 x i8] zeroinitializer }, align 32
@virtio_gpu_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&vgdev->fence_drv.lock\00", [41 x i8] zeroinitializer }, align 32
@virtio_gpu_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&vgdev->config_changed_work)\00", [49 x i8] zeroinitializer }, align 32
@virtio_gpu_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&vgdev->obj_free_work)\00", [55 x i8] zeroinitializer }, align 32
@virtio_gpu_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&vgdev->obj_free_lock\00", [42 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not reserve host visible region\0A\00", [57 x i8] zeroinitializer }, align 32
@virtio_gpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016[drm] Host memory window: 0x%lx +0x%lx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"virtio_gpu_init\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/virtio/virtgpu_kms.c\00", [59 x i8] zeroinitializer }, align 32
@virtio_gpu_init._entry_ptr = internal global ptr @virtio_gpu_init._entry, section ".printk_index", align 4
@virtio_gpu_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.20, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016[drm] features: %cvirgl %cedid %cresource_blob %chost_visible\00", [32 x i8] zeroinitializer }, align 32
@virtio_gpu_init._entry_ptr.23 = internal global ptr @virtio_gpu_init._entry.21, section ".printk_index", align 4
@virtio_gpu_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.20, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016[drm] features: %ccontext_init\0A\00", [62 x i8] zeroinitializer }, align 32
@virtio_gpu_init._entry_ptr.26 = internal global ptr @virtio_gpu_init._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to find virt queues\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to alloc vbufs\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"num_scanouts is zero\0A\00", [42 x i8] zeroinitializer }, align 32
@virtio_gpu_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.19, ptr @.str.20, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016[drm] number of scanouts: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@virtio_gpu_init._entry_ptr.32 = internal global ptr @virtio_gpu_init._entry.30, section ".printk_index", align 4
@virtio_gpu_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.19, ptr @.str.20, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016[drm] number of cap sets: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@virtio_gpu_init._entry_ptr.35 = internal global ptr @virtio_gpu_init._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"modeset init failed\0A\00", [43 x i8] zeroinitializer }, align 32
@virtio_gpu_driver_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&vfpriv->context_lock\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@virtio_gpu_init_vq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&vgvq->qlock\00", [19 x i8] zeroinitializer }, align 32
@virtio_gpu_init_vq.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&vgvq->ack_queue\00", [47 x i8] zeroinitializer }, align 32
@virtio_gpu_init_vq.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&vgvq->dequeue_work)\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to allocate cap sets\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timed out waiting for cap set %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid capset id %u\00", [43 x i8] zeroinitializer }, align 32
@virtio_gpu_get_capsets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.20, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm] cap set %d: id %d, max-version %d, max-size %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"virtio_gpu_get_capsets\00", [41 x i8] zeroinitializer }, align 32
@virtio_gpu_get_capsets._entry_ptr = internal global ptr @virtio_gpu_get_capsets._entry, section ".printk_index", align 4
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"callbacks\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 115, i32 24 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 118, i32 28 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 118, i32 40 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 118, i32 51 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 138, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 139, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 140, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 143, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 148, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 151, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 154, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 157, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 181, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 186, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 198, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 204, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 209, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 216, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 226, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 230, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 234, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 238, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 319, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 378, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 59, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 60, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 61, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 74, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 91, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 93, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [40 x i8] c"../drivers/gpu/drm/virtio/virtgpu_kms.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 104, i32 3 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @virtio_gpu_get_capsets._entry, ptr @virtio_gpu_get_capsets._entry_ptr, ptr @virtio_gpu_init._entry, ptr @virtio_gpu_init._entry.21, ptr @virtio_gpu_init._entry.24, ptr @virtio_gpu_init._entry.30, ptr @virtio_gpu_init._entry.33, ptr @virtio_gpu_init._entry_ptr, ptr @virtio_gpu_init._entry_ptr.23, ptr @virtio_gpu_init._entry_ptr.26, ptr @virtio_gpu_init._entry_ptr.32, ptr @virtio_gpu_init._entry_ptr.35, ptr @virtio_gpu_init.callbacks, ptr @virtio_gpu_init.names, ptr @.str, ptr @.str.1, ptr @virtio_gpu_init.__key, ptr @.str.2, ptr @virtio_gpu_init.__key.3, ptr @.str.4, ptr @virtio_gpu_init.__key.5, ptr @.str.6, ptr @virtio_gpu_init.__key.7, ptr @.str.8, ptr @virtio_gpu_init.__key.9, ptr @.str.10, ptr @virtio_gpu_init.__key.11, ptr @.str.12, ptr @virtio_gpu_init.__key.13, ptr @.str.14, ptr @virtio_gpu_init.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @virtio_gpu_driver_open.__key, ptr @.str.37, ptr @xa_init_flags.__key, ptr @.str.38, ptr @virtio_gpu_init_vq.__key, ptr @.str.39, ptr @virtio_gpu_init_vq.__key.40, ptr @.str.41, ptr @virtio_gpu_init_vq.__key.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init.callbacks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_driver_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init_vq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init_vq.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_init_vq.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_get_capsets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %vqs = alloca [2 x ptr], align 4
  %virtio_cread_v = alloca i32, align 4
  %virtio_cread_v177 = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vqs) #8
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %vqs, align 4, !annotation !99
  %1 = getelementptr inbounds [2 x ptr], ptr %vqs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !99
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %features.i.i = getelementptr i8, ptr %4, i32 952
  %5 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %6, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %entry.cleanup267_crit_edge, label %if.end

entry.cleanup267_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup267

if.end:                                           ; preds = %entry
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 36368, i32 noundef 3520, i32 noundef 4) #11
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup267_crit_edge, label %if.end5

if.end.cleanup267_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup267

if.end5:                                          ; preds = %if.end
  %ddev = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %ddev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %ddev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i.i.i, ptr %dev_private, align 4
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  %add.ptr.i374 = getelementptr i8, ptr %10, i32 -96
  %vdev = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %vdev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i374, ptr %vdev, align 8
  %12 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %call1.i.i.i, align 4096
  %display_info_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %display_info_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @virtio_gpu_init.__key, i16 noundef signext 3) #8
  %resource_export_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 32
  tail call void @__raw_spin_lock_init(ptr noundef %resource_export_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @virtio_gpu_init.__key.3, i16 noundef signext 3) #8
  %host_visible_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 33
  tail call void @__raw_spin_lock_init(ptr noundef %host_visible_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @virtio_gpu_init.__key.5, i16 noundef signext 3) #8
  %ctx_id_ida = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %ctx_id_ida, ptr noundef nonnull @.str.38, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 14, i32 0, i32 1
  %13 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 67108869, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 14, i32 0, i32 2
  %14 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %xa_head.i.i, align 8
  %resource_ida = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %resource_ida, ptr noundef nonnull @.str.38, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i.i375 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 9, i32 0, i32 1
  %15 = ptrtoint ptr %xa_flags.i.i375 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 67108869, ptr %xa_flags.i.i375, align 8
  %xa_head.i.i376 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 9, i32 0, i32 2
  %16 = ptrtoint ptr %xa_head.i.i376 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %xa_head.i.i376, align 4
  %resp_wq = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %resp_wq, ptr noundef nonnull @.str.8, ptr noundef nonnull @virtio_gpu_init.__key.7) #8
  %ctrlq = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 5
  %qlock.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 5, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %qlock.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @virtio_gpu_init_vq.__key, i16 noundef signext 3) #8
  %ack_queue.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 5, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %ack_queue.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @virtio_gpu_init_vq.__key.40) #8
  %dequeue_work.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 5, i32 3
  tail call void @__init_work(ptr noundef %dequeue_work.i, i32 noundef 0) #8
  %17 = ptrtoint ptr %dequeue_work.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %dequeue_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 5, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @virtio_gpu_init_vq.__key.42, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry7.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 5, i32 3, i32 1
  %18 = ptrtoint ptr %entry7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry7.i, ptr %entry7.i, align 4
  %prev.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 5, i32 3, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry7.i, ptr %prev.i.i, align 128
  %func.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 5, i32 3, i32 2
  %20 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @virtio_gpu_dequeue_ctrl_func, ptr %func.i, align 4
  %cursorq = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 6
  %qlock.i377 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 6, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %qlock.i377, ptr noundef nonnull @.str.39, ptr noundef nonnull @virtio_gpu_init_vq.__key, i16 noundef signext 3) #8
  %ack_queue.i378 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 6, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %ack_queue.i378, ptr noundef nonnull @.str.41, ptr noundef nonnull @virtio_gpu_init_vq.__key.40) #8
  %dequeue_work.i379 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 6, i32 3
  tail call void @__init_work(ptr noundef %dequeue_work.i379, i32 noundef 0) #8
  %21 = ptrtoint ptr %dequeue_work.i379 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %dequeue_work.i379, align 8
  %lockdep_map.i380 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 6, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i380, ptr noundef nonnull @.str.43, ptr noundef nonnull @virtio_gpu_init_vq.__key.42, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry7.i381 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 6, i32 3, i32 1
  %22 = ptrtoint ptr %entry7.i381 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry7.i381, ptr %entry7.i381, align 4
  %prev.i.i382 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 6, i32 3, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i.i382 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry7.i381, ptr %prev.i.i382, align 16
  %func.i383 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 6, i32 3, i32 2
  %24 = ptrtoint ptr %func.i383 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @virtio_gpu_dequeue_cursor_func, ptr %func.i383, align 4
  %call22 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #8
  %context = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 13, i32 2
  %25 = ptrtoint ptr %context to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %call22, ptr %context, align 8
  %lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 13, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @virtio_gpu_init.__key.9, i16 noundef signext 3) #8
  %fences = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 13, i32 3
  %26 = ptrtoint ptr %fences to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %fences, ptr %fences, align 16
  %prev.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 13, i32 3, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %fences, ptr %prev.i, align 4
  %cap_cache = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 31
  %28 = ptrtoint ptr %cap_cache to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %cap_cache, ptr %cap_cache, align 16
  %prev.i384 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 31, i32 1
  %29 = ptrtoint ptr %prev.i384 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %cap_cache, ptr %prev.i384, align 4
  %config_changed_work = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 24
  tail call void @__init_work(ptr noundef %config_changed_work, i32 noundef 0) #8
  %30 = ptrtoint ptr %config_changed_work to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %config_changed_work, align 16
  %lockdep_map = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 24, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @virtio_gpu_init.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry33 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 24, i32 1
  %31 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i385 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 24, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i385 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry33, ptr %prev.i385, align 8
  %func = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 24, i32 2
  %33 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @virtio_gpu_config_changed_work_func, ptr %func, align 4
  %obj_free_work = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 25
  tail call void @__init_work(ptr noundef %obj_free_work, i32 noundef 0) #8
  %34 = ptrtoint ptr %obj_free_work to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %obj_free_work, align 4
  %lockdep_map43 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 25, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map43, ptr noundef nonnull @.str.14, ptr noundef nonnull @virtio_gpu_init.__key.13, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry45 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 25, i32 1
  %35 = ptrtoint ptr %entry45 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry45, ptr %entry45, align 64
  %prev.i386 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 25, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i386 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry45, ptr %prev.i386, align 4
  %func47 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 25, i32 2
  %37 = ptrtoint ptr %func47 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @virtio_gpu_array_put_free_work, ptr %func47, align 8
  %obj_free_list = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 27
  %38 = ptrtoint ptr %obj_free_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %obj_free_list, ptr %obj_free_list, align 4
  %prev.i387 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 27, i32 1
  %39 = ptrtoint ptr %prev.i387 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %obj_free_list, ptr %prev.i387, align 8
  %obj_free_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 26
  tail call void @__raw_spin_lock_init(ptr noundef %obj_free_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @virtio_gpu_init.__key.15, i16 noundef signext 3) #8
  %40 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vdev, align 8
  tail call void @virtio_check_driver_offered_feature(ptr noundef %41, i32 noundef 1) #8
  %features.i.i388 = getelementptr inbounds %struct.virtio_device, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %features.i.i388 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %features.i.i388, align 8
  %and.i.i389 = and i64 %43, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i389)
  %tobool13.i.i390.not = icmp eq i64 %and.i.i389, 0
  br i1 %tobool13.i.i390.not, label %if.end5.if.end57_crit_edge, label %if.then56

if.end5.if.end57_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then56:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %has_edid = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 16
  %44 = ptrtoint ptr %has_edid to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %has_edid, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end5.if.end57_crit_edge
  %45 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vdev, align 8
  %features.i.i391 = getelementptr inbounds %struct.virtio_device, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %features.i.i391 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %features.i.i391, align 8
  %and.i.i392 = and i64 %48, 268435456
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i392)
  %tobool13.i.i393.not = icmp eq i64 %and.i.i392, 0
  br i1 %tobool13.i.i393.not, label %if.end57.if.end61_crit_edge, label %if.then60

if.end57.if.end61_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %has_indirect = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 17
  %49 = ptrtoint ptr %has_indirect to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %has_indirect, align 2
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end57.if.end61_crit_edge
  %50 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vdev, align 8
  tail call void @virtio_check_driver_offered_feature(ptr noundef %51, i32 noundef 2) #8
  %features.i.i394 = getelementptr inbounds %struct.virtio_device, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %features.i.i394 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %features.i.i394, align 8
  %and.i.i395 = and i64 %53, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i395)
  %tobool13.i.i396.not = icmp eq i64 %and.i.i395, 0
  br i1 %tobool13.i.i396.not, label %if.end61.if.end65_crit_edge, label %if.then64

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %has_resource_assign_uuid = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 18
  %54 = ptrtoint ptr %has_resource_assign_uuid to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %has_resource_assign_uuid, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end61.if.end65_crit_edge
  %55 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vdev, align 8
  tail call void @virtio_check_driver_offered_feature(ptr noundef %56, i32 noundef 3) #8
  %features.i.i397 = getelementptr inbounds %struct.virtio_device, ptr %56, i32 0, i32 11
  %57 = ptrtoint ptr %features.i.i397 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %features.i.i397, align 8
  %and.i.i398 = and i64 %58, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i398)
  %tobool13.i.i399.not = icmp eq i64 %and.i.i398, 0
  br i1 %tobool13.i.i399.not, label %if.end65.if.end69_crit_edge, label %if.then68

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %has_resource_blob = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 19
  %59 = ptrtoint ptr %has_resource_blob to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %has_resource_blob, align 32
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end65.if.end69_crit_edge
  %60 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vdev, align 8
  %host_visible_region = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 22
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config.i, align 8
  %get_shm_region.i = getelementptr inbounds %struct.virtio_config_ops, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %get_shm_region.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_shm_region.i, align 4
  %tobool.not.i = icmp eq ptr %65, null
  br i1 %tobool.not.i, label %if.end69.if.end103_crit_edge, label %virtio_get_shm_region.exit

if.end69.if.end103_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

virtio_get_shm_region.exit:                       ; preds = %if.end69
  %call.i = tail call zeroext i1 %65(ptr noundef %61, ptr noundef %host_visible_region, i8 noundef zeroext 1) #8
  br i1 %call.i, label %if.then72, label %virtio_get_shm_region.exit.if.end103_crit_edge

virtio_get_shm_region.exit.if.end103_crit_edge:   ; preds = %virtio_get_shm_region.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then72:                                        ; preds = %virtio_get_shm_region.exit
  %66 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vdev, align 8
  %dev74 = getelementptr inbounds %struct.virtio_device, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %host_visible_region to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %host_visible_region, align 8
  %conv = trunc i64 %69 to i32
  %len = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 22, i32 1
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %len, align 16
  %conv77 = trunc i64 %71 to i32
  %init_name.i = getelementptr inbounds %struct.virtio_device, ptr %67, i32 0, i32 6, i32 3
  %72 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i400 = icmp eq ptr %73, null
  br i1 %tobool.not.i400, label %if.end.i401, label %if.then72.dev_name.exit_crit_edge

if.then72.dev_name.exit_crit_edge:                ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i401:                                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev74, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i401, %if.then72.dev_name.exit_crit_edge
  %retval.0.i402 = phi ptr [ %75, %if.end.i401 ], [ %73, %if.then72.dev_name.exit_crit_edge ]
  %call81 = tail call ptr @__devm_request_region(ptr noundef %dev74, ptr noundef nonnull @iomem_resource, i32 noundef %conv, i32 noundef %conv77, ptr noundef %retval.0.i402) #8
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %if.then83, label %do.end87

if.then83:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #8
  br label %err_vqs

do.end87:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %host_visible_region to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %host_visible_region, align 8
  %conv90 = trunc i64 %77 to i32
  %78 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %len, align 16
  %conv93 = trunc i64 %79 to i32
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv90, i32 noundef %conv93) #12
  %has_host_visible = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 20
  %80 = ptrtoint ptr %has_host_visible to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %has_host_visible, align 1
  %host_visible_mm = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 23
  %81 = ptrtoint ptr %host_visible_region to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %host_visible_region, align 8
  %conv98 = and i64 %82, 4294967295
  %83 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %len, align 16
  %conv102 = and i64 %84, 4294967295
  tail call void @drm_mm_init(ptr noundef %host_visible_mm, i64 noundef %conv98, i64 noundef %conv102) #8
  br label %if.end103

if.end103:                                        ; preds = %do.end87, %virtio_get_shm_region.exit.if.end103_crit_edge, %if.end69.if.end103_crit_edge
  %85 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vdev, align 8
  tail call void @virtio_check_driver_offered_feature(ptr noundef %86, i32 noundef 4) #8
  %features.i.i403 = getelementptr inbounds %struct.virtio_device, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %features.i.i403 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %features.i.i403, align 8
  %and.i.i404 = and i64 %88, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i404)
  %tobool13.i.i405.not = icmp eq i64 %and.i.i404, 0
  br i1 %tobool13.i.i405.not, label %if.end103.do.end110_crit_edge, label %if.then106

if.end103.do.end110_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end110

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %has_context_init = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 21
  %89 = ptrtoint ptr %has_context_init to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %has_context_init, align 2
  br label %do.end110

do.end110:                                        ; preds = %if.then106, %if.end103.do.end110_crit_edge
  %has_virgl_3d = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 15
  %90 = ptrtoint ptr %has_virgl_3d to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %has_virgl_3d, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool112.not = icmp eq i8 %91, 0
  %cond = select i1 %tobool112.not, i32 45, i32 43
  %has_edid114 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 16
  %92 = ptrtoint ptr %has_edid114 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %has_edid114, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool115.not = icmp eq i8 %93, 0
  %cond117 = select i1 %tobool115.not, i32 45, i32 43
  %has_resource_blob118 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 19
  %94 = ptrtoint ptr %has_resource_blob118 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %has_resource_blob118, align 32, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool119.not = icmp eq i8 %95, 0
  %cond121 = select i1 %tobool119.not, i32 45, i32 43
  %has_host_visible122 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 20
  %96 = ptrtoint ptr %has_host_visible122 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %has_host_visible122, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool123.not = icmp eq i8 %97, 0
  %cond125 = select i1 %tobool123.not, i32 45, i32 43
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %cond, i32 noundef %cond117, i32 noundef %cond121, i32 noundef %cond125) #12
  %has_context_init131 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 21
  %98 = ptrtoint ptr %has_context_init131 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %has_context_init131, align 2, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool132.not = icmp eq i8 %99, 0
  %cond134 = select i1 %tobool132.not, i32 45, i32 43
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %cond134) #12
  %100 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %vdev, align 8
  %config.i407 = getelementptr inbounds %struct.virtio_device, ptr %101, i32 0, i32 8
  %102 = ptrtoint ptr %config.i407 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %config.i407, align 8
  %find_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %103, i32 0, i32 7
  %104 = ptrtoint ptr %find_vqs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %find_vqs.i, align 4
  %call.i408 = call i32 %105(ptr noundef %101, i32 noundef 2, ptr noundef nonnull %vqs, ptr noundef nonnull @virtio_gpu_init.callbacks, ptr noundef nonnull @virtio_gpu_init.names, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i408)
  %tobool138.not = icmp eq i32 %call.i408, 0
  br i1 %tobool138.not, label %if.end140, label %if.then139

if.then139:                                       ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27) #8
  br label %err_vqs

if.end140:                                        ; preds = %do.end110
  %106 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vqs, align 4
  %108 = ptrtoint ptr %ctrlq to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %ctrlq, align 4
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 4
  %111 = ptrtoint ptr %cursorq to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %cursorq, align 4
  %call145 = call i32 @virtio_gpu_alloc_vbufs(ptr noundef nonnull %call1.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %do.body149, label %if.then147

if.then147:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #8
  br label %err_vbufs

do.body149:                                       ; preds = %if.end140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v) #8
  %112 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %virtio_cread_v, align 4, !annotation !99
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 222) #8
  %113 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %vdev, align 8
  %config = getelementptr inbounds %struct.virtio_device, ptr %114, i32 0, i32 8
  %115 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %config, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %get, align 4
  call void %118(ptr noundef %114, i32 noundef 8, ptr noundef nonnull %virtio_cread_v, i32 noundef 4) #8
  %119 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %virtio_cread_v, align 4
  %121 = call i32 @llvm.bswap.i32(i32 %120)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v) #8
  %122 = call i32 @llvm.umin.i32(i32 %121, i32 16)
  %num_scanouts166 = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 4
  %123 = ptrtoint ptr %num_scanouts166 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %num_scanouts166, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool168.not = icmp eq i32 %122, 0
  br i1 %tobool168.not, label %do.body149.err_scanouts_crit_edge, label %do.end173

do.body149.err_scanouts_crit_edge:                ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_scanouts

do.end173:                                        ; preds = %do.body149
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %121) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v177) #8
  %124 = ptrtoint ptr %virtio_cread_v177 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -1, ptr %virtio_cread_v177, align 4, !annotation !99
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 233) #8
  %125 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %vdev, align 8
  %config190 = getelementptr inbounds %struct.virtio_device, ptr %126, i32 0, i32 8
  %127 = ptrtoint ptr %config190 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %config190, align 8
  %get191 = getelementptr inbounds %struct.virtio_config_ops, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %get191 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %get191, align 4
  call void %130(ptr noundef %126, i32 noundef 12, ptr noundef nonnull %virtio_cread_v177, i32 noundef 4) #8
  %131 = ptrtoint ptr %virtio_cread_v177 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %virtio_cread_v177, align 4
  %133 = call i32 @llvm.bswap.i32(i32 %132)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v177) #8
  %call199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %133) #12
  %call200 = call i32 @virtio_gpu_modeset_init(ptr noundef nonnull %call1.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end203, label %do.end173.err_scanouts_crit_edge

do.end173.err_scanouts_crit_edge:                 ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_scanouts

if.end203:                                        ; preds = %do.end173
  %134 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %vdev, align 8
  call fastcc void @virtio_device_ready(ptr noundef %135)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool205.not = icmp eq i32 %132, 0
  br i1 %tobool205.not, label %if.end203.if.end207_crit_edge, label %if.then206

if.end203.if.end207_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end207

if.then206:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @virtio_gpu_get_capsets(ptr noundef nonnull %call1.i.i.i, i32 noundef %133)
  br label %if.end207

if.end207:                                        ; preds = %if.then206, %if.end203.if.end207_crit_edge
  %136 = ptrtoint ptr %has_edid114 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %has_edid114, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool209.not = icmp eq i8 %137, 0
  br i1 %tobool209.not, label %if.end207.if.end212_crit_edge, label %if.then210

if.end207.if.end212_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

if.then210:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #10
  %call211 = call i32 @virtio_gpu_cmd_get_edids(ptr noundef nonnull %call1.i.i.i) #8
  br label %if.end212

if.end212:                                        ; preds = %if.then210, %if.end207.if.end212_crit_edge
  %call213 = call i32 @virtio_gpu_cmd_get_display_info(ptr noundef nonnull %call1.i.i.i) #8
  call void @virtio_gpu_notify(ptr noundef nonnull %call1.i.i.i) #8
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 251) #8
  %display_info_pending = getelementptr inbounds %struct.virtio_gpu_device, ptr %call1.i.i.i, i32 0, i32 12
  %138 = ptrtoint ptr %display_info_pending to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %display_info_pending, align 16, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool220.not = icmp eq i8 %139, 0
  br i1 %tobool220.not, label %if.end212.cleanup267_crit_edge, label %if.then232

if.end212.cleanup267_crit_edge:                   ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup267

if.then232:                                       ; preds = %if.end212
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %140 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call235413 = call i32 @prepare_to_wait_event(ptr noundef %resp_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %141 = ptrtoint ptr %display_info_pending to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %display_info_pending, align 16, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool238.not414 = icmp eq i8 %142, 0
  br i1 %tobool238.not414, label %if.then232.for.end_crit_edge, label %if.then232.cleanup_crit_edge

if.then232.cleanup_crit_edge:                     ; preds = %if.then232
  br label %cleanup

if.then232.for.end_crit_edge:                     ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then232.cleanup_crit_edge
  %__ret233.1415 = phi i32 [ %__ret233.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then232.cleanup_crit_edge ]
  %call258 = call i32 @schedule_timeout(i32 noundef %__ret233.1415) #8
  %call235 = call i32 @prepare_to_wait_event(ptr noundef %resp_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %143 = ptrtoint ptr %display_info_pending to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %display_info_pending, align 16, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool238.not = icmp eq i8 %144, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %tobool244.not = icmp eq i32 %call258, 0
  %145 = select i1 %tobool238.not, i1 %tobool244.not, i1 false
  %__ret233.1 = select i1 %145, i32 1, i32 %call258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret233.1)
  %tobool251.not = icmp eq i32 %__ret233.1, 0
  %146 = select i1 %tobool238.not, i1 true, i1 %tobool251.not
  br i1 %146, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then232.for.end_crit_edge
  call void @finish_wait(ptr noundef %resp_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup267

err_scanouts:                                     ; preds = %do.end173.err_scanouts_crit_edge, %do.body149.err_scanouts_crit_edge
  %.str.36.sink = phi ptr [ @.str.29, %do.body149.err_scanouts_crit_edge ], [ @.str.36, %do.end173.err_scanouts_crit_edge ]
  %ret.0 = phi i32 [ -22, %do.body149.err_scanouts_crit_edge ], [ %call200, %do.end173.err_scanouts_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.36.sink) #8
  call void @virtio_gpu_free_vbufs(ptr noundef nonnull %call1.i.i.i) #8
  br label %err_vbufs

err_vbufs:                                        ; preds = %err_scanouts, %if.then147
  %ret.1 = phi i32 [ %call145, %if.then147 ], [ %ret.0, %err_scanouts ]
  %147 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %vdev, align 8
  %config264 = getelementptr inbounds %struct.virtio_device, ptr %148, i32 0, i32 8
  %149 = ptrtoint ptr %config264 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %config264, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %150, i32 0, i32 8
  %151 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %del_vqs, align 4
  call void %152(ptr noundef %148) #8
  br label %err_vqs

err_vqs:                                          ; preds = %err_vbufs, %if.then139, %if.then83
  %ret.2 = phi i32 [ %call.i408, %if.then139 ], [ %ret.1, %err_vbufs ], [ -16, %if.then83 ]
  %153 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %dev_private, align 4
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #8
  br label %cleanup267

cleanup267:                                       ; preds = %err_vqs, %for.end, %if.end212.cleanup267_crit_edge, %if.end.cleanup267_crit_edge, %entry.cleanup267_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_vqs ], [ -19, %entry.cleanup267_crit_edge ], [ -12, %if.end.cleanup267_crit_edge ], [ 0, %for.end ], [ 0, %if.end212.cleanup267_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vqs) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_ctrl_ack(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cursor_ack(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_dequeue_ctrl_func(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_dequeue_cursor_func(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_config_changed_work_func(ptr noundef %work) #0 align 64 {
entry:
  %virtio_cread_v = alloca i32, align 4
  %virtio_cwrite_v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v) #8
  %0 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %virtio_cread_v, align 4, !annotation !99
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 43) #8
  %vdev = getelementptr i8, ptr %work, i32 -36104
  %1 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vdev, align 8
  %config = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get, align 4
  call void %6(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %virtio_cread_v, i32 noundef 4) #8
  %7 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virtio_cread_v, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v) #8
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %if.then

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

if.then:                                          ; preds = %entry
  %has_edid = getelementptr i8, ptr %work, i32 -179
  %10 = ptrtoint ptr %has_edid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_edid, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %if.then.if.end_crit_edge, label %if.then10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call = call i32 @virtio_gpu_cmd_get_edids(ptr noundef %add.ptr) #8
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  %call11 = call i32 @virtio_gpu_cmd_get_display_info(ptr noundef %add.ptr) #8
  call void @virtio_gpu_notify(ptr noundef %add.ptr) #8
  %ddev = getelementptr i8, ptr %work, i32 -36108
  %12 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddev, align 4
  %call12 = call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %13) #8
  br label %do.body14

do.body14:                                        ; preds = %if.end, %entry.do.body14_crit_edge
  %events_clear.0 = phi i32 [ 16777216, %if.end ], [ 0, %entry.do.body14_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cwrite_v) #8
  %14 = ptrtoint ptr %virtio_cwrite_v to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %events_clear.0, ptr %virtio_cwrite_v, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 53) #8
  %15 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdev, align 8
  %config27 = getelementptr inbounds %struct.virtio_device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %config27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config27, align 8
  %set = getelementptr inbounds %struct.virtio_config_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set, align 4
  call void %20(ptr noundef %16, i32 noundef 4, ptr noundef nonnull %virtio_cwrite_v, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cwrite_v) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_array_put_free_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_alloc_vbufs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_modeset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtio_device_ready(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %config = getelementptr inbounds %struct.virtio_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 8
  %get_status = getelementptr inbounds %struct.virtio_config_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_status, align 4
  %call = tail call zeroext i8 %3(ptr noundef %dev) #8
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %7(ptr noundef %dev) #8
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %8 = and i8 %call, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %do.end14, label %do.body8, !prof !101

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #8, !srcloc !102
  unreachable

do.end14:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config, align 8
  %set_status = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %set_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_status, align 4
  %or = or i8 %call, 4
  tail call void %12(ptr noundef %dev, i8 noundef zeroext %or) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtio_gpu_get_capsets(ptr noundef %vgdev, i32 noundef %num_capsets) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_capsets, i32 12) #8
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !103

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %capsets143 = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 28
  %2 = ptrtoint ptr %capsets143 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %capsets143, align 4
  br label %if.then

if.end7.i.i:                                      ; preds = %entry
  %3 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #11
  %capsets = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 28
  %4 = ptrtoint ptr %capsets to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %capsets, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.if.then_crit_edge, label %for.cond.preheader

if.end7.i.i.if.then_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_capsets)
  %cmp159.not = icmp eq i32 %num_capsets, 0
  br i1 %cmp159.not, label %for.cond.preheader.for.end87_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end87_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end87

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %resp_wq = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 10
  %capset_id_mask = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 30
  br label %for.body

if.then:                                          ; preds = %if.end7.i.i.if.then_crit_edge, %kcalloc.exit.thread
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44) #8
  br label %cleanup89

for.body:                                         ; preds = %lor.lhs.false65.critedge.for.body_crit_edge, %for.body.lr.ph
  %i.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %lor.lhs.false65.critedge.for.body_crit_edge ]
  %call2 = call i32 @virtio_gpu_cmd_get_capset_info(ptr noundef %vgdev, i32 noundef %i.0160) #8
  call void @virtio_gpu_notify(ptr noundef %vgdev) #8
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 81) #8
  %5 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %capsets, align 4
  %arrayidx = getelementptr %struct.virtio_gpu_drv_capset, ptr %6, i32 %i.0160
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.not = icmp eq i32 %8, 0
  br i1 %cmp7.not, label %if.then15, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then15:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call18153 = call i32 @prepare_to_wait_event(ptr noundef %resp_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %10 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %capsets, align 4
  %arrayidx21154 = getelementptr %struct.virtio_gpu_drv_capset, ptr %11, i32 %i.0160
  %12 = ptrtoint ptr %arrayidx21154 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx21154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp23.not155.not = icmp eq i32 %13, 0
  br i1 %cmp23.not155.not, label %if.then15.cleanup_crit_edge, label %if.then15.if.end43_crit_edge

if.then15.if.end43_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then15.cleanup_crit_edge
  %__ret16.1157 = phi i32 [ %__ret16.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then15.cleanup_crit_edge ]
  %call40 = call i32 @schedule_timeout(i32 noundef %__ret16.1157) #8
  %call18 = call i32 @prepare_to_wait_event(ptr noundef %resp_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %14 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %capsets, align 4
  %arrayidx21 = getelementptr %struct.virtio_gpu_drv_capset, ptr %15, i32 %i.0160
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp23.not = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool27.not = icmp eq i32 %call40, 0
  %spec.store.select94 = select i1 %tobool27.not, i32 1, i32 %call40
  %__ret16.1 = select i1 %cmp23.not, i32 %call40, i32 %spec.store.select94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1)
  %tobool33.not = icmp eq i32 %__ret16.1, 0
  %not.cmp23.not = xor i1 %cmp23.not, true
  %18 = select i1 %not.cmp23.not, i1 true, i1 %tobool33.not
  br i1 %18, label %cleanup.if.end43_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.if.end43_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end43:                                         ; preds = %cleanup.if.end43_crit_edge, %if.then15.if.end43_crit_edge
  %__ret16.1.lcssa = phi i32 [ 500, %if.then15.if.end43_crit_edge ], [ %__ret16.1, %cleanup.if.end43_crit_edge ]
  call void @finish_wait(ptr noundef %resp_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1.lcssa)
  %cmp55 = icmp eq i32 %__ret16.1.lcssa, 0
  br i1 %cmp55, label %if.then56, label %if.end43.if.else_crit_edge

if.end43.if.else_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then56:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45, i32 noundef %i.0160) #8
  br label %if.then67

if.else:                                          ; preds = %if.end43.if.else_crit_edge, %for.body.if.else_crit_edge
  %19 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %capsets, align 4
  %arrayidx46176 = getelementptr %struct.virtio_gpu_drv_capset, ptr %20, i32 %i.0160
  %21 = ptrtoint ptr %arrayidx46176 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx46176, align 4
  %23 = add i32 %22, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %23)
  %24 = icmp ult i32 %23, -63
  br i1 %24, label %if.then58, label %lor.lhs.false65.critedge

if.then58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46, i32 noundef %22) #8
  br label %if.then67

lor.lhs.false65.critedge:                         ; preds = %if.else
  %shl = shl nuw i32 1, %22
  %conv = sext i32 %shl to i64
  %25 = ptrtoint ptr %capset_id_mask to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %capset_id_mask, align 8
  %or = or i64 %26, %conv
  store i64 %or, ptr %capset_id_mask, align 8
  %27 = ptrtoint ptr %arrayidx46176 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx46176, align 4
  %max_version = getelementptr %struct.virtio_gpu_drv_capset, ptr %20, i32 %i.0160, i32 1
  %29 = ptrtoint ptr %max_version to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_version, align 4
  %max_size = getelementptr %struct.virtio_gpu_drv_capset, ptr %20, i32 %i.0160, i32 2
  %31 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_size, align 4
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %i.0160, i32 noundef %28, i32 noundef %30, i32 noundef %32) #12
  %inc = add nuw nsw i32 %i.0160, 1
  %exitcond.not = icmp eq i32 %inc, %num_capsets
  br i1 %exitcond.not, label %lor.lhs.false65.critedge.for.end87_crit_edge, label %lor.lhs.false65.critedge.for.body_crit_edge

lor.lhs.false65.critedge.for.body_crit_edge:      ; preds = %lor.lhs.false65.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

lor.lhs.false65.critedge.for.end87_crit_edge:     ; preds = %lor.lhs.false65.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end87

if.then67:                                        ; preds = %if.then58, %if.then56
  %display_info_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %display_info_lock) #8
  %33 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %capsets, align 4
  call void @kfree(ptr noundef %34) #8
  %35 = ptrtoint ptr %capsets to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %capsets, align 4
  call void @_raw_spin_unlock(ptr noundef %display_info_lock) #8
  br label %cleanup89

for.end87:                                        ; preds = %lor.lhs.false65.critedge.for.end87_crit_edge, %for.cond.preheader.for.end87_crit_edge
  %num_capsets88 = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 29
  %36 = ptrtoint ptr %num_capsets88 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %num_capsets, ptr %num_capsets88, align 8
  br label %cleanup89

cleanup89:                                        ; preds = %for.end87, %if.then67, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_cmd_get_edids(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_cmd_get_display_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_free_vbufs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_deinit(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %obj_free_work = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 25
  %call = tail call zeroext i1 @flush_work(ptr noundef %obj_free_work) #8
  %dequeue_work = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 5, i32 3
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %dequeue_work) #8
  %dequeue_work2 = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 6, i32 3
  %call3 = tail call zeroext i1 @flush_work(ptr noundef %dequeue_work2) #8
  %config_changed_work = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 24
  %call4 = tail call zeroext i1 @flush_work(ptr noundef %config_changed_work) #8
  %vdev = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 8
  tail call void @virtio_reset_device(ptr noundef %3) #8
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 8
  %config = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %del_vqs, align 4
  tail call void %9(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_release(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @virtio_gpu_modeset_fini(ptr noundef nonnull %1) #8
  tail call void @virtio_gpu_free_vbufs(ptr noundef nonnull %1) #8
  %cap_cache.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %cap_cache.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cap_cache.i, align 8
  %cmp.not18.i = icmp eq ptr %3, %cap_cache.i
  br i1 %cmp.not18.i, label %if.end.virtio_gpu_cleanup_cap_cache.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.virtio_gpu_cleanup_cap_cache.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtio_gpu_cleanup_cap_cache.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %cache_ent.019.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %3, %if.end.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %cache_ent.019.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0.i = load ptr, ptr %cache_ent.019.i, align 4
  %caps_cache.i = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %cache_ent.019.i, i32 0, i32 1
  %5 = ptrtoint ptr %caps_cache.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %caps_cache.i, align 4
  tail call void @kfree(ptr noundef %6) #8
  tail call void @kfree(ptr noundef %cache_ent.019.i) #8
  %cmp.not.i = icmp eq ptr %tmp.0.i, %cap_cache.i
  br i1 %cmp.not.i, label %for.body.i.virtio_gpu_cleanup_cap_cache.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.virtio_gpu_cleanup_cap_cache.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtio_gpu_cleanup_cap_cache.exit

virtio_gpu_cleanup_cap_cache.exit:                ; preds = %for.body.i.virtio_gpu_cleanup_cap_cache.exit_crit_edge, %if.end.virtio_gpu_cleanup_cap_cache.exit_crit_edge
  %has_host_visible = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %has_host_visible to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_host_visible, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %virtio_gpu_cleanup_cap_cache.exit.if.end3_crit_edge, label %if.then2

virtio_gpu_cleanup_cap_cache.exit.if.end3_crit_edge: ; preds = %virtio_gpu_cleanup_cap_cache.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %virtio_gpu_cleanup_cap_cache.exit
  call void @__sanitizer_cov_trace_pc() #10
  %host_visible_mm = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 23
  tail call void @drm_mm_takedown(ptr noundef %host_visible_mm) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %virtio_gpu_cleanup_cap_cache.exit.if.end3_crit_edge
  %capsets = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 28
  %9 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %capsets, align 4
  tail call void @kfree(ptr noundef %10) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_modeset_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_driver_open(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %has_virgl_3d = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %has_virgl_3d to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_virgl_3d, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 128) #13
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  %context_lock = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %context_lock, ptr noundef nonnull @.str.37, ptr noundef nonnull @virtio_gpu_driver_open.__key) #8
  %ctx_id_ida = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 14
  %call.i = tail call i32 @ida_alloc_range(ptr noundef %ctx_id_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end6:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw i32 %call.i, 1
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %call7.i.i, align 8
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %6 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_driver_postclose(ptr nocapture noundef readonly %dev, ptr nocapture noundef %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %has_virgl_3d = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %has_virgl_3d to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_virgl_3d, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %context_created = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %context_created to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %context_created, align 8, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 8
  tail call void @virtio_gpu_cmd_context_destroy(ptr noundef %1, i32 noundef %9) #8
  tail call void @virtio_gpu_notify(ptr noundef %1) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %ctx_id_ida = getelementptr inbounds %struct.virtio_gpu_device, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 8
  %sub = add i32 %11, -1
  tail call void @ida_free(ptr noundef %ctx_id_ida, i32 noundef %sub) #8
  %context_lock = getelementptr inbounds %struct.virtio_gpu_fpriv, ptr %3, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %context_lock) #8
  tail call void @kfree(ptr noundef %3) #8
  %12 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %driver_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_context_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_cmd_get_capset_info(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !83, !85, !87, !88, !89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @virtio_gpu_init.callbacks, !1, !"callbacks", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 115, i32 24}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 118, i32 40}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 118, i32 51}
!6 = !{ptr @virtio_gpu_init.names, !7, !"names", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 118, i32 28}
!8 = !{ptr @virtio_gpu_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 138, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @virtio_gpu_init.__key.3, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 139, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @virtio_gpu_init.__key.5, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 140, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @virtio_gpu_init.__key.7, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 143, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @virtio_gpu_init.__key.9, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 148, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @virtio_gpu_init.__key.11, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 151, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @virtio_gpu_init.__key.13, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 154, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @virtio_gpu_init.__key.15, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 157, i32 2}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 181, i32 4}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 186, i32 3}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @virtio_gpu_init._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @virtio_gpu_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 198, i32 2}
!42 = !{ptr @virtio_gpu_init._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @virtio_gpu_init._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 204, i32 2}
!46 = !{ptr @virtio_gpu_init._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @virtio_gpu_init._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 209, i32 3}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 216, i32 3}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 226, i32 3}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 230, i32 2}
!56 = !{ptr @virtio_gpu_init._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @virtio_gpu_init._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 234, i32 2}
!60 = !{ptr @virtio_gpu_init._entry.33, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @virtio_gpu_init._entry_ptr.35, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 238, i32 3}
!64 = !{ptr @virtio_gpu_driver_open.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 319, i32 2}
!66 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @xa_init_flags.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!69 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @virtio_gpu_init_vq.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 59, i32 2}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @virtio_gpu_init_vq.__key.40, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 60, i32 2}
!75 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @virtio_gpu_init_vq.__key.42, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 61, i32 2}
!78 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 74, i32 3}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 91, i32 4}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 93, i32 4}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/virtio/virtgpu_kms.c", i32 104, i32 3}
!87 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @virtio_gpu_get_capsets._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @virtio_gpu_get_capsets._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"auto-init"}
!100 = !{i8 0, i8 2}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2153843451, i64 2153843945, i64 2153843488, i64 2153843544, i64 2153843578, i64 2153843602, i64 2153843643, i64 2153843664, i64 2153843692, i64 2153843726}
!103 = !{!"branch_weights", i32 1, i32 2000}
