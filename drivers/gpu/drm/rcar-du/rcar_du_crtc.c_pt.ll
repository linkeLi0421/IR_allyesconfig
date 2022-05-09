; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rcar-du/rcar_du_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_du_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rcar_du_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i32, i32, i8, i32, i8, ptr, %struct.wait_queue_head, %struct.spinlock, %struct.wait_queue_head, i32, ptr, ptr, ptr, i32, ptr, i32, %struct.drm_writeback_connector }
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
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
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
%struct.rcar_du_device = type { ptr, ptr, ptr, %struct.drm_device, [4 x %struct.rcar_du_crtc], i32, [2 x %struct.rcar_du_group], [4 x ptr], [4 x %struct.rcar_du_vsp], [2 x ptr], %struct.anon.93, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.rcar_du_group = type { ptr, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, [9 x %struct.rcar_du_plane], i8 }
%struct.rcar_du_plane = type { %struct.drm_plane, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rcar_du_vsp = type { i32, ptr, ptr, ptr, i32 }
%struct.anon.93 = type { ptr }
%struct.rcar_du_device_info = type { i32, i32, i32, i32, [9 x %struct.rcar_du_output_routing], i32, i32, i32, i32 }
%struct.rcar_du_output_routing = type { i32, i32 }
%struct.rcar_du_vsp_plane = type { %struct.drm_plane, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.rcar_du_crtc_state = type { %struct.drm_crtc_state, %struct.vsp1_du_crc_config, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.vsp1_du_crc_config = type { i32, i32 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.rcar_cmm_config = type { %struct.anon.97 }
%struct.anon.97 = type { ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.rcar_du_plane_state = type { %struct.drm_plane_state, ptr, i32, i32, i32 }
%struct.rcar_du_format_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dpll_info = type { i32, i32, i32, i32 }

@rcar_du_crtc_create.mmio_offsets = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 196608, i32 262144, i32 458752], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"du.%u\00", [26 x i8] zeroinitializer }, align 32
@rcar_du_crtc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no clock for DU channel %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rcar_du_crtc_create\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/rcar-du/rcar_du_crtc.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_du_crtc_create._entry_ptr = internal global ptr @rcar_du_crtc_create._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dclkin.%u\00", [22 x i8] zeroinitializer }, align 32
@rcar_du_crtc_create._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't get dclkin.%u: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rcar_du_crtc_create._entry_ptr.9 = internal global ptr @rcar_du_crtc_create._entry.7, section ".printk_index", align 4
@rcar_du_crtc_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rcrtc->flip_wait\00", [46 x i8] zeroinitializer }, align 32
@rcar_du_crtc_create.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rcrtc->vblank_wait\00", [44 x i8] zeroinitializer }, align 32
@rcar_du_crtc_create.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rcrtc->vblank_lock\00", [44 x i8] zeroinitializer }, align 32
@crtc_funcs_gen2 = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @rcar_du_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @rcar_du_crtc_atomic_duplicate_state, ptr @rcar_du_crtc_atomic_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_du_crtc_enable_vblank, ptr @rcar_du_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@crtc_funcs_gen3 = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @rcar_du_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @rcar_du_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @rcar_du_crtc_atomic_duplicate_state, ptr @rcar_du_crtc_atomic_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr @rcar_du_crtc_set_crc_source, ptr @rcar_du_crtc_verify_crc_source, ptr @rcar_du_crtc_get_crc_sources, ptr null, ptr null, ptr @rcar_du_crtc_enable_vblank, ptr @rcar_du_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @rcar_du_crtc_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_du_crtc_atomic_check, ptr @rcar_du_crtc_atomic_begin, ptr @rcar_du_crtc_atomic_flush, ptr @rcar_du_crtc_atomic_enable, ptr @rcar_du_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@rcar_du_crtc_create._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1298, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no IRQ for CRTC %u\0A\00", [44 x i8] zeroinitializer }, align 32
@rcar_du_crtc_create._entry_ptr.17 = internal global ptr @rcar_du_crtc_create._entry.15, section ".printk_index", align 4
@rcar_du_crtc_create._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register IRQ for CRTC %u\0A\00", [60 x i8] zeroinitializer }, align 32
@rcar_du_crtc_create._entry_ptr.20 = internal global ptr @rcar_du_crtc_create._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"plane\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unknown source %s\0A\00", [45 x i8] zeroinitializer }, align 32
@rcar_du_cmm_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 503, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid gamma lut size: %zu bytes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rcar_du_cmm_check\00", [46 x i8] zeroinitializer }, align 32
@rcar_du_cmm_check._entry_ptr = internal global ptr @rcar_du_cmm_check._entry, section ".printk_index", align 4
@rcar_du_r8a7795_es1 = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.32, ptr null, ptr @.str.33, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@rcar_du_crtc_set_display_timing.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rcar_du_drm\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rcar_du_crtc_set_display_timing\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mode clock %lu %s rate %lu\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpg\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ext\00", [28 x i8] zeroinitializer }, align 32
@rcar_du_crtc_set_display_timing.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.3, ptr @.str.31, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: ESCR 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.*\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7795\00", [24 x i8] zeroinitializer }, align 32
@rcar_du_dpll_divider.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcar_du_dpll_divider\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"output:%u, fdpll:%u, n:%u, m:%u, diff:%lu\0A\00", [53 x i8] zeroinitializer }, align 32
@rcar_du_crtc_disable_planes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 636, ptr @.str.38, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vertical blanking timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rcar_du_crtc_disable_planes\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rcar_du_crtc_disable_planes._entry_ptr = internal global ptr @rcar_du_crtc_disable_planes._entry, section ".printk_index", align 4
@rcar_du_crtc_wait_page_flip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 481, ptr @.str.38, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"page flip timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rcar_du_crtc_wait_page_flip\00", [36 x i8] zeroinitializer }, align 32
@rcar_du_crtc_wait_page_flip._entry_ptr = internal global ptr @rcar_du_crtc_wait_page_flip._entry, section ".printk_index", align 4
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"plane%u\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"mmio_offsets\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1205, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1223, i32 21 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1231, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1235, i32 20 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1247, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1251, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1252, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1253, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"crtc_funcs_gen2\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1131, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"crtc_funcs_gen3\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1142, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"crtc_helper_funcs\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 871, i32 43 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1298, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1305, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1028, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1031, i32 36 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1057, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 502, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c"rcar_du_r8a7795_es1\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 208, i32 42 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 283, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 291, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 209, i32 37 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 209, i32 14 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 162, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 636, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 481, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [42 x i8] c"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 906, i32 17 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @rcar_du_cmm_check._entry, ptr @rcar_du_cmm_check._entry_ptr, ptr @rcar_du_crtc_create._entry, ptr @rcar_du_crtc_create._entry.15, ptr @rcar_du_crtc_create._entry.18, ptr @rcar_du_crtc_create._entry.7, ptr @rcar_du_crtc_create._entry_ptr, ptr @rcar_du_crtc_create._entry_ptr.17, ptr @rcar_du_crtc_create._entry_ptr.20, ptr @rcar_du_crtc_create._entry_ptr.9, ptr @rcar_du_crtc_disable_planes._entry, ptr @rcar_du_crtc_disable_planes._entry_ptr, ptr @rcar_du_crtc_wait_page_flip._entry, ptr @rcar_du_crtc_wait_page_flip._entry_ptr, ptr @rcar_du_crtc_create.mmio_offsets, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @rcar_du_crtc_create.__key, ptr @.str.10, ptr @rcar_du_crtc_create.__key.11, ptr @.str.12, ptr @rcar_du_crtc_create.__key.13, ptr @.str.14, ptr @crtc_funcs_gen2, ptr @crtc_funcs_gen3, ptr @crtc_helper_funcs, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @rcar_du_r8a7795_es1, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_crtc_create.mmio_offsets to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_crtc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_crtc_create._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_crtc_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_crtc_create.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_crtc_create.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crtc_funcs_gen2 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crtc_funcs_gen3 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_crtc_create._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_crtc_create._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_cmm_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_r8a7795_es1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_crtc_disable_planes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_crtc_wait_page_flip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_du_crtc_dsysr_clr_set(ptr nocapture noundef %rcrtc, i32 noundef %clr, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dsysr = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 7
  %2 = ptrtoint ptr %dsysr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsysr, align 8
  %neg = xor i32 %clr, -1
  %and = and i32 %3, %neg
  %or = or i32 %and, %set
  store i32 %or, ptr %dsysr, align 8
  %mmio_offset = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 4
  %4 = ptrtoint ptr %mmio_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mmio_offset, align 4
  %mmio.i = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #12, !srcloc !95
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_du_crtc_finish_page_flip(ptr noundef %rcrtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rcrtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcrtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #12
  %event6 = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 9
  %2 = ptrtoint ptr %event6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event6, align 8
  store ptr null, ptr %event6, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call3) #12
  %cmp9 = icmp eq ptr %3, null
  br i1 %cmp9, label %entry.cleanup_crit_edge, label %do.body12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #12
  tail call void @drm_crtc_send_vblank_event(ptr noundef %rcrtc, ptr noundef nonnull %3) #12
  %flip_wait = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %flip_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call20) #12
  tail call void @drm_crtc_vblank_put(ptr noundef %rcrtc) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_du_crtc_create(ptr noundef %rgrp, i32 noundef %swindex, i32 noundef %hwindex) local_unnamed_addr #0 align 64 {
entry:
  %name.i = alloca [16 x i8], align 1
  %clk_name = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rgrp, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %arrayidx = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %clk_name) #12
  %info.i = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 1
  %4 = call ptr @memset(ptr %clk_name, i32 255, i32 9)
  %5 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info.i, align 4
  %features.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %features.i, align 4
  %and.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %clk_name, ptr noundef nonnull @.str, i32 noundef %hwindex)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %name.0 = phi ptr [ %clk_name, %if.then ], [ null, %entry.if.end_crit_edge ]
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call6 = call ptr @devm_clk_get(ptr noundef %10, ptr noundef %name.0) #12
  %clock = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 2
  %11 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call6, ptr %clock, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1, i32 noundef %hwindex) #15
  %14 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clock, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %clk_name, ptr noundef nonnull @.str.6, i32 noundef %hwindex)
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %call18 = call ptr @devm_clk_get(ptr noundef %18, ptr noundef nonnull %clk_name) #12
  %cmp.i180 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %if.else21, label %if.then20

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %extclock = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 3
  %19 = ptrtoint ptr %extclock to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call18, ptr %extclock, align 8
  br label %do.body34

if.else21:                                        ; preds = %if.end13
  %20 = ptrtoint ptr %call18 to i32
  %cmp = icmp eq ptr %call18, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.else21.cleanup_crit_edge, label %if.else24

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else24:                                        ; preds = %if.else21
  %21 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info.i, align 4
  %dpll_mask = getelementptr inbounds %struct.rcar_du_device_info, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %dpll_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dpll_mask, align 4
  %shl = shl nuw i32 1, %hwindex
  %and = and i32 %24, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else24.do.body34_crit_edge, label %if.then25

if.else24.do.body34_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34

if.then25:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.8, i32 noundef %hwindex, i32 noundef %20) #15
  br label %cleanup

do.body34:                                        ; preds = %if.else24.do.body34_crit_edge, %if.then20
  %flip_wait = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 10
  call void @__init_waitqueue_head(ptr noundef %flip_wait, ptr noundef nonnull @.str.10, ptr noundef nonnull @rcar_du_crtc_create.__key) #12
  %vblank_wait = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 12
  call void @__init_waitqueue_head(ptr noundef %vblank_wait, ptr noundef nonnull @.str.12, ptr noundef nonnull @rcar_du_crtc_create.__key.11) #12
  %vblank_lock = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 11
  call void @__raw_spin_lock_init(ptr noundef %vblank_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @rcar_du_crtc_create.__key.13, i16 noundef signext 3) #12
  %dev44 = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 1
  %27 = ptrtoint ptr %dev44 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %dev44, align 8
  %group = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 14
  %28 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %rgrp, ptr %group, align 4
  %arrayidx45 = getelementptr [4 x i32], ptr @rcar_du_crtc_create.mmio_offsets, i32 0, i32 %hwindex
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx45, align 4
  %mmio_offset = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 4
  %31 = ptrtoint ptr %mmio_offset to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %mmio_offset, align 4
  %index = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 5
  %32 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %hwindex, ptr %index, align 8
  %rem = and i32 %hwindex, 1
  %33 = shl nuw nsw i32 %rem, 9
  %34 = xor i32 %33, 512
  %dsysr = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 7
  %35 = ptrtoint ptr %dsysr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %dsysr, align 8
  %36 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info.i, align 4
  %features.i182 = getelementptr inbounds %struct.rcar_du_device_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %features.i182 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %features.i182, align 4
  %and.i183 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183)
  %tobool.i184.not = icmp eq i32 %and.i183, 0
  br i1 %tobool.i184.not, label %do.body34.if.end51_crit_edge, label %if.then49

do.body34.if.end51_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then49:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %34, 128
  %40 = ptrtoint ptr %dsysr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or, ptr %dsysr, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %do.body34.if.end51_crit_edge
  %41 = ptrtoint ptr %features.i182 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %features.i182, align 4
  %and.i187 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i187)
  %tobool.i188.not = icmp eq i32 %and.i187, 0
  br i1 %tobool.i188.not, label %if.else55, label %if.then53

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %vsp = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 16
  %43 = ptrtoint ptr %vsp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vsp, align 4
  %planes = getelementptr inbounds %struct.rcar_du_vsp, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %planes, align 4
  %vsp_pipe = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 17
  %47 = ptrtoint ptr %vsp_pipe to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vsp_pipe, align 8
  %arrayidx54 = getelementptr %struct.rcar_du_vsp_plane, ptr %46, i32 %48
  br label %if.end60

if.else55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %rem57 = and i32 %swindex, 1
  %arrayidx58 = getelementptr %struct.rcar_du_group, ptr %rgrp, i32 0, i32 11, i32 %rem57
  br label %if.end60

if.end60:                                         ; preds = %if.else55, %if.then53
  %primary.0 = phi ptr [ %arrayidx54, %if.then53 ], [ %arrayidx58, %if.else55 ]
  %ddev = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %cmp62 = icmp ult i32 %50, 3
  %cond63 = select i1 %cmp62, ptr @crtc_funcs_gen2, ptr @crtc_funcs_gen3
  %call64 = call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %ddev, ptr noundef %arrayidx, ptr noundef %primary.0, ptr noundef null, ptr noundef nonnull %cond63, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.end60.cleanup_crit_edge, label %if.end67

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end67:                                         ; preds = %if.end60
  %arrayidx68 = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 7, i32 %swindex
  %51 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx68, align 4
  %tobool69.not = icmp eq ptr %52, null
  br i1 %tobool69.not, label %if.end67.if.end77_crit_edge, label %if.then70

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  %cmm = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 15
  %53 = ptrtoint ptr %cmm to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %cmm, align 8
  %shl74 = shl nuw nsw i32 1, %rem
  %cmms_mask = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 4
  %54 = ptrtoint ptr %cmms_mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cmms_mask, align 8
  %or75 = or i32 %55, %shl74
  store i32 %or75, ptr %cmms_mask, align 8
  %call76 = call i32 @drm_mode_crtc_set_gamma_size(ptr noundef %arrayidx, i32 noundef 256) #12
  call void @drm_crtc_enable_color_mgmt(ptr noundef %arrayidx, i32 noundef 0, i1 noundef zeroext false, i32 noundef 256) #12
  br label %if.end77

