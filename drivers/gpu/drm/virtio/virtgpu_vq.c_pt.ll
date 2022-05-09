; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/virtio/virtgpu_vq.c_pt.bc'
source_filename = "../drivers/gpu/drm/virtio/virtgpu_vq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.virtio_device_id = type { i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.virtio_gpu_vbuffer = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.virtio_gpu_object_params = type { i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.virtio_gpu_object_array = type { %struct.ww_acquire_ctx, %struct.list_head, i32, i32, [0 x ptr] }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.virtio_gpu_object_shmem = type { %struct.virtio_gpu_object, ptr, i32 }
%struct.virtio_gpu_resp_display_info = type { %struct.virtio_gpu_ctrl_hdr, [16 x %struct.virtio_gpu_display_one] }
%struct.virtio_gpu_get_capset_info = type { %struct.virtio_gpu_ctrl_hdr, i32, i32 }
%struct.virtio_gpu_resp_capset_info = type { %struct.virtio_gpu_ctrl_hdr, i32, i32, i32, i32 }
%struct.virtio_gpu_drv_capset = type { i32, i32, i32 }
%struct.virtio_gpu_drv_cap_cache = type { %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t }
%struct.virtio_gpu_get_capset = type { %struct.virtio_gpu_ctrl_hdr, i32, i32 }
%struct.virtio_gpu_resp_capset = type { %struct.virtio_gpu_ctrl_hdr, [0 x i8] }
%struct.virtio_gpu_cmd_get_edid = type { %struct.virtio_gpu_ctrl_hdr, i32, i32 }
%struct.drm_virtgpu_3d_box = type { i32, i32, i32, i32, i32, i32 }
%struct.virtio_gpu_resp_resource_uuid = type { %struct.virtio_gpu_ctrl_hdr, [16 x i8] }
%struct.virtio_gpu_resp_map_info = type { %struct.virtio_gpu_ctrl_hdr, i32, i32 }
%struct.virtio_gpu_object_vram = type { %struct.virtio_gpu_object, i32, i32, %struct.drm_mm_node }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.virtio_gpu_resp_edid = type { %struct.virtio_gpu_ctrl_hdr, i32, i32, [1024 x i8] }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"virtio-gpu-vbufs\00", [47 x i8] zeroinitializer }, align 32
@virtio_gpu_dequeue_ctrl_func._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.virtio_gpu_dequeue_ctrl_func = private unnamed_addr constant [29 x i8] c"virtio_gpu_dequeue_ctrl_func\00", align 1
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* response 0x%x (command 0x%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"response 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/virtio/virtgpu_vq.c\00", [60 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Huh? zero vbufs reclaimed\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_virtio_gpu_cmd_response = external dso_local global %struct.tracepoint, align 4
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/virtio/virtgpu_trace.h\00", [57 x i8] zeroinitializer }, align 32
@trace_virtio_gpu_cmd_response.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_virtio_gpu_cmd_queue = external dso_local global %struct.tracepoint, align 4
@trace_virtio_gpu_cmd_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"output %d: %dx%d+%d+%d\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"output %d: disabled\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid capset memory.\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 72, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 222, i32 5 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 226, i32 5 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 883, i32 6 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 191, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/virtio/virtgpu_trace.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 43, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 108, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 651, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 657, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [39 x i8] c"../drivers/gpu/drm/virtio/virtgpu_vq.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 684, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @virtio_gpu_dequeue_ctrl_func._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_dequeue_ctrl_func._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_ctrl_ack(ptr nocapture noundef readonly %vq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %dequeue_work = getelementptr inbounds %struct.virtio_gpu_device, ptr %5, i32 0, i32 5, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %dequeue_work) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cursor_ack(ptr nocapture noundef readonly %vq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %dequeue_work = getelementptr inbounds %struct.virtio_gpu_device, ptr %5, i32 0, i32 6, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %dequeue_work) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_alloc_vbufs(ptr nocapture noundef writeonly %vgdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 164, i32 noundef 4, i32 noundef 0, ptr noundef null) #11
  %vbufs = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %0 = ptrtoint ptr %vbufs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %vbufs, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_free_vbufs(ptr nocapture noundef %vgdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vbufs = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %0 = ptrtoint ptr %vbufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbufs, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #11
  %2 = ptrtoint ptr %vbufs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vbufs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_dequeue_ctrl_func(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %len.i = alloca i32, align 4
  %reclaim_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reclaim_list) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %reclaim_list, i32 0, i32 1
  %1 = ptrtoint ptr %reclaim_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %reclaim_list, ptr %reclaim_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %reclaim_list, ptr %0, align 4
  %ctrlq = getelementptr i8, ptr %work, i32 -100
  %qlock = getelementptr i8, ptr %work, i32 -96
  call void @_raw_spin_lock(ptr noundef %qlock) #11
  br label %do.body

do.body:                                          ; preds = %reclaim_vbufs.exit.do.body_crit_edge, %entry
  %3 = ptrtoint ptr %ctrlq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrlq, align 4
  call void @virtqueue_disable_cb(ptr noundef %4) #11
  %5 = ptrtoint ptr %ctrlq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrlq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #11
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %len.i, align 4, !annotation !41
  %call2.i = call ptr @virtqueue_get_buf(ptr noundef %6, ptr noundef nonnull %len.i) #11
  %tobool.not3.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not3.i, label %do.body.if.then.i_crit_edge, label %do.body.while.body.i_crit_edge

do.body.while.body.i_crit_edge:                   ; preds = %do.body
  br label %while.body.i

do.body.if.then.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

while.body.i:                                     ; preds = %list_add_tail.exit.i.while.body.i_crit_edge, %do.body.while.body.i_crit_edge
  %call5.i = phi ptr [ %call.i, %list_add_tail.exit.i.while.body.i_crit_edge ], [ %call2.i, %do.body.while.body.i_crit_edge ]
  %freed.04.i = phi i32 [ %inc.i, %list_add_tail.exit.i.while.body.i_crit_edge ], [ 0, %do.body.while.body.i_crit_edge ]
  %list.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call5.i, i32 0, i32 9
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %9, ptr noundef nonnull %reclaim_list) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_add_tail.exit.i_crit_edge

while.body.i.list_add_tail.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list.i, ptr %0, align 4
  %11 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reclaim_list, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call5.i, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list.i, ptr %9, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_add_tail.exit.i_crit_edge
  %inc.i = add i32 %freed.04.i, 1
  %call.i = call ptr @virtqueue_get_buf(ptr noundef %6, ptr noundef nonnull %len.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.end.i, label %list_add_tail.exit.i.while.body.i_crit_edge

list_add_tail.exit.i.while.body.i_crit_edge:      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %phi.cmp.i = icmp eq i32 %inc.i, 0
  br i1 %phi.cmp.i, label %while.end.i.if.then.i_crit_edge, label %while.end.i.reclaim_vbufs.exit_crit_edge

while.end.i.reclaim_vbufs.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %reclaim_vbufs.exit

while.end.i.if.then.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %while.end.i.if.then.i_crit_edge, %do.body.if.then.i_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #11
  br label %reclaim_vbufs.exit

reclaim_vbufs.exit:                               ; preds = %if.then.i, %while.end.i.reclaim_vbufs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #11
  %14 = ptrtoint ptr %ctrlq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrlq, align 4
  %call = call zeroext i1 @virtqueue_enable_cb(ptr noundef %15) #11
  br i1 %call, label %do.end, label %reclaim_vbufs.exit.do.body_crit_edge

reclaim_vbufs.exit.do.body_crit_edge:             ; preds = %reclaim_vbufs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %reclaim_vbufs.exit
  %add.ptr = getelementptr i8, ptr %work, i32 -35448
  call void @_raw_spin_unlock(ptr noundef %qlock) #11
  %16 = ptrtoint ptr %reclaim_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn105 = load ptr, ptr %reclaim_list, align 4
  %cmp.not107 = icmp eq ptr %.pn105, %reclaim_list
  br i1 %cmp.not107, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn108 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn105, %do.end.for.body_crit_edge ]
  %entry1.0109 = getelementptr i8, ptr %.pn108, i32 -36
  %resp_buf = getelementptr i8, ptr %.pn108, i32 -20
  %17 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resp_buf, align 4
  %19 = ptrtoint ptr %ctrlq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrlq, align 4
  call fastcc void @trace_virtio_gpu_cmd_response(ptr noundef %20, ptr noundef %18)
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1114112, i32 %22)
  %cmp16.not = icmp eq i32 %22, 1114112
  br i1 %cmp16.not, label %for.body.if.end27_crit_edge, label %if.then

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then:                                          ; preds = %for.body
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4607, i32 %23)
  %cmp18 = icmp ugt i32 %23, 4607
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then
  %24 = ptrtoint ptr %entry1.0109 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %entry1.0109, align 4
  %call21 = call i32 @___ratelimit(ptr noundef nonnull @virtio_gpu_dequeue_ctrl_func._rs, ptr noundef nonnull @__func__.virtio_gpu_dequeue_ctrl_func) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.then19.if.end27_crit_edge, label %if.then22

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %18, align 8
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %25, align 8
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %28, i32 noundef %31) #11
  br label %if.end27

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %23) #11
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then22, %if.then19.if.end27_crit_edge, %for.body.if.end27_crit_edge
  %flags = getelementptr inbounds %struct.virtio_gpu_ctrl_hdr, ptr %18, i32 0, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and = and i32 %33, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end27.if.end31_crit_edge, label %if.then29

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %fence_id30 = getelementptr inbounds %struct.virtio_gpu_ctrl_hdr, ptr %18, i32 0, i32 2
  %34 = ptrtoint ptr %fence_id30 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %fence_id30, align 8
  %36 = call i64 @llvm.bswap.i64(i64 %35)
  call void @virtio_gpu_fence_event_process(ptr noundef %add.ptr, i64 noundef %36) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  %resp_cb = getelementptr i8, ptr %.pn108, i32 -12
  %37 = ptrtoint ptr %resp_cb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resp_cb, align 4
  %tobool32.not = icmp eq ptr %38, null
  br i1 %tobool32.not, label %if.end31.for.inc_crit_edge, label %if.then33

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  call void %38(ptr noundef %add.ptr, ptr noundef %entry1.0109) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %if.end31.for.inc_crit_edge
  %39 = ptrtoint ptr %.pn108 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn = load ptr, ptr %.pn108, align 4
  %cmp.not = icmp eq ptr %.pn, %reclaim_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %ack_queue = getelementptr i8, ptr %work, i32 -52
  call void @__wake_up(ptr noundef %ack_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %40 = ptrtoint ptr %reclaim_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reclaim_list, align 4
  %cmp53.not113 = icmp eq ptr %41, %reclaim_list
  br i1 %cmp53.not113, label %for.end.for.end67_crit_edge, label %for.body55.lr.ph

for.end.for.end67_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end67

for.body55.lr.ph:                                 ; preds = %for.end
  %vbufs.i = getelementptr i8, ptr %work, i32 188
  br label %for.body55

for.body55:                                       ; preds = %free_vbuf.exit.for.body55_crit_edge, %for.body55.lr.ph
  %.pn100.in114 = phi ptr [ %41, %for.body55.lr.ph ], [ %.pn100117, %free_vbuf.exit.for.body55_crit_edge ]
  %entry1.1116 = getelementptr i8, ptr %.pn100.in114, i32 -36
  %42 = ptrtoint ptr %.pn100.in114 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn100117 = load ptr, ptr %.pn100.in114, align 4
  %objs = getelementptr i8, ptr %.pn100.in114, i32 -4
  %43 = ptrtoint ptr %objs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %objs, align 4
  %tobool56.not = icmp eq ptr %44, null
  br i1 %tobool56.not, label %for.body55.if.end59_crit_edge, label %if.then57

for.body55.if.end59_crit_edge:                    ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then57:                                        ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #13
  call void @virtio_gpu_array_put_free_delayed(ptr noundef %add.ptr, ptr noundef nonnull %44) #11
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %for.body55.if.end59_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn100.in114) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end59.list_del.exit_crit_edge

if.end59.list_del.exit_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i102 = getelementptr inbounds %struct.list_head, ptr %.pn100.in114, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i102, align 4
  %47 = ptrtoint ptr %.pn100.in114 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %.pn100.in114, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end59.list_del.exit_crit_edge
  %51 = ptrtoint ptr %.pn100.in114 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn100.in114, align 4
  %prev.i103 = getelementptr inbounds %struct.list_head, ptr %.pn100.in114, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i103, align 4
  %resp_size.i = getelementptr i8, ptr %.pn100.in114, i32 -16
  %53 = ptrtoint ptr %resp_size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %resp_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %54)
  %cmp.i = icmp sgt i32 %54, 24
  br i1 %cmp.i, label %if.then.i104, label %list_del.exit.free_vbuf.exit_crit_edge

list_del.exit.free_vbuf.exit_crit_edge:           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_vbuf.exit

