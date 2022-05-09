; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/stm/ltdc.c_pt.bc'
source_filename = "../drivers/gpu/drm/stm/ltdc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.88 = type { i32, ptr }
%struct.ltdc_device = type { ptr, ptr, %struct.mutex, %struct.ltdc_caps, i32, i32, [4 x %struct.fps_info], ptr }
%struct.ltdc_caps = type { i32, i32, i32, i32, ptr, i8, i32, i32 }
%struct.fps_info = type { i32, i64 }
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
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
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
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to enable pixel clock (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to get lcd clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to prepare pixel clock\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"panel-bridge endpoint %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"init encoder endpoint %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ltdc_load.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ldev->err_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to get ltdc registers\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"hardware identifier (0x%08x) not supported!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ltdc hw version 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register LTDC interrupt\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to allocate crtc\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to init crtc\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed calling drm_vblank_init()\0A\00", [62 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author322 = internal constant [54 x i8] c"stm_drm.author=Philippe Cornu <philippe.cornu@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author323 = internal constant [54 x i8] c"stm_drm.author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author324 = internal constant [56 x i8] c"stm_drm.author=Fabien Dessenne <fabien.dessenne@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author325 = internal constant [56 x i8] c"stm_drm.author=Mickael Reulier <mickael.reulier@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description326 = internal constant [58 x i8] c"stm_drm.description=STMicroelectronics ST DRM LTDC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file327 = internal constant [41 x i8] c"stm_drm.file=drivers/gpu/drm/stm/stm-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license328 = internal constant [23 x i8] c"stm_drm.license=GPL v2\00", section ".modinfo", align 1
@ltdc_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ltdc_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @ltdc_encoder_disable, ptr @ltdc_encoder_enable, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Bridge encoder:%d created\0A\00", [37 x i8] zeroinitializer }, align 32
@ltdc_pix_fmt_a0 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], [32 x i8] zeroinitializer }, align 32
@ltdc_pix_fmt_a1 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 3, i32 4, i32 2, i32 8, i32 7, i32 5, i32 6], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can not create primary plane\0A\00", [34 x i8] zeroinitializer }, align 32
@ltdc_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ltdc_crtc_enable_vblank, ptr @ltdc_crtc_disable_vblank, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can not initialize CRTC\0A\00", [39 x i8] zeroinitializer }, align 32
@ltdc_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @ltdc_crtc_mode_valid, ptr @ltdc_crtc_mode_fixup, ptr null, ptr @ltdc_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ltdc_crtc_atomic_flush, ptr @ltdc_crtc_atomic_enable, ptr @ltdc_crtc_atomic_disable, ptr @ltdc_crtc_get_scanout_position }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CRTC:%d created\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can not create overlay plane %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ltdc_format_modifiers = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 0, i64 72057594037927935], [16 x i8] zeroinitializer }, align 32
@ltdc_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr @ltdc_plane_atomic_print_state, ptr @ltdc_plane_format_mod_supported }, [44 x i8] zeroinitializer }, align 32
@ltdc_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @ltdc_plane_atomic_check, ptr @ltdc_plane_atomic_update, ptr @ltdc_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"plane:%d created\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09user_updates=%dfps\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Scaling is not supported\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fb or crtc NULL\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"plane:%d fb:%d (%dx%d)@(%d,%d) -> (%dx%d)@(%d,%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Pixel format %.4s not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fb: phys 0x%08x\00", [16 x i8] zeroinitializer }, align 32
@ltdc_plane_atomic_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.29, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014[drm] ltdc fifo underrun: please verify display mode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ltdc_plane_atomic_update\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpu/drm/stm/ltdc.c\00", [37 x i8] zeroinitializer }, align 32
@ltdc_plane_atomic_update._entry_ptr = internal global ptr @ltdc_plane_atomic_update._entry, section ".printk_index", align 4
@ltdc_plane_atomic_update._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.29, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014[drm] ltdc transfer error\0A\00", [35 x i8] zeroinitializer }, align 32
@ltdc_plane_atomic_update._entry_ptr.32 = internal global ptr @ltdc_plane_atomic_update._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CRTC:%d plane:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clk rate target %d, available %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot set rate (%dHz) for pixel clk\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"requested clock %dkHz, adjusted clock %dkHz\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set mode, cannot get sync\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CRTC:%d mode:%s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Video mode: %dx%d\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c" hfp %d hbp %d hsl %d vfp %d vbp %d vsl %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 66048, i64 66304, i64 131329]
@__sancov_gen_cov_switch_values.43 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.44 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.45 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.46 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.47 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.48 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.49 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.50 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.51 = internal global [13 x i64] [i64 11, i64 32, i64 538982467, i64 842093121, i64 842093144, i64 875708754, i64 875710290, i64 875713089, i64 875713112, i64 875714642, i64 892424769, i64 892424792, i64 909199186]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1194, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1207, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1235, i32 38 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1238, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1243, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1265, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1275, i32 6 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1283, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1294, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1305, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1310, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1323, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1331, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1338, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1344, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [26 x i8] c"ltdc_encoder_helper_funcs\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1105, i32 46 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1134, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"ltdc_pix_fmt_a0\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 215, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"ltdc_pix_fmt_a1\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 226, i32 32 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1025, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"ltdc_crtc_funcs\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 737, i32 36 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1034, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [23 x i8] c"ltdc_crtc_helper_funcs\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 704, i32 43 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1043, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1050, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [22 x i8] c"ltdc_format_modifiers\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 237, i32 18 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"ltdc_plane_funcs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 938, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant [24 x i8] c"ltdc_plane_helper_funcs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 949, i32 44 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1002, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 921, i32 16 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 772, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 796, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 806, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 833, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 871, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 884, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 888, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 905, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 478, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 513, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 519, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 567, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 572, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 573, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [30 x i8] c"../drivers/gpu/drm/stm/ltdc.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 574, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_author325, ptr @__UNIQUE_ID_description326, ptr @__UNIQUE_ID_file327, ptr @__UNIQUE_ID_license328, ptr @ltdc_plane_atomic_update._entry, ptr @ltdc_plane_atomic_update._entry.30, ptr @ltdc_plane_atomic_update._entry_ptr, ptr @ltdc_plane_atomic_update._entry_ptr.32, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ltdc_load.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ltdc_encoder_helper_funcs, ptr @.str.15, ptr @ltdc_pix_fmt_a0, ptr @ltdc_pix_fmt_a1, ptr @.str.16, ptr @ltdc_crtc_funcs, ptr @.str.17, ptr @ltdc_crtc_helper_funcs, ptr @.str.18, ptr @.str.19, ptr @ltdc_format_modifiers, ptr @ltdc_plane_funcs, ptr @ltdc_plane_helper_funcs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltdc_load.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltdc_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltdc_pix_fmt_a0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltdc_pix_fmt_a1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltdc_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltdc_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltdc_format_modifiers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltdc_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltdc_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltdc_plane_atomic_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltdc_plane_atomic_update._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ltdc_suspend(ptr nocapture noundef readonly %ddev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %pixel_clk = getelementptr inbounds %struct.ltdc_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pixel_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ltdc_resume(ptr nocapture noundef readonly %ddev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %pixel_clk = getelementptr inbounds %struct.ltdc_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pixel_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %if.then

if.then:                                          ; preds = %if.then3.i, %entry.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.if.then_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %retval.0.i.ph) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ltdc_load(ptr noundef %ddev) local_unnamed_addr #0 align 64 {
entry:
  %bridge = alloca ptr, align 4
  %panel = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bridge) #6
  %6 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bridge, align 4, !annotation !119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #6
  %7 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel, align 4, !annotation !119
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %call = tail call i32 @of_graph_get_endpoint_count(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.2) #6
  %pixel_clk = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %pixel_clk, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end13

if.then6:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %call3, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then6.if.end10_crit_edge, label %if.then9

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then6.if.end10_crit_edge
  %9 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pixel_clk, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.if.then17_crit_edge

if.end13.if.then17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.end.i:                                         ; preds = %if.end13
  %call1.i = tail call i32 @clk_enable(ptr noundef %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader, label %if.then3.i

for.cond.preheader:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp19214 = icmp sgt i32 %call, 0
  br i1 %cmp19214, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call3) #6
  br label %if.then17

if.then17:                                        ; preds = %if.then3.i, %if.end13.if.then17_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0215 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call20 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %5, i32 noundef 0, i32 noundef %i.0215, ptr noundef nonnull %panel, ptr noundef nonnull %bridge) #6
  %12 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call20, label %for.body.err_crit_edge [
    i32 -19, label %for.body.for.inc_crit_edge
    i32 0, label %if.end26
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end26:                                         ; preds = %for.body
  %13 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %panel, align 4
  %tobool27.not = icmp eq ptr %14, null
  br i1 %tobool27.not, label %if.end34thread-pre-split, label %if.then28

if.then28:                                        ; preds = %if.end26
  %call29 = call ptr @drm_panel_bridge_add_typed(ptr noundef nonnull %14, i32 noundef 17) #6
  %15 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call29, ptr %bridge, align 4
  %cmp.i178 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %if.then31, label %if.then28.if.end34_crit_edge

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %i.0215) #6
  %16 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bridge, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %err

if.end34thread-pre-split:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load ptr, ptr %bridge, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34thread-pre-split, %if.then28.if.end34_crit_edge
  %20 = phi ptr [ %.pr, %if.end34thread-pre-split ], [ %call29, %if.then28.if.end34_crit_edge ]
  %tobool35.not = icmp eq ptr %20, null
  br i1 %tobool35.not, label %if.end34.for.inc_crit_edge, label %if.then36

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then36:                                        ; preds = %if.end34
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef 72, i32 noundef 3520) #6
  %tobool.not.i179 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i179, label %if.then36.if.then41_crit_edge, label %if.end.i181

if.then36.if.then41_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

if.end.i181:                                      ; preds = %if.then36
  %possible_crtcs.i = getelementptr inbounds %struct.drm_encoder, ptr %call.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %possible_crtcs.i, align 4
  %possible_clones.i = getelementptr inbounds %struct.drm_encoder, ptr %call.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %possible_clones.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %possible_clones.i, align 4
  %call1.i180 = call i32 @drm_simple_encoder_init(ptr noundef %ddev, ptr noundef nonnull %call.i.i, i32 noundef 8) #6
  %helper_private.i.i = getelementptr inbounds %struct.drm_encoder, ptr %call.i.i, i32 0, i32 11
  %25 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ltdc_encoder_helper_funcs, ptr %helper_private.i.i, align 4
  %call2.i = call i32 @drm_bridge_attach(ptr noundef nonnull %call.i.i, ptr noundef nonnull %20, ptr noundef null, i32 noundef 0) #6
  %26 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call2.i, label %ltdc_encoder_init.exit [
    i32 0, label %ltdc_encoder_init.exit.thread200
    i32 -517, label %if.end.i181.err_crit_edge
  ]

if.end.i181.err_crit_edge:                        ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

ltdc_encoder_init.exit.thread200:                 ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #8
  %base.i = getelementptr inbounds %struct.drm_encoder, ptr %call.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %28) #6
  br label %for.inc

ltdc_encoder_init.exit:                           ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_encoder_cleanup(ptr noundef nonnull %call.i.i) #6
  br label %if.then41

if.then41:                                        ; preds = %ltdc_encoder_init.exit, %if.then36.if.then41_crit_edge
  %retval.0.i182199 = phi i32 [ %call2.i, %ltdc_encoder_init.exit ], [ -12, %if.then36.if.then41_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %i.0215) #6
  br label %err

for.inc:                                          ; preds = %ltdc_encoder_init.exit.thread200, %if.end34.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0215, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call.i183 = call ptr @__devm_reset_control_get(ptr noundef %1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %err_lock = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 2
  call void @__mutex_init(ptr noundef %err_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @ltdc_load.__key) #6
  %cmp.i184 = icmp ugt ptr %call.i183, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %for.end.if.end50_crit_edge, label %if.then47

for.end.if.end50_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = call i32 @reset_control_assert(ptr noundef %call.i183) #6
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %call49 = call i32 @reset_control_deassert(ptr noundef %call.i183) #6
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %for.end.if.end50_crit_edge
  %call51 = call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 0) #6
  %call52 = call ptr @devm_ioremap_resource(ptr noundef %1, ptr noundef %call51) #6
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call52, ptr %3, align 8
  %cmp.i185 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #6
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 8
  %32 = ptrtoint ptr %31 to i32
  br label %err

