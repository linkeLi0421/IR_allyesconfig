; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/malidp_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/malidp_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gamma_curve_segment = type { i16, i16 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
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
%struct.anon.86 = type { i32, ptr }
%struct.malidp_drm = type { ptr, %struct.drm_crtc, %struct.drm_writeback_connector, %struct.wait_queue_head, ptr, %struct.atomic_t, i32, %struct.malidp_error_stats, %struct.malidp_error_stats, %struct.spinlock }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.malidp_error_stats = type { i32, i32, i64 }
%struct.malidp_hw_regmap = type { i16, i16, i16, i16, i8, i8, ptr, %struct.malidp_irq_map, %struct.malidp_irq_map, %struct.malidp_irq_map, ptr, i8, i8 }
%struct.malidp_irq_map = type { i32, i32, i32 }
%struct.malidp_hw_device = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i16, i32, i8, i8, [2 x i32], i32 }
%struct.malidp_crtc_state = type { %struct.drm_crtc_state, [64 x i32], [12 x i32], %struct.malidp_se_config, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.malidp_se_config = type { i8, i8, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.malidp_plane_state = type { %struct.drm_plane_state, i32, i8, i8, i32, i32 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_color_lut = type { i16, i16, i16, i16 }
%struct.malidp_hw = type { %struct.malidp_hw_regmap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialise planes\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no primary plane found\0A\00", [40 x i8] zeroinitializer }, align 32
@malidp_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @malidp_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @malidp_crtc_duplicate_state, ptr @malidp_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @malidp_crtc_enable_vblank, ptr @malidp_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@malidp_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @malidp_crtc_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @malidp_crtc_atomic_check, ptr null, ptr null, ptr @malidp_crtc_atomic_enable, ptr @malidp_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/arm/malidp_crtc.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/arm/malidp_hw.h\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pxlclk doesn't support %ld Hz\0A\00", [33 x i8] zeroinitializer }, align 32
@segments = internal constant { [64 x %struct.gamma_curve_segment], [64 x i8] } { [64 x %struct.gamma_curve_segment] [%struct.gamma_curve_segment zeroinitializer, %struct.gamma_curve_segment { i16 1, i16 1 }, %struct.gamma_curve_segment { i16 2, i16 2 }, %struct.gamma_curve_segment { i16 3, i16 3 }, %struct.gamma_curve_segment { i16 4, i16 4 }, %struct.gamma_curve_segment { i16 5, i16 5 }, %struct.gamma_curve_segment { i16 6, i16 6 }, %struct.gamma_curve_segment { i16 7, i16 7 }, %struct.gamma_curve_segment { i16 8, i16 8 }, %struct.gamma_curve_segment { i16 9, i16 9 }, %struct.gamma_curve_segment { i16 10, i16 10 }, %struct.gamma_curve_segment { i16 11, i16 11 }, %struct.gamma_curve_segment { i16 12, i16 12 }, %struct.gamma_curve_segment { i16 13, i16 13 }, %struct.gamma_curve_segment { i16 14, i16 14 }, %struct.gamma_curve_segment { i16 15, i16 15 }, %struct.gamma_curve_segment { i16 16, i16 19 }, %struct.gamma_curve_segment { i16 20, i16 23 }, %struct.gamma_curve_segment { i16 24, i16 27 }, %struct.gamma_curve_segment { i16 28, i16 31 }, %struct.gamma_curve_segment { i16 32, i16 39 }, %struct.gamma_curve_segment { i16 40, i16 47 }, %struct.gamma_curve_segment { i16 48, i16 55 }, %struct.gamma_curve_segment { i16 56, i16 63 }, %struct.gamma_curve_segment { i16 64, i16 79 }, %struct.gamma_curve_segment { i16 80, i16 95 }, %struct.gamma_curve_segment { i16 96, i16 111 }, %struct.gamma_curve_segment { i16 112, i16 127 }, %struct.gamma_curve_segment { i16 128, i16 159 }, %struct.gamma_curve_segment { i16 160, i16 191 }, %struct.gamma_curve_segment { i16 192, i16 223 }, %struct.gamma_curve_segment { i16 224, i16 255 }, %struct.gamma_curve_segment { i16 256, i16 319 }, %struct.gamma_curve_segment { i16 320, i16 383 }, %struct.gamma_curve_segment { i16 384, i16 447 }, %struct.gamma_curve_segment { i16 448, i16 511 }, %struct.gamma_curve_segment { i16 512, i16 639 }, %struct.gamma_curve_segment { i16 640, i16 767 }, %struct.gamma_curve_segment { i16 768, i16 895 }, %struct.gamma_curve_segment { i16 896, i16 1023 }, %struct.gamma_curve_segment { i16 1024, i16 1151 }, %struct.gamma_curve_segment { i16 1152, i16 1279 }, %struct.gamma_curve_segment { i16 1280, i16 1407 }, %struct.gamma_curve_segment { i16 1408, i16 1535 }, %struct.gamma_curve_segment { i16 1536, i16 1663 }, %struct.gamma_curve_segment { i16 1664, i16 1791 }, %struct.gamma_curve_segment { i16 1792, i16 1919 }, %struct.gamma_curve_segment { i16 1920, i16 2047 }, %struct.gamma_curve_segment { i16 2048, i16 2175 }, %struct.gamma_curve_segment { i16 2176, i16 2303 }, %struct.gamma_curve_segment { i16 2304, i16 2431 }, %struct.gamma_curve_segment { i16 2432, i16 2559 }, %struct.gamma_curve_segment { i16 2560, i16 2687 }, %struct.gamma_curve_segment { i16 2688, i16 2815 }, %struct.gamma_curve_segment { i16 2816, i16 2943 }, %struct.gamma_curve_segment { i16 2944, i16 3071 }, %struct.gamma_curve_segment { i16 3072, i16 3199 }, %struct.gamma_curve_segment { i16 3200, i16 3327 }, %struct.gamma_curve_segment { i16 3328, i16 3455 }, %struct.gamma_curve_segment { i16 3456, i16 3583 }, %struct.gamma_curve_segment { i16 3584, i16 3711 }, %struct.gamma_curve_segment { i16 3712, i16 3839 }, %struct.gamma_curve_segment { i16 3840, i16 3967 }, %struct.gamma_curve_segment { i16 3968, i16 4095 }], [64 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to enable runtime power management: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to disable runtime power management: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@malidp_se_set_enh_coeffs.enhancer_coeffs = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -8, i32 -8, i32 -8, i32 -8, i32 128, i32 -8, i32 -8, i32 -8, i32 -8], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 531, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 543, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"malidp_crtc_funcs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 512, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant [25 x i8] c"malidp_crtc_helper_funcs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 438, i32 43 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 449, i32 6 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 261, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 39, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"segments\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 98, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 57, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [37 x i8] c"../drivers/gpu/drm/arm/malidp_crtc.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 91, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"enhancer_coeffs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/arm/malidp_hw.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 368, i32 19 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @malidp_crtc_funcs, ptr @malidp_crtc_helper_funcs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @segments, ptr @.str.5, ptr @.str.6, ptr @malidp_se_set_enh_coeffs.enhancer_coeffs], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @segments to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_se_set_enh_coeffs.enhancer_coeffs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @malidp_crtc_init(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %call = tail call i32 @malidp_de_planes_init(ptr noundef %drm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 18
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %plane_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp3.not = icmp eq ptr %.pn, %plane_list
  br i1 %cmp3.not, label %for.cond.cleanup.sink.split_crit_edge, label %for.body

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.cond
  %type = getelementptr i8, ptr %.pn, i32 476
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 8
  %cmp4 = icmp eq i32 %4, 1
  br i1 %cmp4, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.end:                                          ; preds = %for.body
  %plane.0.le = getelementptr i8, ptr %.pn, i32 -4
  %tobool.not = icmp eq ptr %plane.0.le, null
  br i1 %tobool.not, label %for.end.cleanup.sink.split_crit_edge, label %if.end13

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end13:                                         ; preds = %for.end
  %crtc = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 1
  %call14 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %drm, ptr noundef %crtc, ptr noundef nonnull %plane.0.le, ptr noundef null, ptr noundef nonnull @malidp_crtc_funcs, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %helper_private.i = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 1, i32 19
  %5 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @malidp_crtc_helper_funcs, ptr %helper_private.i, align 8
  %call20 = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef %crtc, i32 noundef 4096) #5
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef %crtc, i32 noundef 0, i1 noundef zeroext true, i32 noundef 4096) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %se_base.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %se_base.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %se_base.i, align 2
  %conv.i = zext i16 %11 to i32
  %features.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %features.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %features.i, align 4
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %cond.i = select i1 %tobool.not.i, i32 12, i32 16
  %add.i = add nuw nsw i32 %cond.i, %conv.i
  %add4.i = add nuw nsw i32 %add.i, 60
  %add5.i = add nuw nsw i32 %add.i, 64
  %pm_suspended.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %7, i32 0, i32 9
  %15 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pm_suspended.i.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %if.end17.malidp_hw_write.exit.i_crit_edge, label %do.end.i.i, !prof !32

if.end17.malidp_hw_write.exit.i_crit_edge:        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit.i

do.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit.i

malidp_hw_write.exit.i:                           ; preds = %do.end.i.i, %if.end17.malidp_hw_write.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 402669312) #5, !srcloc !34
  br label %for.body.i

for.body.i:                                       ; preds = %malidp_hw_write.exit20.i.for.body.i_crit_edge, %malidp_hw_write.exit.i
  %i.021.i = phi i32 [ 0, %malidp_hw_write.exit.i ], [ %inc.i, %malidp_hw_write.exit20.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [9 x i32], ptr @malidp_se_set_enh_coeffs.enhancer_coeffs, i32 0, i32 %i.021.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl nuw nsw i32 %i.021.i, 2
  %add7.i = add nuw nsw i32 %add5.i, %mul.i
  %21 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pm_suspended.i.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i16.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i16.i, label %for.body.i.malidp_hw_write.exit20.i_crit_edge, label %do.end.i17.i, !prof !32

for.body.i.malidp_hw_write.exit20.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit20.i

do.end.i17.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit20.i

malidp_hw_write.exit20.i:                         ; preds = %do.end.i17.i, %for.body.i.malidp_hw_write.exit20.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %24 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %25, i32 %add7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %23) #5, !srcloc !34
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %malidp_hw_write.exit20.i.cleanup_crit_edge, label %malidp_hw_write.exit20.i.for.body.i_crit_edge

malidp_hw_write.exit20.i.for.body.i_crit_edge:    ; preds = %malidp_hw_write.exit20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

malidp_hw_write.exit20.i.cleanup_crit_edge:       ; preds = %malidp_hw_write.exit20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.end.cleanup.sink.split_crit_edge, %for.cond.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.1.sink = phi ptr [ @.str, %entry.cleanup.sink.split_crit_edge ], [ @.str.1, %for.end.cleanup.sink.split_crit_edge ], [ @.str.1, %for.cond.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ -22, %for.end.cleanup.sink.split_crit_edge ], [ -22, %for.cond.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.1.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %malidp_hw_write.exit20.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end13.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %malidp_hw_write.exit20.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @malidp_de_planes_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_crtc_reset(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 620) #8
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %1 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %malidp_crtc_destroy_state.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

malidp_crtc_destroy_state.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %2) #5
  tail call void @kfree(ptr noundef nonnull %2) #5
  br label %if.end

if.end:                                           ; preds = %malidp_crtc_destroy_state.exit, %entry.if.end_crit_edge
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef %call7.i.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @malidp_crtc_duplicate_state(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !35

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 449, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 620) #8
  %tobool27.not = icmp eq ptr %call7.i, null
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call7.i) #5
  %gamma_coeffs = getelementptr inbounds %struct.malidp_crtc_state, ptr %call7.i, i32 0, i32 1
  %gamma_coeffs30 = getelementptr inbounds %struct.malidp_crtc_state, ptr %1, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %gamma_coeffs, ptr %gamma_coeffs30, i32 256)
  %coloradj_coeffs = getelementptr inbounds %struct.malidp_crtc_state, ptr %call7.i, i32 0, i32 2
  %coloradj_coeffs33 = getelementptr inbounds %struct.malidp_crtc_state, ptr %1, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %coloradj_coeffs, ptr %coloradj_coeffs33, i32 48)
  %scaler_config = getelementptr inbounds %struct.malidp_crtc_state, ptr %call7.i, i32 0, i32 3
  %scaler_config35 = getelementptr inbounds %struct.malidp_crtc_state, ptr %1, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %scaler_config, ptr %scaler_config35, i32 28)
  %scaled_planes_mask = getelementptr inbounds %struct.malidp_crtc_state, ptr %call7.i, i32 0, i32 4
  %6 = ptrtoint ptr %scaled_planes_mask to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %scaled_planes_mask, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call7.i, %if.end29 ], [ null, %if.end24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_crtc_destroy_state(ptr nocapture noundef readnone %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %state) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %state) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_crtc_enable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %vsync_irq = getelementptr inbounds %struct.malidp_hw_regmap, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %vsync_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsync_irq, align 4
  %pm_suspended.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i.i, label %entry.malidp_hw_read.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !32

