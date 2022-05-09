; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c"
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
%struct.cec_pin_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sun4i_hdmi_variant = type { i8, i8, i32, i32, i32, %struct.reg_field, i8, i8, i8, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, i8, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.cec_connector_info = type { i32, %union.anon.88 }
%union.anon.88 = type { [16 x i32] }
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
%struct.sun4i_hdmi = type { %struct.drm_connector, %struct.drm_encoder, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
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
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }

@__initcall__kmod_sun4i_drm_hdmi__312_718_sun4i_hdmi_driver_init6 = internal global ptr @sun4i_hdmi_driver_init, section ".initcall6.init", align 4
@sun4i_hdmi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_hdmi_probe, ptr @sun4i_hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_hdmi_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_hdmi_driver_exit = internal global ptr @sun4i_hdmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author313 = internal constant [71 x i8] c"sun4i_drm_hdmi.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description314 = internal constant [53 x i8] c"sun4i_drm_hdmi.description=Allwinner A10 HDMI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [57 x i8] c"sun4i_drm_hdmi.file=drivers/gpu/drm/sun4i/sun4i-drm-hdmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [27 x i8] c"sun4i_drm_hdmi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sun4i-hdmi\00", [21 x i8] zeroinitializer }, align 32
@sun4i_hdmi_of_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a10s-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_variant }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@sun4i_hdmi_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @sun4i_hdmi_bind, ptr @sun4i_hdmi_unbind }, [24 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 508, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Couldn't map the HDMI encoder registers\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun4i_hdmi_bind\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry_ptr = internal global ptr @sun4i_hdmi_bind._entry, section ".printk_index", align 4
@sun4i_hdmi_bind._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 515, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't get the HDMI reset control\0A\00", [59 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry_ptr.8 = internal global ptr @sun4i_hdmi_bind._entry.6, section ".printk_index", align 4
@sun4i_hdmi_bind._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 521, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't deassert HDMI reset\0A\00", [34 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry_ptr.11 = internal global ptr @sun4i_hdmi_bind._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 528, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't get the HDMI bus clock\0A\00", [63 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry_ptr.15 = internal global ptr @sun4i_hdmi_bind._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 536, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't get the HDMI mod clock\0A\00", [63 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry_ptr.19 = internal global ptr @sun4i_hdmi_bind._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll-0\00", [26 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 544, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't get the HDMI PLL 0 clock\0A\00", [61 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry_ptr.23 = internal global ptr @sun4i_hdmi_bind._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll-1\00", [26 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't get the HDMI PLL 1 clock\0A\00", [61 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry_ptr.27 = internal global ptr @sun4i_hdmi_bind._entry.25, section ".printk_index", align 4
@sun4i_hdmi_bind._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sun4i_hdmi_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1408, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"sun4i_hdmi_enc:557:(&sun4i_hdmi_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 559, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't create HDMI encoder regmap\0A\00", [59 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry_ptr.31 = internal global ptr @sun4i_hdmi_bind._entry.29, section ".printk_index", align 4
@sun4i_hdmi_bind._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 566, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't create the TMDS clock\0A\00", [32 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry_ptr.34 = internal global ptr @sun4i_hdmi_bind._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ddc\00", [28 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 573, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't get the HDMI DDC clock\0A\00", [63 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry_ptr.38 = internal global ptr @sun4i_hdmi_bind._entry.36, section ".printk_index", align 4
@sun4i_hdmi_bind._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Couldn't create the HDMI I2C adapter\0A\00", [58 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry_ptr.41 = internal global ptr @sun4i_hdmi_bind._entry.39, section ".printk_index", align 4
@sun4i_hdmi_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr @sun4i_hdmi_mode_valid, ptr null, ptr null, ptr null, ptr @sun4i_hdmi_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_hdmi_disable, ptr @sun4i_hdmi_enable, ptr @sun4i_hdmi_atomic_check }, [44 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.2, ptr @.str.3, i32 611, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Couldn't initialise the HDMI encoder\0A\00", [58 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry_ptr.44 = internal global ptr @sun4i_hdmi_bind._entry.42, section ".printk_index", align 4
@sun4i_hdmi_cec_pin_ops = internal constant { %struct.cec_pin_ops, [56 x i8] } { %struct.cec_pin_ops { ptr @sun4i_hdmi_cec_pin_read, ptr @sun4i_hdmi_cec_pin_low, ptr @sun4i_hdmi_cec_pin_high, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sun4i\00", [26 x i8] zeroinitializer }, align 32
@sun4i_hdmi_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @sun4i_hdmi_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sun4i_hdmi_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @sun4i_hdmi_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.2, ptr @.str.3, i32 640, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't initialise the HDMI connector\0A\00", [56 x i8] zeroinitializer }, align 32
@sun4i_hdmi_bind._entry_ptr.48 = internal global ptr @sun4i_hdmi_bind._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ddc-i2c-bus\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Disabling the HDMI Output\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Enabling the HDMI Output\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get infoframes from mode\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to pack infoframes\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Monitor is %s monitor\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"an HDMI\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"a DVI\00", [26 x i8] zeroinitializer }, align 32
@sun4i_variant = internal constant { %struct.sun4i_hdmi_variant, [88 x i8] } { %struct.sun4i_hdmi_variant { i8 0, i8 0, i32 -25165824, i32 14207008, i32 -95488248, %struct.reg_field { i32 1320, i32 0, i32 6, i32 0, i32 0 }, i8 2, i8 1, i8 0, %struct.reg_field { i32 1280, i32 31, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 30, i32 30, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 1284, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1284, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 1292, i32 0, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 1296, i32 31, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1296, i32 4, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 1296, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 1308, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 1312, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 1344, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 1344, i32 8, i32 8, i32 0, i32 0 }, i32 1304, i8 0, i8 1 }, [88 x i8] zeroinitializer }, align 32
@sun5i_variant = internal constant { %struct.sun4i_hdmi_variant, [88 x i8] } { %struct.sun4i_hdmi_variant { i8 0, i8 0, i32 -25165824, i32 14207024, i32 -95488248, %struct.reg_field { i32 1320, i32 0, i32 6, i32 0, i32 0 }, i8 2, i8 1, i8 0, %struct.reg_field { i32 1280, i32 31, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 30, i32 30, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 1284, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1284, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 1292, i32 0, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 1296, i32 31, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1296, i32 4, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 1296, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 1308, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 1312, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 1344, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 1344, i32 8, i32 8, i32 0, i32 0 }, i32 1304, i8 0, i8 1 }, [88 x i8] zeroinitializer }, align 32
@sun6i_variant = internal constant { %struct.sun4i_hdmi_variant, [88 x i8] } { %struct.sun4i_hdmi_variant { i8 1, i8 1, i32 2122318079, i32 31379504, i32 -1169644792, %struct.reg_field { i32 1312, i32 0, i32 6, i32 0, i32 0 }, i8 1, i8 2, i8 1, %struct.reg_field { i32 1280, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 27, i32 27, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 31, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1292, i32 1, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1292, i32 1, i32 7, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 1300, i32 0, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 1304, i32 18, i32 18, i32 0, i32 0 }, %struct.reg_field { i32 1304, i32 4, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 1304, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 1288, i32 16, i32 25, i32 0, i32 0 }, %struct.reg_field { i32 1288, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 4, i32 4, i32 0, i32 0 }, i32 1408, i8 1, i8 0 }, [88 x i8] zeroinitializer }, align 32
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"sun4i_hdmi_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 710, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 714, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c"sun4i_hdmi_of_table\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 702, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"sun4i_hdmi_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 685, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 508, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 515, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 521, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 526, i32 36 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 528, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 534, i32 36 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 536, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 542, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 544, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 549, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 551, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [25 x i8] c"sun4i_hdmi_regmap_config\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 477, i32 35 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 556, i32 17 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 559, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 566, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 571, i32 44 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 573, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 593, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [24 x i8] c"sun4i_hdmi_helper_funcs\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 200, i32 46 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 611, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [23 x i8] c"sun4i_hdmi_cec_pin_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 307, i32 33 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 624, i32 9 }
@___asan_gen_.186 = private unnamed_addr constant [34 x i8] c"sun4i_hdmi_connector_helper_funcs\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 252, i32 48 }
@___asan_gen_.189 = private unnamed_addr constant [27 x i8] c"sun4i_hdmi_connector_funcs\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 271, i32 41 }
@___asan_gen_.192 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 639, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 239, i32 37 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 89, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 104, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 56, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 62, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 219, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [14 x i8] c"sun4i_variant\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 318, i32 40 }
@___asan_gen_.225 = private unnamed_addr constant [14 x i8] c"sun5i_variant\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 369, i32 40 }
@___asan_gen_.228 = private unnamed_addr constant [14 x i8] c"sun6i_variant\00", align 1
@___asan_gen_.229 = private constant [42 x i8] c"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 420, i32 40 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_sun4i_hdmi_driver_exit, ptr @__initcall__kmod_sun4i_drm_hdmi__312_718_sun4i_hdmi_driver_init6, ptr @sun4i_hdmi_bind._entry, ptr @sun4i_hdmi_bind._entry.13, ptr @sun4i_hdmi_bind._entry.17, ptr @sun4i_hdmi_bind._entry.21, ptr @sun4i_hdmi_bind._entry.25, ptr @sun4i_hdmi_bind._entry.29, ptr @sun4i_hdmi_bind._entry.32, ptr @sun4i_hdmi_bind._entry.36, ptr @sun4i_hdmi_bind._entry.39, ptr @sun4i_hdmi_bind._entry.42, ptr @sun4i_hdmi_bind._entry.46, ptr @sun4i_hdmi_bind._entry.6, ptr @sun4i_hdmi_bind._entry.9, ptr @sun4i_hdmi_bind._entry_ptr, ptr @sun4i_hdmi_bind._entry_ptr.11, ptr @sun4i_hdmi_bind._entry_ptr.15, ptr @sun4i_hdmi_bind._entry_ptr.19, ptr @sun4i_hdmi_bind._entry_ptr.23, ptr @sun4i_hdmi_bind._entry_ptr.27, ptr @sun4i_hdmi_bind._entry_ptr.31, ptr @sun4i_hdmi_bind._entry_ptr.34, ptr @sun4i_hdmi_bind._entry_ptr.38, ptr @sun4i_hdmi_bind._entry_ptr.41, ptr @sun4i_hdmi_bind._entry_ptr.44, ptr @sun4i_hdmi_bind._entry_ptr.48, ptr @sun4i_hdmi_bind._entry_ptr.8, ptr @sun4i_hdmi_driver_exit, ptr @sun4i_hdmi_driver, ptr @.str, ptr @sun4i_hdmi_of_table, ptr @sun4i_hdmi_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @sun4i_hdmi_bind._key, ptr @sun4i_hdmi_regmap_config, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @sun4i_hdmi_helper_funcs, ptr @.str.43, ptr @sun4i_hdmi_cec_pin_ops, ptr @.str.45, ptr @sun4i_hdmi_connector_helper_funcs, ptr @sun4i_hdmi_connector_funcs, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @sun4i_variant, ptr @sun5i_variant, ptr @sun6i_variant], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_of_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_bind._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_bind._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_bind._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_bind._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_bind._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_bind._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_bind._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_bind._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_bind._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_bind._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_bind._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_bind._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_cec_pin_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_hdmi_bind._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_variant to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_variant to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_variant to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_hdmi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_hdmi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_hdmi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @sun4i_hdmi_ops) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @sun4i_hdmi_ops) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %conn_info = alloca %struct.cec_connector_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %conn_info) #7
  %0 = call ptr @memset(ptr %conn_info, i32 255, i32 68)
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %1 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_private, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1240, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev1, align 8
  %drv2 = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 29
  %5 = ptrtoint ptr %drv2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %drv2, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %variant = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 32
  %6 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %variant, align 8
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %variant, align 8
  %has_reset_control = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %has_reset_control to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_reset_control, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  br i1 %tobool16.not, label %if.end14.if.end36_crit_edge, label %if.then17

if.end14.if.end36_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then17:                                        ; preds = %if.end14
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %reset = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %reset, align 4
  %cmp.i338 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i338, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  %16 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.then17
  %call29 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end27.if.end36_crit_edge, label %do.end34

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end27.if.end36_crit_edge, %if.end14.if.end36_crit_edge
  %call37 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #7
  %bus_clk = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call37, ptr %bus_clk, align 8
  %cmp.i339 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i339, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  %20 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus_clk, align 8
  %22 = ptrtoint ptr %21 to i32
  br label %err_assert_reset

if.end46:                                         ; preds = %if.end36
  %call.i340 = tail call i32 @clk_prepare(ptr noundef %call37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i340)
  %tobool.not.i = icmp eq i32 %call.i340, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end46.clk_prepare_enable.exit_crit_edge

if.end46.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end46
  %call1.i = tail call i32 @clk_enable(ptr noundef %call37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call37) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end46.clk_prepare_enable.exit_crit_edge
  %call49 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.16) #7
  %mod_clk = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %mod_clk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call49, ptr %mod_clk, align 4
  %cmp.i341 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i341, label %do.end55, label %if.end58

do.end55:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  %24 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mod_clk, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %err_disable_bus_clk

if.end58:                                         ; preds = %clk_prepare_enable.exit
  %call.i342 = tail call i32 @clk_prepare(ptr noundef %call49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i342)
  %tobool.not.i343 = icmp eq i32 %call.i342, 0
  br i1 %tobool.not.i343, label %if.end.i346, label %if.end58.clk_prepare_enable.exit348_crit_edge

if.end58.clk_prepare_enable.exit348_crit_edge:    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit348

if.end.i346:                                      ; preds = %if.end58
  %call1.i344 = tail call i32 @clk_enable(ptr noundef %call49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i344)
  %tobool2.not.i345 = icmp eq i32 %call1.i344, 0
  br i1 %tobool2.not.i345, label %if.end.i346.clk_prepare_enable.exit348_crit_edge, label %if.then3.i347

if.end.i346.clk_prepare_enable.exit348_crit_edge: ; preds = %if.end.i346
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit348

if.then3.i347:                                    ; preds = %if.end.i346
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call49) #7
  br label %clk_prepare_enable.exit348

clk_prepare_enable.exit348:                       ; preds = %if.then3.i347, %if.end.i346.clk_prepare_enable.exit348_crit_edge, %if.end58.clk_prepare_enable.exit348_crit_edge
  %call61 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.20) #7
  %pll0_clk = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 9
  %27 = ptrtoint ptr %pll0_clk to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call61, ptr %pll0_clk, align 4
  %cmp.i349 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i349, label %do.end67, label %if.end70

do.end67:                                         ; preds = %clk_prepare_enable.exit348
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #10
  %28 = ptrtoint ptr %pll0_clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pll0_clk, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %err_disable_mod_clk

if.end70:                                         ; preds = %clk_prepare_enable.exit348
  %call71 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.24) #7
  %pll1_clk = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 10
  %31 = ptrtoint ptr %pll1_clk to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call71, ptr %pll1_clk, align 8
  %cmp.i350 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i350, label %do.end77, label %if.end80

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #10
  %32 = ptrtoint ptr %pll1_clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pll1_clk, align 8
  %34 = ptrtoint ptr %33 to i32
  br label %err_disable_mod_clk

if.end80:                                         ; preds = %if.end70
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %call83 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %36, ptr noundef nonnull @sun4i_hdmi_regmap_config, ptr noundef nonnull @sun4i_hdmi_bind._key, ptr noundef nonnull @.str.28) #7
  %regmap = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call83, ptr %regmap, align 8
  %cmp.i351 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i351, label %do.end89, label %if.end92

do.end89:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #10
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 8
  %40 = ptrtoint ptr %39 to i32
  br label %err_disable_mod_clk

if.end92:                                         ; preds = %if.end80
  %call93 = tail call i32 @sun4i_tmds_create(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end99, label %do.end98

do.end98:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #10
  br label %err_disable_mod_clk

if.end99:                                         ; preds = %if.end92
  %41 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %variant, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool101.not = icmp eq i8 %44, 0
  br i1 %tobool101.not, label %if.else, label %if.then102

if.then102:                                       ; preds = %if.end99
  %call103 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.35) #7
  %ddc_parent_clk = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 8
  %45 = ptrtoint ptr %ddc_parent_clk to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call103, ptr %ddc_parent_clk, align 8
  %cmp.i352 = icmp ugt ptr %call103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i352, label %do.end109, label %if.then102.do.body115_crit_edge

if.then102.do.body115_crit_edge:                  ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body115

do.end109:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #10
  %46 = ptrtoint ptr %ddc_parent_clk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ddc_parent_clk, align 8
  %48 = ptrtoint ptr %47 to i32
  br label %err_disable_mod_clk

if.else:                                          ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %tmds_clk = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 12
  %49 = ptrtoint ptr %tmds_clk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tmds_clk, align 8
  %ddc_parent_clk113 = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 8
  %51 = ptrtoint ptr %ddc_parent_clk113 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %ddc_parent_clk113, align 8
  br label %do.body115

do.body115:                                       ; preds = %if.else, %if.then102.do.body115_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr119 = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 128) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %variant, align 8
  %pad_ctrl0_init_val = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %pad_ctrl0_init_val to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pad_ctrl0_init_val, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr125 = getelementptr i8, ptr %60, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 %58) #7, !srcloc !130
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %add.ptr127 = getelementptr i8, ptr %62, i32 520
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127) #7, !srcloc !132
  %64 = lshr i32 %63, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %and = and i32 %64, 240
  %65 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %variant, align 8
  %pll_ctrl_init_val = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %pll_ctrl_init_val to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pll_ctrl_init_val, align 4
  %or = or i32 %68, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %69 = tail call i32 @llvm.bswap.i32(i32 %or)
  %70 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base, align 4
  %add.ptr136 = getelementptr i8, ptr %71, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 %69) #7, !srcloc !130
  %call137 = tail call i32 @sun4i_hdmi_i2c_create(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end143, label %do.end142

do.end142:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #10
  br label %err_disable_mod_clk

if.end143:                                        ; preds = %do.body115
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %72 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %of_node.i, align 8
  %call.i353 = tail call ptr @of_graph_get_remote_node(ptr noundef %73, i32 noundef 1, i32 noundef -1) #7
  %tobool.not.i354 = icmp eq ptr %call.i353, null
  br i1 %tobool.not.i354, label %if.end143.sun4i_hdmi_get_ddc.exit.thread_crit_edge, label %if.end.i356

if.end143.sun4i_hdmi_get_ddc.exit.thread_crit_edge: ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %sun4i_hdmi_get_ddc.exit.thread

if.end.i356:                                      ; preds = %if.end143
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %74 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i355 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call.i353, ptr noundef nonnull @.str.49, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i355)
  %tobool.not.i.i = icmp eq i32 %call.i.i355, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end.i356
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  call void @of_node_put(ptr noundef nonnull %call.i353) #7
  br label %sun4i_hdmi_get_ddc.exit.thread

