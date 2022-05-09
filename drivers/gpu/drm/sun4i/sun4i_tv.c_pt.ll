; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun4i_tv.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_tv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.component_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tv_mode = type { ptr, i32, i32, i16, i16, i16, i16, i32, i16, i16, i16, i32, i16, i16, i16, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.color_gains = type { i16, i16 }
%struct.burst_levels = type { i16, i16 }
%struct.video_levels = type { i16, i16 }
%struct.resync_parameters = type { i8, i16, i16 }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.sun4i_tv = type { %struct.drm_connector, %struct.drm_encoder, ptr, ptr, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.sun4i_crtc = type { %struct.drm_crtc, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.sunxi_engine_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_sun4i_tv__307_665_sun4i_tv_platform_driver_init6 = internal global ptr @sun4i_tv_platform_driver_init, section ".initcall6.init", align 4
@sun4i_tv_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_tv_probe, ptr @sun4i_tv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_tv_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_tv_platform_driver_exit = internal global ptr @sun4i_tv_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [65 x i8] c"sun4i_tv.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [53 x i8] c"sun4i_tv.description=Allwinner A10 TV Encoder Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [45 x i8] c"sun4i_tv.file=drivers/gpu/drm/sun4i/sun4i_tv\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [21 x i8] c"sun4i_tv.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun4i-tve\00", [22 x i8] zeroinitializer }, align 32
@sun4i_tv_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-tv-encoder\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sun4i_tv_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @sun4i_tv_bind, ptr @sun4i_tv_unbind }, [24 x i8] zeroinitializer }, align 32
@sun4i_tv_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 552, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Couldn't map the TV encoder registers\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sun4i_tv_bind\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/sun4i/sun4i_tv.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_tv_bind._entry_ptr = internal global ptr @sun4i_tv_bind._entry, section ".printk_index", align 4
@sun4i_tv_bind._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sun4i_tv_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.25, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 580, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sun4i_tv:557:(&sun4i_tv_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@sun4i_tv_bind._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 559, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Couldn't create the TV encoder regmap\0A\00", [57 x i8] zeroinitializer }, align 32
@sun4i_tv_bind._entry_ptr.9 = internal global ptr @sun4i_tv_bind._entry.7, section ".printk_index", align 4
@sun4i_tv_bind._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 565, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get our reset line\0A\00", [35 x i8] zeroinitializer }, align 32
@sun4i_tv_bind._entry_ptr.12 = internal global ptr @sun4i_tv_bind._entry.10, section ".printk_index", align 4
@sun4i_tv_bind._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 571, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't deassert our reset line\0A\00", [62 x i8] zeroinitializer }, align 32
@sun4i_tv_bind._entry_ptr.15 = internal global ptr @sun4i_tv_bind._entry.13, section ".printk_index", align 4
@sun4i_tv_bind._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 577, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't get the TV encoder clock\0A\00", [61 x i8] zeroinitializer }, align 32
@sun4i_tv_bind._entry_ptr.18 = internal global ptr @sun4i_tv_bind._entry.16, section ".printk_index", align 4
@sun4i_tv_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_tv_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_tv_disable, ptr @sun4i_tv_enable, ptr null }, [44 x i8] zeroinitializer }, align 32
@sun4i_tv_bind._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 588, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't initialise the TV encoder\0A\00", [60 x i8] zeroinitializer }, align 32
@sun4i_tv_bind._entry_ptr.21 = internal global ptr @sun4i_tv_bind._entry.19, section ".printk_index", align 4
@sun4i_tv_comp_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @sun4i_tv_comp_get_modes, ptr null, ptr @sun4i_tv_comp_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sun4i_tv_comp_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @sun4i_tv_comp_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sun4i_tv_bind._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 606, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Couldn't initialise the Composite connector\0A\00", [51 x i8] zeroinitializer }, align 32
@sun4i_tv_bind._entry_ptr.24 = internal global ptr @sun4i_tv_bind._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tv-encoder\00", [21 x i8] zeroinitializer }, align 32
@tv_modes = internal constant { [2 x %struct.tv_mode], [32 x i8] } { [2 x %struct.tv_mode] [%struct.tv_mode { ptr @.str.28, i32 0, i32 569408543, i16 118, i16 32, i16 525, i16 240, i32 720, i16 18, i16 2, i16 118, i32 480, i16 26, i16 2, i16 17, i8 1, i8 1, i8 1, ptr @ntsc_color_gains, ptr @ntsc_burst_levels, ptr @ntsc_video_levels, ptr @ntsc_resync_parameters }, %struct.tv_mode { ptr @.str.29, i32 1, i32 705268427, i16 138, i16 24, i16 625, i16 252, i32 720, i16 3, i16 2, i16 139, i32 576, i16 28, i16 2, i16 19, i8 0, i8 0, i8 0, ptr @pal_color_gains, ptr @pal_burst_levels, ptr @pal_video_levels, ptr @pal_resync_parameters }], [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Comparing mode %s vs %s\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Comparing mode %s vs %s (X: %d vs %d)\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NTSC\00", [27 x i8] zeroinitializer }, align 32
@ntsc_color_gains = internal constant { %struct.color_gains, [28 x i8] } { %struct.color_gains { i16 160, i16 160 }, [28 x i8] zeroinitializer }, align 32
@ntsc_burst_levels = internal constant { %struct.burst_levels, [28 x i8] } { %struct.burst_levels { i16 79, i16 0 }, [28 x i8] zeroinitializer }, align 32
@ntsc_video_levels = internal constant { %struct.video_levels, [28 x i8] } { %struct.video_levels { i16 282, i16 240 }, [28 x i8] zeroinitializer }, align 32
@ntsc_resync_parameters = internal constant { %struct.resync_parameters, [26 x i8] } { %struct.resync_parameters { i8 0, i16 14, i16 12 }, [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAL\00", [28 x i8] zeroinitializer }, align 32
@pal_color_gains = internal constant { %struct.color_gains, [28 x i8] } { %struct.color_gains { i16 224, i16 224 }, [28 x i8] zeroinitializer }, align 32
@pal_burst_levels = internal constant { %struct.burst_levels, [28 x i8] } { %struct.burst_levels { i16 40, i16 40 }, [28 x i8] zeroinitializer }, align 32
@pal_video_levels = internal constant { %struct.video_levels, [28 x i8] } { %struct.video_levels { i16 252, i16 252 }, [28 x i8] zeroinitializer }, align 32
@pal_resync_parameters = internal constant { %struct.resync_parameters, [26 x i8] } { %struct.resync_parameters { i8 1, i16 13, i16 12 }, [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Disabling the TV Output\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Enabling the TV Output\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to create a new display mode\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Creating mode %s\0A\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [25 x i8] c"sun4i_tv_platform_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 657, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 661, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"sun4i_tv_of_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 651, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"sun4i_tv_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 634, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 552, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [23 x i8] c"sun4i_tv_regmap_config\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 526, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 556, i32 13 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 559, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 565, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 571, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 577, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"sun4i_tv_helper_funcs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 471, i32 46 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 588, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [37 x i8] c"sun4i_tv_comp_connector_helper_funcs\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 507, i32 48 }
@___asan_gen_.109 = private unnamed_addr constant [30 x i8] c"sun4i_tv_comp_connector_funcs\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 518, i32 41 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 605, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 531, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant [9 x i8] c"tv_modes\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 213, i32 29 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 300, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 311, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 215, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"ntsc_color_gains\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 197, i32 33 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"ntsc_burst_levels\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 189, i32 34 }
@___asan_gen_.139 = private unnamed_addr constant [18 x i8] c"ntsc_video_levels\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 181, i32 34 }
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"ntsc_resync_parameters\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 205, i32 39 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 244, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant [16 x i8] c"pal_color_gains\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 201, i32 33 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"pal_burst_levels\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 193, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"pal_video_levels\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 185, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"pal_resync_parameters\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 209, i32 39 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 347, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 361, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 487, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [36 x i8] c"../drivers/gpu/drm/sun4i/sun4i_tv.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 325, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_sun4i_tv_platform_driver_exit, ptr @__initcall__kmod_sun4i_tv__307_665_sun4i_tv_platform_driver_init6, ptr @sun4i_tv_bind._entry, ptr @sun4i_tv_bind._entry.10, ptr @sun4i_tv_bind._entry.13, ptr @sun4i_tv_bind._entry.16, ptr @sun4i_tv_bind._entry.19, ptr @sun4i_tv_bind._entry.22, ptr @sun4i_tv_bind._entry.7, ptr @sun4i_tv_bind._entry_ptr, ptr @sun4i_tv_bind._entry_ptr.12, ptr @sun4i_tv_bind._entry_ptr.15, ptr @sun4i_tv_bind._entry_ptr.18, ptr @sun4i_tv_bind._entry_ptr.21, ptr @sun4i_tv_bind._entry_ptr.24, ptr @sun4i_tv_bind._entry_ptr.9, ptr @sun4i_tv_platform_driver_exit, ptr @sun4i_tv_platform_driver, ptr @.str, ptr @sun4i_tv_of_table, ptr @sun4i_tv_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sun4i_tv_bind._key, ptr @sun4i_tv_regmap_config, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @sun4i_tv_helper_funcs, ptr @.str.20, ptr @sun4i_tv_comp_connector_helper_funcs, ptr @sun4i_tv_comp_connector_funcs, ptr @.str.23, ptr @.str.25, ptr @tv_modes, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @ntsc_color_gains, ptr @ntsc_burst_levels, ptr @ntsc_video_levels, ptr @ntsc_resync_parameters, ptr @.str.29, ptr @pal_color_gains, ptr @pal_burst_levels, ptr @pal_video_levels, ptr @pal_resync_parameters, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tv_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tv_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tv_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tv_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tv_bind._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tv_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tv_bind._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tv_bind._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tv_bind._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tv_bind._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tv_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tv_bind._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tv_comp_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tv_comp_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tv_bind._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tv_modes to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntsc_color_gains to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntsc_burst_levels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntsc_video_levels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntsc_resync_parameters to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pal_color_gains to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pal_burst_levels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pal_video_levels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pal_resync_parameters to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_tv_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_tv_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_tv_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_tv_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_tv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @sun4i_tv_ops) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_tv_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @sun4i_tv_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_tv_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1128, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %drv1 = getelementptr inbounds %struct.sun4i_tv, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %drv1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %drv1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @sun4i_tv_regmap_config, ptr noundef nonnull @sun4i_tv_bind._key, ptr noundef nonnull @.str.6) #6
  %regs9 = getelementptr inbounds %struct.sun4i_tv, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %regs9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %regs9, align 4
  %cmp.i132 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  %6 = ptrtoint ptr %regs9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs9, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %reset = getelementptr inbounds %struct.sun4i_tv, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %reset, align 8
  %cmp.i133 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %10 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset, align 8
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %call30 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %call37 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.sun4i_tv, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call37, ptr %clk, align 8
  %cmp.i134 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 8
  %16 = ptrtoint ptr %15 to i32
  br label %err_assert_reset

if.end46:                                         ; preds = %if.end36
  %call.i135 = tail call i32 @clk_prepare(ptr noundef %call37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool.not.i = icmp eq i32 %call.i135, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end46.clk_prepare_enable.exit_crit_edge

if.end46.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end46
  %call1.i = tail call i32 @clk_enable(ptr noundef %call37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call37) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end46.clk_prepare_enable.exit_crit_edge
  %encoder = getelementptr inbounds %struct.sun4i_tv, ptr %call.i, i32 0, i32 1
  %helper_private.i = getelementptr inbounds %struct.sun4i_tv, ptr %call.i, i32 0, i32 1, i32 11
  %17 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sun4i_tv_helper_funcs, ptr %helper_private.i, align 4
  %call50 = tail call i32 @drm_simple_encoder_init(ptr noundef %data, ptr noundef %encoder, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end56, label %do.end55

do.end55:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  br label %err_disable_clk

if.end56:                                         ; preds = %clk_prepare_enable.exit
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call57 = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %data, ptr noundef %19) #6
  %possible_crtcs = getelementptr inbounds %struct.sun4i_tv, ptr %call.i, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call57, ptr %possible_crtcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool61.not = icmp eq i32 %call57, 0
  br i1 %tobool61.not, label %if.end56.err_disable_clk_crit_edge, label %if.end63

if.end56.err_disable_clk_crit_edge:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_clk

if.end63:                                         ; preds = %if.end56
  %helper_private.i136 = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 35
  %21 = ptrtoint ptr %helper_private.i136 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sun4i_tv_comp_connector_helper_funcs, ptr %helper_private.i136, align 4
  %call65 = tail call i32 @drm_connector_init(ptr noundef %data, ptr noundef nonnull %call.i, ptr noundef nonnull @sun4i_tv_comp_connector_funcs, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end71, label %do.end70

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #6
  br label %err_disable_clk

if.end71:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %interlace_allowed = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 12
  %22 = ptrtoint ptr %interlace_allowed to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %interlace_allowed, align 8
  %call75 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %call.i, ptr noundef %encoder) #6
  br label %cleanup

err_disable_clk:                                  ; preds = %do.end70, %if.end56.err_disable_clk_crit_edge, %do.end55
  %ret.0 = phi i32 [ %call50, %do.end55 ], [ %call65, %do.end70 ], [ -517, %if.end56.err_disable_clk_crit_edge ]
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %24) #6
  tail call void @clk_unprepare(ptr noundef %24) #6
  br label %err_assert_reset

err_assert_reset:                                 ; preds = %err_disable_clk, %do.end43
  %ret.1 = phi i32 [ %16, %do.end43 ], [ %ret.0, %err_disable_clk ]
  %25 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reset, align 8
  %call79 = tail call i32 @reset_control_assert(ptr noundef %26) #6
  br label %cleanup

cleanup:                                          ; preds = %err_assert_reset, %if.end71, %do.end35, %do.end25, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end ], [ %8, %do.end15 ], [ %12, %do.end25 ], [ %call30, %do.end35 ], [ %ret.1, %err_assert_reset ], [ 0, %if.end71 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_tv_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @drm_connector_cleanup(ptr noundef %1) #6
  %encoder = getelementptr inbounds %struct.sun4i_tv, ptr %1, i32 0, i32 1
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #6
  %clk = getelementptr inbounds %struct.sun4i_tv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_tv_mode_set(ptr nocapture noundef readonly %encoder, ptr noundef %mode, ptr nocapture noundef readnone %adjusted_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %name.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 31
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, ptr noundef %name.i, ptr noundef nonnull @.str.28) #6
  %call.i = tail call i32 @strcmp(ptr noundef %name.i, ptr noundef nonnull dereferenceable(5) @.str.28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.sun4i_tv_find_tv_by_mode.exit_crit_edge, label %for.cond.i

entry.sun4i_tv_find_tv_by_mode.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tv_find_tv_by_mode.exit

for.cond.i:                                       ; preds = %entry
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, ptr noundef %name.i, ptr noundef nonnull @.str.29) #6
  %call.1.i = tail call i32 @strcmp(ptr noundef %name.i, ptr noundef nonnull dereferenceable(4) @.str.29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.i.sun4i_tv_find_tv_by_mode.exit_crit_edge, label %for.cond.1.i

for.cond.i.sun4i_tv_find_tv_by_mode.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tv_find_tv_by_mode.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %0 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vdisplay.i, align 2
  %conv.i = zext i16 %1 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef %name.i, ptr noundef nonnull @.str.28, i32 noundef %conv.i, i32 noundef 480) #6
  %2 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vdisplay.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 480, i16 %3)
  %cmp17.i = icmp eq i16 %3, 480
  br i1 %cmp17.i, label %for.cond.1.i.sun4i_tv_find_tv_by_mode.exit_crit_edge, label %for.cond5.i

for.cond.1.i.sun4i_tv_find_tv_by_mode.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tv_find_tv_by_mode.exit

for.cond5.i:                                      ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.1.i = zext i16 %3 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef %name.i, ptr noundef nonnull @.str.29, i32 noundef %conv.1.i, i32 noundef 576) #6
  %4 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdisplay.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 576, i16 %5)
  %cmp17.1.i = icmp eq i16 %5, 576
  %spec.select.i = select i1 %cmp17.1.i, ptr getelementptr inbounds ([2 x %struct.tv_mode], ptr @tv_modes, i32 0, i32 1), ptr null
  br label %sun4i_tv_find_tv_by_mode.exit