entry.malidp_hw_read.exit.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i.i

malidp_hw_read.exit.i.i:                          ; preds = %do.end.i.i.i, %entry.malidp_hw_read.exit.i.i_crit_edge
  %regs.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  %11 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i2.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i2.i.i, label %malidp_hw_read.exit.i.i.malidp_hw_enable_irq.exit_crit_edge, label %do.end.i3.i.i, !prof !32

malidp_hw_read.exit.i.i.malidp_hw_enable_irq.exit_crit_edge: ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_enable_irq.exit

do.end.i3.i.i:                                    ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_enable_irq.exit

malidp_hw_enable_irq.exit:                        ; preds = %do.end.i3.i.i, %malidp_hw_read.exit.i.i.malidp_hw_enable_irq.exit_crit_edge
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %or.i.i = or i32 %13, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %15 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %14) #5, !srcloc !34
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_crtc_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %vsync_irq = getelementptr inbounds %struct.malidp_hw_regmap, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %vsync_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsync_irq, align 4
  %pm_suspended.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i.i, label %entry.malidp_hw_read.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !32

entry.malidp_hw_read.exit.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i.i

malidp_hw_read.exit.i.i:                          ; preds = %do.end.i.i.i, %entry.malidp_hw_read.exit.i.i_crit_edge
  %regs.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  %11 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i2.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i2.i.i, label %malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge, label %do.end.i3.i.i, !prof !32

malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge: ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_disable_irq.exit

do.end.i3.i.i:                                    ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_disable_irq.exit