if.end58:                                         ; preds = %if.end50
  %add.ptr.i.i = getelementptr i8, ptr %call52, i32 52
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !120
  %34 = and i32 %33, -251658241
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %34) #6, !srcloc !121
  %35 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_private, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %add.ptr.i.i186 = getelementptr i8, ptr %38, i32 4
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i186) #6, !srcloc !120
  %40 = call i32 @llvm.bswap.i32(i32 %39) #6
  %41 = call i32 @llvm.smax.i32(i32 %40, i32 1) #6
  %42 = call i32 @llvm.umin.i32(i32 %41, i32 4) #6
  %caps.i = getelementptr inbounds %struct.ltdc_device, ptr %36, i32 0, i32 3
  %nb_layers.i = getelementptr inbounds %struct.ltdc_device, ptr %36, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %nb_layers.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %nb_layers.i, align 4
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %36, align 8
  %add.ptr.i61.i = getelementptr i8, ptr %45, i32 32
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61.i) #6, !srcloc !120
  %47 = lshr i32 %46, 28
  %shr.i = and i32 %47, 7
  %shl.i = shl nuw nsw i32 8, %shr.i
  %bus_width.i = getelementptr inbounds %struct.ltdc_device, ptr %36, i32 0, i32 3, i32 3
  %48 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl.i, ptr %bus_width.i, align 4
  %49 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %36, align 8
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #6, !srcloc !120
  %52 = call i32 @llvm.bswap.i32(i32 %51) #6
  %53 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %caps.i, align 4
  %54 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %52, label %if.then62 [
    i32 66048, label %if.end58.sw.bb.i_crit_edge
    i32 66304, label %if.end58.sw.bb.i_crit_edge271
    i32 131329, label %sw.bb25.i
  ]

if.end58.sw.bb.i_crit_edge271:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end58.sw.bb.i_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end58.sw.bb.i_crit_edge, %if.end58.sw.bb.i_crit_edge271
  %reg_ofs.i = getelementptr inbounds %struct.ltdc_device, ptr %36, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %reg_ofs.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %reg_ofs.i, align 4
  %pix_fmt_hw.i = getelementptr inbounds %struct.ltdc_device, ptr %36, i32 0, i32 3, i32 4
  %56 = ptrtoint ptr %pix_fmt_hw.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @ltdc_pix_fmt_a0, ptr %pix_fmt_hw.i, align 4
  %non_alpha_only_l1.i = getelementptr inbounds %struct.ltdc_device, ptr %36, i32 0, i32 3, i32 5
  %57 = ptrtoint ptr %non_alpha_only_l1.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %non_alpha_only_l1.i, align 4
  %pad_max_freq_hz.i = getelementptr inbounds %struct.ltdc_device, ptr %36, i32 0, i32 3, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 131328, i32 %51)
  %cmp21.i = icmp eq i32 %51, 131328
  %spec.store.select.i = select i1 %cmp21.i, i32 65000000, i32 90000000
  %58 = ptrtoint ptr %pad_max_freq_hz.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.store.select.i, ptr %pad_max_freq_hz.i, align 4
  br label %if.end63

sw.bb25.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %reg_ofs27.i = getelementptr inbounds %struct.ltdc_device, ptr %36, i32 0, i32 3, i32 2
  %59 = ptrtoint ptr %reg_ofs27.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4, ptr %reg_ofs27.i, align 4
  %pix_fmt_hw29.i = getelementptr inbounds %struct.ltdc_device, ptr %36, i32 0, i32 3, i32 4
  %60 = ptrtoint ptr %pix_fmt_hw29.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @ltdc_pix_fmt_a1, ptr %pix_fmt_hw29.i, align 4
  %non_alpha_only_l131.i = getelementptr inbounds %struct.ltdc_device, ptr %36, i32 0, i32 3, i32 5
  %61 = ptrtoint ptr %non_alpha_only_l131.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %non_alpha_only_l131.i, align 4
  %pad_max_freq_hz33.i = getelementptr inbounds %struct.ltdc_device, ptr %36, i32 0, i32 3, i32 6
  %62 = ptrtoint ptr %pad_max_freq_hz33.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 150000000, ptr %pad_max_freq_hz33.i, align 4
  br label %if.end63

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %caps = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 3
  %63 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %caps, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %64) #6
  br label %err

if.end63:                                         ; preds = %sw.bb25.i, %sw.bb.i
  %.sink.i = phi i32 [ 2, %sw.bb.i ], [ 4, %sw.bb25.i ]
  %nb_irq.i = getelementptr inbounds %struct.ltdc_device, ptr %36, i32 0, i32 3, i32 7
  %65 = ptrtoint ptr %nb_irq.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.sink.i, ptr %nb_irq.i, align 4
  %caps64 = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 3
  %66 = ptrtoint ptr %caps64 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %caps64, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %67) #6
  %nb_irq = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 3, i32 7
  %68 = ptrtoint ptr %nb_irq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nb_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp68217 = icmp sgt i32 %69, 0
  br i1 %cmp68217, label %for.body69.lr.ph, label %if.end63.for.end81_crit_edge

if.end63.for.end81_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end81

for.body69.lr.ph:                                 ; preds = %if.end63
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  br label %for.body69

for.cond66:                                       ; preds = %dev_name.exit
  %inc80 = add nuw nsw i32 %i.1218, 1
  %70 = ptrtoint ptr %nb_irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nb_irq, align 4
  %cmp68 = icmp slt i32 %inc80, %71
  br i1 %cmp68, label %for.cond66.for.body69_crit_edge, label %for.cond66.for.end81_crit_edge

for.cond66.for.end81_crit_edge:                   ; preds = %for.cond66
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end81

for.cond66.for.body69_crit_edge:                  ; preds = %for.cond66
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body69

for.body69:                                       ; preds = %for.cond66.for.body69_crit_edge, %for.body69.lr.ph
  %i.1218 = phi i32 [ 0, %for.body69.lr.ph ], [ %inc80, %for.cond66.for.body69_crit_edge ]
  %call70 = call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef %i.1218) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %for.body69.err_crit_edge, label %if.end73

for.body69.err_crit_edge:                         ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end73:                                         ; preds = %for.body69
  %72 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i188 = icmp eq ptr %73, null
  br i1 %tobool.not.i188, label %if.end.i189, label %if.end73.dev_name.exit_crit_edge

if.end73.dev_name.exit_crit_edge:                 ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i189:                                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i189, %if.end73.dev_name.exit_crit_edge
  %retval.0.i190 = phi ptr [ %75, %if.end.i189 ], [ %73, %if.end73.dev_name.exit_crit_edge ]
  %call75 = call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %call70, ptr noundef nonnull @ltdc_irq, ptr noundef nonnull @ltdc_irq_thread, i32 noundef 8192, ptr noundef %retval.0.i190, ptr noundef %ddev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %for.cond66, label %if.then77

if.then77:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #6
  br label %err

for.end81:                                        ; preds = %for.cond66.for.end81_crit_edge, %if.end63.for.end81_crit_edge
  %call.i191 = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 992, i32 noundef 3520) #6
  %tobool83.not = icmp eq ptr %call.i191, null
  br i1 %tobool83.not, label %if.then84, label %if.end85

if.then84:                                        ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #6
  br label %err

if.end85:                                         ; preds = %for.end81
  %call86 = call fastcc i32 @ltdc_crtc_init(ptr noundef %ddev, ptr noundef nonnull %call.i191)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.then88

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #6
  br label %err

if.end89:                                         ; preds = %if.end85
  %call90 = call i32 @drm_vblank_init(ptr noundef %ddev, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.then92

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #6
  br label %err

if.end93:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pixel_clk, align 4
  call void @clk_disable(ptr noundef %77) #6
  call void @clk_unprepare(ptr noundef %77) #6
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  %call96 = call i32 @pinctrl_pm_select_sleep_state(ptr noundef %79) #6
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  call void @pm_runtime_enable(ptr noundef %81) #6
  br label %cleanup

err:                                              ; preds = %if.then92, %if.then88, %if.then84, %if.then77, %for.body69.err_crit_edge, %if.then62, %if.then55, %if.then41, %if.end.i181.err_crit_edge, %if.then31, %for.body.err_crit_edge
  %ret.0 = phi i32 [ %18, %if.then31 ], [ %retval.0.i182199, %if.then41 ], [ %32, %if.then55 ], [ -19, %if.then62 ], [ %call75, %if.then77 ], [ %call86, %if.then88 ], [ %call90, %if.then92 ], [ -12, %if.then84 ], [ %call70, %for.body69.err_crit_edge ], [ %call2.i, %if.end.i181.err_crit_edge ], [ %call20, %for.body.err_crit_edge ]
  br i1 %cmp19214, label %err.for.body100_crit_edge, label %err.for.end106_crit_edge

err.for.end106_crit_edge:                         ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end106

err.for.body100_crit_edge:                        ; preds = %err
  br label %for.body100

for.body100:                                      ; preds = %drm_of_panel_bridge_remove.exit.for.body100_crit_edge, %err.for.body100_crit_edge
  %i.2220 = phi i32 [ %inc105, %drm_of_panel_bridge_remove.exit.for.body100_crit_edge ], [ 0, %err.for.body100_crit_edge ]
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  %of_node102 = getelementptr inbounds %struct.device, ptr %83, i32 0, i32 27
  %84 = ptrtoint ptr %of_node102 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %of_node102, align 8
  %call.i192 = call ptr @of_graph_get_remote_node(ptr noundef %85, i32 noundef 0, i32 noundef %i.2220) #6
  %tobool.not.i193 = icmp eq ptr %call.i192, null
  br i1 %tobool.not.i193, label %for.body100.drm_of_panel_bridge_remove.exit_crit_edge, label %if.end.i195

for.body100.drm_of_panel_bridge_remove.exit_crit_edge: ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_of_panel_bridge_remove.exit

if.end.i195:                                      ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i194 = call ptr @of_drm_find_bridge(ptr noundef nonnull %call.i192) #6
  call void @drm_panel_bridge_remove(ptr noundef %call1.i194) #6
  br label %drm_of_panel_bridge_remove.exit

drm_of_panel_bridge_remove.exit:                  ; preds = %if.end.i195, %for.body100.drm_of_panel_bridge_remove.exit_crit_edge
  %inc105 = add nuw nsw i32 %i.2220, 1
  %exitcond231.not = icmp eq i32 %inc105, %call
  br i1 %exitcond231.not, label %drm_of_panel_bridge_remove.exit.for.end106_crit_edge, label %drm_of_panel_bridge_remove.exit.for.body100_crit_edge

drm_of_panel_bridge_remove.exit.for.body100_crit_edge: ; preds = %drm_of_panel_bridge_remove.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body100

drm_of_panel_bridge_remove.exit.for.end106_crit_edge: ; preds = %drm_of_panel_bridge_remove.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end106

for.end106:                                       ; preds = %drm_of_panel_bridge_remove.exit.for.end106_crit_edge, %err.for.end106_crit_edge
  %86 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pixel_clk, align 4
  call void @clk_disable(ptr noundef %87) #6
  call void @clk_unprepare(ptr noundef %87) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end106, %if.end93, %if.then17, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.end10 ], [ -19, %if.then17 ], [ %ret.0, %for.end106 ], [ 0, %if.end93 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_get_endpoint_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_add_typed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltdc_irq(i32 noundef %irq, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 56
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !120
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %irq_status = getelementptr inbounds %struct.ltdc_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %irq_status, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %add.ptr.i6 = getelementptr i8, ptr %8, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %4) #6, !srcloc !121
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltdc_irq_thread(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %call = tail call ptr @drm_crtc_from_index(ptr noundef %arg, i32 noundef 0) #6
  %irq_status = getelementptr inbounds %struct.ltdc_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_status, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %call) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err_lock = getelementptr inbounds %struct.ltdc_device, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %err_lock, i32 noundef 0) #6
  %4 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_status, align 8
  %and3 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %error_status = getelementptr inbounds %struct.ltdc_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %error_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error_status, align 4
  %or = or i32 %7, 2
  store i32 %or, ptr %error_status, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %and8 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end13_crit_edge, label %if.then10

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %error_status11 = getelementptr inbounds %struct.ltdc_device, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %error_status11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error_status11, align 4
  %or12 = or i32 %9, 4
  store i32 %or12, ptr %error_status11, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end6.if.end13_crit_edge
  tail call void @mutex_unlock(ptr noundef %err_lock) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltdc_crtc_init(ptr noundef %ddev, ptr noundef %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %call = tail call fastcc ptr @ltdc_plane_create(ptr noundef %ddev, i32 noundef 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #6
  br label %cleanup12

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef nonnull %call, i32 noundef 0) #6
  %call2 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %ddev, ptr noundef %crtc, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @ltdc_crtc_funcs, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 19
  %2 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ltdc_crtc_helper_funcs, ptr %helper_private.i, align 8
  %call6 = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef %crtc, i32 noundef 256) #6
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef %crtc, i32 noundef 0, i1 noundef zeroext false, i32 noundef 256) #6
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %4) #6
  %nb_layers = getelementptr inbounds %struct.ltdc_device, ptr %1, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %nb_layers to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nb_layers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp34 = icmp ugt i32 %6, 1
  br i1 %cmp34, label %if.end5.for.body_crit_edge, label %if.end5.cleanup12_crit_edge

