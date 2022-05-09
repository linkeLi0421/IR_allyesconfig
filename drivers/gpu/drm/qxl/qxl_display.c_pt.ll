; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/qxl/qxl_display.c_pt.bc'
source_filename = "../drivers/gpu/drm/qxl/qxl_display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.qxl_device = type { %struct.drm_device, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.qxl_mman, %struct.qxl_gem, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qxl_memslot, %struct.qxl_memslot, %struct.spinlock, %struct.idr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, [32 x %struct.qxl_debugfs], i32, %struct.mutex, %struct.idr, %struct.spinlock, i32, %struct.mutex, ptr, ptr, %struct.mutex, [3 x ptr], [3 x i32], %struct.work_struct, ptr, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.qxl_debugfs = type { ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.qxl_rom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8, i8, i8, i8, i8, [58 x i8], i32, %struct.anon.89 }
%struct.anon.89 = type { i16, i16, [64 x %struct.qxl_urect] }
%struct.qxl_urect = type { i32, i32, i32, i32 }
%struct.qxl_monitors_config = type { i16, i16, [0 x %struct.qxl_head] }
%struct.qxl_head = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dma_buf_map = type { %union.anon.79, i8 }
%union.anon.79 = type { ptr }
%struct.qxl_bo = type <{ %struct.ttm_buffer_object, %struct.list_head, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.dma_buf_map, ptr, i32, i32, i8, [3 x i8], ptr, i8, %struct.qxl_surface, [3 x i8], i32, ptr }>
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.qxl_surface = type { i32, i32, i32, i32, i64 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.qxl_ram_header = type <{ i32, i32, i32, [4096 x i8], %struct.qxl_ring_header, [32 x %struct.qxl_command], %struct.qxl_ring_header, [32 x %struct.qxl_command], %struct.qxl_ring_header, [8 x i64], %struct.qxl_rect, i32, %struct.qxl_mem_slot, %struct.qxl_surface_create, i64, i64, [64 x i8] }>
%struct.qxl_command = type { i64, i32, i32 }
%struct.qxl_ring_header = type { i32, i32, i32, i32, i32 }
%struct.qxl_rect = type { i32, i32, i32, i32 }
%struct.qxl_mem_slot = type { i64, i64 }
%struct.qxl_surface_create = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.qxl_crtc = type { %struct.drm_crtc, i32, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.qxl_output = type { i32, %struct.drm_connector, %struct.drm_encoder }
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
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.qxl_cursor = type <{ %struct.qxl_cursor_header, i32, %struct.qxl_data_chunk }>
%struct.qxl_cursor_header = type <{ i64, i16, i16, i16, i16, i16 }>
%struct.qxl_data_chunk = type <{ i32, i64, i64, [0 x i8] }>
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.qxl_cursor_cmd = type <{ %union.qxl_release_info, i8, %union.anon.93, [128 x i8] }>
%union.qxl_release_info = type { i64 }
%union.anon.93 = type <{ %struct.anon.95, [9 x i8] }>
%struct.anon.95 = type { i16, i16 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ignoring client monitors config: error\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ignoring client monitors config: bad crc\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ignoring client monitors config: unchanged\00", [53 x i8] zeroinitializer }, align 32
@qxl_num_crtc = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to create gem ret=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.qxl_create_monitors_object = private unnamed_addr constant [27 x i8] c"qxl_create_monitors_object\00", align 1
@qxl_mode_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @qxl_user_framebuffer_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no client monitors configured\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"client monitors list will be truncated: %d < %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read %dx%d+%d+%d\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qxl_fb_funcs = internal constant { %struct.drm_framebuffer_funcs, [20 x i8] } { %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr @qxl_framebuffer_surface_dirty }, [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hotplug_mode_update\00", [44 x i8] zeroinitializer }, align 32
@qxl_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @qxl_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@qxl_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qxl_crtc_atomic_flush, ptr @qxl_crtc_atomic_enable, ptr @qxl_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@qxl_primary_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_primary_helper_destroy, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@qxl_primary_plane_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 875713112, i32 875713089], [24 x i8] zeroinitializer }, align 32
@primary_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @qxl_plane_prepare_fb, ptr @qxl_plane_cleanup_fb, ptr @qxl_primary_atomic_check, ptr @qxl_primary_atomic_update, ptr @qxl_primary_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@qxl_cursor_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_primary_helper_destroy, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@qxl_cursor_plane_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 875713089], [28 x i8] zeroinitializer }, align 32
@qxl_cursor_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @qxl_plane_prepare_fb, ptr @qxl_plane_cleanup_fb, ptr null, ptr @qxl_cursor_atomic_update, ptr @qxl_cursor_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"#%d: %dx%d -> %dx%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%dx%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flush\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no primary surface, skip (%s)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"inactive head 0, skip (%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"head %d, %dx%d, at +%d+%d, %s (%s)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"active heads %d -> %d (%d total)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"head %d wrong: %dx%d+%d+%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@qxl_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @qxl_conn_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @qxl_conn_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@qdev_output_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.22, i32 1142, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[drm] *ERROR* drm_simple_encoder_init() failed, error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qdev_output_init\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/qxl/qxl_display.c\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qdev_output_init._entry_ptr = internal global ptr @qdev_output_init._entry, section ".printk_index", align 4
@qxl_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @qxl_conn_get_modes, ptr null, ptr @qxl_conn_mode_valid, ptr null, ptr @qxl_best_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"#%d connected: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"head %d is %dx%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967261]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967261]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 177, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 181, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 185, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1194, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"qxl_mode_funcs\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1176, i32 43 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 85, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 89, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 138, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"qxl_fb_funcs\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 442, i32 43 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1114, i32 8 }
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"qxl_crtc_funcs\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 391, i32 36 }
@___asan_gen_.63 = private unnamed_addr constant [22 x i8] c"qxl_crtc_helper_funcs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 460, i32 43 }
@___asan_gen_.66 = private unnamed_addr constant [24 x i8] c"qxl_primary_plane_funcs\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 916, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant [26 x i8] c"qxl_primary_plane_formats\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 903, i32 23 }
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"primary_helper_funcs\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 908, i32 44 }
@___asan_gen_.75 = private unnamed_addr constant [23 x i8] c"qxl_cursor_plane_funcs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 894, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant [25 x i8] c"qxl_cursor_plane_formats\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 883, i32 23 }
@___asan_gen_.81 = private unnamed_addr constant [24 x i8] c"qxl_cursor_helper_funcs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 887, i32 44 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 757, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 789, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 379, i32 40 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 322, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 352, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 363, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 367, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 303, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 451, i32 40 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 457, i32 40 }
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c"qxl_connector_funcs\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1098, i32 41 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1141, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [27 x i8] c"qxl_connector_helper_funcs\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1058, i32 48 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1082, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 263, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [37 x i8] c"../drivers/gpu/drm/qxl/qxl_display.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1054, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @qdev_output_init._entry, ptr @qdev_output_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @qxl_mode_funcs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @qxl_fb_funcs, ptr @.str.7, ptr @qxl_crtc_funcs, ptr @qxl_crtc_helper_funcs, ptr @qxl_primary_plane_funcs, ptr @qxl_primary_plane_formats, ptr @primary_helper_funcs, ptr @qxl_cursor_plane_funcs, ptr @qxl_cursor_plane_formats, ptr @qxl_cursor_helper_funcs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @qxl_connector_funcs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @qxl_connector_helper_funcs, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_mode_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_fb_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_primary_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_primary_plane_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_cursor_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_cursor_plane_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_cursor_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qdev_output_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_display_read_client_monitors_config(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx) #10
  %0 = call ptr @memset(ptr %ctx, i32 255, i32 84)
  %rom.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 7
  %client_monitors_config15.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 11
  %1 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rom.i, align 4
  %client_monitors_config.i = getelementptr inbounds %struct.qxl_rom, ptr %2, i32 0, i32 23
  %call.i = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %client_monitors_config.i, i32 noundef 1028) #13
  %client_monitors_config_crc.i = getelementptr inbounds %struct.qxl_rom, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %client_monitors_config_crc.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %client_monitors_config_crc.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %4)
  %cmp.not.i = icmp eq i32 %call.i, %4
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %if.end

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.8.if.end.i_crit_edge, %if.end.7.if.end.i_crit_edge, %if.end.6.if.end.i_crit_edge, %if.end.5.if.end.i_crit_edge, %if.end.4.if.end.i_crit_edge, %if.end.3.if.end.i_crit_edge, %if.end.2.if.end.i_crit_edge, %if.end.1.if.end.i_crit_edge, %if.end.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %client_monitors_config.i.lcssa = phi ptr [ %client_monitors_config.i, %entry.if.end.i_crit_edge ], [ %client_monitors_config.i.1, %if.end.if.end.i_crit_edge ], [ %client_monitors_config.i.2, %if.end.1.if.end.i_crit_edge ], [ %client_monitors_config.i.3, %if.end.2.if.end.i_crit_edge ], [ %client_monitors_config.i.4, %if.end.3.if.end.i_crit_edge ], [ %client_monitors_config.i.5, %if.end.4.if.end.i_crit_edge ], [ %client_monitors_config.i.6, %if.end.5.if.end.i_crit_edge ], [ %client_monitors_config.i.7, %if.end.6.if.end.i_crit_edge ], [ %client_monitors_config.i.8, %if.end.7.if.end.i_crit_edge ], [ %client_monitors_config.i.9, %if.end.8.if.end.i_crit_edge ]
  %5 = ptrtoint ptr %client_monitors_config.i.lcssa to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %client_monitors_config.i.lcssa, align 1
  %conv.i.le = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i, label %for.end.thread79, label %if.end6.i

for.end.thread79:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #10
  br label %if.then9

if.end6.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qxl_num_crtc to i32))
  %7 = load i32, ptr @qxl_num_crtc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i.le)
  %cmp7.i = icmp slt i32 %7, %conv.i.le
  br i1 %cmp7.i, label %if.then9.i, label %if.end6.i.if.end14.i_crit_edge

if.end6.i.if.end14.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %7, i32 noundef %conv.i.le) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qxl_num_crtc to i32))
  %8 = load i32, ptr @qxl_num_crtc, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end14.i_crit_edge
  %num_monitors.0.i = phi i32 [ %8, %if.then9.i ], [ %conv.i.le, %if.end6.i.if.end14.i_crit_edge ]
  %9 = ptrtoint ptr %client_monitors_config15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client_monitors_config15.i, align 4
  %tobool16.not.i = icmp eq ptr %10, null
  br i1 %tobool16.not.i, label %if.end14.i.if.end8.i.i.i.i_crit_edge, label %land.lhs.true.i.i

if.end14.i.if.end8.i.i.i.i_crit_edge:             ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i.i

land.lhs.true.i.i:                                ; preds = %if.end14.i
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %10, align 1
  %conv19.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %num_monitors.0.i, i32 %conv19.i)
  %cmp20.not.i = icmp eq i32 %num_monitors.0.i, %conv19.i
  %spec.select.i = zext i1 %cmp20.not.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %num_monitors.0.i, i32 %conv19.i)
  %cmp.i.i = icmp ugt i32 %num_monitors.0.i, %conv19.i
  br i1 %cmp.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end27.i_crit_edge

land.lhs.true.i.i.if.end27.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %10) #10
  %13 = ptrtoint ptr %client_monitors_config15.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %client_monitors_config15.i, align 4
  br label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.then.i.i, %if.end14.i.if.end8.i.i.i.i_crit_edge
  %status.0148.i = phi i32 [ %spec.select.i, %if.then.i.i ], [ 1, %if.end14.i.if.end8.i.i.i.i_crit_edge ]
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_monitors.0.i, i32 28) #10
  %15 = extractvalue { i32, i1 } %14, 1
  %16 = extractvalue { i32, i1 } %14, 0
  %spec.select.i.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %16, i32 4) #10
  %retval.0.i.i.i = select i1 %15, i32 -1, i32 %spec.select.i.i.i
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i.i, i32 noundef 3520) #14
  %17 = ptrtoint ptr %client_monitors_config15.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i.i.i, ptr %client_monitors_config15.i, align 4
  %tobool12.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool12.not.i.i, label %if.end8.i.i.i.i.if.then3_crit_edge, label %if.end8.i.i.i.i.if.end27.i_crit_edge

if.end8.i.i.i.i.if.end27.i_crit_edge:             ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.end8.i.i.i.i.if.then3_crit_edge:               ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end27.i:                                       ; preds = %if.end8.i.i.i.i.if.end27.i_crit_edge, %land.lhs.true.i.i.if.end27.i_crit_edge
  %status.0146.i = phi i32 [ %status.0148.i, %if.end8.i.i.i.i.if.end27.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i.i.if.end27.i_crit_edge ]
  %conv16.i.i = trunc i32 %num_monitors.0.i to i16
  %18 = ptrtoint ptr %client_monitors_config15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client_monitors_config15.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %conv16.i.i, ptr %19, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qxl_num_crtc to i32))
  %21 = load i32, ptr @qxl_num_crtc, align 4
  %conv28.i = trunc i32 %21 to i16
  %22 = load ptr, ptr %client_monitors_config15.i, align 4
  %max_allowed.i = getelementptr inbounds %struct.qxl_monitors_config, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %max_allowed.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %conv28.i, ptr %max_allowed.i, align 1
  %24 = load ptr, ptr %client_monitors_config15.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %24, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp33154.not.i = icmp eq i16 %26, 0
  br i1 %cmp33154.not.i, label %if.end27.i.for.end_crit_edge, label %if.end27.i.for.body.i_crit_edge

if.end27.i.for.body.i_crit_edge:                  ; preds = %if.end27.i
  br label %for.body.i

if.end27.i.for.end_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.i:                                       ; preds = %if.end85.i.for.body.i_crit_edge, %if.end27.i.for.body.i_crit_edge
  %27 = phi ptr [ %72, %if.end85.i.for.body.i_crit_edge ], [ %24, %if.end27.i.for.body.i_crit_edge ]
  %status.1156.i = phi i32 [ %status.8.i, %if.end85.i.for.body.i_crit_edge ], [ %status.0146.i, %if.end27.i.for.body.i_crit_edge ]
  %i.0155.i = phi i32 [ %inc.i, %if.end85.i.for.body.i_crit_edge ], [ 0, %if.end27.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rom.i, align 4
  %arrayidx.i = getelementptr %struct.qxl_rom, ptr %29, i32 0, i32 23, i32 2, i32 %i.0155.i
  %arrayidx39.i = getelementptr %struct.qxl_monitors_config, ptr %27, i32 0, i32 2, i32 %i.0155.i
  %x.i = getelementptr %struct.qxl_monitors_config, ptr %27, i32 0, i32 2, i32 %i.0155.i, i32 4
  %30 = ptrtoint ptr %x.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %x.i, align 1
  %left.i = getelementptr %struct.qxl_rom, ptr %29, i32 0, i32 23, i32 2, i32 %i.0155.i, i32 1
  %32 = ptrtoint ptr %left.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %left.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp40.not.i = icmp eq i32 %31, %33
  br i1 %cmp40.not.i, label %for.body.i.if.end45.i_crit_edge, label %if.then42.i

for.body.i.if.end45.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.then42.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %x.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %x.i, align 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then42.i, %for.body.i.if.end45.i_crit_edge
  %status.2.i = phi i32 [ 0, %if.then42.i ], [ %status.1156.i, %for.body.i.if.end45.i_crit_edge ]
  %y.i = getelementptr %struct.qxl_monitors_config, ptr %27, i32 0, i32 2, i32 %i.0155.i, i32 5
  %35 = ptrtoint ptr %y.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %y.i, align 1
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp46.not.i = icmp eq i32 %36, %38
  br i1 %cmp46.not.i, label %if.end45.i.if.end51.i_crit_edge, label %if.then48.i

if.end45.i.if.end51.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.then48.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %y.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %y.i, align 1
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then48.i, %if.end45.i.if.end51.i_crit_edge
  %status.3.i = phi i32 [ 0, %if.then48.i ], [ %status.2.i, %if.end45.i.if.end51.i_crit_edge ]
  %width.i = getelementptr %struct.qxl_monitors_config, ptr %27, i32 0, i32 2, i32 %i.0155.i, i32 2
  %40 = ptrtoint ptr %width.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %width.i, align 1
  %right.i = getelementptr %struct.qxl_rom, ptr %29, i32 0, i32 23, i32 2, i32 %i.0155.i, i32 3
  %42 = ptrtoint ptr %right.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %right.i, align 1
  %44 = ptrtoint ptr %left.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %left.i, align 1
  %sub.i = sub i32 %43, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %sub.i)
  %cmp53.not.i = icmp eq i32 %41, %sub.i
  br i1 %cmp53.not.i, label %if.end51.i.if.end60.i_crit_edge, label %if.then55.i

if.end51.i.if.end60.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