malidp_hw_disable_irq.exit:                       ; preds = %do.end.i3.i.i, %malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %neg.i.i = xor i32 %5, -1
  %and.i.i = and i32 %13, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  %15 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %14) #5, !srcloc !34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_crtc_mode_valid(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc_clock = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 12
  %0 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crtc_clock, align 4
  %mul = mul i32 %1, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not = icmp eq i32 %mul, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %pxlclk = getelementptr inbounds %struct.malidp_hw_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pxlclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pxlclk, align 4
  %call = tail call i32 @clk_round_rate(ptr noundef %5, i32 noundef %mul) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %mul)
  %cmp.not = icmp eq i32 %call, %mul
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %if.then1

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %mul) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 14, %if.then1 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_crtc_atomic_check(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %vm.i = alloca %struct.videomode, align 4
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
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %state2 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state2, align 4
  %dev3 = getelementptr inbounds %struct.drm_atomic_state, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3, align 4
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 18
  %12 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn230 = load ptr, ptr %plane_list, align 4
  %cmp.not231 = icmp eq ptr %.pn230, %plane_list
  br i1 %cmp.not231, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rotation_memory245 = getelementptr inbounds %struct.malidp_hw_device, ptr %7, i32 0, i32 11
  %13 = ptrtoint ptr %rotation_memory245 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rotation_memory245, align 4
  br label %if.end32

for.body.lr.ph:                                   ; preds = %entry
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %plane_mask, align 4
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %9, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn234 = phi ptr [ %.pn230, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %rotated_planes.0232 = phi i32 [ 0, %for.body.lr.ph ], [ %rotated_planes.2, %for.inc.for.body_crit_edge ]
  %index.i.i186 = getelementptr i8, ptr %.pn234, i32 480
  %17 = ptrtoint ptr %index.i.i186 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i.i186, align 4
  %shl.i = shl nuw i32 1, %18
  %and = and i32 %shl.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else:                                          ; preds = %for.body
  %19 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %planes.i, align 4
  %state1.i = getelementptr %struct.__drm_planes_state, ptr %20, i32 %18, i32 1
  %21 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state1.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  %state6.i = getelementptr i8, ptr %.pn234, i32 488
  %spec.select.i = select i1 %tobool.not.i, ptr %state6.i, ptr %state1.i
  %23 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %retval.0.i = load ptr, ptr %spec.select.i, align 4
  %tobool13.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool13.not, label %if.else.for.inc_crit_edge, label %if.else15

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else15:                                        ; preds = %if.else
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i, i32 0, i32 14
  %24 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rotation, align 4
  %and17 = and i32 %25, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.else15.if.then20_crit_edge

if.else15.if.then20_crit_edge:                    ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.else15
  %fb16 = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i, i32 0, i32 2
  %26 = ptrtoint ptr %fb16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fb16, align 4
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool19.not = icmp eq i64 %29, 0
  br i1 %tobool19.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.else15.if.then20_crit_edge
  %inc = add i32 %rotated_planes.0232, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %lor.lhs.false.for.inc_crit_edge, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %rotated_planes.2 = phi i32 [ %rotated_planes.0232, %if.else.for.inc_crit_edge ], [ %rotated_planes.0232, %for.body.for.inc_crit_edge ], [ %inc, %if.then20 ], [ %rotated_planes.0232, %lor.lhs.false.for.inc_crit_edge ]
  %30 = ptrtoint ptr %.pn234 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn234, align 4
  %cmp.not = icmp eq ptr %.pn, %plane_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %rotation_memory = getelementptr inbounds %struct.malidp_hw_device, ptr %7, i32 0, i32 11
  %31 = ptrtoint ptr %rotation_memory to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rotation_memory, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rotated_planes.2)
  %cmp28 = icmp sgt i32 %rotated_planes.2, 1
  br i1 %cmp28, label %if.then29, label %for.end.if.end32_crit_edge

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then29:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx31 = getelementptr %struct.malidp_hw_device, ptr %7, i32 0, i32 11, i32 1
  %33 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx31, align 4
  %add = add i32 %34, %32
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %for.end.if.end32_crit_edge, %for.end.thread
  %35 = phi i32 [ %32, %if.then29 ], [ %32, %for.end.if.end32_crit_edge ], [ %14, %for.end.thread ]
  %rotated_planes.0.lcssa247 = phi i32 [ %rotated_planes.2, %if.then29 ], [ %rotated_planes.2, %for.end.if.end32_crit_edge ], [ 0, %for.end.thread ]
  %rot_mem_free.0 = phi i32 [ %add, %if.then29 ], [ %32, %for.end.if.end32_crit_edge ], [ %14, %for.end.thread ]
  %36 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn184235 = load ptr, ptr %plane_list, align 4
  %cmp47.not236 = icmp eq ptr %.pn184235, %plane_list
  br i1 %cmp47.not236, label %if.end32.for.end107_crit_edge, label %for.body49.lr.ph

if.end32.for.end107_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end107

for.body49.lr.ph:                                 ; preds = %if.end32
  %plane_mask50 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 4
  %37 = ptrtoint ptr %plane_mask50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %plane_mask50, align 4
  %planes.i190 = getelementptr inbounds %struct.drm_atomic_state, ptr %9, i32 0, i32 3
  %arrayidx83 = getelementptr %struct.malidp_hw_device, ptr %7, i32 0, i32 11, i32 1
  br label %for.body49

for.body49:                                       ; preds = %for.inc101.for.body49_crit_edge, %for.body49.lr.ph
  %.pn184242 = phi ptr [ %.pn184235, %for.body49.lr.ph ], [ %.pn184, %for.inc101.for.body49_crit_edge ]
  %rot_mem_free.1239 = phi i32 [ %rot_mem_free.0, %for.body49.lr.ph ], [ %rot_mem_free.4, %for.inc101.for.body49_crit_edge ]
  %rotated_planes.3237 = phi i32 [ %rotated_planes.0.lcssa247, %for.body49.lr.ph ], [ %rotated_planes.6, %for.inc101.for.body49_crit_edge ]
  %index.i.i188 = getelementptr i8, ptr %.pn184242, i32 480
  %39 = ptrtoint ptr %index.i.i188 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index.i.i188, align 4
  %shl.i189 = shl nuw i32 1, %40
  %and52 = and i32 %shl.i189, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %for.body49.for.inc101_crit_edge, label %if.else55

for.body49.for.inc101_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc101

if.else55:                                        ; preds = %for.body49
  %41 = ptrtoint ptr %planes.i190 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %planes.i190, align 4
  %state1.i192 = getelementptr %struct.__drm_planes_state, ptr %42, i32 %40, i32 1
  %43 = ptrtoint ptr %state1.i192 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %state1.i192, align 4
  %tobool.not.i193 = icmp eq ptr %44, null
  %state6.i194 = getelementptr i8, ptr %.pn184242, i32 488
  %spec.select.i195 = select i1 %tobool.not.i193, ptr %state6.i194, ptr %state1.i192
  %45 = ptrtoint ptr %spec.select.i195 to i32
  call void @__asan_load4_noabort(i32 %45)
  %retval.0.i196 = load ptr, ptr %spec.select.i195, align 4
  %tobool58.not = icmp eq ptr %retval.0.i196, null
  br i1 %tobool58.not, label %if.else55.for.inc101_crit_edge, label %if.else60

if.else55.for.inc101_crit_edge:                   ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc101

if.else60:                                        ; preds = %if.else55
  %rotation69 = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i196, i32 0, i32 14
  %46 = ptrtoint ptr %rotation69 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rotation69, align 4
  %and70 = and i32 %47, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %lor.lhs.false72, label %if.else60.if.then75_crit_edge

if.else60.if.then75_crit_edge:                    ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then75

lor.lhs.false72:                                  ; preds = %if.else60
  %fb68 = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i196, i32 0, i32 2
  %48 = ptrtoint ptr %fb68 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fb68, align 4
  %modifier73 = getelementptr inbounds %struct.drm_framebuffer, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %modifier73 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %modifier73, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %tobool74.not = icmp eq i64 %51, 0
  br i1 %tobool74.not, label %lor.lhs.false72.for.inc101_crit_edge, label %lor.lhs.false72.if.then75_crit_edge

lor.lhs.false72.if.then75_crit_edge:              ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then75

lor.lhs.false72.for.inc101_crit_edge:             ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc101

if.then75:                                        ; preds = %lor.lhs.false72.if.then75_crit_edge, %if.else60.if.then75_crit_edge
  %dec = add i32 %rotated_planes.3237, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool76.not = icmp eq i32 %dec, 0
  br i1 %tobool76.not, label %if.then75.if.end91_crit_edge, label %if.else78

if.then75.if.end91_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.else78:                                        ; preds = %if.then75
  %layer = getelementptr i8, ptr %.pn184242, i32 528
  %52 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %layer, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %53, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %55)
  %cmp79.not = icmp eq i16 %55, 1
  br i1 %cmp79.not, label %lor.lhs.false81, label %if.else78.if.then86_crit_edge

if.else78.if.then86_crit_edge:                    ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then86

lor.lhs.false81:                                  ; preds = %if.else78
  %56 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp84 = icmp eq i32 %57, 0
  br i1 %cmp84, label %lor.lhs.false81.if.then86_crit_edge, label %lor.lhs.false81.if.end91_crit_edge

lor.lhs.false81.if.end91_crit_edge:               ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

lor.lhs.false81.if.then86_crit_edge:              ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then86

if.then86:                                        ; preds = %lor.lhs.false81.if.then86_crit_edge, %if.else78.if.then86_crit_edge
  %div185 = lshr i32 %rot_mem_free.1239, 1
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %lor.lhs.false81.if.end91_crit_edge, %if.then75.if.end91_crit_edge
  %rot_mem_usable.0 = phi i32 [ %div185, %if.then86 ], [ %rot_mem_free.1239, %if.then75.if.end91_crit_edge ], [ %35, %lor.lhs.false81.if.end91_crit_edge ]
  %sub = sub i32 %rot_mem_free.1239, %rot_mem_usable.0
  %rotmem_size = getelementptr inbounds %struct.malidp_plane_state, ptr %retval.0.i196, i32 0, i32 1
  %58 = ptrtoint ptr %rotmem_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rotmem_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %rot_mem_usable.0)
  %cmp92 = icmp ugt i32 %59, %rot_mem_usable.0
  br i1 %cmp92, label %if.end91.cleanup129_crit_edge, label %if.end91.for.inc101_crit_edge

if.end91.for.inc101_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc101

if.end91.cleanup129_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

for.inc101:                                       ; preds = %if.end91.for.inc101_crit_edge, %lor.lhs.false72.for.inc101_crit_edge, %if.else55.for.inc101_crit_edge, %for.body49.for.inc101_crit_edge
  %rotated_planes.6 = phi i32 [ %rotated_planes.3237, %if.else55.for.inc101_crit_edge ], [ %rotated_planes.3237, %for.body49.for.inc101_crit_edge ], [ %dec, %if.end91.for.inc101_crit_edge ], [ %rotated_planes.3237, %lor.lhs.false72.for.inc101_crit_edge ]
  %rot_mem_free.4 = phi i32 [ %rot_mem_free.1239, %if.else55.for.inc101_crit_edge ], [ %rot_mem_free.1239, %for.body49.for.inc101_crit_edge ], [ %sub, %if.end91.for.inc101_crit_edge ], [ %rot_mem_free.1239, %lor.lhs.false72.for.inc101_crit_edge ]
  %60 = ptrtoint ptr %.pn184242 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn184 = load ptr, ptr %.pn184242, align 4
  %cmp47.not = icmp eq ptr %.pn184, %plane_list
  br i1 %cmp47.not, label %for.inc101.for.end107_crit_edge, label %for.inc101.for.body49_crit_edge

for.inc101.for.body49_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body49

for.inc101.for.end107_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end107

for.end107:                                       ; preds = %for.inc101.for.end107_crit_edge, %if.end32.for.end107_crit_edge
  %connectors_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 3
  %61 = ptrtoint ptr %connectors_changed to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load = load i8, ptr %connectors_changed, align 2
  %62 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %bf.cast.not = icmp eq i8 %62, 0
  br i1 %bf.cast.not, label %for.end107.if.end119_crit_edge, label %if.then108

for.end107.if.end119_crit_edge:                   ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

if.then108:                                       ; preds = %for.end107
  %state109 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %63 = ptrtoint ptr %state109 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %state109, align 4
  %connector_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %connector_mask to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %connector_mask, align 4
  %connector_mask110 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 5
  %67 = ptrtoint ptr %connector_mask110 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %connector_mask110, align 4
  %xor = xor i32 %68, %66
  %index.i = getelementptr i8, ptr %crtc, i32 1140
  %69 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %index.i, align 4
  %shl = shl nuw i32 1, %70
  call void @__sanitizer_cov_trace_cmp4(i32 %xor, i32 %shl)
  %cmp112 = icmp eq i32 %xor, %shl
  br i1 %cmp112, label %if.then114, label %if.then108.if.end119_crit_edge

if.then108.if.end119_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

if.then114:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear117 = and i8 %bf.load, -17
  %71 = ptrtoint ptr %connectors_changed to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %bf.clear117, ptr %connectors_changed, align 2
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.then108.if.end119_crit_edge, %for.end107.if.end119_crit_edge
  %72 = ptrtoint ptr %connectors_changed to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.i = load i8, ptr %connectors_changed, align 2
  %73 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %bf.cast.not.i = icmp eq i8 %73, 0
  br i1 %bf.cast.not.i, label %if.end119.cond.false_crit_edge, label %lor.lhs.false.i

if.end119.cond.false_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

lor.lhs.false.i:                                  ; preds = %if.end119
  %gamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 12
  %74 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gamma_lut.i, align 4
  %tobool.not.i197 = icmp eq ptr %75, null
  br i1 %tobool.not.i197, label %lor.lhs.false.i.cond.false_crit_edge, label %if.end.i