if.end77:                                         ; preds = %if.then70, %if.end67.if.end77_crit_edge
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %arrayidx, i32 0, i32 19
  %56 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @crtc_helper_funcs, ptr %helper_private.i, align 8
  %57 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %info.i, align 4
  %features.i190 = getelementptr inbounds %struct.rcar_du_device_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %features.i190 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %features.i190, align 4
  %and.i191 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i191)
  %tobool.i192.not = icmp eq i32 %and.i191, 0
  %.swindex = select i1 %tobool.i192.not, i32 0, i32 %swindex
  %61 = shl nuw nsw i32 %and.i191, 7
  %62 = xor i32 %61, 128
  %call82 = call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef %.swindex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp84 = icmp slt i32 %call82, 0
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  br i1 %cmp84, label %do.end88, label %if.end90

do.end88:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.16, i32 noundef %swindex) #15
  br label %cleanup

if.end90:                                         ; preds = %if.end77
  %init_name.i = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %66, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end90.dev_name.exit_crit_edge

if.end90.dev_name.exit_crit_edge:                 ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %64, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end90.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %68, %if.end.i ], [ %66, %if.end90.dev_name.exit_crit_edge ]
  %call.i = call i32 @devm_request_threaded_irq(ptr noundef %64, i32 noundef %call82, ptr noundef nonnull @rcar_du_crtc_irq, ptr noundef null, i32 noundef %62, ptr noundef %retval.0.i, ptr noundef %arrayidx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp95 = icmp slt i32 %call.i, 0
  br i1 %cmp95, label %do.end99, label %if.end101

do.end99:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.19, i32 noundef %swindex) #15
  br label %cleanup

if.end101:                                        ; preds = %dev_name.exit
  %71 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev44, align 8
  %info.i193 = getelementptr inbounds %struct.rcar_du_device, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %info.i193 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %info.i193, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %cmp.i194 = icmp ult i32 %76, 3
  br i1 %cmp.i194, label %if.end101.cleanup_crit_edge, label %if.end.i195

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i195:                                      ; preds = %if.end101
  %vsp.i = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 16
  %77 = ptrtoint ptr %vsp.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vsp.i, align 4
  %num_planes.i = getelementptr inbounds %struct.rcar_du_vsp, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_planes.i, align 4
  %add.i = add i32 %80, 1
  %81 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #12
  %82 = extractvalue { i32, i1 } %81, 1
  br i1 %82, label %if.end.i195.cleanup_crit_edge, label %if.end7.i.i, !prof !96

if.end.i195.cleanup_crit_edge:                    ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end.i195
  %83 = extractvalue { i32, i1 } %81, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %83, i32 noundef 3264) #16
  %tobool.not.i196 = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i196, label %if.end7.i.i.cleanup_crit_edge, label %if.end2.i

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2.i:                                        ; preds = %if.end7.i.i
  %call3.i = call noalias ptr @kstrdup(ptr noundef nonnull @.str.21, i32 noundef 3264) #12
  %84 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call3.i, ptr %call8.i.i, align 128
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %if.end2.i.while.end.i_crit_edge, label %if.end2.i.for.cond.i_crit_edge

if.end2.i.for.cond.i_crit_edge:                   ; preds = %if.end2.i
  br label %for.cond.i

if.end2.i.while.end.i_crit_edge:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end2.i.for.cond.i_crit_edge
  %i.0.i = phi i32 [ %add17.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %if.end2.i.for.cond.i_crit_edge ]
  %85 = ptrtoint ptr %vsp.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vsp.i, align 4
  %num_planes9.i = getelementptr inbounds %struct.rcar_du_vsp, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %num_planes9.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_planes9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %88)
  %cmp10.i = icmp ult i32 %i.0.i, %88
  br i1 %cmp10.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %planes.i = getelementptr inbounds %struct.rcar_du_vsp, ptr %86, i32 0, i32 3
  %89 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %planes.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #12
  %base.i = getelementptr %struct.rcar_du_vsp_plane, ptr %90, i32 %i.0.i, i32 0, i32 4
  %91 = call ptr @memset(ptr %name.i, i32 255, i32 16)
  %92 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %base.i, align 4
  %call14.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.41, i32 noundef %93) #12
  %call16.i = call noalias ptr @kstrdup(ptr noundef nonnull %name.i, i32 noundef 3264) #12
  %add17.i = add nuw i32 %i.0.i, 1
  %arrayidx18.i = getelementptr ptr, ptr %call8.i.i, i32 %add17.i
  %94 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call16.i, ptr %arrayidx18.i, align 4
  %tobool21.not.i = icmp eq ptr %call16.i, null
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #12
  br i1 %tobool21.not.i, label %error.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %sources25.i = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 18
  %95 = ptrtoint ptr %sources25.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call8.i.i, ptr %sources25.i, align 4
  %sources_count.i = getelementptr %struct.rcar_du_device, ptr %1, i32 0, i32 4, i32 %swindex, i32 19
  %96 = ptrtoint ptr %sources_count.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add.i, ptr %sources_count.i, align 8
  br label %cleanup

error.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i)
  %cmp2661.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp2661.i, label %error.i.while.body.i_crit_edge, label %error.i.while.end.i_crit_edge

error.i.while.end.i_crit_edge:                    ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

error.i.while.body.i_crit_edge:                   ; preds = %error.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %error.i.while.body.i_crit_edge
  %i.262.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %i.0.i, %error.i.while.body.i_crit_edge ]
  %arrayidx27.i = getelementptr ptr, ptr %call8.i.i, i32 %i.262.i
  %97 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx27.i, align 4
  call void @kfree(ptr noundef %98) #12
  %dec.i = add nsw i32 %i.262.i, -1
  %cmp26.not.i = icmp eq i32 %i.262.i, 0
  br i1 %cmp26.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %error.i.while.end.i_crit_edge, %if.end2.i.while.end.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end.i, %for.end.i, %if.end7.i.i.cleanup_crit_edge, %if.end.i195.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %do.end99, %do.end88, %if.end60.cleanup_crit_edge, %if.then25, %if.else21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %16, %do.end ], [ %20, %if.then25 ], [ %call82, %do.end88 ], [ %call.i, %do.end99 ], [ -517, %if.else21.cleanup_crit_edge ], [ %call64, %if.end60.cleanup_crit_edge ], [ 0, %if.end101.cleanup_crit_edge ], [ 0, %if.end.i195.cleanup_crit_edge ], [ 0, %if.end7.i.i.cleanup_crit_edge ], [ 0, %for.end.i ], [ 0, %while.end.i ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %clk_name) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_du_crtc_irq(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rcar_du_crtc, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %vblank_lock = getelementptr inbounds %struct.rcar_du_crtc, ptr %arg, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %vblank_lock) #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %mmio_offset.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %arg, i32 0, i32 4
  %4 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mmio_offset.i, align 4
  %add.i = add i32 %5, 8
  %mmio.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !97
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !98
  %and = and i32 %9, 52223
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mmio_offset.i, align 4
  %add.i32 = add i32 %13, 12
  %mmio.i.i33 = getelementptr inbounds %struct.rcar_du_device, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %mmio.i.i33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i33, align 8
  %add.ptr.i.i34 = getelementptr i8, ptr %15, i32 %add.i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %16 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i34, i32 %16) #12, !srcloc !95
  %and1 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end16.critedge, label %if.then

if.then:                                          ; preds = %entry
  %vblank_count = getelementptr inbounds %struct.rcar_du_crtc, ptr %arg, i32 0, i32 13
  %17 = ptrtoint ptr %vblank_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vblank_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not = icmp eq i32 %18, 0
  br i1 %tobool2.not, label %if.then.if.then11_crit_edge, label %if.then3

if.then.if.then11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

if.then3:                                         ; preds = %if.then
  %dec = add i32 %18, -1
  %19 = ptrtoint ptr %vblank_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %dec, ptr %vblank_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then5, label %if.then3.if.then11_crit_edge

if.then3.if.then11_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %vblank_wait = getelementptr inbounds %struct.rcar_du_crtc, ptr %arg, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %vblank_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.then11

if.then11:                                        ; preds = %if.then5, %if.then3.if.then11_crit_edge, %if.then.if.then11_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %vblank_lock) #12
  %info = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp12 = icmp ult i32 %23, 3
  br i1 %cmp12, label %if.then13, label %if.then11.if.end16_crit_edge

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %arg) #12
  tail call void @rcar_du_crtc_finish_page_flip(ptr noundef %arg)
  br label %if.end16

if.end16.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %vblank_lock) #12
  br label %if.end16

if.end16:                                         ; preds = %if.end16.critedge, %if.then13, %if.then11.if.end16_crit_edge
  %ret.0 = phi i32 [ 0, %if.end16.critedge ], [ 1, %if.then13 ], [ 1, %if.then11.if.end16_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_crtc_reset(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %1) #12
  tail call void @kfree(ptr noundef nonnull %1) #12
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %state1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 296) #17
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %crc = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %crc, align 4
  %index = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %index, align 8
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rcar_du_crtc_atomic_duplicate_state(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !96

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 945, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end24:                                         ; preds = %entry
  %call = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef 296, i32 noundef 3264) #12
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %if.end28 ], [ null, %if.end24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_crtc_atomic_destroy_state(ptr nocapture noundef readnone %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %state) #12
  tail call void @kfree(ptr noundef %state) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_du_crtc_enable_vblank(ptr nocapture noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %mmio_offset.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 4
  %2 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mmio_offset.i, align 4
  %add.i = add i32 %3, 12
  %mmio.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 524288) #12, !srcloc !95
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  %8 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mmio_offset.i, align 4
  %add.i5 = add i32 %9, 16
  %mmio.i.i6 = getelementptr inbounds %struct.rcar_du_device, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %mmio.i.i6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i6, align 8
  %add.ptr.i.i7 = getelementptr i8, ptr %11, i32 %add.i5
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7) #12, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !98
  %13 = or i32 %12, 524288
  %14 = ptrtoint ptr %mmio.i.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i6, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %15, i32 %add.i5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %13) #12, !srcloc !95
  %vblank_enable = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 8
  %16 = ptrtoint ptr %vblank_enable to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %vblank_enable, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_crtc_disable_vblank(ptr nocapture noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %mmio_offset.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 4
  %2 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mmio_offset.i, align 4
  %add.i = add i32 %3, 16
  %mmio.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !98
  %7 = and i32 %6, -524289
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %9, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %7) #12, !srcloc !95
  %vblank_enable = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 8
  %10 = ptrtoint ptr %vblank_enable to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %vblank_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_crtc_cleanup(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sources.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 18
  %0 = ptrtoint ptr %sources.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sources.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.rcar_du_crtc_crc_cleanup.exit_crit_edge, label %for.cond.preheader.i

entry.rcar_du_crtc_crc_cleanup.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_crc_cleanup.exit

for.cond.preheader.i:                             ; preds = %entry
  %sources_count.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 19
  %2 = ptrtoint ptr %sources_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sources_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not.i = icmp eq i32 %3, 0
  br i1 %cmp12.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %sources.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sources.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %i.013.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %7) #12
  %inc.i = add nuw i32 %i.013.i, 1
  %8 = ptrtoint ptr %sources_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sources_count.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %10 = ptrtoint ptr %sources.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sources.i, align 4
  tail call void @kfree(ptr noundef %11) #12
  %12 = ptrtoint ptr %sources.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %sources.i, align 4
  %13 = ptrtoint ptr %sources_count.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sources_count.i, align 8
  br label %rcar_du_crtc_crc_cleanup.exit

rcar_du_crtc_crc_cleanup.exit:                    ; preds = %for.end.i, %entry.rcar_du_crtc_crc_cleanup.exit_crit_edge
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_du_crtc_set_crc_source(ptr noundef %crtc, ptr noundef %source_name) #0 align 64 {
entry:
  %index.i = alloca i32, align 4
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx) #12
  %0 = call ptr @memset(ptr %ctx, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #12
  %1 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %index.i, align 4, !annotation !99
  %tobool.not.i = icmp eq ptr %source_name, null
  br i1 %tobool.not.i, label %entry.rcar_du_crtc_parse_crc_source.exit.thread45_crit_edge, label %if.else.i

entry.rcar_du_crtc_parse_crc_source.exit.thread45_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_parse_crc_source.exit.thread45

if.else.i:                                        ; preds = %entry
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %source_name, ptr noundef nonnull dereferenceable(5) @.str.21) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.else.i.rcar_du_crtc_parse_crc_source.exit.thread45_crit_edge, label %if.else3.i

if.else.i.rcar_du_crtc_parse_crc_source.exit.thread45_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_parse_crc_source.exit.thread45