if.end5.cleanup12_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup12

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %if.end5.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %if.end10.for.body_crit_edge ], [ 1, %if.end5.for.body_crit_edge ]
  %call7 = tail call fastcc ptr @ltdc_plane_create(ptr noundef %ddev, i32 noundef 0)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, i32 noundef %i.035) #6
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %call11 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef nonnull %call7, i32 noundef %i.035) #6
  %inc = add nuw i32 %i.035, 1
  %7 = ptrtoint ptr %nb_layers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nb_layers, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %if.end10.cleanup12_crit_edge

if.end10.cleanup12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup12

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %if.then9, %if.then4
  %ret.0 = phi i32 [ %call2, %if.then4 ], [ -12, %if.then9 ]
  %plane_list.i = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 30, i32 18
  %9 = ptrtoint ptr %plane_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %plane_list.i, align 4
  %cmp.not18.i = icmp eq ptr %10, %plane_list.i
  br i1 %cmp.not18.i, label %cleanup.cleanup12_crit_edge, label %cleanup.for.body.i_crit_edge

cleanup.for.body.i_crit_edge:                     ; preds = %cleanup
  br label %for.body.i

cleanup.cleanup12_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup12

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cleanup.for.body.i_crit_edge
  %.pn.in19.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %10, %cleanup.for.body.i_crit_edge ]
  %plane.0.i = getelementptr i8, ptr %.pn.in19.i, i32 -4
  %11 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn.in19.i, align 4
  tail call void @drm_plane_cleanup(ptr noundef %plane.0.i) #6
  %cmp.not.i = icmp eq ptr %.pn.i, %plane_list.i
  br i1 %cmp.not.i, label %for.body.i.cleanup12_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.cleanup12_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup12