of_parse_phandle.exit.i:                          ; preds = %if.end.i356
  %75 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  call void @of_node_put(ptr noundef nonnull %call.i353) #7
  %tobool3.not.i = icmp eq ptr %76, null
  br i1 %tobool3.not.i, label %of_parse_phandle.exit.i.sun4i_hdmi_get_ddc.exit.thread_crit_edge, label %if.end6.i

of_parse_phandle.exit.i.sun4i_hdmi_get_ddc.exit.thread_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sun4i_hdmi_get_ddc.exit.thread

if.end6.i:                                        ; preds = %of_parse_phandle.exit.i
  %call7.i = call ptr @of_get_i2c_adapter_by_node(ptr noundef nonnull %76) #7
  call void @of_node_put(ptr noundef nonnull %76) #7
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end6.i.sun4i_hdmi_get_ddc.exit.thread_crit_edge, label %sun4i_hdmi_get_ddc.exit

if.end6.i.sun4i_hdmi_get_ddc.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sun4i_hdmi_get_ddc.exit.thread

sun4i_hdmi_get_ddc.exit.thread:                   ; preds = %if.end6.i.sun4i_hdmi_get_ddc.exit.thread_crit_edge, %of_parse_phandle.exit.i.sun4i_hdmi_get_ddc.exit.thread_crit_edge, %of_parse_phandle.exit.thread.i, %if.end143.sun4i_hdmi_get_ddc.exit.thread_crit_edge
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -19 to ptr), %of_parse_phandle.exit.i.sun4i_hdmi_get_ddc.exit.thread_crit_edge ], [ inttoptr (i32 -19 to ptr), %of_parse_phandle.exit.thread.i ], [ inttoptr (i32 -22 to ptr), %if.end143.sun4i_hdmi_get_ddc.exit.thread_crit_edge ], [ inttoptr (i32 -517 to ptr), %if.end6.i.sun4i_hdmi_get_ddc.exit.thread_crit_edge ]
  %ddc_i2c361 = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 14
  %77 = ptrtoint ptr %ddc_i2c361 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %retval.0.i.ph, ptr %ddc_i2c361, align 8
  br label %if.then147

