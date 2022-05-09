; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.component_ops = type { ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.sun6i_dsi = type { %struct.drm_connector, %struct.drm_encoder, %struct.mipi_dsi_host, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@__initcall__kmod_sun6i_mipi_dsi__325_1231_sun6i_dsi_platform_driver_init6 = internal global ptr @sun6i_dsi_platform_driver_init, section ".initcall6.init", align 4
@sun6i_dsi_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun6i_dsi_probe, ptr @sun6i_dsi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun6i_dsi_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun6i_dsi_platform_driver_exit = internal global ptr @sun6i_dsi_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author326 = internal constant [71 x i8] c"sun6i_mipi_dsi.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description327 = internal constant [52 x i8] c"sun6i_mipi_dsi.description=Allwinner A31 DSI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file328 = internal constant [57 x i8] c"sun6i_mipi_dsi.file=drivers/gpu/drm/sun4i/sun6i_mipi_dsi\00", section ".modinfo", align 1
@__UNIQUE_ID_license329 = internal constant [27 x i8] c"sun6i_mipi_dsi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sun6i-mipi-dsi\00", [17 x i8] zeroinitializer }, align 32
@sun6i_dsi_of_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sun6i_dsi_host_ops = internal constant { %struct.mipi_dsi_host_ops, [20 x i8] } { %struct.mipi_dsi_host_ops { ptr @sun6i_dsi_attach, ptr @sun6i_dsi_detach, ptr @sun6i_dsi_transfer }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"allwinner,sun6i-a31-mipi-dsi\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@sun6i_dsi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1124, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't map the DSI encoder registers\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun6i_dsi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun6i_dsi_probe._entry_ptr = internal global ptr @sun6i_dsi_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vcc-dsi\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get VCC-DSI supply\0A\00", [35 x i8] zeroinitializer }, align 32
@sun6i_dsi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 1135, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get our reset line\0A\00", [35 x i8] zeroinitializer }, align 32
@sun6i_dsi_probe._entry_ptr.12 = internal global ptr @sun6i_dsi_probe._entry.10, section ".printk_index", align 4
@sun6i_dsi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sun6i_dsi_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.35, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1788, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"sun6i_mipi_dsi:1139:(&sun6i_dsi_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@sun6i_dsi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1141, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Couldn't init regmap\0A\00", [42 x i8] zeroinitializer }, align 32
@sun6i_dsi_probe._entry_ptr.16 = internal global ptr @sun6i_dsi_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't get the DSI bus clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@sun6i_dsi_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 1158, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't get the DSI mod clock\0A\00", [32 x i8] zeroinitializer }, align 32
@sun6i_dsi_probe._entry_ptr.21 = internal global ptr @sun6i_dsi_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dphy\00", [27 x i8] zeroinitializer }, align 32
@sun6i_dsi_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 1172, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get the MIPI D-PHY\0A\00", [35 x i8] zeroinitializer }, align 32
@sun6i_dsi_probe._entry_ptr.25 = internal global ptr @sun6i_dsi_probe._entry.23, section ".printk_index", align 4
@sun6i_dsi_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 1179, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't register MIPI-DSI host\0A\00", [63 x i8] zeroinitializer }, align 32
@sun6i_dsi_probe._entry_ptr.28 = internal global ptr @sun6i_dsi_probe._entry.26, section ".printk_index", align 4
@sun6i_dsi_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @sun6i_dsi_bind, ptr @sun6i_dsi_unbind }, [24 x i8] zeroinitializer }, align 32
@sun6i_dsi_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.5, i32 1185, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't register our component\0A\00", [63 x i8] zeroinitializer }, align 32
@sun6i_dsi_probe._entry_ptr.31 = internal global ptr @sun6i_dsi_probe._entry.29, section ".printk_index", align 4
@sun6i_dsi_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 978, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Attached device %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sun6i_dsi_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sun6i_dsi_attach._entry_ptr = internal global ptr @sun6i_dsi_attach._entry, section ".printk_index", align 4
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mipi-dsi\00", [23 x i8] zeroinitializer }, align 32
@sun6i_dsi_enc_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_dsi_encoder_disable, ptr @sun6i_dsi_encoder_enable, ptr null }, [44 x i8] zeroinitializer }, align 32
@sun6i_dsi_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.5, i32 1062, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't initialise the DSI encoder\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sun6i_dsi_bind\00", [17 x i8] zeroinitializer }, align 32
@sun6i_dsi_bind._entry_ptr = internal global ptr @sun6i_dsi_bind._entry, section ".printk_index", align 4
@sun6i_dsi_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @sun6i_dsi_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sun6i_dsi_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @sun6i_dsi_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sun6i_dsi_bind._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.5, i32 1074, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Couldn't initialise the DSI connector\0A\00", [57 x i8] zeroinitializer }, align 32
@sun6i_dsi_bind._entry_ptr.40 = internal global ptr @sun6i_dsi_bind._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Disabling DSI output\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enabling DSI output\0A\00", [43 x i8] zeroinitializer }, align 32
@sun6i_dsi_encoder_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 730, ptr @.str.45, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to enable VCC-DSI supply: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sun6i_dsi_encoder_enable\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sun6i_dsi_encoder_enable._entry_ptr = internal global ptr @sun6i_dsi_encoder_enable._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.sun6i_dsi_encoder_enable = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.sun6i_dsi_encoder_enable.46 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 3, i32 2, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.sun6i_dsi_encoder_enable.47 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 5, i64 6, i64 21, i64 35, i64 57]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.50 = private unnamed_addr constant [26 x i8] c"sun6i_dsi_platform_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1223, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1227, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"sun6i_dsi_of_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1216, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"sun6i_dsi_host_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1036, i32 39 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1119, i32 9 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1120, i32 18 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1124, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1128, i32 43 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1131, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1135, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [24 x i8] c"sun6i_dsi_regmap_config\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1042, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1139, i32 14 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1141, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1148, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1156, i32 36 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1158, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1170, i32 32 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1172, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1179, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [14 x i8] c"sun6i_dsi_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1097, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1185, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 978, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1047, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant [27 x i8] c"sun6i_dsi_enc_helper_funcs\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 845, i32 46 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1062, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [33 x i8] c"sun6i_dsi_connector_helper_funcs\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 823, i32 48 }
@___asan_gen_.179 = private unnamed_addr constant [26 x i8] c"sun6i_dsi_connector_funcs\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 836, i32 41 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1073, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 801, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 726, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [42 x i8] c"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 730, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [38 x i8] c"switch.table.sun6i_dsi_encoder_enable\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [41 x i8] c"switch.table.sun6i_dsi_encoder_enable.46\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [41 x i8] c"switch.table.sun6i_dsi_encoder_enable.47\00", align 1
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_file328, ptr @__UNIQUE_ID_license329, ptr @__exitcall_sun6i_dsi_platform_driver_exit, ptr @__initcall__kmod_sun6i_mipi_dsi__325_1231_sun6i_dsi_platform_driver_init6, ptr @sun6i_dsi_attach._entry, ptr @sun6i_dsi_attach._entry_ptr, ptr @sun6i_dsi_bind._entry, ptr @sun6i_dsi_bind._entry.38, ptr @sun6i_dsi_bind._entry_ptr, ptr @sun6i_dsi_bind._entry_ptr.40, ptr @sun6i_dsi_encoder_enable._entry, ptr @sun6i_dsi_encoder_enable._entry_ptr, ptr @sun6i_dsi_platform_driver_exit, ptr @sun6i_dsi_probe._entry, ptr @sun6i_dsi_probe._entry.10, ptr @sun6i_dsi_probe._entry.14, ptr @sun6i_dsi_probe._entry.19, ptr @sun6i_dsi_probe._entry.23, ptr @sun6i_dsi_probe._entry.26, ptr @sun6i_dsi_probe._entry.29, ptr @sun6i_dsi_probe._entry_ptr, ptr @sun6i_dsi_probe._entry_ptr.12, ptr @sun6i_dsi_probe._entry_ptr.16, ptr @sun6i_dsi_probe._entry_ptr.21, ptr @sun6i_dsi_probe._entry_ptr.25, ptr @sun6i_dsi_probe._entry_ptr.28, ptr @sun6i_dsi_probe._entry_ptr.31, ptr @sun6i_dsi_platform_driver, ptr @.str, ptr @sun6i_dsi_of_table, ptr @sun6i_dsi_host_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @sun6i_dsi_probe._key, ptr @sun6i_dsi_regmap_config, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @sun6i_dsi_ops, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @sun6i_dsi_enc_helper_funcs, ptr @.str.36, ptr @.str.37, ptr @sun6i_dsi_connector_helper_funcs, ptr @sun6i_dsi_connector_funcs, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @switch.table.sun6i_dsi_encoder_enable, ptr @switch.table.sun6i_dsi_encoder_enable.46, ptr @switch.table.sun6i_dsi_encoder_enable.47], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_of_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_host_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_enc_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_bind._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dsi_encoder_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun6i_dsi_encoder_enable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun6i_dsi_encoder_enable.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun6i_dsi_encoder_enable.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dsi_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun6i_dsi_platform_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_dsi_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun6i_dsi_platform_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dsi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1168, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %dev2 = getelementptr inbounds %struct.sun6i_dsi, ptr %call.i, i32 0, i32 9
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev2, align 8
  %host = getelementptr inbounds %struct.sun6i_dsi, ptr %call.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.sun6i_dsi, ptr %call.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sun6i_dsi_host_ops, ptr %ops, align 4
  %3 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %host, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call5 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool6.not, ptr null, ptr @.str.2
  %call9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #13
  %6 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  %regulator = getelementptr inbounds %struct.sun6i_dsi, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14, ptr %regulator, align 4
  %cmp.i168 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call14 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %8, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call.i169 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %reset = getelementptr inbounds %struct.sun6i_dsi, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i169, ptr %reset, align 8
  %cmp.i170 = icmp ugt ptr %call.i169, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #13
  %10 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset, align 8
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  %call32 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call9, ptr noundef nonnull @sun6i_dsi_regmap_config, ptr noundef nonnull @sun6i_dsi_probe._key, ptr noundef nonnull @.str.13) #10
  %regs = getelementptr inbounds %struct.sun6i_dsi, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call32, ptr %regs, align 8
  %cmp.i171 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #13
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end31
  %call42 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef %spec.select) #10
  %bus_clk = getelementptr inbounds %struct.sun6i_dsi, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call42, ptr %bus_clk, align 8
  %cmp.i172 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then45, label %if.end49

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call42 to i32
  %call48 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %18, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  %call52 = tail call i32 @regmap_mmio_attach_clk(ptr noundef %20, ptr noundef %call42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end55:                                         ; preds = %if.end49
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call57 = tail call i32 @of_device_is_compatible(ptr noundef %22, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end55.if.end70_crit_edge, label %if.then59

if.end55.if.end70_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then59:                                        ; preds = %if.end55
  %call60 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  %mod_clk = getelementptr inbounds %struct.sun6i_dsi, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %mod_clk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call60, ptr %mod_clk, align 4
  %cmp.i173 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %do.end66, label %if.then59.if.end70_crit_edge

if.then59.if.end70_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

do.end66:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #13
  %24 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mod_clk, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %err_attach_clk

if.end70:                                         ; preds = %if.then59.if.end70_crit_edge, %if.end55.if.end70_crit_edge
  %mod_clk71 = getelementptr inbounds %struct.sun6i_dsi, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %mod_clk71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mod_clk71, align 4
  %call72 = tail call i32 @clk_set_rate_exclusive(ptr noundef %28, i32 noundef 297000000) #10
  %call73 = tail call ptr @devm_phy_get(ptr noundef %dev1, ptr noundef nonnull @.str.22) #10
  %dphy = getelementptr inbounds %struct.sun6i_dsi, ptr %call.i, i32 0, i32 8
  %29 = ptrtoint ptr %dphy to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call73, ptr %dphy, align 4
  %cmp.i174 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %do.end79, label %if.end82

do.end79:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #13
  %30 = ptrtoint ptr %dphy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dphy, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %err_unprotect_clk

if.end82:                                         ; preds = %if.end70
  %call84 = tail call i32 @mipi_dsi_host_register(ptr noundef %host) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end90, label %do.end89

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #13
  br label %err_unprotect_clk

if.end90:                                         ; preds = %if.end82
  %call92 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @sun6i_dsi_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end90.cleanup_crit_edge, label %do.end97

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end97:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #13
  tail call void @mipi_dsi_host_unregister(ptr noundef %host) #10
  br label %err_unprotect_clk

err_unprotect_clk:                                ; preds = %do.end97, %do.end89, %do.end79
  %ret.0 = phi i32 [ %32, %do.end79 ], [ %call84, %do.end89 ], [ %call92, %do.end97 ]
  %33 = ptrtoint ptr %mod_clk71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mod_clk71, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %34) #10
  br label %err_attach_clk

err_attach_clk:                                   ; preds = %err_unprotect_clk, %do.end66
  %ret.1 = phi i32 [ %26, %do.end66 ], [ %ret.0, %err_unprotect_clk ]
  %35 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus_clk, align 8
  %cmp.i175 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %err_attach_clk.cleanup_crit_edge, label %if.then103

err_attach_clk.cleanup_crit_edge:                 ; preds = %err_attach_clk
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then103:                                       ; preds = %err_attach_clk
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 8
  tail call void @regmap_mmio_detach_clk(ptr noundef %38) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %err_attach_clk.cleanup_crit_edge, %if.end90.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.then45, %do.end38, %do.end28, %if.then17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ %call20, %if.then17 ], [ %12, %do.end28 ], [ %16, %do.end38 ], [ %call48, %if.then45 ], [ -12, %entry.cleanup_crit_edge ], [ %call52, %if.end49.cleanup_crit_edge ], [ 0, %if.end90.cleanup_crit_edge ], [ %ret.1, %if.then103 ], [ %ret.1, %err_attach_clk.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dsi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @component_del(ptr noundef %dev1, ptr noundef nonnull @sun6i_dsi_ops) #10
  %host = getelementptr inbounds %struct.sun6i_dsi, ptr %1, i32 0, i32 2
  tail call void @mipi_dsi_host_unregister(ptr noundef %host) #10
  %mod_clk = getelementptr inbounds %struct.sun6i_dsi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %3) #10
  %bus_clk = getelementptr inbounds %struct.sun6i_dsi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_clk, align 8
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regs = getelementptr inbounds %struct.sun6i_dsi, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  tail call void @regmap_mmio_detach_clk(ptr noundef %7) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_mmio_attach_clk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate_exclusive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_mmio_detach_clk(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dsi_attach(ptr nocapture noundef %host, ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 1, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call1 = tail call ptr @of_drm_find_panel(ptr noundef %1) #10
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %drm = getelementptr i8, ptr %host, i32 48
  %3 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drm, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %registered = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %registered, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %panel8 = getelementptr i8, ptr %host, i32 52
  %7 = ptrtoint ptr %panel8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %panel8, align 4
  %device9 = getelementptr i8, ptr %host, i32 44
  %8 = ptrtoint ptr %device9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %device, ptr %device9, align 4
  tail call void @drm_kms_helper_hotplug_event(ptr noundef nonnull %4) #10
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  %name = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.32, ptr noundef %name) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end7 ], [ -517, %lor.lhs.false.cleanup_crit_edge ], [ -517, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dsi_detach(ptr nocapture noundef %host, ptr nocapture noundef readnone %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr i8, ptr %host, i32 52
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %panel, align 4
  %device1 = getelementptr i8, ptr %host, i32 44
  %1 = ptrtoint ptr %device1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %device1, align 4
  %drm = getelementptr i8, ptr %host, i32 48
  %2 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm, align 8
  tail call void @drm_kms_helper_hotplug_event(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dsi_transfer(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %host, i32 -1112
  %call1 = tail call fastcc i32 @sun6i_dsi_inst_wait_for_completion(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regs.i = getelementptr i8, ptr %host, i32 24
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regs = getelementptr i8, ptr %host, i32 24
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 512, i32 noundef 100663808) #10
  %type = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.end.sw.epilog_crit_edge [
    i8 5, label %if.end.if.else.i.i_crit_edge
    i8 21, label %if.end.if.else.i.i_crit_edge89
    i8 35, label %if.end.if.else.i.i_crit_edge90
    i8 57, label %sun6i_dsi_dcs_build_pkt_hdr.exit.i
    i8 6, label %sw.bb6
  ]

if.end.if.else.i.i_crit_edge90:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.end.if.else.i.i_crit_edge89:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.end.if.else.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else.i.i:                                      ; preds = %if.end.if.else.i.i_crit_edge, %if.end.if.else.i.i_crit_edge89, %if.end.if.else.i.i_crit_edge90
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %conv.i.i = zext i8 %5 to i32
  %tx_buf.i.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 4
  %9 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_buf.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv8.i.i = zext i8 %12 to i32
  %shl9.i.i = shl nuw nsw i32 %conv8.i.i, 8
  %or10.i.i = or i32 %shl9.i.i, %conv.i.i
  %tx_len11.i.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %tx_len11.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_len11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp12.i.i = icmp ugt i32 %14, 1
  br i1 %cmp12.i.i, label %if.then14.i.i, label %if.else.i.i.sun6i_dsi_dcs_write_short.exit_crit_edge

if.else.i.i.sun6i_dsi_dcs_write_short.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sun6i_dsi_dcs_write_short.exit

if.then14.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx16.i.i = getelementptr i8, ptr %10, i32 1
  %15 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx16.i.i, align 1
  %conv17.i.i = zext i8 %16 to i32
  %shl18.i.i = shl nuw nsw i32 %conv17.i.i, 16
  %or19.i.i = or i32 %shl18.i.i, %or10.i.i
  br label %sun6i_dsi_dcs_write_short.exit

sun6i_dsi_dcs_write_short.exit:                   ; preds = %if.then14.i.i, %if.else.i.i.sun6i_dsi_dcs_write_short.exit_crit_edge
  %pkt.0.i.i = phi i32 [ %or19.i.i, %if.then14.i.i ], [ %or10.i.i, %if.else.i.i.sun6i_dsi_dcs_write_short.exit_crit_edge ]
  %call.i.i23 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %pkt.0.i.i) #10
  %shl21.i.i = shl i32 %call.i.i23, 24
  %or22.i.i = or i32 %shl21.i.i, %pkt.0.i.i
  %call1.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 768, i32 noundef %or22.i.i) #10
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %call.i9.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 512, i32 noundef 255, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  %call11.i.i = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 72, i32 noundef 983044) #10
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 8
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 8
  %call.i.i2.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %25 = ptrtoint ptr %tx_len11.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_len11.i.i, align 4
  br label %sw.epilog

sun6i_dsi_dcs_build_pkt_hdr.exit.i:               ; preds = %if.end
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 8
  %tx_len.i.i27 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 3
  %29 = ptrtoint ptr %tx_len.i.i27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_len.i.i27, align 4
  %and.i.i28 = shl i32 %30, 8
  %or7.i.i29 = or i32 %and.i.i28, 57
  %call.i.i45 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %or7.i.i29) #10
  %shl21.i.i46 = shl i32 %call.i.i45, 24
  %or22.i.i47 = or i32 %shl21.i.i46, %or7.i.i29
  %call1.i48 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 768, i32 noundef %or22.i.i47) #10
  %31 = ptrtoint ptr %tx_len.i.i27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_len.i.i27, align 4
  %add2.i = add i32 %32, 5
  %and.i = and i32 %add2.i, -4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i, i32 noundef 3520) #14
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %sun6i_dsi_dcs_build_pkt_hdr.exit.i.sw.epilog_crit_edge, label %if.end.i

