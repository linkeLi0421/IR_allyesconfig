; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mxsfb/mxsfb_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/mxsfb/mxsfb_kms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mxsfb_drm_private = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.89, %struct.drm_crtc, %struct.drm_encoder, ptr, ptr }
%struct.anon.89 = type { %struct.drm_plane, %struct.drm_plane }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.mxsfb_devdata = type { i32, i32, i32, i32, i32, i8, i8 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
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
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_bridge_state = type { %struct.drm_private_state, ptr, %struct.drm_bus_cfg, %struct.drm_bus_cfg }
%struct.drm_private_state = type { ptr }
%struct.drm_bus_cfg = type { i32, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }

@mxsfb_plane_primary_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @mxsfb_plane_atomic_check, ptr @mxsfb_plane_primary_atomic_update, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mxsfb_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxsfb_format_mod_supported }, [44 x i8] zeroinitializer }, align 32
@mxsfb_primary_plane_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 909199186, i32 875713112], [24 x i8] zeroinitializer }, align 32
@mxsfb_modifiers = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 0, i64 72057594037927935], [16 x i8] zeroinitializer }, align 32
@mxsfb_plane_overlay_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @mxsfb_plane_atomic_check, ptr @mxsfb_plane_overlay_atomic_update, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mxsfb_overlay_plane_formats = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 842093144, i32 842093121, i32 892424792, i32 892424769, i32 909199186, i32 875713112, i32 875713089], [36 x i8] zeroinitializer }, align 32
@mxsfb_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxsfb_crtc_atomic_check, ptr null, ptr @mxsfb_crtc_atomic_flush, ptr @mxsfb_crtc_atomic_enable, ptr @mxsfb_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@mxsfb_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxsfb_crtc_enable_vblank, ptr @mxsfb_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@mxsfb_encoder_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @drm_encoder_cleanup, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@mxsfb_crtc_atomic_enable.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@mxsfb_crtc_atomic_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 372, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [137 x i8], [55 x i8] } { [137 x i8] c"Bridge does not provide bus format, assuming MEDIA_BUS_FMT_RGB888_1X24.\0APlease fix bridge driver by handling atomic_get_input_bus_fmts.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxsfb_crtc_atomic_enable\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/mxsfb/mxsfb_kms.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxsfb_crtc_atomic_enable._entry_ptr = internal global ptr @mxsfb_crtc_atomic_enable._entry, section ".printk_index", align 4
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Pixel clock: %dkHz (actual: %dkHz)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Connector bus_flags: 0x%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mode flags: 0x%08X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Using bus_format: 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@mxsfb_set_formats.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mxsfb\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxsfb_set_formats\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Setting up RGB565 mode\0A\00", [40 x i8] zeroinitializer }, align 32
@mxsfb_set_formats.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Setting up XRGB8888 mode\0A\00", [38 x i8] zeroinitializer }, align 32
@mxsfb_set_formats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 91, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unknown media bus format 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mxsfb_set_formats._entry_ptr = internal global ptr @mxsfb_set_formats._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 842093121, i64 842093144, i64 875713112, i64 892424769, i64 892424792, i64 909199186]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 875713112, i64 909199186]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 4105, i64 4106, i64 4119]
@___asan_gen_.18 = private unnamed_addr constant [33 x i8] c"mxsfb_plane_primary_helper_funcs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 568, i32 44 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"mxsfb_plane_funcs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 578, i32 37 }
@___asan_gen_.24 = private unnamed_addr constant [28 x i8] c"mxsfb_primary_plane_formats\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 588, i32 23 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"mxsfb_modifiers\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 603, i32 23 }
@___asan_gen_.30 = private unnamed_addr constant [33 x i8] c"mxsfb_plane_overlay_helper_funcs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 573, i32 44 }
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"mxsfb_overlay_plane_formats\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 593, i32 23 }
@___asan_gen_.36 = private unnamed_addr constant [24 x i8] c"mxsfb_crtc_helper_funcs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 440, i32 43 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"mxsfb_crtc_funcs\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 447, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"mxsfb_encoder_funcs\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 462, i32 39 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 370, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 258, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 261, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 263, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 57, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 68, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 73, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [37 x i8] c"../drivers/gpu/drm/mxsfb/mxsfb_kms.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 91, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @mxsfb_crtc_atomic_enable._entry, ptr @mxsfb_crtc_atomic_enable._entry_ptr, ptr @mxsfb_set_formats._entry, ptr @mxsfb_set_formats._entry_ptr, ptr @mxsfb_plane_primary_helper_funcs, ptr @mxsfb_plane_funcs, ptr @mxsfb_primary_plane_formats, ptr @mxsfb_modifiers, ptr @mxsfb_plane_overlay_helper_funcs, ptr @mxsfb_overlay_plane_formats, ptr @mxsfb_crtc_helper_funcs, ptr @mxsfb_crtc_funcs, ptr @mxsfb_encoder_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_plane_primary_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_primary_plane_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_modifiers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_plane_overlay_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_overlay_plane_formats to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_encoder_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_crtc_atomic_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 137, i32 192, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_set_formats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxsfb_kms_init(ptr noundef %mxsfb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder1 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %mxsfb, i32 0, i32 9
  %crtc2 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %mxsfb, i32 0, i32 8
  %planes = getelementptr inbounds %struct.mxsfb_drm_private, ptr %mxsfb, i32 0, i32 7
  %helper_private.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %mxsfb, i32 0, i32 7, i32 0, i32 18
  %0 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mxsfb_plane_primary_helper_funcs, ptr %helper_private.i, align 8
  %drm = getelementptr inbounds %struct.mxsfb_drm_private, ptr %mxsfb, i32 0, i32 6
  %1 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %drm, align 8
  %call = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %2, ptr noundef %planes, i32 noundef 1, ptr noundef nonnull @mxsfb_plane_funcs, ptr noundef nonnull @mxsfb_primary_plane_formats, i32 noundef 2, ptr noundef nonnull @mxsfb_modifiers, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %mxsfb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mxsfb, align 8
  %has_overlay = getelementptr inbounds %struct.mxsfb_devdata, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %has_overlay to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %has_overlay, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %if.end.if.end15_crit_edge, label %if.then6

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then6:                                         ; preds = %if.end
  %overlay = getelementptr inbounds %struct.mxsfb_drm_private, ptr %mxsfb, i32 0, i32 7, i32 1
  %helper_private.i47 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %mxsfb, i32 0, i32 7, i32 1, i32 18
  %7 = ptrtoint ptr %helper_private.i47 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mxsfb_plane_overlay_helper_funcs, ptr %helper_private.i47, align 8
  %8 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drm, align 8
  %call11 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %9, ptr noundef %overlay, i32 noundef 1, ptr noundef nonnull @mxsfb_plane_funcs, ptr noundef nonnull @mxsfb_overlay_plane_formats, i32 noundef 7, ptr noundef nonnull @mxsfb_modifiers, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then6.if.end15_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end15:                                         ; preds = %if.then6.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %helper_private.i48 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %mxsfb, i32 0, i32 8, i32 19
  %10 = ptrtoint ptr %helper_private.i48 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mxsfb_crtc_helper_funcs, ptr %helper_private.i48, align 8
  %11 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drm, align 8
  %call19 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %12, ptr noundef %crtc2, ptr noundef %planes, ptr noundef null, ptr noundef nonnull @mxsfb_crtc_funcs, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %index.i.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %mxsfb, i32 0, i32 8, i32 8
  %13 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %14
  %possible_crtcs = getelementptr inbounds %struct.mxsfb_drm_private, ptr %mxsfb, i32 0, i32 9, i32 6
  %15 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl.i, ptr %possible_crtcs, align 4
  %16 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drm, align 8
  %call25 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %17, ptr noundef %encoder1, ptr noundef nonnull @mxsfb_encoder_funcs, i32 noundef 0, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end15.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end22 ], [ %call, %entry.cleanup_crit_edge ], [ %call11, %if.then6.cleanup_crit_edge ], [ %call19, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxsfb_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtcs.i, align 4
  %index.i.i6 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %9, i32 0, i32 8, i32 8
  %12 = ptrtoint ptr %index.i.i6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i6, align 4
  %new_state.i7 = getelementptr %struct.__drm_crtcs_state, ptr %11, i32 %13, i32 3
  %14 = ptrtoint ptr %new_state.i7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %new_state.i7, align 4
  %call3 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %15, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext true) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxsfb_plane_primary_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %state.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %fb1.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb1.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %7, i32 noundef 0) #5
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %mxsfb_get_fb_paddr.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