cleanup12:                                        ; preds = %for.body.i.cleanup12_crit_edge, %cleanup.cleanup12_crit_edge, %if.end10.cleanup12_crit_edge, %if.end5.cleanup12_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %ret.0, %cleanup.cleanup12_crit_edge ], [ 0, %if.end5.cleanup12_crit_edge ], [ %ret.0, %for.body.i.cleanup12_crit_edge ], [ 0, %if.end10.cleanup12_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ltdc_unload(ptr nocapture noundef readonly %ddev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_graph_get_endpoint_count(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp sgt i32 %call, 0
  br i1 %cmp10, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %drm_of_panel_bridge_remove.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %drm_of_panel_bridge_remove.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %of_node3 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node3, align 8
  %call.i = tail call ptr @of_graph_get_remote_node(ptr noundef %7, i32 noundef 0, i32 noundef %i.011) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.drm_of_panel_bridge_remove.exit_crit_edge, label %if.end.i

for.body.drm_of_panel_bridge_remove.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_of_panel_bridge_remove.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call.i) #6
  tail call void @drm_panel_bridge_remove(ptr noundef %call1.i) #6
  br label %drm_of_panel_bridge_remove.exit

drm_of_panel_bridge_remove.exit:                  ; preds = %if.end.i, %for.body.drm_of_panel_bridge_remove.exit_crit_edge
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %drm_of_panel_bridge_remove.exit.for.end_crit_edge, label %drm_of_panel_bridge_remove.exit.for.body_crit_edge

drm_of_panel_bridge_remove.exit.for.body_crit_edge: ; preds = %drm_of_panel_bridge_remove.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

drm_of_panel_bridge_remove.exit.for.end_crit_edge: ; preds = %drm_of_panel_bridge_remove.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %drm_of_panel_bridge_remove.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %9, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltdc_encoder_mode_set(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %encoder_type = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 4
  %2 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %encoder_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp eq i32 %3, 8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %call = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltdc_encoder_disable(ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !120
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #6, !srcloc !121
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  %call = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltdc_encoder_enable(ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !120
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #6, !srcloc !121
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_crtc_from_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ltdc_plane_create(ptr noundef %ddev, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %formats = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %formats) #6
  %4 = call ptr @memset(ptr %formats, i32 255, i32 64)
  %pix_fmt_hw = getelementptr inbounds %struct.ltdc_device, ptr %1, i32 0, i32 3, i32 4
  %non_alpha_only_l1 = getelementptr inbounds %struct.ltdc_device, ptr %1, i32 0, i32 3, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp9.not = icmp eq i32 %type, 1
  %5 = ptrtoint ptr %pix_fmt_hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pix_fmt_hw, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %8, label %entry.for.inc_crit_edge [
    i32 1, label %sw.bb4.i53
    i32 2, label %sw.bb5.i54
    i32 3, label %entry.for.inc.sink.split_crit_edge
    i32 4, label %sw.bb3.i
    i32 5, label %sw.bb2.i51
    i32 6, label %entry.if.end6_crit_edge
    i32 7, label %sw.bb6.i
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

entry.for.inc.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

sw.bb2.i51:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

sw.bb4.i53:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

sw.bb5.i54:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %sw.bb5.i54, %sw.bb4.i53, %sw.bb2.i51, %entry.if.end6_crit_edge
  %.sink = phi i32 [ 875708754, %sw.bb5.i54 ], [ 875713089, %sw.bb4.i53 ], [ 892424769, %sw.bb2.i51 ], [ 842093121, %entry.if.end6_crit_edge ]
  %retval.0.i56.ph = phi i32 [ 875714642, %sw.bb5.i54 ], [ 875713112, %sw.bb4.i53 ], [ 892424792, %sw.bb2.i51 ], [ 842093144, %entry.if.end6_crit_edge ]
  %10 = ptrtoint ptr %formats to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %formats, align 4
  %11 = ptrtoint ptr %non_alpha_only_l1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %non_alpha_only_l1, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  %or.cond = or i1 %cmp9.not, %tobool8.not
  br i1 %or.cond, label %if.end6.for.inc.sink.split_crit_edge, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end6.for.inc.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end6.for.inc.sink.split_crit_edge, %sw.bb6.i, %sw.bb3.i, %entry.for.inc.sink.split_crit_edge
  %.sink86 = phi i32 [ 1, %entry.for.inc.sink.split_crit_edge ], [ 1, %sw.bb6.i ], [ 1, %sw.bb3.i ], [ 2, %if.end6.for.inc.sink.split_crit_edge ]
  %nb_fmt.085.sink = phi i32 [ 0, %entry.for.inc.sink.split_crit_edge ], [ 0, %sw.bb6.i ], [ 0, %sw.bb3.i ], [ 1, %if.end6.for.inc.sink.split_crit_edge ]
  %retval.0.i.ph.ph.sink = phi i32 [ 875710290, %entry.for.inc.sink.split_crit_edge ], [ 538982467, %sw.bb6.i ], [ 909199186, %sw.bb3.i ], [ %retval.0.i56.ph, %if.end6.for.inc.sink.split_crit_edge ]
  %arrayidx262 = getelementptr [16 x i32], ptr %formats, i32 0, i32 %nb_fmt.085.sink
  %13 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i.ph.ph.sink, ptr %arrayidx262, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end6.for.inc_crit_edge, %entry.for.inc_crit_edge
  %nb_fmt.1 = phi i32 [ 1, %if.end6.for.inc_crit_edge ], [ 0, %entry.for.inc_crit_edge ], [ %.sink86, %for.inc.sink.split ]
  %14 = ptrtoint ptr %pix_fmt_hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pix_fmt_hw, align 4
  %arrayidx.1 = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %17, label %for.inc.for.inc.1_crit_edge [
    i32 1, label %sw.bb4.i53.1
    i32 2, label %sw.bb5.i54.1
    i32 3, label %for.inc.for.inc.sink.split.1_crit_edge
    i32 4, label %sw.bb3.i.1
    i32 5, label %sw.bb2.i51.1
    i32 6, label %for.inc.if.end6.1_crit_edge
    i32 7, label %sw.bb6.i.1
  ]

for.inc.if.end6.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.1

for.inc.for.inc.sink.split.1_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

sw.bb6.i.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.1

sw.bb2.i51.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.1

sw.bb3.i.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.1

sw.bb5.i54.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.1

sw.bb4.i53.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.1

if.end6.1:                                        ; preds = %sw.bb4.i53.1, %sw.bb5.i54.1, %sw.bb2.i51.1, %for.inc.if.end6.1_crit_edge
  %.sink.1 = phi i32 [ 875708754, %sw.bb5.i54.1 ], [ 875713089, %sw.bb4.i53.1 ], [ 892424769, %sw.bb2.i51.1 ], [ 842093121, %for.inc.if.end6.1_crit_edge ]
  %retval.0.i56.ph.1 = phi i32 [ 875714642, %sw.bb5.i54.1 ], [ 875713112, %sw.bb4.i53.1 ], [ 892424792, %sw.bb2.i51.1 ], [ 842093144, %for.inc.if.end6.1_crit_edge ]
  %arrayidx2.1 = getelementptr [16 x i32], ptr %formats, i32 0, i32 %nb_fmt.1
  %19 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink.1, ptr %arrayidx2.1, align 4
  %inc63.ph.1 = add nsw i32 %nb_fmt.1, 1
  %20 = ptrtoint ptr %non_alpha_only_l1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %non_alpha_only_l1, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool8.not.1 = icmp eq i8 %21, 0
  %or.cond.1 = or i1 %cmp9.not, %tobool8.not.1
  br i1 %or.cond.1, label %if.end6.1.for.inc.sink.split.1_crit_edge, label %if.end6.1.for.inc.1_crit_edge

if.end6.1.for.inc.1_crit_edge:                    ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end6.1.for.inc.sink.split.1_crit_edge:         ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.1

for.inc.sink.split.1:                             ; preds = %if.end6.1.for.inc.sink.split.1_crit_edge, %sw.bb3.i.1, %sw.bb6.i.1, %for.inc.for.inc.sink.split.1_crit_edge
  %.sink86.1 = phi i32 [ 1, %for.inc.for.inc.sink.split.1_crit_edge ], [ 1, %sw.bb6.i.1 ], [ 1, %sw.bb3.i.1 ], [ 2, %if.end6.1.for.inc.sink.split.1_crit_edge ]
  %nb_fmt.085.sink.1 = phi i32 [ %nb_fmt.1, %for.inc.for.inc.sink.split.1_crit_edge ], [ %nb_fmt.1, %sw.bb6.i.1 ], [ %nb_fmt.1, %sw.bb3.i.1 ], [ %inc63.ph.1, %if.end6.1.for.inc.sink.split.1_crit_edge ]
  %retval.0.i.ph.ph.sink.1 = phi i32 [ 875710290, %for.inc.for.inc.sink.split.1_crit_edge ], [ 538982467, %sw.bb6.i.1 ], [ 909199186, %sw.bb3.i.1 ], [ %retval.0.i56.ph.1, %if.end6.1.for.inc.sink.split.1_crit_edge ]
  %inc61.1 = add nsw i32 %nb_fmt.1, %.sink86.1
  %arrayidx262.1 = getelementptr [16 x i32], ptr %formats, i32 0, i32 %nb_fmt.085.sink.1
  %22 = ptrtoint ptr %arrayidx262.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i.ph.ph.sink.1, ptr %arrayidx262.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.sink.split.1, %if.end6.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %nb_fmt.1.1 = phi i32 [ %inc63.ph.1, %if.end6.1.for.inc.1_crit_edge ], [ %nb_fmt.1, %for.inc.for.inc.1_crit_edge ], [ %inc61.1, %for.inc.sink.split.1 ]
  %23 = ptrtoint ptr %pix_fmt_hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pix_fmt_hw, align 4
  %arrayidx.2 = getelementptr i32, ptr %24, i32 2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.2, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %26, label %for.inc.1.for.inc.2_crit_edge [
    i32 1, label %sw.bb4.i53.2
    i32 2, label %sw.bb5.i54.2
    i32 3, label %for.inc.1.for.inc.sink.split.2_crit_edge
    i32 4, label %sw.bb3.i.2
    i32 5, label %sw.bb2.i51.2
    i32 6, label %for.inc.1.if.end6.2_crit_edge
    i32 7, label %sw.bb6.i.2
  ]

for.inc.1.if.end6.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.2

for.inc.1.for.inc.sink.split.2_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

sw.bb6.i.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.2

sw.bb2.i51.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.2

sw.bb3.i.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.2

sw.bb5.i54.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.2

sw.bb4.i53.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.2

if.end6.2:                                        ; preds = %sw.bb4.i53.2, %sw.bb5.i54.2, %sw.bb2.i51.2, %for.inc.1.if.end6.2_crit_edge
  %.sink.2 = phi i32 [ 875708754, %sw.bb5.i54.2 ], [ 875713089, %sw.bb4.i53.2 ], [ 892424769, %sw.bb2.i51.2 ], [ 842093121, %for.inc.1.if.end6.2_crit_edge ]
  %retval.0.i56.ph.2 = phi i32 [ 875714642, %sw.bb5.i54.2 ], [ 875713112, %sw.bb4.i53.2 ], [ 892424792, %sw.bb2.i51.2 ], [ 842093144, %for.inc.1.if.end6.2_crit_edge ]
  %arrayidx2.2 = getelementptr [16 x i32], ptr %formats, i32 0, i32 %nb_fmt.1.1
  %28 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink.2, ptr %arrayidx2.2, align 4
  %inc63.ph.2 = add nsw i32 %nb_fmt.1.1, 1
  %29 = ptrtoint ptr %non_alpha_only_l1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %non_alpha_only_l1, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool8.not.2 = icmp eq i8 %30, 0
  %or.cond.2 = or i1 %cmp9.not, %tobool8.not.2
  br i1 %or.cond.2, label %if.end6.2.for.inc.sink.split.2_crit_edge, label %if.end6.2.for.inc.2_crit_edge

if.end6.2.for.inc.2_crit_edge:                    ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end6.2.for.inc.sink.split.2_crit_edge:         ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.2

for.inc.sink.split.2:                             ; preds = %if.end6.2.for.inc.sink.split.2_crit_edge, %sw.bb3.i.2, %sw.bb6.i.2, %for.inc.1.for.inc.sink.split.2_crit_edge
  %.sink86.2 = phi i32 [ 1, %for.inc.1.for.inc.sink.split.2_crit_edge ], [ 1, %sw.bb6.i.2 ], [ 1, %sw.bb3.i.2 ], [ 2, %if.end6.2.for.inc.sink.split.2_crit_edge ]
  %nb_fmt.085.sink.2 = phi i32 [ %nb_fmt.1.1, %for.inc.1.for.inc.sink.split.2_crit_edge ], [ %nb_fmt.1.1, %sw.bb6.i.2 ], [ %nb_fmt.1.1, %sw.bb3.i.2 ], [ %inc63.ph.2, %if.end6.2.for.inc.sink.split.2_crit_edge ]
  %retval.0.i.ph.ph.sink.2 = phi i32 [ 875710290, %for.inc.1.for.inc.sink.split.2_crit_edge ], [ 538982467, %sw.bb6.i.2 ], [ 909199186, %sw.bb3.i.2 ], [ %retval.0.i56.ph.2, %if.end6.2.for.inc.sink.split.2_crit_edge ]
  %inc61.2 = add nsw i32 %nb_fmt.1.1, %.sink86.2
  %arrayidx262.2 = getelementptr [16 x i32], ptr %formats, i32 0, i32 %nb_fmt.085.sink.2
  %31 = ptrtoint ptr %arrayidx262.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i.ph.ph.sink.2, ptr %arrayidx262.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.sink.split.2, %if.end6.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %nb_fmt.1.2 = phi i32 [ %inc63.ph.2, %if.end6.2.for.inc.2_crit_edge ], [ %nb_fmt.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %inc61.2, %for.inc.sink.split.2 ]
  %32 = ptrtoint ptr %pix_fmt_hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pix_fmt_hw, align 4
  %arrayidx.3 = getelementptr i32, ptr %33, i32 3
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.3, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %35, label %for.inc.2.for.inc.3_crit_edge [
    i32 1, label %sw.bb4.i53.3
    i32 2, label %sw.bb5.i54.3
    i32 3, label %for.inc.2.for.inc.sink.split.3_crit_edge
    i32 4, label %sw.bb3.i.3
    i32 5, label %sw.bb2.i51.3
    i32 6, label %for.inc.2.if.end6.3_crit_edge
    i32 7, label %sw.bb6.i.3
  ]

for.inc.2.if.end6.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.3

for.inc.2.for.inc.sink.split.3_crit_edge:         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

sw.bb6.i.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.3

sw.bb2.i51.3:                                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.3

sw.bb3.i.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.3

sw.bb5.i54.3:                                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.3

sw.bb4.i53.3:                                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.3

if.end6.3:                                        ; preds = %sw.bb4.i53.3, %sw.bb5.i54.3, %sw.bb2.i51.3, %for.inc.2.if.end6.3_crit_edge
  %.sink.3 = phi i32 [ 875708754, %sw.bb5.i54.3 ], [ 875713089, %sw.bb4.i53.3 ], [ 892424769, %sw.bb2.i51.3 ], [ 842093121, %for.inc.2.if.end6.3_crit_edge ]
  %retval.0.i56.ph.3 = phi i32 [ 875714642, %sw.bb5.i54.3 ], [ 875713112, %sw.bb4.i53.3 ], [ 892424792, %sw.bb2.i51.3 ], [ 842093144, %for.inc.2.if.end6.3_crit_edge ]
  %arrayidx2.3 = getelementptr [16 x i32], ptr %formats, i32 0, i32 %nb_fmt.1.2
  %37 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink.3, ptr %arrayidx2.3, align 4
  %inc63.ph.3 = add i32 %nb_fmt.1.2, 1
  %38 = ptrtoint ptr %non_alpha_only_l1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %non_alpha_only_l1, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool8.not.3 = icmp eq i8 %39, 0
  %or.cond.3 = or i1 %cmp9.not, %tobool8.not.3
  br i1 %or.cond.3, label %if.end6.3.for.inc.sink.split.3_crit_edge, label %if.end6.3.for.inc.3_crit_edge

if.end6.3.for.inc.3_crit_edge:                    ; preds = %if.end6.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.end6.3.for.inc.sink.split.3_crit_edge:         ; preds = %if.end6.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.3

for.inc.sink.split.3:                             ; preds = %if.end6.3.for.inc.sink.split.3_crit_edge, %sw.bb3.i.3, %sw.bb6.i.3, %for.inc.2.for.inc.sink.split.3_crit_edge
  %.sink86.3 = phi i32 [ 1, %for.inc.2.for.inc.sink.split.3_crit_edge ], [ 1, %sw.bb6.i.3 ], [ 1, %sw.bb3.i.3 ], [ 2, %if.end6.3.for.inc.sink.split.3_crit_edge ]
  %nb_fmt.085.sink.3 = phi i32 [ %nb_fmt.1.2, %for.inc.2.for.inc.sink.split.3_crit_edge ], [ %nb_fmt.1.2, %sw.bb6.i.3 ], [ %nb_fmt.1.2, %sw.bb3.i.3 ], [ %inc63.ph.3, %if.end6.3.for.inc.sink.split.3_crit_edge ]
  %retval.0.i.ph.ph.sink.3 = phi i32 [ 875710290, %for.inc.2.for.inc.sink.split.3_crit_edge ], [ 538982467, %sw.bb6.i.3 ], [ 909199186, %sw.bb3.i.3 ], [ %retval.0.i56.ph.3, %if.end6.3.for.inc.sink.split.3_crit_edge ]
  %inc61.3 = add i32 %nb_fmt.1.2, %.sink86.3
  %arrayidx262.3 = getelementptr [16 x i32], ptr %formats, i32 0, i32 %nb_fmt.085.sink.3
  %40 = ptrtoint ptr %arrayidx262.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i.ph.ph.sink.3, ptr %arrayidx262.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.sink.split.3, %if.end6.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %nb_fmt.1.3 = phi i32 [ %inc63.ph.3, %if.end6.3.for.inc.3_crit_edge ], [ %nb_fmt.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %inc61.3, %for.inc.sink.split.3 ]
  %41 = ptrtoint ptr %pix_fmt_hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pix_fmt_hw, align 4
  %arrayidx.4 = getelementptr i32, ptr %42, i32 4
  %43 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.4, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %44, label %for.inc.3.for.inc.4_crit_edge [
    i32 1, label %sw.bb4.i53.4
    i32 2, label %sw.bb5.i54.4
    i32 3, label %for.inc.3.for.inc.sink.split.4_crit_edge
    i32 4, label %sw.bb3.i.4
    i32 5, label %sw.bb2.i51.4
    i32 6, label %for.inc.3.if.end6.4_crit_edge
    i32 7, label %sw.bb6.i.4
  ]

for.inc.3.if.end6.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.4

for.inc.3.for.inc.sink.split.4_crit_edge:         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

sw.bb6.i.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.4

sw.bb2.i51.4:                                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.4

sw.bb3.i.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.4

sw.bb5.i54.4:                                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.4

sw.bb4.i53.4:                                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.4

if.end6.4:                                        ; preds = %sw.bb4.i53.4, %sw.bb5.i54.4, %sw.bb2.i51.4, %for.inc.3.if.end6.4_crit_edge
  %.sink.4 = phi i32 [ 875708754, %sw.bb5.i54.4 ], [ 875713089, %sw.bb4.i53.4 ], [ 892424769, %sw.bb2.i51.4 ], [ 842093121, %for.inc.3.if.end6.4_crit_edge ]
  %retval.0.i56.ph.4 = phi i32 [ 875714642, %sw.bb5.i54.4 ], [ 875713112, %sw.bb4.i53.4 ], [ 892424792, %sw.bb2.i51.4 ], [ 842093144, %for.inc.3.if.end6.4_crit_edge ]
  %arrayidx2.4 = getelementptr [16 x i32], ptr %formats, i32 0, i32 %nb_fmt.1.3
  %46 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink.4, ptr %arrayidx2.4, align 4
  %inc63.ph.4 = add i32 %nb_fmt.1.3, 1
  %47 = ptrtoint ptr %non_alpha_only_l1 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %non_alpha_only_l1, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool8.not.4 = icmp eq i8 %48, 0
  %or.cond.4 = or i1 %cmp9.not, %tobool8.not.4
  br i1 %or.cond.4, label %if.end6.4.for.inc.sink.split.4_crit_edge, label %if.end6.4.for.inc.4_crit_edge

if.end6.4.for.inc.4_crit_edge:                    ; preds = %if.end6.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.end6.4.for.inc.sink.split.4_crit_edge:         ; preds = %if.end6.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.4

for.inc.sink.split.4:                             ; preds = %if.end6.4.for.inc.sink.split.4_crit_edge, %sw.bb3.i.4, %sw.bb6.i.4, %for.inc.3.for.inc.sink.split.4_crit_edge
  %.sink86.4 = phi i32 [ 1, %for.inc.3.for.inc.sink.split.4_crit_edge ], [ 1, %sw.bb6.i.4 ], [ 1, %sw.bb3.i.4 ], [ 2, %if.end6.4.for.inc.sink.split.4_crit_edge ]
  %nb_fmt.085.sink.4 = phi i32 [ %nb_fmt.1.3, %for.inc.3.for.inc.sink.split.4_crit_edge ], [ %nb_fmt.1.3, %sw.bb6.i.4 ], [ %nb_fmt.1.3, %sw.bb3.i.4 ], [ %inc63.ph.4, %if.end6.4.for.inc.sink.split.4_crit_edge ]
  %retval.0.i.ph.ph.sink.4 = phi i32 [ 875710290, %for.inc.3.for.inc.sink.split.4_crit_edge ], [ 538982467, %sw.bb6.i.4 ], [ 909199186, %sw.bb3.i.4 ], [ %retval.0.i56.ph.4, %if.end6.4.for.inc.sink.split.4_crit_edge ]
  %inc61.4 = add i32 %nb_fmt.1.3, %.sink86.4
  %arrayidx262.4 = getelementptr [16 x i32], ptr %formats, i32 0, i32 %nb_fmt.085.sink.4
  %49 = ptrtoint ptr %arrayidx262.4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %retval.0.i.ph.ph.sink.4, ptr %arrayidx262.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.sink.split.4, %if.end6.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %nb_fmt.1.4 = phi i32 [ %inc63.ph.4, %if.end6.4.for.inc.4_crit_edge ], [ %nb_fmt.1.3, %for.inc.3.for.inc.4_crit_edge ], [ %inc61.4, %for.inc.sink.split.4 ]
  %50 = ptrtoint ptr %pix_fmt_hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pix_fmt_hw, align 4
  %arrayidx.5 = getelementptr i32, ptr %51, i32 5
  %52 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.5, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %53, label %for.inc.4.for.inc.5_crit_edge [
    i32 1, label %sw.bb4.i53.5
    i32 2, label %sw.bb5.i54.5
    i32 3, label %for.inc.4.for.inc.sink.split.5_crit_edge
    i32 4, label %sw.bb3.i.5
    i32 5, label %sw.bb2.i51.5
    i32 6, label %for.inc.4.if.end6.5_crit_edge
    i32 7, label %sw.bb6.i.5
  ]

for.inc.4.if.end6.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.5

for.inc.4.for.inc.sink.split.5_crit_edge:         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

sw.bb6.i.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.5

sw.bb2.i51.5:                                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.5

sw.bb3.i.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.5

sw.bb5.i54.5:                                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.5

sw.bb4.i53.5:                                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.5

if.end6.5:                                        ; preds = %sw.bb4.i53.5, %sw.bb5.i54.5, %sw.bb2.i51.5, %for.inc.4.if.end6.5_crit_edge
  %.sink.5 = phi i32 [ 875708754, %sw.bb5.i54.5 ], [ 875713089, %sw.bb4.i53.5 ], [ 892424769, %sw.bb2.i51.5 ], [ 842093121, %for.inc.4.if.end6.5_crit_edge ]
  %retval.0.i56.ph.5 = phi i32 [ 875714642, %sw.bb5.i54.5 ], [ 875713112, %sw.bb4.i53.5 ], [ 892424792, %sw.bb2.i51.5 ], [ 842093144, %for.inc.4.if.end6.5_crit_edge ]
  %arrayidx2.5 = getelementptr [16 x i32], ptr %formats, i32 0, i32 %nb_fmt.1.4
  %55 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink.5, ptr %arrayidx2.5, align 4
  %inc63.ph.5 = add i32 %nb_fmt.1.4, 1
  %56 = ptrtoint ptr %non_alpha_only_l1 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %non_alpha_only_l1, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool8.not.5 = icmp eq i8 %57, 0
  %or.cond.5 = or i1 %cmp9.not, %tobool8.not.5
  br i1 %or.cond.5, label %if.end6.5.for.inc.sink.split.5_crit_edge, label %if.end6.5.for.inc.5_crit_edge

if.end6.5.for.inc.5_crit_edge:                    ; preds = %if.end6.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.end6.5.for.inc.sink.split.5_crit_edge:         ; preds = %if.end6.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.5

for.inc.sink.split.5:                             ; preds = %if.end6.5.for.inc.sink.split.5_crit_edge, %sw.bb3.i.5, %sw.bb6.i.5, %for.inc.4.for.inc.sink.split.5_crit_edge
  %.sink86.5 = phi i32 [ 1, %for.inc.4.for.inc.sink.split.5_crit_edge ], [ 1, %sw.bb6.i.5 ], [ 1, %sw.bb3.i.5 ], [ 2, %if.end6.5.for.inc.sink.split.5_crit_edge ]
  %nb_fmt.085.sink.5 = phi i32 [ %nb_fmt.1.4, %for.inc.4.for.inc.sink.split.5_crit_edge ], [ %nb_fmt.1.4, %sw.bb6.i.5 ], [ %nb_fmt.1.4, %sw.bb3.i.5 ], [ %inc63.ph.5, %if.end6.5.for.inc.sink.split.5_crit_edge ]
  %retval.0.i.ph.ph.sink.5 = phi i32 [ 875710290, %for.inc.4.for.inc.sink.split.5_crit_edge ], [ 538982467, %sw.bb6.i.5 ], [ 909199186, %sw.bb3.i.5 ], [ %retval.0.i56.ph.5, %if.end6.5.for.inc.sink.split.5_crit_edge ]
  %inc61.5 = add i32 %nb_fmt.1.4, %.sink86.5
  %arrayidx262.5 = getelementptr [16 x i32], ptr %formats, i32 0, i32 %nb_fmt.085.sink.5
  %58 = ptrtoint ptr %arrayidx262.5 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %retval.0.i.ph.ph.sink.5, ptr %arrayidx262.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.sink.split.5, %if.end6.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %nb_fmt.1.5 = phi i32 [ %inc63.ph.5, %if.end6.5.for.inc.5_crit_edge ], [ %nb_fmt.1.4, %for.inc.4.for.inc.5_crit_edge ], [ %inc61.5, %for.inc.sink.split.5 ]
  %59 = ptrtoint ptr %pix_fmt_hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pix_fmt_hw, align 4
  %arrayidx.6 = getelementptr i32, ptr %60, i32 6
  %61 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.6, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %62, label %for.inc.5.for.inc.6_crit_edge [
    i32 1, label %sw.bb4.i53.6
    i32 2, label %sw.bb5.i54.6
    i32 3, label %for.inc.5.for.inc.sink.split.6_crit_edge
    i32 4, label %sw.bb3.i.6
    i32 5, label %sw.bb2.i51.6
    i32 6, label %for.inc.5.if.end6.6_crit_edge
    i32 7, label %sw.bb6.i.6
  ]

for.inc.5.if.end6.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.6

for.inc.5.for.inc.sink.split.6_crit_edge:         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

sw.bb6.i.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.6

sw.bb2.i51.6:                                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.6

sw.bb3.i.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.6

sw.bb5.i54.6:                                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.6

sw.bb4.i53.6:                                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.6

if.end6.6:                                        ; preds = %sw.bb4.i53.6, %sw.bb5.i54.6, %sw.bb2.i51.6, %for.inc.5.if.end6.6_crit_edge
  %.sink.6 = phi i32 [ 875708754, %sw.bb5.i54.6 ], [ 875713089, %sw.bb4.i53.6 ], [ 892424769, %sw.bb2.i51.6 ], [ 842093121, %for.inc.5.if.end6.6_crit_edge ]
  %retval.0.i56.ph.6 = phi i32 [ 875714642, %sw.bb5.i54.6 ], [ 875713112, %sw.bb4.i53.6 ], [ 892424792, %sw.bb2.i51.6 ], [ 842093144, %for.inc.5.if.end6.6_crit_edge ]
  %arrayidx2.6 = getelementptr [16 x i32], ptr %formats, i32 0, i32 %nb_fmt.1.5
  %64 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink.6, ptr %arrayidx2.6, align 4
  %inc63.ph.6 = add i32 %nb_fmt.1.5, 1
  %65 = ptrtoint ptr %non_alpha_only_l1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %non_alpha_only_l1, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool8.not.6 = icmp eq i8 %66, 0
  %or.cond.6 = or i1 %cmp9.not, %tobool8.not.6
  br i1 %or.cond.6, label %if.end6.6.for.inc.sink.split.6_crit_edge, label %if.end6.6.for.inc.6_crit_edge

if.end6.6.for.inc.6_crit_edge:                    ; preds = %if.end6.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.end6.6.for.inc.sink.split.6_crit_edge:         ; preds = %if.end6.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.6

for.inc.sink.split.6:                             ; preds = %if.end6.6.for.inc.sink.split.6_crit_edge, %sw.bb3.i.6, %sw.bb6.i.6, %for.inc.5.for.inc.sink.split.6_crit_edge
  %.sink86.6 = phi i32 [ 1, %for.inc.5.for.inc.sink.split.6_crit_edge ], [ 1, %sw.bb6.i.6 ], [ 1, %sw.bb3.i.6 ], [ 2, %if.end6.6.for.inc.sink.split.6_crit_edge ]
  %nb_fmt.085.sink.6 = phi i32 [ %nb_fmt.1.5, %for.inc.5.for.inc.sink.split.6_crit_edge ], [ %nb_fmt.1.5, %sw.bb6.i.6 ], [ %nb_fmt.1.5, %sw.bb3.i.6 ], [ %inc63.ph.6, %if.end6.6.for.inc.sink.split.6_crit_edge ]
  %retval.0.i.ph.ph.sink.6 = phi i32 [ 875710290, %for.inc.5.for.inc.sink.split.6_crit_edge ], [ 538982467, %sw.bb6.i.6 ], [ 909199186, %sw.bb3.i.6 ], [ %retval.0.i56.ph.6, %if.end6.6.for.inc.sink.split.6_crit_edge ]
  %inc61.6 = add i32 %nb_fmt.1.5, %.sink86.6
  %arrayidx262.6 = getelementptr [16 x i32], ptr %formats, i32 0, i32 %nb_fmt.085.sink.6
  %67 = ptrtoint ptr %arrayidx262.6 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %retval.0.i.ph.ph.sink.6, ptr %arrayidx262.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.sink.split.6, %if.end6.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %nb_fmt.1.6 = phi i32 [ %inc63.ph.6, %if.end6.6.for.inc.6_crit_edge ], [ %nb_fmt.1.5, %for.inc.5.for.inc.6_crit_edge ], [ %inc61.6, %for.inc.sink.split.6 ]
  %68 = ptrtoint ptr %pix_fmt_hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pix_fmt_hw, align 4
  %arrayidx.7 = getelementptr i32, ptr %69, i32 7
  %70 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.7, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %71, label %for.inc.6.for.inc.7_crit_edge [
    i32 1, label %sw.bb4.i53.7
    i32 2, label %sw.bb5.i54.7
    i32 3, label %for.inc.6.for.inc.sink.split.7_crit_edge
    i32 4, label %sw.bb3.i.7
    i32 5, label %sw.bb2.i51.7
    i32 6, label %for.inc.6.if.end6.7_crit_edge
    i32 7, label %sw.bb6.i.7
  ]

for.inc.6.if.end6.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.7

for.inc.6.for.inc.sink.split.7_crit_edge:         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

sw.bb6.i.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.7

sw.bb2.i51.7:                                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.7

sw.bb3.i.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.7

sw.bb5.i54.7:                                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.7

sw.bb4.i53.7:                                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.7

if.end6.7:                                        ; preds = %sw.bb4.i53.7, %sw.bb5.i54.7, %sw.bb2.i51.7, %for.inc.6.if.end6.7_crit_edge
  %.sink.7 = phi i32 [ 875708754, %sw.bb5.i54.7 ], [ 875713089, %sw.bb4.i53.7 ], [ 892424769, %sw.bb2.i51.7 ], [ 842093121, %for.inc.6.if.end6.7_crit_edge ]
  %retval.0.i56.ph.7 = phi i32 [ 875714642, %sw.bb5.i54.7 ], [ 875713112, %sw.bb4.i53.7 ], [ 892424792, %sw.bb2.i51.7 ], [ 842093144, %for.inc.6.if.end6.7_crit_edge ]
  %arrayidx2.7 = getelementptr [16 x i32], ptr %formats, i32 0, i32 %nb_fmt.1.6
  %73 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.sink.7, ptr %arrayidx2.7, align 4
  %inc63.ph.7 = add i32 %nb_fmt.1.6, 1
  %74 = ptrtoint ptr %non_alpha_only_l1 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %non_alpha_only_l1, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool8.not.7 = icmp eq i8 %75, 0
  %or.cond.7 = or i1 %cmp9.not, %tobool8.not.7
  br i1 %or.cond.7, label %if.end6.7.for.inc.sink.split.7_crit_edge, label %if.end6.7.for.inc.7_crit_edge

if.end6.7.for.inc.7_crit_edge:                    ; preds = %if.end6.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.end6.7.for.inc.sink.split.7_crit_edge:         ; preds = %if.end6.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.7

for.inc.sink.split.7:                             ; preds = %if.end6.7.for.inc.sink.split.7_crit_edge, %sw.bb3.i.7, %sw.bb6.i.7, %for.inc.6.for.inc.sink.split.7_crit_edge
  %.sink86.7 = phi i32 [ 1, %for.inc.6.for.inc.sink.split.7_crit_edge ], [ 1, %sw.bb6.i.7 ], [ 1, %sw.bb3.i.7 ], [ 2, %if.end6.7.for.inc.sink.split.7_crit_edge ]
  %nb_fmt.085.sink.7 = phi i32 [ %nb_fmt.1.6, %for.inc.6.for.inc.sink.split.7_crit_edge ], [ %nb_fmt.1.6, %sw.bb6.i.7 ], [ %nb_fmt.1.6, %sw.bb3.i.7 ], [ %inc63.ph.7, %if.end6.7.for.inc.sink.split.7_crit_edge ]
  %retval.0.i.ph.ph.sink.7 = phi i32 [ 875710290, %for.inc.6.for.inc.sink.split.7_crit_edge ], [ 538982467, %sw.bb6.i.7 ], [ 909199186, %sw.bb3.i.7 ], [ %retval.0.i56.ph.7, %if.end6.7.for.inc.sink.split.7_crit_edge ]
  %inc61.7 = add i32 %nb_fmt.1.6, %.sink86.7
  %arrayidx262.7 = getelementptr [16 x i32], ptr %formats, i32 0, i32 %nb_fmt.085.sink.7
  %76 = ptrtoint ptr %arrayidx262.7 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %retval.0.i.ph.ph.sink.7, ptr %arrayidx262.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.sink.split.7, %if.end6.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %nb_fmt.1.7 = phi i32 [ %inc63.ph.7, %if.end6.7.for.inc.7_crit_edge ], [ %nb_fmt.1.6, %for.inc.6.for.inc.7_crit_edge ], [ %inc61.7, %for.inc.sink.split.7 ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 528, i32 noundef 3520) #6
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %for.inc.7.cleanup_crit_edge, label %if.end18

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %for.inc.7
  %call19 = call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %ddev, ptr noundef nonnull %call.i, i32 noundef 1, ptr noundef nonnull @ltdc_plane_funcs, ptr noundef nonnull %formats, i32 noundef %nb_fmt.1.7, ptr noundef nonnull @ltdc_format_modifiers, i32 noundef %type, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call.i, i32 0, i32 18
  %77 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @ltdc_plane_helper_funcs, ptr %helper_private.i, align 8
  %call23 = call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %call.i) #6
  %base = getelementptr inbounds %struct.drm_plane, ptr %call.i, i32 0, i32 4
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %base, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef %79) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end18.cleanup_crit_edge, %for.inc.7.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end22 ], [ null, %for.inc.7.cleanup_crit_edge ], [ null, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %formats) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltdc_plane_atomic_print_state(ptr noundef %p, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %index = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.ltdc_device, ptr %5, i32 0, i32 6, i32 %7
  %call2 = tail call i64 @ktime_get() #6
  %last_timestamp = getelementptr %struct.ltdc_device, ptr %5, i32 0, i32 6, i32 %7, i32 1
  %8 = ptrtoint ptr %last_timestamp to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %last_timestamp, align 8
  %sub = sub i64 %call2, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %10 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #6
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %10) #9, !srcloc !123
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %10, i64 %11, i32 0) #9, !srcloc !124
  %asmresult10.i.i.i = extractvalue { i64, i32 } %12, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %conv = trunc i64 %cond213.i.i to i32
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 8
  %mul = mul i32 %14, 1000
  %div = sdiv i32 %conv, 2
  %add = add i32 %div, %mul
  %div4 = udiv i32 %add, %conv
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.21, i32 noundef %div4) #6
  %15 = ptrtoint ptr %last_timestamp to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call2, ptr %last_timestamp, align 8
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ltdc_plane_format_mod_supported(ptr nocapture noundef readnone %plane, i32 noundef %format, i64 noundef %modifier) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %modifier)
  %cmp = icmp eq i64 %modifier, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltdc_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
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
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_w2 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %src_w2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_w2, align 4
  %shr = lshr i32 %9, 16
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %11)
  %cmp.not = icmp eq i32 %shr, %11
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %src_h3 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %src_h3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src_h3, align 4
  %shr4 = lshr i32 %13, 16
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr4, i32 %15)
  %cmp5.not = icmp eq i32 %shr4, %15
  br i1 %cmp5.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltdc_plane_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %4 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %6 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %5, i32 %7, i32 3
  %8 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new_state.i, align 4
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb2, align 4
  %mul = shl i32 %7, 7
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_w, align 4
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 7
  %14 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_h, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %17, null
  %tobool7.not = icmp eq ptr %11, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 5
  %18 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %crtc_y, align 4
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 4
  %20 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %crtc_x, align 4
  %src_x8 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 8
  %22 = ptrtoint ptr %src_x8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_x8, align 4
  %shr = lshr i32 %23, 16
  %src_y9 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 9
  %24 = ptrtoint ptr %src_y9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_y9, align 4
  %shr10 = lshr i32 %25, 16
  %src_w11 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 11
  %26 = ptrtoint ptr %src_w11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_w11, align 4
  %shr12 = lshr i32 %27, 16
  %src_h13 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 10
  %28 = ptrtoint ptr %src_h13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_h13, align 4
  %shr14 = lshr i32 %29, 16
  %base = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base, align 4
  %base15 = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 2
  %32 = ptrtoint ptr %base15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base15, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %31, i32 noundef %33, i32 noundef %shr12, i32 noundef %shr14, i32 noundef %shr, i32 noundef %shr10, i32 noundef %13, i32 noundef %15, i32 noundef %21, i32 noundef %19) #6
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %35, i32 12
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !120
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  %and = lshr i32 %37, 16
  %shr22 = and i32 %and, 4095
  %and23 = and i32 %37, 2047
  %add = add i32 %shr22, %21
  %add25 = add i32 %add, %13
  %shl = shl i32 %add25, 16
  %add27 = add i32 %add, 1
  %add28 = add i32 %add27, %shl
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 8
  %reg_ofs = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %reg_ofs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg_ofs, align 4
  %add30 = add i32 %mul, 136
  %add31 = add i32 %add30, %41
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 %add31
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !120
  %43 = and i32 %42, 15728880
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %or.i = or i32 %44, %add28
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %45) #6, !srcloc !121
  %add5 = add i32 %and23, %19
  %add33 = add i32 %add5, %15
  %shl34 = shl i32 %add33, 16
  %add36 = add i32 %add5, 1
  %add37 = add i32 %add36, %shl34
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 8
  %48 = ptrtoint ptr %reg_ofs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reg_ofs, align 4
  %add41 = add i32 %mul, 140
  %add42 = add i32 %add41, %49
  %add.ptr.i.i249 = getelementptr i8, ptr %47, i32 %add42
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i249) #6, !srcloc !120
  %51 = and i32 %50, 16253176
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %or.i251 = or i32 %52, %add37
  %53 = tail call i32 @llvm.bswap.i32(i32 %or.i251) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i249, i32 %53) #6, !srcloc !121
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 4
  %54 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %format, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %57, label %sw.default.i [
    i32 875713089, label %if.end.to_ltdc_pixelformat.exit_crit_edge
    i32 875713112, label %if.end.to_ltdc_pixelformat.exit_crit_edge275
    i32 875708754, label %if.end.sw.bb1.i_crit_edge
    i32 875714642, label %if.end.sw.bb1.i_crit_edge276
    i32 875710290, label %sw.bb2.i
    i32 909199186, label %sw.bb3.i
    i32 892424769, label %if.end.sw.bb4.i_crit_edge
    i32 892424792, label %if.end.sw.bb4.i_crit_edge277
    i32 842093121, label %if.end.sw.bb5.i_crit_edge
    i32 842093144, label %if.end.sw.bb5.i_crit_edge278
    i32 538982467, label %sw.bb6.i
  ]