sun4i_hdmi_get_ddc.exit:                          ; preds = %if.end6.i
  %ddc_i2c = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 14
  %78 = ptrtoint ptr %ddc_i2c to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i, ptr %ddc_i2c, align 8
  %cmp.i357 = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i357, label %sun4i_hdmi_get_ddc.exit.if.then147_crit_edge, label %sun4i_hdmi_get_ddc.exit.if.end154_crit_edge

sun4i_hdmi_get_ddc.exit.if.end154_crit_edge:      ; preds = %sun4i_hdmi_get_ddc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

sun4i_hdmi_get_ddc.exit.if.then147_crit_edge:     ; preds = %sun4i_hdmi_get_ddc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then147

if.then147:                                       ; preds = %sun4i_hdmi_get_ddc.exit.if.then147_crit_edge, %sun4i_hdmi_get_ddc.exit.thread
  %ddc_i2c364 = phi ptr [ %ddc_i2c361, %sun4i_hdmi_get_ddc.exit.thread ], [ %ddc_i2c, %sun4i_hdmi_get_ddc.exit.if.then147_crit_edge ]
  %retval.0.i363 = phi ptr [ %retval.0.i.ph, %sun4i_hdmi_get_ddc.exit.thread ], [ %call7.i, %sun4i_hdmi_get_ddc.exit.if.then147_crit_edge ]
  %79 = ptrtoint ptr %retval.0.i363 to i32
  %cmp = icmp eq ptr %retval.0.i363, inttoptr (i32 -19 to ptr)
  br i1 %cmp, label %if.then150, label %if.then147.err_del_i2c_adapter_crit_edge