lor.lhs.false.i.cond.false_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

if.end.i:                                         ; preds = %lor.lhs.false.i
  %state1.i198 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %76 = ptrtoint ptr %state1.i198 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %state1.i198, align 4
  %gamma_lut2.i = getelementptr inbounds %struct.drm_crtc_state, ptr %77, i32 0, i32 12
  %78 = ptrtoint ptr %gamma_lut2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %gamma_lut2.i, align 4
  %tobool3.not.i = icmp eq ptr %79, null
  br i1 %tobool3.not.i, label %if.end.i.if.end10.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %82 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp.i = icmp eq i32 %81, %83
  br i1 %cmp.i, label %land.lhs.true.i.cond.false_crit_edge, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

land.lhs.true.i.cond.false_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %75, i32 0, i32 4
  %84 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %85)
  %86 = icmp eq i32 %85, 32768
  br i1 %86, label %if.end19.i, label %if.end10.i.cleanup129_crit_edge

if.end10.i.cleanup129_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.end19.i:                                       ; preds = %if.end10.i
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %75, i32 0, i32 5
  %87 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %land.lhs.true26.i
  %inc.i = add nuw nsw i32 %i.079.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4096
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end19.i
  %i.079.i = phi i32 [ 0, %if.end19.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_color_lut, ptr %88, i32 %i.079.i
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx.i, align 2
  %green.i = getelementptr %struct.drm_color_lut, ptr %88, i32 %i.079.i, i32 1
  %91 = ptrtoint ptr %green.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %green.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %90, i16 %92)
  %cmp24.i = icmp eq i16 %90, %92
  br i1 %cmp24.i, label %land.lhs.true26.i, label %for.body.i.cleanup129_crit_edge

for.body.i.cleanup129_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

land.lhs.true26.i:                                ; preds = %for.body.i
  %blue.i = getelementptr %struct.drm_color_lut, ptr %88, i32 %i.079.i, i32 2
  %93 = ptrtoint ptr %blue.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %blue.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %90, i16 %94)
  %cmp32.i = icmp eq i16 %90, %94
  br i1 %cmp32.i, label %for.cond.i, label %land.lhs.true26.i.cleanup129_crit_edge

land.lhs.true26.i.cleanup129_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

for.end.i:                                        ; preds = %for.cond.i
  %95 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %bf.cast39.not.i = icmp eq i8 %95, 0
  br i1 %bf.cast39.not.i, label %if.then40.i, label %for.end.i.if.end48.i_crit_edge

for.end.i.if.end48.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i

if.then40.i:                                      ; preds = %for.end.i
  %bf.set.i = or i8 %bf.load.i, 64
  %96 = ptrtoint ptr %connectors_changed to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %bf.set.i, ptr %connectors_changed, align 2
  %97 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %crtc, align 8
  %call.i = tail call i32 @drm_atomic_helper_check_modeset(ptr noundef %98, ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool45.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool45.not.i, label %if.then40.i.if.end48.i_crit_edge, label %if.then40.i.cleanup129_crit_edge

if.then40.i.cleanup129_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.then40.i.if.end48.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then40.i.if.end48.i_crit_edge, %for.end.i.if.end48.i_crit_edge
  %99 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %gamma_lut.i, align 4
  %gamma_coeffs.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %5, i32 0, i32 1
  %data.i.i = getelementptr inbounds %struct.drm_property_blob, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cond.end.i.i.for.body.i.i_crit_edge, %if.end48.i
  %i.030.i.i = phi i32 [ 0, %if.end48.i ], [ %inc.i.i, %cond.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [64 x %struct.gamma_curve_segment], ptr @segments, i32 0, i32 %i.030.i.i
  %end.i.i = getelementptr [64 x %struct.gamma_curve_segment], ptr @segments, i32 0, i32 %i.030.i.i, i32 1
  %103 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %end.i.i, align 2
  %105 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx.i.i, align 2
  %conv2.i.i = zext i16 %106 to i32
  %green.i.i = getelementptr %struct.drm_color_lut, ptr %102, i32 %conv2.i.i, i32 1
  %107 = ptrtoint ptr %green.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %green.i.i, align 2
  %conv6.i.i = zext i16 %108 to i32
  %add.i.i.i = add nuw nsw i32 %conv6.i.i, 8
  %shr4.i.i.i = lshr i32 %add.i.i.i, 4
  %109 = tail call i32 @llvm.umin.i32(i32 %shr4.i.i.i, i32 4095) #5
  call void @__sanitizer_cov_trace_cmp2(i16 %104, i16 %106)
  %cmp14.i.i = icmp eq i16 %104, %106
  br i1 %cmp14.i.i, label %for.body.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i

for.body.i.i.cond.end.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %idxprom9.i.i = zext i16 %104 to i32
  %green11.i.i = getelementptr %struct.drm_color_lut, ptr %102, i32 %idxprom9.i.i, i32 1
  %110 = ptrtoint ptr %green11.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %green11.i.i, align 2
  %conv12.i.i = zext i16 %111 to i32
  %add.i28.i.i = add nuw nsw i32 %conv12.i.i, 8
  %shr4.i29.i.i = lshr i32 %add.i28.i.i, 4
  %112 = tail call i32 @llvm.umin.i32(i32 %shr4.i29.i.i, i32 4095) #5
  %sub.i.i = sub nsw i32 %idxprom9.i.i, %conv2.i.i
  %sub16.i.i = sub nsw i32 %112, %109
  %mul.i.i = shl nsw i32 %sub16.i.i, 8
  %div.i.i = udiv i32 %mul.i.i, %sub.i.i
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %for.body.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %div.i.i, %cond.false.i.i ], [ 0, %for.body.i.i.cond.end.i.i_crit_edge ]
  %and.i.i = shl i32 %cond.i.i, 16
  %shl.i.i = and i32 %and.i.i, 268369920
  %or.i.i = or i32 %shl.i.i, %109
  %arrayidx18.i.i = getelementptr i32, ptr %gamma_coeffs.i, i32 %i.030.i.i
  %113 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %or.i.i, ptr %arrayidx18.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.030.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %cond.end.i.i.cond.false_crit_edge, label %cond.end.i.i.for.body.i.i_crit_edge

cond.end.i.i.for.body.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

cond.end.i.i.cond.false_crit_edge:                ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.false:                                       ; preds = %cond.end.i.i.cond.false_crit_edge, %land.lhs.true.i.cond.false_crit_edge, %lor.lhs.false.i.cond.false_crit_edge, %if.end119.cond.false_crit_edge
  %114 = ptrtoint ptr %connectors_changed to i32
  call void @__asan_load1_noabort(i32 %114)
  %bf.load.i200 = load i8, ptr %connectors_changed, align 2
  %115 = and i8 %bf.load.i200, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %bf.cast.not.i201 = icmp eq i8 %115, 0
  br i1 %bf.cast.not.i201, label %cond.false.cond.false125_crit_edge, label %if.end.i203

cond.false.cond.false125_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false125

if.end.i203:                                      ; preds = %cond.false
  %ctm1.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 11
  %116 = ptrtoint ptr %ctm1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ctm1.i, align 4
  %tobool.not.i202 = icmp eq ptr %117, null
  br i1 %tobool.not.i202, label %if.end.i203.cond.false125_crit_edge, label %if.end3.i

if.end.i203.cond.false125_crit_edge:              ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false125

if.end3.i:                                        ; preds = %if.end.i203
  %state4.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %118 = ptrtoint ptr %state4.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %state4.i, align 4
  %ctm5.i = getelementptr inbounds %struct.drm_crtc_state, ptr %119, i32 0, i32 11
  %120 = ptrtoint ptr %ctm5.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ctm5.i, align 4
  %tobool6.not.i = icmp eq ptr %121, null
  br i1 %tobool6.not.i, label %if.end3.i.if.end13.i_crit_edge, label %land.lhs.true.i205

if.end3.i.if.end13.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

land.lhs.true.i205:                               ; preds = %if.end3.i
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  %124 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %117, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %125)
  %cmp.i204 = icmp eq i32 %123, %125
  br i1 %cmp.i204, label %land.lhs.true.i205.cond.false125_crit_edge, label %land.lhs.true.i205.if.end13.i_crit_edge

land.lhs.true.i205.if.end13.i_crit_edge:          ; preds = %land.lhs.true.i205
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

land.lhs.true.i205.cond.false125_crit_edge:       ; preds = %land.lhs.true.i205
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false125

if.end13.i:                                       ; preds = %land.lhs.true.i205.if.end13.i_crit_edge, %if.end3.i.if.end13.i_crit_edge
  %data.i206 = getelementptr inbounds %struct.drm_property_blob, ptr %117, i32 0, i32 5
  %126 = ptrtoint ptr %data.i206 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %data.i206, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %127, align 8
  %and.i = lshr i64 %129, 20
  %130 = trunc i64 %and.i to i32
  %conv.i = and i32 %130, 32767
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %129)
  %tobool18.i = icmp slt i64 %129, 0
  %add.i = sub nsw i32 0, %conv.i
  %spec.select.i207 = select i1 %tobool18.i, i32 %add.i, i32 %conv.i
  %.lobit.i = lshr i64 %129, 63
  %131 = trunc i64 %.lobit.i to i32
  %and24.i = lshr i32 %spec.select.i207, 14
  %and24.lobit.i = and i32 %and24.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and24.lobit.i, i32 %131)
  %cmp30.not.i = icmp eq i32 %and24.lobit.i, %131
  br i1 %cmp30.not.i, label %if.end33.i, label %if.end13.i.cleanup129_crit_edge