if.end.sw.bb5.i_crit_edge278:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end.sw.bb5.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end.sw.bb4.i_crit_edge277:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

if.end.sw.bb4.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

if.end.sw.bb1.i_crit_edge276:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end.to_ltdc_pixelformat.exit_crit_edge275:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %to_ltdc_pixelformat.exit

if.end.to_ltdc_pixelformat.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %to_ltdc_pixelformat.exit

sw.bb1.i:                                         ; preds = %if.end.sw.bb1.i_crit_edge, %if.end.sw.bb1.i_crit_edge276
  br label %to_ltdc_pixelformat.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %to_ltdc_pixelformat.exit

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %to_ltdc_pixelformat.exit

sw.bb4.i:                                         ; preds = %if.end.sw.bb4.i_crit_edge, %if.end.sw.bb4.i_crit_edge277
  br label %to_ltdc_pixelformat.exit

sw.bb5.i:                                         ; preds = %if.end.sw.bb5.i_crit_edge, %if.end.sw.bb5.i_crit_edge278
  br label %to_ltdc_pixelformat.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %to_ltdc_pixelformat.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %to_ltdc_pixelformat.exit

to_ltdc_pixelformat.exit:                         ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.to_ltdc_pixelformat.exit_crit_edge, %if.end.to_ltdc_pixelformat.exit_crit_edge275
  %pf.0.i = phi i32 [ 0, %sw.default.i ], [ 7, %sw.bb6.i ], [ 6, %sw.bb5.i ], [ 5, %sw.bb4.i ], [ 4, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 1, %if.end.to_ltdc_pixelformat.exit_crit_edge ], [ 1, %if.end.to_ltdc_pixelformat.exit_crit_edge275 ]
  %pix_fmt_hw = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 3, i32 4
  %59 = ptrtoint ptr %pix_fmt_hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pix_fmt_hw, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %pf.0.i)
  %cmp46 = icmp eq i32 %62, %pf.0.i
  br i1 %cmp46, label %to_ltdc_pixelformat.exit.if.end53_crit_edge, label %for.inc