if.then.i104:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %resp_buf.i = getelementptr i8, ptr %.pn100.in114, i32 -20
  %55 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %resp_buf.i, align 4
  call void @kfree(ptr noundef %56) #11
  br label %free_vbuf.exit

free_vbuf.exit:                                   ; preds = %if.then.i104, %list_del.exit.free_vbuf.exit_crit_edge
  %data_buf.i = getelementptr i8, ptr %.pn100.in114, i32 -28
  %57 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data_buf.i, align 4
  call void @kvfree(ptr noundef %58) #11
  %59 = ptrtoint ptr %vbufs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vbufs.i, align 4
  call void @kmem_cache_free(ptr noundef %60, ptr noundef %entry1.1116) #11
  %cmp53.not = icmp eq ptr %.pn100117, %reclaim_list
  br i1 %cmp53.not, label %free_vbuf.exit.for.end67_crit_edge, label %free_vbuf.exit.for.body55_crit_edge

free_vbuf.exit.for.body55_crit_edge:              ; preds = %free_vbuf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body55

free_vbuf.exit.for.end67_crit_edge:               ; preds = %free_vbuf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end67

for.end67:                                        ; preds = %free_vbuf.exit.for.end67_crit_edge, %for.end.for.end67_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reclaim_list) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_enable_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_virtio_gpu_cmd_response(ptr noundef %vq, ptr noundef %hdr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_virtio_gpu_cmd_response, i32 0, i32 1), ptr blockaddress(@trace_virtio_gpu_cmd_response, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !42

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !31) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !31) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !44
  %call42 = tail call i32 @__traceiter_virtio_gpu_cmd_response(ptr noundef null, ptr noundef %vq, ptr noundef %hdr) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !45
  %13 = tail call i32 @llvm.read_register.i32(metadata !31) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !31) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !43

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !31) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_virtio_gpu_cmd_response, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_virtio_gpu_cmd_response, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_virtio_gpu_cmd_response.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_virtio_gpu_cmd_response.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 46, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !47
  %31 = tail call i32 @llvm.read_register.i32(metadata !31) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_fence_event_process(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_array_put_free_delayed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_dequeue_cursor_func(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %len.i = alloca i32, align 4
  %reclaim_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reclaim_list) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %reclaim_list, i32 0, i32 1
  %1 = ptrtoint ptr %reclaim_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %reclaim_list, ptr %reclaim_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %reclaim_list, ptr %0, align 4
  %cursorq = getelementptr i8, ptr %work, i32 -100
  %qlock = getelementptr i8, ptr %work, i32 -96
  call void @_raw_spin_lock(ptr noundef %qlock) #11
  br label %do.body

do.body:                                          ; preds = %reclaim_vbufs.exit.do.body_crit_edge, %entry
  %3 = ptrtoint ptr %cursorq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cursorq, align 4
  call void @virtqueue_disable_cb(ptr noundef %4) #11
  %5 = ptrtoint ptr %cursorq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cursorq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #11
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %len.i, align 4, !annotation !41
  %call2.i = call ptr @virtqueue_get_buf(ptr noundef %6, ptr noundef nonnull %len.i) #11
  %tobool.not3.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not3.i, label %do.body.if.then.i_crit_edge, label %do.body.while.body.i_crit_edge

do.body.while.body.i_crit_edge:                   ; preds = %do.body
  br label %while.body.i

do.body.if.then.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

while.body.i:                                     ; preds = %list_add_tail.exit.i.while.body.i_crit_edge, %do.body.while.body.i_crit_edge
  %call5.i = phi ptr [ %call.i, %list_add_tail.exit.i.while.body.i_crit_edge ], [ %call2.i, %do.body.while.body.i_crit_edge ]
  %freed.04.i = phi i32 [ %inc.i, %list_add_tail.exit.i.while.body.i_crit_edge ], [ 0, %do.body.while.body.i_crit_edge ]
  %list.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call5.i, i32 0, i32 9
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %9, ptr noundef nonnull %reclaim_list) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_add_tail.exit.i_crit_edge

while.body.i.list_add_tail.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list.i, ptr %0, align 4
  %11 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reclaim_list, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call5.i, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list.i, ptr %9, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_add_tail.exit.i_crit_edge
  %inc.i = add i32 %freed.04.i, 1
  %call.i = call ptr @virtqueue_get_buf(ptr noundef %6, ptr noundef nonnull %len.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.end.i, label %list_add_tail.exit.i.while.body.i_crit_edge

list_add_tail.exit.i.while.body.i_crit_edge:      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %phi.cmp.i = icmp eq i32 %inc.i, 0
  br i1 %phi.cmp.i, label %while.end.i.if.then.i_crit_edge, label %while.end.i.reclaim_vbufs.exit_crit_edge

while.end.i.reclaim_vbufs.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %reclaim_vbufs.exit

while.end.i.if.then.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %while.end.i.if.then.i_crit_edge, %do.body.if.then.i_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #11
  br label %reclaim_vbufs.exit

reclaim_vbufs.exit:                               ; preds = %if.then.i, %while.end.i.reclaim_vbufs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #11
  %14 = ptrtoint ptr %cursorq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cursorq, align 4
  %call = call zeroext i1 @virtqueue_enable_cb(ptr noundef %15) #11
  br i1 %call, label %do.end, label %reclaim_vbufs.exit.do.body_crit_edge

reclaim_vbufs.exit.do.body_crit_edge:             ; preds = %reclaim_vbufs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %reclaim_vbufs.exit
  call void @_raw_spin_unlock(ptr noundef %qlock) #11
  %16 = ptrtoint ptr %reclaim_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reclaim_list, align 4
  %cmp.not40 = icmp eq ptr %17, %reclaim_list
  br i1 %cmp.not40, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %vbufs.i = getelementptr i8, ptr %work, i32 44
  br label %for.body

for.body:                                         ; preds = %free_vbuf.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in41 = phi ptr [ %17, %for.body.lr.ph ], [ %.pn, %free_vbuf.exit.for.body_crit_edge ]
  %entry1.0 = getelementptr i8, ptr %.pn.in41, i32 -36
  %18 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn.in41, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in41) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i37 = getelementptr inbounds %struct.list_head, ptr %.pn.in41, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i37, align 4
  %21 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.in41, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %25 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in41, align 4
  %prev.i38 = getelementptr inbounds %struct.list_head, ptr %.pn.in41, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i38, align 4
  %resp_size.i = getelementptr i8, ptr %.pn.in41, i32 -16
  %27 = ptrtoint ptr %resp_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resp_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %28)
  %cmp.i = icmp sgt i32 %28, 24
  br i1 %cmp.i, label %if.then.i39, label %list_del.exit.free_vbuf.exit_crit_edge

list_del.exit.free_vbuf.exit_crit_edge:           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_vbuf.exit

if.then.i39:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %resp_buf.i = getelementptr i8, ptr %.pn.in41, i32 -20
  %29 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resp_buf.i, align 4
  call void @kfree(ptr noundef %30) #11
  br label %free_vbuf.exit

free_vbuf.exit:                                   ; preds = %if.then.i39, %list_del.exit.free_vbuf.exit_crit_edge
  %data_buf.i = getelementptr i8, ptr %.pn.in41, i32 -28
  %31 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data_buf.i, align 4
  call void @kvfree(ptr noundef %32) #11
  %33 = ptrtoint ptr %vbufs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vbufs.i, align 4
  call void @kmem_cache_free(ptr noundef %34, ptr noundef %entry1.0) #11
  %cmp.not = icmp eq ptr %.pn, %reclaim_list
  br i1 %cmp.not, label %free_vbuf.exit.for.end_crit_edge, label %free_vbuf.exit.for.body_crit_edge

free_vbuf.exit.for.body_crit_edge:                ; preds = %free_vbuf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

free_vbuf.exit.for.end_crit_edge:                 ; preds = %free_vbuf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %free_vbuf.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %ack_queue = getelementptr i8, ptr %work, i32 -52
  call void @__wake_up(ptr noundef %ack_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reclaim_list) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_notify(ptr noundef %vgdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_commands = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_commands, i32 noundef 4) #11
  %0 = ptrtoint ptr %pending_commands to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %pending_commands, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrlq = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 5
  %qlock = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 5, i32 1
  tail call void @_raw_spin_lock(ptr noundef %qlock) #11
  %call.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_commands, i32 noundef 4) #11
  %2 = ptrtoint ptr %pending_commands to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %pending_commands, align 4
  %3 = ptrtoint ptr %ctrlq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrlq, align 4
  %call3 = tail call zeroext i1 @virtqueue_kick_prepare(ptr noundef %4) #11
  tail call void @_raw_spin_unlock(ptr noundef %qlock) #11
  br i1 %call3, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %ctrlq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrlq, align 4
  %call10 = tail call zeroext i1 @virtqueue_notify(ptr noundef %6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_create_resource(ptr noundef %vgdev, ptr nocapture noundef %bo, ptr nocapture noundef readonly %params, ptr noundef %objs, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %0 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %2 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 40, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 84
  %6 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr15.i.i.i, ptr %6, align 8
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 24)
  %objs1 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %objs1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %objs, ptr %objs1, align 8
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16842752, ptr %add.ptr.i.i.i, align 8
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %bo, i32 0, i32 1
  %11 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_res_handle, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %resource_id = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %14 = ptrtoint ptr %resource_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %resource_id, align 8
  %format = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 4
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %format2 = getelementptr i8, ptr %call.i.i.i.i, i32 72
  %18 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %format2, align 8
  %width = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 5
  %19 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %width3 = getelementptr i8, ptr %call.i.i.i.i, i32 76
  %22 = ptrtoint ptr %width3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %width3, align 8
  %height = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 6
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %height4 = getelementptr i8, ptr %call.i.i.i.i, i32 80
  %26 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %height4, align 8
  %call5 = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef %fence)
  %created = getelementptr inbounds %struct.virtio_gpu_object, ptr %bo, i32 0, i32 3
  %27 = ptrtoint ptr %created to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %created, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %vbuf, ptr noundef %fence) unnamed_addr #0 align 64 {
entry:
  %idx.i = alloca i32, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %sgs = alloca [3 x ptr], align 4
  %vcmd = alloca %struct.scatterlist, align 4
  %vout = alloca %struct.scatterlist, align 4
  %vresp = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sgs) #11
  %0 = getelementptr inbounds [3 x ptr], ptr %sgs, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !41
  %2 = getelementptr inbounds [3 x ptr], ptr %sgs, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %vcmd) #11
  %4 = call ptr @memset(ptr %vcmd, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %vout) #11
  %5 = call ptr @memset(ptr %vout, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %vresp) #11
  %6 = call ptr @memset(ptr %vresp, i32 255, i32 20)
  %7 = ptrtoint ptr %vbuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vbuf, align 4
  %size = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @sg_init_one(ptr noundef nonnull %vcmd, ptr noundef %8, i32 noundef %10) #11
  %11 = ptrtoint ptr %sgs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vcmd, ptr %sgs, align 4
  %data_size = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 3
  %12 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then:                                          ; preds = %entry
  %data_buf = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 2
  %14 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data_buf, align 4
  %call = call zeroext i1 @is_vmalloc_addr(ptr noundef %15) #11
  %16 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data_buf, align 4
  %18 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_size, align 4
  br i1 %call, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %20 = ptrtoint ptr %17 to i32
  %and.i = and i32 %20, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end22.i, label %do.end.i, !prof !43

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 276, i32 noundef 9, ptr noundef null) #11
  br label %if.then7

if.end22.i:                                       ; preds = %if.then2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 12) #14
  %tobool23.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool23.not.i, label %if.end22.i.if.then7_crit_edge, label %if.end25.i