sun6i_dsi_dcs_build_pkt_hdr.exit.i.sw.epilog_crit_edge: ; preds = %sun6i_dsi_dcs_build_pkt_hdr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %sun6i_dsi_dcs_build_pkt_hdr.exit.i
  %tx_buf.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 4
  %33 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_buf.i, align 4
  %35 = ptrtoint ptr %tx_len.i.i27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_len.i.i27, align 4
  %37 = call ptr @memcpy(ptr %call9.i.i.i, ptr %34, i32 %36)
  %call.i48.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef nonnull %call9.i.i.i, i32 noundef %36) #10
  %38 = ptrtoint ptr %tx_len.i.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_len.i.i27, align 4
  %add.ptr.i50 = getelementptr i8, ptr %call9.i.i.i, i32 %39
  %40 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %call.i48.i, ptr %add.ptr.i50, align 1
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 8
  %sub.i = add i32 %36, 5
  %div.i = sdiv i32 %sub.i, 4
  %call13.i = tail call i32 @regmap_bulk_write(ptr noundef %42, i32 noundef 772, ptr noundef nonnull %call9.i.i.i, i32 noundef %div.i) #10
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 8
  %call17.i = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 512, i32 noundef %sub.i) #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #10
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 8
  %call11.i.i51 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 72, i32 noundef 983044) #10
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 8
  %call.i.i.i.i52 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 8
  %call.i.i2.i.i53 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %call19.i = tail call fastcc i32 @sun6i_dsi_inst_wait_for_completion(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp.i = icmp slt i32 %call19.i, 0
  br i1 %cmp.i, label %if.then20.i, label %if.end21.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %sw.epilog

if.end21.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %tx_len.i.i27 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_len.i.i27, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %rx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %55 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp7 = icmp eq i32 %56, 1
  br i1 %cmp7, label %if.else.i.i68, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else.i.i68:                                    ; preds = %sw.bb6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %57 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %val.i, align 4, !annotation !116
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 8
  %tx_buf.i.i62 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 4
  %60 = ptrtoint ptr %tx_buf.i.i62 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_buf.i.i62, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %conv8.i.i63 = zext i8 %63 to i32
  %shl9.i.i64 = shl nuw nsw i32 %conv8.i.i63, 8
  %or10.i.i65 = or i32 %shl9.i.i64, 6
  %tx_len11.i.i66 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 3
  %64 = ptrtoint ptr %tx_len11.i.i66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_len11.i.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp12.i.i67 = icmp ugt i32 %65, 1
  br i1 %cmp12.i.i67, label %if.then14.i.i73, label %if.else.i.i68.sun6i_dsi_dcs_build_pkt_hdr.exit.i83_crit_edge

if.else.i.i68.sun6i_dsi_dcs_build_pkt_hdr.exit.i83_crit_edge: ; preds = %if.else.i.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %sun6i_dsi_dcs_build_pkt_hdr.exit.i83

if.then14.i.i73:                                  ; preds = %if.else.i.i68
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx16.i.i69 = getelementptr i8, ptr %61, i32 1
  %66 = ptrtoint ptr %arrayidx16.i.i69 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx16.i.i69, align 1
  %conv17.i.i70 = zext i8 %67 to i32
  %shl18.i.i71 = shl nuw nsw i32 %conv17.i.i70, 16
  %or19.i.i72 = or i32 %shl18.i.i71, %or10.i.i65
  br label %sun6i_dsi_dcs_build_pkt_hdr.exit.i83

sun6i_dsi_dcs_build_pkt_hdr.exit.i83:             ; preds = %if.then14.i.i73, %if.else.i.i68.sun6i_dsi_dcs_build_pkt_hdr.exit.i83_crit_edge
  %pkt.0.i.i74 = phi i32 [ %or19.i.i72, %if.then14.i.i73 ], [ %or10.i.i65, %if.else.i.i68.sun6i_dsi_dcs_build_pkt_hdr.exit.i83_crit_edge ]
  %call.i.i75 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %pkt.0.i.i74) #10
  %shl21.i.i76 = shl i32 %call.i.i75, 24
  %or22.i.i77 = or i32 %shl21.i.i76, %pkt.0.i.i74
  %call1.i78 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 768, i32 noundef %or22.i.i77) #10
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 8
  %call3.i = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 512, i32 noundef 3) #10
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 8
  %call11.i.i79 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 72, i32 noundef 268894452) #10
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 8
  %call.i.i.i.i80 = tail call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 8
  %call.i.i2.i.i81 = tail call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %call5.i = tail call fastcc i32 @sun6i_dsi_inst_wait_for_completion(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i82 = icmp slt i32 %call5.i, 0
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 8
  br i1 %cmp.i82, label %if.then.i, label %if.end.i87

if.then.i:                                        ; preds = %sun6i_dsi_dcs_build_pkt_hdr.exit.i83
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i84 = tail call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %sun6i_dsi_dcs_read.exit

if.end.i87:                                       ; preds = %sun6i_dsi_dcs_build_pkt_hdr.exit.i83
  %call7.i = call i32 @regmap_read(ptr noundef %77, i32 noundef 512, ptr noundef nonnull %val.i) #10
  %78 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i, align 4
  %and.i85 = and i32 %79, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.not.i86 = icmp eq i32 %and.i85, 0
  br i1 %tobool.not.i86, label %if.end9.i, label %if.end.i87.sun6i_dsi_dcs_read.exit_crit_edge

if.end.i87.sun6i_dsi_dcs_read.exit_crit_edge:     ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %sun6i_dsi_dcs_read.exit

if.end9.i:                                        ; preds = %if.end.i87
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs, align 8
  %call11.i = call i32 @regmap_read(ptr noundef %81, i32 noundef 576, ptr noundef nonnull %val.i) #10
  %82 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %val.i, align 4
  %conv13.i = and i32 %83, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv13.i)
  %cmp14.i = icmp eq i32 %conv13.i, 2
  br i1 %cmp14.i, label %if.end9.i.sun6i_dsi_dcs_read.exit_crit_edge, label %if.end17.i