sun4i_tv_find_tv_by_mode.exit:                    ; preds = %for.cond5.i, %for.cond.1.i.sun4i_tv_find_tv_by_mode.exit_crit_edge, %for.cond.i.sun4i_tv_find_tv_by_mode.exit_crit_edge, %entry.sun4i_tv_find_tv_by_mode.exit_crit_edge
  %retval.4.i = phi ptr [ @tv_modes, %for.cond.1.i.sun4i_tv_find_tv_by_mode.exit_crit_edge ], [ @tv_modes, %entry.sun4i_tv_find_tv_by_mode.exit_crit_edge ], [ getelementptr inbounds ([2 x %struct.tv_mode], ptr @tv_modes, i32 0, i32 1), %for.cond.i.sun4i_tv_find_tv_by_mode.exit_crit_edge ], [ %spec.select.i, %for.cond5.i ]
  %regs = getelementptr i8, ptr %encoder, i32 76
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %call.i120 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 1048560, i32 noundef 274960, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %mode4 = getelementptr inbounds %struct.tv_mode, ptr %retval.4.i, i32 0, i32 1
  %10 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode4, align 4
  %yc_en = getelementptr inbounds %struct.tv_mode, ptr %retval.4.i, i32 0, i32 15
  %12 = ptrtoint ptr %yc_en to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %yc_en, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %cond = select i1 %tobool.not, i32 0, i32 131072
  %or = or i32 %11, %cond
  %or8 = or i32 %or, 117506048
  %call9 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 4, i32 noundef %or8) #6
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %dac3_en = getelementptr inbounds %struct.tv_mode, ptr %retval.4.i, i32 0, i32 16
  %16 = ptrtoint ptr %dac3_en to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dac3_en, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not = icmp eq i8 %17, 0
  %dac_bit25_en = getelementptr inbounds %struct.tv_mode, ptr %retval.4.i, i32 0, i32 17
  %18 = ptrtoint ptr %dac_bit25_en to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dac_bit25_en, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not = icmp eq i8 %19, 0
  %cond19 = select i1 %tobool18.not, i32 0, i32 33554432
  %or20 = select i1 %tobool11.not, i32 1094647809, i32 1094647817
  %or21 = or i32 %or20, %cond19
  %call22 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 8, i32 noundef %or21) #6
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 12, i32 noundef 288) #6
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %chroma_freq = getelementptr inbounds %struct.tv_mode, ptr %retval.4.i, i32 0, i32 2
  %24 = ptrtoint ptr %chroma_freq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chroma_freq, align 4
  %call26 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 16, i32 noundef %25) #6
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %back_porch = getelementptr inbounds %struct.tv_mode, ptr %retval.4.i, i32 0, i32 3
  %28 = ptrtoint ptr %back_porch to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %back_porch, align 4
  %conv = zext i16 %29 to i32
  %shl = shl nuw i32 %conv, 16
  %front_porch = getelementptr inbounds %struct.tv_mode, ptr %retval.4.i, i32 0, i32 4
  %30 = ptrtoint ptr %front_porch to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %front_porch, align 2
  %conv28 = zext i16 %31 to i32
  %or29 = or i32 %shl, %conv28
  %call30 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 20, i32 noundef %or29) #6
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %line_number = getelementptr inbounds %struct.tv_mode, ptr %retval.4.i, i32 0, i32 5
  %34 = ptrtoint ptr %line_number to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %line_number, align 4
  %conv32 = zext i16 %35 to i32
  %or33 = or i32 %conv32, 1441792
  %call34 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 28, i32 noundef %or33) #6
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %video_levels = getelementptr inbounds %struct.tv_mode, ptr %retval.4.i, i32 0, i32 20
  %38 = ptrtoint ptr %video_levels to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %video_levels, align 4
  %blank = getelementptr inbounds %struct.video_levels, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %blank to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %blank, align 2
  %conv36 = zext i16 %41 to i32
  %shl37 = shl nuw i32 %conv36, 16
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %39, align 2
  %conv39 = zext i16 %43 to i32
  %or40 = or i32 %shl37, %conv39
  %call41 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 32, i32 noundef %or40) #6
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %call43 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 36, i32 noundef 404232216) #6
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %burst_levels = getelementptr inbounds %struct.tv_mode, ptr %retval.4.i, i32 0, i32 19
  %48 = ptrtoint ptr %burst_levels to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %burst_levels, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %49, align 2
  %conv45 = zext i16 %51 to i32
  %cr = getelementptr inbounds %struct.burst_levels, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %cr to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %cr, align 2
  %conv47 = zext i16 %53 to i32
  %shl48 = shl nuw nsw i32 %conv47, 8
  %or49 = or i32 %shl48, %conv45
  %call50 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 268, i32 noundef %or49) #6
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %call52 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 276, i32 noundef 1459326) #6
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %color_gains = getelementptr inbounds %struct.tv_mode, ptr %retval.4.i, i32 0, i32 18
  %58 = ptrtoint ptr %color_gains to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %color_gains, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %59, align 2
  %conv55 = zext i16 %61 to i32
  %cr57 = getelementptr inbounds %struct.color_gains, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %cr57 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %cr57, align 2
  %conv58 = zext i16 %63 to i32
  %shl59 = shl nuw nsw i32 %conv58, 8
  %or60 = or i32 %shl59, %conv55
  %call61 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 280, i32 noundef %or60) #6
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 4
  %vblank_level = getelementptr inbounds %struct.tv_mode, ptr %retval.4.i, i32 0, i32 6
  %66 = ptrtoint ptr %vblank_level to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vblank_level, align 2
  %conv63 = zext i16 %67 to i32
  %or64 = or i32 %conv63, 1048576
  %call65 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 284, i32 noundef %or64) #6
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %call67 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 292, i32 noundef 1440) #6
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 4
  %call69 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 296, i32 noundef 2) #6
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 4
  %call71 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 300, i32 noundef 257) #6
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 4
  %resync_params = getelementptr inbounds %struct.tv_mode, ptr %retval.4.i, i32 0, i32 21
  %76 = ptrtoint ptr %resync_params to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %resync_params, align 4
  %pixel = getelementptr inbounds %struct.resync_parameters, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %pixel to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %pixel, align 2
  %conv73 = zext i16 %79 to i32
  %line = getelementptr inbounds %struct.resync_parameters, ptr %77, i32 0, i32 1
  %80 = ptrtoint ptr %line to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %line, align 2
  %conv75 = zext i16 %81 to i32
  %shl76 = shl nuw i32 %conv75, 16
  %or77 = or i32 %shl76, %conv73
  %82 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %77, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool79.not = icmp eq i8 %83, 0
  %cond81 = select i1 %tobool79.not, i32 0, i32 -2147483648
  %or82 = or i32 %or77, %cond81
  %call83 = tail call i32 @regmap_write(ptr noundef %75, i32 noundef 304, i32 noundef %or82) #6
  %84 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs, align 4
  %call85 = tail call i32 @regmap_write(ptr noundef %85, i32 noundef 308, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_tv_disable(ptr nocapture noundef readonly %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc1 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %0 = ptrtoint ptr %crtc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.30) #6
  %regs = getelementptr i8, ptr %encoder, i32 76
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %engine = getelementptr inbounds %struct.sun4i_crtc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.sunxi_engine_disable_color_correction.exit_crit_edge, label %land.lhs.true.i

entry.sunxi_engine_disable_color_correction.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sunxi_engine_disable_color_correction.exit

land.lhs.true.i:                                  ; preds = %entry
  %disable_color_correction.i = getelementptr inbounds %struct.sunxi_engine_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %disable_color_correction.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable_color_correction.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.sunxi_engine_disable_color_correction.exit_crit_edge, label %if.then.i

land.lhs.true.i.sunxi_engine_disable_color_correction.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sunxi_engine_disable_color_correction.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %9(ptr noundef %5) #6
  br label %sunxi_engine_disable_color_correction.exit

sunxi_engine_disable_color_correction.exit:       ; preds = %if.then.i, %land.lhs.true.i.sunxi_engine_disable_color_correction.exit_crit_edge, %entry.sunxi_engine_disable_color_correction.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_tv_enable(ptr nocapture noundef readonly %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc1 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %0 = ptrtoint ptr %crtc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.31) #6
  %engine = getelementptr inbounds %struct.sun4i_crtc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %engine, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.sunxi_engine_apply_color_correction.exit_crit_edge, label %land.lhs.true.i

entry.sunxi_engine_apply_color_correction.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sunxi_engine_apply_color_correction.exit

land.lhs.true.i:                                  ; preds = %entry
  %apply_color_correction.i = getelementptr inbounds %struct.sunxi_engine_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %apply_color_correction.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apply_color_correction.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.sunxi_engine_apply_color_correction.exit_crit_edge, label %if.then.i

land.lhs.true.i.sunxi_engine_apply_color_correction.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sunxi_engine_apply_color_correction.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef %3) #6
  br label %sunxi_engine_apply_color_correction.exit