if.end13.i.cleanup129_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.end33.i:                                       ; preds = %if.end13.i
  %arrayidx34.i = getelementptr %struct.malidp_crtc_state, ptr %5, i32 0, i32 2, i32 0
  %132 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %spec.select.i207, ptr %arrayidx34.i, align 4
  %arrayidx.1.i = getelementptr [9 x i64], ptr %127, i32 0, i32 1
  %133 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %arrayidx.1.i, align 8
  %and.1.i = lshr i64 %134, 20
  %135 = trunc i64 %and.1.i to i32
  %conv.1.i = and i32 %135, 32767
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %134)
  %tobool18.1.i = icmp slt i64 %134, 0
  %add.1.i = sub nsw i32 0, %conv.1.i
  %spec.select.1.i = select i1 %tobool18.1.i, i32 %add.1.i, i32 %conv.1.i
  %.lobit.1.i = lshr i64 %134, 63
  %136 = trunc i64 %.lobit.1.i to i32
  %and24.1.i = lshr i32 %spec.select.1.i, 14
  %and24.lobit.1.i = and i32 %and24.1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and24.lobit.1.i, i32 %136)
  %cmp30.not.1.i = icmp eq i32 %and24.lobit.1.i, %136
  br i1 %cmp30.not.1.i, label %if.end33.1.i, label %if.end33.i.cleanup129_crit_edge

if.end33.i.cleanup129_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.end33.1.i:                                     ; preds = %if.end33.i
  %arrayidx34.1.i = getelementptr %struct.malidp_crtc_state, ptr %5, i32 0, i32 2, i32 1
  %137 = ptrtoint ptr %arrayidx34.1.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %spec.select.1.i, ptr %arrayidx34.1.i, align 4
  %arrayidx.2.i = getelementptr [9 x i64], ptr %127, i32 0, i32 2
  %138 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %arrayidx.2.i, align 8
  %and.2.i = lshr i64 %139, 20
  %140 = trunc i64 %and.2.i to i32
  %conv.2.i = and i32 %140, 32767
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %139)
  %tobool18.2.i = icmp slt i64 %139, 0
  %add.2.i = sub nsw i32 0, %conv.2.i
  %spec.select.2.i = select i1 %tobool18.2.i, i32 %add.2.i, i32 %conv.2.i
  %.lobit.2.i = lshr i64 %139, 63
  %141 = trunc i64 %.lobit.2.i to i32
  %and24.2.i = lshr i32 %spec.select.2.i, 14
  %and24.lobit.2.i = and i32 %and24.2.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and24.lobit.2.i, i32 %141)
  %cmp30.not.2.i = icmp eq i32 %and24.lobit.2.i, %141
  br i1 %cmp30.not.2.i, label %if.end33.2.i, label %if.end33.1.i.cleanup129_crit_edge

if.end33.1.i.cleanup129_crit_edge:                ; preds = %if.end33.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.end33.2.i:                                     ; preds = %if.end33.1.i
  %arrayidx34.2.i = getelementptr %struct.malidp_crtc_state, ptr %5, i32 0, i32 2, i32 2
  %142 = ptrtoint ptr %arrayidx34.2.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %spec.select.2.i, ptr %arrayidx34.2.i, align 4
  %arrayidx.3.i = getelementptr [9 x i64], ptr %127, i32 0, i32 3
  %143 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %arrayidx.3.i, align 8
  %and.3.i = lshr i64 %144, 20
  %145 = trunc i64 %and.3.i to i32
  %conv.3.i = and i32 %145, 32767
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %144)
  %tobool18.3.i = icmp slt i64 %144, 0
  %add.3.i = sub nsw i32 0, %conv.3.i
  %spec.select.3.i = select i1 %tobool18.3.i, i32 %add.3.i, i32 %conv.3.i
  %.lobit.3.i = lshr i64 %144, 63
  %146 = trunc i64 %.lobit.3.i to i32
  %and24.3.i = lshr i32 %spec.select.3.i, 14
  %and24.lobit.3.i = and i32 %and24.3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and24.lobit.3.i, i32 %146)
  %cmp30.not.3.i = icmp eq i32 %and24.lobit.3.i, %146
  br i1 %cmp30.not.3.i, label %if.end33.3.i, label %if.end33.2.i.cleanup129_crit_edge

if.end33.2.i.cleanup129_crit_edge:                ; preds = %if.end33.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.end33.3.i:                                     ; preds = %if.end33.2.i
  %arrayidx34.3.i = getelementptr %struct.malidp_crtc_state, ptr %5, i32 0, i32 2, i32 3
  %147 = ptrtoint ptr %arrayidx34.3.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %spec.select.3.i, ptr %arrayidx34.3.i, align 4
  %arrayidx.4.i = getelementptr [9 x i64], ptr %127, i32 0, i32 4
  %148 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %arrayidx.4.i, align 8
  %and.4.i = lshr i64 %149, 20
  %150 = trunc i64 %and.4.i to i32
  %conv.4.i = and i32 %150, 32767
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %149)
  %tobool18.4.i = icmp slt i64 %149, 0
  %add.4.i = sub nsw i32 0, %conv.4.i
  %spec.select.4.i = select i1 %tobool18.4.i, i32 %add.4.i, i32 %conv.4.i
  %.lobit.4.i = lshr i64 %149, 63
  %151 = trunc i64 %.lobit.4.i to i32
  %and24.4.i = lshr i32 %spec.select.4.i, 14
  %and24.lobit.4.i = and i32 %and24.4.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and24.lobit.4.i, i32 %151)
  %cmp30.not.4.i = icmp eq i32 %and24.lobit.4.i, %151
  br i1 %cmp30.not.4.i, label %if.end33.4.i, label %if.end33.3.i.cleanup129_crit_edge

if.end33.3.i.cleanup129_crit_edge:                ; preds = %if.end33.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.end33.4.i:                                     ; preds = %if.end33.3.i
  %arrayidx34.4.i = getelementptr %struct.malidp_crtc_state, ptr %5, i32 0, i32 2, i32 4
  %152 = ptrtoint ptr %arrayidx34.4.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %spec.select.4.i, ptr %arrayidx34.4.i, align 4
  %arrayidx.5.i = getelementptr [9 x i64], ptr %127, i32 0, i32 5
  %153 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %arrayidx.5.i, align 8
  %and.5.i = lshr i64 %154, 20
  %155 = trunc i64 %and.5.i to i32
  %conv.5.i = and i32 %155, 32767
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %154)
  %tobool18.5.i = icmp slt i64 %154, 0
  %add.5.i = sub nsw i32 0, %conv.5.i
  %spec.select.5.i = select i1 %tobool18.5.i, i32 %add.5.i, i32 %conv.5.i
  %.lobit.5.i = lshr i64 %154, 63
  %156 = trunc i64 %.lobit.5.i to i32
  %and24.5.i = lshr i32 %spec.select.5.i, 14
  %and24.lobit.5.i = and i32 %and24.5.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and24.lobit.5.i, i32 %156)
  %cmp30.not.5.i = icmp eq i32 %and24.lobit.5.i, %156
  br i1 %cmp30.not.5.i, label %if.end33.5.i, label %if.end33.4.i.cleanup129_crit_edge

if.end33.4.i.cleanup129_crit_edge:                ; preds = %if.end33.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.end33.5.i:                                     ; preds = %if.end33.4.i
  %arrayidx34.5.i = getelementptr %struct.malidp_crtc_state, ptr %5, i32 0, i32 2, i32 5
  %157 = ptrtoint ptr %arrayidx34.5.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %spec.select.5.i, ptr %arrayidx34.5.i, align 4
  %arrayidx.6.i = getelementptr [9 x i64], ptr %127, i32 0, i32 6
  %158 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %arrayidx.6.i, align 8
  %and.6.i = lshr i64 %159, 20
  %160 = trunc i64 %and.6.i to i32
  %conv.6.i = and i32 %160, 32767
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %159)
  %tobool18.6.i = icmp slt i64 %159, 0
  %add.6.i = sub nsw i32 0, %conv.6.i
  %spec.select.6.i = select i1 %tobool18.6.i, i32 %add.6.i, i32 %conv.6.i
  %.lobit.6.i = lshr i64 %159, 63
  %161 = trunc i64 %.lobit.6.i to i32
  %and24.6.i = lshr i32 %spec.select.6.i, 14
  %and24.lobit.6.i = and i32 %and24.6.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and24.lobit.6.i, i32 %161)
  %cmp30.not.6.i = icmp eq i32 %and24.lobit.6.i, %161
  br i1 %cmp30.not.6.i, label %if.end33.6.i, label %if.end33.5.i.cleanup129_crit_edge

if.end33.5.i.cleanup129_crit_edge:                ; preds = %if.end33.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.end33.6.i:                                     ; preds = %if.end33.5.i
  %arrayidx34.6.i = getelementptr %struct.malidp_crtc_state, ptr %5, i32 0, i32 2, i32 6
  %162 = ptrtoint ptr %arrayidx34.6.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %spec.select.6.i, ptr %arrayidx34.6.i, align 4
  %arrayidx.7.i = getelementptr [9 x i64], ptr %127, i32 0, i32 7
  %163 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %arrayidx.7.i, align 8
  %and.7.i = lshr i64 %164, 20
  %165 = trunc i64 %and.7.i to i32
  %conv.7.i = and i32 %165, 32767
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %164)
  %tobool18.7.i = icmp slt i64 %164, 0
  %add.7.i = sub nsw i32 0, %conv.7.i
  %spec.select.7.i = select i1 %tobool18.7.i, i32 %add.7.i, i32 %conv.7.i
  %.lobit.7.i = lshr i64 %164, 63
  %166 = trunc i64 %.lobit.7.i to i32
  %and24.7.i = lshr i32 %spec.select.7.i, 14
  %and24.lobit.7.i = and i32 %and24.7.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and24.lobit.7.i, i32 %166)
  %cmp30.not.7.i = icmp eq i32 %and24.lobit.7.i, %166
  br i1 %cmp30.not.7.i, label %if.end33.7.i, label %if.end33.6.i.cleanup129_crit_edge