mxsfb_get_fb_paddr.exit:                          ; preds = %if.end.i
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %paddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %mxsfb_get_fb_paddr.exit.if.end_crit_edge, label %do.body

mxsfb_get_fb_paddr.exit.if.end_crit_edge:         ; preds = %mxsfb_get_fb_paddr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %mxsfb_get_fb_paddr.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %base = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  %next_buf = getelementptr inbounds %struct.mxsfb_devdata, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %next_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %next_buf, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #5, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %do.body, %mxsfb_get_fb_paddr.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mxsfb_format_mod_supported(ptr nocapture noundef readnone %plane, i32 noundef %format, i64 noundef %modifier) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %modifier)
  %cmp = icmp eq i64 %modifier, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxsfb_plane_overlay_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %10 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %new_state.i, align 4
  %state.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state.i, align 4
  %fb1.i = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fb1.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %15, i32 noundef 0) #5
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.end.i.do.body_crit_edge, label %mxsfb_get_fb_paddr.exit

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

mxsfb_get_fb_paddr.exit:                          ; preds = %if.end.i
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %paddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %mxsfb_get_fb_paddr.exit.do.body_crit_edge, label %if.end

mxsfb_get_fb_paddr.exit.do.body_crit_edge:        ; preds = %mxsfb_get_fb_paddr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %mxsfb_get_fb_paddr.exit.do.body_crit_edge, %if.end.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %base = getelementptr inbounds %struct.mxsfb_drm_private, ptr %9, i32 0, i32 1
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !59
  br label %cleanup

if.end:                                           ; preds = %mxsfb_get_fb_paddr.exit
  %add = add i32 %17, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %add)
  %base7 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %9, i32 0, i32 1
  %21 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base7, align 4
  %add.ptr8 = getelementptr i8, ptr %22, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %20) #5, !srcloc !59
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fb, align 4
  %tobool9.not = icmp eq ptr %24, null
  br i1 %tobool9.not, label %do.body11, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base7, align 4
  %add.ptr15 = getelementptr i8, ptr %26, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %20) #5, !srcloc !59
  br label %if.end16

if.end16:                                         ; preds = %do.body11, %if.end.if.end16_crit_edge
  %fb17 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 2
  %27 = ptrtoint ptr %fb17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fb17, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %format, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %32, label %if.end16.do.body31_crit_edge [
    i32 842093144, label %sw.bb
    i32 842093121, label %sw.bb19
    i32 892424792, label %sw.bb21
    i32 892424769, label %sw.bb23
    i32 909199186, label %sw.bb25
    i32 875713112, label %sw.bb27
  ]

