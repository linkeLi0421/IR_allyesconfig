; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_drm_vidi.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_vidi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.exynos_drm_crtc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.85 = type { i32, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vidi_context = type { %struct.drm_encoder, ptr, ptr, ptr, %struct.drm_connector, [3 x %struct.exynos_drm_plane], ptr, i32, i32, i8, %struct.timer_list, %struct.mutex }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.exynos_drm_plane = type { %struct.drm_plane, ptr, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_exynos_vidi_connection = type { i32, i32, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.exynos_drm_plane_config = type { i32, i32, ptr, i32, i32 }
%struct.exynos_drm_crtc = type { %struct.drm_crtc, i32, ptr, ptr, ptr, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.90 }
%union.anon.90 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"user data for vidi is null.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"connection should be 0 or 1.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"same connection request.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"edid data is invalid.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to allocate raw_edid.\0A\00", [34 x i8] zeroinitializer }, align 32
@fake_edid_info = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\FF\FF\FF\FF\FF\FF\00L-\05\05\00\00\00\000\12\01\03\80\10\09x\0A\EE\91\A3TL\99&\0FPT\BD\EE\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01f!P\B0Q\00\1B0@p6\00\A0Z\00\00\00\1E\01\1D\00rQ\D0\1E n(U\00\A0Z\00\00\00\1E\00\00\00\FD\00\18K\1AD\17\00\0A      \00\00\00\FC\00SAMSUNG\0A     \01\BC\02\03\1E\F1F\84\05\03\10 \22#\09\07\07\83\01\00\00\E2\00\0Fg\03\0C\00\10\00\B8-\01\1D\80\18q\1C\16 X,%\00\A0Z\00\00\00\9E\8C\0A\D0\8A \E0-\10\10>\96\00\A0Z\00\00\00\18\02:\80\18q8-@X,E\00\A0Z\00\00\00\1E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06", [64 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"exynos-drm-vidi\00", [16 x i8] zeroinitializer }, align 32
@vidi_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @vidi_group, ptr null], [24 x i8] zeroinitializer }, align 32
@vidi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vidi_probe, ptr @vidi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidi_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vidi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&ctx->timer)\00", [18 x i8] zeroinitializer }, align 32
@vidi_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->lock\00", [21 x i8] zeroinitializer }, align 32
@vidi_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @vidi_bind, ptr @vidi_unbind }, [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@formats = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 875713112, i32 875713089, i32 842094158], [20 x i8] zeroinitializer }, align 32
@vidi_crtc_ops = internal constant { %struct.exynos_drm_crtc_ops, [48 x i8] } { %struct.exynos_drm_crtc_ops { ptr @vidi_atomic_enable, ptr @vidi_atomic_disable, ptr @vidi_enable_vblank, ptr @vidi_disable_vblank, ptr null, ptr null, ptr null, ptr null, ptr @vidi_update_plane, ptr null, ptr @exynos_crtc_handle_event, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* failed to create crtc.\0A\00", [32 x i8] zeroinitializer }, align 32
@exynos_vidi_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_vidi_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @exynos_vidi_disable, ptr @exynos_vidi_enable, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to create connector ret = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma_addr = %pad\0A\00", [47 x i8] zeroinitializer }, align 32
@vidi_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @vidi_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @vidi_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"*ERROR* Failed to initialize connector with drm\0A\00", [47 x i8] zeroinitializer }, align 32
@vidi_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @vidi_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"raw_edid is null.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to allocate edid\0A\00", [39 x i8] zeroinitializer }, align 32
@vidi_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @vidi_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@vidi_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_connection, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_connection = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vidi_show_connection, ptr @vidi_store_connection }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"connection\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"edid data is not fake data.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"requested connection.\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 230, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 236, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 242, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 252, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 258, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"fake_edid_info\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 56, i32 19 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 484, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"vidi_groups\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"vidi_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 480, i32 24 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 455, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 457, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"vidi_component_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 439, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 81, i32 23 }
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"vidi_crtc_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 150, i32 41 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 408, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [33 x i8] c"exynos_vidi_encoder_helper_funcs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 373, i32 46 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 422, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 121, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"vidi_connector_funcs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 297, i32 41 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 348, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [28 x i8] c"vidi_connector_helper_funcs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 333, i32 48 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 317, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 324, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [11 x i8] c"vidi_group\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 221, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [11 x i8] c"vidi_attrs\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 217, i32 26 }
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c"dev_attr_connection\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 214, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 176, i32 20 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 203, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [44 x i8] c"../drivers/gpu/drm/exynos/exynos_drm_vidi.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 207, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @fake_edid_info, ptr @.str.5, ptr @vidi_groups, ptr @vidi_driver, ptr @vidi_probe.__key, ptr @.str.6, ptr @vidi_probe.__key.7, ptr @.str.8, ptr @vidi_component_ops, ptr @formats, ptr @vidi_crtc_ops, ptr @.str.9, ptr @.str.10, ptr @exynos_vidi_encoder_helper_funcs, ptr @.str.11, ptr @.str.12, ptr @vidi_connector_funcs, ptr @.str.13, ptr @vidi_connector_helper_funcs, ptr @.str.14, ptr @.str.15, ptr @vidi_group, ptr @vidi_attrs, ptr @dev_attr_connection, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_edid_info to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidi_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidi_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidi_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidi_crtc_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_vidi_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidi_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidi_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidi_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidi_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_connection to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidi_connection_ioctl(ptr nocapture noundef readonly %drm_dev, ptr noundef readonly %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev1 = getelementptr inbounds %struct.vidi_context, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %5, i32 noundef 4, ptr noundef nonnull @.str) #6
  br label %cleanup38

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev3 = getelementptr inbounds %struct.vidi_context, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %9, i32 noundef 4, ptr noundef nonnull @.str.1) #6
  br label %cleanup38