if.then55.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %width.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %sub.i, ptr %width.i, align 1
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then55.i, %if.end51.i.if.end60.i_crit_edge
  %status.4.i = phi i32 [ 0, %if.then55.i ], [ %status.3.i, %if.end51.i.if.end60.i_crit_edge ]
  %height.i = getelementptr %struct.qxl_monitors_config, ptr %27, i32 0, i32 2, i32 %i.0155.i, i32 3
  %47 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %height.i, align 1
  %bottom.i = getelementptr %struct.qxl_rom, ptr %29, i32 0, i32 23, i32 2, i32 %i.0155.i, i32 2
  %49 = ptrtoint ptr %bottom.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %bottom.i, align 1
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %arrayidx.i, align 1
  %sub62.i = sub i32 %50, %52
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %sub62.i)
  %cmp63.not.i = icmp eq i32 %48, %sub62.i
  br i1 %cmp63.not.i, label %if.end60.i.if.end70.i_crit_edge, label %if.then65.i

if.end60.i.if.end70.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i

if.then65.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %height.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %sub62.i, ptr %height.i, align 1
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then65.i, %if.end60.i.if.end70.i_crit_edge
  %status.5.i = phi i32 [ 0, %if.then65.i ], [ %status.4.i, %if.end60.i.if.end70.i_crit_edge ]
  %surface_id.i = getelementptr %struct.qxl_monitors_config, ptr %27, i32 0, i32 2, i32 %i.0155.i, i32 1
  %54 = ptrtoint ptr %surface_id.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %surface_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp71.not.i = icmp eq i32 %55, 0
  br i1 %cmp71.not.i, label %if.end70.i.if.end75.i_crit_edge, label %if.then73.i

if.end70.i.if.end75.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75.i

if.then73.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %surface_id.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 0, ptr %surface_id.i, align 1
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then73.i, %if.end70.i.if.end75.i_crit_edge
  %status.6.i = phi i32 [ 0, %if.then73.i ], [ %status.5.i, %if.end70.i.if.end75.i_crit_edge ]
  %57 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %arrayidx39.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %i.0155.i)
  %cmp76.not.i = icmp eq i32 %58, %i.0155.i
  br i1 %cmp76.not.i, label %if.end75.i.if.end80.i_crit_edge, label %if.then78.i

if.end75.i.if.end80.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80.i

if.then78.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %i.0155.i, ptr %arrayidx39.i, align 1
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then78.i, %if.end75.i.if.end80.i_crit_edge
  %status.7.i = phi i32 [ 0, %if.then78.i ], [ %status.6.i, %if.end75.i.if.end80.i_crit_edge ]
  %flags.i = getelementptr %struct.qxl_monitors_config, ptr %27, i32 0, i32 2, i32 %i.0155.i, i32 6
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp81.not.i = icmp eq i32 %61, 0
  br i1 %cmp81.not.i, label %if.end80.i.if.end85.i_crit_edge, label %if.then83.i

if.end80.i.if.end85.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

if.then83.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 0, ptr %flags.i, align 1
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then83.i, %if.end80.i.if.end85.i_crit_edge
  %status.8.i = phi i32 [ 0, %if.then83.i ], [ %status.7.i, %if.end80.i.if.end85.i_crit_edge ]
  %63 = ptrtoint ptr %width.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %width.i, align 1
  %65 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %height.i, align 1
  %67 = ptrtoint ptr %x.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %x.i, align 1
  %69 = ptrtoint ptr %y.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %y.i, align 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70) #10
  %inc.i = add nuw nsw i32 %i.0155.i, 1
  %71 = ptrtoint ptr %client_monitors_config15.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %client_monitors_config15.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %72, align 1
  %conv32.i = zext i16 %74 to i32
  %cmp33.i = icmp ult i32 %inc.i, %conv32.i
  br i1 %cmp33.i, label %if.end85.i.for.body.i_crit_edge, label %if.end85.i.for.end_crit_edge

if.end85.i.for.end_crit_edge:                     ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end85.i.for.body.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 1073740) #10
  %76 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rom.i, align 4
  %client_monitors_config.i.1 = getelementptr inbounds %struct.qxl_rom, ptr %77, i32 0, i32 23
  %call.i.1 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %client_monitors_config.i.1, i32 noundef 1028) #13
  %client_monitors_config_crc.i.1 = getelementptr inbounds %struct.qxl_rom, ptr %77, i32 0, i32 22
  %78 = ptrtoint ptr %client_monitors_config_crc.i.1 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %client_monitors_config_crc.i.1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.1, i32 %79)
  %cmp.not.i.1 = icmp eq i32 %call.i.1, %79
  br i1 %cmp.not.i.1, label %if.end.if.end.i_crit_edge, label %if.end.1

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 1073740) #10
  %81 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rom.i, align 4
  %client_monitors_config.i.2 = getelementptr inbounds %struct.qxl_rom, ptr %82, i32 0, i32 23
  %call.i.2 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %client_monitors_config.i.2, i32 noundef 1028) #13
  %client_monitors_config_crc.i.2 = getelementptr inbounds %struct.qxl_rom, ptr %82, i32 0, i32 22
  %83 = ptrtoint ptr %client_monitors_config_crc.i.2 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %client_monitors_config_crc.i.2, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.2, i32 %84)
  %cmp.not.i.2 = icmp eq i32 %call.i.2, %84
  br i1 %cmp.not.i.2, label %if.end.1.if.end.i_crit_edge, label %if.end.2

if.end.1.if.end.i_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.2:                                         ; preds = %if.end.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 1073740) #10
  %86 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rom.i, align 4
  %client_monitors_config.i.3 = getelementptr inbounds %struct.qxl_rom, ptr %87, i32 0, i32 23
  %call.i.3 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %client_monitors_config.i.3, i32 noundef 1028) #13
  %client_monitors_config_crc.i.3 = getelementptr inbounds %struct.qxl_rom, ptr %87, i32 0, i32 22
  %88 = ptrtoint ptr %client_monitors_config_crc.i.3 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %client_monitors_config_crc.i.3, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.3, i32 %89)
  %cmp.not.i.3 = icmp eq i32 %call.i.3, %89
  br i1 %cmp.not.i.3, label %if.end.2.if.end.i_crit_edge, label %if.end.3

if.end.2.if.end.i_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.3:                                         ; preds = %if.end.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 1073740) #10
  %91 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rom.i, align 4
  %client_monitors_config.i.4 = getelementptr inbounds %struct.qxl_rom, ptr %92, i32 0, i32 23
  %call.i.4 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %client_monitors_config.i.4, i32 noundef 1028) #13
  %client_monitors_config_crc.i.4 = getelementptr inbounds %struct.qxl_rom, ptr %92, i32 0, i32 22
  %93 = ptrtoint ptr %client_monitors_config_crc.i.4 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %client_monitors_config_crc.i.4, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.4, i32 %94)
  %cmp.not.i.4 = icmp eq i32 %call.i.4, %94
  br i1 %cmp.not.i.4, label %if.end.3.if.end.i_crit_edge, label %if.end.4

if.end.3.if.end.i_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.4:                                         ; preds = %if.end.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 1073740) #10
  %96 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rom.i, align 4
  %client_monitors_config.i.5 = getelementptr inbounds %struct.qxl_rom, ptr %97, i32 0, i32 23
  %call.i.5 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %client_monitors_config.i.5, i32 noundef 1028) #13
  %client_monitors_config_crc.i.5 = getelementptr inbounds %struct.qxl_rom, ptr %97, i32 0, i32 22
  %98 = ptrtoint ptr %client_monitors_config_crc.i.5 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %client_monitors_config_crc.i.5, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.5, i32 %99)
  %cmp.not.i.5 = icmp eq i32 %call.i.5, %99
  br i1 %cmp.not.i.5, label %if.end.4.if.end.i_crit_edge, label %if.end.5

if.end.4.if.end.i_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.5:                                         ; preds = %if.end.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 1073740) #10
  %101 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rom.i, align 4
  %client_monitors_config.i.6 = getelementptr inbounds %struct.qxl_rom, ptr %102, i32 0, i32 23
  %call.i.6 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %client_monitors_config.i.6, i32 noundef 1028) #13
  %client_monitors_config_crc.i.6 = getelementptr inbounds %struct.qxl_rom, ptr %102, i32 0, i32 22
  %103 = ptrtoint ptr %client_monitors_config_crc.i.6 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %client_monitors_config_crc.i.6, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.6, i32 %104)
  %cmp.not.i.6 = icmp eq i32 %call.i.6, %104
  br i1 %cmp.not.i.6, label %if.end.5.if.end.i_crit_edge, label %if.end.6

if.end.5.if.end.i_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.6:                                         ; preds = %if.end.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 1073740) #10
  %106 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rom.i, align 4
  %client_monitors_config.i.7 = getelementptr inbounds %struct.qxl_rom, ptr %107, i32 0, i32 23
  %call.i.7 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %client_monitors_config.i.7, i32 noundef 1028) #13
  %client_monitors_config_crc.i.7 = getelementptr inbounds %struct.qxl_rom, ptr %107, i32 0, i32 22
  %108 = ptrtoint ptr %client_monitors_config_crc.i.7 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %client_monitors_config_crc.i.7, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.7, i32 %109)
  %cmp.not.i.7 = icmp eq i32 %call.i.7, %109
  br i1 %cmp.not.i.7, label %if.end.6.if.end.i_crit_edge, label %if.end.7

if.end.6.if.end.i_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.7:                                         ; preds = %if.end.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 1073740) #10
  %111 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rom.i, align 4
  %client_monitors_config.i.8 = getelementptr inbounds %struct.qxl_rom, ptr %112, i32 0, i32 23
  %call.i.8 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %client_monitors_config.i.8, i32 noundef 1028) #13
  %client_monitors_config_crc.i.8 = getelementptr inbounds %struct.qxl_rom, ptr %112, i32 0, i32 22
  %113 = ptrtoint ptr %client_monitors_config_crc.i.8 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %client_monitors_config_crc.i.8, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.8, i32 %114)
  %cmp.not.i.8 = icmp eq i32 %call.i.8, %114
  br i1 %cmp.not.i.8, label %if.end.7.if.end.i_crit_edge, label %if.end.8

if.end.7.if.end.i_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.8:                                         ; preds = %if.end.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 1073740) #10
  %116 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rom.i, align 4
  %client_monitors_config.i.9 = getelementptr inbounds %struct.qxl_rom, ptr %117, i32 0, i32 23
  %call.i.9 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %client_monitors_config.i.9, i32 noundef 1028) #13
  %client_monitors_config_crc.i.9 = getelementptr inbounds %struct.qxl_rom, ptr %117, i32 0, i32 22
  %118 = ptrtoint ptr %client_monitors_config_crc.i.9 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %client_monitors_config_crc.i.9, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.9, i32 %119)
  %cmp.not.i.9 = icmp eq i32 %call.i.9, %119
  br i1 %cmp.not.i.9, label %if.end.8.if.end.i_crit_edge, label %if.end.9

if.end.8.if.end.i_crit_edge:                      ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 1073740) #10
  br label %if.then6

for.end:                                          ; preds = %if.end85.i.for.end_crit_edge, %if.end27.i.for.end_crit_edge
  %status.1 = phi i32 [ %status.0146.i, %if.end27.i.for.end_crit_edge ], [ %status.8.i, %if.end85.i.for.end_crit_edge ]
  %121 = zext i32 %status.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status.1, label %if.end10 [
    i32 3, label %for.end.if.then3_crit_edge
    i32 2, label %for.end.if.then6_crit_edge
    i32 1, label %for.end.if.then9_crit_edge
  ]

for.end.if.then9_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

for.end.if.then6_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

for.end.if.then3_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %for.end.if.then3_crit_edge, %if.end8.i.i.i.i.if.then3_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str) #10
  br label %cleanup

if.then6:                                         ; preds = %for.end.if.then6_crit_edge, %if.end.9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.then9:                                         ; preds = %for.end.if.then9_crit_edge, %for.end.thread79
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end10:                                         ; preds = %for.end
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 4
  %122 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %123, i32 0, i32 24
  %124 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %driver_features.i.i.i, align 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 10
  %126 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %125, 16
  %and2.i.i.i = and i32 %and.i.i.i, %127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %lor.rhs.i, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

lor.rhs.i:                                        ; preds = %if.end10
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 30, i32 27
  %128 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i50 = icmp eq ptr %129, null
  br i1 %tobool.not.i50, label %lor.rhs.i.if.then12_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i.if.then12_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %131, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.if.then12_crit_edge, label %drm_drv_uses_atomic_modeset.exit.if.end13_crit_edge

drm_drv_uses_atomic_modeset.exit.if.end13_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

drm_drv_uses_atomic_modeset.exit.if.then12_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then12:                                        ; preds = %drm_drv_uses_atomic_modeset.exit.if.then12_crit_edge, %lor.rhs.i.if.then12_crit_edge
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %drm_drv_uses_atomic_modeset.exit.if.end13_crit_edge, %if.end10.if.end13_crit_edge
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx, i32 noundef 1) #10
  br label %modeset_lock_retry

modeset_lock_retry:                               ; preds = %if.then18.modeset_lock_retry_crit_edge, %if.end13
  %call14 = call i32 @drm_modeset_lock_all_ctx(ptr noundef %qdev, ptr noundef nonnull %ctx) #10
  %132 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call14, label %modeset_lock_retry.if.end23_crit_edge [
    i32 0, label %if.end16
    i32 -35, label %if.then18
  ]

modeset_lock_retry.if.end23_crit_edge:            ; preds = %modeset_lock_retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end16:                                         ; preds = %modeset_lock_retry
  %connector_list.i = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 30, i32 12
  %133 = ptrtoint ptr %connector_list.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %.pn26.i = load ptr, ptr %connector_list.i, align 4
  %cmp.not27.i = icmp eq ptr %.pn26.i, %connector_list.i
  br i1 %cmp.not27.i, label %if.end16.if.end23_crit_edge, label %for.body.lr.ph.i

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

for.body.lr.ph.i:                                 ; preds = %if.end16
  %suggested_x_property.i = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 30, i32 81
  %suggested_y_property.i = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 30, i32 82
  br label %for.body.i57

for.body.i57:                                     ; preds = %for.body.i57.for.body.i57_crit_edge, %for.body.lr.ph.i
  %.pn28.i = phi ptr [ %.pn26.i, %for.body.lr.ph.i ], [ %.pn.i, %for.body.i57.for.body.i57_crit_edge ]
  %add.ptr6.i = getelementptr i8, ptr %.pn28.i, i32 -24
  %134 = ptrtoint ptr %client_monitors_config15.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %client_monitors_config15.i, align 4
  %136 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %add.ptr6.i, align 8
  %base.i = getelementptr i8, ptr %.pn28.i, i32 16
  %138 = ptrtoint ptr %suggested_x_property.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %suggested_x_property.i, align 4
  %x.i52 = getelementptr %struct.qxl_monitors_config, ptr %135, i32 0, i32 2, i32 %137, i32 4
  %140 = ptrtoint ptr %x.i52 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %x.i52, align 1
  %conv.i53 = zext i32 %141 to i64
  %call.i54 = call i32 @drm_object_property_set_value(ptr noundef %base.i, ptr noundef %139, i64 noundef %conv.i53) #10
  %142 = ptrtoint ptr %suggested_y_property.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %suggested_y_property.i, align 4
  %y.i55 = getelementptr %struct.qxl_monitors_config, ptr %135, i32 0, i32 2, i32 %137, i32 5
  %144 = ptrtoint ptr %y.i55 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %y.i55, align 1
  %conv10.i = zext i32 %145 to i64
  %call11.i = call i32 @drm_object_property_set_value(ptr noundef %base.i, ptr noundef %143, i64 noundef %conv10.i) #10
  %146 = ptrtoint ptr %.pn28.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %.pn.i = load ptr, ptr %.pn28.i, align 4
  %cmp.not.i56 = icmp eq ptr %.pn.i, %connector_list.i
  br i1 %cmp.not.i56, label %for.body.i57.if.end23_crit_edge, label %for.body.i57.for.body.i57_crit_edge

for.body.i57.for.body.i57_crit_edge:              ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i57

for.body.i57.if.end23_crit_edge:                  ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then18:                                        ; preds = %modeset_lock_retry
  %call19 = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx) #10
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.modeset_lock_retry_crit_edge, label %if.then18.if.end23_crit_edge

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then18.modeset_lock_retry_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %modeset_lock_retry

if.end23:                                         ; preds = %if.then18.if.end23_crit_edge, %for.body.i57.if.end23_crit_edge, %if.end16.if.end23_crit_edge, %modeset_lock_retry.if.end23_crit_edge
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx) #10
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx) #10
  %147 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i59 = getelementptr inbounds %struct.drm_driver, ptr %148, i32 0, i32 24
  %149 = ptrtoint ptr %driver_features.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %driver_features.i.i.i59, align 4
  %151 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i61 = and i32 %150, 16
  %and2.i.i.i62 = and i32 %and.i.i.i61, %152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i62)
  %cmp.i.i.not.i63 = icmp eq i32 %and2.i.i.i62, 0
  br i1 %cmp.i.i.not.i63, label %lor.rhs.i66, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

lor.rhs.i66:                                      ; preds = %if.end23
  %funcs.i64 = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 30, i32 27
  %153 = ptrtoint ptr %funcs.i64 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %funcs.i64, align 4
  %tobool.not.i65 = icmp eq ptr %154, null
  br i1 %tobool.not.i65, label %lor.rhs.i66.if.then25_crit_edge, label %drm_drv_uses_atomic_modeset.exit70