if.else3.i:                                       ; preds = %if.else.i
  %call1.i.i = tail call i32 @strncmp(ptr noundef nonnull %source_name, ptr noundef nonnull dereferenceable(6) @.str.22, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.then5.i, label %if.else3.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge

if.else3.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge: ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_parse_crc_source.exit.thread

if.then5.i:                                       ; preds = %if.else3.i
  %add.ptr.i = getelementptr i8, ptr %source_name, i32 5
  %call6.i = call i32 @kstrtouint(ptr noundef %add.ptr.i, i32 noundef 10, ptr noundef nonnull %index.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.then5.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge, label %for.cond.preheader.i

if.then5.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_parse_crc_source.exit.thread

for.cond.preheader.i:                             ; preds = %if.then5.i
  %vsp.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 16
  %2 = ptrtoint ptr %vsp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsp.i, align 4
  %num_planes.i = getelementptr inbounds %struct.rcar_du_vsp, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp830.not.i = icmp eq i32 %5, 0
  br i1 %cmp830.not.i, label %for.cond.preheader.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_parse_crc_source.exit.thread

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %planes.i = getelementptr inbounds %struct.rcar_du_vsp, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %planes.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %base.i = getelementptr %struct.rcar_du_vsp_plane, ptr %9, i32 %i.031.i, i32 0, i32 4
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp10.i = icmp eq i32 %7, %11
  br i1 %cmp10.i, label %rcar_du_crtc_parse_crc_source.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_parse_crc_source.exit.thread

rcar_du_crtc_parse_crc_source.exit.thread:        ; preds = %for.inc.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge, %for.cond.preheader.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge, %if.then5.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge, %if.else3.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge
  %retval.1.i.ph = phi i32 [ -22, %for.cond.preheader.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge ], [ %call6.i, %if.then5.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge ], [ -22, %if.else3.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge ], [ -22, %for.inc.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #12
  br label %cleanup

rcar_du_crtc_parse_crc_source.exit.thread45:      ; preds = %if.else.i.rcar_du_crtc_parse_crc_source.exit.thread45_crit_edge, %entry.rcar_du_crtc_parse_crc_source.exit.thread45_crit_edge
  %source.0.ph = phi i32 [ 2, %if.else.i.rcar_du_crtc_parse_crc_source.exit.thread45_crit_edge ], [ 0, %entry.rcar_du_crtc_parse_crc_source.exit.thread45_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #12
  br label %if.end

rcar_du_crtc_parse_crc_source.exit:               ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.031.i)
  %cmp = icmp slt i32 %i.031.i, 0
  br i1 %cmp, label %rcar_du_crtc_parse_crc_source.exit.cleanup_crit_edge, label %rcar_du_crtc_parse_crc_source.exit.if.end_crit_edge

rcar_du_crtc_parse_crc_source.exit.if.end_crit_edge: ; preds = %rcar_du_crtc_parse_crc_source.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

rcar_du_crtc_parse_crc_source.exit.cleanup_crit_edge: ; preds = %rcar_du_crtc_parse_crc_source.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %rcar_du_crtc_parse_crc_source.exit.if.end_crit_edge, %rcar_du_crtc_parse_crc_source.exit.thread45
  %retval.1.i50 = phi i32 [ 0, %rcar_du_crtc_parse_crc_source.exit.thread45 ], [ %i.031.i, %rcar_du_crtc_parse_crc_source.exit.if.end_crit_edge ]
  %source.049 = phi i32 [ %source.0.ph, %rcar_du_crtc_parse_crc_source.exit.thread45 ], [ 1, %rcar_du_crtc_parse_crc_source.exit.if.end_crit_edge ]
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx, i32 noundef 0) #12
  %12 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc, align 8
  %call1 = call ptr @drm_atomic_state_alloc(ptr noundef %13) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.unlock_crit_edge, label %if.end3

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end3:                                          ; preds = %if.end
  %acquire_ctx = getelementptr inbounds %struct.drm_atomic_state, ptr %call1, i32 0, i32 9
  %14 = ptrtoint ptr %acquire_ctx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ctx, ptr %acquire_ctx, align 4
  br label %retry

retry:                                            ; preds = %if.then17, %if.end3
  %call4 = call ptr @drm_atomic_get_crtc_state(ptr noundef nonnull %call1, ptr noundef %crtc) #12
  %cmp.i40 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.else, label %if.then6

if.then6:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  %crc = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %call4, i32 0, i32 1
  %15 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %source.049, ptr %crc, align 4
  %index12 = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %call4, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %index12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.1.i50, ptr %index12, align 4
  %call13 = call i32 @drm_atomic_commit(ptr noundef nonnull %call1) #12
  br label %if.end15

if.else:                                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %call4 to i32
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then6
  %ret.0 = phi i32 [ %17, %if.else ], [ %call13, %if.then6 ]
  %cmp16 = icmp eq i32 %ret.0, -35
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  call void @drm_atomic_state_clear(ptr noundef nonnull %call1) #12
  %call18 = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx) #12
  br label %retry

if.end19:                                         ; preds = %if.end15
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !100
  call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #12
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 1, ptr nonnull elementtype(i32) %call1) #12, !srcloc !101
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.unlock_crit_edge, label %if.then10.i.i.i.i.i, !prof !102

if.end5.i.i.i.i.i.unlock_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %call1, i32 noundef 3) #12
  br label %unlock

if.then.i.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  call void @__drm_atomic_state_free(ptr noundef nonnull %call1) #12
  br label %unlock

unlock:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.unlock_crit_edge, %if.end.unlock_crit_edge
  %ret.1 = phi i32 [ -12, %if.end.unlock_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.unlock_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i ], [ %ret.0, %if.then.i.i ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx) #12
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %rcar_du_crtc_parse_crc_source.exit.cleanup_crit_edge, %rcar_du_crtc_parse_crc_source.exit.thread
  %retval.0 = phi i32 [ %ret.1, %unlock ], [ %i.031.i, %rcar_du_crtc_parse_crc_source.exit.cleanup_crit_edge ], [ %retval.1.i.ph, %rcar_du_crtc_parse_crc_source.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_du_crtc_verify_crc_source(ptr nocapture noundef readonly %crtc, ptr noundef %source_name, ptr nocapture noundef writeonly %values_cnt) #0 align 64 {
entry:
  %index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #12
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %index.i, align 4, !annotation !99
  %tobool.not.i = icmp eq ptr %source_name, null
  br i1 %tobool.not.i, label %entry.rcar_du_crtc_parse_crc_source.exit.thread6_crit_edge, label %if.else.i

entry.rcar_du_crtc_parse_crc_source.exit.thread6_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_parse_crc_source.exit.thread6

if.else.i:                                        ; preds = %entry
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %source_name, ptr noundef nonnull dereferenceable(5) @.str.21) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.else.i.rcar_du_crtc_parse_crc_source.exit.thread6_crit_edge, label %if.else3.i

if.else.i.rcar_du_crtc_parse_crc_source.exit.thread6_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_parse_crc_source.exit.thread6

if.else3.i:                                       ; preds = %if.else.i
  %call1.i.i = tail call i32 @strncmp(ptr noundef nonnull %source_name, ptr noundef nonnull dereferenceable(6) @.str.22, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.then5.i, label %if.else3.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge

if.else3.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge: ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_parse_crc_source.exit.thread

if.then5.i:                                       ; preds = %if.else3.i
  %add.ptr.i = getelementptr i8, ptr %source_name, i32 5
  %call6.i = call i32 @kstrtouint(ptr noundef %add.ptr.i, i32 noundef 10, ptr noundef nonnull %index.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.then5.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge, label %for.cond.preheader.i

if.then5.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_parse_crc_source.exit.thread

for.cond.preheader.i:                             ; preds = %if.then5.i
  %vsp.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 16
  %1 = ptrtoint ptr %vsp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vsp.i, align 4
  %num_planes.i = getelementptr inbounds %struct.rcar_du_vsp, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp830.not.i = icmp eq i32 %4, 0
  br i1 %cmp830.not.i, label %for.cond.preheader.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_parse_crc_source.exit.thread

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  %planes.i = getelementptr inbounds %struct.rcar_du_vsp, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %planes.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %base.i = getelementptr %struct.rcar_du_vsp_plane, ptr %8, i32 %i.031.i, i32 0, i32 4
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp10.i = icmp eq i32 %6, %10
  br i1 %cmp10.i, label %rcar_du_crtc_parse_crc_source.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %for.inc.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_parse_crc_source.exit.thread

rcar_du_crtc_parse_crc_source.exit.thread:        ; preds = %for.inc.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge, %for.cond.preheader.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge, %if.then5.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge, %if.else3.i.rcar_du_crtc_parse_crc_source.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #12
  br label %if.then

rcar_du_crtc_parse_crc_source.exit.thread6:       ; preds = %if.else.i.rcar_du_crtc_parse_crc_source.exit.thread6_crit_edge, %entry.rcar_du_crtc_parse_crc_source.exit.thread6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #12
  br label %if.end

rcar_du_crtc_parse_crc_source.exit:               ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.031.i)
  %cmp = icmp slt i32 %i.031.i, 0
  br i1 %cmp, label %rcar_du_crtc_parse_crc_source.exit.if.then_crit_edge, label %rcar_du_crtc_parse_crc_source.exit.if.end_crit_edge

rcar_du_crtc_parse_crc_source.exit.if.end_crit_edge: ; preds = %rcar_du_crtc_parse_crc_source.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

rcar_du_crtc_parse_crc_source.exit.if.then_crit_edge: ; preds = %rcar_du_crtc_parse_crc_source.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %rcar_du_crtc_parse_crc_source.exit.if.then_crit_edge, %rcar_du_crtc_parse_crc_source.exit.thread
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, ptr noundef nonnull %source_name) #12
  br label %cleanup

if.end:                                           ; preds = %rcar_du_crtc_parse_crc_source.exit.if.end_crit_edge, %rcar_du_crtc_parse_crc_source.exit.thread6
  %11 = ptrtoint ptr %values_cnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %values_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @rcar_du_crtc_get_crc_sources(ptr nocapture noundef readonly %crtc, ptr nocapture noundef writeonly %count) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sources_count = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 19
  %0 = ptrtoint ptr %sources_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sources_count, align 8
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %count, align 4
  %sources = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 18
  %3 = ptrtoint ptr %sources to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sources, align 4
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcar_du_crtc_mode_valid(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %mode) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dev = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %info.i = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 4
  %features.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features.i, align 4
  %and.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %group = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 14
  %8 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %group, align 4
  %cmms_mask = getelementptr inbounds %struct.rcar_du_group, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %cmms_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmms_mask, align 8
  %index = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 5
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %rem = and i32 %13, 1
  %shl = shl nuw nsw i32 1, %rem
  %and2 = and i32 %shl, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %spec.select = select i1 %tobool3.not, i32 20, i32 45
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %14 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %htotal, align 2
  %conv = zext i16 %15 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %16 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hsync_start, align 2
  %conv6 = zext i16 %17 to i32
  %sub = sub nsw i32 %conv, %conv6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %spec.select)
  %cmp = icmp ult i32 %sub, %spec.select
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %18 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vtotal, align 4
  %conv10 = zext i16 %19 to i32
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %20 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vsync_end, align 2
  %conv11 = zext i16 %21 to i32
  %sub12 = sub nsw i32 %conv10, %conv11
  %cond = select i1 %tobool.not, i32 1, i32 2
  %div = sdiv i32 %sub12, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div)
  %cmp15 = icmp ult i32 %div, 3
  %. = select i1 %cmp15, i32 27, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 7, %land.lhs.true.cleanup_crit_edge ], [ 23, %if.end.cleanup_crit_edge ], [ %., %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_du_crtc_atomic_check(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %gamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gamma_lut.i, align 4
  %dev1.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 1
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %length.i.i = getelementptr inbounds %struct.drm_property_blob, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i.i, align 4
  %div1.i.mask.i = and i32 %13, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %div1.i.mask.i)
  %cmp.not.i = icmp eq i32 %div1.i.mask.i, 2048
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %rcar_du_cmm_check.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

rcar_du_cmm_check.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef %13) #15
  br label %cleanup24

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %outputs = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %outputs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %outputs, align 4
  %15 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crtc, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 16
  %17 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn42 = load ptr, ptr %encoder_list, align 4
  %cmp.not44 = icmp eq ptr %.pn42, %encoder_list
  br i1 %cmp.not44, label %if.end.cleanup24_crit_edge, label %for.body.lr.ph

if.end.cleanup24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup24

for.body.lr.ph:                                   ; preds = %if.end
  %encoder_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn45 = phi ptr [ %.pn42, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %encoder_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %encoder_mask, align 4
  %index.i.i39 = getelementptr i8, ptr %.pn45, i32 36
  %20 = ptrtoint ptr %index.i.i39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index.i.i39, align 4
  %shl.i = shl nuw i32 1, %21
  %and = and i32 %shl.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else:                                          ; preds = %for.body
  %encoder_type = getelementptr i8, ptr %.pn45, i32 32
  %22 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %encoder_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp11 = icmp eq i32 %23, 5
  br i1 %cmp11, label %if.else.for.inc_crit_edge, label %if.end13

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %output = getelementptr i8, ptr %.pn45, i32 68
  %24 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %output, align 4
  %shl = shl nuw i32 1, %25
  %26 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %outputs, align 4
  %or = or i32 %27, %shl
  store i32 %or, ptr %outputs, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %28 = ptrtoint ptr %.pn45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn45, align 4
  %29 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %crtc, align 8
  %encoder_list7 = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 30, i32 16
  %cmp.not = icmp eq ptr %.pn, %encoder_list7
  br i1 %cmp.not, label %for.inc.cleanup24_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup24_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup24

cleanup24:                                        ; preds = %for.inc.cleanup24_crit_edge, %if.end.cleanup24_crit_edge, %rcar_du_cmm_check.exit
  %retval.0 = phi i32 [ -22, %rcar_du_cmm_check.exit ], [ 0, %if.end.cleanup24_crit_edge ], [ 0, %for.inc.cleanup24_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_crtc_atomic_begin(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %cmm_config.i = alloca %struct.rcar_cmm_config, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !96

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 793, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @rcar_du_crtc_get(ptr noundef %crtc)
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state1, align 4
  %color_mgmt_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %color_mgmt_changed, align 2
  %7 = and i8 %bf.load, 36
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %8 = icmp eq i8 %7, 4
  br i1 %8, label %if.then29, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then29:                                        ; preds = %if.end
  %gamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 12
  %9 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gamma_lut.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmm_config.i) #12
  %11 = ptrtoint ptr %cmm_config.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cmm_config.i, align 4
  %cmm.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 15
  %12 = ptrtoint ptr %cmm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmm.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then29.rcar_du_cmm_setup.exit_crit_edge, label %if.end.i

if.then29.rcar_du_cmm_setup.exit_crit_edge:       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_cmm_setup.exit

if.end.i:                                         ; preds = %if.then29
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %10, i32 0, i32 5
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %16 = ptrtoint ptr %cmm_config.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %cmm_config.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %call.i = call i32 @rcar_cmm_setup(ptr noundef nonnull %13, ptr noundef nonnull %cmm_config.i) #12
  br label %rcar_du_cmm_setup.exit

rcar_du_cmm_setup.exit:                           ; preds = %if.end3.i, %if.then29.rcar_du_cmm_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmm_config.i) #12
  br label %if.end30

if.end30:                                         ; preds = %rcar_du_cmm_setup.exit, %if.end.if.end30_crit_edge
  %dev = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %info.i = getelementptr inbounds %struct.rcar_du_device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info.i, align 4
  %features.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %features.i, align 4
  %and.i = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end30.if.end33_crit_edge, label %if.then32

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  call void @rcar_du_vsp_atomic_begin(ptr noundef %crtc) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30.if.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %planes.i = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %planes.i) #12
  %dev.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 1
  %2 = call ptr @memset(ptr %planes.i, i32 255, i32 32)
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  %group.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 14
  %5 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %group.i, align 4
  %num_planes1.i = getelementptr inbounds %struct.rcar_du_group, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %num_planes1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_planes1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp174.not.i = icmp eq i32 %8, 0
  br i1 %cmp174.not.i, label %entry.for.end54.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end54.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end54.i

for.cond27.preheader.i:                           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_planes.1.i)
  %cmp28181.not.i = icmp eq i32 %num_planes.1.i, 0
  br i1 %cmp28181.not.i, label %for.cond27.preheader.i.for.end54.i_crit_edge, label %for.cond27.preheader.i.for.body29.i_crit_edge

for.cond27.preheader.i.for.body29.i_crit_edge:    ; preds = %for.cond27.preheader.i
  br label %for.body29.i