if.end16.do.body31_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body31

sw.bb:                                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body31

sw.bb19:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body31

sw.bb21:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body31

sw.bb23:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body31

sw.bb25:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body31

sw.bb27:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body31

do.body31:                                        ; preds = %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb, %if.end16.do.body31_crit_edge
  %ctrl.0 = phi i32 [ 65347, %sw.bb27 ], [ 65507, %sw.bb25 ], [ 65409, %sw.bb23 ], [ 65475, %sw.bb21 ], [ 65425, %sw.bb19 ], [ 65491, %sw.bb ], [ 65281, %if.end16.do.body31_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %34 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0)
  %35 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base7, align 4
  %add.ptr35 = getelementptr i8, ptr %36, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %34) #5, !srcloc !59
  br label %cleanup

cleanup:                                          ; preds = %do.body31, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxsfb_crtc_atomic_check(ptr noundef %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %plane_mask, align 4
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %8 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %primary, align 4
  %index.i.i10 = getelementptr inbounds %struct.drm_plane, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %index.i.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i10, align 4
  %shl.i = shl nuw i32 1, %11
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %active, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp ne i8 %13, 0
  %and = and i32 %shl.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @drm_atomic_add_affected_planes(ptr noundef %state, ptr noundef %crtc) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxsfb_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %event2 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %event2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event2, align 4
  store ptr null, ptr %event2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #5
  %call = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %crtc, ptr noundef nonnull %3) #5
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %3) #5
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %event_lock8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxsfb_crtc_atomic_enable(ptr noundef %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %drm1 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %drm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm1, align 8
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #5
  tail call void @mxsfb_enable_axi_clk(ptr noundef %3) #5
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #5
  %bridge = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bridge, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.land.lhs.true_crit_edge, label %if.then

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then:                                          ; preds = %entry
  %call5 = tail call ptr @drm_atomic_get_new_bridge_state(ptr noundef %state, ptr noundef nonnull %9) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then.do.body_crit_edge, label %if.end

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end:                                           ; preds = %if.then
  %input_bus_cfg = getelementptr inbounds %struct.drm_bridge_state, ptr %call5, i32 0, i32 2
  %10 = ptrtoint ptr %input_bus_cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input_bus_cfg, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %11, label %if.end.if.end23.thread_crit_edge [
    i32 1, label %if.end.do.body_crit_edge
    i32 0, label %if.end.land.lhs.true_crit_edge
  ]

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.if.end23.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.thread

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.then.do.body_crit_edge
  %.b60 = load i1, ptr @mxsfb_crtc_atomic_enable.__print_once, align 1
  br i1 %.b60, label %do.body.if.end23.thread_crit_edge, label %if.then10

do.body.if.end23.thread_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.thread

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mxsfb_crtc_atomic_enable.__print_once, align 1
  %13 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str) #8
  br label %if.end23.thread

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %connector = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %connector, align 8
  %num_bus_formats = getelementptr inbounds %struct.drm_connector, ptr %16, i32 0, i32 20, i32 7
  %17 = ptrtoint ptr %num_bus_formats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_bus_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end23.thread75_crit_edge, label %if.end23

land.lhs.true.if.end23.thread75_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.thread75

if.end23:                                         ; preds = %land.lhs.true
  %bus_formats = getelementptr inbounds %struct.drm_connector, ptr %16, i32 0, i32 20, i32 6
  %19 = ptrtoint ptr %bus_formats to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_formats, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool24.not = icmp eq i32 %22, 0
  br i1 %tobool24.not, label %if.end23.if.end23.thread75_crit_edge, label %if.end23.if.end23.thread_crit_edge

if.end23.if.end23.thread_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.thread

if.end23.if.end23.thread75_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.thread75

if.end23.thread75:                                ; preds = %if.end23.if.end23.thread75_crit_edge, %land.lhs.true.if.end23.thread75_crit_edge
  br label %if.end23.thread

if.end23.thread:                                  ; preds = %if.end23.thread75, %if.end23.if.end23.thread_crit_edge, %if.then10, %do.body.if.end23.thread_crit_edge, %if.end.if.end23.thread_crit_edge
  %23 = phi i32 [ 4106, %if.end23.thread75 ], [ %22, %if.end23.if.end23.thread_crit_edge ], [ 4106, %if.then10 ], [ 4106, %do.body.if.end23.thread_crit_edge ], [ %11, %if.end.if.end23.thread_crit_edge ]
  %crtc.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crtc.i, align 8
  %state.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 8, i32 22
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state.i, align 4
  %connector.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 10
  %28 = ptrtoint ptr %connector.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %connector.i, align 8
  %bus_flags2.i = getelementptr inbounds %struct.drm_connector, ptr %29, i32 0, i32 20, i32 8
  %30 = ptrtoint ptr %bus_flags2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bus_flags2.i, align 8
  %base.i.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 128) #5, !srcloc !59
  %call.i.i.i = tail call i64 @ktime_get() #5
  %add.i.i.i.i = add i64 %call.i.i.i, 1000000000
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.for.cond.i.i.i_crit_edge, %if.end23.thread
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %.mask.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.not.i.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.cond.i.i.i.do.body.i.i_crit_edge, label %land.lhs.true.i.i.i

for.cond.i.i.i.do.body.i.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

land.lhs.true.i.i.i:                              ; preds = %for.cond.i.i.i
  %call16.i.i.i = tail call i64 @ktime_get() #5
  %cmp3.i.i.i.i = icmp sgt i64 %call16.i.i.i, %add.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.then19.i.i.i, label %land.lhs.true.i.i.i.for.cond.i.i.i_crit_edge