lor.rhs.i66.if.then25_crit_edge:                  ; preds = %lor.rhs.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

drm_drv_uses_atomic_modeset.exit70:               ; preds = %lor.rhs.i66
  %atomic_commit.i67 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %154, i32 0, i32 5
  %155 = ptrtoint ptr %atomic_commit.i67 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %atomic_commit.i67, align 4
  %cmp.i68.not = icmp eq ptr %156, null
  br i1 %cmp.i68.not, label %drm_drv_uses_atomic_modeset.exit70.if.then25_crit_edge, label %drm_drv_uses_atomic_modeset.exit70.if.end28_crit_edge

drm_drv_uses_atomic_modeset.exit70.if.end28_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

drm_drv_uses_atomic_modeset.exit70.if.then25_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

if.then25:                                        ; preds = %drm_drv_uses_atomic_modeset.exit70.if.then25_crit_edge, %lor.rhs.i66.if.then25_crit_edge
  %mode_config26 = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 30
  call void @mutex_unlock(ptr noundef %mode_config26) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %drm_drv_uses_atomic_modeset.exit70.if.end28_crit_edge, %if.end23.if.end28_crit_edge
  %call29 = call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %qdev) #10
  br i1 %call29, label %if.end28.cleanup_crit_edge, label %if.then30

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  call void @drm_kms_helper_hotplug_event(ptr noundef %qdev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end28.cleanup_crit_edge, %if.then9, %if.then6, %if.then3
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock_all_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_create_monitors_object(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  %gobj = alloca ptr, align 4
  %map = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gobj) #10
  %0 = ptrtoint ptr %gobj to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %gobj, align 4, !annotation !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map) #10
  %1 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %map, align 8, !annotation !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qxl_num_crtc to i32))
  %2 = load i32, ptr @qxl_num_crtc, align 4
  %mul = mul i32 %2, 28
  %add = add i32 %mul, 4
  %call = call i32 @qxl_gem_object_create(ptr noundef %qdev, i32 noundef %add, i32 noundef 0, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %gobj) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.qxl_create_monitors_object, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %gobj to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gobj, align 4
  %monitors_config_bo = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 9
  %5 = ptrtoint ptr %monitors_config_bo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %monitors_config_bo, align 4
  %call2 = call i32 @qxl_bo_vmap(ptr noundef %4, ptr noundef nonnull %map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %monitors_config_bo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %monitors_config_bo, align 4
  %kptr = getelementptr inbounds %struct.qxl_bo, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %kptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kptr, align 8
  %monitors_config = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 10
  %10 = ptrtoint ptr %monitors_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %monitors_config, align 8
  %resource.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %7, i32 0, i32 6
  %11 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i = icmp eq i32 %14, 2
  %main_slot.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 24
  %surfaces_slot.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 25
  %cond.i = select i1 %cmp.i, ptr %main_slot.i, ptr %surfaces_slot.i
  %high_bits.i = getelementptr inbounds %struct.qxl_memslot, ptr %cond.i, i32 0, i32 5
  %15 = ptrtoint ptr %high_bits.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %high_bits.i, align 8
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %12, align 4
  %shl.i = shl i32 %18, 12
  %conv.i = zext i32 %shl.i to i64
  %or.i = or i64 %16, %conv.i
  %ram_header = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 20
  %19 = ptrtoint ptr %ram_header to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ram_header, align 4
  %monitors_config9 = getelementptr inbounds %struct.qxl_ram_header, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %monitors_config9 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %or.i, ptr %monitors_config9, align 1
  %22 = ptrtoint ptr %monitors_config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %monitors_config, align 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 %add)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qxl_num_crtc to i32))
  %25 = load i32, ptr @qxl_num_crtc, align 4
  %26 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 28) #10
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !91

kcalloc.exit.thread:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %dumb_heads36 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 23
  %28 = ptrtoint ptr %dumb_heads36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %dumb_heads36, align 8
  br label %if.then14

if.end7.i.i:                                      ; preds = %if.end5
  %29 = extractvalue { i32, i1 } %26, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #14
  %dumb_heads = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 23
  %30 = ptrtoint ptr %dumb_heads to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i, ptr %dumb_heads, align 8
  %tobool13.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool13.not, label %if.end7.i.i.if.then14_crit_edge, label %if.end7.i.i.cleanup_crit_edge

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i.if.then14_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %if.end7.i.i.if.then14_crit_edge, %kcalloc.exit.thread
  %31 = ptrtoint ptr %monitors_config_bo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %monitors_config_bo, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.then14.cleanup_crit_edge, label %if.end.i

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then14
  %33 = ptrtoint ptr %monitors_config to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %monitors_config, align 8
  %34 = ptrtoint ptr %ram_header to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ram_header, align 4
  %monitors_config1.i = getelementptr inbounds %struct.qxl_ram_header, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %monitors_config1.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 0, ptr %monitors_config1.i, align 1
  %37 = ptrtoint ptr %monitors_config_bo to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %monitors_config_bo, align 4
  %call.i = call i32 @qxl_bo_vunmap(ptr noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @qxl_bo_unref(ptr noundef %monitors_config_bo) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %if.end.i.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.then14.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %if.end5.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gobj) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_gem_object_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_bo_vmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_destroy_monitors_object(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %monitors_config_bo = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 9
  %0 = ptrtoint ptr %monitors_config_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %monitors_config_bo, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %monitors_config = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 10
  %2 = ptrtoint ptr %monitors_config to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %monitors_config, align 8
  %ram_header = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 20
  %3 = ptrtoint ptr %ram_header to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ram_header, align 4
  %monitors_config1 = getelementptr inbounds %struct.qxl_ram_header, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %monitors_config1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %monitors_config1, align 1
  %6 = ptrtoint ptr %monitors_config_bo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %monitors_config_bo, align 4
  %call = tail call i32 @qxl_bo_vunmap(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qxl_bo_unref(ptr noundef %monitors_config_bo) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_bo_vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_modeset_init(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drmm_mode_config_init(ptr noundef %qdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @qxl_create_monitors_object(ptr noundef %qdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %funcs = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 30, i32 27
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @qxl_mode_funcs, ptr %funcs, align 4
  %min_width = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 30, i32 23
  %1 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 30, i32 24
  %2 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 30, i32 25
  %3 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8192, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 30, i32 26
  %4 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8192, ptr %max_height, align 4
  %vram_base = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 1
  %5 = ptrtoint ptr %vram_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vram_base, align 4
  %fb_base = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 30, i32 28
  %7 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fb_base, align 4
  %call17 = tail call i32 @drm_mode_create_suggested_offset_properties(ptr noundef %qdev) #10
  %hotplug_mode_update_property.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 56
  %8 = ptrtoint ptr %hotplug_mode_update_property.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hotplug_mode_update_property.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.qxl_mode_create_hotplug_mode_update_property.exit_crit_edge

if.end4.qxl_mode_create_hotplug_mode_update_property.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_mode_create_hotplug_mode_update_property.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @drm_property_create_range(ptr noundef %qdev, i32 noundef 4, ptr noundef nonnull @.str.7, i64 noundef 0, i64 noundef 1) #10
  %10 = ptrtoint ptr %hotplug_mode_update_property.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %hotplug_mode_update_property.i, align 4
  br label %qxl_mode_create_hotplug_mode_update_property.exit

qxl_mode_create_hotplug_mode_update_property.exit: ; preds = %if.end.i, %if.end4.qxl_mode_create_hotplug_mode_update_property.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qxl_num_crtc to i32))
  %11 = load i32, ptr @qxl_num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp53 = icmp sgt i32 %11, 0
  br i1 %cmp53, label %for.body.lr.ph, label %qxl_mode_create_hotplug_mode_update_property.exit.for.end_crit_edge

qxl_mode_create_hotplug_mode_update_property.exit.for.end_crit_edge: ; preds = %qxl_mode_create_hotplug_mode_update_property.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %qxl_mode_create_hotplug_mode_update_property.exit
  %dev7.i = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 2
  %suggested_x_property.i = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 30, i32 81
  %suggested_y_property.i = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 30, i32 82
  br label %for.body

for.body:                                         ; preds = %qdev_output_init.exit.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %qdev_output_init.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 1000) #15
  %tobool.not.i45 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i45, label %for.body.qdev_crtc_init.exit_crit_edge, label %if.end.i46

for.body.qdev_crtc_init.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %qdev_crtc_init.exit

if.end.i46:                                       ; preds = %for.body
  %shl.i = shl nuw i32 1, %i.054
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 528) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i46.free_mem.i_crit_edge, label %if.end8.i.i

if.end.i46.free_mem.i_crit_edge:                  ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_mem.i

if.end8.i.i:                                      ; preds = %if.end.i46
  %call9.i.i = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %qdev, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %shl.i, ptr noundef nonnull @qxl_primary_plane_funcs, ptr noundef nonnull @qxl_primary_plane_formats, i32 noundef 2, ptr noundef null, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %qxl_create_plane.exit.i, label %if.end8.i.i.free_mem.sink.split.i_crit_edge

if.end8.i.i.free_mem.sink.split.i_crit_edge:      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_mem.sink.split.i

qxl_create_plane.exit.i:                          ; preds = %if.end8.i.i
  %helper_private.i.i.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i.i.i, i32 0, i32 18
  %14 = ptrtoint ptr %helper_private.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @primary_helper_funcs, ptr %helper_private.i.i.i, align 8
  %cmp.i.i = icmp ugt ptr %call7.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %qxl_create_plane.exit.i.free_mem.i_crit_edge, label %if.end4.i

qxl_create_plane.exit.i.free_mem.i_crit_edge:     ; preds = %qxl_create_plane.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_mem.i

if.end4.i:                                        ; preds = %qxl_create_plane.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 528) #15
  %tobool.not.i2.i = icmp eq ptr %call7.i.i.i1.i, null
  br i1 %tobool.not.i2.i, label %if.end4.i.clean_primary.i_crit_edge, label %if.end8.i5.i

if.end4.i.clean_primary.i_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_primary.i

if.end8.i5.i:                                     ; preds = %if.end4.i
  %call9.i3.i = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %qdev, ptr noundef nonnull %call7.i.i.i1.i, i32 noundef %shl.i, ptr noundef nonnull @qxl_cursor_plane_funcs, ptr noundef nonnull @qxl_cursor_plane_formats, i32 noundef 1, ptr noundef null, i32 noundef 2, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i3.i)
  %tobool10.not.i4.i = icmp eq i32 %call9.i3.i, 0
  br i1 %tobool10.not.i4.i, label %qxl_create_plane.exit10.i, label %if.end8.i5.i.clean_primary.sink.split.i_crit_edge

if.end8.i5.i.clean_primary.sink.split.i_crit_edge: ; preds = %if.end8.i5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_primary.sink.split.i

qxl_create_plane.exit10.i:                        ; preds = %if.end8.i5.i
  %helper_private.i.i6.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i.i1.i, i32 0, i32 18
  %16 = ptrtoint ptr %helper_private.i.i6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @qxl_cursor_helper_funcs, ptr %helper_private.i.i6.i, align 8
  %cmp.i11.i = icmp ugt ptr %call7.i.i.i1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i11.i, label %qxl_create_plane.exit10.i.clean_primary.i_crit_edge, label %if.end9.i

qxl_create_plane.exit10.i.clean_primary.i_crit_edge: ; preds = %qxl_create_plane.exit10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_primary.i

if.end9.i:                                        ; preds = %qxl_create_plane.exit10.i
  %call10.i = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %qdev, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %call7.i.i.i1.i, ptr noundef nonnull @qxl_crtc_funcs, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %clean_cursor.i

if.end13.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %index.i = getelementptr inbounds %struct.qxl_crtc, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.054, ptr %index.i, align 8
  %helper_private.i.i = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i.i, i32 0, i32 19
  %18 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @qxl_crtc_helper_funcs, ptr %helper_private.i.i, align 8
  br label %qdev_crtc_init.exit

clean_cursor.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_plane_cleanup(ptr noundef nonnull %call7.i.i.i1.i) #10
  br label %clean_primary.sink.split.i

clean_primary.sink.split.i:                       ; preds = %clean_cursor.i, %if.end8.i5.i.clean_primary.sink.split.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i1.i) #10
  br label %clean_primary.i

clean_primary.i:                                  ; preds = %clean_primary.sink.split.i, %qxl_create_plane.exit10.i.clean_primary.i_crit_edge, %if.end4.i.clean_primary.i_crit_edge
  tail call void @drm_plane_cleanup(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %free_mem.sink.split.i

free_mem.sink.split.i:                            ; preds = %clean_primary.i, %if.end8.i.i.free_mem.sink.split.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %free_mem.i

free_mem.i:                                       ; preds = %free_mem.sink.split.i, %qxl_create_plane.exit.i.free_mem.i_crit_edge, %if.end.i46.free_mem.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %qdev_crtc_init.exit

qdev_crtc_init.exit:                              ; preds = %free_mem.i, %if.end13.i, %for.body.qdev_crtc_init.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 1120) #15
  %tobool.not.i48 = icmp eq ptr %call7.i.i.i47, null
  br i1 %tobool.not.i48, label %qdev_crtc_init.exit.qdev_output_init.exit_crit_edge, label %if.end.i49

qdev_crtc_init.exit.qdev_output_init.exit_crit_edge: ; preds = %qdev_crtc_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %qdev_output_init.exit

if.end.i49:                                       ; preds = %qdev_crtc_init.exit
  %20 = ptrtoint ptr %call7.i.i.i47 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %i.054, ptr %call7.i.i.i47, align 8
  %base.i = getelementptr inbounds %struct.qxl_output, ptr %call7.i.i.i47, i32 0, i32 1
  %enc.i = getelementptr inbounds %struct.qxl_output, ptr %call7.i.i.i47, i32 0, i32 2
  %call2.i = tail call i32 @drm_connector_init(ptr noundef %qdev, ptr noundef %base.i, ptr noundef nonnull @qxl_connector_funcs, i32 noundef 15) #10
  %call4.i = tail call i32 @drm_simple_encoder_init(ptr noundef %qdev, ptr noundef %enc.i, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end8.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.20, i32 noundef %call4.i) #16
  tail call void @drm_connector_cleanup(ptr noundef %base.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i47) #10
  br label %qdev_output_init.exit

if.end8.i:                                        ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #12
  %polled.i = getelementptr inbounds %struct.qxl_output, ptr %call7.i.i.i47, i32 0, i32 1, i32 33
  %23 = ptrtoint ptr %polled.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %polled.i, align 4
  %shl.i50 = shl nuw i32 1, %i.054
  %possible_crtcs.i = getelementptr inbounds %struct.qxl_output, ptr %call7.i.i.i47, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl.i50, ptr %possible_crtcs.i, align 4
  %call11.i = tail call i32 @drm_connector_attach_encoder(ptr noundef %base.i, ptr noundef %enc.i) #10
  %helper_private.i.i51 = getelementptr inbounds %struct.qxl_output, ptr %call7.i.i.i47, i32 0, i32 1, i32 35
  %25 = ptrtoint ptr %helper_private.i.i51 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @qxl_connector_helper_funcs, ptr %helper_private.i.i51, align 4
  %base12.i = getelementptr inbounds %struct.qxl_output, ptr %call7.i.i.i47, i32 0, i32 1, i32 6
  %26 = ptrtoint ptr %hotplug_mode_update_property.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hotplug_mode_update_property.i, align 4
  tail call void @drm_object_attach_property(ptr noundef %base12.i, ptr noundef %27, i64 noundef 0) #10
  %28 = ptrtoint ptr %suggested_x_property.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %suggested_x_property.i, align 4
  tail call void @drm_object_attach_property(ptr noundef %base12.i, ptr noundef %29, i64 noundef 0) #10
  %30 = ptrtoint ptr %suggested_y_property.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %suggested_y_property.i, align 4
  tail call void @drm_object_attach_property(ptr noundef %base12.i, ptr noundef %31, i64 noundef 0) #10
  br label %qdev_output_init.exit

qdev_output_init.exit:                            ; preds = %if.end8.i, %do.end.i, %qdev_crtc_init.exit.qdev_output_init.exit_crit_edge
  %inc = add nuw nsw i32 %i.054, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qxl_num_crtc to i32))
  %32 = load i32, ptr @qxl_num_crtc, align 4
  %cmp = icmp slt i32 %inc, %32
  br i1 %cmp, label %qdev_output_init.exit.for.body_crit_edge, label %qdev_output_init.exit.for.end_crit_edge

qdev_output_init.exit.for.end_crit_edge:          ; preds = %qdev_output_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