if.end22.i.if.then7_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.end25.i:                                       ; preds = %if.end22.i
  %sub.i = add i32 %19, 4095
  %div64.i = lshr i32 %sub.i, 12
  %call26.i = call i32 @sg_alloc_table(ptr noundef nonnull %call7.i.i, i32 noundef %div64.i, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %if.then7

if.end29.i:                                       ; preds = %if.end25.i
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %orig_nents.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp3065.not.i = icmp eq i32 %23, 0
  br i1 %cmp3065.not.i, label %cleanup, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end29.i
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %sg_set_page.exit.i.for.body.i_crit_edge, %for.body.preheader.i
  %data.addr.069.i = phi ptr [ %add.ptr.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ %17, %for.body.preheader.i ]
  %sg.068.i = phi ptr [ %call38.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ %25, %for.body.preheader.i ]
  %i.067.i = phi i32 [ %inc.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %size.addr.066.i = phi i32 [ %sub37.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ %19, %for.body.preheader.i ]
  %call31.i = call ptr @vmalloc_to_page(ptr noundef %data.addr.069.i) #11
  %tobool32.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool32.not.i, label %if.then33.i, label %if.end34.i

if.then33.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @sg_free_table(ptr noundef nonnull %call7.i.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %if.then7

if.end34.i:                                       ; preds = %for.body.i
  %26 = call i32 @llvm.smin.i32(i32 %size.addr.066.i, i32 4096) #11
  %27 = ptrtoint ptr %sg.068.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sg.068.i, align 4
  %29 = ptrtoint ptr %call31.i to i32
  %and2.i.i.i = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !43

do.body5.i.i.i:                                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !48
  unreachable

do.body11.i.i.i:                                  ; preds = %if.end34.i
  %and.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !43

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !49
  unreachable

sg_set_page.exit.i:                               ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %28, 3
  %or.i.i.i = or i32 %and.i.i.i, %29
  %30 = ptrtoint ptr %sg.068.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i.i.i, ptr %sg.068.i, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.068.i, i32 0, i32 1
  %31 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.068.i, i32 0, i32 2
  %32 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %26, ptr %length.i.i, align 4
  %sub37.i = sub i32 %size.addr.066.i, %26
  %add.ptr.i = getelementptr i8, ptr %data.addr.069.i, i32 %26
  %inc.i = add nuw i32 %i.067.i, 1
  %call38.i = call ptr @sg_next(ptr noundef %sg.068.i) #11
  %33 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %orig_nents.i, align 8
  %cmp30.i = icmp ult i32 %inc.i, %34
  br i1 %cmp30.i, label %sg_set_page.exit.i.for.body.i_crit_edge, label %cleanup.thread93

sg_set_page.exit.i.for.body.i_crit_edge:          ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

cleanup.thread93:                                 ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %add97 = add nuw nsw i32 %div64.i, 1
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i, align 8
  br label %if.end20.sink.split

if.then7:                                         ; preds = %if.then33.i, %if.then28.i, %if.end22.i.if.then7_crit_edge, %do.end.i
  %tobool8.not = icmp eq ptr %fence, null
  br i1 %tobool8.not, label %if.then7.cleanup33_crit_edge, label %land.lhs.true

if.then7.cleanup33_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup33

land.lhs.true:                                    ; preds = %if.then7
  %objs = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 8
  %37 = ptrtoint ptr %objs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %objs, align 4
  %tobool9.not = icmp eq ptr %38, null
  br i1 %tobool9.not, label %land.lhs.true.cleanup33_crit_edge, label %if.then10

land.lhs.true.cleanup33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup33

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @virtio_gpu_array_unlock_resv(ptr noundef nonnull %38) #11
  br label %cleanup33

cleanup:                                          ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %add = add nuw nsw i32 %div64.i, 1
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 8
  br label %if.end20.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @sg_init_one(ptr noundef nonnull %vout, ptr noundef %17, i32 noundef %19) #11
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else, %cleanup, %cleanup.thread93
  %.sink = phi ptr [ %40, %cleanup ], [ %36, %cleanup.thread93 ], [ %vout, %if.else ]
  %sgt.1.ph = phi ptr [ %call7.i.i, %cleanup ], [ %call7.i.i, %cleanup.thread93 ], [ null, %if.else ]
  %elemcnt.2.ph = phi i32 [ %add, %cleanup ], [ %add97, %cleanup.thread93 ], [ 2, %if.else ]
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %.sink, ptr %0, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %entry.if.end20_crit_edge
  %sgt.1 = phi ptr [ null, %entry.if.end20_crit_edge ], [ %sgt.1.ph, %if.end20.sink.split ]
  %elemcnt.2 = phi i32 [ 1, %entry.if.end20_crit_edge ], [ %elemcnt.2.ph, %if.end20.sink.split ]
  %outcnt.0 = phi i32 [ 1, %entry.if.end20_crit_edge ], [ 2, %if.end20.sink.split ]
  %resp_size = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 5
  %42 = ptrtoint ptr %resp_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %resp_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool21.not = icmp eq i32 %43, 0
  br i1 %tobool21.not, label %if.end20.if.end28_crit_edge, label %if.then22

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %resp_buf = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 4
  %44 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %resp_buf, align 4
  call void @sg_init_one(ptr noundef nonnull %vresp, ptr noundef %45, i32 noundef %43) #11
  %inc24 = add nsw i32 %elemcnt.2, 1
  %arrayidx26 = getelementptr [3 x ptr], ptr %sgs, i32 0, i32 %outcnt.0
  %46 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %vresp, ptr %arrayidx26, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.end20.if.end28_crit_edge
  %elemcnt.3 = phi i32 [ %inc24, %if.then22 ], [ %elemcnt.2, %if.end20.if.end28_crit_edge ]
  %incnt.0 = phi i32 [ 1, %if.then22 ], [ 0, %if.end20.if.end28_crit_edge ]
  %ctrlq.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 5
  %47 = ptrtoint ptr %ctrlq.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctrlq.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i) #11
  %49 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %idx.i, align 4, !annotation !41
  %ddev.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 1
  %50 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ddev.i, align 4
  %call.i = call zeroext i1 @drm_dev_enter(ptr noundef %51, ptr noundef nonnull %idx.i) #11
  br i1 %call.i, label %if.end5.i, label %if.then.i

if.then.i:                                        ; preds = %if.end28
  %tobool.not.i = icmp eq ptr %fence, null
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %objs.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 8
  %52 = ptrtoint ptr %objs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %objs.i, align 4
  %tobool2.not.i = icmp eq ptr %53, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then3.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @virtio_gpu_array_unlock_resv(ptr noundef nonnull %53) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %54 = ptrtoint ptr %resp_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %resp_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %55)
  %cmp.i.i = icmp sgt i32 %55, 24
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.free_vbuf.exit.i_crit_edge

if.end.i.free_vbuf.exit.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_vbuf.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %resp_buf.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 4
  %56 = ptrtoint ptr %resp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %resp_buf.i.i, align 4
  call void @kfree(ptr noundef %57) #11
  br label %free_vbuf.exit.i

free_vbuf.exit.i:                                 ; preds = %if.then.i.i, %if.end.i.free_vbuf.exit.i_crit_edge
  %data_buf.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 2
  %58 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data_buf.i.i, align 4
  call void @kvfree(ptr noundef %59) #11
  %vbufs.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %60 = ptrtoint ptr %vbufs.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vbufs.i.i, align 4
  call void @kmem_cache_free(ptr noundef %61, ptr noundef %vbuf) #11
  br label %virtio_gpu_queue_ctrl_sgs.exit

if.end5.i:                                        ; preds = %if.end28
  %has_indirect.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 17
  %62 = ptrtoint ptr %has_indirect.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %has_indirect.i, align 2, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool6.not.i = icmp eq i8 %63, 0
  %spec.select.i = select i1 %tobool6.not.i, i32 %elemcnt.3, i32 1
  %qlock.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 5, i32 1
  call void @_raw_spin_lock(ptr noundef %qlock.i) #11
  %num_free.i = getelementptr inbounds %struct.virtqueue, ptr %48, i32 0, i32 5
  %64 = ptrtoint ptr %num_free.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_free.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %spec.select.i)
  %cmp109.i = icmp ult i32 %65, %spec.select.i
  br i1 %cmp109.i, label %if.then10.lr.ph.i, label %if.end5.i.if.end31.i_crit_edge

if.end5.i.if.end31.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then10.lr.ph.i:                                ; preds = %if.end5.i
  %pending_commands.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 8
  %ack_queue.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 5, i32 2
  br label %if.then10.i

if.then10.i:                                      ; preds = %do.end30.i.if.then10.i_crit_edge, %if.then10.lr.ph.i
  call void @_raw_spin_unlock(ptr noundef %qlock.i) #11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %pending_commands.i.i, i32 noundef 4) #11
  %66 = ptrtoint ptr %pending_commands.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %pending_commands.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i, label %if.then10.i.virtio_gpu_notify.exit.i_crit_edge, label %if.end.i.i

if.then10.i.virtio_gpu_notify.exit.i_crit_edge:   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtio_gpu_notify.exit.i

if.end.i.i:                                       ; preds = %if.then10.i
  call void @_raw_spin_lock(ptr noundef %qlock.i) #11
  %call.i.i17.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending_commands.i.i, i32 noundef 4) #11
  %68 = ptrtoint ptr %pending_commands.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 0, ptr %pending_commands.i.i, align 4
  %69 = ptrtoint ptr %ctrlq.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctrlq.i, align 4
  %call3.i.i = call zeroext i1 @virtqueue_kick_prepare(ptr noundef %70) #11
  call void @_raw_spin_unlock(ptr noundef %qlock.i) #11
  br i1 %call3.i.i, label %if.then7.i.i, label %if.end.i.i.virtio_gpu_notify.exit.i_crit_edge

if.end.i.i.virtio_gpu_notify.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtio_gpu_notify.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %ctrlq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctrlq.i, align 4
  %call10.i.i = call zeroext i1 @virtqueue_notify(ptr noundef %72) #11
  br label %virtio_gpu_notify.exit.i

virtio_gpu_notify.exit.i:                         ; preds = %if.then7.i.i, %if.end.i.i.virtio_gpu_notify.exit.i_crit_edge, %if.then10.i.virtio_gpu_notify.exit.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 335) #11
  %73 = ptrtoint ptr %num_free.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_free.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %spec.select.i)
  %cmp18.not.i = icmp ult i32 %74, %spec.select.i
  br i1 %cmp18.not.i, label %if.end20.i, label %virtio_gpu_notify.exit.i.do.end30.i_crit_edge

virtio_gpu_notify.exit.i.do.end30.i_crit_edge:    ; preds = %virtio_gpu_notify.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.end20.i:                                       ; preds = %virtio_gpu_notify.exit.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  %75 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #11
  %call22107.i = call i32 @prepare_to_wait_event(ptr noundef %ack_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %76 = ptrtoint ptr %num_free.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_free.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %spec.select.i)
  %cmp24.not108.i = icmp ult i32 %77, %spec.select.i
  br i1 %cmp24.not108.i, label %if.end20.i.cleanup.i_crit_edge, label %if.end20.i.for.end.i_crit_edge

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end20.i.cleanup.i_crit_edge:                   ; preds = %if.end20.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end20.i.cleanup.i_crit_edge
  call void @schedule() #11
  %call22.i = call i32 @prepare_to_wait_event(ptr noundef %ack_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %78 = ptrtoint ptr %num_free.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_free.i, align 4
  %cmp24.not.i = icmp ult i32 %79, %spec.select.i
  br i1 %cmp24.not.i, label %cleanup.i.cleanup.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end20.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %ack_queue.i, ptr noundef nonnull %__wq_entry.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %for.end.i, %virtio_gpu_notify.exit.i.do.end30.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %qlock.i) #11
  %80 = ptrtoint ptr %num_free.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_free.i, align 4
  %cmp.i = icmp ult i32 %81, %spec.select.i
  br i1 %cmp.i, label %do.end30.i.if.then10.i_crit_edge, label %do.end30.i.if.end31.i_crit_edge

do.end30.i.if.end31.i_crit_edge:                  ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

do.end30.i.if.then10.i_crit_edge:                 ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10.i

if.end31.i:                                       ; preds = %do.end30.i.if.end31.i_crit_edge, %if.end5.i.if.end31.i_crit_edge
  %tobool32.not.i73 = icmp eq ptr %fence, null
  br i1 %tobool32.not.i73, label %if.end31.i.if.end41.i_crit_edge, label %if.then33.i74

if.end31.i.if.end41.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

if.then33.i74:                                    ; preds = %if.end31.i
  %82 = ptrtoint ptr %vbuf to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vbuf, align 4
  call void @virtio_gpu_fence_emit(ptr noundef %vgdev, ptr noundef %83, ptr noundef nonnull %fence) #11
  %objs35.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 8
  %84 = ptrtoint ptr %objs35.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %objs35.i, align 4
  %tobool36.not.i = icmp eq ptr %85, null
  br i1 %tobool36.not.i, label %if.then33.i74.if.end41.i_crit_edge, label %if.then37.i

if.then33.i74.if.end41.i_crit_edge:               ; preds = %if.then33.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

if.then37.i:                                      ; preds = %if.then33.i74
  call void @__sanitizer_cov_trace_pc() #13
  call void @virtio_gpu_array_add_fence(ptr noundef nonnull %85, ptr noundef nonnull %fence) #11
  %86 = ptrtoint ptr %objs35.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %objs35.i, align 4
  call void @virtio_gpu_array_unlock_resv(ptr noundef %87) #11
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then37.i, %if.then33.i74.if.end41.i_crit_edge, %if.end31.i.if.end41.i_crit_edge
  %call42.i = call i32 @virtqueue_add_sgs(ptr noundef %48, ptr noundef nonnull %sgs, i32 noundef %outcnt.0, i32 noundef %incnt.0, ptr noundef %vbuf, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end41.i.if.end61.i_crit_edge, label %do.end55.i, !prof !43

if.end41.i.if.end61.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61.i

do.end55.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 352, i32 noundef 9, ptr noundef null) #11
  br label %if.end61.i