land.lhs.true.i.i.i.for.cond.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i.i

if.then19.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %.mask54.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask54.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %.mask54.i.i, 0
  br i1 %phi.cmp.i.i.i, label %if.then19.i.i.i.do.body.i.i_crit_edge, label %if.then19.i.i.i.mxsfb_crtc_mode_set_nofb.exit_crit_edge

if.then19.i.i.i.mxsfb_crtc_mode_set_nofb.exit_crit_edge: ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxsfb_crtc_mode_set_nofb.exit

if.then19.i.i.i.do.body.i.i_crit_edge:            ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then19.i.i.i.do.body.i.i_crit_edge, %for.cond.i.i.i.do.body.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 64) #5, !srcloc !59
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %add.ptr.i19.i.i = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i, i32 128) #5, !srcloc !59
  %call.i20.i.i = tail call i64 @ktime_get() #5
  %add.i.i21.i.i = add i64 %call.i20.i.i, 1000000000
  br label %for.cond.i24.i.i

for.cond.i24.i.i:                                 ; preds = %land.lhs.true.i27.i.i.for.cond.i24.i.i_crit_edge, %do.body.i.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %.mask55.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask55.i.i)
  %tobool.not.i23.i.i = icmp eq i32 %.mask55.i.i, 0
  br i1 %tobool.not.i23.i.i, label %for.cond.i24.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i27.i.i

for.cond.i24.i.i.if.end9.i.i_crit_edge:           ; preds = %for.cond.i24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i.i

land.lhs.true.i27.i.i:                            ; preds = %for.cond.i24.i.i
  %call16.i25.i.i = tail call i64 @ktime_get() #5
  %cmp3.i.i26.i.i = icmp sgt i64 %call16.i25.i.i, %add.i.i21.i.i
  br i1 %cmp3.i.i26.i.i, label %if.then19.i31.i.i, label %land.lhs.true.i27.i.i.for.cond.i24.i.i_crit_edge

land.lhs.true.i27.i.i.for.cond.i24.i.i_crit_edge: ; preds = %land.lhs.true.i27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i24.i.i

if.then19.i31.i.i:                                ; preds = %land.lhs.true.i27.i.i
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %.mask56.i.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask56.i.i)
  %phi.cmp.i29.i.i = icmp eq i32 %.mask56.i.i, 0
  br i1 %phi.cmp.i29.i.i, label %if.then19.i31.i.i.if.end9.i.i_crit_edge, label %if.then19.i31.i.i.mxsfb_crtc_mode_set_nofb.exit_crit_edge

if.then19.i31.i.i.mxsfb_crtc_mode_set_nofb.exit_crit_edge: ; preds = %if.then19.i31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxsfb_crtc_mode_set_nofb.exit

if.then19.i31.i.i.if.end9.i.i_crit_edge:          ; preds = %if.then19.i31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then19.i31.i.i.if.end9.i.i_crit_edge, %for.cond.i24.i.i.if.end9.i.i_crit_edge
  %42 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %add.ptr.i34.i.i = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i.i, i32 64) #5, !srcloc !59
  %call.i35.i.i = tail call i64 @ktime_get() #5
  %add.i.i36.i.i = add i64 %call.i35.i.i, 1000000000
  br label %for.cond.i39.i.i

for.cond.i39.i.i:                                 ; preds = %land.lhs.true.i42.i.i.for.cond.i39.i.i_crit_edge, %if.end9.i.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %45 = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i38.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i38.i.i, label %for.cond.i39.i.i.do.body.i_crit_edge, label %land.lhs.true.i42.i.i

for.cond.i39.i.i.do.body.i_crit_edge:             ; preds = %for.cond.i39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

land.lhs.true.i42.i.i:                            ; preds = %for.cond.i39.i.i
  %call16.i40.i.i = tail call i64 @ktime_get() #5
  %cmp3.i.i41.i.i = icmp sgt i64 %call16.i40.i.i, %add.i.i36.i.i
  br i1 %cmp3.i.i41.i.i, label %if.then19.i46.i.i, label %land.lhs.true.i42.i.i.for.cond.i39.i.i_crit_edge

land.lhs.true.i42.i.i.for.cond.i39.i.i_crit_edge: ; preds = %land.lhs.true.i42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i39.i.i

if.then19.i46.i.i:                                ; preds = %land.lhs.true.i42.i.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %47 = and i32 %46, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %phi.cmp.i44.i.i = icmp eq i32 %47, 0
  br i1 %phi.cmp.i44.i.i, label %if.then19.i46.i.i.do.body.i_crit_edge, label %if.then19.i46.i.i.mxsfb_crtc_mode_set_nofb.exit_crit_edge

if.then19.i46.i.i.mxsfb_crtc_mode_set_nofb.exit_crit_edge: ; preds = %if.then19.i46.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxsfb_crtc_mode_set_nofb.exit

if.then19.i46.i.i.do.body.i_crit_edge:            ; preds = %if.then19.i46.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.then19.i46.i.i.do.body.i_crit_edge, %for.cond.i39.i.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %49, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 8192) #5, !srcloc !59
  %50 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %51, i32 16
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %54, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 8192) #5, !srcloc !59
  %55 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %56, i32 16
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %3, align 8
  %has_overlay.i = getelementptr inbounds %struct.mxsfb_devdata, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %has_overlay.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %has_overlay.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool21.not.i = icmp eq i8 %61, 0
  br i1 %tobool21.not.i, label %do.body.i.if.end28.i_crit_edge, label %do.body23.i

do.body.i.if.end28.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