for.cond27.preheader.i.for.end54.i_crit_edge:     ; preds = %for.cond27.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end54.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num_planes.0177.i = phi i32 [ %num_planes.1.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.0176.i = phi i32 [ %inc25.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %prio.0175.i = phi i32 [ %prio.1.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rcar_du_group, ptr %6, i32 0, i32 11, i32 %i.0176.i
  %state.i = getelementptr inbounds %struct.drm_plane, ptr %arrayidx.i, i32 0, i32 19
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state.i, align 4
  %crtc.i = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crtc.i, align 4
  %cmp6.not.i = icmp eq ptr %12, %crtc
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %visible.i = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 22
  %13 = ptrtoint ptr %visible.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %visible.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %inc.i = add i32 %num_planes.0177.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_planes.0177.i)
  %cmp10.not171.i = icmp eq i32 %num_planes.0177.i, 0
  br i1 %cmp10.not171.i, label %if.end.i.for.end.i_crit_edge, label %for.body11.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body11.lr.ph.i:                               ; preds = %if.end.i
  %normalized_zpos.i167.i = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 16
  %15 = ptrtoint ptr %normalized_zpos.i167.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %normalized_zpos.i167.i, align 4
  br label %for.body11.i

for.body11.i:                                     ; preds = %if.end16.i.for.body11.i_crit_edge, %for.body11.lr.ph.i
  %j.0172.i = phi i32 [ %num_planes.0177.i, %for.body11.lr.ph.i ], [ %sub.i, %if.end16.i.for.body11.i_crit_edge ]
  %sub.i = add i32 %j.0172.i, -1
  %arrayidx12.i = getelementptr [8 x ptr], ptr %planes.i, i32 0, i32 %sub.i
  %17 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx12.i, align 4
  %state.i.i = getelementptr inbounds %struct.drm_plane, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state.i.i, align 4
  %normalized_zpos.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %normalized_zpos.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %normalized_zpos.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %16)
  %cmp14.not.i = icmp ugt i32 %22, %16
  br i1 %cmp14.not.i, label %if.end16.i, label %for.body11.i.for.end.i_crit_edge

for.body11.i.for.end.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end16.i:                                       ; preds = %for.body11.i
  %arrayidx19.i = getelementptr [8 x ptr], ptr %planes.i, i32 0, i32 %j.0172.i
  %23 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %18, ptr %arrayidx19.i, align 4
  %cmp10.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp10.not.i, label %if.end16.i.for.end.i_crit_edge, label %if.end16.i.for.body11.i_crit_edge

if.end16.i.for.body11.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.i

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %if.end16.i.for.end.i_crit_edge, %for.body11.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ 0, %if.end16.i.for.end.i_crit_edge ], [ %j.0172.i, %for.body11.i.for.end.i_crit_edge ]
  %arrayidx20.i = getelementptr [8 x ptr], ptr %planes.i, i32 0, i32 %j.0.lcssa.i
  %24 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.i, ptr %arrayidx20.i, align 4
  %format.i.i = getelementptr inbounds %struct.rcar_du_plane_state, ptr %10, i32 0, i32 1
  %25 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %format.i.i, align 4
  %planes22.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %planes22.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %planes22.i, align 4
  %mul.i = shl i32 %28, 2
  %add.i = add i32 %mul.i, %prio.0175.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.end.i, %lor.lhs.false.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %prio.1.i = phi i32 [ %add.i, %for.end.i ], [ %prio.0175.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %prio.0175.i, %for.body.i.cleanup.i_crit_edge ]
  %num_planes.1.i = phi i32 [ %inc.i, %for.end.i ], [ %num_planes.0177.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %num_planes.0177.i, %for.body.i.cleanup.i_crit_edge ]
  %inc25.i = add nuw i32 %i.0176.i, 1
  %exitcond.not.i = icmp eq i32 %inc25.i, %8
  br i1 %exitcond.not.i, label %for.cond27.preheader.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body29.i:                                     ; preds = %if.end51.i.for.body29.i_crit_edge, %for.cond27.preheader.i.for.body29.i_crit_edge
  %dspr.0185.i = phi i32 [ %dspr.1.i, %if.end51.i.for.body29.i_crit_edge ], [ 0, %for.cond27.preheader.i.for.body29.i_crit_edge ]
  %i.1184.i = phi i32 [ %inc53.i, %if.end51.i.for.body29.i_crit_edge ], [ 0, %for.cond27.preheader.i.for.body29.i_crit_edge ]
  %prio.2183.i = phi i32 [ %prio.3.i, %if.end51.i.for.body29.i_crit_edge ], [ %prio.1.i, %for.cond27.preheader.i.for.body29.i_crit_edge ]
  %hwplanes.0182.i = phi i32 [ %hwplanes.1.i, %if.end51.i.for.body29.i_crit_edge ], [ 0, %for.cond27.preheader.i.for.body29.i_crit_edge ]
  %arrayidx31.i = getelementptr [8 x ptr], ptr %planes.i, i32 0, i32 %i.1184.i
  %29 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx31.i, align 4
  %state34.i = getelementptr inbounds %struct.drm_plane, ptr %30, i32 0, i32 19
  %31 = ptrtoint ptr %state34.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %state34.i, align 4
  %hwindex.i = getelementptr inbounds %struct.rcar_du_plane_state, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %hwindex.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hwindex.i, align 4
  %sub36.i = add i32 %prio.2183.i, -4
  %add37.i = add i32 %34, 1
  %shl.i = shl i32 %add37.i, %sub36.i
  %or.i = or i32 %shl.i, %dspr.0185.i
  %shl38.i = shl nuw i32 1, %34
  %or39.i = or i32 %shl38.i, %hwplanes.0182.i
  %format.i170.i = getelementptr inbounds %struct.rcar_du_plane_state, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %format.i170.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %format.i170.i, align 4
  %planes41.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %planes41.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %planes41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp42.i = icmp eq i32 %38, 2
  br i1 %cmp42.i, label %if.then43.i, label %for.body29.i.if.end51.i_crit_edge

for.body29.i.if.end51.i_crit_edge:                ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

if.then43.i:                                      ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #14
  %rem.i = and i32 %add37.i, 7
  %sub45.i = add i32 %prio.2183.i, -8
  %add46.i = add nuw nsw i32 %rem.i, 1
  %shl47.i = shl i32 %add46.i, %sub45.i
  %or48.i = or i32 %shl47.i, %or.i
  %shl49.i = shl nuw nsw i32 1, %rem.i
  %or50.i = or i32 %shl49.i, %or39.i
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then43.i, %for.body29.i.if.end51.i_crit_edge
  %hwplanes.1.i = phi i32 [ %or50.i, %if.then43.i ], [ %or39.i, %for.body29.i.if.end51.i_crit_edge ]
  %prio.3.i = phi i32 [ %sub45.i, %if.then43.i ], [ %sub36.i, %for.body29.i.if.end51.i_crit_edge ]
  %dspr.1.i = phi i32 [ %or48.i, %if.then43.i ], [ %or.i, %for.body29.i.if.end51.i_crit_edge ]
  %inc53.i = add nuw i32 %i.1184.i, 1
  %exitcond188.not.i = icmp eq i32 %inc53.i, %num_planes.1.i
  br i1 %exitcond188.not.i, label %if.end51.i.for.end54.i_crit_edge, label %if.end51.i.for.body29.i_crit_edge

if.end51.i.for.body29.i_crit_edge:                ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body29.i

if.end51.i.for.end54.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end54.i

for.end54.i:                                      ; preds = %if.end51.i.for.end54.i_crit_edge, %for.cond27.preheader.i.for.end54.i_crit_edge, %entry.for.end54.i_crit_edge
  %hwplanes.0.lcssa.i = phi i32 [ 0, %for.cond27.preheader.i.for.end54.i_crit_edge ], [ 0, %entry.for.end54.i_crit_edge ], [ %hwplanes.1.i, %if.end51.i.for.end54.i_crit_edge ]
  %dspr.0.lcssa.i = phi i32 [ 0, %for.cond27.preheader.i.for.end54.i_crit_edge ], [ 0, %entry.for.end54.i_crit_edge ], [ %dspr.1.i, %if.end51.i.for.end54.i_crit_edge ]
  %info.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %4, i32 0, i32 1
  %39 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %info.i.i, align 4
  %features.i.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %features.i.i, align 4
  %and.i.i = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.end54.i.if.end74.i_crit_edge, label %if.then56.i

for.end54.i.if.end74.i_crit_edge:                 ; preds = %for.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i

if.then56.i:                                      ; preds = %for.end54.i
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp57.i = icmp ult i32 %44, 3
  %index59.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 5
  %45 = ptrtoint ptr %index59.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index59.i, align 8
  %rem60.i = and i32 %46, 1
  br i1 %cmp57.i, label %if.then58.i, label %if.else.i

if.then58.i:                                      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #14
  %add61.i = add nuw nsw i32 %rem60.i, 1
  %shl64.i = shl nuw nsw i32 1, %rem60.i
  br label %if.end74.i

if.else.i:                                        ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem60.i)
  %tobool67.not.i = icmp eq i32 %rem60.i, 0
  %cond.i = select i1 %tobool67.not.i, i32 1, i32 3
  %47 = shl nuw nsw i32 %rem60.i, 1
  %shl72.i = shl nuw nsw i32 1, %47
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.else.i, %if.then58.i, %for.end54.i.if.end74.i_crit_edge
  %hwplanes.2.i = phi i32 [ %shl64.i, %if.then58.i ], [ %shl72.i, %if.else.i ], [ %hwplanes.0.lcssa.i, %for.end54.i.if.end74.i_crit_edge ]
  %dspr.2.i = phi i32 [ %add61.i, %if.then58.i ], [ %cond.i, %if.else.i ], [ %dspr.0.lcssa.i, %for.end54.i.if.end74.i_crit_edge ]
  %lock.i = getelementptr inbounds %struct.rcar_du_group, ptr %6, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  %index76.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 5
  %48 = ptrtoint ptr %index76.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index76.i, align 8
  %rem77.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem77.i)
  %tobool78.not.i = icmp eq i32 %rem77.i, 0
  %50 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %group.i, align 4
  %dptsr_planes83.i = getelementptr inbounds %struct.rcar_du_group, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %dptsr_planes83.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dptsr_planes83.i, align 4
  %or81.i = or i32 %53, %hwplanes.2.i
  %neg.i = xor i32 %hwplanes.2.i, -1
  %and.i = and i32 %53, %neg.i
  %cond84.i = select i1 %tobool78.not.i, i32 %and.i, i32 %or81.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond84.i, i32 %53)
  %cmp87.not.i = icmp eq i32 %cond84.i, %53
  br i1 %cmp87.not.i, label %if.end74.i.if.end99.i_crit_edge, label %if.then88.i

if.end74.i.if.end99.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99.i

if.then88.i:                                      ; preds = %if.end74.i
  %shl90.i = shl i32 %cond84.i, 16
  %or91.i = or i32 %shl90.i, %cond84.i
  tail call void @rcar_du_group_write(ptr noundef %51, i32 noundef 69636, i32 noundef %or91.i) #12
  %54 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %group.i, align 4
  %dptsr_planes93.i = getelementptr inbounds %struct.rcar_du_group, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %dptsr_planes93.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %cond84.i, ptr %dptsr_planes93.i, align 4
  %57 = load ptr, ptr %group.i, align 4
  %used_crtcs.i = getelementptr inbounds %struct.rcar_du_group, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %used_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %used_crtcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool95.not.i = icmp eq i32 %59, 0
  br i1 %tobool95.not.i, label %if.then88.i.if.end99.i_crit_edge, label %if.then96.i

if.then88.i.if.end99.i_crit_edge:                 ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99.i

if.then96.i:                                      ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rcar_du_group_restart(ptr noundef %57) #12
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then96.i, %if.then88.i.if.end99.i_crit_edge, %if.end74.i.if.end99.i_crit_edge
  %60 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %group.i, align 4
  %need_restart.i = getelementptr inbounds %struct.rcar_du_group, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %need_restart.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %need_restart.i, align 8, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool101.not.i = icmp eq i8 %63, 0
  br i1 %tobool101.not.i, label %if.end99.i.rcar_du_crtc_update_planes.exit_crit_edge, label %if.then102.i

if.end99.i.rcar_du_crtc_update_planes.exit_crit_edge: ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_update_planes.exit

if.then102.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rcar_du_group_restart(ptr noundef %61) #12
  br label %rcar_du_crtc_update_planes.exit

rcar_du_crtc_update_planes.exit:                  ; preds = %if.then102.i, %if.end99.i.rcar_du_crtc_update_planes.exit_crit_edge
  %64 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %group.i, align 4
  %lock106.i = getelementptr inbounds %struct.rcar_du_group, ptr %65, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %lock106.i) #12
  %66 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %group.i, align 4
  %68 = ptrtoint ptr %index76.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %index76.i, align 8
  %rem109.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem109.i)
  %tobool110.not.i = icmp eq i32 %rem109.i, 0
  %cond111.i = select i1 %tobool110.not.i, i32 69664, i32 69668
  tail call void @rcar_du_group_write(ptr noundef %67, i32 noundef %cond111.i, i32 noundef %dspr.2.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %planes.i) #12
  %state3 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %70 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %state3, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %71, i32 0, i32 18
  %72 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %73, null
  br i1 %tobool.not, label %rcar_du_crtc_update_planes.exit.if.end41_crit_edge, label %if.then

rcar_du_crtc_update_planes.exit.if.end41_crit_edge: ; preds = %rcar_du_crtc_update_planes.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then:                                          ; preds = %rcar_du_crtc_update_planes.exit
  %call = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %do.end, !prof !102

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 827, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #12
  %74 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %state3, align 4
  %event36 = getelementptr inbounds %struct.drm_crtc_state, ptr %75, i32 0, i32 18
  %76 = ptrtoint ptr %event36 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %event36, align 4
  %event37 = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 9
  %78 = ptrtoint ptr %event37 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %event37, align 8
  store ptr null, ptr %event36, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call30) #12
  br label %if.end41

if.end41:                                         ; preds = %if.end, %rcar_du_crtc_update_planes.exit.if.end41_crit_edge
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 8
  %info.i = getelementptr inbounds %struct.rcar_du_device, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %info.i, align 4
  %features.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %features.i, align 4
  %and.i56 = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.i.not = icmp eq i32 %and.i56, 0
  br i1 %tobool.i.not, label %if.end41.if.end45_crit_edge, label %if.then44

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rcar_du_vsp_atomic_flush(ptr noundef %crtc) #12
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41.if.end45_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %cmm_config.i = alloca %struct.rcar_cmm_config, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state2, align 4
  %dev = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %cmm = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 15
  %4 = ptrtoint ptr %cmm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmm, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @rcar_cmm_enable(ptr noundef nonnull %5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @rcar_du_crtc_get(ptr noundef %crtc)
  %info = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %lvds_clk_mask = getelementptr inbounds %struct.rcar_du_device_info, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %lvds_clk_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lvds_clk_mask, align 4
  %index = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 5
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 8
  %shl = shl nuw i32 1, %11
  %and = and i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %outputs = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %outputs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then8, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.rcar_du_device, ptr %3, i32 0, i32 9, i32 %11
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state2, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %19, 1000
  %call11 = tail call i32 @rcar_lvds_clk_enable(ptr noundef %15, i32 noundef %mul) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %flags.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 11
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 48
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %dsysr.i.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 7
  %24 = ptrtoint ptr %dsysr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dsysr.i.i, align 8
  %and.i.i = and i32 %25, -241
  %or.i.i = or i32 %and.i.i, %cond.i
  store i32 %or.i.i, ptr %dsysr.i.i, align 8
  %mmio_offset.i.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 4
  %26 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mmio_offset.i.i, align 4
  %mmio.i.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 %27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %30) #12, !srcloc !95
  %group.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 14
  %31 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %group.i, align 4
  tail call void @rcar_du_group_start_stop(ptr noundef %32, i1 noundef zeroext true) #12
  %33 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state2, align 4
  %gamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gamma_lut.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmm_config.i) #12
  %37 = ptrtoint ptr %cmm_config.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %cmm_config.i, align 4
  %38 = ptrtoint ptr %cmm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmm, align 8
  %tobool.not.i23 = icmp eq ptr %39, null
  br i1 %tobool.not.i23, label %if.end12.rcar_du_cmm_setup.exit_crit_edge, label %if.end.i