if.end61.i:                                       ; preds = %do.end55.i, %if.end41.i.if.end61.i_crit_edge
  %88 = ptrtoint ptr %vbuf to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vbuf, align 4
  call fastcc void @trace_virtio_gpu_cmd_queue(ptr noundef %48, ptr noundef %89) #11
  %pending_commands.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending_commands.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %pending_commands.i, i32 1, i32 3, i32 1) #11
  %90 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_commands.i, ptr %pending_commands.i, i32 1, ptr elementtype(i32) %pending_commands.i) #11, !srcloc !51
  call void @_raw_spin_unlock(ptr noundef %qlock.i) #11
  %91 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %idx.i, align 4
  call void @drm_dev_exit(i32 noundef %92) #11
  br label %virtio_gpu_queue_ctrl_sgs.exit

virtio_gpu_queue_ctrl_sgs.exit:                   ; preds = %if.end61.i, %free_vbuf.exit.i
  %retval.0.i75 = phi i32 [ 0, %if.end61.i ], [ -1, %free_vbuf.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #11
  %tobool30.not = icmp eq ptr %sgt.1, null
  br i1 %tobool30.not, label %virtio_gpu_queue_ctrl_sgs.exit.cleanup33_crit_edge, label %if.then31

virtio_gpu_queue_ctrl_sgs.exit.cleanup33_crit_edge: ; preds = %virtio_gpu_queue_ctrl_sgs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup33

if.then31:                                        ; preds = %virtio_gpu_queue_ctrl_sgs.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @sg_free_table(ptr noundef nonnull %sgt.1) #11
  call void @kfree(ptr noundef nonnull %sgt.1) #11
  br label %cleanup33

cleanup33:                                        ; preds = %if.then31, %virtio_gpu_queue_ctrl_sgs.exit.cleanup33_crit_edge, %if.then10, %land.lhs.true.cleanup33_crit_edge, %if.then7.cleanup33_crit_edge
  %retval.1 = phi i32 [ %retval.0.i75, %if.then31 ], [ %retval.0.i75, %virtio_gpu_queue_ctrl_sgs.exit.cleanup33_crit_edge ], [ -1, %if.then10 ], [ -1, %land.lhs.true.cleanup33_crit_edge ], [ -1, %if.then7.cleanup33_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %vresp) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %vout) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %vcmd) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sgs) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_unref_resource(ptr noundef %vgdev, ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %0 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %2 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @virtio_gpu_cmd_unref_cb, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 76
  %6 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr15.i.i.i, ptr %6, align 8
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 32)
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 33619968, ptr %add.ptr.i.i.i, align 8
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %bo, i32 0, i32 1
  %10 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_res_handle, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %resource_id = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %13 = ptrtoint ptr %resource_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %resource_id, align 8
  %resp_cb_data = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %resp_cb_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %bo, ptr %resp_cb_data, align 4
  %call.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @virtio_gpu_cleanup_object(ptr noundef %bo) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_cmd_unref_cb(ptr nocapture noundef readnone %vgdev, ptr nocapture noundef %vbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %resp_cb_data = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 7
  %0 = ptrtoint ptr %resp_cb_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resp_cb_data, align 4
  store ptr null, ptr %resp_cb_data, align 4
  tail call void @virtio_gpu_cleanup_object(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cleanup_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_set_scanout(ptr noundef %vgdev, i32 noundef %scanout_id, i32 noundef %resource_id, i32 noundef %width, i32 noundef %height, i32 noundef %x, i32 noundef %y) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %0 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %2 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 48, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 92
  %6 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr15.i.i.i, ptr %6, align 8
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 24)
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 50397184, ptr %add.ptr.i.i.i, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %resource_id)
  %resource_id1 = getelementptr i8, ptr %call.i.i.i.i, i32 88
  %11 = ptrtoint ptr %resource_id1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %resource_id1, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %scanout_id)
  %scanout_id2 = getelementptr i8, ptr %call.i.i.i.i, i32 84
  %13 = ptrtoint ptr %scanout_id2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %scanout_id2, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %width)
  %r = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %width3 = getelementptr i8, ptr %call.i.i.i.i, i32 76
  %15 = ptrtoint ptr %width3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %width3, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %height)
  %height5 = getelementptr i8, ptr %call.i.i.i.i, i32 80
  %17 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height5, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %x)
  %19 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %r, align 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %y)
  %y9 = getelementptr i8, ptr %call.i.i.i.i, i32 72
  %21 = ptrtoint ptr %y9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %y9, align 8
  %call.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_resource_flush(ptr noundef %vgdev, i32 noundef %resource_id, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height, ptr noundef %objs, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %0 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %2 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 48, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 92
  %6 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr15.i.i.i, ptr %6, align 8
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 48)
  %objs1 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %objs1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %objs, ptr %objs1, align 8
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 67174400, ptr %add.ptr.i.i.i, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %resource_id)
  %resource_id2 = getelementptr i8, ptr %call.i.i.i.i, i32 84
  %12 = ptrtoint ptr %resource_id2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %resource_id2, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %width)
  %r = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %width3 = getelementptr i8, ptr %call.i.i.i.i, i32 76
  %14 = ptrtoint ptr %width3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %width3, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %height)
  %height5 = getelementptr i8, ptr %call.i.i.i.i, i32 80
  %16 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height5, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %x)
  %18 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %r, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %y)
  %y9 = getelementptr i8, ptr %call.i.i.i.i, i32 72
  %20 = ptrtoint ptr %y9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %y9, align 8
  %call10 = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef %fence)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_transfer_to_host_2d(ptr noundef %vgdev, i64 noundef %offset, i32 noundef %width, i32 noundef %height, i32 noundef %x, i32 noundef %y, ptr noundef %objs, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %objs1 = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 4
  %0 = ptrtoint ptr %objs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %objs1, align 4
  %vdev = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 2
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 8
  %features.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i.i, align 8
  %and.i.i.i = and i64 %5, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool13.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool13.i.i.not.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %parent = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %pages = getelementptr inbounds %struct.virtio_gpu_object_shmem, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pages, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %7, ptr noundef %11, i32 noundef %13, i32 noundef 1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %14 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %15, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %16 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 56, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 100
  %20 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr15.i.i.i, ptr %20, align 8
  %22 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 56)
  %objs7 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %objs7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %objs, ptr %objs7, align 8
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 83951616, ptr %add.ptr.i.i.i, align 8
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_res_handle, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %resource_id = getelementptr i8, ptr %call.i.i.i.i, i32 92
  %28 = ptrtoint ptr %resource_id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %resource_id, align 8
  %29 = tail call i64 @llvm.bswap.i64(i64 %offset)
  %offset8 = getelementptr i8, ptr %call.i.i.i.i, i32 84
  %30 = ptrtoint ptr %offset8 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %offset8, align 8
  %31 = tail call i32 @llvm.bswap.i32(i32 %width)
  %r = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %width9 = getelementptr i8, ptr %call.i.i.i.i, i32 76
  %32 = ptrtoint ptr %width9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %width9, align 8
  %33 = tail call i32 @llvm.bswap.i32(i32 %height)
  %height11 = getelementptr i8, ptr %call.i.i.i.i, i32 80
  %34 = ptrtoint ptr %height11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %height11, align 8
  %35 = tail call i32 @llvm.bswap.i32(i32 %x)
  %36 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %r, align 8
  %37 = tail call i32 @llvm.bswap.i32(i32 %y)
  %y15 = getelementptr i8, ptr %call.i.i.i.i, i32 72
  %38 = ptrtoint ptr %y15 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %y15, align 8
  %call16 = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef %fence)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_cmd_get_display_info(ptr noundef %vgdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 408) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %virtio_gpu_alloc_cmd_resp.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

virtio_gpu_alloc_cmd_resp.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vbufs.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %1 = ptrtoint ptr %vbufs.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vbufs.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 36288) #11
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 44
  %3 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr.i.i, ptr %call.i.i.i, align 8
  %size9.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %size9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 24, ptr %size9.i.i, align 4
  %resp_cb10.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %resp_cb10.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @virtio_gpu_cmd_get_display_info_cb, ptr %resp_cb10.i.i, align 8
  %resp_size11.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %resp_size11.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 408, ptr %resp_size11.i.i, align 4
  %7 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %7, align 8
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 24)
  %display_info_pending = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 12
  %10 = ptrtoint ptr %display_info_pending to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %display_info_pending, align 8
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65536, ptr %add.ptr.i.i, align 8
  %call.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %virtio_gpu_alloc_cmd_resp.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %virtio_gpu_alloc_cmd_resp.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_cmd_get_display_info_cb(ptr noundef %vgdev, ptr nocapture noundef readonly %vbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %resp_buf = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 4
  %0 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resp_buf, align 4
  %display_info_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %display_info_lock) #11
  %num_scanouts = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 4
  %2 = ptrtoint ptr %num_scanouts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_scanouts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp41.not = icmp eq i32 %3, 0
  br i1 %cmp41.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %info = getelementptr %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 3, i32 %i.042, i32 4
  %arrayidx1 = getelementptr %struct.virtio_gpu_resp_display_info, ptr %1, i32 0, i32 1, i32 %i.042
  %4 = call ptr @memcpy(ptr %info, ptr %arrayidx1, i32 24)
  %enabled = getelementptr %struct.virtio_gpu_resp_display_info, ptr %1, i32 0, i32 1, i32 %i.042, i32 1
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %width = getelementptr inbounds %struct.virtio_gpu_rect, ptr %arrayidx1, i32 0, i32 2
  %7 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %height = getelementptr inbounds %struct.virtio_gpu_rect, ptr %arrayidx1, i32 0, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx1, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %y = getelementptr inbounds %struct.virtio_gpu_rect, ptr %arrayidx1, i32 0, i32 1
  %16 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %y, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %i.042, i32 noundef %9, i32 noundef %12, i32 noundef %15, i32 noundef %18) #11
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.042) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc = add nuw i32 %i.042, 1
  %19 = ptrtoint ptr %num_scanouts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_scanouts, align 8
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %display_info_pending = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 12
  %21 = ptrtoint ptr %display_info_pending to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %display_info_pending, align 8
  tail call void @_raw_spin_unlock(ptr noundef %display_info_lock) #11
  %resp_wq = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %resp_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %ddev = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 1
  %22 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ddev, align 4
  %call = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %23) #11
  br i1 %call, label %for.end.if.end18_crit_edge, label %if.then16

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ddev, align 4
  tail call void @drm_kms_helper_hotplug_event(ptr noundef %25) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.end.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_cmd_get_capset_info(ptr noundef %vgdev, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %virtio_gpu_alloc_cmd_resp.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

virtio_gpu_alloc_cmd_resp.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vbufs.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %1 = ptrtoint ptr %vbufs.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vbufs.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 36288) #11
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 44
  %3 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr.i.i, ptr %call.i.i.i, align 8
  %size9.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %size9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32, ptr %size9.i.i, align 4
  %resp_cb10.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %resp_cb10.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @virtio_gpu_cmd_get_capset_info_cb, ptr %resp_cb10.i.i, align 8
  %resp_size11.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %resp_size11.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 40, ptr %resp_size11.i.i, align 4
  %7 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %7, align 8
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 32)
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 134283264, ptr %add.ptr.i.i, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %idx)
  %capset_index = getelementptr i8, ptr %call.i.i.i, i32 68
  %12 = ptrtoint ptr %capset_index to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %capset_index, align 8
  %call.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %virtio_gpu_alloc_cmd_resp.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %virtio_gpu_alloc_cmd_resp.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_cmd_get_capset_info_cb(ptr noundef %vgdev, ptr nocapture noundef readonly %vbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbuf, align 4
  %resp_buf = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 4
  %2 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resp_buf, align 4
  %capset_index = getelementptr inbounds %struct.virtio_gpu_get_capset_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %capset_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capset_index, align 8
  %display_info_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %display_info_lock) #11
  %capsets = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 28
  %6 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %capsets, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %5)
  %capset_id = getelementptr inbounds %struct.virtio_gpu_resp_capset_info, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %capset_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %capset_id, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %arrayidx = getelementptr %struct.virtio_gpu_drv_capset, ptr %7, i32 %8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  %capset_max_version = getelementptr inbounds %struct.virtio_gpu_resp_capset_info, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %capset_max_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %capset_max_version, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %capsets, align 4
  %max_version = getelementptr %struct.virtio_gpu_drv_capset, ptr %17, i32 %8, i32 1
  %18 = ptrtoint ptr %max_version to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %max_version, align 4
  %capset_max_size = getelementptr inbounds %struct.virtio_gpu_resp_capset_info, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %capset_max_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %capset_max_size, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %capsets, align 4
  %max_size = getelementptr %struct.virtio_gpu_drv_capset, ptr %23, i32 %8, i32 2
  %24 = ptrtoint ptr %max_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %max_size, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %display_info_lock) #11
  %resp_wq = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %resp_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_cmd_get_capset(ptr noundef %vgdev, i32 noundef %idx, i32 noundef %version, ptr nocapture noundef %cache_p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cache_p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cache_p, align 4
  %num_capsets = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 29
  %1 = ptrtoint ptr %num_capsets to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_capsets, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %idx)
  %cmp.not = icmp ugt i32 %2, %idx
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %capsets = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 28
  %3 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %capsets, align 4
  %max_version = getelementptr %struct.virtio_gpu_drv_capset, ptr %4, i32 %idx, i32 1
  %5 = ptrtoint ptr %max_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_version, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %version)
  %cmp1 = icmp ult i32 %6, %version
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 28) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %8 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %capsets, align 4
  %max_size8 = getelementptr %struct.virtio_gpu_drv_capset, ptr %9, i32 %idx, i32 2
  %10 = ptrtoint ptr %max_size8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_size8, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #15
  %caps_cache = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %caps_cache to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i, ptr %caps_cache, align 8
  %tobool11.not = icmp eq ptr %call9.i, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %add = add i32 %11, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %tobool15.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %caps_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %caps_cache, align 8
  tail call void @kfree(ptr noundef %14) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %version19 = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %version19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %version, ptr %version19, align 8
  %16 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %capsets, align 4
  %arrayidx21 = getelementptr %struct.virtio_gpu_drv_capset, ptr %17, i32 %idx
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx21, align 4
  %id22 = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %id22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %id22, align 4
  %is_valid = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %call7.i.i, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %is_valid, i32 noundef 4) #11
  %21 = ptrtoint ptr %is_valid to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %is_valid, align 8
  %size = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %call7.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %11, ptr %size, align 4
  %display_info_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %display_info_lock) #11
  %cap_cache = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 31
  %23 = ptrtoint ptr %cap_cache to i32
  call void @__asan_load4_noabort(i32 %23)
  %search_ent.0124 = load ptr, ptr %cap_cache, align 4
  %cmp24.not125 = icmp eq ptr %search_ent.0124, %cap_cache
  br i1 %cmp24.not125, label %if.end18.for.endthread-pre-split_crit_edge, label %for.body.lr.ph