do.body23.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %63, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 0) #5, !srcloc !59
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.body23.i, %do.body.i.if.end28.i_crit_edge
  tail call fastcc void @mxsfb_set_formats(ptr noundef %3, i32 noundef %23) #5
  %clk.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 2
  %64 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk.i, align 8
  %crtc_clock.i = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 7, i32 12
  %66 = ptrtoint ptr %crtc_clock.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %crtc_clock.i, align 4
  %mul.i = mul i32 %67, 1000
  %call29.i = tail call i32 @clk_set_rate(ptr noundef %65, i32 noundef %mul.i) #5
  %68 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bridge, align 4
  %tobool30.not.i = icmp eq ptr %69, null
  br i1 %tobool30.not.i, label %if.end28.i.if.end36.i_crit_edge, label %land.lhs.true.i

if.end28.i.if.end36.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.end28.i
  %timings.i = getelementptr inbounds %struct.drm_bridge, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %timings.i, align 4
  %tobool32.not.i = icmp eq ptr %71, null
  br i1 %tobool32.not.i, label %land.lhs.true.i.if.end36.i_crit_edge, label %if.then33.i

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

if.then33.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %land.lhs.true.i.if.end36.i_crit_edge, %if.end28.i.if.end36.i_crit_edge
  %bus_flags.0.i = phi i32 [ %73, %if.then33.i ], [ %31, %land.lhs.true.i.if.end36.i_crit_edge ], [ %31, %if.end28.i.if.end36.i_crit_edge ]
  %dev37.i = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 2
  %74 = ptrtoint ptr %dev37.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev37.i, align 4
  %76 = ptrtoint ptr %crtc_clock.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %crtc_clock.i, align 4
  %78 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk.i, align 8
  %call40.i = tail call i32 @clk_get_rate(ptr noundef %79) #5
  %div.i = udiv i32 %call40.i, 1000
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %75, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %77, i32 noundef %div.i) #5
  %80 = ptrtoint ptr %dev37.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev37.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %81, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %bus_flags.0.i) #5
  %82 = ptrtoint ptr %dev37.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev37.i, align 4
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 7, i32 11
  %84 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %83, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %85) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 7, i32 20
  %86 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv.i = zext i16 %87 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 7, i32 13
  %88 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %crtc_hdisplay.i, align 4
  %conv46.i = zext i16 %89 to i32
  %or.i = or i32 %shl.i, %conv46.i
  %90 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %91 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i.i, align 4
  %93 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %3, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %add.ptr50.i = getelementptr i8, ptr %92, i32 %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %90) #5, !srcloc !59
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 7, i32 24
  %97 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %crtc_vsync_end.i, align 2
  %conv51.i = zext i16 %98 to i32
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 7, i32 23
  %99 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv52.i = zext i16 %100 to i32
  %sub.i = sub nsw i32 %conv51.i, %conv52.i
  %and53.i = and i32 %sub.i, 262143
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i, align 4
  %and56.i = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  %spec.select.v.i = select i1 %tobool57.not.i, i32 271581184, i32 338690048
  %and62.i = shl i32 %102, 25
  %103 = and i32 %and62.i, 134217728
  %and67.i = shl i32 %bus_flags.0.i, 24
  %104 = and i32 %and67.i, 16777216
  %and72.i = shl i32 %bus_flags.0.i, 23
  %105 = and i32 %and72.i, 33554432
  %spec.select.i = or i32 %105, %104
  %106 = or i32 %spec.select.i, %and53.i
  %107 = or i32 %106, %103
  %108 = or i32 %107, %spec.select.v.i
  %109 = xor i32 %108, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #5
  %111 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base.i.i, align 4
  %add.ptr81.i = getelementptr i8, ptr %112, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i, i32 %110) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %crtc_vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 7, i32 25
  %113 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %crtc_vtotal.i, align 4
  %conv85.i = zext i16 %114 to i32
  %115 = tail call i32 @llvm.bswap.i32(i32 %conv85.i) #5
  %116 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base.i.i, align 4
  %add.ptr87.i = getelementptr i8, ptr %117, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.i, i32 %115) #5, !srcloc !59
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 7, i32 17
  %118 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %crtc_hsync_end.i, align 4
  %conv88.i = zext i16 %119 to i32
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 7, i32 16
  %120 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %crtc_hsync_start.i, align 2
  %conv89.i = zext i16 %121 to i32
  %sub90.i = sub nsw i32 %conv88.i, %conv89.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %122 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %3, align 8
  %hs_wdth_mask.i.i = getelementptr inbounds %struct.mxsfb_devdata, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %hs_wdth_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %hs_wdth_mask.i.i, align 4
  %and.i.i = and i32 %125, %sub90.i
  %hs_wdth_shift.i.i = getelementptr inbounds %struct.mxsfb_devdata, ptr %123, i32 0, i32 4
  %126 = ptrtoint ptr %hs_wdth_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %hs_wdth_shift.i.i, align 4
  %shl.i.i = shl i32 %and.i.i, %127
  %crtc_htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 7, i32 18
  %128 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %crtc_htotal.i, align 2
  %conv95.i = zext i16 %129 to i32
  %or97.i = or i32 %shl.i.i, %conv95.i
  %130 = tail call i32 @llvm.bswap.i32(i32 %or97.i) #5
  %131 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base.i.i, align 4
  %add.ptr99.i = getelementptr i8, ptr %132, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.i, i32 %130) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %133 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %crtc_htotal.i, align 2
  %conv104.i = zext i16 %134 to i32
  %135 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %crtc_hsync_start.i, align 2
  %conv106.i = zext i16 %136 to i32
  %sub107.i = sub nsw i32 %conv104.i, %conv106.i
  %and108.i = shl i32 %sub107.i, 16
  %shl109.i = and i32 %and108.i, 268369920
  %137 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %crtc_vtotal.i, align 4
  %conv111.i = zext i16 %138 to i32
  %139 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv113.i = zext i16 %140 to i32
  %sub114.i = sub nsw i32 %conv111.i, %conv113.i
  %and115.i = and i32 %sub114.i, 65535
  %or116.i = or i32 %and115.i, %shl109.i
  %141 = tail call i32 @llvm.bswap.i32(i32 %or116.i) #5
  %142 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base.i.i, align 4
  %add.ptr118.i = getelementptr i8, ptr %143, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118.i, i32 %141) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 7, i32 1
  %144 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %hdisplay.i, align 4
  %conv122.i = zext i16 %145 to i32
  %146 = tail call i32 @llvm.bswap.i32(i32 %conv122.i) #5
  %147 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i.i, align 4
  %add.ptr125.i = getelementptr i8, ptr %148, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125.i, i32 %146) #5, !srcloc !59
  br label %mxsfb_crtc_mode_set_nofb.exit