if.end9.i.sun6i_dsi_dcs_read.exit_crit_edge:      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sun6i_dsi_dcs_read.exit

if.end17.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i = lshr i32 %83, 8
  %conv18.i = trunc i32 %shr.i to i8
  %rx_buf.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %84 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rx_buf.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv18.i, ptr %85, align 1
  br label %sun6i_dsi_dcs_read.exit

sun6i_dsi_dcs_read.exit:                          ; preds = %if.end17.i, %if.end9.i.sun6i_dsi_dcs_read.exit_crit_edge, %if.end.i87.sun6i_dsi_dcs_read.exit_crit_edge, %if.then.i
  %retval.0.i88 = phi i32 [ %call5.i, %if.then.i ], [ 1, %if.end17.i ], [ -5, %if.end.i87.sun6i_dsi_dcs_read.exit_crit_edge ], [ -5, %if.end9.i.sun6i_dsi_dcs_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sun6i_dsi_dcs_read.exit, %sw.bb6.sw.epilog_crit_edge, %if.end21.i, %if.then20.i, %sun6i_dsi_dcs_build_pkt_hdr.exit.i.sw.epilog_crit_edge, %sun6i_dsi_dcs_write_short.exit, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i88, %sun6i_dsi_dcs_read.exit ], [ %26, %sun6i_dsi_dcs_write_short.exit ], [ -22, %sw.bb6.sw.epilog_crit_edge ], [ -22, %if.end.sw.epilog_crit_edge ], [ %call19.i, %if.then20.i ], [ %54, %if.end21.i ], [ -12, %sun6i_dsi_dcs_build_pkt_hdr.exit.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun6i_dsi_inst_wait_for_completion(ptr nocapture noundef readonly %dsi) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !116
  %call = tail call i64 @ktime_get() #10
  %add.i = add i64 %call, 5000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 311) #10
  %regs = getelementptr inbounds %struct.sun6i_dsi, ptr %dsi, i32 0, i32 5
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 8
  %call849 = call i32 @regmap_read(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call849)
  %tobool.not50 = icmp eq i32 %call849, 0
  br i1 %tobool.not50, label %entry.lor.lhs.false_crit_edge, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #10
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %call8 = call i32 @regmap_read(ptr noundef %6, i32 noundef 16, ptr noundef nonnull %val) #10
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then21.lor.lhs.false_crit_edge, label %if.then21.lor.end_crit_edge

if.then21.lor.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

if.then21.lor.lhs.false_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %call18 = call i32 @regmap_read(ptr noundef %8, i32 noundef 16, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool23.not = icmp eq i32 %call18, 0
  br i1 %tobool23.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and24 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %phi.sel = select i1 %tobool25.not, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then21.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool23.not40 = phi i32 [ %call18, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call849, %entry.lor.end_crit_edge ], [ %call8, %if.then21.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %tobool23.not40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %entry
  %j.038 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body3_crit_edge ]
  %val.037 = phi i8 [ 0, %entry ], [ %val.1, %for.inc.for.body3_crit_edge ]
  %init.0.off036 = phi i1 [ false, %entry ], [ %init.1.off0, %for.inc.for.body3_crit_edge ]
  %shl = shl nuw nsw i32 1, %j.038
  %and = and i32 %shl, 15805623
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body3.for.inc_crit_edge, label %if.end

for.body3.for.inc_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body3
  br i1 %init.0.off036, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and7 = and i32 %shl, %data
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp ne i32 %and7, 0
  %conv = zext i1 %tobool8.not to i8
  br label %for.inc

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %0 = lshr i32 %data, %j.038
  %1 = trunc i32 %0 to i8
  %2 = and i8 %1, 1
  %conv14 = xor i8 %2, %val.037
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then5, %for.body3.for.inc_crit_edge
  %init.1.off0 = phi i1 [ true, %if.else ], [ true, %if.then5 ], [ %init.0.off036, %for.body3.for.inc_crit_edge ]
  %val.1 = phi i8 [ %conv14, %if.else ], [ %conv, %if.then5 ], [ %val.037, %for.body3.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %j.038, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.inc.for.body3.1_crit_edge, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3

for.inc.for.body3.1_crit_edge:                    ; preds = %for.inc
  br label %for.body3.1

for.body3.1:                                      ; preds = %for.inc.1.for.body3.1_crit_edge, %for.inc.for.body3.1_crit_edge
  %j.038.1 = phi i32 [ %inc.1, %for.inc.1.for.body3.1_crit_edge ], [ 0, %for.inc.for.body3.1_crit_edge ]
  %val.037.1 = phi i8 [ %val.1.1, %for.inc.1.for.body3.1_crit_edge ], [ 0, %for.inc.for.body3.1_crit_edge ]
  %init.0.off036.1 = phi i1 [ %init.1.off0.1, %for.inc.1.for.body3.1_crit_edge ], [ false, %for.inc.for.body3.1_crit_edge ]
  %shl.1 = shl nuw nsw i32 1, %j.038.1
  %and.1 = and i32 %shl.1, 15881563
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.body3.1.for.inc.1_crit_edge, label %if.end.1

for.body3.1.for.inc.1_crit_edge:                  ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1:                                         ; preds = %for.body3.1
  br i1 %init.0.off036.1, label %if.else.1, label %if.then5.1

if.then5.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  %and7.1 = and i32 %shl.1, %data
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.1)
  %tobool8.not.1 = icmp ne i32 %and7.1, 0
  %conv.1 = zext i1 %tobool8.not.1 to i8
  br label %for.inc.1

if.else.1:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  %3 = lshr i32 %data, %j.038.1
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  %conv14.1 = xor i8 %5, %val.037.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then5.1, %for.body3.1.for.inc.1_crit_edge
  %init.1.off0.1 = phi i1 [ true, %if.else.1 ], [ true, %if.then5.1 ], [ %init.0.off036.1, %for.body3.1.for.inc.1_crit_edge ]
  %val.1.1 = phi i8 [ %conv14.1, %if.else.1 ], [ %conv.1, %if.then5.1 ], [ %val.037.1, %for.body3.1.for.inc.1_crit_edge ]
  %inc.1 = add nuw nsw i32 %j.038.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 24
  br i1 %exitcond.1.not, label %for.inc.1.for.body3.2_crit_edge, label %for.inc.1.for.body3.1_crit_edge

for.inc.1.for.body3.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3.1

for.inc.1.for.body3.2_crit_edge:                  ; preds = %for.inc.1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.inc.2.for.body3.2_crit_edge, %for.inc.1.for.body3.2_crit_edge
  %j.038.2 = phi i32 [ %inc.2, %for.inc.2.for.body3.2_crit_edge ], [ 0, %for.inc.1.for.body3.2_crit_edge ]
  %val.037.2 = phi i8 [ %val.1.2, %for.inc.2.for.body3.2_crit_edge ], [ 0, %for.inc.1.for.body3.2_crit_edge ]
  %init.0.off036.2 = phi i1 [ %init.1.off0.2, %for.inc.2.for.body3.2_crit_edge ], [ false, %for.inc.1.for.body3.2_crit_edge ]
  %shl.2 = shl nuw nsw i32 1, %j.038.2
  %and.2 = and i32 %shl.2, 7641709
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.body3.2.for.inc.2_crit_edge, label %if.end.2

for.body3.2.for.inc.2_crit_edge:                  ; preds = %for.body3.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end.2:                                         ; preds = %for.body3.2
  br i1 %init.0.off036.2, label %if.else.2, label %if.then5.2

if.then5.2:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  %and7.2 = and i32 %shl.2, %data
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.2)
  %tobool8.not.2 = icmp ne i32 %and7.2, 0
  %conv.2 = zext i1 %tobool8.not.2 to i8
  br label %for.inc.2

if.else.2:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  %6 = lshr i32 %data, %j.038.2
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %conv14.2 = xor i8 %8, %val.037.2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %if.then5.2, %for.body3.2.for.inc.2_crit_edge
  %init.1.off0.2 = phi i1 [ true, %if.else.2 ], [ true, %if.then5.2 ], [ %init.0.off036.2, %for.body3.2.for.inc.2_crit_edge ]
  %val.1.2 = phi i8 [ %conv14.2, %if.else.2 ], [ %conv.2, %if.then5.2 ], [ %val.037.2, %for.body3.2.for.inc.2_crit_edge ]
  %inc.2 = add nuw nsw i32 %j.038.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 24
  br i1 %exitcond.2.not, label %for.inc.2.for.body3.3_crit_edge, label %for.inc.2.for.body3.2_crit_edge

for.inc.2.for.body3.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3.2