if.end33.6.i.cleanup129_crit_edge:                ; preds = %if.end33.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.end33.7.i:                                     ; preds = %if.end33.6.i
  %arrayidx34.7.i = getelementptr %struct.malidp_crtc_state, ptr %5, i32 0, i32 2, i32 7
  %167 = ptrtoint ptr %arrayidx34.7.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %spec.select.7.i, ptr %arrayidx34.7.i, align 4
  %arrayidx.8.i = getelementptr [9 x i64], ptr %127, i32 0, i32 8
  %168 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %arrayidx.8.i, align 8
  %and.8.i = lshr i64 %169, 20
  %170 = trunc i64 %and.8.i to i32
  %conv.8.i = and i32 %170, 32767
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %169)
  %tobool18.8.i = icmp slt i64 %169, 0
  %add.8.i = sub nsw i32 0, %conv.8.i
  %spec.select.8.i = select i1 %tobool18.8.i, i32 %add.8.i, i32 %conv.8.i
  %.lobit.8.i = lshr i64 %169, 63
  %171 = trunc i64 %.lobit.8.i to i32
  %and24.8.i = lshr i32 %spec.select.8.i, 14
  %and24.lobit.8.i = and i32 %and24.8.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and24.lobit.8.i, i32 %171)
  %cmp30.not.8.i = icmp eq i32 %and24.lobit.8.i, %171
  br i1 %cmp30.not.8.i, label %if.end33.8.i, label %if.end33.7.i.cleanup129_crit_edge

if.end33.7.i.cleanup129_crit_edge:                ; preds = %if.end33.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.end33.8.i:                                     ; preds = %if.end33.7.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx34.8.i = getelementptr %struct.malidp_crtc_state, ptr %5, i32 0, i32 2, i32 8
  %172 = ptrtoint ptr %arrayidx34.8.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %spec.select.8.i, ptr %arrayidx34.8.i, align 4
  br label %cond.false125

cond.false125:                                    ; preds = %if.end33.8.i, %land.lhs.true.i205.cond.false125_crit_edge, %if.end.i203.cond.false125_crit_edge, %cond.false.cond.false125_crit_edge
  %173 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %add.ptr, align 8
  %scaler_config.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %5, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm.i) #5
  %175 = call ptr @memset(ptr %vm.i, i32 255, i32 40)
  %scaled_planes_mask.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %5, i32 0, i32 4
  %176 = ptrtoint ptr %scaled_planes_mask.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %scaled_planes_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i208 = icmp eq i8 %177, 0
  br i1 %tobool.not.i208, label %if.then.i, label %if.end.i212

if.then.i:                                        ; preds = %cond.false125
  call void @__sanitizer_cov_trace_pc() #7
  %178 = ptrtoint ptr %scaler_config.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %bf.load.i209 = load i8, ptr %scaler_config.i, align 4
  %bf.clear.i = and i8 %bf.load.i209, 127
  br label %mclk_calc.i

if.end.i212:                                      ; preds = %cond.false125
  %conv.i210 = zext i8 %177 to i32
  %sub.i = add nuw nsw i32 %conv.i210, 255
  %and.i211 = and i32 %sub.i, %conv.i210
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i211)
  %tobool5.not.i = icmp eq i32 %and.i211, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i212.malidp_crtc_atomic_check_scaling.exit_crit_edge

if.end.i212.malidp_crtc_atomic_check_scaling.exit_crit_edge: ; preds = %if.end.i212
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_crtc_atomic_check_scaling.exit

if.end7.i:                                        ; preds = %if.end.i212
  %179 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %state2, align 4
  %dev10.i = getelementptr inbounds %struct.drm_atomic_state, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev10.i, align 4
  %plane_list.i = getelementptr inbounds %struct.drm_device, ptr %182, i32 0, i32 30, i32 18
  %183 = ptrtoint ptr %plane_list.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %.pn334.i = load ptr, ptr %plane_list.i, align 4
  %cmp.not336.i = icmp eq ptr %.pn334.i, %plane_list.i
  br i1 %cmp.not336.i, label %cond.false6.i323.thread.i, label %for.body.lr.ph.i

cond.false6.i323.thread.i:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %184 = ptrtoint ptr %scaler_config.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %bf.load111345.i = load i8, ptr %scaler_config.i, align 4
  %bf.set113346.i = and i8 %bf.load111345.i, 71
  %bf.set120377.i = or i8 %bf.set113346.i, -88
  br label %malidp_se_select_coeffs.exit325.i

for.body.lr.ph.i:                                 ; preds = %if.end7.i
  %plane_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 4
  %185 = ptrtoint ptr %plane_mask.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %plane_mask.i, align 4
  %planes.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %180, i32 0, i32 3
  %input_w.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %5, i32 0, i32 3, i32 2
  %input_h.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %5, i32 0, i32 3, i32 3
  %output_w.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %5, i32 0, i32 3, i32 4
  %output_h.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %5, i32 0, i32 3, i32 5
  %h_init_phase.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %5, i32 0, i32 3, i32 6
  %h_delta_phase.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %5, i32 0, i32 3, i32 7
  %v_init_phase.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %5, i32 0, i32 3, i32 8
  %v_delta_phase.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %5, i32 0, i32 3, i32 9
  %plane_src_id.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %5, i32 0, i32 3, i32 1
  br label %for.body.i214

for.body.i214:                                    ; preds = %for.inc.i.for.body.i214_crit_edge, %for.body.lr.ph.i
  %.pn339.i = phi ptr [ %.pn334.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i214_crit_edge ]
  %h_upscale_factor.0338.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %h_upscale_factor.2.i, %for.inc.i.for.body.i214_crit_edge ]
  %v_upscale_factor.0337.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %v_upscale_factor.2.i, %for.inc.i.for.body.i214_crit_edge ]
  %index.i.i.i = getelementptr i8, ptr %.pn339.i, i32 480
  %187 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i213 = shl nuw i32 1, %188
  %and18.i = and i32 %shl.i.i213, %186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %for.body.i214.for.inc.i_crit_edge, label %if.else.i

for.body.i214.for.inc.i_crit_edge:                ; preds = %for.body.i214
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i214
  %189 = ptrtoint ptr %planes.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %planes.i.i, align 4
  %state1.i.i = getelementptr %struct.__drm_planes_state, ptr %190, i32 %188, i32 1
  %191 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %state1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %192, null
  %state6.i.i = getelementptr i8, ptr %.pn339.i, i32 488
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %state6.i.i, ptr %state1.i.i
  %193 = ptrtoint ptr %spec.select.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %retval.0.i.i = load ptr, ptr %spec.select.i.i, align 4
  %tobool23.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool23.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.else25.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.else25.i:                                      ; preds = %if.else.i
  %layer.i = getelementptr i8, ptr %.pn339.i, i32 528
  %194 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %layer.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %195, align 4
  %conv29.i = zext i16 %197 to i32
  %and31.i = and i32 %conv29.i, %conv.i210
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.else25.i.for.inc.i_crit_edge, label %if.end34.i

if.else25.i.for.inc.i_crit_edge:                  ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end34.i:                                       ; preds = %if.else25.i
  %crtc_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i.i, i32 0, i32 6
  %198 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %crtc_w.i, align 4
  %src_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i.i, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp164.i.i.i = icmp eq i32 %199, 0
  br i1 %cmp164.i.i.i, label %if.end34.i.div_u64.exit.i_crit_edge, label %if.else174.i.i.i, !prof !32

if.end34.i.div_u64.exit.i_crit_edge:              ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  %200 = ptrtoint ptr %src_w.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %src_w.i, align 4
  %conv35.i = zext i32 %199 to i64
  %shl.i215 = shl nuw i64 %conv35.i, 32
  %202 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %201, i64 %shl.i215) #9, !srcloc !38
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %202, 1
  %extract.t327.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.end34.i.div_u64.exit.i_crit_edge
  %dividend.addr.0.i.i.off0.i = phi i32 [ %extract.t327.i, %if.else174.i.i.i ], [ 0, %if.end34.i.div_u64.exit.i_crit_edge ]
  %crtc_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i.i, i32 0, i32 7
  %203 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %crtc_h.i, align 4
  %src_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i.i, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp164.i.i306.i = icmp eq i32 %204, 0
  br i1 %cmp164.i.i306.i, label %div_u64.exit.i.div_u64.exit315.i_crit_edge, label %if.else174.i.i313.i, !prof !32

div_u64.exit.i.div_u64.exit315.i_crit_edge:       ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %div_u64.exit315.i

if.else174.i.i313.i:                              ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %205 = ptrtoint ptr %src_h.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %src_h.i, align 4
  %conv38.i = zext i32 %204 to i64
  %shl39.i = shl nuw i64 %conv38.i, 32
  %207 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %206, i64 %shl39.i) #9, !srcloc !38
  %asmresult1.i.i.i312.i = extractvalue { i64, i64 } %207, 1
  %extract.t331.i = trunc i64 %asmresult1.i.i.i312.i to i32
  br label %div_u64.exit315.i