mxsfb_crtc_mode_set_nofb.exit:                    ; preds = %if.end36.i, %if.then19.i46.i.i.mxsfb_crtc_mode_set_nofb.exit_crit_edge, %if.then19.i31.i.i.mxsfb_crtc_mode_set_nofb.exit_crit_edge, %if.then19.i.i.i.mxsfb_crtc_mode_set_nofb.exit_crit_edge
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %149 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %primary, align 4
  %state.i61 = getelementptr inbounds %struct.drm_plane, ptr %150, i32 0, i32 19
  %151 = ptrtoint ptr %state.i61 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %state.i61, align 4
  %fb1.i = getelementptr inbounds %struct.drm_plane_state, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %fb1.i, align 4
  %tobool.not.i = icmp eq ptr %154, null
  br i1 %tobool.not.i, label %mxsfb_crtc_mode_set_nofb.exit.if.end39_crit_edge, label %if.end.i

mxsfb_crtc_mode_set_nofb.exit.if.end39_crit_edge: ; preds = %mxsfb_crtc_mode_set_nofb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.end.i:                                         ; preds = %mxsfb_crtc_mode_set_nofb.exit
  %call.i62 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %154, i32 noundef 0) #5
  %tobool2.not.i = icmp eq ptr %call.i62, null
  br i1 %tobool2.not.i, label %if.end.i.if.end39_crit_edge, label %mxsfb_get_fb_paddr.exit

if.end.i.if.end39_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

mxsfb_get_fb_paddr.exit:                          ; preds = %if.end.i
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i62, i32 0, i32 1
  %155 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %paddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool28.not = icmp eq i32 %156, 0
  br i1 %tobool28.not, label %mxsfb_get_fb_paddr.exit.if.end39_crit_edge, label %do.body30

mxsfb_get_fb_paddr.exit.if.end39_crit_edge:       ; preds = %mxsfb_get_fb_paddr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

do.body30:                                        ; preds = %mxsfb_get_fb_paddr.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %157 = tail call i32 @llvm.bswap.i32(i32 %156)
  %158 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base.i.i, align 4
  %160 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %3, align 8
  %cur_buf = getelementptr inbounds %struct.mxsfb_devdata, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %cur_buf to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cur_buf, align 4
  %add.ptr = getelementptr i8, ptr %159, i32 %163
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %157) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %164 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base.i.i, align 4
  %166 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %3, align 8
  %next_buf = getelementptr inbounds %struct.mxsfb_devdata, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %next_buf to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %next_buf, align 4
  %add.ptr38 = getelementptr i8, ptr %165, i32 %169
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %157) #5, !srcloc !59
  br label %if.end39

if.end39:                                         ; preds = %do.body30, %mxsfb_get_fb_paddr.exit.if.end39_crit_edge, %if.end.i.if.end39_crit_edge, %mxsfb_crtc_mode_set_nofb.exit.if.end39_crit_edge
  %clk_disp_axi.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 4
  %170 = ptrtoint ptr %clk_disp_axi.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %clk_disp_axi.i, align 8
  %tobool.not.i63 = icmp eq ptr %171, null
  br i1 %tobool.not.i63, label %if.end39.if.end.i65_crit_edge, label %if.then.i

if.end39.if.end.i65_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i65

if.then.i:                                        ; preds = %if.end39
  %call.i.i = tail call i32 @clk_prepare(ptr noundef nonnull %171) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.if.end.i65_crit_edge

if.then.i.if.end.i65_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i65

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef nonnull %171) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end.i65_crit_edge, label %if.then3.i.i

if.end.i.i.if.end.i65_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i65

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef nonnull %171) #5
  br label %if.end.i65

if.end.i65:                                       ; preds = %if.then3.i.i, %if.end.i.i.if.end.i65_crit_edge, %if.then.i.if.end.i65_crit_edge, %if.end39.if.end.i65_crit_edge
  %clk.i64 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 2
  %172 = ptrtoint ptr %clk.i64 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %clk.i64, align 8
  %call.i65.i = tail call i32 @clk_prepare(ptr noundef %173) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %tobool.not.i66.i = icmp eq i32 %call.i65.i, 0
  br i1 %tobool.not.i66.i, label %if.end.i69.i, label %if.end.i65.clk_prepare_enable.exit71.i_crit_edge

if.end.i65.clk_prepare_enable.exit71.i_crit_edge: ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit71.i