for.inc.2.for.body3.3_crit_edge:                  ; preds = %for.inc.2
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.inc.3.for.body3.3_crit_edge, %for.inc.2.for.body3.3_crit_edge
  %j.038.3 = phi i32 [ %inc.3, %for.inc.3.for.body3.3_crit_edge ], [ 0, %for.inc.2.for.body3.3_crit_edge ]
  %val.037.3 = phi i8 [ %val.1.3, %for.inc.3.for.body3.3_crit_edge ], [ 0, %for.inc.2.for.body3.3_crit_edge ]
  %init.0.off036.3 = phi i1 [ %init.1.off0.3, %for.inc.3.for.body3.3_crit_edge ], [ false, %for.inc.2.for.body3.3_crit_edge ]
  %shl.3 = shl nuw nsw i32 1, %j.038.3
  %and.3 = and i32 %shl.3, 12116878
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.body3.3.for.inc.3_crit_edge, label %if.end.3

for.body3.3.for.inc.3_crit_edge:                  ; preds = %for.body3.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end.3:                                         ; preds = %for.body3.3
  br i1 %init.0.off036.3, label %if.else.3, label %if.then5.3

if.then5.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  %and7.3 = and i32 %shl.3, %data
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.3)
  %tobool8.not.3 = icmp ne i32 %and7.3, 0
  %conv.3 = zext i1 %tobool8.not.3 to i8
  br label %for.inc.3

if.else.3:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  %9 = lshr i32 %data, %j.038.3
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %conv14.3 = xor i8 %11, %val.037.3
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.3, %if.then5.3, %for.body3.3.for.inc.3_crit_edge
  %init.1.off0.3 = phi i1 [ true, %if.else.3 ], [ true, %if.then5.3 ], [ %init.0.off036.3, %for.body3.3.for.inc.3_crit_edge ]
  %val.1.3 = phi i8 [ %conv14.3, %if.else.3 ], [ %conv.3, %if.then5.3 ], [ %val.037.3, %for.body3.3.for.inc.3_crit_edge ]
  %inc.3 = add nuw nsw i32 %j.038.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 24
  br i1 %exitcond.3.not, label %for.inc.3.for.body3.4_crit_edge, label %for.inc.3.for.body3.3_crit_edge

for.inc.3.for.body3.3_crit_edge:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3.3

for.inc.3.for.body3.4_crit_edge:                  ; preds = %for.inc.3
  br label %for.body3.4

for.body3.4:                                      ; preds = %for.inc.4.for.body3.4_crit_edge, %for.inc.3.for.body3.4_crit_edge
  %j.038.4 = phi i32 [ %inc.4, %for.inc.4.for.body3.4_crit_edge ], [ 0, %for.inc.3.for.body3.4_crit_edge ]
  %val.037.4 = phi i8 [ %val.1.4, %for.inc.4.for.body3.4_crit_edge ], [ 0, %for.inc.3.for.body3.4_crit_edge ]
  %init.0.off036.4 = phi i1 [ %init.1.off0.4, %for.inc.4.for.body3.4_crit_edge ], [ false, %for.inc.3.for.body3.4_crit_edge ]
  %shl.4 = shl nuw nsw i32 1, %j.038.4
  %and.4 = and i32 %shl.4, 14615536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.body3.4.for.inc.4_crit_edge, label %if.end.4

for.body3.4.for.inc.4_crit_edge:                  ; preds = %for.body3.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end.4:                                         ; preds = %for.body3.4
  br i1 %init.0.off036.4, label %if.else.4, label %if.then5.4

if.then5.4:                                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  %and7.4 = and i32 %shl.4, %data
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.4)
  %tobool8.not.4 = icmp ne i32 %and7.4, 0
  %conv.4 = zext i1 %tobool8.not.4 to i8
  br label %for.inc.4

if.else.4:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  %12 = lshr i32 %data, %j.038.4
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %conv14.4 = xor i8 %14, %val.037.4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.else.4, %if.then5.4, %for.body3.4.for.inc.4_crit_edge
  %init.1.off0.4 = phi i1 [ true, %if.else.4 ], [ true, %if.then5.4 ], [ %init.0.off036.4, %for.body3.4.for.inc.4_crit_edge ]
  %val.1.4 = phi i8 [ %conv14.4, %if.else.4 ], [ %conv.4, %if.then5.4 ], [ %val.037.4, %for.body3.4.for.inc.4_crit_edge ]
  %inc.4 = add nuw nsw i32 %j.038.4, 1
  %exitcond.4.not = icmp eq i32 %inc.4, 24
  br i1 %exitcond.4.not, label %for.inc.4.for.body3.5_crit_edge, label %for.inc.4.for.body3.4_crit_edge

for.inc.4.for.body3.4_crit_edge:                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3.4

for.inc.4.for.body3.5_crit_edge:                  ; preds = %for.inc.4
  br label %for.body3.5

for.body3.5:                                      ; preds = %for.inc.5.for.body3.5_crit_edge, %for.inc.4.for.body3.5_crit_edge
  %j.038.5 = phi i32 [ %inc.5, %for.inc.5.for.body3.5_crit_edge ], [ 0, %for.inc.4.for.body3.5_crit_edge ]
  %val.037.5 = phi i8 [ %val.1.5, %for.inc.5.for.body3.5_crit_edge ], [ 0, %for.inc.4.for.body3.5_crit_edge ]
  %init.0.off036.5 = phi i1 [ %init.1.off0.5, %for.inc.5.for.body3.5_crit_edge ], [ false, %for.inc.4.for.body3.5_crit_edge ]
  %shl.5 = shl nuw nsw i32 1, %j.038.5
  %and.5 = and i32 %shl.5, 15727616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.body3.5.for.inc.5_crit_edge, label %if.end.5

for.body3.5.for.inc.5_crit_edge:                  ; preds = %for.body3.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end.5:                                         ; preds = %for.body3.5
  br i1 %init.0.off036.5, label %if.else.5, label %if.then5.5

if.then5.5:                                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  %and7.5 = and i32 %shl.5, %data
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.5)
  %tobool8.not.5 = icmp ne i32 %and7.5, 0
  %conv.5 = zext i1 %tobool8.not.5 to i8
  br label %for.inc.5

if.else.5:                                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  %15 = lshr i32 %data, %j.038.5
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %conv14.5 = xor i8 %17, %val.037.5
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.else.5, %if.then5.5, %for.body3.5.for.inc.5_crit_edge
  %init.1.off0.5 = phi i1 [ true, %if.else.5 ], [ true, %if.then5.5 ], [ %init.0.off036.5, %for.body3.5.for.inc.5_crit_edge ]
  %val.1.5 = phi i8 [ %conv14.5, %if.else.5 ], [ %conv.5, %if.then5.5 ], [ %val.037.5, %for.body3.5.for.inc.5_crit_edge ]
  %inc.5 = add nuw nsw i32 %j.038.5, 1
  %exitcond.5.not = icmp eq i32 %inc.5, 24
  br i1 %exitcond.5.not, label %for.end.5, label %for.inc.5.for.body3.5_crit_edge

for.inc.5.for.body3.5_crit_edge:                  ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3.5

for.end.5:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  %conv16.4 = zext i8 %val.1.4 to i32
  %shl17.4 = shl nuw nsw i32 %conv16.4, 4
  %shl17.masked.4 = and i32 %shl17.4, 240
  %conv16.3 = zext i8 %val.1.3 to i32
  %shl17.3 = shl nuw nsw i32 %conv16.3, 3
  %shl17.masked.3 = and i32 %shl17.3, 248
  %conv16.2 = zext i8 %val.1.2 to i32
  %shl17.2 = shl nuw nsw i32 %conv16.2, 2
  %shl17.masked.2 = and i32 %shl17.2, 252
  %conv16.1 = zext i8 %val.1.1 to i32
  %shl17.1 = shl nuw nsw i32 %conv16.1, 1
  %shl17.masked.1 = and i32 %shl17.1, 254
  %conv16 = zext i8 %val.1 to i32
  %phi.cast.1 = or i32 %shl17.masked.1, %conv16
  %phi.cast.2 = or i32 %shl17.masked.2, %phi.cast.1
  %phi.cast.3 = or i32 %shl17.masked.3, %phi.cast.2
  %phi.cast.4 = or i32 %shl17.masked.4, %phi.cast.3
  %conv16.5 = zext i8 %val.1.5 to i32
  %shl17.5 = shl nuw nsw i32 %conv16.5, 5
  %shl17.masked.5 = and i32 %shl17.5, 224
  %phi.cast.5 = or i32 %shl17.masked.5, %phi.cast.4
  ret i32 %phi.cast.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dsi_bind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %encoder = getelementptr inbounds %struct.sun6i_dsi, ptr %1, i32 0, i32 1
  %helper_private.i = getelementptr inbounds %struct.sun6i_dsi, ptr %1, i32 0, i32 1, i32 11
  %2 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sun6i_dsi_enc_helper_funcs, ptr %helper_private.i, align 4
  %call2 = tail call i32 @drm_simple_encoder_init(ptr noundef %data, ptr noundef %encoder, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.sun6i_dsi, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.36) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %possible_crtcs = getelementptr inbounds %struct.sun6i_dsi, ptr %1, i32 0, i32 1, i32 6
  %5 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %possible_crtcs, align 4
  %helper_private.i36 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %helper_private.i36 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sun6i_dsi_connector_helper_funcs, ptr %helper_private.i36, align 4
  %call6 = tail call i32 @drm_connector_init(ptr noundef %data, ptr noundef %1, ptr noundef nonnull @sun6i_dsi_connector_funcs, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev12 = getelementptr inbounds %struct.sun6i_dsi, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.39) #13
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 @drm_connector_attach_encoder(ptr noundef %1, ptr noundef %encoder) #10
  %drm17 = getelementptr inbounds %struct.sun6i_dsi, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %drm17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data, ptr %drm17, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end11, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call6, %do.end11 ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun6i_dsi_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drm = getelementptr inbounds %struct.sun6i_dsi, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %drm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %drm, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_dsi_encoder_disable(ptr nocapture noundef readonly %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41) #10
  %panel = getelementptr i8, ptr %encoder, i32 124
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @drm_panel_disable(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call4 = tail call i32 @drm_panel_unprepare(ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dphy = getelementptr i8, ptr %encoder, i32 108
  %4 = ptrtoint ptr %dphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dphy, align 4
  %call5 = tail call i32 @phy_power_off(ptr noundef %5) #10
  %6 = ptrtoint ptr %dphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dphy, align 4
  %call7 = tail call i32 @phy_exit(ptr noundef %7) #10
  %mod_clk = getelementptr i8, ptr %encoder, i32 92
  %8 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  %reset = getelementptr i8, ptr %encoder, i32 104
  %10 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset, align 8
  %call8 = tail call i32 @reset_control_assert(ptr noundef %11) #10
  %regulator = getelementptr i8, ptr %encoder, i32 100
  %12 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regulator, align 4
  %call9 = tail call i32 @regulator_disable(ptr noundef %13) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_dsi_encoder_enable(ptr noundef readonly %encoder) #2 align 64 {
entry:
  %opts = alloca %union.phy_configure_opts, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  %device1 = getelementptr i8, ptr %encoder, i32 116
  %4 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %opts) #10
  %6 = call ptr @memset(ptr %opts, i32 0, i32 100)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.42) #10
  %regulator = getelementptr i8, ptr %encoder, i32 100
  %7 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regulator, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %encoder, i32 112
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.43, i32 noundef %call2) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %reset = getelementptr i8, ptr %encoder, i32 104
  %11 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset, align 8
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %12) #10
  %mod_clk = getelementptr i8, ptr %encoder, i32 92
  %13 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mod_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %14) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %regs = getelementptr i8, ptr %encoder, i32 96
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %call5 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 0, i32 noundef 1) #10
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %call7 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 16, i32 noundef 196608) #10
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  %call9 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 96, i32 noundef 10) #10
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 8
  %call11 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 120, i32 noundef 0) #10
  %23 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device1, align 4
  %lanes.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lanes.i, align 8
  %sub1.i = sub i32 32, %26
  %shr.i = lshr i32 -1, %sub1.i
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 8
  %29 = and i32 %shr.i, 15
  %or8.i.i = or i32 %29, 16
  %call.i.i = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 32, i32 noundef %or8.i.i) #10
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 8
  %call.i14.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 36, i32 noundef 268435457) #10
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 8
  %call.i16.i = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 40, i32 noundef 536870928) #10
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 8
  %or8.i19.i = or i32 %29, 536870912
  %call.i20.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 44, i32 noundef %or8.i19.i) #10
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 8
  %call.i22.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 48, i32 noundef 806354945) #10
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 8
  %call.i24.i = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 52, i32 noundef 1073741840) #10
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 8
  %call.i27.i = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 56, i32 noundef %29) #10
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 8
  %or8.i30.i = or i32 %29, 1342177296
  %call.i31.i = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 60, i32 noundef %or8.i30.i) #10
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 8
  %call.i78 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 76, i32 noundef 5636097) #10
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 8
  %call14 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 760, i32 noundef 255) #10
  %vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 9
  %48 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vtotal.i, align 4
  %vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 7
  %50 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vsync_start.i, align 4
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 6
  %52 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vdisplay.i, align 2
  %sub.neg.i = add i16 %49, 1
  %sub3.i = sub i16 %sub.neg.i, %51
  %add.i = add i16 %sub3.i, %53
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i, i16 %49)
  %cmp.i = icmp ugt i16 %add.i, %49
  br i1 %cmp.i, label %if.then.i, label %clk_prepare_enable.exit.sun6i_dsi_get_video_start_delay.exit_crit_edge