if.end12.rcar_du_cmm_setup.exit_crit_edge:        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_cmm_setup.exit

if.end.i:                                         ; preds = %if.end12
  %tobool1.not.i = icmp eq ptr %36, null
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %36, i32 0, i32 5
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %42 = ptrtoint ptr %cmm_config.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %cmm_config.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %call.i = call i32 @rcar_cmm_setup(ptr noundef nonnull %39, ptr noundef nonnull %cmm_config.i) #12
  br label %rcar_du_cmm_setup.exit

rcar_du_cmm_setup.exit:                           ; preds = %if.end3.i, %if.end12.rcar_du_cmm_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmm_config.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %__wq_entry.i18.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 8
  %dev = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call.i.i = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #12
  %vblank_lock.i.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %vblank_lock.i.i) #12
  %group.i.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 14
  %8 = ptrtoint ptr %group.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %group.i.i, align 4
  %index.i.i28 = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 5
  %10 = ptrtoint ptr %index.i.i28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i28, align 8
  %rem.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 69664, i32 69668
  tail call void @rcar_du_group_write(ptr noundef %9, i32 noundef %cond.i.i, i32 noundef 0) #12
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %mmio_offset.i.i.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 4
  %14 = ptrtoint ptr %mmio_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mmio_offset.i.i.i, align 4
  %add.i.i.i = add i32 %15, 8
  %mmio.i.i.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %17, i32 %add.i.i.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !98
  %19 = and i32 %18, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i.i = icmp eq i32 %19, 0
  %cond4.i.i = select i1 %tobool3.not.i.i, i32 1, i32 2
  %vblank_count.i.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 13
  %20 = ptrtoint ptr %vblank_count.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond4.i.i, ptr %vblank_count.i.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %vblank_lock.i.i) #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 635) #12
  %21 = ptrtoint ptr %vblank_count.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vblank_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i, label %entry.rcar_du_crtc_disable_planes.exit.i_crit_edge, label %if.then16.i.i

entry.rcar_du_crtc_disable_planes.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_disable_planes.exit.i

if.then16.i.i:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #12
  %23 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #12
  %vblank_wait.i.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 12
  %call1977.i.i = call i32 @prepare_to_wait_event(ptr noundef %vblank_wait.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #12
  %24 = ptrtoint ptr %vblank_count.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vblank_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp2278.i.i = icmp eq i32 %25, 0
  br i1 %cmp2278.i.i, label %if.end42.thread.i.i, label %if.then16.i.i.cleanup.i.i_crit_edge

if.then16.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then16.i.i
  br label %cleanup.i.i

if.end42.thread.i.i:                              ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @finish_wait(ptr noundef %vblank_wait.i.i, ptr noundef nonnull %__wq_entry.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #12
  br label %rcar_du_crtc_disable_planes.exit.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.then16.i.i.cleanup.i.i_crit_edge
  %__ret17.179.i.i = phi i32 [ %__ret17.1.i.i, %cleanup.i.i.cleanup.i.i_crit_edge ], [ 10, %if.then16.i.i.cleanup.i.i_crit_edge ]
  %call39.i.i = call i32 @schedule_timeout(i32 noundef %__ret17.179.i.i) #12
  %call19.i.i = call i32 @prepare_to_wait_event(ptr noundef %vblank_wait.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #12
  %26 = ptrtoint ptr %vblank_count.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vblank_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp22.i.i = icmp eq i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %tobool26.not.i.i = icmp eq i32 %call39.i.i, 0
  %28 = select i1 %cmp22.i.i, i1 %tobool26.not.i.i, i1 false
  %__ret17.1.i.i = select i1 %28, i32 1, i32 %call39.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret17.1.i.i)
  %tobool32.not.i.i = icmp eq i32 %__ret17.1.i.i, 0
  %29 = select i1 %cmp22.i.i, i1 true, i1 %tobool32.not.i.i
  br i1 %29, label %if.end42.i.i, label %cleanup.i.i.cleanup.i.i_crit_edge

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.end42.i.i:                                     ; preds = %cleanup.i.i
  call void @finish_wait(ptr noundef %vblank_wait.i.i, ptr noundef nonnull %__wq_entry.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #12
  br i1 %tobool32.not.i.i, label %do.end48.i.i, label %if.end42.i.i.rcar_du_crtc_disable_planes.exit.i_crit_edge

if.end42.i.i.rcar_du_crtc_disable_planes.exit.i_crit_edge: ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_disable_planes.exit.i

do.end48.i.i:                                     ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.36) #15
  br label %rcar_du_crtc_disable_planes.exit.i

rcar_du_crtc_disable_planes.exit.i:               ; preds = %do.end48.i.i, %if.end42.i.i.rcar_du_crtc_disable_planes.exit.i_crit_edge, %if.end42.thread.i.i, %entry.rcar_du_crtc_disable_planes.exit.i_crit_edge
  call void @drm_crtc_vblank_put(ptr noundef %crtc) #12
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 478) #12
  %34 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %crtc, align 8
  %event_lock.i.i.i = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 28
  %call3.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i.i.i) #12
  %event.i.i.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 9
  %36 = ptrtoint ptr %event.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %event.i.i.i, align 8
  %cmp6.i.not.i.i = icmp eq ptr %37, null
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i.i.i, i32 noundef %call3.i.i.i) #12
  br i1 %cmp6.i.not.i.i, label %rcar_du_crtc_disable_planes.exit.i.rcar_du_crtc_wait_page_flip.exit.i_crit_edge, label %if.then10.i.i

rcar_du_crtc_disable_planes.exit.i.rcar_du_crtc_wait_page_flip.exit.i_crit_edge: ; preds = %rcar_du_crtc_disable_planes.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_wait_page_flip.exit.i

if.then10.i.i:                                    ; preds = %rcar_du_crtc_disable_planes.exit.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i18.i) #12
  %38 = call ptr @memset(ptr %__wq_entry.i18.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i18.i, i32 noundef 0) #12
  %flip_wait.i.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 10
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %cleanup.i21.i, %if.then10.i.i
  %__ret11.0.i.i = phi i32 [ 5, %if.then10.i.i ], [ %call33.i.i, %cleanup.i21.i ]
  %call13.i.i = call i32 @prepare_to_wait_event(ptr noundef %flip_wait.i.i, ptr noundef nonnull %__wq_entry.i18.i, i32 noundef 2) #12
  %39 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %crtc, align 8
  %event_lock.i61.i.i = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 28
  %call3.i62.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i61.i.i) #12
  %41 = ptrtoint ptr %event.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %event.i.i.i, align 8
  %cmp6.i64.not.i.i = icmp eq ptr %42, null
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i61.i.i, i32 noundef %call3.i62.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.0.i.i)
  %tobool20.not.i.i = icmp eq i32 %__ret11.0.i.i, 0
  %43 = select i1 %cmp6.i64.not.i.i, i1 %tobool20.not.i.i, i1 false
  %__ret11.1.i.i = select i1 %43, i32 1, i32 %__ret11.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1.i.i)
  %tobool26.not.i20.i = icmp eq i32 %__ret11.1.i.i, 0
  %44 = select i1 %cmp6.i64.not.i.i, i1 true, i1 %tobool26.not.i20.i
  br i1 %44, label %if.end36.i.i, label %cleanup.i21.i

cleanup.i21.i:                                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call33.i.i = call i32 @schedule_timeout(i32 noundef %__ret11.1.i.i) #12
  br label %for.cond.i.i

if.end36.i.i:                                     ; preds = %for.cond.i.i
  call void @finish_wait(ptr noundef %flip_wait.i.i, ptr noundef nonnull %__wq_entry.i18.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i18.i) #12
  br i1 %tobool26.not.i20.i, label %do.end43.i.i, label %if.end36.i.i.rcar_du_crtc_wait_page_flip.exit.i_crit_edge

if.end36.i.i.rcar_du_crtc_wait_page_flip.exit.i_crit_edge: ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_wait_page_flip.exit.i

do.end43.i.i:                                     ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %33, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.39) #15
  call void @rcar_du_crtc_finish_page_flip(ptr noundef %crtc) #12
  br label %rcar_du_crtc_wait_page_flip.exit.i

rcar_du_crtc_wait_page_flip.exit.i:               ; preds = %do.end43.i.i, %if.end36.i.i.rcar_du_crtc_wait_page_flip.exit.i_crit_edge, %rcar_du_crtc_disable_planes.exit.i.rcar_du_crtc_wait_page_flip.exit.i_crit_edge
  call void @drm_crtc_vblank_off(ptr noundef %crtc) #12
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  %info.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %info.i.i, align 4
  %features.i.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %features.i.i, align 4
  %and.i.i = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %rcar_du_crtc_wait_page_flip.exit.i.if.end.i_crit_edge, label %if.then.i

rcar_du_crtc_wait_page_flip.exit.i.if.end.i_crit_edge: ; preds = %rcar_du_crtc_wait_page_flip.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %rcar_du_crtc_wait_page_flip.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @rcar_du_vsp_disable(ptr noundef %crtc) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %rcar_du_crtc_wait_page_flip.exit.i.if.end.i_crit_edge
  %cmm.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 15
  %53 = ptrtoint ptr %cmm.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cmm.i, align 8
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @rcar_cmm_disable(ptr noundef nonnull %54) #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 8
  %info.i22.i = getelementptr inbounds %struct.rcar_du_device, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %info.i22.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %info.i22.i, align 4
  %features.i23.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %features.i23.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %features.i23.i, align 4
  %and.i24.i = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i)
  %tobool.i25.not.i = icmp eq i32 %and.i24.i, 0
  br i1 %tobool.i25.not.i, label %if.end4.i.rcar_du_crtc_stop.exit_crit_edge, label %if.then7.i

if.end4.i.rcar_du_crtc_stop.exit_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_stop.exit

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %dsysr.i.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 7
  %61 = ptrtoint ptr %dsysr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dsysr.i.i, align 8
  %and.i27.i = and i32 %62, -193
  %or.i.i = or i32 %and.i27.i, 64
  store i32 %or.i.i, ptr %dsysr.i.i, align 8
  %63 = ptrtoint ptr %mmio_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mmio_offset.i.i.i, align 4
  %mmio.i.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %56, i32 0, i32 2
  %65 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %66, i32 %64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  call void @arm_heavy_mb() #12
  %67 = call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %67) #12, !srcloc !95
  br label %rcar_du_crtc_stop.exit

rcar_du_crtc_stop.exit:                           ; preds = %if.then7.i, %if.end4.i.rcar_du_crtc_stop.exit_crit_edge
  %68 = ptrtoint ptr %group.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %group.i.i, align 4
  call void @rcar_du_group_start_stop(ptr noundef %69, i1 noundef zeroext false) #12
  %70 = ptrtoint ptr %group.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %group.i.i, align 4
  call void @rcar_du_group_put(ptr noundef %71) #12
  %extclock.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 3
  %72 = ptrtoint ptr %extclock.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %extclock.i, align 8
  call void @clk_disable(ptr noundef %73) #12
  call void @clk_unprepare(ptr noundef %73) #12
  %clock.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 2
  %74 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clock.i, align 4
  call void @clk_disable(ptr noundef %75) #12
  call void @clk_unprepare(ptr noundef %75) #12
  %initialized.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 6
  %76 = ptrtoint ptr %initialized.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %initialized.i, align 4
  %info = getelementptr inbounds %struct.rcar_du_device, ptr %7, i32 0, i32 1
  %77 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %info, align 4
  %lvds_clk_mask = getelementptr inbounds %struct.rcar_du_device_info, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %lvds_clk_mask to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %lvds_clk_mask, align 4
  %81 = ptrtoint ptr %index.i.i28 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %index.i.i28, align 8
  %shl = shl nuw i32 1, %82
  %and = and i32 %shl, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %rcar_du_crtc_stop.exit.if.end_crit_edge, label %land.lhs.true

rcar_du_crtc_stop.exit.if.end_crit_edge:          ; preds = %rcar_du_crtc_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %rcar_du_crtc_stop.exit
  %outputs = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %5, i32 0, i32 2
  %83 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %outputs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp = icmp eq i32 %84, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.rcar_du_device, ptr %7, i32 0, i32 9, i32 %82
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx, align 4
  call void @rcar_lvds_clk_disable(ptr noundef %86) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %rcar_du_crtc_stop.exit.if.end_crit_edge
  %87 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %88, i32 0, i32 28
  call void @_raw_spin_lock_irq(ptr noundef %event_lock) #12
  %state6 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %89 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %state6, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %90, i32 0, i32 18
  %91 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %event, align 4
  %tobool7.not = icmp eq ptr %92, null
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %if.then8

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %92) #12
  %93 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %state6, align 4
  %event12 = getelementptr inbounds %struct.drm_crtc_state, ptr %94, i32 0, i32 18
  %95 = ptrtoint ptr %event12 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %event12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  %96 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %crtc, align 8
  %event_lock15 = getelementptr inbounds %struct.drm_device, ptr %97, i32 0, i32 28
  call void @_raw_spin_unlock_irq(ptr noundef %event_lock15) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_du_crtc_get(ptr noundef %rcrtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %initialized = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 6
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %clock = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 2
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end2_crit_edge, label %if.then3.i

if.end.i.if.end2_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %3) #12
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end2_crit_edge

