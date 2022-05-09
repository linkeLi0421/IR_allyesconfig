; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_txp.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_txp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.vc4_crtc_data = type { i32, i32 }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vc4_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i64, [256 x i8], [256 x i8], [256 x i8], ptr, %struct.debugfs_regset32, i8, %struct.spinlock, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.vc4_txp = type { %struct.vc4_crtc, ptr, %struct.drm_writeback_connector, ptr, %struct.debugfs_regset32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.90, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.91, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.90 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.anon.91 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_writeback_job = type { ptr, i8, %struct.work_struct, %struct.list_head, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.vc4_crtc_state = type { %struct.drm_crtc_state, %struct.drm_mm_node, i8, i32, %struct.anon.92, i32, i8 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.anon.92 = type { i32, i32, i32, i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.85, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.85 = type { [4 x i8] }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vc4_txp\00", [24 x i8] zeroinitializer }, align 32
@vc4_txp_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-txp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@vc4_txp_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vc4_txp_probe, ptr @vc4_txp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_txp_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vc4_txp_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @vc4_txp_bind, ptr @vc4_txp_unbind }, [24 x i8] zeroinitializer }, align 32
@vc4_txp_crtc_data = internal constant { %struct.vc4_crtc_data, [24 x i8] } { %struct.vc4_crtc_data { i32 4, i32 2 }, [24 x i8] zeroinitializer }, align 32
@txp_regs = internal constant { [5 x %struct.debugfs_reg32], [56 x i8] } { [5 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.2, i32 0 }, %struct.debugfs_reg32 { ptr @.str.3, i32 4 }, %struct.debugfs_reg32 { ptr @.str.4, i32 8 }, %struct.debugfs_reg32 { ptr @.str.5, i32 12 }, %struct.debugfs_reg32 { ptr @.str.6, i32 16 }], [56 x i8] zeroinitializer }, align 32
@vc4_txp_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @vc4_txp_connector_get_modes, ptr null, ptr @vc4_txp_connector_mode_valid, ptr null, ptr null, ptr null, ptr @vc4_txp_connector_atomic_check, ptr @vc4_txp_connector_atomic_commit, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@vc4_txp_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @vc4_txp_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @vc4_txp_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vc4_txp_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_txp_encoder_disable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@drm_fmts = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 875710290, i32 875710274, i32 875713112, i32 875709016, i32 875713089, i32 875708993, i32 875714642, i32 875714626, i32 875708754, i32 875708738], [56 x i8] zeroinitializer }, align 32
@vc4_txp_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @vc4_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @vc4_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @vc4_page_flip, ptr null, ptr null, ptr @vc4_crtc_duplicate_state, ptr @vc4_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_txp_enable_vblank, ptr @vc4_txp_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@vc4_txp_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_txp_atomic_check, ptr @vc4_hvs_atomic_begin, ptr @vc4_hvs_atomic_flush, ptr @vc4_txp_atomic_enable, ptr @vc4_txp_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"txp_regs\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TXP_DST_PTR\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TXP_DST_PITCH\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TXP_DIM\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TXP_DST_CTRL\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TXP_PROGRESS\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid framebuffer size %ux%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/vc4/vc4_txp.c\00", [34 x i8] zeroinitializer }, align 32
@txp_fmts = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 9, i32 8, i32 13, i32 12, i32 13, i32 12, i32 15, i32 14, i32 15, i32 14], [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 875708738, i64 875708754, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 875714626, i64 875714642]
@__sancov_gen_cov_switch_values.9 = internal global [12 x i64] [i64 10, i64 32, i64 875708738, i64 875708754, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 875714626, i64 875714642]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 562, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"vc4_txp_dt_match\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 553, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"vc4_txp_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 558, i32 24 }
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"vc4_txp_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 537, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"vc4_txp_crtc_data\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 456, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [9 x i8] c"txp_regs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 170, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [31 x i8] c"vc4_txp_connector_helper_funcs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 320, i32 48 }
@___asan_gen_.31 = private unnamed_addr constant [24 x i8] c"vc4_txp_connector_funcs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 339, i32 41 }
@___asan_gen_.34 = private unnamed_addr constant [29 x i8] c"vc4_txp_encoder_helper_funcs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 367, i32 46 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"drm_fmts\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 203, i32 18 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"vc4_txp_crtc_funcs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 378, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant [26 x i8] c"vc4_txp_crtc_helper_funcs\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 436, i32 43 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 520, i32 32 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 171, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 172, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 173, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 174, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 175, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 253, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 287, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"txp_fmts\00", align 1
@___asan_gen_.71 = private constant [33 x i8] c"../drivers/gpu/drm/vc4/vc4_txp.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 216, i32 18 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @vc4_txp_dt_match, ptr @vc4_txp_driver, ptr @vc4_txp_ops, ptr @vc4_txp_crtc_data, ptr @txp_regs, ptr @vc4_txp_connector_helper_funcs, ptr @vc4_txp_connector_funcs, ptr @vc4_txp_encoder_helper_funcs, ptr @drm_fmts, ptr @vc4_txp_crtc_funcs, ptr @vc4_txp_crtc_helper_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @txp_fmts], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_txp_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_txp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_txp_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_txp_crtc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txp_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_txp_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_txp_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_txp_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_fmts to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_txp_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_txp_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txp_fmts to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_txp_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @vc4_txp_ops) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_txp_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @vc4_txp_ops) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_txp_bind(ptr noundef %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3152, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pdev7 = getelementptr inbounds %struct.vc4_crtc, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %pdev7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %pdev7, align 8
  %data8 = getelementptr inbounds %struct.vc4_crtc, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %data8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vc4_txp_crtc_data, ptr %data8, align 4
  %feeds_txp = getelementptr inbounds %struct.vc4_crtc, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %feeds_txp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %feeds_txp, align 4
  %pdev9 = getelementptr inbounds %struct.vc4_txp, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %pdev9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %pdev9, align 8
  %call10 = tail call ptr @vc4_ioremap_regs(ptr noundef %add.ptr, i32 noundef 0) #5
  %regs = getelementptr inbounds %struct.vc4_txp, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %regs, align 8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %regset = getelementptr inbounds %struct.vc4_txp, ptr %call.i, i32 0, i32 4
  %base18 = getelementptr inbounds %struct.vc4_txp, ptr %call.i, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %base18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %base18, align 4
  %9 = ptrtoint ptr %regset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @txp_regs, ptr %regset, align 4
  %nregs = getelementptr inbounds %struct.vc4_txp, ptr %call.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %nregs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %nregs, align 4
  %connector = getelementptr inbounds %struct.vc4_txp, ptr %call.i, i32 0, i32 2
  %helper_private.i = getelementptr inbounds %struct.vc4_txp, ptr %call.i, i32 0, i32 2, i32 0, i32 35
  %11 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vc4_txp_connector_helper_funcs, ptr %helper_private.i, align 4
  %call24 = tail call i32 @drm_writeback_connector_init(ptr noundef %1, ptr noundef %connector, ptr noundef nonnull @vc4_txp_connector_funcs, ptr noundef nonnull @vc4_txp_encoder_helper_funcs, ptr noundef nonnull @drm_fmts, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %call28 = tail call i32 @vc4_crtc_init(ptr noundef %1, ptr noundef nonnull %call.i, ptr noundef nonnull @vc4_txp_crtc_funcs, ptr noundef nonnull @vc4_txp_crtc_helper_funcs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %13
  %possible_crtcs = getelementptr inbounds %struct.vc4_txp, ptr %call.i, i32 0, i32 2, i32 1, i32 6
  %14 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl.i, ptr %possible_crtcs, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end31.dev_name.exit_crit_edge

if.end31.dev_name.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end31.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %if.end31.dev_name.exit_crit_edge ]
  %call.i87 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call2, ptr noundef nonnull @vc4_txp_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool37.not = icmp eq i32 %call.i87, 0
  br i1 %tobool37.not, label %if.end39, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i88 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i88 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i88, align 4
  %txp40 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %txp40 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %txp40, align 8
  tail call void @vc4_debugfs_add_regset32(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %regset) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %dev_name.exit.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then13 ], [ 0, %if.end39 ], [ %call2, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call24, %if.end16.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %call.i87, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_txp_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i4 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i4, align 4
  %connector = getelementptr inbounds %struct.vc4_txp, ptr %3, i32 0, i32 2
  tail call void @drm_connector_unregister(ptr noundef %connector) #5
  tail call void @drm_connector_cleanup(ptr noundef %connector) #5
  %txp3 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %txp3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %txp3, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_ioremap_regs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_writeback_connector_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_crtc_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_txp_interrupt(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.vc4_txp, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %3 = and i32 %2, -67108865
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !54
  tail call void @vc4_crtc_handle_vblank(ptr noundef %data) #5
  %connector = getelementptr inbounds %struct.vc4_txp, ptr %data, i32 0, i32 2
  tail call void @drm_writeback_signal_completion(ptr noundef %connector, i32 noundef 0) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_regset32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_txp_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %max_width = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 25
  %2 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 26
  %4 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_height, align 4
  %call = tail call i32 @drm_add_modes_noedid(ptr noundef %connector, i32 noundef %3, i32 noundef %5) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vc4_txp_connector_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %3 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %4 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdisplay, align 2
  %conv3 = zext i16 %5 to i32
  %min_width = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 23
  %6 = ptrtoint ptr %min_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp sgt i32 %7, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_width = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 25
  %8 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp5 = icmp slt i32 %9, %conv
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %min_height = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 24
  %10 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv3)
  %cmp7 = icmp sgt i32 %11, %conv3
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %lor.lhs.false9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %max_height = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 26
  %12 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv3)
  %cmp10 = icmp slt i32 %13, %conv3
  %spec.select = select i1 %cmp10, i32 19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false9, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 18, %lor.lhs.false.cleanup_crit_edge ], [ 18, %entry.cleanup_crit_edge ], [ 19, %if.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_txp_connector_atomic_check(ptr nocapture noundef readonly %conn, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %conn, i32 0, i32 9
  %0 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %2 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp slt i32 %1, %3
  br i1 %cmp.not.i, label %if.end.i, label %entry.drm_atomic_get_new_connector_state.exit_crit_edge

entry.drm_atomic_get_new_connector_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_atomic_get_new_connector_state.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %4 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connectors.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %1, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  br label %drm_atomic_get_new_connector_state.exit

drm_atomic_get_new_connector_state.exit:          ; preds = %if.end.i, %entry.drm_atomic_get_new_connector_state.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.drm_atomic_get_new_connector_state.exit_crit_edge ]
  %writeback_job = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i, i32 0, i32 14
  %8 = ptrtoint ptr %writeback_job to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %writeback_job, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %drm_atomic_get_new_connector_state.exit.cleanup_crit_edge, label %if.end

drm_atomic_get_new_connector_state.exit.cleanup_crit_edge: ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %drm_atomic_get_new_connector_state.exit
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %12 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtcs.i, align 4
  %index.i.i44 = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %index.i.i44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i.i44, align 4
  %new_state.i45 = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %15, i32 3
  %16 = ptrtoint ptr %new_state.i45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %new_state.i45, align 4
  %fb3 = getelementptr inbounds %struct.drm_writeback_job, ptr %9, i32 0, i32 4
  %18 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fb3, align 4
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width, align 8
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv)
  %cmp.not = icmp eq i32 %21, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 10
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 8, i32 6
  %26 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vdisplay, align 2
  %conv6 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv6)
  %cmp7.not = icmp eq i32 %25, %conv6
  br i1 %cmp7.not, label %for.cond.preheader, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