to_ltdc_pixelformat.exit.if.end53_crit_edge:      ; preds = %to_ltdc_pixelformat.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

for.inc:                                          ; preds = %to_ltdc_pixelformat.exit
  %arrayidx.1 = getelementptr i32, ptr %60, i32 1
  %63 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %pf.0.i)
  %cmp46.1 = icmp eq i32 %64, %pf.0.i
  br i1 %cmp46.1, label %for.inc.if.end53_crit_edge, label %for.inc.1

for.inc.if.end53_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr i32, ptr %60, i32 2
  %65 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %pf.0.i)
  %cmp46.2 = icmp eq i32 %66, %pf.0.i
  br i1 %cmp46.2, label %for.inc.1.if.end53_crit_edge, label %for.inc.2

for.inc.1.if.end53_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr i32, ptr %60, i32 3
  %67 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %pf.0.i)
  %cmp46.3 = icmp eq i32 %68, %pf.0.i
  br i1 %cmp46.3, label %for.inc.2.if.end53_crit_edge, label %for.inc.3

for.inc.2.if.end53_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr i32, ptr %60, i32 4
  %69 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %pf.0.i)
  %cmp46.4 = icmp eq i32 %70, %pf.0.i
  br i1 %cmp46.4, label %for.inc.3.if.end53_crit_edge, label %for.inc.4

for.inc.3.if.end53_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr i32, ptr %60, i32 5
  %71 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %pf.0.i)
  %cmp46.5 = icmp eq i32 %72, %pf.0.i
  br i1 %cmp46.5, label %for.inc.4.if.end53_crit_edge, label %for.inc.5

for.inc.4.if.end53_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr i32, ptr %60, i32 6
  %73 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %pf.0.i)
  %cmp46.6 = icmp eq i32 %74, %pf.0.i
  br i1 %cmp46.6, label %for.inc.5.if.end53_crit_edge, label %for.inc.6

for.inc.5.if.end53_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr i32, ptr %60, i32 7
  %75 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %pf.0.i)
  %cmp46.7 = icmp eq i32 %76, %pf.0.i
  br i1 %cmp46.7, label %for.inc.6.if.end53_crit_edge, label %if.then50

for.inc.6.if.end53_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then50:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, ptr noundef %55) #6
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %for.inc.6.if.end53_crit_edge, %for.inc.5.if.end53_crit_edge, %for.inc.4.if.end53_crit_edge, %for.inc.3.if.end53_crit_edge, %for.inc.2.if.end53_crit_edge, %for.inc.1.if.end53_crit_edge, %for.inc.if.end53_crit_edge, %to_ltdc_pixelformat.exit.if.end53_crit_edge
  %val.1 = phi i32 [ 0, %if.then50 ], [ 0, %to_ltdc_pixelformat.exit.if.end53_crit_edge ], [ 1, %for.inc.if.end53_crit_edge ], [ 2, %for.inc.1.if.end53_crit_edge ], [ 3, %for.inc.2.if.end53_crit_edge ], [ 4, %for.inc.3.if.end53_crit_edge ], [ 5, %for.inc.4.if.end53_crit_edge ], [ 6, %for.inc.5.if.end53_crit_edge ], [ 7, %for.inc.6.if.end53_crit_edge ]
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %3, align 8
  %79 = ptrtoint ptr %reg_ofs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %reg_ofs, align 4
  %add57 = add i32 %mul, 148
  %add58 = add i32 %add57, %80
  %add.ptr.i.i252 = getelementptr i8, ptr %78, i32 %add58
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i252) #6, !srcloc !120
  %82 = and i32 %81, -117440513
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %or.i254 = or i32 %83, %val.1
  %84 = tail call i32 @llvm.bswap.i32(i32 %or.i254) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i252, i32 %84) #6, !srcloc !121
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 6
  %85 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pitches, align 8
  %87 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %format, align 8
  %89 = getelementptr inbounds %struct.drm_format_info, ptr %88, i32 0, i32 3
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %89, align 2
  %conv = zext i8 %91 to i32
  %mul64 = mul i32 %13, %conv
  %bus_width = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 3, i32 3
  %92 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bus_width, align 4
  %shr66 = lshr i32 %93, 3
  %add67 = add nsw i32 %shr66, -1
  %sub68 = add i32 %add67, %mul64
  %shl69 = shl i32 %86, 16
  %or = or i32 %sub68, %shl69
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %3, align 8
  %96 = ptrtoint ptr %reg_ofs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %reg_ofs, align 4
  %add73 = add i32 %mul, 176
  %add74 = add i32 %add73, %97
  %add.ptr.i.i255 = getelementptr i8, ptr %95, i32 %add74
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i255) #6, !srcloc !120
  %99 = and i32 %98, 14680288
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  %or.i257 = or i32 %or, %100
  %101 = tail call i32 @llvm.bswap.i32(i32 %or.i257) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i255, i32 %101) #6, !srcloc !121
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 12
  %102 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %alpha, align 4
  %104 = lshr i16 %103, 8
  %105 = zext i16 %104 to i32
  %106 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %3, align 8
  %108 = ptrtoint ptr %reg_ofs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %reg_ofs, align 4
  %add80 = add i32 %mul, 152
  %add81 = add i32 %add80, %109
  %add.ptr.i.i258 = getelementptr i8, ptr %107, i32 %add81
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i258) #6, !srcloc !120
  %111 = and i32 %110, 16777215
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  %or.i260 = or i32 %112, %105
  %113 = tail call i32 @llvm.bswap.i32(i32 %or.i260) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i258, i32 %113) #6, !srcloc !121
  %114 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %format, align 8
  %has_alpha = getelementptr inbounds %struct.drm_format_info, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %has_alpha to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %has_alpha, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool83.not = icmp eq i8 %117, 0
  %spec.store.select = select i1 %tobool83.not, i32 1029, i32 1543
  %non_alpha_only_l1 = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 3, i32 5
  %118 = ptrtoint ptr %non_alpha_only_l1 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %non_alpha_only_l1, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool87.not = icmp eq i8 %119, 0
  br i1 %tobool87.not, label %if.end53.if.end92_crit_edge, label %land.lhs.true

if.end53.if.end92_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

land.lhs.true:                                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %120 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %121)
  %cmp89.not = icmp eq i32 %121, 1
  %spec.select = select i1 %cmp89.not, i32 %spec.store.select, i32 1543
  br label %if.end92