if.end18.for.endthread-pre-split_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.endthread-pre-split

for.body.lr.ph:                                   ; preds = %if.end18
  %24 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %capsets, align 4
  %arrayidx27 = getelementptr %struct.virtio_gpu_drv_capset, ptr %25, i32 %idx
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx27, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %search_ent.0126 = phi ptr [ %search_ent.0124, %for.body.lr.ph ], [ %search_ent.0, %for.inc.for.body_crit_edge ]
  %id25 = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %search_ent.0126, i32 0, i32 2
  %28 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp29 = icmp eq i32 %29, %27
  br i1 %cmp29, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %version30 = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %search_ent.0126, i32 0, i32 3
  %30 = ptrtoint ptr %version30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %version30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %version)
  %cmp31 = icmp eq i32 %31, %version
  br i1 %cmp31, label %if.then32, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %cache_p to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %search_ent.0126, ptr %cache_p, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %33 = ptrtoint ptr %search_ent.0126 to i32
  call void @__asan_load4_noabort(i32 %33)
  %search_ent.0 = load ptr, ptr %search_ent.0126, align 4
  %cmp24.not = icmp eq ptr %search_ent.0, %cap_cache
  br i1 %cmp24.not, label %for.inc.for.endthread-pre-split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.endthread-pre-split_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.endthread-pre-split

for.endthread-pre-split:                          ; preds = %for.inc.for.endthread-pre-split_crit_edge, %if.end18.for.endthread-pre-split_crit_edge
  %34 = ptrtoint ptr %cache_p to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load ptr, ptr %cache_p, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.then32
  %35 = phi ptr [ %.pr, %for.endthread-pre-split ], [ %search_ent.0126, %if.then32 ]
  %tobool39.not = icmp eq ptr %35, null
  br i1 %tobool39.not, label %if.then40, label %for.end.if.end43_crit_edge

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then40:                                        ; preds = %for.end
  %prev.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 31, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i, align 4
  %call.i.i113 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %37, ptr noundef %cap_cache) #11
  br i1 %call.i.i113, label %if.end.i.i114, label %if.then40.if.end43_crit_edge

if.then40.if.end43_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end.i.i114:                                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %cap_cache, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call7.i.i, ptr %37, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end.i.i114, %if.then40.if.end43_crit_edge, %for.end.if.end43_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %display_info_lock) #11
  %42 = ptrtoint ptr %cache_p to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cache_p, align 4
  %tobool45.not = icmp eq ptr %43, null
  br i1 %tobool45.not, label %if.end48, label %if.then46

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  %44 = ptrtoint ptr %caps_cache to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %caps_cache, align 8
  tail call void @kfree(ptr noundef %45) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  %vbufs.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %46 = ptrtoint ptr %vbufs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vbufs.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %47, i32 noundef 36288) #11
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 44
  %48 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i.i, ptr %call.i.i.i, align 8
  %size9.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %size9.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 32, ptr %size9.i.i, align 4
  %resp_cb10.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 6
  %50 = ptrtoint ptr %resp_cb10.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @virtio_gpu_cmd_capset_cb, ptr %resp_cb10.i.i, align 8
  %resp_size11.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 5
  %51 = ptrtoint ptr %resp_size11.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add, ptr %resp_size11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add)
  %cmp12.i.i = icmp slt i32 %add, 25
  %add.ptr15.i.i = getelementptr i8, ptr %call.i.i.i, i32 76
  %spec.select.i.i115 = select i1 %cmp12.i.i, ptr %add.ptr15.i.i, ptr %call9.i.i
  %52 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %spec.select.i.i115, ptr %52, align 8
  %tobool21.not.i.i = icmp eq ptr %spec.select.i.i115, null
  br i1 %tobool21.not.i.i, label %do.body31.i.i, label %virtio_gpu_alloc_cmd_resp.exit, !prof !52

do.body31.i.i:                                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/virtio/virtgpu_vq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #11, !srcloc !53
  unreachable

virtio_gpu_alloc_cmd_resp.exit:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 151060480, ptr %add.ptr.i.i, align 8
  %55 = ptrtoint ptr %capsets to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %capsets, align 4
  %arrayidx52 = getelementptr %struct.virtio_gpu_drv_capset, ptr %56, i32 %idx
  %57 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx52, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %capset_id = getelementptr i8, ptr %call.i.i.i, i32 68
  %60 = ptrtoint ptr %capset_id to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %capset_id, align 8
  %61 = tail call i32 @llvm.bswap.i32(i32 %version)
  %capset_version = getelementptr i8, ptr %call.i.i.i, i32 72
  %62 = ptrtoint ptr %capset_version to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %capset_version, align 8
  %63 = ptrtoint ptr %cache_p to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i, ptr %cache_p, align 4
  %call.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %virtio_gpu_alloc_cmd_resp.exit, %if.then46, %if.then16, %if.then12, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then46 ], [ 0, %virtio_gpu_alloc_cmd_resp.exit ], [ -12, %if.then16 ], [ -12, %if.then12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_cmd_capset_cb(ptr noundef %vgdev, ptr nocapture noundef readonly %vbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbuf, align 4
  %resp_buf = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 4
  %2 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resp_buf, align 4
  %display_info_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %display_info_lock) #11
  %cap_cache = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 31
  %4 = ptrtoint ptr %cap_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %cache_ent.026 = load ptr, ptr %cap_cache, align 4
  %cmp.not27 = icmp eq ptr %cache_ent.026, %cap_cache
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %capset_version = getelementptr inbounds %struct.virtio_gpu_get_capset, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %capset_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %capset_version, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %capset_id = getelementptr inbounds %struct.virtio_gpu_get_capset, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cache_ent.028 = phi ptr [ %cache_ent.026, %for.body.lr.ph ], [ %cache_ent.0, %for.inc.for.body_crit_edge ]
  %version = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %cache_ent.028, i32 0, i32 3
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp2 = icmp eq i32 %9, %7
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %id = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %cache_ent.028, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %12 = ptrtoint ptr %capset_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %capset_id, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %14)
  %cmp3 = icmp eq i32 %11, %14
  br i1 %cmp3, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %caps_cache = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %cache_ent.028, i32 0, i32 1
  %15 = ptrtoint ptr %caps_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %caps_cache, align 4
  %capset_data = getelementptr inbounds %struct.virtio_gpu_resp_capset, ptr %3, i32 0, i32 1
  %size = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %cache_ent.028, i32 0, i32 4
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %19 = call ptr @memcpy(ptr %16, ptr %capset_data, i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  %is_valid = getelementptr inbounds %struct.virtio_gpu_drv_cap_cache, ptr %cache_ent.028, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %is_valid, i32 noundef 4) #11
  %20 = ptrtoint ptr %is_valid to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %is_valid, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %cache_ent.028 to i32
  call void @__asan_load4_noabort(i32 %21)
  %cache_ent.0 = load ptr, ptr %cache_ent.028, align 4
  %cmp.not = icmp eq ptr %cache_ent.0, %cap_cache
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %display_info_lock) #11
  %resp_wq = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %resp_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_cmd_get_edids(ptr noundef %vgdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %has_edid = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 16
  %0 = ptrtoint ptr %has_edid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_edid, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %for.cond.preheader, !prof !52

for.cond.preheader:                               ; preds = %entry
  %num_scanouts = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 4
  %2 = ptrtoint ptr %num_scanouts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_scanouts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp41.not = icmp eq i32 %3, 0
  br i1 %cmp41.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vbufs.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 883, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

for.body:                                         ; preds = %virtio_gpu_alloc_cmd_resp.exit.for.body_crit_edge, %for.body.lr.ph
  %scanout.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %virtio_gpu_alloc_cmd_resp.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1056) #14
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %for.body.cleanup_crit_edge, label %virtio_gpu_alloc_cmd_resp.exit

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

virtio_gpu_alloc_cmd_resp.exit:                   ; preds = %for.body
  %5 = ptrtoint ptr %vbufs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vbufs.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 36288) #11
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 44
  %7 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i.i, ptr %call.i.i.i, align 8
  %size9.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %size9.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %size9.i.i, align 4
  %resp_cb10.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %resp_cb10.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @virtio_gpu_cmd_get_edid_cb, ptr %resp_cb10.i.i, align 8
  %resp_size11.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %resp_size11.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1056, ptr %resp_size11.i.i, align 4
  %11 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %11, align 8
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 167837696, ptr %add.ptr.i.i, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %scanout.042)
  %scanout28 = getelementptr i8, ptr %call.i.i.i, i32 68
  %15 = ptrtoint ptr %scanout28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %scanout28, align 8
  %call.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i, ptr noundef null) #11
  %inc = add nuw i32 %scanout.042, 1
  %16 = ptrtoint ptr %num_scanouts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_scanouts, align 8
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %virtio_gpu_alloc_cmd_resp.exit.for.body_crit_edge, label %virtio_gpu_alloc_cmd_resp.exit.cleanup_crit_edge

virtio_gpu_alloc_cmd_resp.exit.cleanup_crit_edge: ; preds = %virtio_gpu_alloc_cmd_resp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