sunxi_engine_apply_color_correction.exit:         ; preds = %if.then.i, %land.lhs.true.i.sunxi_engine_apply_color_correction.exit_crit_edge, %entry.sunxi_engine_apply_color_correction.exit_crit_edge
  %regs = getelementptr i8, ptr %encoder, i32 76
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_tv_comp_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_create(ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32) #6
  br label %cleanup4

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 31
  %2 = call ptr @memcpy(ptr %name, ptr @.str.28, i32 5)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef %name) #6
  %type.i = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 64, ptr %type.i, align 2
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 13500, ptr %call, align 4
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %flags.i, align 4
  %hdisplay1.i = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %hdisplay1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 720, ptr %hdisplay1.i, align 4
  %hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 738, ptr %hsync_start.i, align 2
  %hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 740, ptr %hsync_end.i, align 4
  %htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %htotal.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 858, ptr %htotal.i, align 2
  %vdisplay17.i = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %vdisplay17.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 480, ptr %vdisplay17.i, align 2
  %vsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 506, ptr %vsync_start.i, align 4
  %vsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 8
  %12 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 508, ptr %vsync_end.i, align 2
  %vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 9
  %13 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 525, ptr %vtotal.i, align 4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #6
  %14 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %connector, align 8
  %call.1 = tail call ptr @drm_mode_create(ptr noundef %15) #6
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %if.end.if.then_crit_edge, label %if.end.1

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %name.1 = getelementptr inbounds %struct.drm_display_mode, ptr %call.1, i32 0, i32 31
  %16 = ptrtoint ptr %name.1 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 1346456576, ptr %name.1, align 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef %name.1) #6
  %type.i.1 = getelementptr inbounds %struct.drm_display_mode, ptr %call.1, i32 0, i32 28
  %17 = ptrtoint ptr %type.i.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 64, ptr %type.i.1, align 2
  %18 = ptrtoint ptr %call.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 13500, ptr %call.1, align 4
  %flags.i.1 = getelementptr inbounds %struct.drm_display_mode, ptr %call.1, i32 0, i32 11
  %19 = ptrtoint ptr %flags.i.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %flags.i.1, align 4
  %hdisplay1.i.1 = getelementptr inbounds %struct.drm_display_mode, ptr %call.1, i32 0, i32 1
  %20 = ptrtoint ptr %hdisplay1.i.1 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 720, ptr %hdisplay1.i.1, align 4
  %hsync_start.i.1 = getelementptr inbounds %struct.drm_display_mode, ptr %call.1, i32 0, i32 2
  %21 = ptrtoint ptr %hsync_start.i.1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 723, ptr %hsync_start.i.1, align 2
  %hsync_end.i.1 = getelementptr inbounds %struct.drm_display_mode, ptr %call.1, i32 0, i32 3
  %22 = ptrtoint ptr %hsync_end.i.1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 725, ptr %hsync_end.i.1, align 4
  %htotal.i.1 = getelementptr inbounds %struct.drm_display_mode, ptr %call.1, i32 0, i32 4
  %23 = ptrtoint ptr %htotal.i.1 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 864, ptr %htotal.i.1, align 2
  %vdisplay17.i.1 = getelementptr inbounds %struct.drm_display_mode, ptr %call.1, i32 0, i32 6
  %24 = ptrtoint ptr %vdisplay17.i.1 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 576, ptr %vdisplay17.i.1, align 2
  %vsync_start.i.1 = getelementptr inbounds %struct.drm_display_mode, ptr %call.1, i32 0, i32 7
  %25 = ptrtoint ptr %vsync_start.i.1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 604, ptr %vsync_start.i.1, align 4
  %vsync_end.i.1 = getelementptr inbounds %struct.drm_display_mode, ptr %call.1, i32 0, i32 8
  %26 = ptrtoint ptr %vsync_end.i.1 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 606, ptr %vsync_end.i.1, align 2
  %vtotal.i.1 = getelementptr inbounds %struct.drm_display_mode, ptr %call.1, i32 0, i32 9
  %27 = ptrtoint ptr %vtotal.i.1 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 625, ptr %vtotal.i.1, align 4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.1) #6
  br label %cleanup4