for.cond.preheader:                               ; preds = %lor.lhs.false
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 4
  %28 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %format, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %for.cond.preheader.cleanup_crit_edge [
    i32 875710290, label %for.cond.preheader.if.end23_crit_edge
    i32 875710274, label %for.cond.preheader.if.end23_crit_edge49
    i32 875713112, label %for.cond.preheader.if.end23_crit_edge50
    i32 875709016, label %for.cond.preheader.if.end23_crit_edge51
    i32 875713089, label %for.cond.preheader.if.end23_crit_edge52
    i32 875708993, label %for.cond.preheader.if.end23_crit_edge53
    i32 875714642, label %for.cond.preheader.if.end23_crit_edge54
    i32 875714626, label %for.cond.preheader.if.end23_crit_edge55
    i32 875708754, label %for.cond.preheader.if.end23_crit_edge56
    i32 875708738, label %for.cond.preheader.if.end23_crit_edge57
  ]

for.cond.preheader.if.end23_crit_edge57:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

for.cond.preheader.if.end23_crit_edge56:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

for.cond.preheader.if.end23_crit_edge55:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

for.cond.preheader.if.end23_crit_edge54:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

for.cond.preheader.if.end23_crit_edge53:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

for.cond.preheader.if.end23_crit_edge52:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