clk_prepare_enable.exit.if.end2_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %clk_prepare_enable.exit.if.end2_crit_edge, %if.end.i.if.end2_crit_edge
  %extclock = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 3
  %4 = ptrtoint ptr %extclock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extclock, align 8
  %call.i1 = tail call i32 @clk_prepare(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i2 = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i2, label %if.end.i5, label %if.end2.clk_prepare_enable.exit8_crit_edge

if.end2.clk_prepare_enable.exit8_crit_edge:       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit8

if.end.i5:                                        ; preds = %if.end2
  %call1.i3 = tail call i32 @clk_enable(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool2.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool2.not.i4, label %if.end.i5.if.end6_crit_edge, label %if.then3.i6

if.end.i5.if.end6_crit_edge:                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then3.i6:                                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %5) #12
  br label %clk_prepare_enable.exit8

clk_prepare_enable.exit8:                         ; preds = %if.then3.i6, %if.end2.clk_prepare_enable.exit8_crit_edge
  %retval.0.i7 = phi i32 [ %call.i1, %if.end2.clk_prepare_enable.exit8_crit_edge ], [ %call1.i3, %if.then3.i6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i7)
  %cmp4 = icmp slt i32 %retval.0.i7, 0
  br i1 %cmp4, label %clk_prepare_enable.exit8.error_clock_crit_edge, label %clk_prepare_enable.exit8.if.end6_crit_edge

clk_prepare_enable.exit8.if.end6_crit_edge:       ; preds = %clk_prepare_enable.exit8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

clk_prepare_enable.exit8.error_clock_crit_edge:   ; preds = %clk_prepare_enable.exit8
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_clock

if.end6:                                          ; preds = %clk_prepare_enable.exit8.if.end6_crit_edge, %if.end.i5.if.end6_crit_edge
  %group = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 14
  %6 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group, align 4
  %call7 = tail call i32 @rcar_du_group_get(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %error_group, label %if.end10

if.end10:                                         ; preds = %if.end6
  %dev.i.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 8
  %mmio_offset.i.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 4
  %10 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i.i = add i32 %11, 144
  %mmio.i.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #12, !srcloc !95
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 8
  %16 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i13.i = add i32 %17, 152
  %mmio.i.i14.i = getelementptr inbounds %struct.rcar_du_device, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %mmio.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i14.i, align 8
  %add.ptr.i.i15.i = getelementptr i8, ptr %19, i32 %add.i13.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15.i, i32 0) #12, !srcloc !95
  tail call fastcc void @rcar_du_crtc_set_display_timing(ptr noundef %rcrtc) #12
  %20 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %group, align 4
  %call.i9 = tail call i32 @rcar_du_group_set_routing(ptr noundef %21) #12
  %22 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %group, align 4
  %index.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 5
  %24 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i, align 8
  %rem.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i10 = icmp eq i32 %rem.i, 0
  %cond.i = select i1 %tobool.not.i10, i32 69664, i32 69668
  tail call void @rcar_du_group_write(ptr noundef %23, i32 noundef %cond.i, i32 noundef 0) #12
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 8
  %info.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info.i.i, align 4
  %features.i.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %features.i.i, align 4
  %and.i.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end10.rcar_du_crtc_setup.exit_crit_edge, label %if.then.i

if.end10.rcar_du_crtc_setup.exit_crit_edge:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_du_crtc_setup.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rcar_du_vsp_enable(ptr noundef %rcrtc) #12
  br label %rcar_du_crtc_setup.exit

rcar_du_crtc_setup.exit:                          ; preds = %if.then.i, %if.end10.rcar_du_crtc_setup.exit_crit_edge
  tail call void @drm_crtc_vblank_on(ptr noundef %rcrtc) #12
  %32 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %initialized, align 4
  br label %cleanup

error_group:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %extclock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %extclock, align 8
  tail call void @clk_disable(ptr noundef %34) #12
  tail call void @clk_unprepare(ptr noundef %34) #12
  br label %error_clock

error_clock:                                      ; preds = %error_group, %clk_prepare_enable.exit8.error_clock_crit_edge
  %35 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clock, align 4
  tail call void @clk_disable(ptr noundef %36) #12
  tail call void @clk_unprepare(ptr noundef %36) #12
  br label %cleanup

cleanup:                                          ; preds = %error_clock, %rcar_du_crtc_setup.exit, %clk_prepare_enable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_du_vsp_atomic_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_group_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_du_crtc_set_display_timing(ptr noundef readonly %rcrtc) unnamed_addr #0 align 64 {
entry:
  %dpll = alloca %struct.dpll_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %rcrtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %dev = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %5, 1000
  %info = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %dpll_mask = getelementptr inbounds %struct.rcar_du_device_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %dpll_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dpll_mask, align 4
  %index = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 5
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 8
  %shl = shl nuw i32 1, %11
  %and = and i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else17, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dpll) #12
  %12 = call ptr @memset(ptr %dpll, i32 0, i32 16)
  %call = tail call ptr @soc_device_match(ptr noundef nonnull @rcar_du_r8a7795_es1) #12
  %tobool1.not = icmp eq ptr %call, null
  %mul3 = mul i32 %5, 2000
  %spec.select = select i1 %tobool1.not, i32 %mul, i32 %mul3
  %not.tobool1.not = xor i1 %tobool1.not, true
  %spec.select214 = zext i1 %not.tobool1.not to i32
  %extclock = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 3
  %13 = ptrtoint ptr %extclock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %extclock, align 8
  %call4 = tail call i32 @clk_get_rate(ptr noundef %14) #12
  call fastcc void @rcar_du_dpll_divider(ptr noundef %rcrtc, ptr noundef nonnull %dpll, i32 noundef %call4, i32 noundef %spec.select)
  %fdpll = getelementptr inbounds %struct.dpll_info, ptr %dpll, i32 0, i32 1
  %15 = ptrtoint ptr %fdpll to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fdpll, align 4
  %shl5 = shl i32 %16, 12
  %n = getelementptr inbounds %struct.dpll_info, ptr %dpll, i32 0, i32 2
  %17 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n, align 4
  %shl6 = shl i32 %18, 5
  %or = or i32 %shl6, %shl5
  %m = getelementptr inbounds %struct.dpll_info, ptr %dpll, i32 0, i32 3
  %19 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %m, align 4
  %shl8 = shl i32 %20, 3
  %or7 = or i32 %or, %shl8
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp eq i32 %22, 1
  %dpllcr.0.v = select i1 %cmp, i32 -1786511354, i32 -1791754236
  %dpllcr.0 = or i32 %or7, %dpllcr.0.v
  %group = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 14
  %23 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %group, align 4
  tail call void @rcar_du_group_write(ptr noundef %24, i32 noundef 131140, i32 noundef %dpllcr.0) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dpll) #12
  br label %do.body52

if.else17:                                        ; preds = %entry
  %lvds_clk_mask = getelementptr inbounds %struct.rcar_du_device_info, ptr %7, i32 0, i32 8
  %25 = ptrtoint ptr %lvds_clk_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lvds_clk_mask, align 4
  %and21 = and i32 %26, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %if.else17.do.body52_crit_edge

if.else17.do.body52_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body52

lor.lhs.false:                                    ; preds = %if.else17
  %dsi_clk_mask = getelementptr inbounds %struct.rcar_du_device_info, ptr %7, i32 0, i32 7
  %27 = ptrtoint ptr %dsi_clk_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dsi_clk_mask, align 4
  %and26 = and i32 %28, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %rcar_du_escr_divider.exit, label %lor.lhs.false.do.body52_crit_edge

lor.lhs.false.do.body52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body52

rcar_du_escr_divider.exit:                        ; preds = %lor.lhs.false
  %clock30 = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 2
  %29 = ptrtoint ptr %clock30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clock30, align 4
  %call.i = tail call i32 @clk_round_rate(ptr noundef %30, i32 noundef %mul) #12
  %div252.i = lshr exact i32 %mul, 1
  %add.i = add i32 %call.i, %div252.i
  %div3.i = udiv i32 %add.i, %mul
  %31 = tail call i32 @llvm.umax.i32(i32 %div3.i, i32 1) #12
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 64) #12
  %div14.i = udiv i32 %call.i, %32
  %sub.i = add nsw i32 %32, -1
  %or.i = or i32 %sub.i, 1048576
  %extclock31 = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 3
  %33 = ptrtoint ptr %extclock31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %extclock31, align 8
  %tobool32.not = icmp eq ptr %34, null
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i, i32 %mul)
  %cmp.i220 = icmp eq i32 %div14.i, %mul
  %or.cond = select i1 %tobool32.not, i1 true, i1 %cmp.i220
  br i1 %or.cond, label %rcar_du_escr_divider.exit.do.body_crit_edge, label %if.end.i228

rcar_du_escr_divider.exit.do.body_crit_edge:      ; preds = %rcar_du_escr_divider.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.i228:                                      ; preds = %rcar_du_escr_divider.exit
  %sub15.i = sub i32 %div14.i, %mul
  %35 = tail call i32 @llvm.abs.i32(i32 %sub15.i, i1 false) #12
  %call.i221 = tail call i32 @clk_round_rate(ptr noundef nonnull %34, i32 noundef %mul) #12
  %add.i223 = add i32 %call.i221, %div252.i
  %div3.i224 = udiv i32 %add.i223, %mul
  %36 = tail call i32 @llvm.umax.i32(i32 %div3.i224, i32 1) #12
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 64) #12
  %div14.i225 = udiv i32 %call.i221, %37
  %sub15.i226 = sub i32 %div14.i225, %mul
  %38 = tail call i32 @llvm.abs.i32(i32 %sub15.i226, i1 false) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %35)
  %cmp24.i227 = icmp ult i32 %38, %35
  br i1 %cmp24.i227, label %if.then25.i232, label %if.end.i228.do.body_crit_edge

if.end.i228.do.body_crit_edge:                    ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then25.i232:                                   ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i229 = add nsw i32 %37, -1
  br label %do.body

do.body:                                          ; preds = %if.then25.i232, %if.end.i228.do.body_crit_edge, %rcar_du_escr_divider.exit.do.body_crit_edge
  %params.sroa.17.2 = phi i32 [ %or.i, %rcar_du_escr_divider.exit.do.body_crit_edge ], [ %sub.i229, %if.then25.i232 ], [ %or.i, %if.end.i228.do.body_crit_edge ]
  %params.sroa.7.2 = phi i32 [ %call.i, %rcar_du_escr_divider.exit.do.body_crit_edge ], [ %call.i221, %if.then25.i232 ], [ %call.i, %if.end.i228.do.body_crit_edge ]
  %params.sroa.0.2 = phi ptr [ %30, %rcar_du_escr_divider.exit.do.body_crit_edge ], [ %34, %if.then25.i232 ], [ %30, %if.end.i228.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_crtc_set_display_timing.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_crtc_set_display_timing, %if.then40)) #12
          to label %do.end [label %if.then40], !srcloc !105

if.then40:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %43 = ptrtoint ptr %clock30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clock30, align 4
  %cmp44 = icmp eq ptr %params.sroa.0.2, %44
  %cond = select i1 %cmp44, ptr @.str.29, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_crtc_set_display_timing.__UNIQUE_ID_ddebug322, ptr noundef %42, ptr noundef nonnull @.str.28, i32 noundef %mul, ptr noundef nonnull %cond, i32 noundef %params.sroa.7.2) #12
  br label %do.end

do.end:                                           ; preds = %if.then40, %do.body
  %call48 = tail call i32 @clk_set_rate(ptr noundef %params.sroa.0.2, i32 noundef %params.sroa.7.2) #12
  br label %do.body52

do.body52:                                        ; preds = %do.end, %lor.lhs.false.do.body52_crit_edge, %if.else17.do.body52_crit_edge, %if.then
  %escr.0 = phi i32 [ %spec.select214, %if.then ], [ %params.sroa.17.2, %do.end ], [ 0, %lor.lhs.false.do.body52_crit_edge ], [ 0, %if.else17.do.body52_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_crtc_set_display_timing.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_crtc_set_display_timing, %if.then64)) #12
          to label %do.end69 [label %if.then64], !srcloc !105

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_crtc_set_display_timing.__UNIQUE_ID_ddebug323, ptr noundef %48, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.27, i32 noundef %escr.0) #12
  br label %do.end69