div_u64.exit315.i:                                ; preds = %if.else174.i.i313.i, %div_u64.exit.i.div_u64.exit315.i_crit_edge
  %dividend.addr.0.i.i314.off0.i = phi i32 [ %extract.t331.i, %if.else174.i.i313.i ], [ 0, %div_u64.exit.i.div_u64.exit315.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %dividend.addr.0.i.i.off0.i)
  %cmp42.i = icmp ugt i32 %dividend.addr.0.i.i.off0.i, 131071
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %dividend.addr.0.i.i314.off0.i)
  %cmp45.i = icmp ugt i32 %dividend.addr.0.i.i314.off0.i, 131071
  %spec.select.i217 = select i1 %cmp42.i, i1 true, i1 %cmp45.i
  %208 = ptrtoint ptr %scaler_config.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %bf.load48.i = load i8, ptr %scaler_config.i, align 4
  %bf.shl.i = select i1 %spec.select.i217, i8 64, i8 0
  %bf.clear49.i = and i8 %bf.load48.i, -65
  %bf.set50.i = or i8 %bf.shl.i, %bf.clear49.i
  store i8 %bf.set50.i, ptr %scaler_config.i, align 4
  %rotation.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i.i, i32 0, i32 14
  %209 = ptrtoint ptr %rotation.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %rotation.i, align 4
  %and51.i = and i32 %210, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  %spec.select396.i = select i1 %tobool52.not.i, ptr %src_w.i, ptr %src_h.i
  %spec.select397.i = select i1 %tobool52.not.i, ptr %src_h.i, ptr %src_w.i
  %211 = ptrtoint ptr %spec.select396.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %storemerge342.in.in.i = load i32, ptr %spec.select396.i, align 4
  %storemerge342.in.i = lshr i32 %storemerge342.in.in.i, 16
  %storemerge342.i = trunc i32 %storemerge342.in.i to i16
  %212 = ptrtoint ptr %input_w.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %storemerge342.i, ptr %input_w.i, align 2
  %213 = ptrtoint ptr %spec.select397.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %storemerge341.in.in.i = load i32, ptr %spec.select397.i, align 4
  %storemerge341.in.i = lshr i32 %storemerge341.in.in.i, 16
  %storemerge341.i = trunc i32 %storemerge341.in.i to i16
  %214 = ptrtoint ptr %input_h.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %storemerge341.i, ptr %input_h.i, align 4
  %215 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %crtc_w.i, align 4
  %conv71.i = trunc i32 %216 to i16
  %217 = ptrtoint ptr %output_w.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %conv71.i, ptr %output_w.i, align 2
  %218 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %crtc_h.i, align 4
  %conv73.i = trunc i32 %219 to i16
  %220 = ptrtoint ptr %output_h.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %conv73.i, ptr %output_h.i, align 4
  %shl76.i = shl nuw nsw i32 %storemerge342.in.i, 4
  %conv78.i = and i32 %216, 65535
  %div.i = udiv i32 %shl76.i, %conv78.i
  %add.i218 = add nuw nsw i32 %div.i, 1
  %div79199.i = lshr i32 %add.i218, 1
  %221 = ptrtoint ptr %h_init_phase.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %div79199.i, ptr %h_init_phase.i, align 4
  %shl82.i = and i32 %storemerge342.in.in.i, -65536
  %div85.i = udiv i32 %shl82.i, %conv78.i
  %222 = ptrtoint ptr %h_delta_phase.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %div85.i, ptr %h_delta_phase.i, align 4
  %shl88.i = shl nuw nsw i32 %storemerge341.in.i, 4
  %conv90.i = and i32 %219, 65535
  %div91.i = udiv i32 %shl88.i, %conv90.i
  %add92.i = add nuw nsw i32 %div91.i, 1
  %div93200.i = lshr i32 %add92.i, 1
  %223 = ptrtoint ptr %v_init_phase.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %div93200.i, ptr %v_init_phase.i, align 4
  %shl96.i = and i32 %storemerge341.in.in.i, -65536
  %div99.i = udiv i32 %shl96.i, %conv90.i
  %224 = ptrtoint ptr %v_delta_phase.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %div99.i, ptr %v_delta_phase.i, align 4
  %225 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %layer.i, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %226, align 4
  %conv102.i = trunc i16 %228 to i8
  %229 = ptrtoint ptr %plane_src_id.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %conv102.i, ptr %plane_src_id.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %div_u64.exit315.i, %if.else25.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %for.body.i214.for.inc.i_crit_edge
  %v_upscale_factor.2.i = phi i32 [ %v_upscale_factor.0337.i, %if.else.i.for.inc.i_crit_edge ], [ %v_upscale_factor.0337.i, %for.body.i214.for.inc.i_crit_edge ], [ %dividend.addr.0.i.i314.off0.i, %div_u64.exit315.i ], [ %v_upscale_factor.0337.i, %if.else25.i.for.inc.i_crit_edge ]
  %h_upscale_factor.2.i = phi i32 [ %h_upscale_factor.0338.i, %if.else.i.for.inc.i_crit_edge ], [ %h_upscale_factor.0338.i, %for.body.i214.for.inc.i_crit_edge ], [ %dividend.addr.0.i.i.off0.i, %div_u64.exit315.i ], [ %h_upscale_factor.0338.i, %if.else25.i.for.inc.i_crit_edge ]
  %230 = ptrtoint ptr %.pn339.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %.pn.i = load ptr, ptr %.pn339.i, align 4
  %231 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dev10.i, align 4
  %plane_list16.i = getelementptr inbounds %struct.drm_device, ptr %232, i32 0, i32 30, i32 18
  %cmp.not.i = icmp eq ptr %.pn.i, %plane_list16.i
  br i1 %cmp.not.i, label %for.end.i219, label %for.inc.i.for.body.i214_crit_edge

for.inc.i.for.body.i214_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i214

for.end.i219:                                     ; preds = %for.inc.i
  %233 = ptrtoint ptr %scaler_config.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %bf.load111.i = load i8, ptr %scaler_config.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %h_upscale_factor.2.i)
  %cmp.i.i = icmp ugt i32 %h_upscale_factor.2.i, 65535
  br i1 %cmp.i.i, label %for.end.i219.malidp_se_select_coeffs.exit.i_crit_edge, label %cond.false.i.i220

for.end.i219.malidp_se_select_coeffs.exit.i_crit_edge: ; preds = %for.end.i219
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_se_select_coeffs.exit.i

cond.false.i.i220:                                ; preds = %for.end.i219
  call void @__sanitizer_cov_trace_const_cmp4(i32 43689, i32 %h_upscale_factor.2.i)
  %cmp1.i.i = icmp ugt i32 %h_upscale_factor.2.i, 43689
  br i1 %cmp1.i.i, label %cond.false.i.i220.malidp_se_select_coeffs.exit.i_crit_edge, label %cond.false3.i.i

cond.false.i.i220.malidp_se_select_coeffs.exit.i_crit_edge: ; preds = %cond.false.i.i220
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_se_select_coeffs.exit.i

cond.false3.i.i:                                  ; preds = %cond.false.i.i220
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %h_upscale_factor.2.i)
  %cmp4.i.i = icmp ugt i32 %h_upscale_factor.2.i, 32767
  br i1 %cmp4.i.i, label %cond.false3.i.i.malidp_se_select_coeffs.exit.i_crit_edge, label %cond.false6.i.i

cond.false3.i.i.malidp_se_select_coeffs.exit.i_crit_edge: ; preds = %cond.false3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_se_select_coeffs.exit.i

cond.false6.i.i:                                  ; preds = %cond.false3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 23830, i32 %h_upscale_factor.2.i)
  %cmp7.i.i = icmp ugt i32 %h_upscale_factor.2.i, 23830
  %spec.select398.i = select i1 %cmp7.i.i, i8 32, i8 40
  br label %malidp_se_select_coeffs.exit.i

malidp_se_select_coeffs.exit.i:                   ; preds = %cond.false6.i.i, %cond.false3.i.i.malidp_se_select_coeffs.exit.i_crit_edge, %cond.false.i.i220.malidp_se_select_coeffs.exit.i_crit_edge, %for.end.i219.malidp_se_select_coeffs.exit.i_crit_edge
  %cond12.i.i = phi i8 [ 8, %for.end.i219.malidp_se_select_coeffs.exit.i_crit_edge ], [ 16, %cond.false.i.i220.malidp_se_select_coeffs.exit.i_crit_edge ], [ 24, %cond.false3.i.i.malidp_se_select_coeffs.exit.i_crit_edge ], [ %spec.select398.i, %cond.false6.i.i ]
  %bf.set113.i = and i8 %bf.load111.i, 71
  %bf.clear119.i = or i8 %bf.set113.i, %cond12.i.i
  %bf.set120.i = or i8 %bf.clear119.i, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %v_upscale_factor.2.i)
  %cmp.i316.i = icmp ugt i32 %v_upscale_factor.2.i, 65535
  br i1 %cmp.i316.i, label %malidp_se_select_coeffs.exit.i.malidp_se_select_coeffs.exit325.i_crit_edge, label %cond.false.i318.i

malidp_se_select_coeffs.exit.i.malidp_se_select_coeffs.exit325.i_crit_edge: ; preds = %malidp_se_select_coeffs.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_se_select_coeffs.exit325.i

cond.false.i318.i:                                ; preds = %malidp_se_select_coeffs.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 43689, i32 %v_upscale_factor.2.i)
  %cmp1.i317.i = icmp ugt i32 %v_upscale_factor.2.i, 43689
  br i1 %cmp1.i317.i, label %cond.false.i318.i.malidp_se_select_coeffs.exit325.i_crit_edge, label %cond.false3.i320.i