if.end4:                                          ; preds = %if.end
  %connected = getelementptr inbounds %struct.vidi_context, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %connected to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %connected, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp6 = icmp eq i32 %11, %7
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %dev8 = getelementptr inbounds %struct.vidi_context, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev8, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %13, i32 noundef 4, ptr noundef nonnull @.str.2) #6
  br label %cleanup38

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  %edid = getelementptr inbounds %struct.drm_exynos_vidi_connection, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %edid to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %edid, align 8
  %conv = trunc i64 %15 to i32
  %16 = inttoptr i32 %conv to ptr
  %call13 = tail call zeroext i1 @drm_edid_is_valid(ptr noundef %16) #6
  br i1 %call13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %dev15 = getelementptr inbounds %struct.vidi_context, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev15, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %18, i32 noundef 4, ptr noundef nonnull @.str.3) #6
  br label %cleanup38

if.end16:                                         ; preds = %if.then12
  %call17 = tail call ptr @drm_edid_duplicate(ptr noundef %16) #6
  %raw_edid18 = getelementptr inbounds %struct.vidi_context, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %raw_edid18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call17, ptr %raw_edid18, align 8
  %tobool20.not = icmp eq ptr %call17, null
  br i1 %tobool20.not, label %if.then21, label %if.end16.if.end33_crit_edge

if.end16.if.end33_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %dev22 = getelementptr inbounds %struct.vidi_context, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev22, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %21, i32 noundef 4, ptr noundef nonnull @.str.4) #6
  br label %cleanup38

if.else:                                          ; preds = %if.end9
  %raw_edid24 = getelementptr inbounds %struct.vidi_context, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %raw_edid24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %raw_edid24, align 8
  %tobool25.not = icmp eq ptr %23, null
  %cmp27.not = icmp eq ptr %23, @fake_edid_info
  %or.cond = or i1 %tobool25.not, %cmp27.not
  br i1 %or.cond, label %if.else.if.end33_crit_edge, label %if.then29

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %23) #6
  %24 = ptrtoint ptr %raw_edid24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %raw_edid24, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.else.if.end33_crit_edge, %if.end16.if.end33_crit_edge
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data, align 8
  %27 = ptrtoint ptr %connected to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %connected, align 8
  %drm_dev36 = getelementptr inbounds %struct.vidi_context, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %drm_dev36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %drm_dev36, align 8
  %call37 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %29) #6
  br label %cleanup38