do.end69:                                         ; preds = %if.then64, %do.body52
  %49 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index, align 8
  %rem = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool71.not = icmp eq i32 %rem, 0
  %cond72 = select i1 %tobool71.not, i32 65536, i32 4096
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 8
  %mmio_offset.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 4
  %53 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mmio_offset.i, align 4
  %add.i234 = add i32 %cond72, %54
  %mmio.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %52, i32 0, i32 2
  %55 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 %add.i234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %57 = tail call i32 @llvm.bswap.i32(i32 %escr.0) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %57) #12, !srcloc !95
  %58 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %index, align 8
  %rem74 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem74)
  %tobool75.not = icmp eq i32 %rem74, 0
  %cond76 = select i1 %tobool75.not, i32 65540, i32 4100
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 8
  %62 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mmio_offset.i, align 4
  %add.i237 = add i32 %cond76, %63
  %mmio.i.i238 = getelementptr inbounds %struct.rcar_du_device, ptr %61, i32 0, i32 2
  %64 = ptrtoint ptr %mmio.i.i238 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i.i238, align 8
  %add.ptr.i.i239 = getelementptr i8, ptr %65, i32 %add.i237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i239, i32 0) #12, !srcloc !95
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 11
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 4
  %and77 = shl i32 %67, 16
  %68 = and i32 %and77, 262144
  %and81 = shl i32 %67, 17
  %69 = and i32 %and81, 131072
  %and86 = shl i32 %67, 4
  %70 = and i32 %and86, 256
  %or84 = or i32 %69, %68
  %or89 = or i32 %or84, %70
  %or91 = or i32 %or89, 16777216
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 8
  %73 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mmio_offset.i, align 4
  %add.i242 = add i32 %74, 4
  %mmio.i.i243 = getelementptr inbounds %struct.rcar_du_device, ptr %72, i32 0, i32 2
  %75 = ptrtoint ptr %mmio.i.i243 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio.i.i243, align 8
  %add.ptr.i.i244 = getelementptr i8, ptr %76, i32 %add.i242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %77 = tail call i32 @llvm.bswap.i32(i32 %or91) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i244, i32 %77) #12, !srcloc !95
  %group92 = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 14
  %78 = ptrtoint ptr %group92 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %group92, align 4
  %cmms_mask = getelementptr inbounds %struct.rcar_du_group, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %cmms_mask to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cmms_mask, align 8
  %82 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %index, align 8
  %rem94 = and i32 %83, 1
  %shl95 = shl nuw nsw i32 1, %rem94
  %and96 = and i32 %shl95, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  %spec.select215.neg303 = select i1 %tobool97.not, i32 -19, i32 -44
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 4
  %84 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %htotal, align 2
  %conv = zext i16 %85 to i32
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 2
  %86 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %hsync_start, align 2
  %conv100 = zext i16 %87 to i32
  %.neg = sub nsw i32 %conv, %conv100
  %sub101 = add nsw i32 %.neg, %spec.select215.neg303
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 8
  %90 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mmio_offset.i, align 4
  %add.i247 = add i32 %91, 64
  %mmio.i.i248 = getelementptr inbounds %struct.rcar_du_device, ptr %89, i32 0, i32 2
  %92 = ptrtoint ptr %mmio.i.i248 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio.i.i248, align 8
  %add.ptr.i.i249 = getelementptr i8, ptr %93, i32 %add.i247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %94 = tail call i32 @llvm.bswap.i32(i32 %sub101) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i249, i32 %94) #12, !srcloc !95
  %95 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %htotal, align 2
  %conv103 = zext i16 %96 to i32
  %97 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %hsync_start, align 2
  %conv105 = zext i16 %98 to i32
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 1
  %99 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %hdisplay, align 4
  %conv107 = zext i16 %100 to i32
  %.neg302 = add nsw i32 %spec.select215.neg303, %conv103
  %101 = sub nsw i32 %.neg302, %conv105
  %sub109 = add nsw i32 %101, %conv107
  %102 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev, align 8
  %104 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mmio_offset.i, align 4
  %add.i252 = add i32 %105, 68
  %mmio.i.i253 = getelementptr inbounds %struct.rcar_du_device, ptr %103, i32 0, i32 2
  %106 = ptrtoint ptr %mmio.i.i253 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio.i.i253, align 8
  %add.ptr.i.i254 = getelementptr i8, ptr %107, i32 %add.i252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %108 = tail call i32 @llvm.bswap.i32(i32 %sub109) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i254, i32 %108) #12, !srcloc !95
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 3
  %109 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %hsync_end, align 4
  %conv110 = zext i16 %110 to i32
  %111 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %hsync_start, align 2
  %conv112 = zext i16 %112 to i32
  %113 = xor i32 %conv112, -1
  %sub114 = add nsw i32 %113, %conv110
  %114 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev, align 8
  %116 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mmio_offset.i, align 4
  %add.i257 = add i32 %117, 84
  %mmio.i.i258 = getelementptr inbounds %struct.rcar_du_device, ptr %115, i32 0, i32 2
  %118 = ptrtoint ptr %mmio.i.i258 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio.i.i258, align 8
  %add.ptr.i.i259 = getelementptr i8, ptr %119, i32 %add.i257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %120 = tail call i32 @llvm.bswap.i32(i32 %sub114) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i259, i32 %120) #12, !srcloc !95
  %121 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %htotal, align 2
  %conv116 = zext i16 %122 to i32
  %sub117 = add nsw i32 %conv116, -1
  %123 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev, align 8
  %125 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mmio_offset.i, align 4
  %add.i262 = add i32 %126, 80
  %mmio.i.i263 = getelementptr inbounds %struct.rcar_du_device, ptr %124, i32 0, i32 2
  %127 = ptrtoint ptr %mmio.i.i263 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mmio.i.i263, align 8
  %add.ptr.i.i264 = getelementptr i8, ptr %128, i32 %add.i262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %129 = tail call i32 @llvm.bswap.i32(i32 %sub117) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i264, i32 %129) #12, !srcloc !95
  %crtc_vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 25
  %130 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %crtc_vtotal, align 4
  %conv118 = zext i16 %131 to i32
  %crtc_vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 24
  %132 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %crtc_vsync_end, align 2
  %conv119 = zext i16 %133 to i32
  %sub120 = add nsw i32 %conv118, -2
  %sub121 = sub nsw i32 %sub120, %conv119
  %134 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev, align 8
  %136 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mmio_offset.i, align 4
  %add.i267 = add i32 %137, 72
  %mmio.i.i268 = getelementptr inbounds %struct.rcar_du_device, ptr %135, i32 0, i32 2
  %138 = ptrtoint ptr %mmio.i.i268 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mmio.i.i268, align 8
  %add.ptr.i.i269 = getelementptr i8, ptr %139, i32 %add.i267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %140 = tail call i32 @llvm.bswap.i32(i32 %sub121) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i269, i32 %140) #12, !srcloc !95
  %141 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %crtc_vtotal, align 4
  %conv123 = zext i16 %142 to i32
  %143 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %crtc_vsync_end, align 2
  %conv125 = zext i16 %144 to i32
  %crtc_vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 20
  %145 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %crtc_vdisplay, align 2
  %conv127 = zext i16 %146 to i32
  %sub126 = add nsw i32 %conv123, -2
  %add128 = sub nsw i32 %sub126, %conv125
  %sub129 = add nsw i32 %add128, %conv127
  %147 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev, align 8
  %149 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %mmio_offset.i, align 4
  %add.i272 = add i32 %150, 76
  %mmio.i.i273 = getelementptr inbounds %struct.rcar_du_device, ptr %148, i32 0, i32 2
  %151 = ptrtoint ptr %mmio.i.i273 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mmio.i.i273, align 8
  %add.ptr.i.i274 = getelementptr i8, ptr %152, i32 %add.i272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %153 = tail call i32 @llvm.bswap.i32(i32 %sub129) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i274, i32 %153) #12, !srcloc !95
  %154 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %crtc_vtotal, align 4
  %conv131 = zext i16 %155 to i32
  %156 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %crtc_vsync_end, align 2
  %conv133 = zext i16 %157 to i32
  %crtc_vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 23
  %158 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %crtc_vsync_start, align 4
  %conv135 = zext i16 %159 to i32
  %160 = xor i32 %conv133, -1
  %add136 = add nsw i32 %160, %conv131
  %sub137 = add nsw i32 %add136, %conv135
  %161 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev, align 8
  %163 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %mmio_offset.i, align 4
  %add.i277 = add i32 %164, 92
  %mmio.i.i278 = getelementptr inbounds %struct.rcar_du_device, ptr %162, i32 0, i32 2
  %165 = ptrtoint ptr %mmio.i.i278 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mmio.i.i278, align 8
  %add.ptr.i.i279 = getelementptr i8, ptr %166, i32 %add.i277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %167 = tail call i32 @llvm.bswap.i32(i32 %sub137) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i279, i32 %167) #12, !srcloc !95
  %168 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %crtc_vtotal, align 4
  %conv139 = zext i16 %169 to i32
  %sub140 = add nsw i32 %conv139, -1
  %170 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev, align 8
  %172 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %mmio_offset.i, align 4
  %add.i282 = add i32 %173, 88
  %mmio.i.i283 = getelementptr inbounds %struct.rcar_du_device, ptr %171, i32 0, i32 2
  %174 = ptrtoint ptr %mmio.i.i283 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mmio.i.i283, align 8
  %add.ptr.i.i284 = getelementptr i8, ptr %175, i32 %add.i282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %176 = tail call i32 @llvm.bswap.i32(i32 %sub140) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i284, i32 %176) #12, !srcloc !95
  %177 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %htotal, align 2
  %conv142 = zext i16 %178 to i32
  %179 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %hsync_start, align 2
  %conv144 = zext i16 %180 to i32
  %181 = xor i32 %conv144, -1
  %sub146 = add nsw i32 %181, %conv142
  %182 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev, align 8
  %184 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %mmio_offset.i, align 4
  %add.i287 = add i32 %185, 120
  %mmio.i.i288 = getelementptr inbounds %struct.rcar_du_device, ptr %183, i32 0, i32 2
  %186 = ptrtoint ptr %mmio.i.i288 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mmio.i.i288, align 8
  %add.ptr.i.i289 = getelementptr i8, ptr %187, i32 %add.i287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %188 = tail call i32 @llvm.bswap.i32(i32 %sub146) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i289, i32 %188) #12, !srcloc !95
  %189 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %hdisplay, align 4
  %conv148 = zext i16 %190 to i32
  %191 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev, align 8
  %193 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %mmio_offset.i, align 4
  %add.i292 = add i32 %194, 124
  %mmio.i.i293 = getelementptr inbounds %struct.rcar_du_device, ptr %192, i32 0, i32 2
  %195 = ptrtoint ptr %mmio.i.i293 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mmio.i.i293, align 8
  %add.ptr.i.i294 = getelementptr i8, ptr %196, i32 %add.i292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %197 = tail call i32 @llvm.bswap.i32(i32 %conv148) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i294, i32 %197) #12, !srcloc !95
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_group_set_routing(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_du_group_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_du_vsp_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_du_dpll_divider(ptr nocapture noundef readonly %rcrtc, ptr nocapture noundef %dpll, i32 noundef %input, i32 noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %n19 = getelementptr inbounds %struct.dpll_info, ptr %dpll, i32 0, i32 2
  %m20 = getelementptr inbounds %struct.dpll_info, ptr %dpll, i32 0, i32 3
  %fdpll21 = getelementptr inbounds %struct.dpll_info, ptr %dpll, i32 0, i32 1
  br label %for.body3

for.body3:                                        ; preds = %for.inc30.for.body3_crit_edge, %entry
  %best_diff.187 = phi i32 [ -1, %entry ], [ %best_diff.5.ph, %for.inc30.for.body3_crit_edge ]
  %n.086 = phi i32 [ 119, %entry ], [ %dec, %for.inc30.for.body3_crit_edge ]
  %add = add nuw nsw i32 %n.086, 1
  %mul = mul i32 %add, %input
  %0 = add i32 %mul, -2048000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2047999001, i32 %0)
  %1 = icmp ult i32 %0, -2047999001
  br i1 %1, label %for.body3.for.inc30_crit_edge, label %for.body3.for.body9_crit_edge

for.body3.for.body9_crit_edge:                    ; preds = %for.body3
  br label %for.body9

for.body3.for.inc30_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc30

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %for.body3.for.body9_crit_edge
  %best_diff.285 = phi i32 [ %best_diff.4.ph, %for.inc.for.body9_crit_edge ], [ %best_diff.187, %for.body3.for.body9_crit_edge ]
  %fdpll.084 = phi i32 [ %add10, %for.inc.for.body9_crit_edge ], [ 1, %for.body3.for.body9_crit_edge ]
  %add10 = add nuw nsw i32 %fdpll.084, 1
  %div11 = udiv i32 %mul, %add10
  call void @__sanitizer_cov_trace_const_cmp4(i32 399999999, i32 %div11)
  %cmp12 = icmp ugt i32 %div11, 399999999
  br i1 %cmp12, label %for.body9.for.inc_crit_edge, label %if.end14

for.body9.for.inc_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end14:                                         ; preds = %for.body9
  %sub = sub i32 %div11, %target
  %2 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.285, i32 %2)
  %cmp17 = icmp ugt i32 %best_diff.285, %2
  br i1 %cmp17, label %if.then18, label %if.end14.if.end23_crit_edge

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %n19 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %n.086, ptr %n19, align 4
  %4 = ptrtoint ptr %m20 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %m20, align 4
  %5 = ptrtoint ptr %fdpll21 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %fdpll.084, ptr %fdpll21, align 4
  %6 = ptrtoint ptr %dpll to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div11, ptr %dpll, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end14.if.end23_crit_edge
  %best_diff.3 = phi i32 [ %2, %if.then18 ], [ %best_diff.285, %if.end14.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div11, i32 %target)
  %cmp24 = icmp eq i32 %div11, %target
  br i1 %cmp24, label %if.end23.do.body_crit_edge, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end23.do.body_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %for.body9.for.inc_crit_edge
  %best_diff.4.ph = phi i32 [ %best_diff.3, %if.end23.for.inc_crit_edge ], [ %best_diff.285, %for.body9.for.inc_crit_edge ]
  %exitcond.not = icmp eq i32 %add10, 32
  br i1 %exitcond.not, label %for.inc.for.inc30_crit_edge, label %for.inc.for.body9_crit_edge

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9

for.inc.for.inc30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc30

for.inc30:                                        ; preds = %for.inc.for.inc30_crit_edge, %for.body3.for.inc30_crit_edge
  %best_diff.5.ph = phi i32 [ %best_diff.187, %for.body3.for.inc30_crit_edge ], [ %best_diff.4.ph, %for.inc.for.inc30_crit_edge ]
  %dec = add nsw i32 %n.086, -1
  %cmp2 = icmp ugt i32 %dec, 38
  br i1 %cmp2, label %for.inc30.for.body3_crit_edge, label %for.inc30.for.body3.1_crit_edge

for.inc30.for.body3.1_crit_edge:                  ; preds = %for.inc30
  br label %for.body3.1

for.inc30.for.body3_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3

for.body3.1:                                      ; preds = %for.inc30.1.for.body3.1_crit_edge, %for.inc30.for.body3.1_crit_edge
  %best_diff.187.1 = phi i32 [ %best_diff.5.ph.1, %for.inc30.1.for.body3.1_crit_edge ], [ %best_diff.5.ph, %for.inc30.for.body3.1_crit_edge ]
  %n.086.1 = phi i32 [ %dec.1, %for.inc30.1.for.body3.1_crit_edge ], [ 119, %for.inc30.for.body3.1_crit_edge ]
  %add.1 = add nuw nsw i32 %n.086.1, 1
  %mul.1 = mul i32 %add.1, %input
  %div.198 = lshr i32 %mul.1, 1
  %7 = add nsw i32 %div.198, -2048000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2047999001, i32 %7)
  %8 = icmp ult i32 %7, -2047999001
  br i1 %8, label %for.body3.1.for.inc30.1_crit_edge, label %for.body3.1.for.body9.1_crit_edge

for.body3.1.for.body9.1_crit_edge:                ; preds = %for.body3.1
  br label %for.body9.1

for.body3.1.for.inc30.1_crit_edge:                ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc30.1

for.body9.1:                                      ; preds = %for.inc.1.for.body9.1_crit_edge, %for.body3.1.for.body9.1_crit_edge
  %best_diff.285.1 = phi i32 [ %best_diff.4.ph.1, %for.inc.1.for.body9.1_crit_edge ], [ %best_diff.187.1, %for.body3.1.for.body9.1_crit_edge ]
  %fdpll.084.1 = phi i32 [ %add10.1, %for.inc.1.for.body9.1_crit_edge ], [ 1, %for.body3.1.for.body9.1_crit_edge ]
  %add10.1 = add nuw nsw i32 %fdpll.084.1, 1
  %div11.1 = udiv i32 %div.198, %add10.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 399999999, i32 %div11.1)
  %cmp12.1 = icmp ugt i32 %div11.1, 399999999
  br i1 %cmp12.1, label %for.body9.1.for.inc.1_crit_edge, label %if.end14.1

for.body9.1.for.inc.1_crit_edge:                  ; preds = %for.body9.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end14.1:                                       ; preds = %for.body9.1
  %sub.1 = sub i32 %div11.1, %target
  %9 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.285.1, i32 %9)
  %cmp17.1 = icmp ugt i32 %best_diff.285.1, %9
  br i1 %cmp17.1, label %if.then18.1, label %if.end14.1.if.end23.1_crit_edge

if.end14.1.if.end23.1_crit_edge:                  ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.1

if.then18.1:                                      ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %n19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %n.086.1, ptr %n19, align 4
  %11 = ptrtoint ptr %m20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %m20, align 4
  %12 = ptrtoint ptr %fdpll21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %fdpll.084.1, ptr %fdpll21, align 4
  %13 = ptrtoint ptr %dpll to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div11.1, ptr %dpll, align 4
  br label %if.end23.1

if.end23.1:                                       ; preds = %if.then18.1, %if.end14.1.if.end23.1_crit_edge
  %best_diff.3.1 = phi i32 [ %9, %if.then18.1 ], [ %best_diff.285.1, %if.end14.1.if.end23.1_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div11.1, i32 %target)
  %cmp24.1 = icmp eq i32 %div11.1, %target
  br i1 %cmp24.1, label %if.end23.1.do.body_crit_edge, label %if.end23.1.for.inc.1_crit_edge

if.end23.1.for.inc.1_crit_edge:                   ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end23.1.do.body_crit_edge:                     ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.inc.1:                                        ; preds = %if.end23.1.for.inc.1_crit_edge, %for.body9.1.for.inc.1_crit_edge
  %best_diff.4.ph.1 = phi i32 [ %best_diff.3.1, %if.end23.1.for.inc.1_crit_edge ], [ %best_diff.285.1, %for.body9.1.for.inc.1_crit_edge ]
  %exitcond.1.not = icmp eq i32 %add10.1, 32
  br i1 %exitcond.1.not, label %for.inc.1.for.inc30.1_crit_edge, label %for.inc.1.for.body9.1_crit_edge