if.then147.err_del_i2c_adapter_crit_edge:         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_del_i2c_adapter

if.then150:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %ddc_i2c364 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %ddc_i2c364, align 8
  br label %if.end154

if.end154:                                        ; preds = %if.then150, %sun4i_hdmi_get_ddc.exit.if.end154_crit_edge
  %ddc_i2c365 = phi ptr [ %ddc_i2c364, %if.then150 ], [ %ddc_i2c, %sun4i_hdmi_get_ddc.exit.if.end154_crit_edge ]
  %encoder = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 1
  %helper_private.i = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 1, i32 11
  %81 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @sun4i_hdmi_helper_funcs, ptr %helper_private.i, align 4
  %call156 = call i32 @drm_simple_encoder_init(ptr noundef %data, ptr noundef %encoder, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end162, label %do.end161

do.end161:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #10
  br label %err_put_ddc_i2c

if.end162:                                        ; preds = %if.end154
  %82 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %of_node.i, align 8
  %call163 = call i32 @drm_of_find_possible_crtcs(ptr noundef %data, ptr noundef %83) #7
  %possible_crtcs = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 1, i32 6
  %84 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call163, ptr %possible_crtcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool167.not = icmp eq i32 %call163, 0
  br i1 %tobool167.not, label %if.end162.err_put_ddc_i2c_crit_edge, label %if.end169

if.end162.err_put_ddc_i2c_crit_edge:              ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_put_ddc_i2c

if.end169:                                        ; preds = %if.end162
  %call170 = call ptr @cec_pin_allocate_adapter(ptr noundef nonnull @sun4i_hdmi_cec_pin_ops, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.45, i32 noundef 286) #7
  %cec_adap = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 31
  %85 = ptrtoint ptr %cec_adap to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call170, ptr %cec_adap, align 4
  %cmp.i.i = icmp ugt ptr %call170, inttoptr (i32 -4096 to ptr)
  %86 = ptrtoint ptr %call170 to i32
  %cmp173366 = icmp slt ptr %call170, null
  %cmp173 = and i1 %cmp.i.i, %cmp173366
  br i1 %cmp173, label %if.end169.err_cleanup_connector_crit_edge, label %do.body176

if.end169.err_cleanup_connector_crit_edge:        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_cleanup_connector

do.body176:                                       ; preds = %if.end169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void @arm_heavy_mb() #7
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 4
  %add.ptr182 = getelementptr i8, ptr %88, i32 532
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr182) #7, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %90 = and i32 %89, -131073
  %91 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base, align 4
  %add.ptr188 = getelementptr i8, ptr %92, i32 532
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 %90) #7, !srcloc !130
  %helper_private.i359 = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 35
  %93 = ptrtoint ptr %helper_private.i359 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @sun4i_hdmi_connector_helper_funcs, ptr %helper_private.i359, align 4
  %94 = ptrtoint ptr %ddc_i2c365 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ddc_i2c365, align 8
  %call191 = call i32 @drm_connector_init_with_ddc(ptr noundef %data, ptr noundef nonnull %call.i, ptr noundef nonnull @sun4i_hdmi_connector_funcs, i32 noundef 11, ptr noundef %95) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end197, label %do.end196