cleanup4:                                         ; preds = %if.end.1, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 2, %if.end.1 ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_tv_comp_mode_valid(ptr nocapture noundef readnone %connector, ptr nocapture noundef readnone %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_tv_comp_connector_destroy(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_cleanup(ptr noundef %connector) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_sun4i_tv__307_665_sun4i_tv_platform_driver_init6, !1, !"__initcall__kmod_sun4i_tv__307_665_sun4i_tv_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 665, i32 1}
!2 = !{ptr @__exitcall_sun4i_tv_platform_driver_exit, !1, !"__exitcall_sun4i_tv_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author308, !4, !"__UNIQUE_ID_author308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 667, i32 1}
!5 = !{ptr @__UNIQUE_ID_description309, !6, !"__UNIQUE_ID_description309", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 668, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 669, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 661, i32 12}
!12 = !{ptr @sun4i_tv_platform_driver, !13, !"sun4i_tv_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 657, i32 31}
!14 = !{ptr @sun4i_tv_ops, !15, !"sun4i_tv_ops", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 634, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 552, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sun4i_tv_bind._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sun4i_tv_bind._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @sun4i_tv_bind._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 556, i32 13}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 559, i32 3}
!29 = !{ptr @sun4i_tv_bind._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sun4i_tv_bind._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 565, i32 3}
!33 = !{ptr @sun4i_tv_bind._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @sun4i_tv_bind._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 571, i32 3}
!37 = !{ptr @sun4i_tv_bind._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sun4i_tv_bind._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 577, i32 3}
!41 = !{ptr @sun4i_tv_bind._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sun4i_tv_bind._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 588, i32 3}
!45 = !{ptr @sun4i_tv_bind._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sun4i_tv_bind._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 605, i32 3}
!49 = !{ptr @sun4i_tv_bind._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sun4i_tv_bind._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 531, i32 11}
!53 = !{ptr @sun4i_tv_regmap_config, !54, !"sun4i_tv_regmap_config", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 526, i32 35}
!55 = !{ptr @sun4i_tv_helper_funcs, !56, !"sun4i_tv_helper_funcs", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 471, i32 46}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 300, i32 3}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 311, i32 3}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 215, i32 12}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 244, i32 12}
!65 = !{ptr @tv_modes, !66, !"tv_modes", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 213, i32 29}
!67 = !{ptr @ntsc_color_gains, !68, !"ntsc_color_gains", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 197, i32 33}
!69 = !{ptr @ntsc_burst_levels, !70, !"ntsc_burst_levels", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 189, i32 34}
!71 = !{ptr @ntsc_video_levels, !72, !"ntsc_video_levels", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 181, i32 34}
!73 = !{ptr @ntsc_resync_parameters, !74, !"ntsc_resync_parameters", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 205, i32 39}
!75 = !{ptr @pal_color_gains, !76, !"pal_color_gains", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 201, i32 33}
!77 = !{ptr @pal_burst_levels, !78, !"pal_burst_levels", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 193, i32 34}
!79 = !{ptr @pal_video_levels, !80, !"pal_video_levels", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 185, i32 34}
!81 = !{ptr @pal_resync_parameters, !82, !"pal_resync_parameters", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 209, i32 39}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 347, i32 2}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 361, i32 2}
!87 = !{ptr @sun4i_tv_comp_connector_helper_funcs, !88, !"sun4i_tv_comp_connector_helper_funcs", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 507, i32 48}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 487, i32 4}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 325, i32 2}
!93 = !{ptr @sun4i_tv_comp_connector_funcs, !94, !"sun4i_tv_comp_connector_funcs", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 518, i32 41}
!95 = !{ptr @sun4i_tv_of_table, !96, !"sun4i_tv_of_table", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/sun4i/sun4i_tv.c", i32 651, i32 34}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i8 0, i8 2}