for.inc.1.for.body9.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9.1

for.inc.1.for.inc30.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc30.1

for.inc30.1:                                      ; preds = %for.inc.1.for.inc30.1_crit_edge, %for.body3.1.for.inc30.1_crit_edge
  %best_diff.5.ph.1 = phi i32 [ %best_diff.187.1, %for.body3.1.for.inc30.1_crit_edge ], [ %best_diff.4.ph.1, %for.inc.1.for.inc30.1_crit_edge ]
  %dec.1 = add nsw i32 %n.086.1, -1
  %cmp2.1 = icmp ugt i32 %dec.1, 38
  br i1 %cmp2.1, label %for.inc30.1.for.body3.1_crit_edge, label %for.inc30.1.for.body3.2_crit_edge

for.inc30.1.for.body3.2_crit_edge:                ; preds = %for.inc30.1
  br label %for.body3.2

for.inc30.1.for.body3.1_crit_edge:                ; preds = %for.inc30.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.1

for.body3.2:                                      ; preds = %for.inc30.2.for.body3.2_crit_edge, %for.inc30.1.for.body3.2_crit_edge
  %best_diff.187.2 = phi i32 [ %best_diff.5.ph.2, %for.inc30.2.for.body3.2_crit_edge ], [ %best_diff.5.ph.1, %for.inc30.1.for.body3.2_crit_edge ]
  %n.086.2 = phi i32 [ %dec.2, %for.inc30.2.for.body3.2_crit_edge ], [ 119, %for.inc30.1.for.body3.2_crit_edge ]
  %add.2 = add nuw nsw i32 %n.086.2, 1
  %mul.2 = mul i32 %add.2, %input
  %div.2 = udiv i32 %mul.2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %mul.2)
  %14 = icmp ult i32 %mul.2, 3000
  br i1 %14, label %for.body3.2.for.inc30.2_crit_edge, label %for.body3.2.for.body9.2_crit_edge

for.body3.2.for.body9.2_crit_edge:                ; preds = %for.body3.2
  br label %for.body9.2

for.body3.2.for.inc30.2_crit_edge:                ; preds = %for.body3.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc30.2

for.body9.2:                                      ; preds = %for.inc.2.for.body9.2_crit_edge, %for.body3.2.for.body9.2_crit_edge
  %best_diff.285.2 = phi i32 [ %best_diff.4.ph.2, %for.inc.2.for.body9.2_crit_edge ], [ %best_diff.187.2, %for.body3.2.for.body9.2_crit_edge ]
  %fdpll.084.2 = phi i32 [ %add10.2, %for.inc.2.for.body9.2_crit_edge ], [ 1, %for.body3.2.for.body9.2_crit_edge ]
  %add10.2 = add nuw nsw i32 %fdpll.084.2, 1
  %div11.2 = udiv i32 %div.2, %add10.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 399999999, i32 %div11.2)
  %cmp12.2 = icmp ugt i32 %div11.2, 399999999
  br i1 %cmp12.2, label %for.body9.2.for.inc.2_crit_edge, label %if.end14.2

for.body9.2.for.inc.2_crit_edge:                  ; preds = %for.body9.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end14.2:                                       ; preds = %for.body9.2
  %sub.2 = sub i32 %div11.2, %target
  %15 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.285.2, i32 %15)
  %cmp17.2 = icmp ugt i32 %best_diff.285.2, %15
  br i1 %cmp17.2, label %if.then18.2, label %if.end14.2.if.end23.2_crit_edge

if.end14.2.if.end23.2_crit_edge:                  ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.2

if.then18.2:                                      ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %n19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %n.086.2, ptr %n19, align 4
  %17 = ptrtoint ptr %m20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %m20, align 4
  %18 = ptrtoint ptr %fdpll21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %fdpll.084.2, ptr %fdpll21, align 4
  %19 = ptrtoint ptr %dpll to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div11.2, ptr %dpll, align 4
  br label %if.end23.2

if.end23.2:                                       ; preds = %if.then18.2, %if.end14.2.if.end23.2_crit_edge
  %best_diff.3.2 = phi i32 [ %15, %if.then18.2 ], [ %best_diff.285.2, %if.end14.2.if.end23.2_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div11.2, i32 %target)
  %cmp24.2 = icmp eq i32 %div11.2, %target
  br i1 %cmp24.2, label %if.end23.2.do.body_crit_edge, label %if.end23.2.for.inc.2_crit_edge

if.end23.2.for.inc.2_crit_edge:                   ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end23.2.do.body_crit_edge:                     ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.inc.2:                                        ; preds = %if.end23.2.for.inc.2_crit_edge, %for.body9.2.for.inc.2_crit_edge
  %best_diff.4.ph.2 = phi i32 [ %best_diff.3.2, %if.end23.2.for.inc.2_crit_edge ], [ %best_diff.285.2, %for.body9.2.for.inc.2_crit_edge ]
  %exitcond.2.not = icmp eq i32 %add10.2, 32
  br i1 %exitcond.2.not, label %for.inc.2.for.inc30.2_crit_edge, label %for.inc.2.for.body9.2_crit_edge

for.inc.2.for.body9.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9.2

for.inc.2.for.inc30.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc30.2

for.inc30.2:                                      ; preds = %for.inc.2.for.inc30.2_crit_edge, %for.body3.2.for.inc30.2_crit_edge
  %best_diff.5.ph.2 = phi i32 [ %best_diff.187.2, %for.body3.2.for.inc30.2_crit_edge ], [ %best_diff.4.ph.2, %for.inc.2.for.inc30.2_crit_edge ]
  %dec.2 = add nsw i32 %n.086.2, -1
  %cmp2.2 = icmp ugt i32 %dec.2, 38
  br i1 %cmp2.2, label %for.inc30.2.for.body3.2_crit_edge, label %for.inc30.2.for.body3.3_crit_edge

for.inc30.2.for.body3.3_crit_edge:                ; preds = %for.inc30.2
  br label %for.body3.3

for.inc30.2.for.body3.2_crit_edge:                ; preds = %for.inc30.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.2

for.body3.3:                                      ; preds = %for.inc30.3.for.body3.3_crit_edge, %for.inc30.2.for.body3.3_crit_edge
  %best_diff.187.3 = phi i32 [ %best_diff.5.ph.3, %for.inc30.3.for.body3.3_crit_edge ], [ %best_diff.5.ph.2, %for.inc30.2.for.body3.3_crit_edge ]
  %n.086.3 = phi i32 [ %dec.3, %for.inc30.3.for.body3.3_crit_edge ], [ 119, %for.inc30.2.for.body3.3_crit_edge ]
  %add.3 = add nuw nsw i32 %n.086.3, 1
  %mul.3 = mul i32 %add.3, %input
  %div.399 = lshr i32 %mul.3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %mul.3)
  %20 = icmp ult i32 %mul.3, 4000
  br i1 %20, label %for.body3.3.for.inc30.3_crit_edge, label %for.body3.3.for.body9.3_crit_edge

for.body3.3.for.body9.3_crit_edge:                ; preds = %for.body3.3
  br label %for.body9.3

for.body3.3.for.inc30.3_crit_edge:                ; preds = %for.body3.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc30.3

for.body9.3:                                      ; preds = %for.inc.3.for.body9.3_crit_edge, %for.body3.3.for.body9.3_crit_edge
  %best_diff.285.3 = phi i32 [ %best_diff.4.ph.3, %for.inc.3.for.body9.3_crit_edge ], [ %best_diff.187.3, %for.body3.3.for.body9.3_crit_edge ]
  %fdpll.084.3 = phi i32 [ %add10.3, %for.inc.3.for.body9.3_crit_edge ], [ 1, %for.body3.3.for.body9.3_crit_edge ]
  %add10.3 = add nuw nsw i32 %fdpll.084.3, 1
  %div11.3 = udiv i32 %div.399, %add10.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 399999999, i32 %div11.3)
  %cmp12.3 = icmp ugt i32 %div11.3, 399999999
  br i1 %cmp12.3, label %for.body9.3.for.inc.3_crit_edge, label %if.end14.3

for.body9.3.for.inc.3_crit_edge:                  ; preds = %for.body9.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end14.3:                                       ; preds = %for.body9.3
  %sub.3 = sub i32 %div11.3, %target
  %21 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.285.3, i32 %21)
  %cmp17.3 = icmp ugt i32 %best_diff.285.3, %21
  br i1 %cmp17.3, label %if.then18.3, label %if.end14.3.if.end23.3_crit_edge

if.end14.3.if.end23.3_crit_edge:                  ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.3

if.then18.3:                                      ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %n19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %n.086.3, ptr %n19, align 4
  %23 = ptrtoint ptr %m20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %m20, align 4
  %24 = ptrtoint ptr %fdpll21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %fdpll.084.3, ptr %fdpll21, align 4
  %25 = ptrtoint ptr %dpll to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div11.3, ptr %dpll, align 4
  br label %if.end23.3

if.end23.3:                                       ; preds = %if.then18.3, %if.end14.3.if.end23.3_crit_edge
  %best_diff.3.3 = phi i32 [ %21, %if.then18.3 ], [ %best_diff.285.3, %if.end14.3.if.end23.3_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div11.3, i32 %target)
  %cmp24.3 = icmp eq i32 %div11.3, %target
  br i1 %cmp24.3, label %if.end23.3.do.body_crit_edge, label %if.end23.3.for.inc.3_crit_edge

if.end23.3.for.inc.3_crit_edge:                   ; preds = %if.end23.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end23.3.do.body_crit_edge:                     ; preds = %if.end23.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.inc.3:                                        ; preds = %if.end23.3.for.inc.3_crit_edge, %for.body9.3.for.inc.3_crit_edge
  %best_diff.4.ph.3 = phi i32 [ %best_diff.3.3, %if.end23.3.for.inc.3_crit_edge ], [ %best_diff.285.3, %for.body9.3.for.inc.3_crit_edge ]
  %exitcond.3.not = icmp eq i32 %add10.3, 32
  br i1 %exitcond.3.not, label %for.inc.3.for.inc30.3_crit_edge, label %for.inc.3.for.body9.3_crit_edge

for.inc.3.for.body9.3_crit_edge:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9.3

for.inc.3.for.inc30.3_crit_edge:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc30.3

for.inc30.3:                                      ; preds = %for.inc.3.for.inc30.3_crit_edge, %for.body3.3.for.inc30.3_crit_edge
  %best_diff.5.ph.3 = phi i32 [ %best_diff.187.3, %for.body3.3.for.inc30.3_crit_edge ], [ %best_diff.4.ph.3, %for.inc.3.for.inc30.3_crit_edge ]
  %dec.3 = add nsw i32 %n.086.3, -1
  %cmp2.3 = icmp ugt i32 %dec.3, 38
  br i1 %cmp2.3, label %for.inc30.3.for.body3.3_crit_edge, label %for.inc30.3.do.body_crit_edge

for.inc30.3.do.body_crit_edge:                    ; preds = %for.inc30.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.inc30.3.for.body3.3_crit_edge:                ; preds = %for.inc30.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.3

do.body:                                          ; preds = %for.inc30.3.do.body_crit_edge, %if.end23.3.do.body_crit_edge, %if.end23.2.do.body_crit_edge, %if.end23.1.do.body_crit_edge, %if.end23.do.body_crit_edge
  %best_diff.6 = phi i32 [ %best_diff.3.3, %if.end23.3.do.body_crit_edge ], [ %best_diff.5.ph.3, %for.inc30.3.do.body_crit_edge ], [ %best_diff.3.2, %if.end23.2.do.body_crit_edge ], [ %best_diff.3.1, %if.end23.1.do.body_crit_edge ], [ %best_diff.3, %if.end23.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_dpll_divider.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_dpll_divider, %if.then38)) #12
          to label %do.end [label %if.then38], !srcloc !105

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc, i32 0, i32 1
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %30 = ptrtoint ptr %dpll to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dpll, align 4
  %32 = ptrtoint ptr %fdpll21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fdpll21, align 4
  %34 = ptrtoint ptr %n19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n19, align 4
  %36 = ptrtoint ptr %m20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %m20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_dpll_divider.__UNIQUE_ID_ddebug317, ptr noundef %29, ptr noundef nonnull @.str.35, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %best_diff.6) #12
  br label %do.end

do.end:                                           ; preds = %if.then38, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_cmm_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_du_vsp_atomic_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_du_group_restart(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_cmm_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_lvds_clk_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_du_group_start_stop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_lvds_clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_du_vsp_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_cmm_disable(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_du_group_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !58, !59, !61, !62, !64, !66, !68, !70, !71, !72, !74, !75, !76, !77, !78, !80, !81, !82, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @rcar_du_crtc_create.mmio_offsets, !1, !"mmio_offsets", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 1205, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 1223, i32 21}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 1231, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rcar_du_crtc_create._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @rcar_du_crtc_create._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 1235, i32 20}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 1247, i32 3}
!16 = !{ptr @rcar_du_crtc_create._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rcar_du_crtc_create._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @rcar_du_crtc_create.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 1251, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rcar_du_crtc_create.__key.11, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 1252, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rcar_du_crtc_create.__key.13, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 1253, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 1298, i32 3}
!29 = !{ptr @rcar_du_crtc_create._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rcar_du_crtc_create._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 1305, i32 3}
!33 = !{ptr @rcar_du_crtc_create._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rcar_du_crtc_create._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @crtc_funcs_gen2, !36, !"crtc_funcs_gen2", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 1131, i32 36}
!37 = !{ptr @crtc_funcs_gen3, !38, !"crtc_funcs_gen3", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 1142, i32 36}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 1028, i32 34}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 1031, i32 36}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 1057, i32 3}
!45 = !{ptr @crtc_helper_funcs, !46, !"crtc_helper_funcs", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 871, i32 43}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 502, i32 3}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rcar_du_cmm_check._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @rcar_du_cmm_check._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 283, i32 3}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @rcar_du_crtc_set_display_timing.__UNIQUE_ID_ddebug322, !53, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!57 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 291, i32 2}
!61 = !{ptr @rcar_du_crtc_set_display_timing.__UNIQUE_ID_ddebug323, !60, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 209, i32 37}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 209, i32 14}
!66 = !{ptr @rcar_du_r8a7795_es1, !67, !"rcar_du_r8a7795_es1", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 208, i32 42}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 162, i32 2}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rcar_du_dpll_divider.__UNIQUE_ID_ddebug317, !69, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 636, i32 3}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rcar_du_crtc_disable_planes._entry, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @rcar_du_crtc_disable_planes._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 481, i32 2}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @rcar_du_crtc_wait_page_flip._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @rcar_du_crtc_wait_page_flip._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_crtc.c", i32 906, i32 17}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2154524597}
!95 = !{i64 6989965}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{i64 6990383}
!98 = !{i64 2154523242}
!99 = !{!"auto-init"}
!100 = !{i64 2148362765}
!101 = !{i64 2148277229, i64 2148277261, i64 2148277290, i64 2148277324, i64 2148277355, i64 2148277378}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2149859004}
!104 = !{i8 0, i8 2}
!105 = !{i64 2148755049, i64 2148755054, i64 2148755067, i64 2148755111, i64 2148755145, i64 2148755166}