clk_prepare_enable.exit.sun6i_dsi_get_video_start_delay.exit_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sun6i_dsi_get_video_start_delay.exit

if.then.i:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  %54 = urem i16 %add.i, %49
  br label %sun6i_dsi_get_video_start_delay.exit

sun6i_dsi_get_video_start_delay.exit:             ; preds = %if.then.i, %clk_prepare_enable.exit.sun6i_dsi_get_video_start_delay.exit_crit_edge
  %delay.0.i = phi i16 [ %54, %if.then.i ], [ %add.i, %clk_prepare_enable.exit.sun6i_dsi_get_video_start_delay.exit_crit_edge ]
  %55 = tail call i16 @llvm.umax.i16(i16 %delay.0.i, i16 1) #10
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 8
  %58 = and i16 %55, 8191
  %and = zext i16 %58 to i32
  %shl = shl nuw nsw i32 %and, 4
  %or18 = or i32 %shl, 7
  %call19 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 20, i32 noundef %or18) #10
  %59 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device1, align 4
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mode_flags.i, align 8
  %and.i = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i80 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i80, label %if.else.i, label %if.then.i81

if.then.i81:                                      ; preds = %sun6i_dsi_get_video_start_delay.exit
  %format.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %60, i32 0, i32 5
  %63 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %format.i.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %64, label %sw.epilog.i.i.i [
    i32 0, label %if.then.i81.sun6i_dsi_get_line_num.exit.i_crit_edge
    i32 1, label %if.then.i81.sun6i_dsi_get_line_num.exit.i_crit_edge158
    i32 2, label %sun6i_dsi_get_line_num.exit.thread.i
    i32 3, label %sun6i_dsi_get_line_num.exit.thread86.i
  ]

if.then.i81.sun6i_dsi_get_line_num.exit.i_crit_edge158: ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %sun6i_dsi_get_line_num.exit.i

if.then.i81.sun6i_dsi_get_line_num.exit.i_crit_edge: ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %sun6i_dsi_get_line_num.exit.i

sun6i_dsi_get_line_num.exit.thread.i:             ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #12
  %htotal.i73.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 4
  %66 = ptrtoint ptr %htotal.i73.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %htotal.i73.i, align 2
  %conv.i74.i = zext i16 %67 to i32
  %mul.i75.i = shl nuw nsw i32 %conv.i74.i, 1
  %lanes.i76.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %60, i32 0, i32 4
  %68 = ptrtoint ptr %lanes.i76.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lanes.i76.i, align 8
  %div2.i77.i = udiv i32 %mul.i75.i, %69
  br label %sun6i_dsi_get_drq_edge1.exit.i

sun6i_dsi_get_line_num.exit.thread86.i:           ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #12
  %htotal.i88.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 4
  %70 = ptrtoint ptr %htotal.i88.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %htotal.i88.i, align 2
  %conv.i89.i = zext i16 %71 to i32
  %mul.i90.i = shl nuw nsw i32 %conv.i89.i, 1
  %lanes.i91.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %60, i32 0, i32 4
  %72 = ptrtoint ptr %lanes.i91.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %lanes.i91.i, align 8
  %div2.i92.i = udiv i32 %mul.i90.i, %73
  br label %sun6i_dsi_get_drq_edge1.exit.i

sw.epilog.i.i.i:                                  ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %sun6i_dsi_get_line_num.exit.i

sun6i_dsi_get_line_num.exit.i:                    ; preds = %sw.epilog.i.i.i, %if.then.i81.sun6i_dsi_get_line_num.exit.i_crit_edge, %if.then.i81.sun6i_dsi_get_line_num.exit.i_crit_edge158
  %retval.0.i.i.i = phi i32 [ -2, %sw.epilog.i.i.i ], [ 3, %if.then.i81.sun6i_dsi_get_line_num.exit.i_crit_edge ], [ 3, %if.then.i81.sun6i_dsi_get_line_num.exit.i_crit_edge158 ]
  %htotal.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 4
  %74 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %htotal.i.i, align 2
  %conv.i.i = zext i16 %75 to i32
  %mul.i.i = mul nsw i32 %retval.0.i.i.i, %conv.i.i
  %lanes.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %60, i32 0, i32 4
  %76 = ptrtoint ptr %lanes.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lanes.i.i, align 8
  %div2.i.i = udiv i32 %mul.i.i, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %switch.i = icmp ult i32 %64, 2
  %spec.select.i = select i1 %switch.i, i32 3, i32 -2
  br label %sun6i_dsi_get_drq_edge1.exit.i

sun6i_dsi_get_drq_edge1.exit.i:                   ; preds = %sun6i_dsi_get_line_num.exit.i, %sun6i_dsi_get_line_num.exit.thread86.i, %sun6i_dsi_get_line_num.exit.thread.i
  %conv3.i85.in.i = phi i32 [ %div2.i92.i, %sun6i_dsi_get_line_num.exit.thread86.i ], [ %div2.i77.i, %sun6i_dsi_get_line_num.exit.thread.i ], [ %div2.i.i, %sun6i_dsi_get_line_num.exit.i ]
  %78 = phi i32 [ %73, %sun6i_dsi_get_line_num.exit.thread86.i ], [ %69, %sun6i_dsi_get_line_num.exit.thread.i ], [ %77, %sun6i_dsi_get_line_num.exit.i ]
  %conv.i80.i = phi i32 [ %conv.i89.i, %sun6i_dsi_get_line_num.exit.thread86.i ], [ %conv.i74.i, %sun6i_dsi_get_line_num.exit.thread.i ], [ %conv.i.i, %sun6i_dsi_get_line_num.exit.i ]
  %retval.0.i.i59.i = phi i32 [ 2, %sun6i_dsi_get_line_num.exit.thread86.i ], [ 2, %sun6i_dsi_get_line_num.exit.thread.i ], [ %spec.select.i, %sun6i_dsi_get_line_num.exit.i ]
  %conv3.i85.i = trunc i32 %conv3.i85.in.i to i16
  %hsync_end.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 3
  %79 = ptrtoint ptr %hsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %hsync_end.i.i, align 4
  %conv2.i.i = zext i16 %80 to i32
  %hdisplay.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 1
  %81 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %hdisplay.i.i, align 4
  %conv3.i62.i = zext i16 %82 to i32
  %sub.i.i = add nuw nsw i32 %conv.i80.i, 20
  %add.i.i = sub nsw i32 %sub.i.i, %conv2.i.i
  %add4.i.i = add nsw i32 %add.i.i, %conv3.i62.i
  %mul.i63.i = mul nsw i32 %add4.i.i, %retval.0.i.i59.i
  %div5.i.i = udiv i32 %mul.i63.i, %78
  %83 = trunc i32 %div5.i.i to i16
  %conv8.i.i = add i16 %83, 40
  %84 = tail call i16 @llvm.umin.i16(i16 %conv8.i.i, i16 %conv3.i85.i) #10
  %add.i67.i = shl nuw nsw i32 %conv3.i62.i, 2
  %mul.i68.i = add nuw nsw i32 %add.i67.i, 160
  %div1.i.i = lshr i32 %mul.i68.i, 3
  %85 = trunc i32 %div1.i.i to i16
  %conv3.i69.i = add i16 %84, %85
  call void @__sanitizer_cov_trace_cmp2(i16 %conv3.i69.i, i16 %conv3.i85.i)
  %cmp.i.i = icmp ugt i16 %conv3.i69.i, %conv3.i85.i
  %sub.i70.i = sub i16 %conv3.i69.i, %conv3.i85.i
  %retval.0.i.i = select i1 %cmp.i.i, i16 %sub.i70.i, i16 1
  %86 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs, align 8
  %conv.i = zext i16 %retval.0.i.i to i32
  %conv5.i = zext i16 %84 to i32
  %shl.i = shl nuw i32 %conv5.i, 16
  %or.i = or i32 %shl.i, %conv.i
  %call7.i = tail call i32 @regmap_write(ptr noundef %87, i32 noundef 244, i32 noundef %or.i) #10
  %88 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs, align 8
  %conv9.i = and i32 %conv3.i85.in.i, 65535
  %or11.i = or i32 %conv9.i, 2621440
  %call12.i = tail call i32 @regmap_write(ptr noundef %89, i32 noundef 240, i32 noundef %or11.i) #10
  br label %sun6i_dsi_setup_burst.exit

if.else.i:                                        ; preds = %sun6i_dsi_get_video_start_delay.exit
  %hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 2
  %90 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %hsync_start.i, align 2
  %conv13.i = zext i16 %91 to i32
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 1
  %92 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %hdisplay.i, align 4
  %conv14.i = zext i16 %93 to i32
  %sub.i = sub nsw i32 %conv13.i, %conv14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i)
  %cmp.i82 = icmp sgt i32 %sub.i, 20
  br i1 %cmp.i82, label %if.then16.i, label %if.else.i.sun6i_dsi_setup_burst.exit_crit_edge

if.else.i.sun6i_dsi_setup_burst.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sun6i_dsi_setup_burst.exit

if.then16.i:                                      ; preds = %if.else.i
  %conv23.i = add nuw nsw i32 %sub.i, 32748
  %format.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %60, i32 0, i32 5
  %94 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %95)
  %96 = icmp ult i32 %95, 4
  br i1 %96, label %switch.lookup, label %if.then16.i.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge

if.then16.i.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mipi_dsi_pixel_format_to_bpp.exit.i

switch.lookup:                                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.sun6i_dsi_encoder_enable, i32 0, i32 %95
  %97 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %97)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit.i

mipi_dsi_pixel_format_to_bpp.exit.i:              ; preds = %switch.lookup, %if.then16.i.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge
  %retval.0.i71.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %if.then16.i.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge ]
  %mul.i = mul nsw i32 %retval.0.i71.i, %conv23.i
  %98 = lshr i32 %mul.i, 5
  %and30.i = and i32 %98, 1023
  %or31.i = or i32 %and30.i, 268435456
  br label %sun6i_dsi_setup_burst.exit