if.end92:                                         ; preds = %land.lhs.true, %if.end53.if.end92_crit_edge
  %val.2 = phi i32 [ %spec.store.select, %if.end53.if.end92_crit_edge ], [ %spec.select, %land.lhs.true ]
  %122 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %3, align 8
  %124 = ptrtoint ptr %reg_ofs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %reg_ofs, align 4
  %add96 = add i32 %mul, 160
  %add97 = add i32 %add96, %125
  %add.ptr.i.i261 = getelementptr i8, ptr %123, i32 %add97
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i261) #6, !srcloc !120
  %127 = and i32 %126, -117899265
  %128 = tail call i32 @llvm.bswap.i32(i32 %127)
  %or.i263 = or i32 %128, %val.2
  %129 = tail call i32 @llvm.bswap.i32(i32 %or.i263) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i261, i32 %129) #6, !srcloc !121
  %130 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %3, align 8
  %132 = ptrtoint ptr %reg_ofs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %reg_ofs, align 4
  %add103 = add i32 %mul, 180
  %add104 = add i32 %add103, %133
  %add.ptr.i.i264 = getelementptr i8, ptr %131, i32 %add104
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i264) #6, !srcloc !120
  %135 = and i32 %134, 16318463
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  %or.i266 = or i32 %136, %15
  %137 = tail call i32 @llvm.bswap.i32(i32 %or.i266) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i264, i32 %137) #6, !srcloc !121
  %call105 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %11, ptr noundef %9, i32 noundef 0) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %call105) #6
  %138 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %3, align 8
  %140 = ptrtoint ptr %reg_ofs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %reg_ofs, align 4
  %add109 = add i32 %mul, 172
  %add110 = add i32 %add109, %141
  %142 = tail call i32 @llvm.bswap.i32(i32 %call105) #6
  %add.ptr.i267 = getelementptr i8, ptr %139, i32 %add110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267, i32 %142) #6, !srcloc !121
  %143 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %format, align 8
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 538982467, i32 %146)
  %cmp113 = icmp eq i32 %146, 538982467
  %or115 = select i1 %cmp113, i32 17, i32 1
  %147 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %3, align 8
  %149 = ptrtoint ptr %reg_ofs to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %reg_ofs, align 4
  %add119 = add i32 %mul, 132
  %add120 = add i32 %add119, %150
  %add.ptr.i.i268 = getelementptr i8, ptr %148, i32 %add120
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i268) #6, !srcloc !120
  %152 = and i32 %151, -285212673
  %153 = tail call i32 @llvm.bswap.i32(i32 %152)
  %or.i270 = or i32 %153, %or115
  %154 = tail call i32 @llvm.bswap.i32(i32 %or.i270) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i268, i32 %154) #6, !srcloc !121
  %155 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %index.i.i, align 4
  %arrayidx122 = getelementptr %struct.ltdc_device, ptr %3, i32 0, i32 6, i32 %156
  %157 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx122, align 8
  %inc123 = add i32 %158, 1
  store i32 %inc123, ptr %arrayidx122, align 8
  %err_lock = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %err_lock, i32 noundef 0) #6
  %error_status = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 4
  %159 = ptrtoint ptr %error_status to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %error_status, align 4
  %and124 = and i32 %160, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end92.if.end130_crit_edge, label %do.end

if.end92.if.end130_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

do.end:                                           ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  %161 = ptrtoint ptr %error_status to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %error_status, align 4
  %and129 = and i32 %162, -3
  store i32 %and129, ptr %error_status, align 4
  br label %if.end130

if.end130:                                        ; preds = %do.end, %if.end92.if.end130_crit_edge
  %163 = ptrtoint ptr %error_status to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %error_status, align 4
  %and132 = and i32 %164, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end130.if.end142_crit_edge, label %do.end137

if.end130.if.end142_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end142

do.end137:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #10
  %165 = ptrtoint ptr %error_status to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %error_status, align 4
  %and141 = and i32 %166, -5
  store i32 %and141, ptr %error_status, align 4
  br label %if.end142

if.end142:                                        ; preds = %do.end137, %if.end130.if.end142_crit_edge
  tail call void @mutex_unlock(ptr noundef %err_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end142, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltdc_plane_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
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
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 4
  %mul = shl i32 %3, 7
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %reg_ofs = getelementptr inbounds %struct.ltdc_device, ptr %9, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %reg_ofs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_ofs, align 4
  %add = add i32 %mul, 132
  %add2 = add i32 %add, %13
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %add2
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !120
  %15 = and i32 %14, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #6, !srcloc !121
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc, align 4
  %base = getelementptr inbounds %struct.drm_crtc, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base, align 8
  %base3 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %20 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef %19, i32 noundef %21) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltdc_crtc_enable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !120
  %11 = or i32 %10, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #6, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltdc_crtc_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !120
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #6, !srcloc !121
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_vblank_helper_get_vblank_timestamp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltdc_crtc_mode_valid(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %mul = mul i32 %5, 1000
  %sub = add i32 %mul, -50
  %add = add i32 %mul, 50
  %pixel_clk = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pixel_clk, align 4
  %call1 = tail call i32 @clk_round_rate(ptr noundef %7, i32 noundef %mul) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %mul, i32 noundef %call1) #6
  %pad_max_freq_hz = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %pad_max_freq_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pad_max_freq_hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %9)
  %cmp = icmp sgt i32 %call1, %9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 28
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 2
  %12 = and i8 %11, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %sub)
  %cmp4 = icmp slt i32 %call1, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %add)
  %cmp6 = icmp sgt i32 %call1, %add
  %or.cond = or i1 %cmp4, %cmp6
  %spec.select = select i1 %or.cond, i32 17, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 15, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ltdc_crtc_mode_fixup(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %mode, ptr nocapture noundef writeonly %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %mul = mul i32 %5, 1000
  %pixel_clk = getelementptr inbounds %struct.ltdc_device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pixel_clk, align 4
  %call1 = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %mul) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pixel_clk, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %9) #6
  %div = udiv i32 %call3, 1000
  %10 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %adjusted_mode, align 4
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef %12, i32 noundef %div) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = xor i1 %cmp, true
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltdc_crtc_mode_set_nofb(ptr noundef readonly %crtc) #0 align 64 {
entry:
  %iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #6
  %4 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !119
  %5 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !119
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 4
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %encoder_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %crtc3 = getelementptr i8, ptr %.pn, i32 48
  %10 = ptrtoint ptr %crtc3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc3, align 4
  %cmp4 = icmp eq ptr %11, %crtc
  br i1 %cmp4, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.pn.lcssa = phi ptr [ %.pn, %for.body.for.end_crit_edge ], [ %encoder_list, %for.cond.for.end_crit_edge ]
  %encoder.0.le = getelementptr i8, ptr %.pn.lcssa, i32 -4
  %tobool.not = icmp eq ptr %encoder.0.le, null
  br i1 %tobool.not, label %for.end.if.end46_crit_edge, label %if.then10

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then10:                                        ; preds = %for.end
  %bridge_chain = getelementptr i8, ptr %.pn.lcssa, i32 52
  br label %for.cond15

for.cond15:                                       ; preds = %for.body19.for.cond15_crit_edge, %if.then10
  %.pn231.in = phi ptr [ %bridge_chain, %if.then10 ], [ %.pn231, %for.body19.for.cond15_crit_edge ]
  %12 = ptrtoint ptr %.pn231.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn231 = load ptr, ptr %.pn231.in, align 4
  %cmp17.not = icmp eq ptr %.pn231, %bridge_chain
  br i1 %cmp17.not, label %for.cond15.for.end30_crit_edge, label %for.body19

for.cond15.for.end30_crit_edge:                   ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.body19:                                       ; preds = %for.cond15
  %encoder20 = getelementptr i8, ptr %.pn231, i32 -4
  %13 = ptrtoint ptr %encoder20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %encoder20, align 4
  %cmp21 = icmp eq ptr %14, %encoder.0.le
  br i1 %cmp21, label %for.body19.for.end30_crit_edge, label %for.body19.for.cond15_crit_edge

for.body19.for.cond15_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond15

for.body19.for.end30_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.end30:                                        ; preds = %for.body19.for.end30_crit_edge, %for.cond15.for.end30_crit_edge
  %.pn231.lcssa = phi ptr [ %.pn231, %for.body19.for.end30_crit_edge ], [ %bridge_chain, %for.cond15.for.end30_crit_edge ]
  %bridge.0.le = getelementptr i8, ptr %.pn231.lcssa, i32 -132
  call void @drm_connector_list_iter_begin(ptr noundef %1, ptr noundef nonnull %iter) #6
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %for.end30
  %call31 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #6
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %while.cond.if.end37_crit_edge, label %while.body

while.cond.if.end37_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

while.body:                                       ; preds = %while.cond
  %encoder33 = getelementptr inbounds %struct.drm_connector, ptr %call31, i32 0, i32 41
  %15 = ptrtoint ptr %encoder33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %encoder33, align 4
  %cmp34 = icmp eq ptr %16, %encoder.0.le
  br i1 %cmp34, label %while.body.if.end37_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.body.if.end37_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end37:                                         ; preds = %while.body.if.end37_crit_edge, %while.cond.if.end37_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter) #6
  %tobool38.not = icmp eq ptr %bridge.0.le, null
  br i1 %tobool38.not, label %if.end37.if.else_crit_edge, label %land.lhs.true

if.end37.if.else_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end37
  %timings = getelementptr i8, ptr %.pn231.lcssa, i32 20
  %17 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %timings, align 4
  %tobool39.not = icmp eq ptr %18, null
  br i1 %tobool39.not, label %land.lhs.true.if.else_crit_edge, label %if.then40

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  br label %if.end46

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end37.if.else_crit_edge
  %tobool42.not = icmp eq ptr %call31, null
  br i1 %tobool42.not, label %if.else.if.end46_crit_edge, label %if.then43

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %bus_flags44 = getelementptr inbounds %struct.drm_connector, ptr %call31, i32 0, i32 20, i32 8
  %21 = ptrtoint ptr %bus_flags44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bus_flags44, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.else.if.end46_crit_edge, %if.then40, %for.end.if.end46_crit_edge
  %bus_flags.0 = phi i32 [ %20, %if.then40 ], [ %22, %if.then43 ], [ 0, %if.else.if.end46_crit_edge ], [ 0, %for.end.if.end46_crit_edge ]
  %dev47 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev47, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 12, i32 18
  %25 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i = icmp eq i32 %26, 0
  br i1 %cmp.i, label %if.end46.if.end55_crit_edge, label %pm_runtime_active.exit

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

pm_runtime_active.exit:                           ; preds = %if.end46
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 12, i32 15
  %27 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.end55_crit_edge, label %if.then49

pm_runtime_active.exit.if.end55_crit_edge:        ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then49:                                        ; preds = %pm_runtime_active.exit
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %24, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool52.not = icmp eq i32 %call.i, 0
  br i1 %tobool52.not, label %if.then49.if.end55_crit_edge, label %if.then53

if.then49.if.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37) #6
  br label %cleanup