for.cond.preheader.if.end23_crit_edge51:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

for.cond.preheader.if.end23_crit_edge50:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

for.cond.preheader.if.end23_crit_edge49:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

for.cond.preheader.if.end23_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %height11 = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 10
  %33 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height11, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %21, i32 noundef %34) #5
  br label %cleanup

if.end23:                                         ; preds = %for.cond.preheader.if.end23_crit_edge, %for.cond.preheader.if.end23_crit_edge49, %for.cond.preheader.if.end23_crit_edge50, %for.cond.preheader.if.end23_crit_edge51, %for.cond.preheader.if.end23_crit_edge52, %for.cond.preheader.if.end23_crit_edge53, %for.cond.preheader.if.end23_crit_edge54, %for.cond.preheader.if.end23_crit_edge55, %for.cond.preheader.if.end23_crit_edge56, %for.cond.preheader.if.end23_crit_edge57
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 6
  %35 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pitches, align 8
  %and = and i32 %36, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %txp_armed.i = getelementptr inbounds %struct.vc4_crtc_state, ptr %17, i32 0, i32 2
  %37 = ptrtoint ptr %txp_armed.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %txp_armed.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end23.cleanup_crit_edge, %if.then9, %for.cond.preheader.cleanup_crit_edge, %drm_atomic_get_new_connector_state.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then9 ], [ 0, %if.end27 ], [ 0, %drm_atomic_get_new_connector_state.exit.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_txp_connector_atomic_commit(ptr noundef %conn, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %conn, i32 0, i32 9
  %0 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %2 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp slt i32 %1, %3
  br i1 %cmp.not.i, label %if.end.i, label %entry.drm_atomic_get_new_connector_state.exit_crit_edge

entry.drm_atomic_get_new_connector_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_atomic_get_new_connector_state.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %4 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connectors.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %1, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  br label %drm_atomic_get_new_connector_state.exit

drm_atomic_get_new_connector_state.exit:          ; preds = %if.end.i, %entry.drm_atomic_get_new_connector_state.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.drm_atomic_get_new_connector_state.exit_crit_edge ]
  %writeback_job = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i, i32 0, i32 14
  %8 = ptrtoint ptr %writeback_job to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %writeback_job, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !55

do.end:                                           ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 287, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end24:                                         ; preds = %drm_atomic_get_new_connector_state.exit
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  %state25 = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %state25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state25, align 4
  %fb27 = getelementptr inbounds %struct.drm_writeback_job, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %fb27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fb27, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %format, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %19, label %do.end49 [
    i32 875710290, label %if.end24.if.end107_crit_edge
    i32 875710274, label %if.end107.fold.split
    i32 875713112, label %if.end107.fold.split452
    i32 875709016, label %if.end107.fold.split453
    i32 875713089, label %if.end107.fold.split454
    i32 875708993, label %if.end107.fold.split455
    i32 875714642, label %if.end107.fold.split456
    i32 875714626, label %if.end107.fold.split457
    i32 875708754, label %if.end107.fold.split458
    i32 875708738, label %if.end107.fold.split459
  ]

if.end24.if.end107_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

do.end49:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 298, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end107.fold.split:                             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

if.end107.fold.split452:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

if.end107.fold.split453:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

if.end107.fold.split454:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

if.end107.fold.split455:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

if.end107.fold.split456:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

if.end107.fold.split457:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

if.end107.fold.split458:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

if.end107.fold.split459:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

if.end107:                                        ; preds = %if.end107.fold.split459, %if.end107.fold.split458, %if.end107.fold.split457, %if.end107.fold.split456, %if.end107.fold.split455, %if.end107.fold.split454, %if.end107.fold.split453, %if.end107.fold.split452, %if.end107.fold.split, %if.end24.if.end107_crit_edge
  %i.0450.lcssa = phi i32 [ 0, %if.end24.if.end107_crit_edge ], [ 1, %if.end107.fold.split ], [ 2, %if.end107.fold.split452 ], [ 3, %if.end107.fold.split453 ], [ 4, %if.end107.fold.split454 ], [ 5, %if.end107.fold.split455 ], [ 6, %if.end107.fold.split456 ], [ 7, %if.end107.fold.split457 ], [ 8, %if.end107.fold.split458 ], [ 9, %if.end107.fold.split459 ]
  %arrayidx149 = getelementptr [10 x i32], ptr @txp_fmts, i32 0, i32 %i.0450.lcssa
  %21 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx149, align 4
  %shl209 = shl i32 %22, 8
  %and210 = and i32 %shl209, 3840
  %23 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %format, align 8
  %has_alpha = getelementptr inbounds %struct.drm_format_info, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %has_alpha to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_alpha, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool213.not = icmp eq i8 %26, 0
  %ctrl.0.v = select i1 %tobool213.not, i32 1015813, i32 2064389
  %ctrl.0 = or i32 %ctrl.0.v, %and210
  %call217 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %15, i32 noundef 0) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call217, i32 0, i32 1
  %27 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %paddr, align 8
  %offsets = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 7
  %29 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offsets, align 8
  %add = add i32 %30, %28
  %31 = tail call i32 @llvm.bswap.i32(i32 %add)
  %regs = getelementptr i8, ptr %conn, i32 1256
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #5, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 6
  %34 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pitches, align 8
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 8
  %add.ptr227 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227, i32 %36) #5, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hdisplay, align 4
  %conv312 = zext i16 %40 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 7, i32 6
  %41 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vdisplay, align 2
  %conv397 = zext i16 %42 to i32
  %shl398 = shl nuw i32 %conv397, 16
  %or400 = or i32 %shl398, %conv312
  %43 = tail call i32 @llvm.bswap.i32(i32 %or400)
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 8
  %add.ptr402 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr402, i32 %43) #5, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %46 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0)
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 8
  %add.ptr407 = getelementptr i8, ptr %48, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr407, i32 %46) #5, !srcloc !54
  tail call void @drm_writeback_queue_job(ptr noundef %conn, ptr noundef %retval.0.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %do.end49, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_modes_noedid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_writeback_queue_job(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vc4_txp_connector_detect(ptr nocapture noundef readnone %connector, i1 noundef zeroext %force) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_txp_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_unregister(ptr noundef %connector) #5
  tail call void @drm_connector_cleanup(ptr noundef %connector) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_txp_encoder_disable(ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr i8, ptr %encoder, i32 216
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.body49_crit_edge, label %if.then

entry.do.body49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr5 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 4194304) #5, !srcloc !54
  %add.neg = sub i32 -100, %4
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %if.then
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %10 = and i32 %9, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  br i1 %tobool14.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %11
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.rhs.while.cond_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %add.ptr18 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #5, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %15 = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool23.not = icmp eq i32 %15, 0
  br i1 %tobool23.not, label %while.end.do.body49_crit_edge, label %do.end35, !prof !65

while.end.do.body49_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49

do.end35:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 361, i32 noundef 9, ptr noundef null) #5
  br label %do.body49

do.body49:                                        ; preds = %do.end35, %while.end.do.body49_crit_edge, %entry.do.body49_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %add.ptr53 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 8192) #5, !srcloc !54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_crtc_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_crtc_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_crtc_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_crtc_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vc4_txp_enable_vblank(ptr nocapture noundef readnone %crtc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vc4_txp_disable_vblank(ptr nocapture noundef %crtc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_txp_atomic_check(ptr noundef %crtc, ptr noundef %state) #0 align 64 {
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
  %call1 = tail call i32 @vc4_hvs_atomic_check(ptr noundef %crtc, ptr noundef %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %no_vblank = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %no_vblank to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %no_vblank, align 2
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, ptr %no_vblank, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_atomic_begin(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_atomic_flush(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_txp_atomic_enable(ptr noundef %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #5
  tail call void @vc4_hvs_atomic_enable(ptr noundef %crtc, ptr noundef %state) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_txp_atomic_disable(ptr noundef %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #5
  tail call void @vc4_hvs_atomic_disable(ptr noundef %crtc, ptr noundef %state) #5
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state2, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #5
  %6 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state2, align 4
  %event8 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %event8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event8, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %9) #5
  %10 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state2, align 4
  %event10 = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %event10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %event10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_hvs_atomic_check(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_atomic_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_atomic_disable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_writeback_signal_completion(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 562, i32 11}
!2 = !{ptr @vc4_txp_driver, !3, !"vc4_txp_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 558, i32 24}
!4 = !{ptr @vc4_txp_ops, !5, !"vc4_txp_ops", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 537, i32 35}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 520, i32 32}
!8 = !{ptr @vc4_txp_crtc_data, !9, !"vc4_txp_crtc_data", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 456, i32 35}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 171, i32 2}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 172, i32 2}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 173, i32 2}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 174, i32 2}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 175, i32 2}
!20 = !{ptr @txp_regs, !21, !"txp_regs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 170, i32 35}
!22 = !{ptr @vc4_txp_connector_helper_funcs, !23, !"vc4_txp_connector_helper_funcs", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 320, i32 48}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 253, i32 3}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 287, i32 6}
!28 = !{ptr @txp_fmts, !29, !"txp_fmts", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 216, i32 18}
!30 = !{ptr @vc4_txp_connector_funcs, !31, !"vc4_txp_connector_funcs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 339, i32 41}
!32 = !{ptr @vc4_txp_encoder_helper_funcs, !33, !"vc4_txp_encoder_helper_funcs", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 367, i32 46}
!34 = !{ptr @drm_fmts, !35, !"drm_fmts", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 203, i32 18}
!36 = !{ptr @vc4_txp_crtc_funcs, !37, !"vc4_txp_crtc_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 378, i32 36}
!38 = !{ptr @vc4_txp_crtc_helper_funcs, !39, !"vc4_txp_crtc_helper_funcs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 436, i32 43}
!40 = !{ptr @vc4_txp_dt_match, !41, !"vc4_txp_dt_match", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/vc4/vc4_txp.c", i32 553, i32 34}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2157571173}
!52 = !{i64 7051522}
!53 = !{i64 2157572144}
!54 = !{i64 7051104}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i8 0, i8 2}
!57 = !{i64 2157224222}
!58 = !{i64 2157224759}
!59 = !{i64 2157471841}
!60 = !{i64 2157564866}
!61 = !{i64 2157565583}
!62 = !{i64 2157566064}
!63 = !{i64 2157566853}
!64 = !{i64 2157568313}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2157569103}