do.end196:                                        ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #10
  br label %err_cleanup_connector

if.end197:                                        ; preds = %do.body176
  call void @cec_fill_conn_info_from_drm(ptr noundef nonnull %conn_info, ptr noundef nonnull %call.i) #7
  %96 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cec_adap, align 4
  call void @cec_s_conn_info(ptr noundef %97, ptr noundef nonnull %conn_info) #7
  %polled = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 33
  %98 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 6, ptr %polled, align 4
  %99 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cec_adap, align 4
  %call202 = call i32 @cec_register_adapter(ptr noundef %100, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %cmp203 = icmp slt i32 %call202, 0
  br i1 %cmp203, label %if.end197.err_cleanup_connector_crit_edge, label %if.end205

if.end197.err_cleanup_connector_crit_edge:        ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_cleanup_connector

if.end205:                                        ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #9
  %call208 = call i32 @drm_connector_attach_encoder(ptr noundef nonnull %call.i, ptr noundef %encoder) #7
  br label %cleanup

err_cleanup_connector:                            ; preds = %if.end197.err_cleanup_connector_crit_edge, %do.end196, %if.end169.err_cleanup_connector_crit_edge
  %ret.0 = phi i32 [ %86, %if.end169.err_cleanup_connector_crit_edge ], [ %call191, %do.end196 ], [ %call202, %if.end197.err_cleanup_connector_crit_edge ]
  %101 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cec_adap, align 4
  call void @cec_delete_adapter(ptr noundef %102) #7
  call void @drm_encoder_cleanup(ptr noundef %encoder) #7
  br label %err_put_ddc_i2c

err_put_ddc_i2c:                                  ; preds = %err_cleanup_connector, %if.end162.err_put_ddc_i2c_crit_edge, %do.end161
  %ret.1 = phi i32 [ %call156, %do.end161 ], [ %ret.0, %err_cleanup_connector ], [ -517, %if.end162.err_put_ddc_i2c_crit_edge ]
  %103 = ptrtoint ptr %ddc_i2c365 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ddc_i2c365, align 8
  call void @i2c_put_adapter(ptr noundef %104) #7
  br label %err_del_i2c_adapter

err_del_i2c_adapter:                              ; preds = %err_put_ddc_i2c, %if.then147.err_del_i2c_adapter_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_put_ddc_i2c ], [ %79, %if.then147.err_del_i2c_adapter_crit_edge ]
  %i2c = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 13
  %105 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i2c, align 4
  call void @i2c_del_adapter(ptr noundef %106) #7
  br label %err_disable_mod_clk

err_disable_mod_clk:                              ; preds = %err_del_i2c_adapter, %do.end142, %do.end109, %do.end98, %do.end89, %do.end77, %do.end67
  %ret.3 = phi i32 [ %30, %do.end67 ], [ %34, %do.end77 ], [ %40, %do.end89 ], [ %call93, %do.end98 ], [ %48, %do.end109 ], [ %call137, %do.end142 ], [ %ret.2, %err_del_i2c_adapter ]
  %107 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mod_clk, align 4
  call void @clk_disable(ptr noundef %108) #7
  call void @clk_unprepare(ptr noundef %108) #7
  br label %err_disable_bus_clk

err_disable_bus_clk:                              ; preds = %err_disable_mod_clk, %do.end55
  %ret.4 = phi i32 [ %26, %do.end55 ], [ %ret.3, %err_disable_mod_clk ]
  %109 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bus_clk, align 8
  call void @clk_disable(ptr noundef %110) #7
  call void @clk_unprepare(ptr noundef %110) #7
  br label %err_assert_reset