virtio_gpu_alloc_cmd_resp.exit.for.body_crit_edge: ; preds = %virtio_gpu_alloc_cmd_resp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %virtio_gpu_alloc_cmd_resp.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ], [ 0, %virtio_gpu_alloc_cmd_resp.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_cmd_get_edid_cb(ptr noundef %vgdev, ptr nocapture noundef readonly %vbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbuf, align 4
  %scanout1 = getelementptr inbounds %struct.virtio_gpu_cmd_get_edid, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %scanout1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scanout1, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %num_scanouts = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 4
  %5 = ptrtoint ptr %num_scanouts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_scanouts, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp ult i32 %4, %6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %resp_buf = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 4
  %7 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resp_buf, align 4
  %outputs = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 3
  %conn = getelementptr %struct.virtio_gpu_output, ptr %outputs, i32 %4, i32 2
  %call = tail call ptr @drm_do_get_edid(ptr noundef %conn, ptr noundef nonnull @virtio_get_edid_block, ptr noundef %8) #11
  %call3 = tail call i32 @drm_connector_update_edid_property(ptr noundef %conn, ptr noundef %call) #11
  %display_info_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %display_info_lock) #11
  %edid = getelementptr %struct.virtio_gpu_output, ptr %outputs, i32 %4, i32 6
  %9 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edid, align 8
  store ptr %call, ptr %edid, align 8
  tail call void @_raw_spin_unlock(ptr noundef %display_info_lock) #11
  tail call void @kfree(ptr noundef %10) #11
  %resp_wq = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %resp_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_context_create(ptr noundef %vgdev, i32 noundef %id, i32 noundef %context_init, i32 noundef %nlen, ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %0 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %2 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 96, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 140
  %6 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr15.i.i.i, ptr %6, align 8
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 24)
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 131072, ptr %add.ptr.i.i.i, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %id)
  %ctx_id = getelementptr i8, ptr %call.i.i.i.i, i32 60
  %11 = ptrtoint ptr %ctx_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ctx_id, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %nlen)
  %nlen2 = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %13 = ptrtoint ptr %nlen2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %nlen2, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %context_init)
  %context_init3 = getelementptr i8, ptr %call.i.i.i.i, i32 72
  %15 = ptrtoint ptr %context_init3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %context_init3, align 8
  %debug_name = getelementptr i8, ptr %call.i.i.i.i, i32 76
  %call4 = tail call ptr @strncpy(ptr noundef %debug_name, ptr noundef %name, i32 noundef 63)
  %arrayidx = getelementptr i8, ptr %call.i.i.i.i, i32 139
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx, align 1
  %call.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef null) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_context_destroy(ptr noundef %vgdev, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %0 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %2 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 24, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %6 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr15.i.i.i, ptr %6, align 8
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 24)
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16908288, ptr %add.ptr.i.i.i, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %id)
  %ctx_id = getelementptr i8, ptr %call.i.i.i.i, i32 60
  %11 = ptrtoint ptr %ctx_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ctx_id, align 8
  %call.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_context_attach_resource(ptr noundef %vgdev, i32 noundef %ctx_id, ptr noundef %objs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %objs1 = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 4
  %0 = ptrtoint ptr %objs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %objs1, align 4
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %2 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %4 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 76
  %8 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr15.i.i.i, ptr %8, align 8
  %10 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 32)
  %objs2 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %objs2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %objs, ptr %objs2, align 8
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 33685504, ptr %add.ptr.i.i.i, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %ctx_id)
  %ctx_id4 = getelementptr i8, ptr %call.i.i.i.i, i32 60
  %14 = ptrtoint ptr %ctx_id4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ctx_id4, align 8
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_res_handle, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %resource_id = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %18 = ptrtoint ptr %resource_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %resource_id, align 8
  %call.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_context_detach_resource(ptr noundef %vgdev, i32 noundef %ctx_id, ptr noundef %objs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %objs1 = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 4
  %0 = ptrtoint ptr %objs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %objs1, align 4
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %2 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %4 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 76
  %8 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr15.i.i.i, ptr %8, align 8
  %10 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 32)
  %objs2 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %objs2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %objs, ptr %objs2, align 8
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 50462720, ptr %add.ptr.i.i.i, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %ctx_id)
  %ctx_id4 = getelementptr i8, ptr %call.i.i.i.i, i32 60
  %14 = ptrtoint ptr %ctx_id4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ctx_id4, align 8
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_res_handle, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %resource_id = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %18 = ptrtoint ptr %resource_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %resource_id, align 8
  %call.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_resource_create_3d(ptr noundef %vgdev, ptr nocapture noundef %bo, ptr nocapture noundef readonly %params, ptr noundef %objs, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %0 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %2 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 72, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 116
  %6 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr15.i.i.i, ptr %6, align 8
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 72)
  %objs1 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %objs1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %objs, ptr %objs1, align 8
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 67239936, ptr %add.ptr.i.i.i, align 8
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %bo, i32 0, i32 1
  %11 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_res_handle, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %resource_id = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %14 = ptrtoint ptr %resource_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %resource_id, align 8
  %format = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 4
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %format2 = getelementptr i8, ptr %call.i.i.i.i, i32 76
  %18 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %format2, align 8
  %width = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 5
  %19 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %width3 = getelementptr i8, ptr %call.i.i.i.i, i32 84
  %22 = ptrtoint ptr %width3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %width3, align 8
  %height = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 6
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %height4 = getelementptr i8, ptr %call.i.i.i.i, i32 88
  %26 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %height4, align 8
  %target = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 7
  %27 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %target, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %target5 = getelementptr i8, ptr %call.i.i.i.i, i32 72
  %30 = ptrtoint ptr %target5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %target5, align 8
  %bind = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 8
  %31 = ptrtoint ptr %bind to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bind, align 8
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %bind6 = getelementptr i8, ptr %call.i.i.i.i, i32 80
  %34 = ptrtoint ptr %bind6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %bind6, align 8
  %depth = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 9
  %35 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %depth, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %depth7 = getelementptr i8, ptr %call.i.i.i.i, i32 92
  %38 = ptrtoint ptr %depth7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %depth7, align 8
  %array_size = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 10
  %39 = ptrtoint ptr %array_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %array_size, align 8
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %array_size8 = getelementptr i8, ptr %call.i.i.i.i, i32 96
  %42 = ptrtoint ptr %array_size8 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %array_size8, align 8
  %last_level = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 11
  %43 = ptrtoint ptr %last_level to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %last_level, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %last_level9 = getelementptr i8, ptr %call.i.i.i.i, i32 100
  %46 = ptrtoint ptr %last_level9 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %last_level9, align 8
  %nr_samples = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 12
  %47 = ptrtoint ptr %nr_samples to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_samples, align 8
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %nr_samples10 = getelementptr i8, ptr %call.i.i.i.i, i32 104
  %50 = ptrtoint ptr %nr_samples10 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %nr_samples10, align 8
  %flags = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 13
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %flags11 = getelementptr i8, ptr %call.i.i.i.i, i32 108
  %54 = ptrtoint ptr %flags11 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %flags11, align 8
  %call12 = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef %fence)
  %created = getelementptr inbounds %struct.virtio_gpu_object, ptr %bo, i32 0, i32 3
  %55 = ptrtoint ptr %created to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %created, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_transfer_to_host_3d(ptr noundef %vgdev, i32 noundef %ctx_id, i64 noundef %offset, i32 noundef %level, i32 noundef %stride, i32 noundef %layer_stride, ptr nocapture noundef readonly %box, ptr noundef %objs, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %objs1 = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 4
  %0 = ptrtoint ptr %objs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %objs1, align 4
  %vdev = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 2
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 8
  %features.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i.i, align 8
  %and.i.i.i = and i64 %5, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool13.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  %call2 = tail call zeroext i1 @virtio_gpu_is_shmem(ptr noundef %1) #11
  %call2.not = xor i1 %call2, true
  %brmerge = select i1 %call2.not, i1 true, i1 %tobool13.i.i.not.i
  br i1 %brmerge, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdev, align 8
  %parent = getelementptr inbounds %struct.virtio_device, ptr %7, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %pages = getelementptr inbounds %struct.virtio_gpu_object_shmem, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %9, ptr noundef %13, i32 noundef %15, i32 noundef 1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %16 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %17, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %18 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 72, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 116
  %22 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr15.i.i.i, ptr %22, align 8
  %24 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 72)
  %objs8 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %objs8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %objs, ptr %objs8, align 8
  %26 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 84017152, ptr %add.ptr.i.i.i, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %ctx_id)
  %ctx_id10 = getelementptr i8, ptr %call.i.i.i.i, i32 60
  %28 = ptrtoint ptr %ctx_id10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %ctx_id10, align 8
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_res_handle, align 8
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %resource_id = getelementptr i8, ptr %call.i.i.i.i, i32 100
  %32 = ptrtoint ptr %resource_id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %resource_id, align 8
  %box11 = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %33 = ptrtoint ptr %box to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %box, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  %36 = ptrtoint ptr %box11 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %box11, align 4
  %y.i = getelementptr inbounds %struct.drm_virtgpu_3d_box, ptr %box, i32 0, i32 1
  %37 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %y.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #11
  %y2.i = getelementptr i8, ptr %call.i.i.i.i, i32 72
  %40 = ptrtoint ptr %y2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %y2.i, align 8
  %z.i = getelementptr inbounds %struct.drm_virtgpu_3d_box, ptr %box, i32 0, i32 2
  %41 = ptrtoint ptr %z.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %z.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #11
  %z3.i = getelementptr i8, ptr %call.i.i.i.i, i32 76
  %44 = ptrtoint ptr %z3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %z3.i, align 4
  %w.i = getelementptr inbounds %struct.drm_virtgpu_3d_box, ptr %box, i32 0, i32 3
  %45 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %w.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #11
  %w4.i = getelementptr i8, ptr %call.i.i.i.i, i32 80
  %48 = ptrtoint ptr %w4.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %w4.i, align 8
  %h.i = getelementptr inbounds %struct.drm_virtgpu_3d_box, ptr %box, i32 0, i32 4
  %49 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %h.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #11
  %h5.i = getelementptr i8, ptr %call.i.i.i.i, i32 84
  %52 = ptrtoint ptr %h5.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %h5.i, align 4
  %d.i = getelementptr inbounds %struct.drm_virtgpu_3d_box, ptr %box, i32 0, i32 5
  %53 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %d.i, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #11
  %d6.i = getelementptr i8, ptr %call.i.i.i.i, i32 88
  %56 = ptrtoint ptr %d6.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %d6.i, align 8
  %57 = tail call i64 @llvm.bswap.i64(i64 %offset)
  %offset12 = getelementptr i8, ptr %call.i.i.i.i, i32 92
  %58 = ptrtoint ptr %offset12 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %offset12, align 8
  %59 = tail call i32 @llvm.bswap.i32(i32 %level)
  %level13 = getelementptr i8, ptr %call.i.i.i.i, i32 104
  %60 = ptrtoint ptr %level13 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %level13, align 8
  %61 = tail call i32 @llvm.bswap.i32(i32 %stride)
  %stride14 = getelementptr i8, ptr %call.i.i.i.i, i32 108
  %62 = ptrtoint ptr %stride14 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %stride14, align 8
  %63 = tail call i32 @llvm.bswap.i32(i32 %layer_stride)
  %layer_stride15 = getelementptr i8, ptr %call.i.i.i.i, i32 112
  %64 = ptrtoint ptr %layer_stride15 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %layer_stride15, align 8
  %call16 = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef %fence)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtio_gpu_is_shmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_transfer_from_host_3d(ptr noundef %vgdev, i32 noundef %ctx_id, i64 noundef %offset, i32 noundef %level, i32 noundef %stride, i32 noundef %layer_stride, ptr nocapture noundef readonly %box, ptr noundef %objs, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %objs1 = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 4
  %0 = ptrtoint ptr %objs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %objs1, align 4
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %2 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %4 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 72, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 116
  %8 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr15.i.i.i, ptr %8, align 8
  %10 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 72)
  %objs2 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %objs2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %objs, ptr %objs2, align 8
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 100794368, ptr %add.ptr.i.i.i, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %ctx_id)
  %ctx_id4 = getelementptr i8, ptr %call.i.i.i.i, i32 60
  %14 = ptrtoint ptr %ctx_id4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ctx_id4, align 8
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_res_handle, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %resource_id = getelementptr i8, ptr %call.i.i.i.i, i32 100
  %18 = ptrtoint ptr %resource_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %resource_id, align 8
  %box5 = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %19 = ptrtoint ptr %box to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %box, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  %22 = ptrtoint ptr %box5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %box5, align 4
  %y.i = getelementptr inbounds %struct.drm_virtgpu_3d_box, ptr %box, i32 0, i32 1
  %23 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %y.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  %y2.i = getelementptr i8, ptr %call.i.i.i.i, i32 72
  %26 = ptrtoint ptr %y2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %y2.i, align 8
  %z.i = getelementptr inbounds %struct.drm_virtgpu_3d_box, ptr %box, i32 0, i32 2
  %27 = ptrtoint ptr %z.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %z.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  %z3.i = getelementptr i8, ptr %call.i.i.i.i, i32 76
  %30 = ptrtoint ptr %z3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %z3.i, align 4
  %w.i = getelementptr inbounds %struct.drm_virtgpu_3d_box, ptr %box, i32 0, i32 3
  %31 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %w.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #11
  %w4.i = getelementptr i8, ptr %call.i.i.i.i, i32 80
  %34 = ptrtoint ptr %w4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %w4.i, align 8
  %h.i = getelementptr inbounds %struct.drm_virtgpu_3d_box, ptr %box, i32 0, i32 4
  %35 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %h.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #11
  %h5.i = getelementptr i8, ptr %call.i.i.i.i, i32 84
  %38 = ptrtoint ptr %h5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %h5.i, align 4
  %d.i = getelementptr inbounds %struct.drm_virtgpu_3d_box, ptr %box, i32 0, i32 5
  %39 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %d.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #11
  %d6.i = getelementptr i8, ptr %call.i.i.i.i, i32 88
  %42 = ptrtoint ptr %d6.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %d6.i, align 8
  %43 = tail call i64 @llvm.bswap.i64(i64 %offset)
  %offset6 = getelementptr i8, ptr %call.i.i.i.i, i32 92
  %44 = ptrtoint ptr %offset6 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %offset6, align 8
  %45 = tail call i32 @llvm.bswap.i32(i32 %level)
  %level7 = getelementptr i8, ptr %call.i.i.i.i, i32 104
  %46 = ptrtoint ptr %level7 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %level7, align 8
  %47 = tail call i32 @llvm.bswap.i32(i32 %stride)
  %stride8 = getelementptr i8, ptr %call.i.i.i.i, i32 108
  %48 = ptrtoint ptr %stride8 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %stride8, align 8
  %49 = tail call i32 @llvm.bswap.i32(i32 %layer_stride)
  %layer_stride9 = getelementptr i8, ptr %call.i.i.i.i, i32 112
  %50 = ptrtoint ptr %layer_stride9 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %layer_stride9, align 8
  %call10 = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef %fence)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_submit(ptr noundef %vgdev, ptr noundef %data, i32 noundef %data_size, i32 noundef %ctx_id, ptr noundef %objs, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %0 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %2 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 76
  %6 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr15.i.i.i, ptr %6, align 8
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 32)
  %data_buf = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %data_buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data, ptr %data_buf, align 8
  %data_size1 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %data_size1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %data_size, ptr %data_size1, align 4
  %objs2 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %objs2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %objs, ptr %objs2, align 8
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 117571584, ptr %add.ptr.i.i.i, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %ctx_id)
  %ctx_id4 = getelementptr i8, ptr %call.i.i.i.i, i32 60
  %14 = ptrtoint ptr %ctx_id4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ctx_id4, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %data_size)
  %size = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %16 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %size, align 8
  %call5 = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef %fence)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_object_attach(ptr noundef %vgdev, ptr nocapture noundef readonly %obj, ptr noundef %ents, i32 noundef %nents) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %obj, i32 0, i32 1
  %0 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_res_handle, align 8
  %vbufs.i.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %2 = ptrtoint ptr %vbufs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbufs.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 36288) #11
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i, i32 44
  %4 = ptrtoint ptr %call.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i.i.i.i, ptr %call.i.i.i.i.i, align 8
  %size9.i.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %size9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %size9.i.i.i.i, align 4
  %resp_cb10.i.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %resp_cb10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %resp_cb10.i.i.i.i, align 8
  %resp_size11.i.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %resp_size11.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24, ptr %resp_size11.i.i.i.i, align 4
  %add.ptr15.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i, i32 76
  %8 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr15.i.i.i.i, ptr %8, align 8
  %10 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 24)
  %11 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 100728832, ptr %add.ptr.i.i.i.i, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %1) #11
  %resource_id1.i = getelementptr i8, ptr %call.i.i.i.i.i, i32 68
  %13 = ptrtoint ptr %resource_id1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %resource_id1.i, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %nents) #11
  %nr_entries.i = getelementptr i8, ptr %call.i.i.i.i.i, i32 72
  %15 = ptrtoint ptr %nr_entries.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %nr_entries.i, align 8
  %data_buf.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ents, ptr %data_buf.i, align 8
  %mul.i = shl i32 %nents, 4
  %data_size.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %data_size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul.i, ptr %data_size.i, align 4
  %call2.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i.i, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cursor_ping(ptr noundef %vgdev, ptr nocapture noundef %output) local_unnamed_addr #0 align 64 {