sun6i_dsi_setup_burst.exit:                       ; preds = %mipi_dsi_pixel_format_to_bpp.exit.i, %if.else.i.sun6i_dsi_setup_burst.exit_crit_edge, %sun6i_dsi_get_drq_edge1.exit.i
  %val.0.i = phi i32 [ 268435456, %sun6i_dsi_get_drq_edge1.exit.i ], [ %or31.i, %mipi_dsi_pixel_format_to_bpp.exit.i ], [ 0, %if.else.i.sun6i_dsi_setup_burst.exit_crit_edge ]
  %99 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs, align 8
  %call34.i = tail call i32 @regmap_write(ptr noundef %100, i32 noundef 124, i32 noundef %val.0.i) #10
  %101 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %device1, align 4
  %mode_flags.i84 = getelementptr inbounds %struct.mipi_dsi_device, ptr %102, i32 0, i32 6
  %103 = ptrtoint ptr %mode_flags.i84 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mode_flags.i84, align 8
  %and.i85 = and i32 %104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.not.i86 = icmp eq i32 %and.i85, 0
  br i1 %tobool.not.i86, label %sun6i_dsi_setup_burst.exit.sun6i_dsi_setup_inst_loop.exit_crit_edge, label %if.then.i91

sun6i_dsi_setup_burst.exit.sun6i_dsi_setup_inst_loop.exit_crit_edge: ; preds = %sun6i_dsi_setup_burst.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sun6i_dsi_setup_inst_loop.exit

if.then.i91:                                      ; preds = %sun6i_dsi_setup_burst.exit
  call void @__sanitizer_cov_trace_pc() #12
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 4
  %105 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %htotal.i, align 2
  %conv.i87 = zext i16 %106 to i32
  %hdisplay.i88 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 1
  %107 = ptrtoint ptr %hdisplay.i88 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %hdisplay.i88, align 4
  %conv2.i = zext i16 %108 to i32
  %sub.i89 = sub nsw i32 %conv.i87, %conv2.i
  %mul.i90 = mul nsw i32 %sub.i89, 150
  %109 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %adjusted_mode, align 4
  %div.i = sdiv i32 %110, 1000
  %mul3.i = shl nsw i32 %div.i, 3
  %div4.i = udiv i32 %mul.i90, %mul3.i
  %111 = shl i32 %div4.i, 16
  %phi.bo.i = add i32 %111, 265158656
  %phi.bo26.i = and i32 %phi.bo.i, 268369920
  %phi.bo27.i = or i32 %phi.bo26.i, 49
  br label %sun6i_dsi_setup_inst_loop.exit

sun6i_dsi_setup_inst_loop.exit:                   ; preds = %if.then.i91, %sun6i_dsi_setup_burst.exit.sun6i_dsi_setup_inst_loop.exit_crit_edge
  %delay.0.i92 = phi i32 [ %phi.bo27.i, %if.then.i91 ], [ 3211313, %sun6i_dsi_setup_burst.exit.sun6i_dsi_setup_inst_loop.exit_crit_edge ]
  %112 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs, align 8
  %call.i94 = tail call i32 @regmap_write(ptr noundef %113, i32 noundef 64, i32 noundef 805306370) #10
  %114 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs, align 8
  %call12.i95 = tail call i32 @regmap_write(ptr noundef %115, i32 noundef 68, i32 noundef %delay.0.i92) #10
  %116 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs, align 8
  %call18.i = tail call i32 @regmap_write(ptr noundef %117, i32 noundef 84, i32 noundef %delay.0.i92) #10
  %118 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %device1, align 4
  %channel.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %channel.i, align 4
  %and.i98 = shl i32 %121, 6
  %shl.i99 = and i32 %and.i98, 192
  %format.i100 = getelementptr inbounds %struct.mipi_dsi_device, ptr %119, i32 0, i32 5
  %122 = ptrtoint ptr %format.i100 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %format.i100, align 4
  %124 = zext i32 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %123, label %sun6i_dsi_setup_inst_loop.exit.sun6i_dsi_setup_format.exit_crit_edge [
    i32 0, label %sun6i_dsi_setup_inst_loop.exit.sw.epilog.thread.i_crit_edge
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb1.i.i101
    i32 3, label %sw.bb2.i.i103
  ]

sun6i_dsi_setup_inst_loop.exit.sw.epilog.thread.i_crit_edge: ; preds = %sun6i_dsi_setup_inst_loop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread.i

sun6i_dsi_setup_inst_loop.exit.sun6i_dsi_setup_format.exit_crit_edge: ; preds = %sun6i_dsi_setup_inst_loop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sun6i_dsi_setup_format.exit

sw.bb2.i:                                         ; preds = %sun6i_dsi_setup_inst_loop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread.i

sw.epilog.thread.i:                               ; preds = %sw.bb2.i, %sun6i_dsi_setup_inst_loop.exit.sw.epilog.thread.i_crit_edge
  %dt.0.ph.i = phi i32 [ 62, %sun6i_dsi_setup_inst_loop.exit.sw.epilog.thread.i_crit_edge ], [ 46, %sw.bb2.i ]
  %fmt.0.ph.i = phi i32 [ 65544, %sun6i_dsi_setup_inst_loop.exit.sw.epilog.thread.i_crit_edge ], [ 65545, %sw.bb2.i ]
  %or43.i = or i32 %dt.0.ph.i, %shl.i99
  br label %mipi_dsi_pixel_format_to_bpp.exit.i106

sw.bb1.i.i101:                                    ; preds = %sun6i_dsi_setup_inst_loop.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or52.i = or i32 %shl.i99, 30
  br label %mipi_dsi_pixel_format_to_bpp.exit.i106

sw.bb2.i.i103:                                    ; preds = %sun6i_dsi_setup_inst_loop.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or.i102 = or i32 %shl.i99, 14
  br label %mipi_dsi_pixel_format_to_bpp.exit.i106

mipi_dsi_pixel_format_to_bpp.exit.i106:           ; preds = %sw.bb2.i.i103, %sw.bb1.i.i101, %sw.epilog.thread.i
  %or47.i = phi i32 [ %or.i102, %sw.bb2.i.i103 ], [ %or52.i, %sw.bb1.i.i101 ], [ %or43.i, %sw.epilog.thread.i ]
  %fmt.046.i = phi i32 [ 65547, %sw.bb2.i.i103 ], [ 65546, %sw.bb1.i.i101 ], [ %fmt.0.ph.i, %sw.epilog.thread.i ]
  %retval.0.i.i104 = phi i32 [ 512, %sw.bb2.i.i103 ], [ 576, %sw.bb1.i.i101 ], [ 768, %sw.epilog.thread.i ]
  %conv648.in.in.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 1
  %125 = ptrtoint ptr %conv648.in.in.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %conv648.in.i = load i16, ptr %conv648.in.in.i, align 4
  %conv648.i = zext i16 %conv648.in.i to i32
  %126 = mul nuw nsw i32 %retval.0.i.i104, %conv648.i
  %shl11.i = and i32 %126, 16776960
  %or12.i = or i32 %shl11.i, %or47.i
  %call13.i = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %or12.i) #10
  %shl15.i = shl i32 %call13.i, 24
  %or16.i = or i32 %or12.i, %shl15.i
  %127 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs, align 8
  %call17.i = tail call i32 @regmap_write(ptr noundef %128, i32 noundef 144, i32 noundef %or16.i) #10
  %129 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regs, align 8
  %call19.i = tail call i32 @regmap_write(ptr noundef %130, i32 noundef 152, i32 noundef 65535) #10
  %131 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs, align 8
  %call21.i = tail call i32 @regmap_write(ptr noundef %132, i32 noundef 156, i32 noundef -1) #10
  %133 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs, align 8
  %call26.i = tail call i32 @regmap_write(ptr noundef %134, i32 noundef 128, i32 noundef %fmt.046.i) #10
  br label %sun6i_dsi_setup_format.exit

sun6i_dsi_setup_format.exit:                      ; preds = %mipi_dsi_pixel_format_to_bpp.exit.i106, %sun6i_dsi_setup_inst_loop.exit.sun6i_dsi_setup_format.exit_crit_edge
  %135 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %device1, align 4
  %format.i108 = getelementptr inbounds %struct.mipi_dsi_device, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %format.i108 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %format.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %138)
  %139 = icmp ult i32 %138, 4
  br i1 %139, label %switch.lookup152, label %sun6i_dsi_setup_format.exit.mipi_dsi_pixel_format_to_bpp.exit.i116_crit_edge

sun6i_dsi_setup_format.exit.mipi_dsi_pixel_format_to_bpp.exit.i116_crit_edge: ; preds = %sun6i_dsi_setup_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mipi_dsi_pixel_format_to_bpp.exit.i116

switch.lookup152:                                 ; preds = %sun6i_dsi_setup_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep153 = getelementptr inbounds [4 x i32], ptr @switch.table.sun6i_dsi_encoder_enable.46, i32 0, i32 %138
  %140 = ptrtoint ptr %switch.gep153 to i32
  call void @__asan_load4_noabort(i32 %140)
  %switch.load154 = load i32, ptr %switch.gep153, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit.i116

mipi_dsi_pixel_format_to_bpp.exit.i116:           ; preds = %switch.lookup152, %sun6i_dsi_setup_format.exit.mipi_dsi_pixel_format_to_bpp.exit.i116_crit_edge
  %retval.0.i.i112 = phi i32 [ %switch.load154, %switch.lookup152 ], [ -2, %sun6i_dsi_setup_format.exit.mipi_dsi_pixel_format_to_bpp.exit.i116_crit_edge ]
  %mode_flags.i113 = getelementptr inbounds %struct.mipi_dsi_device, ptr %136, i32 0, i32 6
  %141 = ptrtoint ptr %mode_flags.i113 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %mode_flags.i113, align 8
  %and.i114 = and i32 %142, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %tobool.not.i115 = icmp eq i32 %and.i114, 0
  br i1 %tobool.not.i115, label %if.else.i127, label %if.then.i122

if.then.i122:                                     ; preds = %mipi_dsi_pixel_format_to_bpp.exit.i116
  call void @__sanitizer_cov_trace_pc() #12
  %hdisplay.i117 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 1
  %143 = ptrtoint ptr %hdisplay.i117 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %hdisplay.i117, align 4
  %145 = trunc i32 %retval.0.i.i112 to i16
  %conv2.i118 = mul i16 %144, %145
  %lanes.i119 = getelementptr inbounds %struct.mipi_dsi_device, ptr %136, i32 0, i32 4
  %146 = ptrtoint ptr %lanes.i119 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %lanes.i119, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %147)
  %cmp.i120 = icmp eq i32 %147, 4
  %spec.select.i121 = select i1 %cmp.i120, i32 207, i32 7
  br label %if.end59.i