cleanup38:                                        ; preds = %if.end33, %if.then21, %if.then14, %if.then7, %if.then2, %if.then
  %retval.1 = phi i32 [ -22, %if.then2 ], [ -22, %if.then7 ], [ 0, %if.end33 ], [ -22, %if.then ], [ -22, %if.then14 ], [ -12, %if.then21 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_edid_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_edid_duplicate(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2896, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev2 = getelementptr inbounds %struct.vidi_context, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %timer = getelementptr inbounds %struct.vidi_context, ptr %call.i, i32 0, i32 10
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @vidi_fake_vblank_timer, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @vidi_probe.__key) #6
  %lock = getelementptr inbounds %struct.vidi_context, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @vidi_probe.__key.7) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call6 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @vidi_component_ops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidi_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %raw_edid = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %raw_edid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raw_edid, align 8
  %cmp.not = icmp eq ptr %3, @fake_edid_info
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %3) #6
  %4 = ptrtoint ptr %raw_edid to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %raw_edid, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @vidi_component_ops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vidi_fake_vblank_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr i8, ptr %t, i32 -2672
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %call = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %1) #6
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %2, 1
  %call2 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %sub) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidi_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  %plane_config = alloca %struct.exynos_drm_plane_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %plane_config) #6
  %2 = getelementptr inbounds i8, ptr %plane_config, i32 16
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %drm_dev2 = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %drm_dev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %drm_dev2, align 8
  %pixel_formats = getelementptr inbounds %struct.exynos_drm_plane_config, ptr %plane_config, i32 0, i32 2
  %5 = ptrtoint ptr %pixel_formats to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @formats, ptr %pixel_formats, align 4
  %num_pixel_formats = getelementptr inbounds %struct.exynos_drm_plane_config, ptr %plane_config, i32 0, i32 3
  %6 = ptrtoint ptr %num_pixel_formats to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %num_pixel_formats, align 4
  %type = getelementptr inbounds %struct.exynos_drm_plane_config, ptr %plane_config, i32 0, i32 1
  %7 = ptrtoint ptr %plane_config to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %plane_config, align 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type, align 4
  %arrayidx3 = getelementptr %struct.vidi_context, ptr %1, i32 0, i32 5, i32 0
  %call4 = call i32 @exynos_plane_init(ptr noundef %data, ptr noundef %arrayidx3, i32 noundef 0, ptr noundef nonnull %plane_config) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %entry
  %9 = ptrtoint ptr %plane_config to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %plane_config, align 4
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %type, align 4
  %arrayidx3.1 = getelementptr %struct.vidi_context, ptr %1, i32 0, i32 5, i32 1
  %call4.1 = call i32 @exynos_plane_init(ptr noundef %data, ptr noundef %arrayidx3.1, i32 noundef 1, ptr noundef nonnull %plane_config) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %tobool.not.1 = icmp eq i32 %call4.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %11 = ptrtoint ptr %plane_config to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %plane_config, align 4
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %type, align 4
  %arrayidx3.2 = getelementptr %struct.vidi_context, ptr %1, i32 0, i32 5, i32 2
  %call4.2 = call i32 @exynos_plane_init(ptr noundef %data, ptr noundef %arrayidx3.2, i32 noundef 2, ptr noundef nonnull %plane_config) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %tobool.not.2 = icmp eq i32 %call4.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %call7 = call ptr @exynos_drm_crtc_create(ptr noundef %data, ptr noundef %arrayidx3, i32 noundef 3, ptr noundef nonnull @vidi_crtc_ops, ptr noundef %1) #6
  %crtc = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7, ptr %crtc, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #6
  %14 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc, align 8
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end13:                                         ; preds = %for.cond.2
  %call14 = call i32 @drm_simple_encoder_init(ptr noundef %data, ptr noundef %1, i32 noundef 2) #6
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @exynos_vidi_encoder_helper_funcs, ptr %helper_private.i, align 4
  %call15 = call i32 @exynos_drm_set_possible_crtcs(ptr noundef %1, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %connector1.i = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 4
  %polled.i = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 4, i32 33
  %18 = ptrtoint ptr %polled.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %polled.i, align 4
  %19 = ptrtoint ptr %drm_dev2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drm_dev2, align 8
  %call2.i = call i32 @drm_connector_init(ptr noundef %20, ptr noundef %connector1.i, ptr noundef nonnull @vidi_connector_funcs, i32 noundef 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %vidi_create_connector.exit.thread, label %if.then21

vidi_create_connector.exit.thread:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %helper_private.i.i = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 4, i32 35
  %21 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @vidi_connector_helper_funcs, ptr %helper_private.i.i, align 4
  %call3.i = call i32 @drm_connector_attach_encoder(ptr noundef %connector1.i, ptr noundef %1) #6
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13) #6
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %call2.i) #6
  call void @drm_encoder_cleanup(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %vidi_create_connector.exit.thread, %if.end13.cleanup_crit_edge, %if.then10, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then10 ], [ %call2.i, %if.then21 ], [ %call15, %if.end13.cleanup_crit_edge ], [ 0, %vidi_create_connector.exit.thread ], [ %call4, %entry.cleanup_crit_edge ], [ %call4.1, %for.cond.cleanup_crit_edge ], [ %call4.2, %for.cond.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %plane_config) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vidi_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timer = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 10
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_crtc_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_set_possible_crtcs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vidi_atomic_enable(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %lock = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %suspended = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %suspended, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vidi_atomic_disable(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #6
  %lock = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %suspended = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %suspended, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidi_enable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %suspended = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %timer = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %4, 1
  %call2 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %sub) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vidi_disable_vblank(ptr nocapture noundef %crtc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vidi_update_plane(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %plane) #0 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %ctx2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %2 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #6
  %suspended = getelementptr inbounds %struct.vidi_context, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %suspended, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  %call = tail call i32 @exynos_drm_fb_dma_addr(ptr noundef %7, i32 noundef 0) #6
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %addr, align 4
  %dev = getelementptr inbounds %struct.vidi_context, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef nonnull %addr) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_crtc_handle_event(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_fb_dma_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @exynos_vidi_mode_set(ptr nocapture noundef %encoder, ptr nocapture noundef %mode, ptr nocapture noundef %adjusted_mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @exynos_vidi_disable(ptr nocapture noundef %encoder) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @exynos_vidi_enable(ptr nocapture noundef %encoder) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidi_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %connected = getelementptr i8, ptr %connector, i32 2656
  %0 = ptrtoint ptr %connected to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connected, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vidi_connector_destroy(ptr nocapture noundef %connector) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidi_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_edid = getelementptr i8, ptr %connector, i32 2648
  %0 = ptrtoint ptr %raw_edid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw_edid, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %connector, i32 -12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.14) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %extensions = getelementptr inbounds %struct.edid, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %extensions, align 1
  %conv = zext i8 %5 to i32
  %add = shl nuw nsw i32 %conv, 7
  %mul = add nuw nsw i32 %add, 128
  %call = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef %mul, i32 noundef 3264) #6
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev5 = getelementptr i8, ptr %connector, i32 -12
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str.15) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %call) #6
  %call8 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ -12, %if.then4 ], [ -14, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidi_show_connection(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %connected = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %connected to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %connected, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %3)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidi_store_connection(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %connected = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 8
  %call1 = tail call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef %connected) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %connected to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %connected, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %raw_edid = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %raw_edid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %raw_edid, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end8.thread, label %if.end8

if.end8.thread:                                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %raw_edid to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @fake_edid_info, ptr %raw_edid, align 8
  br label %if.end12

if.end8:                                          ; preds = %if.end4
  %cmp10.not = icmp eq ptr %5, @fake_edid_info
  br i1 %cmp10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull @.str.18) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8.if.end12_crit_edge, %if.end8.thread
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull @.str.19) #6
  %drm_dev = getelementptr inbounds %struct.vidi_context, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drm_dev, align 8
  %call13 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then11 ], [ %len, %if.end12 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 230, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 236, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 242, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 252, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 258, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 484, i32 11}