if.end55:                                         ; preds = %if.then49.if.end55_crit_edge, %pm_runtime_active.exit.if.end55_crit_edge, %if.end46.if.end55_crit_edge
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base, align 8
  %name = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 31
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef %29, ptr noundef %name) #6
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %31 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 6
  %32 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vdisplay, align 2
  %conv56 = zext i16 %33 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef %conv, i32 noundef %conv56) #6
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 2
  %34 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hsync_start, align 2
  %conv57 = zext i16 %35 to i32
  %36 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hdisplay, align 4
  %conv59 = zext i16 %37 to i32
  %sub = sub nsw i32 %conv57, %conv59
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 4
  %38 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %htotal, align 2
  %conv60 = zext i16 %39 to i32
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 3
  %40 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hsync_end, align 4
  %conv61 = zext i16 %41 to i32
  %sub62 = sub nsw i32 %conv60, %conv61
  %sub67 = sub nsw i32 %conv61, %conv57
  %vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 7
  %42 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vsync_start, align 4
  %conv68 = zext i16 %43 to i32
  %44 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vdisplay, align 2
  %conv70 = zext i16 %45 to i32
  %sub71 = sub nsw i32 %conv68, %conv70
  %vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 9
  %46 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vtotal, align 4
  %conv72 = zext i16 %47 to i32
  %vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 8
  %48 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vsync_end, align 2
  %conv73 = zext i16 %49 to i32
  %sub74 = sub nsw i32 %conv72, %conv73
  %sub79 = sub nsw i32 %conv73, %conv68
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef %sub, i32 noundef %sub62, i32 noundef %sub67, i32 noundef %sub71, i32 noundef %sub74, i32 noundef %sub79) #6
  %50 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %hsync_end, align 4
  %conv81 = zext i16 %51 to i32
  %52 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %hsync_start, align 2
  %conv83 = zext i16 %53 to i32
  %54 = xor i32 %conv83, -1
  %sub85 = add nsw i32 %54, %conv81
  %55 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vsync_end, align 2
  %conv87 = zext i16 %56 to i32
  %57 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vsync_start, align 4
  %conv89 = zext i16 %58 to i32
  %59 = xor i32 %conv89, -1
  %sub91 = add nsw i32 %59, %conv87
  %60 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %htotal, align 2
  %conv93 = zext i16 %61 to i32
  %sub97 = add nsw i32 %conv93, %54
  %62 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vtotal, align 4
  %conv99 = zext i16 %63 to i32
  %sub103 = add nsw i32 %conv99, %59
  %64 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %hdisplay, align 4
  %conv105 = zext i16 %65 to i32
  %add = add nsw i32 %sub97, %conv105
  %66 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vdisplay, align 2
  %conv107 = zext i16 %67 to i32
  %add108 = add nsw i32 %sub103, %conv107
  %sub114 = add nsw i32 %conv99, -1
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 11
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  %70 = shl i32 %69, 31
  %and119 = shl i32 %69, 28
  %71 = and i32 %and119, 1073741824
  %72 = or i32 %71, %70
  %and124 = shl i32 %bus_flags.0, 29
  %73 = and i32 %and124, 536870912
  %74 = or i32 %72, %73
  %and129 = shl i32 %bus_flags.0, 25
  %75 = and i32 %and129, 268435456
  %76 = or i32 %74, %75
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %78, i32 24
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !120
  %80 = and i32 %79, -241
  %81 = call i32 @llvm.bswap.i32(i32 %80)
  %or.i = or i32 %76, %81
  %82 = call i32 @llvm.bswap.i32(i32 %or.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %82) #6, !srcloc !121
  %shl = shl i32 %sub85, 16
  %or134 = or i32 %sub91, %shl
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %3, align 8
  %add.ptr.i.i232 = getelementptr i8, ptr %84, i32 8
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i232) #6, !srcloc !120
  %86 = and i32 %85, 16253168
  %87 = call i32 @llvm.bswap.i32(i32 %86)
  %or.i234 = or i32 %or134, %87
  %88 = call i32 @llvm.bswap.i32(i32 %or.i234) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i232, i32 %88) #6, !srcloc !121
  %shl136 = shl i32 %sub97, 16
  %or137 = or i32 %shl136, %sub103
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %3, align 8
  %add.ptr.i.i235 = getelementptr i8, ptr %90, i32 12
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i235) #6, !srcloc !120
  %92 = and i32 %91, 16253168
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  %or.i237 = or i32 %or137, %93
  %94 = call i32 @llvm.bswap.i32(i32 %or.i237) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i235, i32 %94) #6, !srcloc !121
  %shl139 = shl i32 %add, 16
  %or140 = or i32 %shl139, %add108
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %3, align 8
  %add.ptr.i.i238 = getelementptr i8, ptr %96, i32 16
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i238) #6, !srcloc !120
  %98 = and i32 %97, 16253168
  %99 = call i32 @llvm.bswap.i32(i32 %98)
  %or.i240 = or i32 %or140, %99
  %100 = call i32 @llvm.bswap.i32(i32 %or.i240) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i238, i32 %100) #6, !srcloc !121
  %sub111 = shl nuw i32 %conv93, 16
  %shl142 = add i32 %sub111, -65536
  %or143 = or i32 %shl142, %sub114
  %101 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %3, align 8
  %add.ptr.i.i241 = getelementptr i8, ptr %102, i32 20
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i241) #6, !srcloc !120
  %104 = and i32 %103, 16253168
  %105 = call i32 @llvm.bswap.i32(i32 %104)
  %or.i243 = or i32 %or143, %105
  %106 = call i32 @llvm.bswap.i32(i32 %or.i243) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i241, i32 %106) #6, !srcloc !121
  %107 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %3, align 8
  %add146 = add nsw i32 %add108, 1
  %109 = call i32 @llvm.bswap.i32(i32 %add146) #6
  %add.ptr.i = getelementptr i8, ptr %108, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %109) #6, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltdc_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state1, align 4
  %event2 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %event2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %event2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str) #6
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i.i, align 4
  %12 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state1, align 4
  %color_mgmt_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %color_mgmt_changed.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %color_mgmt_changed.i, align 2
  %15 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %bf.cast.not.i = icmp eq i8 %15, 0
  br i1 %bf.cast.not.i, label %entry.ltdc_crtc_update_clut.exit_crit_edge, label %lor.lhs.false.i

entry.ltdc_crtc_update_clut.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltdc_crtc_update_clut.exit

lor.lhs.false.i:                                  ; preds = %entry
  %gamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 12
  %16 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gamma_lut.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.ltdc_crtc_update_clut.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ltdc_crtc_update_clut.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltdc_crtc_update_clut.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %reg_ofs.i = getelementptr inbounds %struct.ltdc_device, ptr %11, i32 0, i32 3, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %i.023.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %lut.022.i = phi ptr [ %19, %if.end.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %lut.022.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %lut.022.i, align 2
  %conv.i = zext i16 %21 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %and.i = and i32 %shl.i, 16711680
  %green.i = getelementptr inbounds %struct.drm_color_lut, ptr %lut.022.i, i32 0, i32 1
  %22 = ptrtoint ptr %green.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %green.i, align 2
  %24 = and i16 %23, -256
  %and5.i = zext i16 %24 to i32
  %blue.i = getelementptr inbounds %struct.drm_color_lut, ptr %lut.022.i, i32 0, i32 2
  %25 = ptrtoint ptr %blue.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %blue.i, align 2
  %27 = lshr i16 %26, 8
  %28 = zext i16 %27 to i32
  %shl8.i = shl i32 %i.023.i, 24
  %or7.i = or i32 %shl8.i, %and5.i
  %or.i = or i32 %or7.i, %and.i
  %or9.i = or i32 %or.i, %28
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %11, align 8
  %31 = ptrtoint ptr %reg_ofs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_ofs.i, align 4
  %add.i = add i32 %32, 196
  %33 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #6
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %33) #6, !srcloc !121
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %incdec.ptr.i = getelementptr %struct.drm_color_lut, ptr %lut.022.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.ltdc_crtc_update_clut.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.ltdc_crtc_update_clut.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltdc_crtc_update_clut.exit

ltdc_crtc_update_clut.exit:                       ; preds = %for.body.i.ltdc_crtc_update_clut.exit_crit_edge, %lor.lhs.false.i.ltdc_crtc_update_clut.exit_crit_edge, %entry.ltdc_crtc_update_clut.exit_crit_edge
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 8
  %add.ptr.i.i19 = getelementptr i8, ptr %35, i32 36
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #6, !srcloc !120
  %37 = or i32 %36, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19, i32 %37) #6, !srcloc !121
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %ltdc_crtc_update_clut.exit.if.end8_crit_edge, label %if.then

ltdc_crtc_update_clut.exit.if.end8_crit_edge:     ; preds = %ltdc_crtc_update_clut.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %ltdc_crtc_update_clut.exit
  %38 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %state1, align 4
  %event4 = getelementptr inbounds %struct.drm_crtc_state, ptr %39, i32 0, i32 18
  %40 = ptrtoint ptr %event4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %event4, align 4
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #6
  %call5 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %crtc, ptr noundef nonnull %7) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %7) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock) #6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %ltdc_crtc_update_clut.exit.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltdc_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !121
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !120
  %11 = or i32 %10, 234881024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #6, !srcloc !121
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %add.ptr.i.i9 = getelementptr i8, ptr %13, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9) #6, !srcloc !120
  %15 = or i32 %14, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9, i32 %15) #6, !srcloc !121
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltdc_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !120
  %7 = and i32 %6, -234881025
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #6, !srcloc !121
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %add.ptr.i.i7 = getelementptr i8, ptr %9, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7) #6, !srcloc !120
  %11 = or i32 %10, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7, i32 %11) #6, !srcloc !121
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ltdc_crtc_get_scanout_position(ptr nocapture noundef readonly %crtc, i1 noundef zeroext %in_vblank_irq, ptr nocapture noundef writeonly %vpos, ptr nocapture noundef writeonly %hpos, ptr noundef writeonly %stime, ptr noundef writeonly %etime, ptr nocapture noundef readnone %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %tobool.not = icmp eq ptr %stime, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i64 @ktime_get() #6
  %4 = ptrtoint ptr %stime to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call, ptr %stime, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 18
  %7 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.end.if.then3_crit_edge, label %pm_runtime_active.exit

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

pm_runtime_active.exit:                           ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 15
  %9 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.then3_crit_edge, label %pm_runtime_active.exit.if.end19_crit_edge

pm_runtime_active.exit.if.end19_crit_edge:        ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

pm_runtime_active.exit.if.then3_crit_edge:        ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %pm_runtime_active.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 68
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !120
  %13 = and i32 %12, -65536
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %add.ptr.i35 = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #6, !srcloc !120
  %18 = and i32 %17, -16318464
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %add.ptr.i36 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #6, !srcloc !120
  %23 = and i32 %22, -16318464
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %add.ptr.i37 = getelementptr i8, ptr %26, i32 20
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #6, !srcloc !120
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %24)
  %cmp = icmp ugt i32 %14, %24
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %28 = and i32 %27, -16318464
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = add nuw nsw i32 %19, %29
  %sub15 = sub nsw i32 %14, %30
  br label %if.end19

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %sub16 = sub nsw i32 %14, %19
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then14, %pm_runtime_active.exit.if.end19_crit_edge
  %sub15.sink = phi i32 [ %sub15, %if.then14 ], [ %sub16, %if.else ], [ 0, %pm_runtime_active.exit.if.end19_crit_edge ]
  %31 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub15.sink, ptr %vpos, align 4
  %32 = ptrtoint ptr %hpos to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %hpos, align 4
  %tobool20.not = icmp eq ptr %etime, null
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i64 @ktime_get() #6
  %33 = ptrtoint ptr %etime to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %call22, ptr %etime, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !86, !88, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1194, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1207, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1235, i32 38}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1238, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1243, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1265, i32 5}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1275, i32 6}
!14 = !{ptr @ltdc_load.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1283, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1294, i32 3}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1305, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1310, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1323, i32 4}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1331, i32 3}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1338, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1344, i32 3}
!31 = !{ptr @__UNIQUE_ID_author322, !32, !"__UNIQUE_ID_author322", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1379, i32 1}
!33 = !{ptr @__UNIQUE_ID_author323, !34, !"__UNIQUE_ID_author323", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1380, i32 1}
!35 = !{ptr @__UNIQUE_ID_author324, !36, !"__UNIQUE_ID_author324", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1381, i32 1}
!37 = !{ptr @__UNIQUE_ID_author325, !38, !"__UNIQUE_ID_author325", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1382, i32 1}
!39 = !{ptr @__UNIQUE_ID_description326, !40, !"__UNIQUE_ID_description326", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1383, i32 1}
!41 = !{ptr @__UNIQUE_ID_file327, !42, !"__UNIQUE_ID_file327", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1384, i32 1}
!43 = !{ptr @__UNIQUE_ID_license328, !42, !"__UNIQUE_ID_license328", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1134, i32 2}
!46 = !{ptr @ltdc_encoder_helper_funcs, !47, !"ltdc_encoder_helper_funcs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1105, i32 46}
!48 = !{ptr @ltdc_pix_fmt_a0, !49, !"ltdc_pix_fmt_a0", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 215, i32 32}
!50 = !{ptr @ltdc_pix_fmt_a1, !51, !"ltdc_pix_fmt_a1", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 226, i32 32}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1025, i32 3}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1034, i32 3}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1043, i32 2}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1050, i32 4}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 1002, i32 2}
!62 = !{ptr @ltdc_format_modifiers, !63, !"ltdc_format_modifiers", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 237, i32 18}
!64 = !{ptr @ltdc_plane_funcs, !65, !"ltdc_plane_funcs", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 938, i32 37}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 921, i32 16}
!68 = !{ptr @ltdc_plane_helper_funcs, !69, !"ltdc_plane_helper_funcs", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 949, i32 44}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 772, i32 3}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 796, i32 3}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 806, i32 2}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 833, i32 3}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 871, i32 2}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 884, i32 3}
!82 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ltdc_plane_atomic_update._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @ltdc_plane_atomic_update._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 888, i32 3}
!88 = !{ptr @ltdc_plane_atomic_update._entry.30, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ltdc_plane_atomic_update._entry_ptr.32, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 905, i32 2}
!92 = !{ptr @ltdc_crtc_funcs, !93, !"ltdc_crtc_funcs", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 737, i32 36}
!94 = !{ptr @ltdc_crtc_helper_funcs, !95, !"ltdc_crtc_helper_funcs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 704, i32 43}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 478, i32 2}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 513, i32 3}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 519, i32 2}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 567, i32 4}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 572, i32 2}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 573, i32 2}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/stm/ltdc.c", i32 574, i32 2}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"auto-init"}
!120 = !{i64 4280057}
!121 = !{i64 4279639}
!122 = !{i8 0, i8 2}
!123 = !{i64 1182721, i64 1182748}
!124 = !{i64 1183416, i64 1183443, i64 1183476, i64 1183497, i64 1183524, i64 1183550}