if.else.i127:                                     ; preds = %mipi_dsi_pixel_format_to_bpp.exit.i116
  call void @__sanitizer_cov_trace_pc() #12
  %hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 3
  %148 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %hsync_end.i, align 4
  %conv5.i123 = zext i16 %149 to i32
  %hsync_start.i124 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 2
  %150 = ptrtoint ptr %hsync_start.i124 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %hsync_start.i124, align 2
  %conv6.i = zext i16 %151 to i32
  %sub.i125 = sub nsw i32 %conv5.i123, %conv6.i
  %mul7.i = mul nsw i32 %sub.i125, %retval.0.i.i112
  %sub8.i = add nsw i32 %mul7.i, -10
  %152 = tail call i32 @llvm.umax.i32(i32 %sub8.i, i32 10) #10
  %153 = trunc i32 %152 to i16
  %htotal.i126 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 4
  %154 = ptrtoint ptr %htotal.i126 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %htotal.i126, align 2
  %conv12.i = zext i16 %155 to i32
  %sub15.i = sub nsw i32 %conv12.i, %conv5.i123
  %mul16.i = mul nsw i32 %sub15.i, %retval.0.i.i112
  %sub17.i = add nsw i32 %mul16.i, -6
  %156 = tail call i32 @llvm.umax.i32(i32 %sub17.i, i32 6) #10
  %157 = trunc i32 %156 to i16
  %hdisplay28.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 1
  %158 = ptrtoint ptr %hdisplay28.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %hdisplay28.i, align 4
  %conv29.i = zext i16 %159 to i32
  %sub30.i = sub nsw i32 %conv6.i, %conv29.i
  %mul31.i = mul nsw i32 %sub30.i, %retval.0.i.i112
  %sub32.i = add nsw i32 %mul31.i, -16
  %160 = tail call i32 @llvm.umax.i32(i32 %sub32.i, i32 16) #10
  %161 = trunc i32 %160 to i16
  %sub47.neg.i = sub nsw i32 %conv6.i, %conv5.i123
  %sub48.i = add nsw i32 %sub47.neg.i, %conv12.i
  %mul49.i = mul nsw i32 %sub48.i, %retval.0.i.i112
  %sub50.i = add nsw i32 %mul49.i, -10
  %162 = tail call i32 @llvm.umax.i32(i32 %sub50.i, i32 10) #10
  %163 = trunc i32 %162 to i16
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else.i127, %if.then.i122
  %basic_ctl.0.i = phi i32 [ 0, %if.else.i127 ], [ %spec.select.i121, %if.then.i122 ]
  %hblk.0.i = phi i16 [ %163, %if.else.i127 ], [ %conv2.i118, %if.then.i122 ]
  %hsa.0.i = phi i16 [ %153, %if.else.i127 ], [ 0, %if.then.i122 ]
  %hfp.0.i = phi i16 [ %161, %if.else.i127 ], [ 0, %if.then.i122 ]
  %hbp.0.i = phi i16 [ %157, %if.else.i127 ], [ 0, %if.then.i122 ]
  %164 = tail call i16 @llvm.umax.i16(i16 %hfp.0.i, i16 %hblk.0.i) #10
  %165 = tail call i16 @llvm.umax.i16(i16 %hsa.0.i, i16 %hbp.0.i) #10
  %166 = tail call i16 @llvm.umax.i16(i16 %164, i16 %165) #10
  %167 = zext i16 %166 to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %167, i32 noundef 3264) #14
  %tobool98.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool98.not.i, label %do.end.i, label %if.end124.i, !prof !117

do.end.i:                                         ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 602, i32 noundef 9, ptr noundef null) #10
  br label %sun6i_dsi_setup_timings.exit

if.end124.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv73.i = zext i16 %hbp.0.i to i32
  %conv72.i = zext i16 %hsa.0.i to i32
  %conv62.i = zext i16 %hblk.0.i to i32
  %conv61.i = zext i16 %hfp.0.i to i32
  %168 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs, align 8
  %call125.i = tail call i32 @regmap_write(ptr noundef %169, i32 noundef 12, i32 noundef %basic_ctl.0.i) #10
  %170 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs, align 8
  %channel.i130 = getelementptr inbounds %struct.mipi_dsi_device, ptr %136, i32 0, i32 3
  %172 = ptrtoint ptr %channel.i130 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %channel.i130, align 4
  %174 = shl i32 %173, 6
  %or18.i.i = and i32 %174, 192
  %or.i.i = or i32 %or18.i.i, 33
  %call.i.i131 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %or.i.i) #10
  %shl11.i.i = shl i32 %call.i.i131, 24
  %or12.i.i = or i32 %or.i.i, %shl11.i.i
  %call129.i = tail call i32 @regmap_write(ptr noundef %171, i32 noundef 176, i32 noundef %or12.i.i) #10
  %175 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs, align 8
  %177 = ptrtoint ptr %channel.i130 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %channel.i130, align 4
  %179 = shl i32 %178, 6
  %or18.i304.i = and i32 %179, 192
  %or.i305.i = or i32 %or18.i304.i, 49
  %call.i306.i = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %or.i305.i) #10
  %shl11.i307.i = shl i32 %call.i306.i, 24
  %or12.i308.i = or i32 %or.i305.i, %shl11.i307.i
  %call134.i = tail call i32 @regmap_write(ptr noundef %176, i32 noundef 180, i32 noundef %or12.i308.i) #10
  %180 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs, align 8
  %182 = ptrtoint ptr %channel.i130 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %channel.i130, align 4
  %184 = shl i32 %183, 6
  %or18.i309.i = and i32 %184, 192
  %or.i310.i = or i32 %or18.i309.i, 1
  %call.i311.i = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %or.i310.i) #10
  %shl11.i312.i = shl i32 %call.i311.i, 24
  %or12.i313.i = or i32 %or.i310.i, %shl11.i312.i
  %call139.i = tail call i32 @regmap_write(ptr noundef %181, i32 noundef 184, i32 noundef %or12.i313.i) #10
  %185 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs, align 8
  %187 = ptrtoint ptr %channel.i130 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %channel.i130, align 4
  %189 = shl i32 %188, 6
  %or18.i314.i = and i32 %189, 192
  %or.i315.i = or i32 %or18.i314.i, 17
  %call.i316.i = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %or.i315.i) #10
  %shl11.i317.i = shl i32 %call.i316.i, 24
  %or12.i318.i = or i32 %or.i315.i, %shl11.i317.i
  %call144.i = tail call i32 @regmap_write(ptr noundef %186, i32 noundef 188, i32 noundef %or12.i318.i) #10
  %190 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs, align 8
  %vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 8
  %192 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %vsync_end.i, align 2
  %conv146.i = zext i16 %193 to i32
  %194 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %vsync_start.i, align 4
  %conv147.i = zext i16 %195 to i32
  %sub148.i = sub nsw i32 %conv146.i, %conv147.i
  %and149.i = and i32 %sub148.i, 4095
  %196 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %vtotal.i, align 4
  %conv150.i = zext i16 %197 to i32
  %sub153.i = sub nsw i32 %conv150.i, %conv146.i
  %and154.i = shl i32 %sub153.i, 16
  %shl.i134 = and i32 %and154.i, 268369920
  %or155.i = or i32 %shl.i134, %and149.i
  %call156.i = tail call i32 @regmap_write(ptr noundef %191, i32 noundef 24, i32 noundef %or155.i) #10
  %198 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs, align 8
  %200 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %vdisplay.i, align 2
  %202 = and i16 %201, 4095
  %and159.i = zext i16 %202 to i32
  %203 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %vtotal.i, align 4
  %205 = and i16 %204, 4095
  %and162.i = zext i16 %205 to i32
  %shl163.i = shl nuw nsw i32 %and162.i, 16
  %or164.i = or i32 %shl163.i, %and159.i
  %call165.i = tail call i32 @regmap_write(ptr noundef %199, i32 noundef 28, i32 noundef %or164.i) #10
  %206 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regs, align 8
  %208 = ptrtoint ptr %channel.i130 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %channel.i130, align 4
  %210 = lshr i16 %hsa.0.i, 8
  %conv3.i.i = zext i16 %210 to i32
  %211 = shl i32 %209, 6
  %or18.i.i.i = and i32 %211, 192
  %212 = shl i16 %hsa.0.i, 8
  %shl5.i.i.i = zext i16 %212 to i32
  %or.i.i.i = or i32 %or18.i.i.i, %shl5.i.i.i
  %shl9.i.i.i = shl nuw nsw i32 %conv3.i.i, 16
  %or6.i.i.i = or i32 %or.i.i.i, %shl9.i.i.i
  %or10.i.i.i = or i32 %or6.i.i.i, 25
  %call.i.i.i = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %or10.i.i.i) #10
  %shl11.i.i.i = shl i32 %call.i.i.i, 24
  %or12.i.i.i = or i32 %or10.i.i.i, %shl11.i.i.i
  %call170.i = tail call i32 @regmap_write(ptr noundef %207, i32 noundef 192, i32 noundef %or12.i.i.i) #10
  %213 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %regs, align 8
  %215 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %conv72.i)
  %call.i.i.i.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef nonnull %call9.i.i, i32 noundef %conv72.i) #10
  %conv2.i.i136 = zext i16 %call.i.i.i.i to i32
  %shl.i.i = shl nuw i32 %conv2.i.i136, 16
  %call174.i = tail call i32 @regmap_write(ptr noundef %214, i32 noundef 196, i32 noundef %shl.i.i) #10
  %216 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs, align 8
  %218 = ptrtoint ptr %channel.i130 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %channel.i130, align 4
  %220 = lshr i16 %hbp.0.i, 8
  %conv3.i319.i = zext i16 %220 to i32
  %221 = shl i32 %219, 6
  %or18.i.i320.i = and i32 %221, 192
  %222 = shl i16 %hbp.0.i, 8
  %shl5.i.i322.i = zext i16 %222 to i32
  %or.i.i321.i = or i32 %or18.i.i320.i, %shl5.i.i322.i
  %shl9.i.i324.i = shl nuw nsw i32 %conv3.i319.i, 16
  %or6.i.i323.i = or i32 %or.i.i321.i, %shl9.i.i324.i
  %or10.i.i325.i = or i32 %or6.i.i323.i, 25
  %call.i.i326.i = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %or10.i.i325.i) #10
  %shl11.i.i327.i = shl i32 %call.i.i326.i, 24
  %or12.i.i328.i = or i32 %or10.i.i325.i, %shl11.i.i327.i
  %call179.i = tail call i32 @regmap_write(ptr noundef %217, i32 noundef 200, i32 noundef %or12.i.i328.i) #10
  %223 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %regs, align 8
  %225 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %conv73.i)
  %call.i.i.i329.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef nonnull %call9.i.i, i32 noundef %conv73.i) #10
  %conv2.i330.i = zext i16 %call.i.i.i329.i to i32
  %shl.i331.i = shl nuw i32 %conv2.i330.i, 16
  %call183.i = tail call i32 @regmap_write(ptr noundef %224, i32 noundef 204, i32 noundef %shl.i331.i) #10
  %226 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %regs, align 8
  %228 = ptrtoint ptr %channel.i130 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %channel.i130, align 4
  %230 = lshr i16 %hfp.0.i, 8
  %conv3.i332.i = zext i16 %230 to i32
  %231 = shl i32 %229, 6
  %or18.i.i333.i = and i32 %231, 192
  %232 = shl i16 %hfp.0.i, 8
  %shl5.i.i335.i = zext i16 %232 to i32
  %or.i.i334.i = or i32 %or18.i.i333.i, %shl5.i.i335.i
  %shl9.i.i337.i = shl nuw nsw i32 %conv3.i332.i, 16
  %or6.i.i336.i = or i32 %or.i.i334.i, %shl9.i.i337.i
  %or10.i.i338.i = or i32 %or6.i.i336.i, 25
  %call.i.i339.i = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %or10.i.i338.i) #10
  %shl11.i.i340.i = shl i32 %call.i.i339.i, 24
  %or12.i.i341.i = or i32 %or10.i.i338.i, %shl11.i.i340.i
  %call188.i = tail call i32 @regmap_write(ptr noundef %227, i32 noundef 208, i32 noundef %or12.i.i341.i) #10
  %233 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %regs, align 8
  %235 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %conv61.i)
  %call.i.i.i342.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef nonnull %call9.i.i, i32 noundef %conv61.i) #10
  %conv2.i343.i = zext i16 %call.i.i.i342.i to i32
  %shl.i344.i = shl nuw i32 %conv2.i343.i, 16
  %call192.i = tail call i32 @regmap_write(ptr noundef %234, i32 noundef 212, i32 noundef %shl.i344.i) #10
  %236 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %regs, align 8
  %238 = ptrtoint ptr %channel.i130 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %channel.i130, align 4
  %240 = lshr i16 %hblk.0.i, 8
  %conv3.i345.i = zext i16 %240 to i32
  %241 = shl i32 %239, 6
  %or18.i.i346.i = and i32 %241, 192
  %242 = shl i16 %hblk.0.i, 8
  %shl5.i.i348.i = zext i16 %242 to i32
  %or.i.i347.i = or i32 %or18.i.i346.i, %shl5.i.i348.i
  %shl9.i.i350.i = shl nuw nsw i32 %conv3.i345.i, 16
  %or6.i.i349.i = or i32 %or.i.i347.i, %shl9.i.i350.i
  %or10.i.i351.i = or i32 %or6.i.i349.i, 25
  %call.i.i352.i = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %or10.i.i351.i) #10
  %shl11.i.i353.i = shl i32 %call.i.i352.i, 24
  %or12.i.i354.i = or i32 %or10.i.i351.i, %shl11.i.i353.i
  %call197.i = tail call i32 @regmap_write(ptr noundef %237, i32 noundef 224, i32 noundef %or12.i.i354.i) #10
  %243 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %regs, align 8
  %245 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %conv62.i)
  %call.i.i.i355.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef nonnull %call9.i.i, i32 noundef %conv62.i) #10
  %conv2.i356.i = zext i16 %call.i.i.i355.i to i32
  %shl.i357.i = shl nuw i32 %conv2.i356.i, 16
  %call201.i = tail call i32 @regmap_write(ptr noundef %244, i32 noundef 228, i32 noundef %shl.i357.i) #10
  %246 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regs, align 8
  %248 = ptrtoint ptr %channel.i130 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %channel.i130, align 4
  %250 = shl i32 %249, 6
  %or18.i.i358.i = and i32 %250, 192
  %or.i.i359.i = or i32 %or18.i.i358.i, 25
  %call.i.i360.i = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %or.i.i359.i) #10
  %shl11.i.i361.i = shl i32 %call.i.i360.i, 24
  %or12.i.i362.i = or i32 %or.i.i359.i, %shl11.i.i361.i
  %call206.i = tail call i32 @regmap_write(ptr noundef %247, i32 noundef 232, i32 noundef %or12.i.i362.i) #10
  %251 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %regs, align 8
  %call.i.i.i363.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef nonnull %call9.i.i, i32 noundef 0) #10
  %conv2.i364.i = zext i16 %call.i.i.i363.i to i32
  %shl.i365.i = shl nuw i32 %conv2.i364.i, 16
  %call210.i = tail call i32 @regmap_write(ptr noundef %252, i32 noundef 236, i32 noundef %shl.i365.i) #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %sun6i_dsi_setup_timings.exit