cond.false.i318.i.malidp_se_select_coeffs.exit325.i_crit_edge: ; preds = %cond.false.i318.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_se_select_coeffs.exit325.i

cond.false3.i320.i:                               ; preds = %cond.false.i318.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %v_upscale_factor.2.i)
  %cmp4.i319.i = icmp ugt i32 %v_upscale_factor.2.i, 32767
  br i1 %cmp4.i319.i, label %cond.false3.i320.i.malidp_se_select_coeffs.exit325.i_crit_edge, label %cond.false6.i323.i

cond.false3.i320.i.malidp_se_select_coeffs.exit325.i_crit_edge: ; preds = %cond.false3.i320.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_se_select_coeffs.exit325.i

cond.false6.i323.i:                               ; preds = %cond.false3.i320.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 23830, i32 %v_upscale_factor.2.i)
  %cmp7.i321.i = icmp ugt i32 %v_upscale_factor.2.i, 23830
  %spec.select399.i = select i1 %cmp7.i321.i, i8 4, i8 5
  br label %malidp_se_select_coeffs.exit325.i

malidp_se_select_coeffs.exit325.i:                ; preds = %cond.false6.i323.i, %cond.false3.i320.i.malidp_se_select_coeffs.exit325.i_crit_edge, %cond.false.i318.i.malidp_se_select_coeffs.exit325.i_crit_edge, %malidp_se_select_coeffs.exit.i.malidp_se_select_coeffs.exit325.i_crit_edge, %cond.false6.i323.thread.i
  %bf.set120381.i = phi i8 [ %bf.set120.i, %malidp_se_select_coeffs.exit.i.malidp_se_select_coeffs.exit325.i_crit_edge ], [ %bf.set120.i, %cond.false.i318.i.malidp_se_select_coeffs.exit325.i_crit_edge ], [ %bf.set120.i, %cond.false3.i320.i.malidp_se_select_coeffs.exit325.i_crit_edge ], [ %bf.set120377.i, %cond.false6.i323.thread.i ], [ %bf.set120.i, %cond.false6.i323.i ]
  %cond12.i324.i = phi i8 [ 1, %malidp_se_select_coeffs.exit.i.malidp_se_select_coeffs.exit325.i_crit_edge ], [ 2, %cond.false.i318.i.malidp_se_select_coeffs.exit325.i_crit_edge ], [ 3, %cond.false3.i320.i.malidp_se_select_coeffs.exit325.i_crit_edge ], [ 5, %cond.false6.i323.thread.i ], [ %spec.select399.i, %cond.false6.i323.i ]
  %bf.clear125.i = and i8 %bf.set120381.i, -8
  %bf.set126.i = or i8 %cond12.i324.i, %bf.clear125.i
  br label %mclk_calc.i

mclk_calc.i:                                      ; preds = %malidp_se_select_coeffs.exit325.i, %if.then.i
  %storemerge.i = phi i8 [ %bf.clear.i, %if.then.i ], [ %bf.set126.i, %malidp_se_select_coeffs.exit325.i ]
  %234 = ptrtoint ptr %scaler_config.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %storemerge.i, ptr %scaler_config.i, align 4
  %adjusted_mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7
  call void @drm_display_mode_to_videomode(ptr noundef %adjusted_mode.i, ptr noundef nonnull %vm.i) #5
  %235 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %174, align 4
  %se_calc_mclk.i = getelementptr inbounds %struct.malidp_hw, ptr %236, i32 0, i32 9
  %237 = ptrtoint ptr %se_calc_mclk.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %se_calc_mclk.i, align 4
  %call127.i = call i32 %238(ptr noundef %174, ptr noundef %scaler_config.i, ptr noundef nonnull %vm.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127.i)
  %cmp128.i = icmp slt i32 %call127.i, 0
  %..i = select i1 %cmp128.i, i32 -22, i32 0
  br label %malidp_crtc_atomic_check_scaling.exit

malidp_crtc_atomic_check_scaling.exit:            ; preds = %mclk_calc.i, %if.end.i212.malidp_crtc_atomic_check_scaling.exit_crit_edge
  %retval.0.i221 = phi i32 [ -22, %if.end.i212.malidp_crtc_atomic_check_scaling.exit_crit_edge ], [ %..i, %mclk_calc.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm.i) #5
  br label %cleanup129

cleanup129:                                       ; preds = %malidp_crtc_atomic_check_scaling.exit, %if.end33.7.i.cleanup129_crit_edge, %if.end33.6.i.cleanup129_crit_edge, %if.end33.5.i.cleanup129_crit_edge, %if.end33.4.i.cleanup129_crit_edge, %if.end33.3.i.cleanup129_crit_edge, %if.end33.2.i.cleanup129_crit_edge, %if.end33.1.i.cleanup129_crit_edge, %if.end33.i.cleanup129_crit_edge, %if.end13.i.cleanup129_crit_edge, %if.then40.i.cleanup129_crit_edge, %land.lhs.true26.i.cleanup129_crit_edge, %for.body.i.cleanup129_crit_edge, %if.end10.i.cleanup129_crit_edge, %if.end91.cleanup129_crit_edge
  %retval.3 = phi i32 [ %retval.0.i221, %malidp_crtc_atomic_check_scaling.exit ], [ -22, %if.end33.7.i.cleanup129_crit_edge ], [ -22, %if.end33.6.i.cleanup129_crit_edge ], [ -22, %if.end33.5.i.cleanup129_crit_edge ], [ -22, %if.end33.4.i.cleanup129_crit_edge ], [ -22, %if.end33.3.i.cleanup129_crit_edge ], [ -22, %if.end33.2.i.cleanup129_crit_edge ], [ -22, %if.end33.1.i.cleanup129_crit_edge ], [ -22, %if.end33.i.cleanup129_crit_edge ], [ -22, %if.end13.i.cleanup129_crit_edge ], [ -22, %if.end10.i.cleanup129_crit_edge ], [ %call.i, %if.then40.i.cleanup129_crit_edge ], [ -22, %land.lhs.true26.i.cleanup129_crit_edge ], [ -22, %for.body.i.cleanup129_crit_edge ], [ -22, %if.end91.cleanup129_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %vm = alloca %struct.videomode, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm) #5
  %2 = call ptr @memset(ptr %vm, i32 255, i32 40)
  %3 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crtc, align 8
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %call.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %state3 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %7 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state3, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7
  call void @drm_display_mode_to_videomode(ptr noundef %adjusted_mode, ptr noundef nonnull %vm) #5
  %pxlclk = getelementptr inbounds %struct.malidp_hw_device, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %pxlclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pxlclk, align 4
  %call.i23 = call i32 @clk_prepare(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = call i32 @clk_enable(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %10) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %11 = ptrtoint ptr %pxlclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pxlclk, align 4
  %13 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state3, align 4
  %crtc_clock = getelementptr inbounds %struct.drm_crtc_state, ptr %14, i32 0, i32 7, i32 12
  %15 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %crtc_clock, align 4
  %mul = mul i32 %16, 1000
  %call8 = call i32 @clk_set_rate(ptr noundef %12, i32 noundef %mul) #5
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %modeset = getelementptr inbounds %struct.malidp_hw, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %modeset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %modeset, align 4
  call void %20(ptr noundef %1, ptr noundef nonnull %vm) #5
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %leave_config_mode = getelementptr inbounds %struct.malidp_hw, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %leave_config_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %leave_config_mode, align 4
  call void %24(ptr noundef %1) #5
  call void @drm_crtc_vblank_on(ptr noundef %crtc) #5
  br label %cleanup

cleanup:                                          ; preds = %clk_prepare_enable.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
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
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 8
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  tail call void @drm_atomic_helper_disable_planes_on_crtc(ptr noundef %5, i1 noundef zeroext false) #5
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %enter_config_mode = getelementptr inbounds %struct.malidp_hw, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %enter_config_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enter_config_mode, align 4
  tail call void %11(ptr noundef %7) #5
  %pxlclk = getelementptr inbounds %struct.malidp_hw_device, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %pxlclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pxlclk, align 4
  tail call void @clk_disable(ptr noundef %13) #5
  tail call void @clk_unprepare(ptr noundef %13) #5
  %14 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc, align 8
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %17, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %call.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_modeset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_disable_planes_on_crtc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/malidp_crtc.c", i32 531, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/arm/malidp_crtc.c", i32 543, i32 3}
!4 = !{ptr @malidp_crtc_funcs, !5, !"malidp_crtc_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/arm/malidp_crtc.c", i32 512, i32 36}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/arm/malidp_crtc.c", i32 449, i32 6}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/arm/malidp_hw.h", i32 261, i32 2}
!10 = !{ptr @malidp_crtc_helper_funcs, !11, !"malidp_crtc_helper_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/arm/malidp_crtc.c", i32 438, i32 43}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/arm/malidp_crtc.c", i32 39, i32 4}
!14 = !{ptr @segments, !15, !"segments", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/arm/malidp_crtc.c", i32 98, i32 3}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/arm/malidp_crtc.c", i32 57, i32 3}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/arm/malidp_crtc.c", i32 91, i32 3}
!20 = !{ptr @malidp_se_set_enh_coeffs.enhancer_coeffs, !21, !"enhancer_coeffs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/arm/malidp_hw.h", i32 368, i32 19}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i8 0, i8 2}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2156706150}
!34 = !{i64 6990458}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 6990876}
!37 = !{i64 2156705251}
!38 = !{i64 2148645430, i64 2148645710, i64 2148646044, i64 2148646378}