entry:
  %sgs.i = alloca [1 x ptr], align 4
  %ccmd.i = alloca %struct.scatterlist, align 4
  %idx.i = alloca i32, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %output, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %cursor = getelementptr inbounds %struct.virtio_gpu_output, ptr %output, i32 0, i32 5
  %pos = getelementptr inbounds %struct.virtio_gpu_output, ptr %output, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %pos, align 8
  %vbufs.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %4 = ptrtoint ptr %vbufs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbufs.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %5, i32 noundef 36288) #11
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 44
  %6 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i.i, ptr %call.i.i.i, align 8
  %size9.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %size9.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 56, ptr %size9.i.i, align 4
  %resp_cb10.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %resp_cb10.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %resp_cb10.i.i, align 8
  %resp_size11.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %resp_size11.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %resp_size11.i.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %call.i.i.i, i32 100
  %10 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr15.i.i, ptr %10, align 8
  %cmp.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  %storemerge.i = select i1 %cmp.i.i, ptr null, ptr %call.i.i.i
  %retval.0.i = select i1 %cmp.i.i, ptr %call.i.i.i, ptr %add.ptr.i.i
  %12 = call ptr @memcpy(ptr %retval.0.i, ptr %cursor, i32 56)
  %cursorq.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 6
  %13 = ptrtoint ptr %cursorq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cursorq.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sgs.i) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ccmd.i) #11
  %15 = call ptr @memset(ptr %ccmd.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i) #11
  %16 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %idx.i, align 4, !annotation !41
  %ddev.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 1
  %17 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ddev.i, align 4
  %call.i = call zeroext i1 @drm_dev_enter(ptr noundef %18, ptr noundef nonnull %idx.i) #11
  br i1 %call.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %resp_size.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %storemerge.i, i32 0, i32 5
  %19 = ptrtoint ptr %resp_size.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resp_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %20)
  %cmp.i.i5 = icmp sgt i32 %20, 24
  br i1 %cmp.i.i5, label %if.then.i.i, label %if.then.i.free_vbuf.exit.i_crit_edge

if.then.i.free_vbuf.exit.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_vbuf.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %resp_buf.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %storemerge.i, i32 0, i32 4
  %21 = ptrtoint ptr %resp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resp_buf.i.i, align 8
  call void @kfree(ptr noundef %22) #11
  br label %free_vbuf.exit.i

free_vbuf.exit.i:                                 ; preds = %if.then.i.i, %if.then.i.free_vbuf.exit.i_crit_edge
  %data_buf.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %storemerge.i, i32 0, i32 2
  %23 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_buf.i.i, align 8
  call void @kvfree(ptr noundef %24) #11
  %25 = ptrtoint ptr %vbufs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vbufs.i.i, align 4
  call void @kmem_cache_free(ptr noundef %26, ptr noundef %storemerge.i) #11
  br label %virtio_gpu_queue_cursor.exit

if.end.i:                                         ; preds = %entry
  %27 = ptrtoint ptr %storemerge.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %storemerge.i, align 8
  %size.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %storemerge.i, i32 0, i32 1
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i, align 4
  call void @sg_init_one(ptr noundef nonnull %ccmd.i, ptr noundef %28, i32 noundef %30) #11
  %31 = ptrtoint ptr %sgs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %ccmd.i, ptr %sgs.i, align 4
  %qlock.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 6, i32 1
  call void @_raw_spin_lock(ptr noundef %qlock.i) #11
  %call366.i = call i32 @virtqueue_add_sgs(ptr noundef %14, ptr noundef nonnull %sgs.i, i32 noundef 1, i32 noundef 0, ptr noundef %storemerge.i, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call366.i)
  %cmp67.i = icmp eq i32 %call366.i, -28
  br i1 %cmp67.i, label %if.then4.lr.ph.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then4.lr.ph.i:                                 ; preds = %if.end.i
  %num_free.i = getelementptr inbounds %struct.virtqueue, ptr %14, i32 0, i32 5
  %ack_queue.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 6, i32 2
  br label %if.then4.i

if.then4.i:                                       ; preds = %do.end23.i.if.then4.i_crit_edge, %if.then4.lr.ph.i
  call void @_raw_spin_unlock(ptr noundef %qlock.i) #11
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 462) #11
  %32 = ptrtoint ptr %num_free.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp11.not.i = icmp eq i32 %33, 0
  br i1 %cmp11.not.i, label %if.end13.i, label %if.then4.i.do.end23.i_crit_edge

if.then4.i.do.end23.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