qdev_output_init.exit.for.body_crit_edge:         ; preds = %qdev_output_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %qdev_output_init.exit.for.end_crit_edge, %qxl_mode_create_hotplug_mode_update_property.exit.for.end_crit_edge
  tail call void @qxl_display_read_client_monitors_config(ptr noundef %qdev)
  tail call void @drm_mode_config_reset(ptr noundef %qdev) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_suggested_offset_properties(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_modeset_fini(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dumb_shadow_bo = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 22
  %0 = ptrtoint ptr %dumb_shadow_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dumb_shadow_bo, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @qxl_bo_unpin(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %dumb_shadow_bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dumb_shadow_bo, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.drm_gem_object_put.exit_crit_edge, label %if.then.i

if.then.drm_gem_object_put.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %if.then
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @drm_gem_object_free(ptr noundef nonnull %3) #10
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %if.then.drm_gem_object_put.exit_crit_edge
  %5 = ptrtoint ptr %dumb_shadow_bo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dumb_shadow_bo, align 4
  br label %if.end

if.end:                                           ; preds = %drm_gem_object_put.exit, %entry.if.end_crit_edge
  %monitors_config_bo.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 9
  %6 = ptrtoint ptr %monitors_config_bo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %monitors_config_bo.i, align 4
  %tobool.not.i9 = icmp eq ptr %7, null
  br i1 %tobool.not.i9, label %if.end.qxl_destroy_monitors_object.exit_crit_edge, label %if.end.i

if.end.qxl_destroy_monitors_object.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_destroy_monitors_object.exit

if.end.i:                                         ; preds = %if.end
  %monitors_config.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 10
  %8 = ptrtoint ptr %monitors_config.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %monitors_config.i, align 8
  %ram_header.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 20
  %9 = ptrtoint ptr %ram_header.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ram_header.i, align 4
  %monitors_config1.i = getelementptr inbounds %struct.qxl_ram_header, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %monitors_config1.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 0, ptr %monitors_config1.i, align 1
  %12 = ptrtoint ptr %monitors_config_bo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %monitors_config_bo.i, align 4
  %call.i = tail call i32 @qxl_bo_vunmap(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.qxl_destroy_monitors_object.exit_crit_edge

if.end.i.qxl_destroy_monitors_object.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_destroy_monitors_object.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qxl_bo_unref(ptr noundef %monitors_config_bo.i) #10
  br label %qxl_destroy_monitors_object.exit

qxl_destroy_monitors_object.exit:                 ; preds = %if.end5.i, %if.end.i.qxl_destroy_monitors_object.exit_crit_edge, %if.end.qxl_destroy_monitors_object.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_object_property_set_value(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qxl_user_framebuffer_create(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_gem_fb_create_with_funcs(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd, ptr noundef nonnull @qxl_fb_funcs) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create_with_funcs(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_create_handle(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_framebuffer_surface_dirty(ptr noundef %fb, ptr nocapture noundef readnone %file_priv, i32 noundef %flags, i32 noundef %color, ptr noundef %clips, i32 noundef %num_clips) #0 align 64 {
entry:
  %norect = alloca %struct.drm_clip_rect, align 8
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %norect) #10
  %2 = getelementptr inbounds %struct.drm_clip_rect, ptr %norect, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_clip_rect, ptr %norect, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_clip_rect, ptr %norect, i32 0, i32 3
  %5 = ptrtoint ptr %norect to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %norect, align 8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx) #10
  %6 = call ptr @memset(ptr %ctx, i32 255, i32 84)
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %8, i32 0, i32 24
  %9 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_features.i.i.i, align 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %10, 16
  %and2.i.i.i = and i32 %and.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %lor.rhs.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.rhs.i:                                        ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 27
  %13 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %lor.rhs.i.if.then_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i.if.then_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %16, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.if.then_crit_edge, label %drm_drv_uses_atomic_modeset.exit.if.end_crit_edge

drm_drv_uses_atomic_modeset.exit.if.end_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

drm_drv_uses_atomic_modeset.exit.if.then_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %drm_drv_uses_atomic_modeset.exit.if.then_crit_edge, %lor.rhs.i.if.then_crit_edge
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %drm_drv_uses_atomic_modeset.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx, i32 noundef 1) #10
  br label %modeset_lock_retry

modeset_lock_retry:                               ; preds = %if.then29.modeset_lock_retry_crit_edge, %if.end
  %17 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fb, align 8
  %call4 = call i32 @drm_modeset_lock_all_ctx(ptr noundef %18, ptr noundef nonnull %ctx) #10
  %19 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call4, label %modeset_lock_retry.if.end34_crit_edge [
    i32 0, label %if.end6
    i32 -35, label %if.then29
  ]

modeset_lock_retry.if.end34_crit_edge:            ; preds = %modeset_lock_retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.end6:                                          ; preds = %modeset_lock_retry
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 15
  %20 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %obj, align 4
  %shadow = getelementptr inbounds %struct.qxl_bo, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shadow, align 8
  %tobool10.not = icmp eq ptr %23, null
  %. = select i1 %tobool10.not, ptr %21, ptr %23
  %cond.in.in.in = getelementptr inbounds %struct.qxl_bo, ptr %., i32 0, i32 8
  %24 = ptrtoint ptr %cond.in.in.in to i32
  call void @__asan_load1_noabort(i32 %24)
  %cond.in.in = load i8, ptr %cond.in.in.in, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cond.in.in)
  %tobool17.not = icmp sgt i8 %cond.in.in, -1
  br i1 %tobool17.not, label %if.end6.if.end34_crit_edge, label %if.end20

if.end6.if.end34_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.end20:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_clips)
  %tobool21.not = icmp eq i32 %num_clips, 0
  br i1 %tobool21.not, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %2, align 2
  %26 = ptrtoint ptr %norect to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %norect, align 8
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 9
  %27 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width, align 8
  %conv = trunc i32 %28 to i16
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv, ptr %3, align 4
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 10
  %30 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height, align 4
  %conv23 = trunc i32 %31 to i16
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv23, ptr %4, align 2
  br label %if.end27

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool24.not, i32 1, i32 2
  %not.tobool24.not = xor i1 %tobool24.not, true
  %div59 = zext i1 %not.tobool24.not to i32
  %spec.select60 = lshr i32 %num_clips, %div59
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then22
  %inc.1 = phi i32 [ 1, %if.then22 ], [ %spec.select, %if.else ]
  %num_clips.addr.1 = phi i32 [ 1, %if.then22 ], [ %spec.select60, %if.else ]
  %clips.addr.1 = phi ptr [ %norect, %if.then22 ], [ %clips, %if.else ]
  call void @qxl_draw_dirty_fb(ptr noundef %1, ptr noundef %fb, ptr noundef %21, i32 noundef %flags, i32 noundef %color, ptr noundef %clips.addr.1, i32 noundef %num_clips.addr.1, i32 noundef %inc.1, i32 noundef 0) #10
  br label %if.end34

if.then29:                                        ; preds = %modeset_lock_retry
  %call30 = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx) #10
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.modeset_lock_retry_crit_edge, label %if.then29.if.end34_crit_edge

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then29.modeset_lock_retry_crit_edge:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %modeset_lock_retry

if.end34:                                         ; preds = %if.then29.if.end34_crit_edge, %if.end27, %if.end6.if.end34_crit_edge, %modeset_lock_retry.if.end34_crit_edge
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx) #10
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx) #10
  %33 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fb, align 8
  %driver.i.i.i61 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %driver.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver.i.i.i61, align 4
  %driver_features.i.i.i62 = getelementptr inbounds %struct.drm_driver, ptr %36, i32 0, i32 24
  %37 = ptrtoint ptr %driver_features.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %driver_features.i.i.i62, align 4
  %driver_features1.i.i.i63 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 10
  %39 = ptrtoint ptr %driver_features1.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %driver_features1.i.i.i63, align 4
  %and.i.i.i64 = and i32 %38, 16
  %and2.i.i.i65 = and i32 %and.i.i.i64, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i65)
  %cmp.i.i.not.i66 = icmp eq i32 %and2.i.i.i65, 0
  br i1 %cmp.i.i.not.i66, label %lor.rhs.i69, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

lor.rhs.i69:                                      ; preds = %if.end34
  %funcs.i67 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 30, i32 27
  %41 = ptrtoint ptr %funcs.i67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %funcs.i67, align 4
  %tobool.not.i68 = icmp eq ptr %42, null
  br i1 %tobool.not.i68, label %lor.rhs.i69.if.then37_crit_edge, label %drm_drv_uses_atomic_modeset.exit73

lor.rhs.i69.if.then37_crit_edge:                  ; preds = %lor.rhs.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

drm_drv_uses_atomic_modeset.exit73:               ; preds = %lor.rhs.i69
  %atomic_commit.i70 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %atomic_commit.i70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %atomic_commit.i70, align 4
  %cmp.i71.not = icmp eq ptr %44, null
  br i1 %cmp.i71.not, label %drm_drv_uses_atomic_modeset.exit73.if.then37_crit_edge, label %drm_drv_uses_atomic_modeset.exit73.if.end41_crit_edge

drm_drv_uses_atomic_modeset.exit73.if.end41_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

drm_drv_uses_atomic_modeset.exit73.if.then37_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

if.then37:                                        ; preds = %drm_drv_uses_atomic_modeset.exit73.if.then37_crit_edge, %lor.rhs.i69.if.then37_crit_edge
  %mode_config39 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 30
  call void @mutex_unlock(ptr noundef %mode_config39) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %drm_drv_uses_atomic_modeset.exit73.if.end41_crit_edge, %if.end34.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %norect) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_draw_dirty_fb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_primary_helper_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_plane_prepare_fb(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %new_state) #0 align 64 {
entry:
  %cursor_bo.addr.i = alloca ptr, align 4
  %cursor_bo.i = alloca ptr, align 4
  %cursor_map.i = alloca %struct.dma_buf_map, align 8
  %user_map.i = alloca %struct.dma_buf_map, align 8
  %cursor.i = alloca %struct.qxl_cursor, align 8
  %surf.i = alloca %struct.qxl_surface, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 2
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %obj2 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %obj2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %obj2, align 4
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %is_dumb = getelementptr inbounds %struct.qxl_bo, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %is_dumb to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %is_dumb, align 4
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end8thread-pre-split_crit_edge, label %if.then7

land.lhs.true.if.end8thread-pre-split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8thread-pre-split

if.then7:                                         ; preds = %land.lhs.true
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 1
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  %index = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %surf.i) #10
  %14 = getelementptr inbounds %struct.qxl_surface, ptr %surf.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.qxl_surface, ptr %surf.i, i32 0, i32 2
  %16 = getelementptr inbounds %struct.qxl_surface, ptr %surf.i, i32 0, i32 3
  %monitors_config.i.i = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %monitors_config.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %monitors_config.i.i, align 8
  %max_allowed.i.i = getelementptr inbounds %struct.qxl_monitors_config, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %max_allowed.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %max_allowed.i.i, align 1
  %conv.i.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i.i)
  %cmp.not.i.i = icmp slt i32 %13, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then7.qxl_update_dumb_head.exit.i_crit_edge

if.then7.qxl_update_dumb_head.exit.i_crit_edge:   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_update_dumb_head.exit.i

if.end.i.i:                                       ; preds = %if.then7
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %width4.i.i = getelementptr inbounds %struct.qxl_bo, ptr %5, i32 0, i32 12, i32 1
  %21 = ptrtoint ptr %width4.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %width4.i.i, align 1
  %height6.i.i = getelementptr inbounds %struct.qxl_bo, ptr %5, i32 0, i32 12, i32 2
  %23 = ptrtoint ptr %height6.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %height6.i.i, align 1
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %width.0.i.i = phi i32 [ %22, %if.then3.i.i ], [ 0, %if.end.i.i.if.end7.i.i_crit_edge ]
  %height.0.i.i = phi i32 [ %24, %if.then3.i.i ], [ 0, %if.end.i.i.if.end7.i.i_crit_edge ]
  %dumb_heads.i.i = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 23
  %25 = ptrtoint ptr %dumb_heads.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dumb_heads.i.i, align 8
  %width8.i.i = getelementptr %struct.qxl_head, ptr %26, i32 %13, i32 2
  %27 = ptrtoint ptr %width8.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %width8.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %width.0.i.i)
  %cmp9.i.i = icmp eq i32 %28, %width.0.i.i
  br i1 %cmp9.i.i, label %land.lhs.true11.i.i, label %if.end7.i.i.if.end18.i.i_crit_edge

if.end7.i.i.if.end18.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i.i

land.lhs.true11.i.i:                              ; preds = %if.end7.i.i
  %height14.i.i = getelementptr %struct.qxl_head, ptr %26, i32 %13, i32 3
  %29 = ptrtoint ptr %height14.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %height14.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %height.0.i.i)
  %cmp15.i.i = icmp eq i32 %30, %height.0.i.i
  br i1 %cmp15.i.i, label %land.lhs.true11.i.i.qxl_update_dumb_head.exit.i_crit_edge, label %land.lhs.true11.i.i.if.end18.i.i_crit_edge

land.lhs.true11.i.i.if.end18.i.i_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i.i

land.lhs.true11.i.i.qxl_update_dumb_head.exit.i_crit_edge: ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_update_dumb_head.exit.i

if.end18.i.i:                                     ; preds = %land.lhs.true11.i.i.if.end18.i.i_crit_edge, %if.end7.i.i.if.end18.i.i_crit_edge
  %height24.i.i = getelementptr %struct.qxl_head, ptr %26, i32 %13, i32 3
  %31 = ptrtoint ptr %height24.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %height24.i.i, align 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %13, i32 noundef %28, i32 noundef %32, i32 noundef %width.0.i.i, i32 noundef %height.0.i.i) #10
  %33 = ptrtoint ptr %dumb_heads.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dumb_heads.i.i, align 8
  %width27.i.i = getelementptr %struct.qxl_head, ptr %34, i32 %13, i32 2
  %35 = ptrtoint ptr %width27.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %width.0.i.i, ptr %width27.i.i, align 1
  %36 = load ptr, ptr %dumb_heads.i.i, align 8
  %height30.i.i = getelementptr %struct.qxl_head, ptr %36, i32 %13, i32 3
  %37 = ptrtoint ptr %height30.i.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %height.0.i.i, ptr %height30.i.i, align 1
  br label %qxl_update_dumb_head.exit.i

qxl_update_dumb_head.exit.i:                      ; preds = %if.end18.i.i, %land.lhs.true11.i.i.qxl_update_dumb_head.exit.i_crit_edge, %if.then7.qxl_update_dumb_head.exit.i_crit_edge
  %38 = call ptr @memset(ptr %surf.i, i32 0, i32 24)
  %39 = ptrtoint ptr %monitors_config.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %monitors_config.i.i, align 8
  %max_allowed64.i.i = getelementptr inbounds %struct.qxl_monitors_config, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %max_allowed64.i.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %max_allowed64.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp66.not.i.i = icmp eq i16 %42, 0
  br i1 %cmp66.not.i.i, label %qxl_update_dumb_head.exit.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

qxl_update_dumb_head.exit.i.for.end.i.i_crit_edge: ; preds = %qxl_update_dumb_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %qxl_update_dumb_head.exit.i
  %dumb_heads.i63.i = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 23
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.067.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %43 = ptrtoint ptr %dumb_heads.i63.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dumb_heads.i63.i, align 8
  %45 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %14, align 4
  %x.i.i = getelementptr %struct.qxl_head, ptr %44, i32 %i.067.i.i, i32 4
  %47 = ptrtoint ptr %x.i.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %x.i.i, align 1
  %width2.i.i = getelementptr %struct.qxl_head, ptr %44, i32 %i.067.i.i, i32 2
  %48 = ptrtoint ptr %width2.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %width2.i.i, align 1
  %50 = load i32, ptr %14, align 4
  %add.i.i = add i32 %50, %49
  store i32 %add.i.i, ptr %14, align 4
  %51 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %15, align 4
  %height4.i.i = getelementptr %struct.qxl_head, ptr %44, i32 %i.067.i.i, i32 3
  %53 = ptrtoint ptr %height4.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %height4.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp5.i.i = icmp ult i32 %52, %54
  br i1 %cmp5.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %15, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.067.i.i, 1
  %56 = ptrtoint ptr %monitors_config.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %monitors_config.i.i, align 8
  %max_allowed.i64.i = getelementptr inbounds %struct.qxl_monitors_config, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %max_allowed.i64.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %max_allowed.i64.i, align 1
  %conv.i65.i = zext i16 %59 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i65.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %qxl_update_dumb_head.exit.i.for.end.i.i_crit_edge
  %60 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %61)
  %cmp10.i.i = icmp ult i32 %61, 64
  br i1 %cmp10.i.i, label %if.then12.i.i, label %for.end.i.i.if.end14.i.i_crit_edge

for.end.i.i.if.end14.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i

if.then12.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 64, ptr %14, align 4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then12.i.i, %for.end.i.i.if.end14.i.i_crit_edge
  %63 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %64)
  %cmp16.i.i = icmp ult i32 %64, 64
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.end14.i.i.if.end20.i.i_crit_edge

if.end14.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i.i