!12 = !{ptr @vidi_driver, !13, !"vidi_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 480, i32 24}
!14 = !{ptr @fake_edid_info, !15, !"fake_edid_info", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 56, i32 19}
!16 = !{ptr @vidi_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 455, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vidi_probe.__key.7, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 457, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vidi_component_ops, !23, !"vidi_component_ops", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 439, i32 35}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 408, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 422, i32 3}
!29 = !{ptr @formats, !30, !"formats", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 81, i32 23}
!31 = distinct !{null, !32, !"vidi_win_types", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 87, i32 34}
!33 = !{ptr @vidi_crtc_ops, !34, !"vidi_crtc_ops", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 150, i32 41}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 121, i32 2}
!37 = !{ptr @exynos_vidi_encoder_helper_funcs, !38, !"exynos_vidi_encoder_helper_funcs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 373, i32 46}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 348, i32 3}
!41 = !{ptr @vidi_connector_funcs, !42, !"vidi_connector_funcs", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 297, i32 41}
!43 = !{ptr @vidi_connector_helper_funcs, !44, !"vidi_connector_helper_funcs", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 333, i32 48}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 317, i32 3}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 324, i32 3}
!49 = !{ptr @vidi_groups, !50, !"vidi_groups", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 221, i32 1}
!51 = !{ptr @vidi_group, !50, !"vidi_group", i1 false, i1 false}
!52 = !{ptr @vidi_attrs, !53, !"vidi_attrs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 217, i32 26}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 214, i32 8}
!56 = !{ptr @dev_attr_connection, !55, !"dev_attr_connection", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 176, i32 20}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 203, i32 3}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/exynos/exynos_drm_vidi.c", i32 207, i32 2}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i8 0, i8 2}