if.end13.i:                                       ; preds = %if.then4.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  %34 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #11
  %call1564.i = call i32 @prepare_to_wait_event(ptr noundef %ack_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %35 = ptrtoint ptr %num_free.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp17.not65.i = icmp eq i32 %36, 0
  br i1 %cmp17.not65.i, label %if.end13.i.cleanup.i_crit_edge, label %if.end13.i.for.end.i_crit_edge

if.end13.i.for.end.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end13.i.cleanup.i_crit_edge:                   ; preds = %if.end13.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end13.i.cleanup.i_crit_edge
  call void @schedule() #11
  %call15.i = call i32 @prepare_to_wait_event(ptr noundef %ack_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %37 = ptrtoint ptr %num_free.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_free.i, align 4
  %cmp17.not.i = icmp eq i32 %38, 0
  br i1 %cmp17.not.i, label %cleanup.i.cleanup.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end13.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %ack_queue.i, ptr noundef nonnull %__wq_entry.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  br label %do.end23.i

do.end23.i:                                       ; preds = %for.end.i, %if.then4.i.do.end23.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %qlock.i) #11
  %call3.i = call i32 @virtqueue_add_sgs(ptr noundef %14, ptr noundef nonnull %sgs.i, i32 noundef 1, i32 noundef 0, ptr noundef %storemerge.i, i32 noundef 2592) #11
  %cmp.i = icmp eq i32 %call3.i, -28
  br i1 %cmp.i, label %do.end23.i.if.then4.i_crit_edge, label %do.end23.i.if.else.i_crit_edge

do.end23.i.if.else.i_crit_edge:                   ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

do.end23.i.if.then4.i_crit_edge:                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

if.else.i:                                        ; preds = %do.end23.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %39 = ptrtoint ptr %storemerge.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %storemerge.i, align 8
  call fastcc void @trace_virtio_gpu_cmd_queue(ptr noundef %14, ptr noundef %40) #11
  %call27.i = call zeroext i1 @virtqueue_kick_prepare(ptr noundef %14) #11
  call void @_raw_spin_unlock(ptr noundef %qlock.i) #11
  br i1 %call27.i, label %if.then31.i, label %if.else.i.if.end33.i_crit_edge

if.else.i.if.end33.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %call32.i = call zeroext i1 @virtqueue_notify(ptr noundef %14) #11
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %if.else.i.if.end33.i_crit_edge
  %41 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %idx.i, align 4
  call void @drm_dev_exit(i32 noundef %42) #11
  br label %virtio_gpu_queue_cursor.exit

virtio_gpu_queue_cursor.exit:                     ; preds = %if.end33.i, %free_vbuf.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ccmd.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sgs.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_cmd_resource_assign_uuid(ptr noundef %vgdev, ptr noundef %objs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %objs1 = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 4
  %0 = ptrtoint ptr %objs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %objs1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %virtio_gpu_alloc_cmd_resp.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %resource_export_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 32
  tail call void @_raw_spin_lock(ptr noundef %resource_export_lock) #11
  %uuid_state = getelementptr inbounds %struct.virtio_gpu_object, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %uuid_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %uuid_state, align 8
  tail call void @_raw_spin_unlock(ptr noundef %resource_export_lock) #11
  tail call void @virtio_gpu_array_put_free(ptr noundef %objs) #11
  br label %cleanup

virtio_gpu_alloc_cmd_resp.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vbufs.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %4 = ptrtoint ptr %vbufs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbufs.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %5, i32 noundef 36288) #11
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 44
  %6 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i.i, ptr %call.i.i.i, align 8
  %size9.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %size9.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32, ptr %size9.i.i, align 4
  %resp_cb10.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %resp_cb10.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @virtio_gpu_cmd_resource_uuid_cb, ptr %resp_cb10.i.i, align 8
  %resp_size11.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %resp_size11.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 40, ptr %resp_size11.i.i, align 4
  %10 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %10, align 8
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 32)
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 184614912, ptr %add.ptr.i.i, align 8
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_res_handle, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %resource_id = getelementptr i8, ptr %call.i.i.i, i32 68
  %17 = ptrtoint ptr %resource_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %resource_id, align 8
  %objs4 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %objs4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %objs, ptr %objs4, align 8
  %call.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %virtio_gpu_alloc_cmd_resp.exit, %if.then
  %retval.0 = phi i32 [ 0, %virtio_gpu_alloc_cmd_resp.exit ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_array_put_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_cmd_resource_uuid_cb(ptr noundef %vgdev, ptr nocapture noundef readonly %vbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %objs = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 8
  %0 = ptrtoint ptr %objs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %objs, align 4
  %objs1 = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %objs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %objs1, align 4
  %resp_buf = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 4
  %4 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resp_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %resource_export_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 32
  tail call void @_raw_spin_lock(ptr noundef %resource_export_lock) #11
  %uuid_state = getelementptr inbounds %struct.virtio_gpu_object, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %uuid_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uuid_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !43

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1127, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 85000192, i32 %7)
  %cmp21 = icmp eq i32 %7, 85000192
  br i1 %cmp21, label %land.lhs.true, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %uuid_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uuid_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp23 = icmp eq i32 %11, 0
  br i1 %cmp23, label %if.then24, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %uuid = getelementptr inbounds %struct.virtio_gpu_object, ptr %3, i32 0, i32 9
  %uuid25 = getelementptr inbounds %struct.virtio_gpu_resp_resource_uuid, ptr %5, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %uuid, ptr %uuid25, i32 16)
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %land.lhs.true.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %storemerge = phi i32 [ 1, %if.then24 ], [ 2, %land.lhs.true.if.end28_crit_edge ], [ 2, %if.end.if.end28_crit_edge ]
  %13 = ptrtoint ptr %uuid_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %uuid_state, align 8
  tail call void @_raw_spin_unlock(ptr noundef %resource_export_lock) #11
  %resp_wq = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %resp_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_cmd_map(ptr noundef %vgdev, ptr noundef %objs, i64 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %objs1 = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %objs, i32 0, i32 4
  %0 = ptrtoint ptr %objs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %objs1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %virtio_gpu_alloc_cmd_resp.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

virtio_gpu_alloc_cmd_resp.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vbufs.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %3 = ptrtoint ptr %vbufs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vbufs.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 36288) #11
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 44
  %5 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i.i, ptr %call.i.i.i, align 8
  %size9.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %size9.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 40, ptr %size9.i.i, align 4
  %resp_cb10.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %resp_cb10.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @virtio_gpu_cmd_resource_map_cb, ptr %resp_cb10.i.i, align 8
  %resp_size11.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %resp_size11.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %resp_size11.i.i, align 4
  %9 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %9, align 8
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 32)
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 134348800, ptr %add.ptr.i.i, align 8
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_res_handle, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %resource_id = getelementptr i8, ptr %call.i.i.i, i32 68
  %16 = ptrtoint ptr %resource_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %resource_id, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %offset)
  %offset3 = getelementptr i8, ptr %call.i.i.i, i32 76
  %18 = ptrtoint ptr %offset3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %offset3, align 8
  %objs4 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %objs4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %objs, ptr %objs4, align 8
  %call.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %virtio_gpu_alloc_cmd_resp.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %virtio_gpu_alloc_cmd_resp.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_cmd_resource_map_cb(ptr noundef %vgdev, ptr nocapture noundef readonly %vbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %objs = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 8
  %0 = ptrtoint ptr %objs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %objs, align 4
  %objs1 = getelementptr inbounds %struct.virtio_gpu_object_array, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %objs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %objs1, align 4
  %resp_buf = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %vbuf, i32 0, i32 4
  %4 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resp_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %host_visible_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %host_visible_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 101777408, i32 %7)
  %cmp = icmp eq i32 %7, 101777408
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %map_info = getelementptr inbounds %struct.virtio_gpu_resp_map_info, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %map_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map_info, align 8
  %map_info5 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %map_info5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %map_info5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ 1, %if.then ], [ 2, %entry.if.end_crit_edge ]
  %11 = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %11, align 8
  tail call void @_raw_spin_unlock(ptr noundef %host_visible_lock) #11
  %resp_wq = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %resp_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_unmap(ptr noundef %vgdev, ptr nocapture noundef readonly %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %0 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %2 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 76
  %6 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr15.i.i.i, ptr %6, align 8
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 32)
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 151126016, ptr %add.ptr.i.i.i, align 8
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %bo, i32 0, i32 1
  %10 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_res_handle, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %resource_id = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %13 = ptrtoint ptr %resource_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %resource_id, align 8
  %call.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_resource_create_blob(ptr noundef %vgdev, ptr nocapture noundef %bo, ptr nocapture noundef readonly %params, ptr noundef %ents, i32 noundef %nents) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %0 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %2 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 56, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 100
  %6 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr15.i.i.i, ptr %6, align 8
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 24)
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 201392128, ptr %add.ptr.i.i.i, align 8
  %ctx_id = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 14
  %10 = ptrtoint ptr %ctx_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_id, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %ctx_id2 = getelementptr i8, ptr %call.i.i.i.i, i32 60
  %13 = ptrtoint ptr %ctx_id2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ctx_id2, align 8
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %bo, i32 0, i32 1
  %14 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_res_handle, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %resource_id = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %17 = ptrtoint ptr %resource_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %resource_id, align 8
  %blob_mem = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 15
  %18 = ptrtoint ptr %blob_mem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blob_mem, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %blob_mem3 = getelementptr i8, ptr %call.i.i.i.i, i32 72
  %21 = ptrtoint ptr %blob_mem3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %blob_mem3, align 8
  %blob_flags = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 16
  %22 = ptrtoint ptr %blob_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blob_flags, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %blob_flags4 = getelementptr i8, ptr %call.i.i.i.i, i32 76
  %25 = ptrtoint ptr %blob_flags4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %blob_flags4, align 8
  %blob_id = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 17
  %26 = ptrtoint ptr %blob_id to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %blob_id, align 8
  %28 = tail call i64 @llvm.bswap.i64(i64 %27)
  %blob_id5 = getelementptr i8, ptr %call.i.i.i.i, i32 84
  %29 = ptrtoint ptr %blob_id5 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %blob_id5, align 8
  %30 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %params, align 8
  %conv = zext i32 %31 to i64
  %32 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %size6 = getelementptr i8, ptr %call.i.i.i.i, i32 92
  %33 = ptrtoint ptr %size6 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %size6, align 8
  %34 = tail call i32 @llvm.bswap.i32(i32 %nents)
  %nr_entries = getelementptr i8, ptr %call.i.i.i.i, i32 80
  %35 = ptrtoint ptr %nr_entries to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %nr_entries, align 8
  %data_buf = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %data_buf to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ents, ptr %data_buf, align 8
  %mul = shl i32 %nents, 4
  %data_size = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul, ptr %data_size, align 4
  %call.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef null) #11
  %created = getelementptr inbounds %struct.virtio_gpu_object, ptr %bo, i32 0, i32 3
  %38 = ptrtoint ptr %created to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %created, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cmd_set_scanout_blob(ptr noundef %vgdev, i32 noundef %scanout_id, ptr nocapture noundef readonly %bo, ptr nocapture noundef readonly %fb, i32 noundef %width, i32 noundef %height, i32 noundef %x, i32 noundef %y) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %0 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %format1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call = tail call i32 @virtio_gpu_translate_format(i32 noundef %3) #11
  %vbufs.i.i.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 7
  %4 = ptrtoint ptr %vbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbufs.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %5, i32 noundef 36288) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %6 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i.i.i, ptr %call.i.i.i.i, align 8
  %size9.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %size9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 96, ptr %size9.i.i.i, align 4
  %resp_cb10.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %resp_cb10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %resp_cb10.i.i.i, align 8
  %resp_size11.i.i.i = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %resp_size11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 24, ptr %resp_size11.i.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 140
  %10 = getelementptr inbounds %struct.virtio_gpu_vbuffer, ptr %call.i.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr15.i.i.i, ptr %10, align 8
  %12 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 64)
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 218169344, ptr %add.ptr.i.i.i, align 8
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %bo, i32 0, i32 1
  %14 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_res_handle, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %resource_id = getelementptr i8, ptr %call.i.i.i.i, i32 88
  %17 = ptrtoint ptr %resource_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %resource_id, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %scanout_id)
  %scanout_id4 = getelementptr i8, ptr %call.i.i.i.i, i32 84
  %19 = ptrtoint ptr %scanout_id4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %scanout_id4, align 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %call)
  %format5 = getelementptr i8, ptr %call.i.i.i.i, i32 100
  %21 = ptrtoint ptr %format5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %format5, align 8
  %width6 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 9
  %22 = ptrtoint ptr %width6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width6, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %width7 = getelementptr i8, ptr %call.i.i.i.i, i32 92
  %25 = ptrtoint ptr %width7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %width7, align 8
  %height8 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 10
  %26 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height8, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %height9 = getelementptr i8, ptr %call.i.i.i.i, i32 96
  %29 = ptrtoint ptr %height9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %height9, align 8
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 0
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %arrayidx10 = getelementptr i8, ptr %call.i.i.i.i, i32 108
  %33 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 0
  %34 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx11, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %arrayidx13 = getelementptr i8, ptr %call.i.i.i.i, i32 124
  %37 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx13, align 4
  %arrayidx.1 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.1, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %arrayidx10.1 = getelementptr i8, ptr %call.i.i.i.i, i32 112
  %41 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx10.1, align 8
  %arrayidx11.1 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx11.1, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %arrayidx13.1 = getelementptr i8, ptr %call.i.i.i.i, i32 128
  %45 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx13.1, align 8
  %arrayidx.2 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 2
  %46 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.2, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %arrayidx10.2 = getelementptr i8, ptr %call.i.i.i.i, i32 116
  %49 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx10.2, align 4
  %arrayidx11.2 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 2
  %50 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx11.2, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %arrayidx13.2 = getelementptr i8, ptr %call.i.i.i.i, i32 132
  %53 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx13.2, align 4
  %arrayidx.3 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 3
  %54 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.3, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %arrayidx10.3 = getelementptr i8, ptr %call.i.i.i.i, i32 120
  %57 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx10.3, align 8
  %arrayidx11.3 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 3
  %58 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx11.3, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %arrayidx13.3 = getelementptr i8, ptr %call.i.i.i.i, i32 136
  %61 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx13.3, align 8
  %62 = tail call i32 @llvm.bswap.i32(i32 %width)
  %r = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %width14 = getelementptr i8, ptr %call.i.i.i.i, i32 76
  %63 = ptrtoint ptr %width14 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %width14, align 8
  %64 = tail call i32 @llvm.bswap.i32(i32 %height)
  %height16 = getelementptr i8, ptr %call.i.i.i.i, i32 80
  %65 = ptrtoint ptr %height16 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %height16, align 8
  %66 = tail call i32 @llvm.bswap.i32(i32 %x)
  %67 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %r, align 8
  %68 = tail call i32 @llvm.bswap.i32(i32 %y)
  %y20 = getelementptr i8, ptr %call.i.i.i.i, i32 72
  %69 = ptrtoint ptr %y20 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %y20, align 8
  %call.i = tail call fastcc i32 @virtio_gpu_queue_fenced_ctrl_buffer(ptr noundef %vgdev, ptr noundef %call.i.i.i.i, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_translate_format(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_virtio_gpu_cmd_response(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_array_unlock_resv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local void @virtio_gpu_fence_emit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_array_add_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_sgs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_virtio_gpu_cmd_queue(ptr noundef %vq, ptr noundef %hdr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_virtio_gpu_cmd_queue, i32 0, i32 1), ptr blockaddress(@trace_virtio_gpu_cmd_queue, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !42

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !31) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !31) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !55
  %call42 = tail call i32 @__traceiter_virtio_gpu_cmd_queue(ptr noundef null, ptr noundef %vq, ptr noundef %hdr) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !56
  %13 = tail call i32 @llvm.read_register.i32(metadata !31) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !31) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !43

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !31) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_virtio_gpu_cmd_queue, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_virtio_gpu_cmd_queue, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_virtio_gpu_cmd_queue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_virtio_gpu_cmd_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 41, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !47
  %31 = tail call i32 @llvm.read_register.i32(metadata !31) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_virtio_gpu_cmd_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_do_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @virtio_get_edid_block(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %buf, i32 noundef %block, i32 noundef %len) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %block, 7
  %add = add i32 %mul, %len
  %size = getelementptr inbounds %struct.virtio_gpu_resp_edid, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %2)
  %cmp = icmp ugt i32 %add, %2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %edid = getelementptr inbounds %struct.virtio_gpu_resp_edid, ptr %data, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %edid, i32 %mul
  %3 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25, !27, !29}
!llvm.named.register.sp = !{!31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/virtio/virtgpu_vq.c", i32 72, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/virtio/virtgpu_vq.c", i32 222, i32 5}
!4 = !{ptr @virtio_gpu_dequeue_ctrl_func._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.virtio_gpu_dequeue_ctrl_func, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/virtio/virtgpu_vq.c", i32 226, i32 5}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/virtio/virtgpu_vq.c", i32 883, i32 6}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/virtio/virtgpu_vq.c", i32 191, i32 3}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/virtio/virtgpu_trace.h", i32 43, i32 1}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/virtio/virtgpu_trace.h", i32 38, i32 1}
!24 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/virtio/virtgpu_vq.c", i32 651, i32 4}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/virtio/virtgpu_vq.c", i32 657, i32 4}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/virtio/virtgpu_vq.c", i32 684, i32 3}
!31 = !{!"sp"}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{i64 2148357540, i64 2148357545, i64 2148357558, i64 2148357602, i64 2148357636, i64 2148357657}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2156940880}
!45 = !{i64 2156941103}
!46 = !{i64 2149356303}
!47 = !{i64 2149357339}
!48 = !{i64 2153810731, i64 2153811223, i64 2153810768, i64 2153810824, i64 2153810858, i64 2153810882, i64 2153810923, i64 2153810944, i64 2153810972, i64 2153811006}
!49 = !{i64 2153812341, i64 2153812833, i64 2153812378, i64 2153812434, i64 2153812468, i64 2153812492, i64 2153812533, i64 2153812554, i64 2153812582, i64 2153812616}
!50 = !{i8 0, i8 2}
!51 = !{i64 2148544147, i64 2148544173, i64 2148544202, i64 2148544236, i64 2148544267, i64 2148544290}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2156958438, i64 2156958938, i64 2156958475, i64 2156958531, i64 2156958565, i64 2156958589, i64 2156958630, i64 2156958651, i64 2156958679, i64 2156958713}
!54 = !{i64 2156997155}
!55 = !{i64 2156919619}
!56 = !{i64 2156919836}