if.then18.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 64, ptr %15, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then18.i.i, %if.end14.i.i.if.end20.i.i_crit_edge
  %66 = ptrtoint ptr %surf.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 32, ptr %surf.i, align 4
  %67 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %14, align 4
  %mul.i.i = shl i32 %68, 2
  %69 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul.i.i, ptr %16, align 4
  %dumb_shadow_bo.i.i = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 22
  %70 = ptrtoint ptr %dumb_shadow_bo.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dumb_shadow_bo.i.i, align 4
  %tobool.not.i66.i = icmp eq ptr %71, null
  br i1 %tobool.not.i66.i, label %if.end20.i.i.if.then35.i.i_crit_edge, label %lor.lhs.false.i.i

if.end20.i.i.if.then35.i.i_crit_edge:             ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35.i.i

lor.lhs.false.i.i:                                ; preds = %if.end20.i.i
  %width24.i.i = getelementptr inbounds %struct.qxl_bo, ptr %71, i32 0, i32 12, i32 1
  %72 = ptrtoint ptr %width24.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %width24.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %68)
  %cmp26.not.i.i = icmp eq i32 %73, %68
  br i1 %cmp26.not.i.i, label %lor.lhs.false28.i.i, label %lor.lhs.false.i.i.if.then35.i.i_crit_edge

lor.lhs.false.i.i.if.then35.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35.i.i

lor.lhs.false28.i.i:                              ; preds = %lor.lhs.false.i.i
  %height31.i.i = getelementptr inbounds %struct.qxl_bo, ptr %71, i32 0, i32 12, i32 2
  %74 = ptrtoint ptr %height31.i.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %height31.i.i, align 1
  %76 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp33.not.i.i = icmp eq i32 %75, %77
  br i1 %cmp33.not.i.i, label %lor.lhs.false28.i.i.qxl_calc_dumb_shadow.exit.i_crit_edge, label %lor.lhs.false28.i.i.if.then35.i.i_crit_edge

lor.lhs.false28.i.i.if.then35.i.i_crit_edge:      ; preds = %lor.lhs.false28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35.i.i

lor.lhs.false28.i.i.qxl_calc_dumb_shadow.exit.i_crit_edge: ; preds = %lor.lhs.false28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_calc_dumb_shadow.exit.i

if.then35.i.i:                                    ; preds = %lor.lhs.false28.i.i.if.then35.i.i_crit_edge, %lor.lhs.false.i.i.if.then35.i.i_crit_edge, %if.end20.i.i.if.then35.i.i_crit_edge
  %78 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %15, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %68, i32 noundef %79) #10
  br label %qxl_calc_dumb_shadow.exit.i

qxl_calc_dumb_shadow.exit.i:                      ; preds = %if.then35.i.i, %lor.lhs.false28.i.i.qxl_calc_dumb_shadow.exit.i_crit_edge
  %80 = ptrtoint ptr %dumb_shadow_bo.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dumb_shadow_bo.i.i, align 4
  %tobool.not.i = icmp eq ptr %81, null
  br i1 %tobool.not.i, label %qxl_calc_dumb_shadow.exit.i.if.end.i_crit_edge, label %lor.lhs.false.i

qxl_calc_dumb_shadow.exit.i.if.end.i_crit_edge:   ; preds = %qxl_calc_dumb_shadow.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %qxl_calc_dumb_shadow.exit.i
  %width.i = getelementptr inbounds %struct.qxl_bo, ptr %81, i32 0, i32 12, i32 1
  %82 = ptrtoint ptr %width.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %width.i, align 1
  %84 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp.not.i = icmp eq i32 %83, %85
  br i1 %cmp.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.if.then11.i_crit_edge

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %height.i = getelementptr inbounds %struct.qxl_bo, ptr %81, i32 0, i32 12, i32 2
  %86 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %height.i, align 1
  %88 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp8.not.i = icmp eq i32 %87, %89
  br i1 %cmp8.not.i, label %lor.lhs.false4.i.if.end18.i_crit_edge, label %lor.lhs.false4.i.if.then11.i_crit_edge

lor.lhs.false4.i.if.then11.i_crit_edge:           ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i

lor.lhs.false4.i.if.end18.i_crit_edge:            ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then11.i:                                      ; preds = %lor.lhs.false4.i.if.then11.i_crit_edge, %lor.lhs.false.i.if.then11.i_crit_edge
  %call.i = tail call i32 @qxl_bo_unpin(ptr noundef nonnull %81) #10
  %90 = ptrtoint ptr %dumb_shadow_bo.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dumb_shadow_bo.i.i, align 4
  %tobool.not.i67.i = icmp eq ptr %91, null
  br i1 %tobool.not.i67.i, label %if.then11.i.drm_gem_object_put.exit.i_crit_edge, label %if.then.i68.i

if.then11.i.drm_gem_object_put.exit.i_crit_edge:  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit.i

if.then.i68.i:                                    ; preds = %if.then11.i
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %91, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr nonnull %91, i32 1, i32 3, i32 1) #10
  %92 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %91, ptr nonnull %91, i32 1, ptr nonnull elementtype(i32) %91) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i68.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %91, i32 noundef 3) #10
  br label %drm_gem_object_put.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then.i68.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @drm_gem_object_free(ptr noundef nonnull %91) #10
  br label %drm_gem_object_put.exit.i

drm_gem_object_put.exit.i:                        ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge, %if.then11.i.drm_gem_object_put.exit.i_crit_edge
  %93 = ptrtoint ptr %dumb_shadow_bo.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %dumb_shadow_bo.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %drm_gem_object_put.exit.i, %qxl_calc_dumb_shadow.exit.i.if.end.i_crit_edge
  %94 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %15, align 4
  %96 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %16, align 4
  %mul.i = mul i32 %97, %95
  %call17.i = call i32 @qxl_bo_create(ptr noundef %1, i32 noundef %mul.i, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %surf.i, ptr noundef %dumb_shadow_bo.i.i) #10
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i, %lor.lhs.false4.i.if.end18.i_crit_edge
  %shadow.i = getelementptr inbounds %struct.qxl_bo, ptr %5, i32 0, i32 10
  %98 = ptrtoint ptr %shadow.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %shadow.i, align 8
  %100 = ptrtoint ptr %dumb_shadow_bo.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dumb_shadow_bo.i.i, align 4
  %cmp20.not.i = icmp eq ptr %99, %101
  br i1 %cmp20.not.i, label %if.end18.i.qxl_prepare_shadow.exit_crit_edge, label %if.then21.i

if.end18.i.qxl_prepare_shadow.exit_crit_edge:     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_prepare_shadow.exit

if.then21.i:                                      ; preds = %if.end18.i
  %tobool23.not.i = icmp eq ptr %99, null
  br i1 %tobool23.not.i, label %if.then21.i.if.end31.i_crit_edge, label %if.then24.i

if.then21.i.if.end31.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then24.i:                                      ; preds = %if.then21.i
  %call26.i = call i32 @qxl_bo_unpin(ptr noundef nonnull %99) #10
  %102 = ptrtoint ptr %shadow.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %shadow.i, align 8
  %tobool.not.i70.i = icmp eq ptr %103, null
  br i1 %tobool.not.i70.i, label %if.then24.i.drm_gem_object_put.exit80.i_crit_edge, label %if.then.i74.i

if.then24.i.drm_gem_object_put.exit80.i_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit80.i

if.then.i74.i:                                    ; preds = %if.then24.i
  %call.i.i.i.i.i.i.i.i71.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %103, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  call void @llvm.prefetch.p0(ptr nonnull %103, i32 1, i32 3, i32 1) #10
  %104 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %103, ptr nonnull %103, i32 1, ptr nonnull elementtype(i32) %103) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i.i.i72.i = extractvalue { i32, i32, i32 } %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i72.i)
  %cmp.i.i.i.i.i.i73.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i72.i, 1
  br i1 %cmp.i.i.i.i.i.i73.i, label %if.then.i.i.i78.i, label %if.end5.i.i.i.i.i.i76.i

if.end5.i.i.i.i.i.i76.i:                          ; preds = %if.then.i74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i72.i)
  %.not.i.i.i.i.i.i75.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i72.i, 0
  br i1 %.not.i.i.i.i.i.i75.i, label %if.end5.i.i.i.i.i.i76.i.drm_gem_object_put.exit80.i_crit_edge, label %if.then10.i.i.i.i.i.i77.i, !prof !94

if.end5.i.i.i.i.i.i76.i.drm_gem_object_put.exit80.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit80.i

if.then10.i.i.i.i.i.i77.i:                        ; preds = %if.end5.i.i.i.i.i.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %103, i32 noundef 3) #10
  br label %drm_gem_object_put.exit80.i

if.then.i.i.i78.i:                                ; preds = %if.then.i74.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @drm_gem_object_free(ptr noundef nonnull %103) #10
  br label %drm_gem_object_put.exit80.i

drm_gem_object_put.exit80.i:                      ; preds = %if.then.i.i.i78.i, %if.then10.i.i.i.i.i.i77.i, %if.end5.i.i.i.i.i.i76.i.drm_gem_object_put.exit80.i_crit_edge, %if.then24.i.drm_gem_object_put.exit80.i_crit_edge
  %105 = ptrtoint ptr %shadow.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %shadow.i, align 8
  br label %if.end31.i

if.end31.i:                                       ; preds = %drm_gem_object_put.exit80.i, %if.then21.i.if.end31.i_crit_edge
  %106 = ptrtoint ptr %dumb_shadow_bo.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dumb_shadow_bo.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %107, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %107, i32 1, i32 3, i32 1) #10
  %108 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %107, ptr %107, i32 1, ptr elementtype(i32) %107) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %108, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end31.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !91

if.end31.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end31.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %109 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %109)
  %.not.i.i.i.i.i.i = icmp sgt i32 %109, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.drm_gem_object_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !94

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.drm_gem_object_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end31.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end31.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %107, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %drm_gem_object_get.exit.i

drm_gem_object_get.exit.i:                        ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.drm_gem_object_get.exit.i_crit_edge
  %110 = ptrtoint ptr %dumb_shadow_bo.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dumb_shadow_bo.i.i, align 4
  %112 = ptrtoint ptr %shadow.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %shadow.i, align 8
  %call38.i = call i32 @qxl_bo_pin(ptr noundef %111) #10
  br label %qxl_prepare_shadow.exit

qxl_prepare_shadow.exit:                          ; preds = %drm_gem_object_get.exit.i, %if.end18.i.qxl_prepare_shadow.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %surf.i) #10
  br label %if.end8thread-pre-split

if.end8thread-pre-split:                          ; preds = %qxl_prepare_shadow.exit, %land.lhs.true.if.end8thread-pre-split_crit_edge
  %113 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pr = load i32, ptr %type, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end8thread-pre-split, %if.end.if.end8_crit_edge
  %114 = phi i32 [ %.pr, %if.end8thread-pre-split ], [ %7, %if.end.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %114)
  %cmp10 = icmp eq i32 %114, 2
  br i1 %cmp10, label %land.lhs.true11, label %if.end8.if.end23_crit_edge

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true11:                                  ; preds = %if.end8
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %115 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %state, align 4
  %fb12 = getelementptr inbounds %struct.drm_plane_state, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %fb12 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %fb12, align 4
  %119 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %fb, align 4
  %cmp14.not = icmp eq ptr %118, %120
  br i1 %cmp14.not, label %land.lhs.true11.if.end23_crit_edge, label %if.then15

land.lhs.true11.if.end23_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then15:                                        ; preds = %land.lhs.true11
  %crtc17 = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 1
  %121 = ptrtoint ptr %crtc17 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %crtc17, align 4
  %cursor_bo = getelementptr inbounds %struct.qxl_crtc, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cursor_bo, align 4
  %hot_x = getelementptr inbounds %struct.drm_framebuffer, ptr %120, i32 0, i32 12
  %125 = ptrtoint ptr %hot_x to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %hot_x, align 4
  %hot_y = getelementptr inbounds %struct.drm_framebuffer, ptr %120, i32 0, i32 13
  %127 = ptrtoint ptr %hot_y to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %hot_y, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cursor_bo.i) #10
  %129 = ptrtoint ptr %cursor_bo.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr inttoptr (i32 -1 to ptr), ptr %cursor_bo.i, align 4, !annotation !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cursor_map.i) #10
  %130 = ptrtoint ptr %cursor_map.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 -1, ptr %cursor_map.i, align 8, !annotation !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %user_map.i) #10
  %131 = ptrtoint ptr %user_map.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 -1, ptr %user_map.i, align 8, !annotation !90
  call void @llvm.lifetime.start.p0(i64 42, ptr nonnull %cursor.i) #10
  %tobool.not.i42 = icmp eq ptr %5, null
  br i1 %tobool.not.i42, label %if.then15.qxl_create_cursor.exit_crit_edge, label %if.end.i44

if.then15.qxl_create_cursor.exit_crit_edge:       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_create_cursor.exit