if.end.i69.i:                                     ; preds = %if.end.i65
  %call1.i67.i = tail call i32 @clk_enable(ptr noundef %173) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67.i)
  %tobool2.not.i68.i = icmp eq i32 %call1.i67.i, 0
  br i1 %tobool2.not.i68.i, label %if.end.i69.i.clk_prepare_enable.exit71.i_crit_edge, label %if.then3.i70.i

if.end.i69.i.clk_prepare_enable.exit71.i_crit_edge: ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit71.i

if.then3.i70.i:                                   ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %173) #5
  br label %clk_prepare_enable.exit71.i

clk_prepare_enable.exit71.i:                      ; preds = %if.then3.i70.i, %if.end.i69.i.clk_prepare_enable.exit71.i_crit_edge, %if.end.i65.clk_prepare_enable.exit71.i_crit_edge
  %174 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %3, align 8
  %has_ctrl2.i = getelementptr inbounds %struct.mxsfb_devdata, ptr %175, i32 0, i32 6
  %176 = ptrtoint ptr %has_ctrl2.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %has_ctrl2.i, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool3.not.i = icmp eq i8 %177, 0
  br i1 %tobool3.not.i, label %clk_prepare_enable.exit71.i.mxsfb_enable_controller.exit_crit_edge, label %if.then4.i

clk_prepare_enable.exit71.i.mxsfb_enable_controller.exit_crit_edge: ; preds = %clk_prepare_enable.exit71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxsfb_enable_controller.exit

if.then4.i:                                       ; preds = %clk_prepare_enable.exit71.i
  call void @__sanitizer_cov_trace_pc() #7
  %178 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %179, i32 32
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %181 = and i32 %180, -57345
  %182 = or i32 %181, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %183 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base.i.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %184, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %182) #5, !srcloc !59
  br label %mxsfb_enable_controller.exit

mxsfb_enable_controller.exit:                     ; preds = %if.then4.i, %clk_prepare_enable.exit71.i.mxsfb_enable_controller.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %185 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base.i.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %186, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 512) #5, !srcloc !59
  %187 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %base.i.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %188, i32 176
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %190 = or i32 %189, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %191 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base.i.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %192, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %190) #5, !srcloc !59
  %193 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %base.i.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %194, i32 16
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %196 = or i32 %195, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %197 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %base.i.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %198, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 %196) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %199 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %base.i.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %200, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 16777216) #5, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxsfb_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %drm1 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %drm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %base.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 512) #5, !srcloc !59
  %call.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i, 1000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %entry
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %for.cond.i.for.end.i_crit_edge, label %land.lhs.true.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call19.i = tail call i64 @ktime_get() #5
  %cmp3.i.i = icmp sgt i64 %call19.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then22.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  br label %for.end.i

for.end.i:                                        ; preds = %if.then22.i, %for.cond.i.for.end.i_crit_edge
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %16, i32 176
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  %18 = and i32 %17, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %20, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %18) #5, !srcloc !59
  %clk.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk.i, align 8
  tail call void @clk_disable(ptr noundef %22) #5
  tail call void @clk_unprepare(ptr noundef %22) #5
  %clk_disp_axi.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %clk_disp_axi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_disp_axi.i, align 8
  %tobool50.not.i = icmp eq ptr %24, null
  br i1 %tobool50.not.i, label %for.end.i.mxsfb_disable_controller.exit_crit_edge, label %if.then51.i

for.end.i.mxsfb_disable_controller.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxsfb_disable_controller.exit

if.then51.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef nonnull %24) #5
  tail call void @clk_unprepare(ptr noundef nonnull %24) #5
  br label %mxsfb_disable_controller.exit

mxsfb_disable_controller.exit:                    ; preds = %if.then51.i, %for.end.i.mxsfb_disable_controller.exit_crit_edge
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #5
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %25 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state2, align 4
  %event3 = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 18
  %27 = ptrtoint ptr %event3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %event3, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %mxsfb_disable_controller.exit.if.end_crit_edge, label %if.then

mxsfb_disable_controller.exit.if.end_crit_edge:   ; preds = %mxsfb_disable_controller.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %mxsfb_disable_controller.exit
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %event3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %event3, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %28) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %mxsfb_disable_controller.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock) #5
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #5
  tail call void @mxsfb_disable_axi_clk(ptr noundef %3) #5
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %30 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev7, align 4
  %call.i18 = tail call i32 @__pm_runtime_idle(ptr noundef %31, i32 noundef 4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxsfb_enable_axi_clk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_bridge_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxsfb_set_formats(ptr nocapture noundef readonly %mxsfb, i32 noundef %bus_format) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drm1 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %mxsfb, i32 0, i32 6
  %0 = ptrtoint ptr %drm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm1, align 8
  %primary = getelementptr inbounds %struct.mxsfb_drm_private, ptr %mxsfb, i32 0, i32 8, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  %state = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  %format2 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %format2, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %dev = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %13, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %bus_format) #5
  %base = getelementptr inbounds %struct.mxsfb_drm_private, ptr %mxsfb, i32 0, i32 1
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !65
  %17 = lshr i32 %16, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  %and = and i32 %17, 8704
  %18 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %11, label %entry.sw.epilog_crit_edge [
    i32 909199186, label %do.body
    i32 875713112, label %do.body12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxsfb_set_formats.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxsfb_set_formats, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !96

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxsfb_set_formats.__UNIQUE_ID_ddebug318, ptr noundef %20, ptr noundef nonnull @.str.11) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %or10 = or i32 %and, 983040
  br label %sw.epilog