err_assert_reset:                                 ; preds = %err_disable_bus_clk, %do.end43
  %ret.5 = phi i32 [ %22, %do.end43 ], [ %ret.4, %err_disable_bus_clk ]
  %reset214 = getelementptr inbounds %struct.sun4i_hdmi, ptr %call.i, i32 0, i32 5
  %111 = ptrtoint ptr %reset214 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %reset214, align 4
  %call215 = call i32 @reset_control_assert(ptr noundef %112) #7
  br label %cleanup

cleanup:                                          ; preds = %err_assert_reset, %if.end205, %do.end34, %do.end24, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ %18, %do.end24 ], [ %call29, %do.end34 ], [ %ret.5, %err_assert_reset ], [ 0, %if.end205 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %conn_info) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_hdmi_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cec_adap = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cec_adap, align 4
  tail call void @cec_unregister_adapter(ptr noundef %3) #7
  %i2c = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 4
  tail call void @i2c_del_adapter(ptr noundef %5) #7
  %ddc_i2c = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %ddc_i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddc_i2c, align 8
  tail call void @i2c_put_adapter(ptr noundef %7) #7
  %mod_clk = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  %bus_clk = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus_clk, align 8
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_tmds_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hdmi_i2c_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_pin_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_fill_conn_info_from_drm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_conn_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_mode_valid(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %mul = mul i32 %1, 1000
  %div = udiv i32 %mul, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000000, i32 %mul)
  %cmp = icmp ugt i32 %mul, 165000000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tmds_clk = getelementptr i8, ptr %encoder, i32 112
  %2 = ptrtoint ptr %tmds_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tmds_clk, align 8
  %call1 = tail call i32 @clk_round_rate(ptr noundef %3, i32 noundef %mul) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %4 = tail call i32 @llvm.umax.i32(i32 %call1, i32 %mul)
  %5 = tail call i32 @llvm.umin.i32(i32 %call1, i32 %mul)
  %sub = sub nsw i32 %4, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %div)
  %cmp10 = icmp ult i32 %sub, %div
  br i1 %cmp10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 14, %if.end12 ], [ 15, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_hdmi_mode_set(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %mode, ptr nocapture noundef readnone %adjusted_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mod_clk = getelementptr i8, ptr %encoder, i32 92
  %0 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mod_clk, align 4
  %crtc_clock = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 12
  %2 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crtc_clock, align 4
  %mul = mul i32 %3, 1000
  %call1 = tail call i32 @clk_set_rate(ptr noundef %1, i32 noundef %mul) #7
  %tmds_clk = getelementptr i8, ptr %encoder, i32 112
  %4 = ptrtoint ptr %tmds_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmds_clk, align 8
  %6 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_clock, align 4
  %mul3 = mul i32 %7, 1000
  %call4 = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef %mul3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %base = getelementptr i8, ptr %encoder, i32 76
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 8) #7, !srcloc !130
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 516
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !132
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %and = and i32 %13, 64
  %variant = getelementptr i8, ptr %encoder, i32 192
  %14 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant, align 8
  %pad_ctrl1_init_val = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %pad_ctrl1_init_val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pad_ctrl1_init_val, align 4
  %or = or i32 %17, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %20, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %18) #7, !srcloc !130
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %22, i32 516
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %24 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hdisplay, align 4
  %26 = add i16 %25, 4095
  %27 = and i16 %26, 4095
  %and24 = zext i16 %27 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %28 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vdisplay, align 2
  %30 = add i16 %29, 4095
  %31 = and i16 %30, 4095
  %and27 = zext i16 %31 to i32
  %shl = shl nuw nsw i32 %and27, 16
  %or28 = or i32 %shl, %and24
  %32 = tail call i32 @llvm.bswap.i32(i32 %or28)
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr30 = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %32) #7, !srcloc !130
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %35 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %htotal, align 2
  %conv31 = zext i16 %36 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %37 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hsync_start, align 2
  %conv32 = zext i16 %38 to i32
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %39 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vtotal, align 4
  %conv34 = zext i16 %40 to i32
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %41 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vsync_start, align 4
  %conv35 = zext i16 %42 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  %43 = xor i32 %conv32, -1
  %sub40 = add nsw i32 %43, %conv31
  %and41 = and i32 %sub40, 4095
  %44 = xor i32 %conv35, -1
  %sub42 = add nsw i32 %44, %conv34
  %and43 = shl i32 %sub42, 16
  %shl44 = and i32 %and43, 268369920
  %or45 = or i32 %shl44, %and41
  %45 = tail call i32 @llvm.bswap.i32(i32 %or45)
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr47 = getelementptr i8, ptr %47, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %45) #7, !srcloc !130
  %48 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %hsync_start, align 2
  %conv49 = zext i16 %49 to i32
  %50 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %hdisplay, align 4
  %conv51 = zext i16 %51 to i32
  %52 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vsync_start, align 4
  %conv54 = zext i16 %53 to i32
  %54 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vdisplay, align 2
  %conv56 = zext i16 %55 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @arm_heavy_mb() #7
  %56 = xor i32 %conv51, -1
  %sub61 = add nsw i32 %56, %conv49
  %and62 = and i32 %sub61, 4095
  %57 = xor i32 %conv56, -1
  %sub63 = add nsw i32 %57, %conv54
  %and64 = shl i32 %sub63, 16
  %shl65 = and i32 %and64, 268369920
  %or66 = or i32 %shl65, %and62
  %58 = tail call i32 @llvm.bswap.i32(i32 %or66)
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr68 = getelementptr i8, ptr %60, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %58) #7, !srcloc !130
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %61 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %hsync_end, align 4
  %conv69 = zext i16 %62 to i32
  %63 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %hsync_start, align 2
  %conv71 = zext i16 %64 to i32
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %65 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vsync_end, align 2
  %conv73 = zext i16 %66 to i32
  %67 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vsync_start, align 4
  %conv75 = zext i16 %68 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %69 = xor i32 %conv71, -1
  %sub80 = add nsw i32 %69, %conv69
  %and81 = and i32 %sub80, 4095
  %70 = xor i32 %conv75, -1
  %sub82 = add nsw i32 %70, %conv73
  %and83 = shl i32 %sub82, 16
  %shl84 = and i32 %and83, 268369920
  %or85 = or i32 %shl84, %and81
  %71 = tail call i32 @llvm.bswap.i32(i32 %or85)
  %72 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base, align 4
  %add.ptr87 = getelementptr i8, ptr %73, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %71) #7, !srcloc !130
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %74 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags, align 4
  %and88 = and i32 %75, 1
  %and91 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  %val.1.v = select i1 %tobool92.not, i32 65011712, i32 65011714
  %val.1 = or i32 %val.1.v, %and88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %76 = tail call i32 @llvm.bswap.i32(i32 %val.1)
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base, align 4
  %add.ptr100 = getelementptr i8, ptr %78, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %76) #7, !srcloc !130
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_hdmi_disable(ptr nocapture noundef readonly %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50) #7
  %base = getelementptr i8, ptr %encoder, i32 76
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  %3 = and i32 %2, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #7, !srcloc !130
  %tmds_clk = getelementptr i8, ptr %encoder, i32 112
  %6 = ptrtoint ptr %tmds_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tmds_clk, align 8
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_hdmi_enable(ptr noundef %encoder) #2 align 64 {
entry:
  %frame.i = alloca %struct.hdmi_avi_infoframe, align 4
  %buffer.i = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7
  %add.ptr.i = getelementptr i8, ptr %encoder, i32 -1040
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.51) #7
  %tmds_clk = getelementptr i8, ptr %encoder, i32 112
  %4 = ptrtoint ptr %tmds_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmds_clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i) #7
  %6 = call ptr @memset(ptr %frame.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buffer.i) #7
  %7 = call ptr @memset(ptr %buffer.i, i32 255, i32 17)
  %call.i19 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frame.i, ptr noundef %add.ptr.i, ptr noundef %adjusted_mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %cmp.i = icmp slt i32 %call.i19, 0
  br i1 %cmp.i, label %clk_prepare_enable.exit.cleanup.sink.split.i_crit_edge, label %if.end.i21