if.end.i44:                                       ; preds = %if.then15
  %call.i43 = call i32 @qxl_bo_create(ptr noundef %1, i32 noundef 16426, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef nonnull %cursor_bo.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool1.not.i = icmp eq i32 %call.i43, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i44.qxl_create_cursor.exit_crit_edge

if.end.i44.qxl_create_cursor.exit_crit_edge:      ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_create_cursor.exit

if.end3.i:                                        ; preds = %if.end.i44
  %132 = ptrtoint ptr %cursor_bo.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cursor_bo.i, align 4
  %call4.i = call i32 @qxl_bo_vmap(ptr noundef %133, ptr noundef nonnull %cursor_map.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.err_unref.i_crit_edge

if.end3.i.err_unref.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unref.i

if.end7.i:                                        ; preds = %if.end3.i
  %call8.i = call i32 @qxl_bo_vmap(ptr noundef nonnull %5, ptr noundef nonnull %user_map.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %err_unmap.i

if.end11.i:                                       ; preds = %if.end7.i
  %134 = ptrtoint ptr %cursor.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 0, ptr %cursor.i, align 8
  %type.i = getelementptr inbounds %struct.qxl_cursor_header, ptr %cursor.i, i32 0, i32 1
  %135 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 0, ptr %type.i, align 8
  %width.i45 = getelementptr inbounds %struct.qxl_cursor_header, ptr %cursor.i, i32 0, i32 2
  %136 = ptrtoint ptr %width.i45 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 64, ptr %width.i45, align 2
  %height.i46 = getelementptr inbounds %struct.qxl_cursor_header, ptr %cursor.i, i32 0, i32 3
  %137 = ptrtoint ptr %height.i46 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 64, ptr %height.i46, align 4
  %conv.i = trunc i32 %126 to i16
  %hot_spot_x.i = getelementptr inbounds %struct.qxl_cursor_header, ptr %cursor.i, i32 0, i32 4
  %138 = ptrtoint ptr %hot_spot_x.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %conv.i, ptr %hot_spot_x.i, align 2
  %conv16.i = trunc i32 %128 to i16
  %hot_spot_y.i = getelementptr inbounds %struct.qxl_cursor_header, ptr %cursor.i, i32 0, i32 5
  %139 = ptrtoint ptr %hot_spot_y.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv16.i, ptr %hot_spot_y.i, align 8
  %data_size.i = getelementptr inbounds %struct.qxl_cursor, ptr %cursor.i, i32 0, i32 1
  %140 = ptrtoint ptr %data_size.i to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 16384, ptr %data_size.i, align 2
  %chunk.i = getelementptr inbounds %struct.qxl_cursor, ptr %cursor.i, i32 0, i32 2
  %prev_chunk.i = getelementptr inbounds %struct.qxl_cursor, ptr %cursor.i, i32 0, i32 2, i32 1
  %141 = call ptr @memset(ptr %prev_chunk.i, i32 0, i32 16)
  %142 = ptrtoint ptr %chunk.i to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 16384, ptr %chunk.i, align 2
  %is_iomem.i = getelementptr inbounds %struct.dma_buf_map, ptr %cursor_map.i, i32 0, i32 1
  %143 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %is_iomem.i, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool21.not.i = icmp eq i8 %144, 0
  %145 = ptrtoint ptr %cursor_map.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cursor_map.i, align 8
  br i1 %tobool21.not.i, label %if.else.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @mmiocpy(ptr noundef %146, ptr noundef nonnull %cursor.i, i32 noundef 42) #10
  %147 = ptrtoint ptr %cursor_map.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cursor_map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %148, i32 42
  %149 = ptrtoint ptr %user_map.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %user_map.i, align 8
  call void @mmiocpy(ptr noundef %add.ptr.i, ptr noundef %150, i32 noundef 16384) #10
  br label %if.end24.i

if.else.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %151 = call ptr @memcpy(ptr %146, ptr %cursor.i, i32 42)
  %add.ptr23.i = getelementptr i8, ptr %146, i32 42
  %152 = ptrtoint ptr %user_map.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %user_map.i, align 8
  %154 = call ptr @memcpy(ptr %add.ptr23.i, ptr %153, i32 16384)
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else.i, %if.then22.i
  %call25.i = call i32 @qxl_bo_vunmap(ptr noundef nonnull %5) #10
  %155 = ptrtoint ptr %cursor_bo.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %cursor_bo.i, align 4
  %call26.i47 = call i32 @qxl_bo_vunmap(ptr noundef %156) #10
  %157 = ptrtoint ptr %cursor_bo.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cursor_bo.i, align 4
  br label %qxl_create_cursor.exit

err_unmap.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %cursor_bo.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cursor_bo.i, align 4
  %call27.i = call i32 @qxl_bo_vunmap(ptr noundef %160) #10
  br label %err_unref.i

err_unref.i:                                      ; preds = %err_unmap.i, %if.end3.i.err_unref.i_crit_edge
  %161 = ptrtoint ptr %cursor_bo.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cursor_bo.i, align 4
  %call28.i = call i32 @qxl_bo_unpin(ptr noundef %162) #10
  call void @qxl_bo_unref(ptr noundef nonnull %cursor_bo.i) #10
  br label %qxl_create_cursor.exit

qxl_create_cursor.exit:                           ; preds = %err_unref.i, %if.end24.i, %if.end.i44.qxl_create_cursor.exit_crit_edge, %if.then15.qxl_create_cursor.exit_crit_edge
  %retval.0.i = phi ptr [ %158, %if.end24.i ], [ null, %if.then15.qxl_create_cursor.exit_crit_edge ], [ null, %if.end.i44.qxl_create_cursor.exit_crit_edge ], [ null, %err_unref.i ]
  call void @llvm.lifetime.end.p0(i64 42, ptr nonnull %cursor.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %user_map.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cursor_map.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cursor_bo.i) #10
  %163 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %retval.0.i, ptr %cursor_bo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cursor_bo.addr.i)
  %164 = ptrtoint ptr %cursor_bo.addr.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %124, ptr %cursor_bo.addr.i, align 4
  %tobool.not.i48 = icmp eq ptr %124, null
  br i1 %tobool.not.i48, label %qxl_create_cursor.exit.qxl_free_cursor.exit_crit_edge, label %if.end.i50

qxl_create_cursor.exit.qxl_free_cursor.exit_crit_edge: ; preds = %qxl_create_cursor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_free_cursor.exit

if.end.i50:                                       ; preds = %qxl_create_cursor.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i49 = call i32 @qxl_bo_unpin(ptr noundef nonnull %124) #10
  call void @qxl_bo_unref(ptr noundef nonnull %cursor_bo.addr.i) #10
  br label %qxl_free_cursor.exit

qxl_free_cursor.exit:                             ; preds = %if.end.i50, %qxl_create_cursor.exit.qxl_free_cursor.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cursor_bo.addr.i)
  br label %if.end23

if.end23:                                         ; preds = %qxl_free_cursor.exit, %land.lhs.true11.if.end23_crit_edge, %if.end8.if.end23_crit_edge
  %call24 = call i32 @qxl_bo_pin(ptr noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end23 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_plane_cleanup_fb(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %old_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 2
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %obj2 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %obj2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %obj2, align 4
  %call = tail call i32 @qxl_bo_unpin(ptr noundef %3) #10
  %4 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb, align 4
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %fb4 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fb4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb4, align 4
  %cmp.not = icmp eq ptr %5, %9
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %shadow = getelementptr inbounds %struct.qxl_bo, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shadow, align 8
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  %call8 = tail call i32 @qxl_bo_unpin(ptr noundef nonnull %11) #10
  %12 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shadow, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then6.drm_gem_object_put.exit_crit_edge, label %if.then.i

if.then6.drm_gem_object_put.exit_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %if.then6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %13, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr nonnull %13, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @drm_gem_object_free(ptr noundef nonnull %13) #10
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %if.then6.drm_gem_object_put.exit_crit_edge
  %15 = ptrtoint ptr %shadow to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %shadow, align 8
  br label %cleanup

cleanup:                                          ; preds = %drm_gem_object_put.exit, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qxl_primary_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %6 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plane, align 8
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %obj, align 4
  %width.i = getelementptr inbounds %struct.qxl_bo, ptr %13, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %width.i, align 1
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 4) #10
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %height.i = getelementptr inbounds %struct.qxl_bo, ptr %13, i32 0, i32 12, i32 2
  %18 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %height.i, align 1
  %20 = extractvalue { i32, i1 } %16, 0
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 %19) #10
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %if.end.i.i.cleanup_crit_edge, label %if.end15.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = extractvalue { i32, i1 } %21, 0
  %vram_size.i.i = getelementptr inbounds %struct.qxl_device, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %vram_size.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vram_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp16.i.i = icmp ugt i32 %23, %25
  %..i.i = select i1 %cmp16.i.i, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end15.i.i, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ %..i.i, %if.end15.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_primary_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %norect = alloca %struct.drm_clip_rect, align 2
  call void @__sanitizer_cov_trace_pc() #12
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
  %6 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plane, align 8
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %obj, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %norect) #10
  %12 = getelementptr inbounds %struct.drm_clip_rect, ptr %norect, i32 0, i32 1
  %13 = getelementptr inbounds %struct.drm_clip_rect, ptr %norect, i32 0, i32 2
  %14 = getelementptr inbounds %struct.drm_clip_rect, ptr %norect, i32 0, i32 3
  %15 = ptrtoint ptr %norect to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %norect, align 2
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %12, align 2
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 9
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width, align 8
  %conv = trunc i32 %18 to i16
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %13, align 2
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 10
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  %conv6 = trunc i32 %21 to i16
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv6, ptr %14, align 2
  %shadow = getelementptr inbounds %struct.qxl_bo, ptr %11, i32 0, i32 10
  %23 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shadow, align 8
  %tobool.not = icmp eq ptr %24, null
  %. = select i1 %tobool.not, ptr %11, ptr %24
  %is_primary = getelementptr inbounds %struct.qxl_bo, ptr %., i32 0, i32 8
  %25 = ptrtoint ptr %is_primary to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %is_primary, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool8.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %primary_bo = getelementptr inbounds %struct.qxl_device, ptr %7, i32 0, i32 21
  %26 = ptrtoint ptr %primary_bo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %primary_bo, align 8
  %tobool9.not = icmp eq ptr %27, null
  br i1 %tobool9.not, label %if.then.if.end_crit_edge, label %if.then10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qxl_io_destroy_primary(ptr noundef %7) #10
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  tail call void @qxl_io_create_primary(ptr noundef %7, ptr noundef %.) #10
  %state11 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %28 = ptrtoint ptr %state11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state11, align 4
  tail call fastcc void @qxl_primary_apply_cursor(ptr noundef %7, ptr noundef %29)
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry.if.end13_crit_edge
  %is_dumb = getelementptr inbounds %struct.qxl_bo, ptr %11, i32 0, i32 8
  %30 = ptrtoint ptr %is_dumb to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load14 = load i8, ptr %is_dumb, align 4
  %31 = and i8 %bf.load14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool17.not = icmp eq i8 %31, 0
  br i1 %tobool17.not, label %if.end13.if.end20_crit_edge, label %if.then18

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %dumb_heads = getelementptr inbounds %struct.qxl_device, ptr %7, i32 0, i32 23
  %32 = ptrtoint ptr %dumb_heads to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dumb_heads, align 8
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %34 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %crtc, align 4
  %index = getelementptr inbounds %struct.drm_crtc, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index, align 4
  %x = getelementptr %struct.qxl_head, ptr %33, i32 %37, i32 4
  %38 = ptrtoint ptr %x to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %x, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end13.if.end20_crit_edge
  %dumb_shadow_offset.0 = phi i32 [ %39, %if.then18 ], [ 0, %if.end13.if.end20_crit_edge ]
  %40 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fb, align 4
  call void @qxl_draw_dirty_fb(ptr noundef %7, ptr noundef %41, ptr noundef %11, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %norect, i32 noundef 1, i32 noundef 1, i32 noundef %dumb_shadow_offset.0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %norect) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_primary_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %entry
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %obj, align 4
  %shadow = getelementptr inbounds %struct.qxl_bo, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shadow, align 8
  %tobool5.not = icmp eq ptr %13, null
  %spec.select = select i1 %tobool5.not, ptr %11, ptr %13
  %is_primary = getelementptr inbounds %struct.qxl_bo, ptr %spec.select, i32 0, i32 8
  %14 = ptrtoint ptr %is_primary to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %is_primary, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool8.not, label %if.then.if.end11_crit_edge, label %if.then9

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qxl_io_destroy_primary(ptr noundef %7) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_bo_pin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_bo_create(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_io_destroy_primary(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_io_create_primary(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qxl_primary_apply_cursor(ptr noundef %qdev, ptr nocapture noundef readonly %plane_state) unnamed_addr #0 align 64 {
entry:
  %release = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 2
  %0 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb1, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 1
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %release) #10
  %4 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %release, align 4, !annotation !90
  %cursor_bo = getelementptr inbounds %struct.qxl_crtc, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cursor_bo, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @qxl_alloc_release_reserved(ptr noundef %qdev, i32 noundef 150, i32 noundef 2, ptr noundef nonnull %release, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %release, align 4
  %9 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cursor_bo, align 4
  %call6 = call i32 @qxl_release_list_add(ptr noundef %8, ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.out_free_release_crit_edge

if.end4.out_free_release_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_release

if.end9:                                          ; preds = %if.end4
  %11 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %release, align 4
  %call10 = call i32 @qxl_release_reserve_list(ptr noundef %12, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_free_release_crit_edge

if.end9.out_free_release_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_release

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %release, align 4
  %call14 = call ptr @qxl_release_map(ptr noundef %qdev, ptr noundef %14) #10
  %type = getelementptr inbounds %struct.qxl_cursor_cmd, ptr %call14, i32 0, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %type, align 1
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 4
  %16 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_x, align 4
  %hot_x = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %hot_x to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hot_x, align 4
  %add = add i32 %19, %17
  %conv = trunc i32 %add to i16
  %u = getelementptr inbounds %struct.qxl_cursor_cmd, ptr %call14, i32 0, i32 2
  %20 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %conv, ptr %u, align 1
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 5
  %21 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %crtc_y, align 4
  %hot_y = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 13
  %23 = ptrtoint ptr %hot_y to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hot_y, align 8
  %add15 = add i32 %24, %22
  %conv16 = trunc i32 %add15 to i16
  %y = getelementptr inbounds %struct.qxl_cursor_cmd, ptr %call14, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %y to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %conv16, ptr %y, align 1
  %26 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cursor_bo, align 4
  %resource.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i = icmp eq i32 %31, 2
  %main_slot.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 24
  %surfaces_slot.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 25
  %cond.i = select i1 %cmp.i, ptr %main_slot.i, ptr %surfaces_slot.i
  %high_bits.i = getelementptr inbounds %struct.qxl_memslot, ptr %cond.i, i32 0, i32 5
  %32 = ptrtoint ptr %high_bits.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %high_bits.i, align 8
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %29, align 4
  %shl.i = shl i32 %35, 12
  %conv.i = zext i32 %shl.i to i64
  %or.i = or i64 %33, %conv.i
  %shape = getelementptr inbounds %struct.qxl_cursor_cmd, ptr %call14, i32 0, i32 2, i32 1, i32 1
  %36 = ptrtoint ptr %shape to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %or.i, ptr %shape, align 1
  %visible = getelementptr inbounds %struct.qxl_cursor_cmd, ptr %call14, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %visible to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %visible, align 1
  %38 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %release, align 4
  call void @qxl_release_unmap(ptr noundef %qdev, ptr noundef %39, ptr noundef %call14) #10
  %40 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %release, align 4
  call void @qxl_release_fence_buffer_objects(ptr noundef %41) #10
  %42 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %release, align 4
  %call23 = call i32 @qxl_push_cursor_ring_release(ptr noundef %qdev, ptr noundef %43, i32 noundef 3, i1 noundef zeroext false) #10
  br label %cleanup

out_free_release:                                 ; preds = %if.end9.out_free_release_crit_edge, %if.end4.out_free_release_crit_edge
  %44 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %release, align 4
  call void @qxl_release_free(ptr noundef %qdev, ptr noundef %45) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free_release, %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %release) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_alloc_release_reserved(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_release_list_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_release_reserve_list(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qxl_release_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_release_unmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_release_fence_buffer_objects(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_push_cursor_ring_release(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_release_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_cursor_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %release.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  %8 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plane, align 8
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb2, align 4
  %fb3 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb3, align 4
  %cmp.not = icmp eq ptr %11, %13
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @qxl_primary_apply_cursor(ptr noundef %9, ptr noundef %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %crtc.i = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %release.i) #10
  %16 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %release.i, align 4, !annotation !90
  %cursor_bo.i = getelementptr inbounds %struct.qxl_crtc, ptr %15, i32 0, i32 2
  %17 = ptrtoint ptr %cursor_bo.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cursor_bo.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.else.qxl_primary_move_cursor.exit_crit_edge, label %if.end.i

if.else.qxl_primary_move_cursor.exit_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_primary_move_cursor.exit

if.end.i:                                         ; preds = %if.else
  %call.i = call i32 @qxl_alloc_release_reserved(ptr noundef %9, i32 noundef 150, i32 noundef 2, ptr noundef nonnull %release.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.qxl_primary_move_cursor.exit_crit_edge

if.end.i.qxl_primary_move_cursor.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_primary_move_cursor.exit

if.end4.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %release.i, align 4
  %call5.i = call i32 @qxl_release_reserve_list(ptr noundef %20, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  %21 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %release.i, align 4
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @qxl_release_free(ptr noundef %9, ptr noundef %22) #10
  br label %qxl_primary_move_cursor.exit

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %call9.i = call ptr @qxl_release_map(ptr noundef %9, ptr noundef %22) #10
  %type.i = getelementptr inbounds %struct.qxl_cursor_cmd, ptr %call9.i, i32 0, i32 1
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %type.i, align 1
  %crtc_x.i = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 4
  %24 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crtc_x.i, align 4
  %hot_x.i = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 12
  %26 = ptrtoint ptr %hot_x.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hot_x.i, align 4
  %add.i = add i32 %27, %25
  %conv.i = trunc i32 %add.i to i16
  %u.i = getelementptr inbounds %struct.qxl_cursor_cmd, ptr %call9.i, i32 0, i32 2
  %28 = ptrtoint ptr %u.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %conv.i, ptr %u.i, align 1
  %crtc_y.i = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 5
  %29 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %crtc_y.i, align 4
  %hot_y.i = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 13
  %31 = ptrtoint ptr %hot_y.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hot_y.i, align 8
  %add10.i = add i32 %32, %30
  %conv11.i = trunc i32 %add10.i to i16
  %y.i = getelementptr inbounds %struct.qxl_cursor_cmd, ptr %call9.i, i32 0, i32 2, i32 0, i32 1
  %33 = ptrtoint ptr %y.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %conv11.i, ptr %y.i, align 1
  %34 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %release.i, align 4
  call void @qxl_release_unmap(ptr noundef %9, ptr noundef %35, ptr noundef %call9.i) #10
  %36 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %release.i, align 4
  call void @qxl_release_fence_buffer_objects(ptr noundef %37) #10
  %38 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %release.i, align 4
  %call13.i = call i32 @qxl_push_cursor_ring_release(ptr noundef %9, ptr noundef %39, i32 noundef 3, i1 noundef zeroext false) #10
  br label %qxl_primary_move_cursor.exit

qxl_primary_move_cursor.exit:                     ; preds = %if.end8.i, %if.then7.i, %if.end.i.qxl_primary_move_cursor.exit_crit_edge, %if.else.qxl_primary_move_cursor.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %release.i) #10
  br label %if.end

if.end:                                           ; preds = %qxl_primary_move_cursor.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_cursor_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %cursor_bo.addr.i = alloca ptr, align 4
  %release = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %release) #10
  %8 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %release, align 4, !annotation !90
  %call1 = call i32 @qxl_alloc_release_reserved(ptr noundef %7, i32 noundef 150, i32 noundef 2, ptr noundef nonnull %release, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %release, align 4
  %call2 = call i32 @qxl_release_reserve_list(ptr noundef %10, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %11 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %release, align 4
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @qxl_release_free(ptr noundef %7, ptr noundef %12) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @qxl_release_map(ptr noundef %7, ptr noundef %12) #10
  %type = getelementptr inbounds %struct.qxl_cursor_cmd, ptr %call6, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %type, align 1
  %14 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %release, align 4
  call void @qxl_release_unmap(ptr noundef %7, ptr noundef %15, ptr noundef %call6) #10
  %16 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %release, align 4
  call void @qxl_release_fence_buffer_objects(ptr noundef %17) #10
  %18 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %release, align 4
  %call7 = call i32 @qxl_push_cursor_ring_release(ptr noundef %7, ptr noundef %19, i32 noundef 3, i1 noundef zeroext false) #10
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crtc, align 4
  %cursor_bo = getelementptr inbounds %struct.qxl_crtc, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cursor_bo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cursor_bo.addr.i)
  %24 = ptrtoint ptr %cursor_bo.addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %cursor_bo.addr.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end5.qxl_free_cursor.exit_crit_edge, label %if.end.i

if.end5.qxl_free_cursor.exit_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_free_cursor.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @qxl_bo_unpin(ptr noundef nonnull %23) #10
  call void @qxl_bo_unref(ptr noundef nonnull %cursor_bo.addr.i) #10
  br label %qxl_free_cursor.exit

qxl_free_cursor.exit:                             ; preds = %if.end.i, %if.end5.qxl_free_cursor.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cursor_bo.addr.i)
  %25 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %cursor_bo, align 4
  br label %cleanup

cleanup:                                          ; preds = %qxl_free_cursor.exit, %if.then4, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %release) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_crtc_destroy(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cursor_bo = getelementptr inbounds %struct.qxl_crtc, ptr %crtc, i32 0, i32 2
  tail call void @qxl_bo_unref(ptr noundef %cursor_bo) #10
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #10
  tail call void @kfree(ptr noundef %crtc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_crtc_atomic_flush(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @qxl_crtc_update_monitors_config(ptr noundef %crtc, ptr noundef nonnull @.str.10)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_crtc_atomic_enable(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @qxl_crtc_update_monitors_config(ptr noundef %crtc, ptr noundef nonnull @.str.18)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_crtc_atomic_disable(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @qxl_crtc_update_monitors_config(ptr noundef %crtc, ptr noundef nonnull @.str.19)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qxl_crtc_update_monitors_config(ptr nocapture noundef readonly %crtc, ptr noundef %reason) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.qxl_crtc, ptr %crtc, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 8
  %primary_bo = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %primary_bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_bo, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef %reason) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %monitors_config = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %monitors_config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %monitors_config, align 8
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qxl_num_crtc to i32))
  %8 = load i32, ptr @qxl_num_crtc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp.not = icmp sgt i32 %8, %3
  br i1 %cmp.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %7, align 1
  %conv = zext i16 %10 to i32
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %active, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  %hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hdisplay, align 4
  %vdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 6
  %17 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vdisplay, align 2
  %x = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 14
  %19 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %x, align 4
  %y = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 15
  %21 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %y, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp19.not = icmp slt i32 %3, %conv
  br i1 %cmp19.not, label %if.then10.if.end26_crit_edge, label %if.then21

if.then10.if.end26_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then21:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %23 = trunc i32 %3 to i16
  %conv23 = add i16 %23, 1
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %conv23, ptr %7, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.then10.if.end26_crit_edge
  %25 = ptrtoint ptr %primary_bo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %primary_bo, align 8
  %dumb_shadow_bo = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 22
  %27 = ptrtoint ptr %dumb_shadow_bo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dumb_shadow_bo, align 4
  %cmp28 = icmp eq ptr %26, %28
  br i1 %cmp28, label %if.then30, label %if.end26.if.end55_crit_edge

if.end26.if.end55_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %dumb_heads = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 23
  %29 = ptrtoint ptr %dumb_heads to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dumb_heads, align 8
  %x31 = getelementptr %struct.qxl_head, ptr %30, i32 %3, i32 4
  %31 = ptrtoint ptr %x31 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %x31, align 1
  %add33 = add i32 %32, %20
  br label %if.end55

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp35 = icmp sgt i32 %3, 0
  br i1 %cmp35, label %if.then37, label %if.else53

if.then37:                                        ; preds = %if.else
  %add45 = add nuw nsw i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add45, i32 %conv)
  %cmp46 = icmp eq i32 %add45, %conv
  br i1 %cmp46, label %if.then48, label %if.then37.if.end55_crit_edge

if.then37.if.end55_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then48:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %conv49 = trunc i32 %3 to i16
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %conv49, ptr %7, align 1
  br label %if.end55

if.else53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef %reason) #10
  br label %cleanup

if.end55:                                         ; preds = %if.then48, %if.then37.if.end55_crit_edge, %if.then30, %if.end26.if.end55_crit_edge
  %head.sroa.24.0 = phi i32 [ 0, %if.then48 ], [ 0, %if.then37.if.end55_crit_edge ], [ %22, %if.then30 ], [ %22, %if.end26.if.end55_crit_edge ]
  %head.sroa.17.1 = phi i32 [ 0, %if.then48 ], [ 0, %if.then37.if.end55_crit_edge ], [ %add33, %if.then30 ], [ %20, %if.end26.if.end55_crit_edge ]
  %head.sroa.12.0.shrunk = phi i16 [ 0, %if.then48 ], [ 0, %if.then37.if.end55_crit_edge ], [ %18, %if.then30 ], [ %18, %if.end26.if.end55_crit_edge ]
  %head.sroa.7.0.shrunk = phi i16 [ 0, %if.then48 ], [ 0, %if.then37.if.end55_crit_edge ], [ %16, %if.then30 ], [ %16, %if.end26.if.end55_crit_edge ]
  %head.sroa.7.0 = zext i16 %head.sroa.7.0.shrunk to i32
  %head.sroa.12.0 = zext i16 %head.sroa.12.0.shrunk to i32
  %34 = ptrtoint ptr %monitors_config to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %monitors_config, align 8
  %width59 = getelementptr %struct.qxl_monitors_config, ptr %35, i32 0, i32 2, i32 %3, i32 2
  %36 = ptrtoint ptr %width59 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %width59, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %head.sroa.7.0)
  %cmp60 = icmp eq i32 %37, %head.sroa.7.0
  br i1 %cmp60, label %land.lhs.true, label %if.end55.if.end92_crit_edge

if.end55.if.end92_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

land.lhs.true:                                    ; preds = %if.end55
  %height66 = getelementptr %struct.qxl_monitors_config, ptr %35, i32 0, i32 2, i32 %3, i32 3
  %38 = ptrtoint ptr %height66 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %height66, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %head.sroa.12.0)
  %cmp67 = icmp eq i32 %39, %head.sroa.12.0
  br i1 %cmp67, label %land.lhs.true69, label %land.lhs.true.if.end92_crit_edge

land.lhs.true.if.end92_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

land.lhs.true69:                                  ; preds = %land.lhs.true
  %x74 = getelementptr %struct.qxl_monitors_config, ptr %35, i32 0, i32 2, i32 %3, i32 4
  %40 = ptrtoint ptr %x74 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %x74, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %head.sroa.17.1, i32 %41)
  %cmp75 = icmp eq i32 %head.sroa.17.1, %41
  br i1 %cmp75, label %land.lhs.true77, label %land.lhs.true69.if.end92_crit_edge

land.lhs.true69.if.end92_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

land.lhs.true77:                                  ; preds = %land.lhs.true69
  %y82 = getelementptr %struct.qxl_monitors_config, ptr %35, i32 0, i32 2, i32 %3, i32 5
  %42 = ptrtoint ptr %y82 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %y82, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %head.sroa.24.0, i32 %43)
  %cmp83 = icmp eq i32 %head.sroa.24.0, %43
  br i1 %cmp83, label %land.lhs.true85, label %land.lhs.true77.if.end92_crit_edge

land.lhs.true77.if.end92_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

land.lhs.true85:                                  ; preds = %land.lhs.true77
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %35, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %45)
  %cmp89 = icmp eq i16 %10, %45
  br i1 %cmp89, label %land.lhs.true85.cleanup_crit_edge, label %land.lhs.true85.if.end92_crit_edge

land.lhs.true85.if.end92_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

land.lhs.true85.cleanup_crit_edge:                ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end92:                                         ; preds = %land.lhs.true85.if.end92_crit_edge, %land.lhs.true77.if.end92_crit_edge, %land.lhs.true69.if.end92_crit_edge, %land.lhs.true.if.end92_crit_edge, %if.end55.if.end92_crit_edge
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %state, align 4
  %active98 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %active98 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %active98, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool99.not = icmp eq i8 %49, 0
  %cond = select i1 %tobool99.not, ptr @.str.15, ptr @.str.14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef %head.sroa.7.0, i32 noundef %head.sroa.12.0, i32 noundef %head.sroa.17.1, i32 noundef %head.sroa.24.0, ptr noundef nonnull %cond, ptr noundef %reason) #10
  %50 = ptrtoint ptr %monitors_config to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %monitors_config, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %51, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %53)
  %cmp104.not = icmp eq i16 %10, %53
  br i1 %cmp104.not, label %if.end92.if.end110_crit_edge, label %if.then106