do.body12:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxsfb_set_formats.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxsfb_set_formats, %if.then24)) #5
          to label %do.end28 [label %if.then24], !srcloc !96

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxsfb_set_formats.__UNIQUE_ID_ddebug319, ptr noundef %22, ptr noundef nonnull @.str.12) #5
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body12
  %or30 = or i32 %and, 458752
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end28, %do.end, %entry.sw.epilog_crit_edge
  %ctrl1.0 = phi i32 [ %and, %entry.sw.epilog_crit_edge ], [ %or30, %do.end28 ], [ %or10, %do.end ]
  %ctrl.0 = phi i32 [ 524320, %entry.sw.epilog_crit_edge ], [ 525088, %do.end28 ], [ 524320, %do.end ]
  %23 = zext i32 %bus_format to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %bus_format, label %do.end39 [
    i32 4119, label %sw.epilog.do.body42_crit_edge
    i32 4105, label %sw.bb33
    i32 4106, label %sw.bb35
  ]

sw.epilog.do.body42_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body42

sw.bb33:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %or34 = or i32 %ctrl.0, 2048
  br label %do.body42

sw.bb35:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %or36 = or i32 %ctrl.0, 3072
  br label %do.body42

do.end39:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.13, i32 noundef %bus_format) #8
  br label %do.body42

do.body42:                                        ; preds = %do.end39, %sw.bb35, %sw.bb33, %sw.epilog.do.body42_crit_edge
  %ctrl.1 = phi i32 [ %ctrl.0, %do.end39 ], [ %or36, %sw.bb35 ], [ %or34, %sw.bb33 ], [ %ctrl.0, %sw.epilog.do.body42_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %ctrl1.0)
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr46 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %26) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %29 = tail call i32 @llvm.bswap.i32(i32 %ctrl.1)
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #5, !srcloc !59
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxsfb_disable_axi_clk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxsfb_crtc_enable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %base = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 131072) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 2097152) #5, !srcloc !59
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxsfb_crtc_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %base = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 2097152) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 131072) #5, !srcloc !59
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @mxsfb_plane_primary_helper_funcs, !1, !"mxsfb_plane_primary_helper_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 568, i32 44}
!2 = !{ptr @mxsfb_plane_funcs, !3, !"mxsfb_plane_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 578, i32 37}
!4 = !{ptr @mxsfb_primary_plane_formats, !5, !"mxsfb_primary_plane_formats", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 588, i32 23}
!6 = !{ptr @mxsfb_modifiers, !7, !"mxsfb_modifiers", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 603, i32 23}
!8 = !{ptr @mxsfb_plane_overlay_helper_funcs, !9, !"mxsfb_plane_overlay_helper_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 573, i32 44}
!10 = !{ptr @mxsfb_overlay_plane_formats, !11, !"mxsfb_overlay_plane_formats", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 593, i32 23}
!12 = !{ptr @mxsfb_crtc_helper_funcs, !13, !"mxsfb_crtc_helper_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 440, i32 43}
!14 = distinct !{null, !15, !"__print_once", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 370, i32 4}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mxsfb_crtc_atomic_enable._entry, !15, !"_entry", i1 false, i1 false}
!22 = !{ptr @mxsfb_crtc_atomic_enable._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 258, i32 2}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 261, i32 2}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 263, i32 2}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 57, i32 2}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 68, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mxsfb_set_formats.__UNIQUE_ID_ddebug318, !32, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 73, i32 3}
!38 = !{ptr @mxsfb_set_formats.__UNIQUE_ID_ddebug319, !37, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 91, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mxsfb_set_formats._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mxsfb_set_formats._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @mxsfb_crtc_funcs, !45, !"mxsfb_crtc_funcs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 447, i32 36}
!46 = !{ptr @mxsfb_encoder_funcs, !47, !"mxsfb_encoder_funcs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_kms.c", i32 462, i32 39}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i8 0, i8 2}
!58 = !{i64 2156921768}
!59 = !{i64 2046667}
!60 = !{i64 2156922190}
!61 = !{i64 2156922585}
!62 = !{i64 2156922992}
!63 = !{i64 2156924554}
!64 = !{i64 2156904595}
!65 = !{i64 2047085}
!66 = !{i64 2156906241}
!67 = !{i64 2156906675}
!68 = !{i64 2156907103}
!69 = !{i64 2156907871}
!70 = !{i64 2156908621}
!71 = !{i64 2156908956}
!72 = !{i64 2156909706}
!73 = !{i64 2156909926}
!74 = !{i64 2156910838}
!75 = !{i64 2156912108}
!76 = !{i64 2156912527}
!77 = !{i64 2156913062}
!78 = !{i64 2156913903}
!79 = !{i64 2156914678}
!80 = !{i64 2156918515}
!81 = !{i64 2156918953}
!82 = !{i64 2156897029}
!83 = !{i64 2156897273}
!84 = !{i64 2156897784}
!85 = !{i64 2156898534}
!86 = !{i64 2156898838}
!87 = !{i64 2156899509}
!88 = !{i64 2156899813}
!89 = !{i64 2156900321}
!90 = !{i64 2156900908}
!91 = !{i64 2156902918}
!92 = !{i64 2156903408}
!93 = !{i64 2156903907}
!94 = !{i64 2156904211}
!95 = !{i64 2156888990}
!96 = !{i64 2148739577, i64 2148739582, i64 2148739595, i64 2148739639, i64 2148739673, i64 2148739694}
!97 = !{i64 2156895952}
!98 = !{i64 2156896355}
!99 = !{i64 2156919499}
!100 = !{i64 2156920086}
!101 = !{i64 2156920676}
!102 = !{i64 2156921263}