clk_prepare_enable.exit.cleanup.sink.split.i_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i21:                                       ; preds = %clk_prepare_enable.exit
  %call1.i20 = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %frame.i, ptr noundef nonnull %buffer.i, i32 noundef 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %cmp2.i = icmp slt i32 %call1.i20, 0
  br i1 %cmp2.i, label %if.end.i21.cleanup.sink.split.i_crit_edge, label %for.cond.preheader.i

if.end.i21.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

for.cond.preheader.i:                             ; preds = %if.end.i21
  %base.i = getelementptr i8, ptr %encoder, i32 76
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.cond.preheader.i
  %i.01.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  call void @arm_heavy_mb() #7
  %arrayidx.i = getelementptr [17 x i8], ptr %buffer.i, i32 0, i32 %i.01.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.i = add nuw nsw i32 %i.01.i, 128
  %add.ptr.i22 = getelementptr i8, ptr %11, i32 %add.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i22, i8 %9) #7, !srcloc !149
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %do.body.i.sun4i_hdmi_setup_avi_infoframes.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i.sun4i_hdmi_setup_avi_infoframes.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sun4i_hdmi_setup_avi_infoframes.exit

cleanup.sink.split.i:                             ; preds = %if.end.i21.cleanup.sink.split.i_crit_edge, %clk_prepare_enable.exit.cleanup.sink.split.i_crit_edge
  %.str.53.sink.i = phi ptr [ @.str.52, %clk_prepare_enable.exit.cleanup.sink.split.i_crit_edge ], [ @.str.53, %if.end.i21.cleanup.sink.split.i_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.53.sink.i) #7
  br label %sun4i_hdmi_setup_avi_infoframes.exit