if.end92.if.end110_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then106:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  %conv103 = zext i16 %53 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qxl_num_crtc to i32))
  %54 = load i32, ptr @qxl_num_crtc, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %conv103, i32 noundef %54) #10
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %if.end92.if.end110_crit_edge
  %55 = ptrtoint ptr %monitors_config to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %monitors_config, align 8
  %arrayidx113 = getelementptr %struct.qxl_monitors_config, ptr %56, i32 0, i32 2, i32 %3
  %57 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %3, ptr %arrayidx113, align 1
  %head.sroa.5.0.arrayidx113.sroa_idx = getelementptr inbounds i8, ptr %arrayidx113, i32 4
  %58 = ptrtoint ptr %head.sroa.5.0.arrayidx113.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 0, ptr %head.sroa.5.0.arrayidx113.sroa_idx, align 1
  %head.sroa.7.0.arrayidx113.sroa_idx = getelementptr inbounds i8, ptr %arrayidx113, i32 8
  %59 = ptrtoint ptr %head.sroa.7.0.arrayidx113.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %head.sroa.7.0, ptr %head.sroa.7.0.arrayidx113.sroa_idx, align 1
  %head.sroa.12.0.arrayidx113.sroa_idx = getelementptr inbounds i8, ptr %arrayidx113, i32 12
  %60 = ptrtoint ptr %head.sroa.12.0.arrayidx113.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %head.sroa.12.0, ptr %head.sroa.12.0.arrayidx113.sroa_idx, align 1
  %head.sroa.17.0.arrayidx113.sroa_idx = getelementptr inbounds i8, ptr %arrayidx113, i32 16
  %61 = ptrtoint ptr %head.sroa.17.0.arrayidx113.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %head.sroa.17.1, ptr %head.sroa.17.0.arrayidx113.sroa_idx, align 1
  %head.sroa.24.0.arrayidx113.sroa_idx = getelementptr inbounds i8, ptr %arrayidx113, i32 20
  %62 = ptrtoint ptr %head.sroa.24.0.arrayidx113.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %head.sroa.24.0, ptr %head.sroa.24.0.arrayidx113.sroa_idx, align 1
  %head.sroa.29.0.arrayidx113.sroa_idx = getelementptr inbounds i8, ptr %arrayidx113, i32 24
  %63 = ptrtoint ptr %head.sroa.29.0.arrayidx113.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 0, ptr %head.sroa.29.0.arrayidx113.sroa_idx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qxl_num_crtc to i32))
  %64 = load i32, ptr @qxl_num_crtc, align 4
  %conv114 = trunc i32 %64 to i16
  %65 = load ptr, ptr %monitors_config, align 8
  %max_allowed = getelementptr inbounds %struct.qxl_monitors_config, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %max_allowed to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %conv114, ptr %max_allowed, align 1
  %ram_header.i = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 20
  %67 = ptrtoint ptr %ram_header.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ram_header.i, align 4
  %monitors_config.i = getelementptr inbounds %struct.qxl_ram_header, ptr %68, i32 0, i32 15
  %69 = ptrtoint ptr %monitors_config.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %70 = load i64, ptr %monitors_config.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %70)
  %tobool.not.i = icmp eq i64 %70, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !91

do.body4.i:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/qxl/qxl_display.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

do.end9.i:                                        ; preds = %if.end110
  %71 = ptrtoint ptr %monitors_config to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %monitors_config, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %72, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp.i = icmp eq i16 %74, 0
  br i1 %cmp.i, label %do.end9.i.cleanup_crit_edge, label %for.cond.preheader.i

do.end9.i.cleanup_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i:                             ; preds = %do.end9.i
  %conv16.i = zext i16 %74 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.054.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %y.i = getelementptr %struct.qxl_monitors_config, ptr %72, i32 0, i32 2, i32 %i.054.i, i32 5
  %75 = ptrtoint ptr %y.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %y.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %76)
  %cmp20.i = icmp ugt i32 %76, 8192
  br i1 %cmp20.i, label %for.body.i.if.then30.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then30.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %x.i = getelementptr %struct.qxl_monitors_config, ptr %72, i32 0, i32 2, i32 %i.054.i, i32 4
  %77 = ptrtoint ptr %x.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %x.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %78)
  %cmp22.i = icmp ugt i32 %78, 8192
  br i1 %cmp22.i, label %lor.lhs.false.i.if.then30.i_crit_edge, label %lor.lhs.false24.i

lor.lhs.false.i.if.then30.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

lor.lhs.false24.i:                                ; preds = %lor.lhs.false.i
  %width.i = getelementptr %struct.qxl_monitors_config, ptr %72, i32 0, i32 2, i32 %i.054.i, i32 2
  %79 = ptrtoint ptr %width.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %width.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %80)
  %cmp25.i = icmp ugt i32 %80, 8192
  br i1 %cmp25.i, label %lor.lhs.false24.i.if.then30.i_crit_edge, label %lor.lhs.false27.i

lor.lhs.false24.i.if.then30.i_crit_edge:          ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

lor.lhs.false27.i:                                ; preds = %lor.lhs.false24.i
  %height.i = getelementptr %struct.qxl_monitors_config, ptr %72, i32 0, i32 2, i32 %i.054.i, i32 3
  %81 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %height.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %82)
  %cmp28.i = icmp ugt i32 %82, 8192
  br i1 %cmp28.i, label %lor.lhs.false27.i.if.then30.i_crit_edge, label %for.inc.i

lor.lhs.false27.i.if.then30.i_crit_edge:          ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

if.then30.i:                                      ; preds = %lor.lhs.false27.i.if.then30.i_crit_edge, %lor.lhs.false24.i.if.then30.i_crit_edge, %lor.lhs.false.i.if.then30.i_crit_edge, %for.body.i.if.then30.i_crit_edge
  %width31.i = getelementptr %struct.qxl_monitors_config, ptr %72, i32 0, i32 2, i32 %i.054.i, i32 2
  %83 = ptrtoint ptr %width31.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %width31.i, align 1
  %height32.i = getelementptr %struct.qxl_monitors_config, ptr %72, i32 0, i32 2, i32 %i.054.i, i32 3
  %85 = ptrtoint ptr %height32.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %height32.i, align 1
  %x33.i = getelementptr %struct.qxl_monitors_config, ptr %72, i32 0, i32 2, i32 %i.054.i, i32 4
  %87 = ptrtoint ptr %x33.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %x33.i, align 1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %i.054.i, i32 noundef %84, i32 noundef %86, i32 noundef %88, i32 noundef %76) #10
  br label %cleanup

for.inc.i:                                        ; preds = %lor.lhs.false27.i
  %inc.i = add nuw nsw i32 %i.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv16.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qxl_io_monitors_config(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %if.then30.i, %do.end9.i.cleanup_crit_edge, %land.lhs.true85.cleanup_crit_edge, %if.else53, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_io_monitors_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_conn_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %connector, i32 -8
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %client_monitors_config = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %client_monitors_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client_monitors_config, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %conv1629 = zext i1 %cmp to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, i32 noundef %5, i32 noundef %conv1629) #10
  br i1 %cmp, label %if.then._crit_edge, label %if.then._crit_edge30

if.then._crit_edge30:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %19

if.then._crit_edge:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %18

if.else:                                          ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %3, align 1
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp7 = icmp slt i32 %9, %conv
  br i1 %cmp7, label %land.rhs, label %if.else.if.end13.thread_crit_edge

if.else.if.end13.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.thread

land.rhs:                                         ; preds = %if.else
  %width.i = getelementptr %struct.qxl_monitors_config, ptr %3, i32 0, i32 2, i32 %9, i32 2
  %10 = ptrtoint ptr %width.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %width.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %land.rhs.if.end13.thread_crit_edge, label %if.end13

land.rhs.if.end13.thread_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.thread

if.end13.thread:                                  ; preds = %land.rhs.if.end13.thread_crit_edge, %if.else.if.end13.thread_crit_edge
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, i32 noundef %13, i32 noundef 0) #10
  br label %19

if.end13:                                         ; preds = %land.rhs
  %height.i = getelementptr %struct.qxl_monitors_config, ptr %3, i32 0, i32 2, i32 %9, i32 3
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %height.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.i = icmp ne i32 %15, 0
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 8
  %conv16 = zext i1 %tobool1.i to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, i32 noundef %17, i32 noundef %conv16) #10
  br i1 %tobool1.i, label %if.end13._crit_edge, label %if.end13._crit_edge31

if.end13._crit_edge31:                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %19

if.end13._crit_edge:                              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %18

18:                                               ; preds = %if.end13._crit_edge, %if.then._crit_edge
  br label %19