sun6i_dsi_setup_timings.exit:                     ; preds = %if.end124.i, %do.end.i
  %dphy = getelementptr i8, ptr %encoder, i32 108
  %253 = ptrtoint ptr %dphy to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dphy, align 4
  %call20 = tail call i32 @phy_init(ptr noundef %254) #10
  %255 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %256, 1000
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %5, i32 0, i32 5
  %257 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %258)
  %259 = icmp ult i32 %258, 4
  br i1 %259, label %switch.lookup155, label %sun6i_dsi_setup_timings.exit.mipi_dsi_pixel_format_to_bpp.exit_crit_edge

sun6i_dsi_setup_timings.exit.mipi_dsi_pixel_format_to_bpp.exit_crit_edge: ; preds = %sun6i_dsi_setup_timings.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mipi_dsi_pixel_format_to_bpp.exit

switch.lookup155:                                 ; preds = %sun6i_dsi_setup_timings.exit
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep156 = getelementptr inbounds [4 x i32], ptr @switch.table.sun6i_dsi_encoder_enable.47, i32 0, i32 %258
  %260 = ptrtoint ptr %switch.gep156 to i32
  call void @__asan_load4_noabort(i32 %260)
  %switch.load157 = load i32, ptr %switch.gep156, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit

mipi_dsi_pixel_format_to_bpp.exit:                ; preds = %switch.lookup155, %sun6i_dsi_setup_timings.exit.mipi_dsi_pixel_format_to_bpp.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load157, %switch.lookup155 ], [ -22, %sun6i_dsi_setup_timings.exit.mipi_dsi_pixel_format_to_bpp.exit_crit_edge ]
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %5, i32 0, i32 4
  %261 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %lanes, align 8
  %call22 = call i32 @phy_mipi_dphy_get_default_config(i32 noundef %mul, i32 noundef %retval.0.i, i32 noundef %262, ptr noundef nonnull %opts) #10
  %263 = ptrtoint ptr %dphy to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dphy, align 4
  %call24 = call i32 @phy_set_mode_ext(ptr noundef %264, i32 noundef 16, i32 noundef 0) #10
  %265 = ptrtoint ptr %dphy to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dphy, align 4
  %call26 = call i32 @phy_configure(ptr noundef %266, ptr noundef nonnull %opts) #10
  %267 = ptrtoint ptr %dphy to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dphy, align 4
  %call28 = call i32 @phy_power_on(ptr noundef %268) #10
  %panel = getelementptr i8, ptr %encoder, i32 124
  %269 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %panel, align 4
  %tobool29.not = icmp eq ptr %270, null
  br i1 %tobool29.not, label %mipi_dsi_pixel_format_to_bpp.exit.if.end39_crit_edge, label %if.end33

mipi_dsi_pixel_format_to_bpp.exit.if.end39_crit_edge: ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end33:                                         ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  %call32 = call i32 @drm_panel_prepare(ptr noundef nonnull %270) #10
  %271 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %271)
  %.pr = load ptr, ptr %panel, align 4
  %tobool35.not = icmp eq ptr %.pr, null
  br i1 %tobool35.not, label %if.end33.if.end39_crit_edge, label %if.then36

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = call i32 @drm_panel_enable(ptr noundef nonnull %.pr) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge, %mipi_dsi_pixel_format_to_bpp.exit.if.end39_crit_edge
  %272 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %regs, align 8
  %call11.i = call i32 @regmap_write(ptr noundef %273, i32 noundef 72, i32 noundef 3842) #10
  %274 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %regs, align 8
  %call.i.i.i139 = call i32 @regmap_update_bits_base(ptr noundef %275, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %276 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %regs, align 8
  %call.i.i2.i = call i32 @regmap_update_bits_base(ptr noundef %277, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %278 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %regs, align 8
  %call.i.i141 = call i32 @regmap_update_bits_base(ptr noundef %279, i32 noundef 32, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %280 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %280(i32 noundef 214748000) #10
  %281 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %regs, align 8
  %call11.i145 = call i32 @regmap_write(ptr noundef %282, i32 noundef 72, i32 noundef 1676701702) #10
  %283 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %regs, align 8
  %call.i.i.i147 = call i32 @regmap_update_bits_base(ptr noundef %284, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %285 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %regs, align 8
  %call.i.i2.i148 = call i32 @regmap_update_bits_base(ptr noundef %286, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %opts) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_get_default_config(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_configure(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dsi_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr inbounds %struct.sun6i_dsi, ptr %connector, i32 0, i32 12
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %call1 = tail call i32 @drm_panel_get_modes(ptr noundef %1, ptr noundef %connector) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun6i_dsi_connector_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr inbounds %struct.sun6i_dsi, ptr %connector, i32 0, i32 12
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %1, null
  %cond = select i1 %tobool.not, i32 2, i32 1
  ret i32 %cond
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
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !92, !94, !96, !97, !98, !99, !100, !102, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_sun6i_mipi_dsi__325_1231_sun6i_dsi_platform_driver_init6, !1, !"__initcall__kmod_sun6i_mipi_dsi__325_1231_sun6i_dsi_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1231, i32 1}
!2 = !{ptr @__exitcall_sun6i_dsi_platform_driver_exit, !1, !"__exitcall_sun6i_dsi_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author326, !4, !"__UNIQUE_ID_author326", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1233, i32 1}
!5 = !{ptr @__UNIQUE_ID_description327, !6, !"__UNIQUE_ID_description327", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1234, i32 1}
!7 = !{ptr @__UNIQUE_ID_file328, !8, !"__UNIQUE_ID_file328", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1235, i32 1}
!9 = !{ptr @__UNIQUE_ID_license329, !8, !"__UNIQUE_ID_license329", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1227, i32 12}
!12 = !{ptr @sun6i_dsi_platform_driver, !13, !"sun6i_dsi_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1223, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1119, i32 9}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1120, i32 18}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1124, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sun6i_dsi_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @sun6i_dsi_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1128, i32 43}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1131, i32 10}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1135, i32 3}
!32 = !{ptr @sun6i_dsi_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sun6i_dsi_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @sun6i_dsi_probe._key, !35, !"_key", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1139, i32 14}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1141, i32 3}
!39 = !{ptr @sun6i_dsi_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @sun6i_dsi_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1148, i32 10}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1156, i32 36}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1158, i32 4}
!47 = !{ptr @sun6i_dsi_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sun6i_dsi_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1170, i32 32}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1172, i32 3}
!53 = !{ptr @sun6i_dsi_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sun6i_dsi_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1179, i32 3}
!57 = !{ptr @sun6i_dsi_probe._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @sun6i_dsi_probe._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1185, i32 3}
!61 = !{ptr @sun6i_dsi_probe._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sun6i_dsi_probe._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @sun6i_dsi_host_ops, !64, !"sun6i_dsi_host_ops", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1036, i32 39}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 978, i32 2}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @sun6i_dsi_attach._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @sun6i_dsi_attach._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"sun6i_dsi_ecc_array", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 207, i32 18}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1047, i32 11}
!75 = !{ptr @sun6i_dsi_regmap_config, !76, !"sun6i_dsi_regmap_config", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1042, i32 35}
!77 = !{ptr @sun6i_dsi_ops, !78, !"sun6i_dsi_ops", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1097, i32 35}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1062, i32 3}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @sun6i_dsi_bind._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @sun6i_dsi_bind._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1073, i32 3}
!86 = !{ptr @sun6i_dsi_bind._entry.38, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sun6i_dsi_bind._entry_ptr.40, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @sun6i_dsi_enc_helper_funcs, !89, !"sun6i_dsi_enc_helper_funcs", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 845, i32 46}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 801, i32 2}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 726, i32 2}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 730, i32 3}
!96 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @sun6i_dsi_encoder_enable._entry, !95, !"_entry", i1 false, i1 false}
!99 = !{ptr @sun6i_dsi_encoder_enable._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @sun6i_dsi_connector_helper_funcs, !101, !"sun6i_dsi_connector_helper_funcs", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 823, i32 48}
!102 = !{ptr @sun6i_dsi_connector_funcs, !103, !"sun6i_dsi_connector_funcs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 836, i32 41}
!104 = !{ptr @sun6i_dsi_of_table, !105, !"sun6i_dsi_of_table", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c", i32 1216, i32 34}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i8 0, i8 2}
!116 = !{!"auto-init"}
!117 = !{!"branch_weights", i32 1, i32 2000}