sun4i_hdmi_setup_avi_infoframes.exit:             ; preds = %cleanup.sink.split.i, %do.body.i.sun4i_hdmi_setup_avi_infoframes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer.i) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  call void @arm_heavy_mb() #7
  %base = getelementptr i8, ptr %encoder, i32 76
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -234881024) #7, !srcloc !130
  %hdmi_monitor = getelementptr i8, ptr %encoder, i32 184
  %14 = ptrtoint ptr %hdmi_monitor to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hdmi_monitor, align 8, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %spec.select = select i1 %tobool.not, i32 128, i32 192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %17, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %spec.select) #7, !srcloc !130
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_hdmi_atomic_check(ptr nocapture noundef readnone %encoder, ptr nocapture noundef readonly %crtc_state, ptr nocapture noundef readnone %conn_state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_cec_pin_read(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %base = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 532
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !132
  %5 = lshr i32 %4, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  %and = and i32 %5, 256
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_hdmi_cec_pin_low(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %base = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 524288) #7, !srcloc !130
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_hdmi_cec_pin_high(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void @arm_heavy_mb() #7
  %base = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !130
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc_i2c = getelementptr inbounds %struct.sun4i_hdmi, ptr %connector, i32 0, i32 14
  %0 = ptrtoint ptr %ddc_i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc_i2c, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i2c = getelementptr inbounds %struct.sun4i_hdmi, ptr %connector, i32 0, i32 13
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.false ], [ %1, %entry.cond.end_crit_edge ]
  %call1 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %cond) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef nonnull %call1) #7
  %hdmi_monitor = getelementptr inbounds %struct.sun4i_hdmi, ptr %connector, i32 0, i32 30
  %frombool = zext i1 %call3 to i8
  %4 = ptrtoint ptr %hdmi_monitor to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %hdmi_monitor, align 8
  %cond6 = select i1 %call3, ptr @.str.55, ptr @.str.56
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.54, ptr noundef nonnull %cond6) #7
  %call7 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %call1) #7
  %cec_adap = getelementptr inbounds %struct.sun4i_hdmi, ptr %connector, i32 0, i32 31
  %5 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cec_adap, align 4
  tail call void @cec_s_phys_addr_from_edid(ptr noundef %6, ptr noundef nonnull %call1) #7
  %call8 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call1) #7
  tail call void @kfree(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ 0, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr_from_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_connector_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.sun4i_hdmi, ptr %connector, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cec_adap = getelementptr inbounds %struct.sun4i_hdmi, ptr %connector, i32 0, i32 31
  %4 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cec_adap, align 4
  tail call void @cec_s_phys_addr(ptr noundef %5, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !109, !111, !113, !115, !117}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__initcall__kmod_sun4i_drm_hdmi__312_718_sun4i_hdmi_driver_init6, !1, !"__initcall__kmod_sun4i_drm_hdmi__312_718_sun4i_hdmi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 718, i32 1}
!2 = !{ptr @__exitcall_sun4i_hdmi_driver_exit, !1, !"__exitcall_sun4i_hdmi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author313, !4, !"__UNIQUE_ID_author313", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 720, i32 1}
!5 = !{ptr @__UNIQUE_ID_description314, !6, !"__UNIQUE_ID_description314", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 721, i32 1}
!7 = !{ptr @__UNIQUE_ID_file315, !8, !"__UNIQUE_ID_file315", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 722, i32 1}
!9 = !{ptr @__UNIQUE_ID_license316, !8, !"__UNIQUE_ID_license316", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 714, i32 12}
!12 = !{ptr @sun4i_hdmi_driver, !13, !"sun4i_hdmi_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 710, i32 31}
!14 = !{ptr @sun4i_hdmi_ops, !15, !"sun4i_hdmi_ops", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 685, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 508, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sun4i_hdmi_bind._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sun4i_hdmi_bind._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 515, i32 4}
!26 = !{ptr @sun4i_hdmi_bind._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sun4i_hdmi_bind._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 521, i32 4}
!30 = !{ptr @sun4i_hdmi_bind._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sun4i_hdmi_bind._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 526, i32 36}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 528, i32 3}
!36 = !{ptr @sun4i_hdmi_bind._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sun4i_hdmi_bind._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 534, i32 36}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 536, i32 3}
!42 = !{ptr @sun4i_hdmi_bind._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sun4i_hdmi_bind._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 542, i32 37}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 544, i32 3}
!48 = !{ptr @sun4i_hdmi_bind._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sun4i_hdmi_bind._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 549, i32 37}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 551, i32 3}
!54 = !{ptr @sun4i_hdmi_bind._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sun4i_hdmi_bind._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @sun4i_hdmi_bind._key, !57, !"_key", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 556, i32 17}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 559, i32 3}
!61 = !{ptr @sun4i_hdmi_bind._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sun4i_hdmi_bind._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 566, i32 3}
!65 = !{ptr @sun4i_hdmi_bind._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @sun4i_hdmi_bind._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 571, i32 44}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 573, i32 4}
!71 = !{ptr @sun4i_hdmi_bind._entry.36, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @sun4i_hdmi_bind._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 593, i32 3}
!75 = !{ptr @sun4i_hdmi_bind._entry.39, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sun4i_hdmi_bind._entry_ptr.41, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 611, i32 3}
!79 = !{ptr @sun4i_hdmi_bind._entry.42, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @sun4i_hdmi_bind._entry_ptr.44, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 624, i32 9}
!83 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 639, i32 3}
!85 = !{ptr @sun4i_hdmi_bind._entry.46, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @sun4i_hdmi_bind._entry_ptr.48, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @sun4i_hdmi_regmap_config, !88, !"sun4i_hdmi_regmap_config", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 477, i32 35}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 239, i32 37}
!91 = !{ptr @sun4i_hdmi_helper_funcs, !92, !"sun4i_hdmi_helper_funcs", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 200, i32 46}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 89, i32 2}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 104, i32 2}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 56, i32 3}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 62, i32 3}
!101 = !{ptr @sun4i_hdmi_cec_pin_ops, !102, !"sun4i_hdmi_cec_pin_ops", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 307, i32 33}
!103 = !{ptr @sun4i_hdmi_connector_helper_funcs, !104, !"sun4i_hdmi_connector_helper_funcs", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 252, i32 48}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 219, i32 2}
!107 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @sun4i_hdmi_connector_funcs, !110, !"sun4i_hdmi_connector_funcs", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 271, i32 41}
!111 = !{ptr @sun4i_hdmi_of_table, !112, !"sun4i_hdmi_of_table", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 702, i32 34}
!113 = !{ptr @sun4i_variant, !114, !"sun4i_variant", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 318, i32 40}
!115 = !{ptr @sun5i_variant, !116, !"sun5i_variant", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 369, i32 40}
!117 = !{ptr @sun6i_variant, !118, !"sun6i_variant", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c", i32 420, i32 40}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i8 0, i8 2}
!129 = !{i64 2157280909}
!130 = !{i64 3102067}
!131 = !{i64 2157281411}
!132 = !{i64 3102485}
!133 = !{i64 2157282173}
!134 = !{i64 2157283068}
!135 = !{i64 2157287903}
!136 = !{i64 2157288866}
!137 = !{i64 2157226813}
!138 = !{i64 2157227560}
!139 = !{i64 2157227863}
!140 = !{i64 2157228535}
!141 = !{i64 2157230834}
!142 = !{i64 2157235189}
!143 = !{i64 2157239466}
!144 = !{i64 2157243743}
!145 = !{i64 2157246186}
!146 = !{i64 2157224826}
!147 = !{i64 2157225131}
!148 = !{i64 2157224174}
!149 = !{i64 3101870}
!150 = !{i64 2157225726}
!151 = !{i64 2157226307}
!152 = !{i64 2157251422}
!153 = !{i64 2157251834}
!154 = !{i64 2157252304}
!155 = !{i64 2157250844}