19:                                               ; preds = %18, %if.end13._crit_edge31, %if.end13.thread, %if.then._crit_edge30
  %20 = phi i32 [ 1, %18 ], [ 2, %if.end13._crit_edge31 ], [ 2, %if.end13.thread ], [ 2, %if.then._crit_edge30 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_conn_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %connector, i32 -8
  tail call void @drm_connector_unregister(ptr noundef %connector) #10
  tail call void @drm_connector_cleanup(ptr noundef %connector) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_conn_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %client_monitors_config = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %client_monitors_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client_monitors_config, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr4 = getelementptr i8, ptr %connector, i32 -8
  %4 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr4, align 8
  %width = getelementptr %struct.qxl_monitors_config, ptr %3, i32 0, i32 2, i32 %5, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %width, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool6.not, i32 1024, i32 %7
  %height = getelementptr %struct.qxl_monitors_config, ptr %3, i32 0, i32 2, i32 %5, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %height, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  %pheight.0 = select i1 %tobool9.not, i32 768, i32 %9
  br label %if.end13

if.end13:                                         ; preds = %if.then, %entry.if.end13_crit_edge
  %pwidth.1 = phi i32 [ %spec.select, %if.then ], [ 1024, %entry.if.end13_crit_edge ]
  %pheight.1 = phi i32 [ %pheight.0, %if.then ], [ 768, %entry.if.end13_crit_edge ]
  %call = tail call i32 @drm_add_modes_noedid(ptr noundef %connector, i32 noundef 8192, i32 noundef 8192) #10
  %10 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %connector, align 8
  %vram_size.i.i.i = getelementptr inbounds %struct.qxl_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %vram_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vram_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1382400, i32 %13)
  %cmp16.i.i.i = icmp ult i32 %13, 1382400
  br i1 %cmp16.i.i.i, label %if.end13.if.end15.i.i.1.i_crit_edge, label %if.end.i.i

if.end13.if.end15.i.i.1.i_crit_edge:              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.1.i

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = tail call ptr @drm_cvt_mode(ptr noundef %11, i32 noundef 720, i32 noundef 480, i32 noundef 60, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %hdisplay.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %call2.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 720, ptr %hdisplay.i.i, align 4
  %vdisplay.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %call2.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 480, ptr %vdisplay.i.i, align 2
  tail call void @drm_mode_set_name(ptr noundef %call2.i.i) #10
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef %call2.i.i) #10
  br label %if.end15.i.i.1.i

if.end15.i.i.1.i:                                 ; preds = %if.end.i.i, %if.end13.if.end15.i.i.1.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end.i.i ], [ 0, %if.end13.if.end15.i.i.1.i_crit_edge ]
  %16 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %connector, align 8
  %vram_size.i.i.1.i = getelementptr inbounds %struct.qxl_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %vram_size.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vram_size.i.i.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3538944, i32 %19)
  %cmp16.i.i.1.i = icmp ult i32 %19, 3538944
  br i1 %cmp16.i.i.1.i, label %if.end15.i.i.1.i.if.end15.i.i.2.i_crit_edge, label %if.end.i.1.i

if.end15.i.i.1.i.if.end15.i.i.2.i_crit_edge:      ; preds = %if.end15.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.2.i

if.end.i.1.i:                                     ; preds = %if.end15.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.1.i = tail call ptr @drm_cvt_mode(ptr noundef %17, i32 noundef 1152, i32 noundef 768, i32 noundef 60, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %hdisplay.i.1.i = getelementptr inbounds %struct.drm_display_mode, ptr %call2.i.1.i, i32 0, i32 1
  %20 = ptrtoint ptr %hdisplay.i.1.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1152, ptr %hdisplay.i.1.i, align 4
  %vdisplay.i.1.i = getelementptr inbounds %struct.drm_display_mode, ptr %call2.i.1.i, i32 0, i32 6
  %21 = ptrtoint ptr %vdisplay.i.1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 768, ptr %vdisplay.i.1.i, align 2
  tail call void @drm_mode_set_name(ptr noundef %call2.i.1.i) #10
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef %call2.i.1.i) #10
  br label %if.end15.i.i.2.i

if.end15.i.i.2.i:                                 ; preds = %if.end.i.1.i, %if.end15.i.i.1.i.if.end15.i.i.2.i_crit_edge
  %retval.0.i.1.i = phi i32 [ 1, %if.end.i.1.i ], [ 0, %if.end15.i.i.1.i.if.end15.i.i.2.i_crit_edge ]
  %22 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %connector, align 8
  %vram_size.i.i.2.i = getelementptr inbounds %struct.qxl_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %vram_size.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vram_size.i.i.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4372480, i32 %25)
  %cmp16.i.i.2.i = icmp ult i32 %25, 4372480
  br i1 %cmp16.i.i.2.i, label %if.end15.i.i.2.i.qxl_add_extra_modes.exit_crit_edge, label %if.end.i.2.i

if.end15.i.i.2.i.qxl_add_extra_modes.exit_crit_edge: ; preds = %if.end15.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_add_extra_modes.exit

if.end.i.2.i:                                     ; preds = %if.end15.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.2.i = tail call ptr @drm_cvt_mode(ptr noundef %23, i32 noundef 1280, i32 noundef 854, i32 noundef 60, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %hdisplay.i.2.i = getelementptr inbounds %struct.drm_display_mode, ptr %call2.i.2.i, i32 0, i32 1
  %26 = ptrtoint ptr %hdisplay.i.2.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1280, ptr %hdisplay.i.2.i, align 4
  %vdisplay.i.2.i = getelementptr inbounds %struct.drm_display_mode, ptr %call2.i.2.i, i32 0, i32 6
  %27 = ptrtoint ptr %vdisplay.i.2.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 854, ptr %vdisplay.i.2.i, align 2
  tail call void @drm_mode_set_name(ptr noundef %call2.i.2.i) #10
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef %call2.i.2.i) #10
  br label %qxl_add_extra_modes.exit

qxl_add_extra_modes.exit:                         ; preds = %if.end.i.2.i, %if.end15.i.i.2.i.qxl_add_extra_modes.exit_crit_edge
  %retval.0.i.2.i = phi i32 [ 1, %if.end.i.2.i ], [ 0, %if.end15.i.i.2.i.qxl_add_extra_modes.exit_crit_edge ]
  %28 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %connector, align 8
  %add.ptr4.i = getelementptr i8, ptr %connector, i32 -8
  %30 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr4.i, align 8
  %monitors_config.i = getelementptr inbounds %struct.qxl_device, ptr %29, i32 0, i32 10
  %32 = ptrtoint ptr %monitors_config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %monitors_config.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %qxl_add_extra_modes.exit.qxl_add_monitors_config_modes.exit_crit_edge, label %if.end.i

qxl_add_extra_modes.exit.qxl_add_monitors_config_modes.exit_crit_edge: ; preds = %qxl_add_extra_modes.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_add_monitors_config_modes.exit

if.end.i:                                         ; preds = %qxl_add_extra_modes.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qxl_num_crtc to i32))
  %34 = load i32, ptr @qxl_num_crtc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %34)
  %cmp.not.i = icmp slt i32 %31, %34
  br i1 %cmp.not.i, label %if.end6.i, label %if.end.i.qxl_add_monitors_config_modes.exit_crit_edge

if.end.i.qxl_add_monitors_config_modes.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_add_monitors_config_modes.exit

if.end6.i:                                        ; preds = %if.end.i
  %client_monitors_config.i = getelementptr inbounds %struct.qxl_device, ptr %29, i32 0, i32 11
  %35 = ptrtoint ptr %client_monitors_config.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client_monitors_config.i, align 4
  %tobool7.not.i = icmp eq ptr %36, null
  br i1 %tobool7.not.i, label %if.end6.i.qxl_add_monitors_config_modes.exit_crit_edge, label %if.end9.i

if.end6.i.qxl_add_monitors_config_modes.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_add_monitors_config_modes.exit

if.end9.i:                                        ; preds = %if.end6.i
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %36, align 1
  %conv.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv.i)
  %cmp11.not.i = icmp slt i32 %31, %conv.i
  br i1 %cmp11.not.i, label %if.end14.i, label %if.end9.i.qxl_add_monitors_config_modes.exit_crit_edge

if.end9.i.qxl_add_monitors_config_modes.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_add_monitors_config_modes.exit

if.end14.i:                                       ; preds = %if.end9.i
  %width.i = getelementptr %struct.qxl_monitors_config, ptr %36, i32 0, i32 2, i32 %31, i32 2
  %39 = ptrtoint ptr %width.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %width.i, align 1
  %height.i = getelementptr %struct.qxl_monitors_config, ptr %36, i32 0, i32 2, i32 %31, i32 3
  %41 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %height.i, align 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef %31, i32 noundef %40, i32 noundef %42) #10
  %43 = ptrtoint ptr %width.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %width.i, align 1
  %45 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %height.i, align 1
  %47 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %connector, align 8
  %49 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %44, i32 4) #10
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %if.end14.i.qxl_add_monitors_config_modes.exit_crit_edge, label %if.end.i.i.i

if.end14.i.qxl_add_monitors_config_modes.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_add_monitors_config_modes.exit

if.end.i.i.i:                                     ; preds = %if.end14.i
  %51 = extractvalue { i32, i1 } %49, 0
  %52 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 %46) #10
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %if.end.i.i.i.qxl_add_monitors_config_modes.exit_crit_edge, label %if.end15.i.i.i

if.end.i.i.i.qxl_add_monitors_config_modes.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_add_monitors_config_modes.exit

if.end15.i.i.i:                                   ; preds = %if.end.i.i.i
  %54 = extractvalue { i32, i1 } %52, 0
  %vram_size.i.i.i32 = getelementptr inbounds %struct.qxl_device, ptr %48, i32 0, i32 2
  %55 = ptrtoint ptr %vram_size.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vram_size.i.i.i32, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp16.i.i.i33 = icmp ugt i32 %54, %56
  br i1 %cmp16.i.i.i33, label %if.end15.i.i.i.qxl_add_monitors_config_modes.exit_crit_edge, label %if.end.i.i37

if.end15.i.i.i.qxl_add_monitors_config_modes.exit_crit_edge: ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_add_monitors_config_modes.exit

if.end.i.i37:                                     ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i34 = tail call ptr @drm_cvt_mode(ptr noundef %48, i32 noundef %44, i32 noundef %46, i32 noundef 60, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %type.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %call2.i.i34, i32 0, i32 28
  %57 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %type.i.i, align 2
  %59 = or i8 %58, 8
  store i8 %59, ptr %type.i.i, align 2
  %conv6.i.i = trunc i32 %44 to i16
  %hdisplay.i.i35 = getelementptr inbounds %struct.drm_display_mode, ptr %call2.i.i34, i32 0, i32 1
  %60 = ptrtoint ptr %hdisplay.i.i35 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv6.i.i, ptr %hdisplay.i.i35, align 4
  %conv7.i.i = trunc i32 %46 to i16
  %vdisplay.i.i36 = getelementptr inbounds %struct.drm_display_mode, ptr %call2.i.i34, i32 0, i32 6
  %61 = ptrtoint ptr %vdisplay.i.i36 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv7.i.i, ptr %vdisplay.i.i36, align 2
  tail call void @drm_mode_set_name(ptr noundef %call2.i.i34) #10
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef %call2.i.i34) #10
  br label %qxl_add_monitors_config_modes.exit

qxl_add_monitors_config_modes.exit:               ; preds = %if.end.i.i37, %if.end15.i.i.i.qxl_add_monitors_config_modes.exit_crit_edge, %if.end.i.i.i.qxl_add_monitors_config_modes.exit_crit_edge, %if.end14.i.qxl_add_monitors_config_modes.exit_crit_edge, %if.end9.i.qxl_add_monitors_config_modes.exit_crit_edge, %if.end6.i.qxl_add_monitors_config_modes.exit_crit_edge, %if.end.i.qxl_add_monitors_config_modes.exit_crit_edge, %qxl_add_extra_modes.exit.qxl_add_monitors_config_modes.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %qxl_add_extra_modes.exit.qxl_add_monitors_config_modes.exit_crit_edge ], [ 0, %if.end.i.qxl_add_monitors_config_modes.exit_crit_edge ], [ 0, %if.end6.i.qxl_add_monitors_config_modes.exit_crit_edge ], [ 0, %if.end9.i.qxl_add_monitors_config_modes.exit_crit_edge ], [ 1, %if.end.i.i37 ], [ 0, %if.end14.i.qxl_add_monitors_config_modes.exit_crit_edge ], [ 0, %if.end.i.i.i.qxl_add_monitors_config_modes.exit_crit_edge ], [ 0, %if.end15.i.i.i.qxl_add_monitors_config_modes.exit_crit_edge ]
  %add.1.i = add i32 %retval.0.i.i, %call
  %add.2.i = add i32 %add.1.i, %retval.0.i.1.i
  %add15 = add i32 %add.2.i, %retval.0.i.2.i
  %add17 = add i32 %add15, %retval.0.i
  tail call void @drm_set_preferred_mode(ptr noundef %connector, i32 noundef %pwidth.1, i32 noundef %pheight.1) #10
  ret i32 %add17
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qxl_conn_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %0 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %1 to i32
  %2 = shl nuw nsw i32 %conv, 2
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %3 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vdisplay, align 2
  %conv1 = zext i16 %4 to i32
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 %conv1) #10
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %entry.qxl_check_mode.exit.thread_crit_edge, label %if.end15.i

entry.qxl_check_mode.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_check_mode.exit.thread

if.end15.i:                                       ; preds = %entry
  %7 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %connector, align 8
  %9 = extractvalue { i32, i1 } %5, 0
  %vram_size.i = getelementptr inbounds %struct.qxl_device, ptr %8, i32 0, i32 2
  %10 = ptrtoint ptr %vram_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp16.i = icmp ugt i32 %9, %11
  br i1 %cmp16.i, label %if.end15.i.qxl_check_mode.exit.thread_crit_edge, label %if.end15.i.qxl_check_mode.exit_crit_edge

if.end15.i.qxl_check_mode.exit_crit_edge:         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_check_mode.exit

if.end15.i.qxl_check_mode.exit.thread_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_check_mode.exit.thread

qxl_check_mode.exit.thread:                       ; preds = %if.end15.i.qxl_check_mode.exit.thread_crit_edge, %entry.qxl_check_mode.exit.thread_crit_edge
  br label %qxl_check_mode.exit

qxl_check_mode.exit:                              ; preds = %qxl_check_mode.exit.thread, %if.end15.i.qxl_check_mode.exit_crit_edge
  %12 = phi i32 [ -2, %qxl_check_mode.exit.thread ], [ 0, %if.end15.i.qxl_check_mode.exit_crit_edge ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qxl_best_encoder(ptr noundef readnone %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.27) #10
  %enc = getelementptr i8, ptr %connector, i32 1040
  ret ptr %enc
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_modes_noedid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_set_preferred_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_cvt_mode(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !55, !57, !59, !61, !63, !64, !65, !66, !67, !68, !69, !71, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 177, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 181, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 185, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 1194, i32 3}
!8 = !{ptr @__func__.qxl_create_monitors_object, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 85, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 89, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 138, i32 3}
!15 = !{ptr @qxl_mode_funcs, !16, !"qxl_mode_funcs", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 1176, i32 43}
!17 = !{ptr @qxl_fb_funcs, !18, !"qxl_fb_funcs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 442, i32 43}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 1114, i32 8}
!21 = !{ptr @qxl_primary_plane_funcs, !22, !"qxl_primary_plane_funcs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 916, i32 37}
!23 = !{ptr @qxl_primary_plane_formats, !24, !"qxl_primary_plane_formats", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 903, i32 23}
!25 = !{ptr @primary_helper_funcs, !26, !"primary_helper_funcs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 908, i32 44}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 757, i32 2}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 789, i32 3}
!31 = distinct !{null, !32, !"size", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 567, i32 19}
!33 = !{ptr @qxl_cursor_plane_funcs, !34, !"qxl_cursor_plane_funcs", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 894, i32 37}
!35 = !{ptr @qxl_cursor_plane_formats, !36, !"qxl_cursor_plane_formats", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 883, i32 23}
!37 = !{ptr @qxl_cursor_helper_funcs, !38, !"qxl_cursor_helper_funcs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 887, i32 44}
!39 = !{ptr @qxl_crtc_funcs, !40, !"qxl_crtc_funcs", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 391, i32 36}
!41 = !{ptr @qxl_crtc_helper_funcs, !42, !"qxl_crtc_helper_funcs", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 460, i32 43}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 379, i32 40}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 322, i32 3}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 352, i32 3}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 363, i32 2}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 367, i32 3}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 303, i32 4}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 451, i32 40}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 457, i32 40}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 1141, i32 3}
!63 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @qdev_output_init._entry, !62, !"_entry", i1 false, i1 false}
!68 = !{ptr @qdev_output_init._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @qxl_connector_funcs, !70, !"qxl_connector_funcs", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 1098, i32 41}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 1082, i32 2}
!73 = !{ptr @qxl_connector_helper_funcs, !74, !"qxl_connector_helper_funcs", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 1058, i32 48}
!75 = distinct !{null, !76, !"extra_modes", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 271, i32 3}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 263, i32 2}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/qxl/qxl_display.c", i32 1054, i32 2}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 2148317885}
!93 = !{i64 2148232349, i64 2148232381, i64 2148232410, i64 2148232444, i64 2148232475, i64 2148232498}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 2149596603}
!96 = !{i64 2148229884, i64 2148229916, i64 2148229945, i64 2148229979, i64 2148230010, i64 2148230033}
!97 = !{i8 0, i8 2}
!98 = !{i64 2156989285, i64 2156989783, i64 2156989322, i64 2156989378, i64 2156989412, i64 2156989436, i64 2156989477, i64 2156989498, i64 2156989526, i64 2156989560}
