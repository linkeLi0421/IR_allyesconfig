; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_drm_dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_dsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exynos_dsi_driver_data = type { ptr, i32, i8, i32, i32, i32, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.exynos_dsi = type { %struct.drm_encoder, %struct.mipi_dsi_host, %struct.drm_connector, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.completion, %struct.spinlock, %struct.list_head, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.exynos_drm_crtc = type { %struct.drm_crtc, i32, ptr, ptr, ptr, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exynos_dsi_transfer = type { %struct.list_head, %struct.completion, i32, %struct.mipi_dsi_packet, i16, i16, ptr, i16, i16 }
%struct.mipi_dsi_packet = type { i32, [4 x i8], i32, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos-dsi\00", [21 x i8] zeroinitializer }, align 32
@exynos_dsi_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos3_dsi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_dsi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5410-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5_dsi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5422-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5422_dsi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_dsi_driver_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@exynos_dsi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_dsi_suspend, ptr @exynos_dsi_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@dsi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_dsi_probe, ptr @exynos_dsi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_dsi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_dsi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author314 = internal constant [50 x i8] c"exynosdrm.author=Tomasz Figa <t.figa@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author315 = internal constant [53 x i8] c"exynosdrm.author=Andrzej Hajda <a.hajda@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description316 = internal constant [50 x i8] c"exynosdrm.description=Samsung SoC MIPI DSI Master\00", section ".modinfo", align 1
@__UNIQUE_ID_file317 = internal constant [48 x i8] c"exynosdrm.file=drivers/gpu/drm/exynos/exynosdrm\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [25 x i8] c"exynosdrm.license=GPL v2\00", section ".modinfo", align 1
@exynos_dsi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dsi->transfer_lock\00", [44 x i8] zeroinitializer }, align 32
@exynos_dsi_ops = internal constant { %struct.mipi_dsi_host_ops, [20 x i8] } { %struct.mipi_dsi_host_ops { ptr @exynos_dsi_host_attach, ptr @exynos_dsi_host_detach, ptr @exynos_dsi_host_transfer }, [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vddcore\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@clk_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.53, ptr @.str.5, ptr @.str.54, ptr @.str.55, ptr @.str.56], [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_mipi\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll_clk\00", [24 x i8] zeroinitializer }, align 32
@exynos_dsi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1773, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get the clock: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exynos_dsi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/exynos/exynos_drm_dsi.c\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_dsi_probe._entry_ptr = internal global ptr @exynos_dsi_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dsim\00", [27 x i8] zeroinitializer }, align 32
@exynos_dsi_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.9, i32 1784, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get dsim phy\0A\00", [40 x i8] zeroinitializer }, align 32
@exynos_dsi_probe._entry_ptr.15 = internal global ptr @exynos_dsi_probe._entry.13, section ".printk_index", align 4
@exynos_dsi_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.9, i32 1797, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request dsi irq\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@exynos_dsi_probe._entry_ptr.19 = internal global ptr @exynos_dsi_probe._entry.16, section ".printk_index", align 4
@exynos_dsi_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @exynos_dsi_bind, ptr @exynos_dsi_unbind }, [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to create connector ret = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@exynos_dsi_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @exynos_dsi_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @exynos_dsi_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"*ERROR* Failed to initialize connector with drm\0A\00", [47 x i8] zeroinitializer }, align 32
@exynos_dsi_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @exynos_dsi_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"te\00", [29 x i8] zeroinitializer }, align 32
@exynos_dsi_register_te_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.9, i32 1342, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gpio request failed with %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"exynos_dsi_register_te_irq\00", [37 x i8] zeroinitializer }, align 32
@exynos_dsi_register_te_irq._entry_ptr = internal global ptr @exynos_dsi_register_te_irq._entry, section ".printk_index", align 4
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TE\00", [29 x i8] zeroinitializer }, align 32
@exynos_dsi_register_te_irq._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.9, i32 1351, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"request interrupt failed with %d\0A\00", [62 x i8] zeroinitializer }, align 32
@exynos_dsi_register_te_irq._entry_ptr.29 = internal global ptr @exynos_dsi_register_te_irq._entry.27, section ".printk_index", align 4
@exynos_dsi_enable_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.9, i32 659, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to configure DSI PLL\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"exynos_dsi_enable_clock\00", [40 x i8] zeroinitializer }, align 32
@exynos_dsi_enable_clock._entry_ptr = internal global ptr @exynos_dsi_enable_clock._entry, section ".printk_index", align 4
@exynos_dsi_enable_clock.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.31, ptr @.str.9, ptr @.str.33, i8 0, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exynosdrm\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"hs_clk = %lu, byte_clk = %lu, esc_clk = %lu\0A\00", [51 x i8] zeroinitializer }, align 32
@exynos_dsi_set_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.9, i32 609, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to find PLL PMS for requested frequency\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exynos_dsi_set_pll\00", [45 x i8] zeroinitializer }, align 32
@exynos_dsi_set_pll._entry_ptr = internal global ptr @exynos_dsi_set_pll._entry, section ".printk_index", align 4
@exynos_dsi_set_pll.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.35, ptr @.str.9, ptr @.str.36, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PLL freq %lu, (p %d, m %d, s %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@exynos_dsi_set_pll.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.35, ptr @.str.9, ptr @.str.37, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"band %d\0A\00", [23 x i8] zeroinitializer }, align 32
@exynos_dsi_set_pll._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.35, ptr @.str.9, i32 642, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PLL failed to stabilize\0A\00", [39 x i8] zeroinitializer }, align 32
@exynos_dsi_set_pll._entry_ptr.40 = internal global ptr @exynos_dsi_set_pll._entry.38, section ".printk_index", align 4
@exynos_dsi_wait_for_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.9, i32 526, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"timeout waiting for reset\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"exynos_dsi_wait_for_reset\00", [38 x i8] zeroinitializer }, align 32
@exynos_dsi_wait_for_reset._entry_ptr = internal global ptr @exynos_dsi_wait_for_reset._entry, section ".printk_index", align 4
@exynos_dsi_init_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.9, i32 836, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid pixel format\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"exynos_dsi_init_link\00", [43 x i8] zeroinitializer }, align 32
@exynos_dsi_init_link._entry_ptr = internal global ptr @exynos_dsi_init_link._entry, section ".printk_index", align 4
@exynos_dsi_init_link._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.9, i32 861, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"waiting for bus lanes timed out\0A\00", [63 x i8] zeroinitializer }, align 32
@exynos_dsi_init_link._entry_ptr.47 = internal global ptr @exynos_dsi_init_link._entry.45, section ".printk_index", align 4
@exynos_dsi_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.9, i32 1244, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xfer timed out: %*ph %*ph\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos_dsi_transfer\00", [44 x i8] zeroinitializer }, align 32
@exynos_dsi_transfer._entry_ptr = internal global ptr @exynos_dsi_transfer._entry, section ".printk_index", align 4
@exynos_dsi_send_to_fifo.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.50, ptr @.str.9, ptr @.str.51, i8 0, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"exynos_dsi_send_to_fifo\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"< xfer %pK: tx len %u, done %u, rx len %u, done %u\0A\00", [44 x i8] zeroinitializer }, align 32
@exynos_dsi_send_to_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.9, i32 1004, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"waiting for header FIFO timed out\0A\00", [61 x i8] zeroinitializer }, align 32
@exynos_dsi_send_to_fifo._entry_ptr = internal global ptr @exynos_dsi_send_to_fifo._entry, section ".printk_index", align 4
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bus_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"phyclk_mipidphy0_bitclkdiv8\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"phyclk_mipidphy0_rxclkesc0\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sclk_rgb_vclk_to_dsim0\00", [41 x i8] zeroinitializer }, align 32
@exynos_dsi_irq.j = internal global { i32, [28 x i8] } zeroinitializer, align 32
@exynos_dsi_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.9, i32 1261, ptr @.str.59, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spurious interrupt\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exynos_dsi_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@exynos_dsi_irq._entry_ptr = internal global ptr @exynos_dsi_irq._entry, section ".printk_index", align 4
@exynos_dsi_transfer_finish.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.60, ptr @.str.9, ptr @.str.61, i8 1, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"exynos_dsi_transfer_finish\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"> xfer %pK, tx_len %zu, tx_done %u, rx_len %u, rx_done %u\0A\00", [37 x i8] zeroinitializer }, align 32
@exynos_dsi_read_from_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.9, i32 1049, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DSI Error Report: 0x%04x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"exynos_dsi_read_from_fifo\00", [38 x i8] zeroinitializer }, align 32
@exynos_dsi_read_from_fifo._entry_ptr = internal global ptr @exynos_dsi_read_from_fifo._entry, section ".printk_index", align 4
@exynos_dsi_read_from_fifo._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.9, i32 1058, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"response too long (%u > %u bytes), stripping\0A\00", [50 x i8] zeroinitializer }, align 32
@exynos_dsi_read_from_fifo._entry_ptr.66 = internal global ptr @exynos_dsi_read_from_fifo._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"samsung,pll-clock-frequency\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"samsung,burst-clock-frequency\00", [34 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"samsung,esc-clock-frequency\00", [36 x i8] zeroinitializer }, align 32
@exynos_dsi_of_read_u32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.9, i32 1649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%pOF: failed to get '%s' property\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exynos_dsi_of_read_u32\00", [41 x i8] zeroinitializer }, align 32
@exynos_dsi_of_read_u32._entry_ptr = internal global ptr @exynos_dsi_of_read_u32._entry, section ".printk_index", align 4
@exynos_dsi_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_dsi_disable, ptr @exynos_dsi_enable, ptr null }, [44 x i8] zeroinitializer }, align 32
@exynos_dsi_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.9, i32 1378, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable DSI device.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exynos_dsi_enable\00", [46 x i8] zeroinitializer }, align 32
@exynos_dsi_enable._entry_ptr = internal global ptr @exynos_dsi_enable._entry, section ".printk_index", align 4
@exynos_dsi_set_display_mode.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.74, ptr @.str.9, ptr @.str.75, i8 0, i8 -30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"exynos_dsi_set_display_mode\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LCD size = %dx%d\0A\00", [46 x i8] zeroinitializer }, align 32
@exynos3_dsi_driver_data = internal constant { %struct.exynos_dsi_driver_data, [32 x i8] } { %struct.exynos_dsi_driver_data { ptr @exynos_reg_ofs, i32 80, i8 -64, i32 2, i32 1000, i32 1, i32 11, ptr @reg_values }, [32 x i8] zeroinitializer }, align 32
@exynos4_dsi_driver_data = internal constant { %struct.exynos_dsi_driver_data, [32 x i8] } { %struct.exynos_dsi_driver_data { ptr @exynos_reg_ofs, i32 80, i8 -64, i32 2, i32 1000, i32 1, i32 11, ptr @reg_values }, [32 x i8] zeroinitializer }, align 32
@exynos5_dsi_driver_data = internal constant { %struct.exynos_dsi_driver_data, [32 x i8] } { %struct.exynos_dsi_driver_data { ptr @exynos_reg_ofs, i32 88, i8 0, i32 2, i32 1000, i32 1, i32 11, ptr @reg_values }, [32 x i8] zeroinitializer }, align 32
@exynos5422_dsi_driver_data = internal constant { %struct.exynos_dsi_driver_data, [32 x i8] } { %struct.exynos_dsi_driver_data { ptr @exynos5433_reg_ofs, i32 160, i8 64, i32 2, i32 1500, i32 1, i32 12, ptr @exynos5422_reg_values }, [32 x i8] zeroinitializer }, align 32
@exynos5433_dsi_driver_data = internal constant { %struct.exynos_dsi_driver_data, [32 x i8] } { %struct.exynos_dsi_driver_data { ptr @exynos5433_reg_ofs, i32 160, i8 64, i32 5, i32 1500, i32 0, i32 12, ptr @exynos5433_reg_values }, [32 x i8] zeroinitializer }, align 32
@exynos_reg_ofs = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 44, i32 48, i32 52, i32 56, i32 60, i32 68, i32 76, i32 92, i32 100, i32 104, i32 108], [44 x i8] zeroinitializer }, align 32
@reg_values = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 500, i32 15, i32 175, i32 0, i32 0, i32 1536, i32 11, i32 117440512, i32 2555904, i32 3328, i32 8, i32 589824, i32 3328, i32 11], [36 x i8] zeroinitializer }, align 32
@exynos5433_reg_ofs = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 4, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 52, i32 56, i32 60, i32 64, i32 68, i32 76, i32 148, i32 164, i32 180, i32 184, i32 188], [44 x i8] zeroinitializer }, align 32
@exynos5422_reg_values = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 500, i32 15, i32 175, i32 0, i32 0, i32 2048, i32 13, i32 150994944, i32 3145728, i32 3584, i32 10, i32 786432, i32 4352, i32 13], [36 x i8] zeroinitializer }, align 32
@exynos5433_reg_values = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 65536, i32 22200, i32 10, i32 400, i32 1073741824, i32 16384, i32 1792, i32 12, i32 150994944, i32 2949120, i32 3584, i32 9, i32 720896, i32 4096, i32 12], [36 x i8] zeroinitializer }, align 32
@exynos_dsi_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.9, i32 1855, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot disable regulators %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exynos_dsi_suspend\00", [45 x i8] zeroinitializer }, align 32
@exynos_dsi_suspend._entry_ptr = internal global ptr @exynos_dsi_suspend._entry, section ".printk_index", align 4
@exynos_dsi_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.9, i32 1868, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot enable regulators %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exynos_dsi_resume\00", [46 x i8] zeroinitializer }, align 32
@exynos_dsi_resume._entry_ptr = internal global ptr @exynos_dsi_resume._entry, section ".printk_index", align 4
@exynos_dsi_resume._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.9, i32 1880, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot enable phy %d\0A\00", [42 x i8] zeroinitializer }, align 32
@exynos_dsi_resume._entry_ptr.82 = internal global ptr @exynos_dsi_resume._entry.80, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 17, i64 18, i64 33, i64 34]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1904, i32 14 }
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"exynos_dsi_of_match\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 507, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"exynos_dsi_pm_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1894, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant [11 x i8] c"dsi_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1900, i32 24 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1739, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"exynos_dsi_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1637, i32 39 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1749, i32 28 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1750, i32 28 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1754, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant [10 x i8] c"clk_names\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 214, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1765, i32 29 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1767, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1772, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1782, i32 31 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1784, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1797, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [25 x i8] c"exynos_dsi_component_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1723, i32 35 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 87, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1539, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant [27 x i8] c"exynos_dsi_connector_funcs\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1464, i32 41 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1499, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [34 x i8] c"exynos_dsi_connector_helper_funcs\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1483, i32 48 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1337, i32 43 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1341, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1349, i32 46 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1351, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 659, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 672, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 608, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 612, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 632, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 642, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 526, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 836, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 861, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1243, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 968, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1004, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 214, i32 43 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 215, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 215, i32 33 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 216, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1259, i32 28 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1261, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1165, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1048, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1056, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1665, i32 37 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1670, i32 37 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1675, i32 37 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1649, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant [32 x i8] c"exynos_dsi_encoder_helper_funcs\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1515, i32 46 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1378, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 907, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [24 x i8] c"exynos3_dsi_driver_data\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 451, i32 44 }
@___asan_gen_.370 = private unnamed_addr constant [24 x i8] c"exynos4_dsi_driver_data\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 463, i32 44 }
@___asan_gen_.373 = private unnamed_addr constant [24 x i8] c"exynos5_dsi_driver_data\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 475, i32 44 }
@___asan_gen_.376 = private unnamed_addr constant [27 x i8] c"exynos5422_dsi_driver_data\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 496, i32 44 }
@___asan_gen_.379 = private unnamed_addr constant [27 x i8] c"exynos5433_dsi_driver_data\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 485, i32 44 }
@___asan_gen_.382 = private unnamed_addr constant [15 x i8] c"exynos_reg_ofs\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 331, i32 27 }
@___asan_gen_.385 = private unnamed_addr constant [11 x i8] c"reg_values\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 397, i32 27 }
@___asan_gen_.388 = private unnamed_addr constant [19 x i8] c"exynos5433_reg_ofs\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 355, i32 27 }
@___asan_gen_.391 = private unnamed_addr constant [22 x i8] c"exynos5422_reg_values\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 415, i32 27 }
@___asan_gen_.394 = private unnamed_addr constant [22 x i8] c"exynos5433_reg_values\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 433, i32 27 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1855, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1868, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.419 = private constant [43 x i8] c"../drivers/gpu/drm/exynos/exynos_drm_dsi.c\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1880, i32 3 }
@llvm.compiler.used = appending global [138 x ptr] [ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_author315, ptr @__UNIQUE_ID_description316, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_license318, ptr @exynos_dsi_enable._entry, ptr @exynos_dsi_enable._entry_ptr, ptr @exynos_dsi_enable_clock._entry, ptr @exynos_dsi_enable_clock._entry_ptr, ptr @exynos_dsi_init_link._entry, ptr @exynos_dsi_init_link._entry.45, ptr @exynos_dsi_init_link._entry_ptr, ptr @exynos_dsi_init_link._entry_ptr.47, ptr @exynos_dsi_irq._entry, ptr @exynos_dsi_irq._entry_ptr, ptr @exynos_dsi_of_read_u32._entry, ptr @exynos_dsi_of_read_u32._entry_ptr, ptr @exynos_dsi_probe._entry, ptr @exynos_dsi_probe._entry.13, ptr @exynos_dsi_probe._entry.16, ptr @exynos_dsi_probe._entry_ptr, ptr @exynos_dsi_probe._entry_ptr.15, ptr @exynos_dsi_probe._entry_ptr.19, ptr @exynos_dsi_read_from_fifo._entry, ptr @exynos_dsi_read_from_fifo._entry.64, ptr @exynos_dsi_read_from_fifo._entry_ptr, ptr @exynos_dsi_read_from_fifo._entry_ptr.66, ptr @exynos_dsi_register_te_irq._entry, ptr @exynos_dsi_register_te_irq._entry.27, ptr @exynos_dsi_register_te_irq._entry_ptr, ptr @exynos_dsi_register_te_irq._entry_ptr.29, ptr @exynos_dsi_resume._entry, ptr @exynos_dsi_resume._entry.80, ptr @exynos_dsi_resume._entry_ptr, ptr @exynos_dsi_resume._entry_ptr.82, ptr @exynos_dsi_send_to_fifo._entry, ptr @exynos_dsi_send_to_fifo._entry_ptr, ptr @exynos_dsi_set_pll._entry, ptr @exynos_dsi_set_pll._entry.38, ptr @exynos_dsi_set_pll._entry_ptr, ptr @exynos_dsi_set_pll._entry_ptr.40, ptr @exynos_dsi_suspend._entry, ptr @exynos_dsi_suspend._entry_ptr, ptr @exynos_dsi_transfer._entry, ptr @exynos_dsi_transfer._entry_ptr, ptr @exynos_dsi_wait_for_reset._entry, ptr @exynos_dsi_wait_for_reset._entry_ptr, ptr @.str, ptr @exynos_dsi_of_match, ptr @exynos_dsi_pm_ops, ptr @dsi_driver, ptr @exynos_dsi_probe.__key, ptr @.str.1, ptr @exynos_dsi_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @clk_names, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @exynos_dsi_component_ops, ptr @init_completion.__key, ptr @.str.20, ptr @.str.21, ptr @exynos_dsi_connector_funcs, ptr @.str.22, ptr @exynos_dsi_connector_helper_funcs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @exynos_dsi_irq.j, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @exynos_dsi_encoder_helper_funcs, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @exynos3_dsi_driver_data, ptr @exynos4_dsi_driver_data, ptr @exynos5_dsi_driver_data, ptr @exynos5422_dsi_driver_data, ptr @exynos5433_dsi_driver_data, ptr @exynos_reg_ofs, ptr @reg_values, ptr @exynos5433_reg_ofs, ptr @exynos5422_reg_values, ptr @exynos5433_reg_values, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_register_te_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_register_te_irq._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_enable_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_set_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_set_pll._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_wait_for_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_init_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_init_link._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_send_to_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_irq.j to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_read_from_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_read_from_fifo._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_of_read_u32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos3_dsi_driver_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4_dsi_driver_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_dsi_driver_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5422_dsi_driver_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_dsi_driver_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_reg_ofs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_values to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_reg_ofs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5422_reg_values to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_reg_values to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dsi_resume._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_dsi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1336, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %completed = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 21
  %0 = ptrtoint ptr %completed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %completed, align 4
  %wait.i = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 21, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #8
  %transfer_lock = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %transfer_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @exynos_dsi_probe.__key, i16 noundef signext 3) #8
  %transfer_list = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 23
  %1 = ptrtoint ptr %transfer_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %transfer_list, ptr %transfer_list, align 4
  %prev.i = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 23, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %transfer_list, ptr %prev.i, align 4
  %bridge_chain = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %bridge_chain to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %bridge_chain, ptr %bridge_chain, align 4
  %prev.i165 = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i165 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bridge_chain, ptr %prev.i165, align 4
  %dsi_host = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @exynos_dsi_ops, ptr %ops, align 4
  %6 = ptrtoint ptr %dsi_host to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %dsi_host, align 8
  %dev5 = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %dev5, align 8
  %call6 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %driver_data = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 24
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %driver_data, align 4
  %supplies = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 10
  %9 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.2, ptr %supplies, align 8
  %arrayidx8 = getelementptr %struct.exynos_dsi, ptr %call.i, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.3, ptr %arrayidx8, align 4
  %call11 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call11, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data, align 4
  %num_clks = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_clks, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 4) #8
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !226

devm_kcalloc.exit.thread:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %clks172 = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %clks172 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %clks172, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end15
  %18 = extractvalue { i32, i1 } %15, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %18, i32 noundef 3520) #8
  %clks = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 9
  %19 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i, ptr %clks, align 4
  %tobool19.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool19.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %20 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data, align 4
  %num_clks23178 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %num_clks23178 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_clks23178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp179.not = icmp eq i32 %23, 0
  br i1 %cmp179.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0180 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx24 = getelementptr [5 x ptr], ptr @clk_names, i32 0, i32 %i.0180
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx24, align 4
  %call25 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef %25) #8
  %26 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clks, align 4
  %arrayidx27 = getelementptr ptr, ptr %27, i32 %i.0180
  %28 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call25, ptr %arrayidx27, align 4
  %29 = load ptr, ptr %clks, align 4
  %arrayidx29 = getelementptr ptr, ptr %29, i32 %i.0180
  %30 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx29, align 4
  %cmp.i = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then31:                                        ; preds = %for.body
  %call33 = tail call i32 @strcmp(ptr noundef %25, ptr noundef nonnull dereferenceable(10) @.str.5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.then31.do.end47_crit_edge

if.then31.do.end47_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

if.then35:                                        ; preds = %if.then31
  %call36 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #8
  %32 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clks, align 4
  %arrayidx38 = getelementptr ptr, ptr %33, i32 %i.0180
  %34 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call36, ptr %arrayidx38, align 4
  %35 = load ptr, ptr %clks, align 4
  %arrayidx40 = getelementptr ptr, ptr %35, i32 %i.0180
  %36 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx40, align 4
  %cmp.i166 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %if.then35.do.end47_crit_edge, label %if.then35.for.inc_crit_edge

if.then35.for.inc_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then35.do.end47_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.end47:                                         ; preds = %if.then35.do.end47_crit_edge, %if.then31.do.end47_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %25) #12
  %38 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clks, align 4
  %arrayidx50 = getelementptr ptr, ptr %39, i32 %i.0180
  %40 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx50, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %cleanup

for.inc:                                          ; preds = %if.then35.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0180, 1
  %43 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data, align 4
  %num_clks23 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %num_clks23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_clks23, align 4
  %cmp = icmp ult i32 %inc, %46
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call53 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %reg_base = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 7
  %47 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call53, ptr %reg_base, align 4
  %cmp.i167 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.then56, label %if.end59

if.then56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %call53 to i32
  br label %cleanup

if.end59:                                         ; preds = %for.end
  %call60 = tail call ptr @devm_phy_get(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  %phy = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 8
  %49 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call60, ptr %phy, align 8
  %cmp.i168 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %do.end66, label %if.end69

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14) #12
  %50 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy, align 8
  %52 = ptrtoint ptr %51 to i32
  br label %cleanup

if.end69:                                         ; preds = %if.end59
  %call70 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 11
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call70, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp72 = icmp slt i32 %call70, 0
  br i1 %cmp72, label %if.end69.cleanup_crit_edge, label %if.end75

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end75:                                         ; preds = %if.end69
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end75.dev_name.exit_crit_edge

if.end75.dev_name.exit_crit_edge:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end75.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %57, %if.end.i ], [ %55, %if.end75.dev_name.exit_crit_edge ]
  %call78 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call70, ptr noundef null, ptr noundef nonnull @exynos_dsi_irq, i32 noundef 532480, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end84, label %do.end83

do.end83:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.end84:                                         ; preds = %dev_name.exit
  %58 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev5, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 27
  %60 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %of_node.i, align 8
  %pll_clk_rate.i = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 13
  %call.i.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %61, ptr noundef nonnull @.str.67, ptr noundef %pll_clk_rate.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %exynos_dsi_of_read_u32.exit.thread.i, label %if.end.i169

exynos_dsi_of_read_u32.exit.thread.i:             ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %61, ptr noundef nonnull @.str.67) #12
  br label %cleanup

if.end.i169:                                      ; preds = %if.end84
  %burst_clk_rate.i = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 14
  %call.i.i.i22.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %61, ptr noundef nonnull @.str.68, ptr noundef %burst_clk_rate.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i22.i)
  %cmp.i23.i = icmp slt i32 %call.i.i.i22.i, 0
  br i1 %cmp.i23.i, label %exynos_dsi_of_read_u32.exit26.thread.i, label %if.end5.i

exynos_dsi_of_read_u32.exit26.thread.i:           ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %61, ptr noundef nonnull @.str.68) #12
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i169
  %esc_clk_rate.i = getelementptr inbounds %struct.exynos_dsi, ptr %call.i, i32 0, i32 15
  %call.i.i.i27.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %61, ptr noundef nonnull @.str.69, ptr noundef %esc_clk_rate.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i27.i)
  %cmp.i28.i = icmp slt i32 %call.i.i.i27.i, 0
  br i1 %cmp.i28.i, label %exynos_dsi_parse_dt.exit, label %if.end88

exynos_dsi_parse_dt.exit:                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %61, ptr noundef nonnull @.str.69) #12
  br label %cleanup

if.end88:                                         ; preds = %if.end5.i
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call89 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @exynos_dsi_component_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end88.cleanup_crit_edge, label %err_disable_runtime

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_disable_runtime:                              ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %err_disable_runtime, %if.end88.cleanup_crit_edge, %exynos_dsi_parse_dt.exit, %exynos_dsi_of_read_u32.exit26.thread.i, %exynos_dsi_of_read_u32.exit.thread.i, %do.end83, %if.end69.cleanup_crit_edge, %do.end66, %if.then56, %do.end47, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then13 ], [ %42, %do.end47 ], [ %48, %if.then56 ], [ %52, %do.end66 ], [ %call78, %do.end83 ], [ %call89, %err_disable_runtime ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call70, %if.end69.cleanup_crit_edge ], [ %call.i.i.i27.i, %exynos_dsi_parse_dt.exit ], [ 0, %if.end88.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %call.i.i.i22.i, %exynos_dsi_of_read_u32.exit26.thread.i ], [ %call.i.i.i.i, %exynos_dsi_of_read_u32.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_dsi_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @exynos_dsi_component_ops) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_dsi_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr inbounds %struct.exynos_dsi, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  %driver_data.i = getelementptr inbounds %struct.exynos_dsi, ptr %dev_id, i32 0, i32 24
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 10
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !227
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @printk_timed_ratelimit(ptr noundef nonnull @exynos_dsi_irq.j, i32 noundef 500) #8
  br i1 %call1, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.exynos_dsi, ptr %dev_id, i32 0, i32 6
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.57) #12
  br label %cleanup

if.end3:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %arrayidx.i26 = getelementptr i32, ptr %17, i32 10
  %18 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i26, align 4
  %add.ptr.i27 = getelementptr i8, ptr %13, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %8) #8, !srcloc !230
  %and = and i32 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base.i, align 4
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %arrayidx.i30 = getelementptr i32, ptr %25, i32 11
  %26 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %21, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 -8389745) #8, !srcloc !230
  %completed = getelementptr inbounds %struct.exynos_dsi, ptr %dev_id, i32 0, i32 21
  tail call void @complete(ptr noundef %completed) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %and7 = and i32 %9, -1610350592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call fastcc zeroext i1 @exynos_dsi_transfer_finish(ptr noundef %dev_id)
  br i1 %call11, label %if.then12, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @exynos_dsi_transfer_start(ptr noundef %dev_id)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then5, %do.end, %if.then.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_dsi_host_attach(ptr noundef %host, ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %host, i32 -72
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 1
  %of_node = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 1, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_drm_find_bridge(ptr noundef %3) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @drm_bridge_attach(ptr noundef %add.ptr, ptr noundef nonnull %call, ptr noundef null, i32 noundef 0) #8
  %out_bridge4 = getelementptr i8, ptr %host, i32 1068
  %4 = ptrtoint ptr %out_bridge4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %out_bridge4, align 4
  %bridge_chain = getelementptr i8, ptr %host, i32 -16
  %5 = ptrtoint ptr %bridge_chain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %bridge_chain, align 4
  %cmp.i.not.i = icmp eq ptr %6, %bridge_chain
  br i1 %cmp.i.not.i, label %if.then.if.end19_crit_edge, label %if.then.i

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %bridge_chain5 = getelementptr i8, ptr %host, i32 1060
  %7 = ptrtoint ptr %bridge_chain5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bridge_chain5, align 4
  %prev2.i.i = getelementptr i8, ptr %host, i32 -12
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bridge_chain5, ptr %prev3.i.i, align 4
  store ptr %6, ptr %bridge_chain5, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %10, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev6.i.i, align 4
  %14 = ptrtoint ptr %bridge_chain to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %bridge_chain, ptr %bridge_chain, align 4
  store ptr %bridge_chain, ptr %prev2.i.i, align 4
  br label %if.end19

if.else:                                          ; preds = %entry
  %connector1.i = getelementptr i8, ptr %host, i32 16
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %polled.i = getelementptr i8, ptr %host, i32 716
  %17 = ptrtoint ptr %polled.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %polled.i, align 4
  %call2.i = tail call i32 @drm_connector_init(ptr noundef %16, ptr noundef %connector1.i, ptr noundef nonnull @exynos_dsi_connector_funcs, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then8

if.end.i:                                         ; preds = %if.else
  %status.i = getelementptr i8, ptr %host, i32 192
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %status.i, align 8
  %helper_private.i.i = getelementptr i8, ptr %host, i32 724
  %19 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @exynos_dsi_connector_helper_funcs, ptr %helper_private.i.i, align 4
  %call4.i = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector1.i, ptr noundef %add.ptr) #8
  %registered.i = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 8
  %20 = ptrtoint ptr %registered.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %registered.i, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool5.not.i = icmp eq i8 %21, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end_crit_edge, label %if.end7.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %funcs.i = getelementptr i8, ptr %host, i32 368
  %22 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs.i, align 8
  %reset.i = getelementptr inbounds %struct.drm_connector_funcs, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reset.i, align 4
  tail call void %25(ptr noundef %connector1.i) #8
  %call8.i = tail call i32 @drm_connector_register(ptr noundef %connector1.i) #8
  br label %if.end

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i = getelementptr i8, ptr %host, i32 1072
  %26 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev3.i, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %27, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22) #8
  %28 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev3.i, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.21, i32 noundef %call2.i) #8
  tail call void @drm_encoder_cleanup(ptr noundef %add.ptr) #8
  br label %cleanup47

if.end:                                           ; preds = %if.end7.i, %if.end.i.if.end_crit_edge
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %call12 = tail call ptr @of_drm_find_panel(ptr noundef %31) #8
  %panel = getelementptr i8, ptr %host, i32 1056
  %32 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call12, ptr %panel, align 8
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %panel, align 8
  br label %if.end19

if.else17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %status.i, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15, %if.then.i, %if.then.if.end19_crit_edge
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 6
  %35 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mode_flags, align 8
  %and = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.then21, label %if.end19.if.end31_crit_edge

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then21:                                        ; preds = %if.end19
  %call.i = tail call ptr @gpiod_get_optional(ptr noundef %dev2, ptr noundef nonnull @.str.23, i32 noundef 1) #8
  %te_gpio.i = getelementptr i8, ptr %host, i32 1116
  %37 = ptrtoint ptr %te_gpio.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %te_gpio.i, align 4
  %tobool.not.i86 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i86, label %if.then21.if.end31_crit_edge, label %if.else.i

if.then21.if.end31_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.else.i:                                        ; preds = %if.then21
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %exynos_dsi_register_te_irq.exit, label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i
  %call11.i = tail call i32 @gpiod_to_irq(ptr noundef nonnull %call.i) #8
  %call12.i = tail call i32 @request_threaded_irq(i32 noundef %call11.i, ptr noundef nonnull @exynos_dsi_te_irq_handler, ptr noundef null, i32 noundef 524289, ptr noundef nonnull @.str.26, ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end9.i.if.end31_crit_edge, label %exynos_dsi_register_te_irq.exit.thread90

if.end9.i.if.end31_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

exynos_dsi_register_te_irq.exit.thread90:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev18.i = getelementptr i8, ptr %host, i32 1072
  %38 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev18.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.28, i32 noundef %call12.i) #12
  %40 = ptrtoint ptr %te_gpio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %te_gpio.i, align 4
  tail call void @gpiod_put(ptr noundef %41) #8
  br label %cleanup47

exynos_dsi_register_te_irq.exit:                  ; preds = %if.else.i
  %dev.i = getelementptr i8, ptr %host, i32 1072
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 8
  %44 = ptrtoint ptr %call.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.24, i32 noundef %44) #12
  %45 = ptrtoint ptr %te_gpio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %te_gpio.i, align 4
  %47 = ptrtoint ptr %46 to i32
  %tobool25.not = icmp eq ptr %46, null
  br i1 %tobool25.not, label %exynos_dsi_register_te_irq.exit.if.end31_crit_edge, label %exynos_dsi_register_te_irq.exit.cleanup47_crit_edge

exynos_dsi_register_te_irq.exit.cleanup47_crit_edge: ; preds = %exynos_dsi_register_te_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup47

exynos_dsi_register_te_irq.exit.if.end31_crit_edge: ; preds = %exynos_dsi_register_te_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.end31:                                         ; preds = %exynos_dsi_register_te_irq.exit.if.end31_crit_edge, %if.end9.i.if.end31_crit_edge, %if.then21.if.end31_crit_edge, %if.end19.if.end31_crit_edge
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #8
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 4
  %48 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lanes, align 8
  %lanes32 = getelementptr i8, ptr %host, i32 1132
  %50 = ptrtoint ptr %lanes32 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %lanes32, align 4
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 5
  %51 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %format, align 4
  %format33 = getelementptr i8, ptr %host, i32 1140
  %53 = ptrtoint ptr %format33 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %format33, align 4
  %54 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode_flags, align 8
  %mode_flags35 = getelementptr i8, ptr %host, i32 1136
  %56 = ptrtoint ptr %mode_flags35 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %mode_flags35, align 8
  %call39 = tail call ptr @exynos_drm_crtc_get_by_type(ptr noundef %1, i32 noundef 1) #8
  %i80_mode = getelementptr inbounds %struct.exynos_drm_crtc, ptr %call39, i32 0, i32 5
  %57 = trunc i32 %55 to i8
  %58 = xor i8 %57, -1
  %59 = ptrtoint ptr %i80_mode to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load = load i8, ptr %i80_mode, align 8
  %bf.shl = shl i8 %58, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %i80_mode, align 8
  tail call void @mutex_unlock(ptr noundef %mode_config) #8
  %poll_enabled = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 29
  %60 = ptrtoint ptr %poll_enabled to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %poll_enabled, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool44.not = icmp eq i8 %61, 0
  br i1 %tobool44.not, label %if.end31.cleanup47_crit_edge, label %if.then45

if.end31.cleanup47_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup47

if.then45:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_kms_helper_hotplug_event(ptr noundef %1) #8
  br label %cleanup47

cleanup47:                                        ; preds = %if.then45, %if.end31.cleanup47_crit_edge, %exynos_dsi_register_te_irq.exit.cleanup47_crit_edge, %exynos_dsi_register_te_irq.exit.thread90, %if.then8
  %retval.3 = phi i32 [ %47, %exynos_dsi_register_te_irq.exit.cleanup47_crit_edge ], [ %call2.i, %if.then8 ], [ 0, %if.then45 ], [ 0, %if.end31.cleanup47_crit_edge ], [ %call12.i, %exynos_dsi_register_te_irq.exit.thread90 ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_dsi_host_detach(ptr noundef %host, ptr nocapture noundef readnone %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %host, i32 -72
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %panel = getelementptr i8, ptr %host, i32 1056
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #8
  tail call void @exynos_dsi_disable(ptr noundef %add.ptr)
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %panel, align 8
  %status = getelementptr i8, ptr %host, i32 192
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %status, align 8
  tail call void @mutex_unlock(ptr noundef %mode_config) #8
  br label %if.end12

if.else:                                          ; preds = %entry
  %out_bridge = getelementptr i8, ptr %host, i32 1068
  %6 = ptrtoint ptr %out_bridge to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_bridge, align 4
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 4
  %detach = getelementptr inbounds %struct.drm_bridge_funcs, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %detach to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %detach, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.else.if.end_crit_edge, label %if.then6

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else.if.end_crit_edge
  %12 = ptrtoint ptr %out_bridge to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %out_bridge, align 4
  %bridge_chain = getelementptr i8, ptr %host, i32 1060
  %13 = ptrtoint ptr %bridge_chain to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %bridge_chain, ptr %bridge_chain, align 4
  %prev.i = getelementptr i8, ptr %host, i32 1064
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %bridge_chain, ptr %prev.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %poll_enabled = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 29
  %15 = ptrtoint ptr %poll_enabled to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %poll_enabled, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not = icmp eq i8 %16, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_kms_helper_hotplug_event(ptr noundef %1) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  %te_gpio.i = getelementptr i8, ptr %host, i32 1116
  %17 = ptrtoint ptr %te_gpio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %te_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end16.exynos_dsi_unregister_te_irq.exit_crit_edge, label %if.then.i

if.end16.exynos_dsi_unregister_te_irq.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %exynos_dsi_unregister_te_irq.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @gpiod_to_irq(ptr noundef nonnull %18) #8
  %call2.i = tail call ptr @free_irq(i32 noundef %call.i, ptr noundef %add.ptr) #8
  %19 = ptrtoint ptr %te_gpio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %te_gpio.i, align 4
  tail call void @gpiod_put(ptr noundef %20) #8
  br label %exynos_dsi_unregister_te_irq.exit

exynos_dsi_unregister_te_irq.exit:                ; preds = %if.then.i, %if.end16.exynos_dsi_unregister_te_irq.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_dsi_host_transfer(ptr noundef %host, ptr noundef %msg) #0 align 64 {
entry:
  %xfer = alloca %struct.exynos_dsi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %host, i32 -72
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer) #8
  %0 = call ptr @memset(ptr %xfer, i32 255, i32 96)
  %state = getelementptr i8, ptr %host, i32 1144
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %driver_data1.i = getelementptr i8, ptr %host, i32 1260
  %3 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data1.i, align 4
  %reg_values.i.i = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %reg_values.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_values.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %completed.i.i = getelementptr i8, ptr %host, i32 1152
  %9 = ptrtoint ptr %completed.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %completed.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %reg_base.i.i.i = getelementptr i8, ptr %host, i32 1076
  %11 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i.i.i, align 4
  %13 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data1.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %10) #8, !srcloc !230
  %irq.i.i = getelementptr i8, ptr %host, i32 1112
  %19 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq.i.i, align 8
  tail call void @enable_irq(i32 noundef %20) #8
  %te_gpio.i.i = getelementptr i8, ptr %host, i32 1116
  %21 = ptrtoint ptr %te_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %te_gpio.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.then4.exynos_dsi_enable_irq.exit.i_crit_edge, label %if.then.i.i

if.then4.exynos_dsi_enable_irq.exit.i_crit_edge:  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %exynos_dsi_enable_irq.exit.i

if.then.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @gpiod_to_irq(ptr noundef nonnull %22) #8
  tail call void @enable_irq(i32 noundef %call.i.i) #8
  br label %exynos_dsi_enable_irq.exit.i

exynos_dsi_enable_irq.exit.i:                     ; preds = %if.then.i.i, %if.then4.exynos_dsi_enable_irq.exit.i_crit_edge
  %23 = ptrtoint ptr %reg_values.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_values.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %26)
  %cmp.i = icmp eq i32 %26, 65536
  br i1 %cmp.i, label %if.then.i, label %exynos_dsi_enable_irq.exit.i.if.end.i_crit_edge

exynos_dsi_enable_irq.exit.i.if.end.i_crit_edge:  ; preds = %exynos_dsi_enable_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %exynos_dsi_enable_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %lanes.i = getelementptr i8, ptr %host, i32 1132
  %27 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lanes.i, align 4
  %notmask.i = shl nsw i32 -1, %28
  %sub.i = xor i32 %notmask.i, -1
  %29 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_base.i.i.i, align 4
  %31 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data1.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %arrayidx.i.i2.i = getelementptr i32, ptr %34, i32 4
  %35 = ptrtoint ptr %arrayidx.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i2.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %30, i32 %36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i) #8, !srcloc !227
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %39 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lanes.i, align 4
  %sub.i.i = shl i32 %40, 5
  %and.i.i = add i32 %sub.i.i, 96
  %shl.i.i = and i32 %and.i.i, 96
  %and1.i.i = shl i32 %sub.i, 1
  %shl2.i.i = and i32 %and1.i.i, 30
  %or.i.i = or i32 %shl2.i.i, %38
  %or3.i.i = or i32 %or.i.i, %shl.i.i
  %or4.i.i = or i32 %or3.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %41 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #8
  %42 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base.i.i.i, align 4
  %44 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver_data1.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %arrayidx.i10.i.i = getelementptr i32, ptr %47, i32 4
  %48 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i10.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %43, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %41) #8, !srcloc !230
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %exynos_dsi_enable_irq.exit.i.if.end.i_crit_edge
  tail call fastcc void @exynos_dsi_enable_clock(ptr noundef %add.ptr) #8
  %wait_for_reset.i = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %4, i32 0, i32 5
  %50 = ptrtoint ptr %wait_for_reset.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wait_for_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completed.i.i, i32 noundef 30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i5.i, label %do.end.i.i, label %if.then2.i.if.end3.i_crit_edge

if.then2.i.if.end3.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

do.end.i.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr i8, ptr %host, i32 1072
  %52 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.41) #12
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.end.i.i, %if.then2.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %54 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data1.i, align 4
  %has_freqband.i.i = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %has_freqband.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i.i = load i8, ptr %has_freqband.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i6.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i6.i, label %if.end.i.i, label %if.end3.i.exynos_dsi_set_phy_ctrl.exit.i_crit_edge

if.end3.i.exynos_dsi_set_phy_ctrl.exit.i_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exynos_dsi_set_phy_ctrl.exit.i

if.end.i.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %reg_values2.i.i = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %55, i32 0, i32 7
  %57 = ptrtoint ptr %reg_values2.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_values2.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %58, i32 3
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx3.i.i = getelementptr i32, ptr %58, i32 4
  %61 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx3.i.i, align 4
  %or.i7.i = or i32 %62, %60
  %arrayidx4.i.i = getelementptr i32, ptr %58, i32 5
  %63 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i7.i, %64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %65 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i) #8
  %66 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_base.i.i.i, align 4
  %68 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_data1.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %arrayidx.i.i9.i = getelementptr i32, ptr %71, i32 17
  %72 = ptrtoint ptr %arrayidx.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i9.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %67, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i, i32 %65) #8, !srcloc !230
  %arrayidx6.i.i = getelementptr i32, ptr %58, i32 6
  %74 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx6.i.i, align 4
  %arrayidx7.i.i = getelementptr i32, ptr %58, i32 7
  %76 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %77, %75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %78 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i) #8
  %79 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_base.i.i.i, align 4
  %81 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %driver_data1.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %arrayidx.i44.i.i = getelementptr i32, ptr %84, i32 18
  %85 = ptrtoint ptr %arrayidx.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i44.i.i, align 4
  %add.ptr.i45.i.i = getelementptr i8, ptr %80, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i.i, i32 %78) #8, !srcloc !230
  %arrayidx9.i.i = getelementptr i32, ptr %58, i32 8
  %87 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx10.i.i = getelementptr i32, ptr %58, i32 9
  %89 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx10.i.i, align 4
  %or11.i.i = or i32 %90, %88
  %arrayidx12.i.i = getelementptr i32, ptr %58, i32 10
  %91 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx12.i.i, align 4
  %or13.i.i = or i32 %or11.i.i, %92
  %arrayidx14.i.i = getelementptr i32, ptr %58, i32 11
  %93 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx14.i.i, align 4
  %or15.i.i = or i32 %or13.i.i, %94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %95 = tail call i32 @llvm.bswap.i32(i32 %or15.i.i) #8
  %96 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg_base.i.i.i, align 4
  %98 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %driver_data1.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %arrayidx.i48.i.i = getelementptr i32, ptr %101, i32 19
  %102 = ptrtoint ptr %arrayidx.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i48.i.i, align 4
  %add.ptr.i49.i.i = getelementptr i8, ptr %97, i32 %103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i.i, i32 %95) #8, !srcloc !230
  %arrayidx16.i.i = getelementptr i32, ptr %58, i32 12
  %104 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx16.i.i, align 4
  %arrayidx17.i.i = getelementptr i32, ptr %58, i32 13
  %106 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx17.i.i, align 4
  %or18.i.i = or i32 %107, %105
  %arrayidx19.i.i = getelementptr i32, ptr %58, i32 14
  %108 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx19.i.i, align 4
  %or20.i.i = or i32 %or18.i.i, %109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %110 = tail call i32 @llvm.bswap.i32(i32 %or20.i.i) #8
  %111 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %reg_base.i.i.i, align 4
  %113 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %driver_data1.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %arrayidx.i52.i.i = getelementptr i32, ptr %116, i32 20
  %117 = ptrtoint ptr %arrayidx.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.i52.i.i, align 4
  %add.ptr.i53.i.i = getelementptr i8, ptr %112, i32 %118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i.i, i32 %110) #8, !srcloc !230
  br label %exynos_dsi_set_phy_ctrl.exit.i

exynos_dsi_set_phy_ctrl.exit.i:                   ; preds = %if.end.i.i, %if.end3.i.exynos_dsi_set_phy_ctrl.exit.i_crit_edge
  %119 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %driver_data1.i, align 4
  %121 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %reg_base.i.i.i, align 4
  %123 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %120, align 4
  %arrayidx.i.i13.i = getelementptr i32, ptr %124, i32 15
  %125 = ptrtoint ptr %arrayidx.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.i.i13.i, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %122, i32 %126
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14.i) #8, !srcloc !227
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %and.i15.i = and i32 %128, -32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %129 = tail call i32 @llvm.bswap.i32(i32 %and.i15.i) #8
  %130 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %reg_base.i.i.i, align 4
  %132 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %driver_data1.i, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %arrayidx.i6.i.i = getelementptr i32, ptr %135, i32 15
  %136 = ptrtoint ptr %arrayidx.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx.i6.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %131, i32 %137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %129) #8, !srcloc !230
  tail call void @usleep_range_state(i32 noundef 9000, i32 noundef 11000, i32 noundef 2) #8
  %or.i16.i = or i32 %128, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %138 = tail call i32 @llvm.bswap.i32(i32 %or.i16.i) #8
  %139 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %reg_base.i.i.i, align 4
  %141 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %driver_data1.i, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %arrayidx.i10.i17.i = getelementptr i32, ptr %144, i32 15
  %145 = ptrtoint ptr %arrayidx.i10.i17.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.i10.i17.i, align 4
  %add.ptr.i11.i18.i = getelementptr i8, ptr %140, i32 %146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i18.i, i32 %138) #8, !srcloc !230
  tail call void @usleep_range_state(i32 noundef 9000, i32 noundef 11000, i32 noundef 2) #8
  %mode_flags.i.i = getelementptr i8, ptr %host, i32 1136
  %147 = ptrtoint ptr %mode_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mode_flags.i.i, align 8
  %and2.i.i = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i19.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i19.i, label %entry.if.end51_crit_edge.i.i, label %if.then.i20.i

entry.if.end51_crit_edge.i.i:                     ; preds = %exynos_dsi_set_phy_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %.pre.i.i = shl i32 %148, 19
  br label %if.end51.i.i

if.then.i20.i:                                    ; preds = %exynos_dsi_set_phy_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i.i = and i32 %148, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  %spec.select.i.i = select i1 %tobool6.not.i.i, i32 570425344, i32 33554432
  %and10.i.i = shl i32 %148, 25
  %and22.i.i = shl i32 %148, 21
  %149 = and i32 %and22.i.i, 16777216
  %and28.i.i = shl i32 %148, 19
  %150 = and i32 %and28.i.i, 8388608
  %and34.i.i = shl i32 %148, 17
  %151 = and i32 %and34.i.i, 4194304
  %152 = and i32 %and10.i.i, 201326592
  %and40.i.i = shl i32 %148, 15
  %153 = and i32 %and40.i.i, 2097152
  %and46.i.i = shl i32 %148, 13
  %154 = and i32 %and46.i.i, 1048576
  %155 = or i32 %153, %154
  %156 = or i32 %155, %149
  %157 = or i32 %156, %152
  %158 = or i32 %157, %150
  %159 = or i32 %158, %151
  %160 = or i32 %159, %spec.select.i.i
  %161 = xor i32 %160, 7340032
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then.i20.i, %entry.if.end51_crit_edge.i.i
  %and53.pre-phi.i.i = phi i32 [ %.pre.i.i, %entry.if.end51_crit_edge.i.i ], [ %and28.i.i, %if.then.i20.i ]
  %reg.7.i.i = phi i32 [ 0, %entry.if.end51_crit_edge.i.i ], [ %161, %if.then.i20.i ]
  %format.i.i = getelementptr i8, ptr %host, i32 1140
  %162 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %format.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %163)
  %164 = icmp ult i32 %163, 4
  br i1 %164, label %switch.lookup, label %do.end.i22.i

do.end.i22.i:                                     ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i21.i = getelementptr i8, ptr %host, i32 1072
  %165 = ptrtoint ptr %dev.i21.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev.i21.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.43) #12
  br label %exynos_dsi_init.exit

switch.lookup:                                    ; preds = %if.end51.i.i
  %167 = and i32 %and53.pre-phi.i.i, 268435456
  %168 = xor i32 %167, 268435456
  %169 = or i32 %168, %reg.7.i.i
  %switch.idx.mult = mul i32 %163, -4096
  %switch.offset = add i32 %switch.idx.mult, 28672
  %or64.i.i = or i32 %169, %switch.offset
  %has_clklane_stop.i.i = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %120, i32 0, i32 2
  %170 = ptrtoint ptr %has_clklane_stop.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %bf.load.i23.i = load i8, ptr %has_clklane_stop.i.i, align 4
  %171 = and i8 %bf.load.i23.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool65.not.i.i = icmp eq i8 %171, 0
  %and67.i.i = shl i32 %148, 20
  %172 = and i32 %and67.i.i, 1073741824
  %173 = select i1 %tobool65.not.i.i, i32 0, i32 %172
  %reg.10.i.i = or i32 %or64.i.i, %173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %174 = tail call i32 @llvm.bswap.i32(i32 %reg.10.i.i) #8
  %175 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %reg_base.i.i.i, align 4
  %177 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %driver_data1.i, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 4
  %arrayidx.i14.i.i = getelementptr i32, ptr %180, i32 4
  %181 = ptrtoint ptr %arrayidx.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx.i14.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %176, i32 %182
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i, i32 %174) #8, !srcloc !230
  %lanes.i24.i = getelementptr i8, ptr %host, i32 1132
  %183 = ptrtoint ptr %lanes.i24.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %lanes.i24.i, align 4
  %notmask.i.i = shl nsw i32 -1, %184
  %sub.i25.i = xor i32 %notmask.i.i, -1
  %185 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %reg_base.i.i.i, align 4
  %187 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %driver_data1.i, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %arrayidx.i.i.i.i = getelementptr i32, ptr %190, i32 4
  %191 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %186, i32 %192
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !227
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %195 = ptrtoint ptr %lanes.i24.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %lanes.i24.i, align 4
  %sub.i.i.i = shl i32 %196, 5
  %and.i.i.i = add i32 %sub.i.i.i, 96
  %shl.i.i.i = and i32 %and.i.i.i, 96
  %and1.i.i.i = shl i32 %sub.i25.i, 1
  %shl2.i.i.i = and i32 %and1.i.i.i, 30
  %or.i.i.i = or i32 %shl2.i.i.i, %194
  %or3.i.i.i = or i32 %or.i.i.i, %shl.i.i.i
  %or4.i.i.i = or i32 %or3.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %197 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i.i) #8
  %198 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %reg_base.i.i.i, align 4
  %200 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %driver_data1.i, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %arrayidx.i10.i.i.i = getelementptr i32, ptr %203, i32 4
  %204 = ptrtoint ptr %arrayidx.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx.i10.i.i.i, align 4
  %add.ptr.i11.i.i.i = getelementptr i8, ptr %199, i32 %205
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i.i, i32 %197) #8, !srcloc !230
  br label %do.body72.i.i

do.body72.i.i:                                    ; preds = %if.end78.i.i.do.body72.i.i_crit_edge, %switch.lookup
  %timeout.0.i.i = phi i32 [ 100, %switch.lookup ], [ %dec.i.i, %if.end78.i.i.do.body72.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i)
  %cmp.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %cmp.i.i, label %do.end76.i.i, label %if.end78.i.i

do.end76.i.i:                                     ; preds = %do.body72.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev77.i.i = getelementptr i8, ptr %host, i32 1072
  %206 = ptrtoint ptr %dev77.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev77.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %207, ptr noundef nonnull @.str.46) #12
  br label %exynos_dsi_init.exit

if.end78.i.i:                                     ; preds = %do.body72.i.i
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %208 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %reg_base.i.i.i, align 4
  %210 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %driver_data1.i, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %211, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %213, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %209, i32 %215
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i.i) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %217 = and i32 %216, 327680
  %tobool90.not.i.i = icmp eq i32 %217, 0
  br i1 %tobool90.not.i.i, label %if.end78.i.i.do.body72.i.i_crit_edge, label %do.end91.i.i

if.end78.i.i.do.body72.i.i_crit_edge:             ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body72.i.i

do.end91.i.i:                                     ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %218 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %reg_base.i.i.i, align 4
  %220 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %driver_data1.i, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %arrayidx.i21.i.i = getelementptr i32, ptr %223, i32 5
  %224 = ptrtoint ptr %arrayidx.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx.i21.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %219, i32 %225
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i.i) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %227 = and i32 %226, -57600
  %228 = tail call i32 @llvm.bswap.i32(i32 %227) #8
  %reg_values.i26.i = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %120, i32 0, i32 7
  %229 = ptrtoint ptr %reg_values.i26.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %reg_values.i26.i, align 4
  %arrayidx.i27.i = getelementptr i32, ptr %230, i32 2
  %231 = ptrtoint ptr %arrayidx.i27.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx.i27.i, align 4
  %shl95.i.i = shl i32 %232, 21
  %or96.i.i = or i32 %shl95.i.i, %228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %233 = tail call i32 @llvm.bswap.i32(i32 %or96.i.i) #8
  %234 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %reg_base.i.i.i, align 4
  %236 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %driver_data1.i, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %237, align 4
  %arrayidx.i25.i.i = getelementptr i32, ptr %239, i32 5
  %240 = ptrtoint ptr %arrayidx.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx.i25.i.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %235, i32 %241
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i, i32 %233) #8, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %242 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %reg_base.i.i.i, align 4
  %244 = ptrtoint ptr %driver_data1.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %driver_data1.i, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %245, align 4
  %arrayidx.i29.i.i = getelementptr i32, ptr %247, i32 3
  %248 = ptrtoint ptr %arrayidx.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx.i29.i.i, align 4
  %add.ptr.i30.i.i = getelementptr i8, ptr %243, i32 %249
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i, i32 -256) #8, !srcloc !230
  br label %exynos_dsi_init.exit

exynos_dsi_init.exit:                             ; preds = %do.end91.i.i, %do.end76.i.i, %do.end.i22.i
  %250 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %state, align 8
  %or = or i32 %251, 2
  store i32 %or, ptr %state, align 8
  br label %if.end9

if.end9:                                          ; preds = %exynos_dsi_init.exit, %if.end.if.end9_crit_edge
  %packet = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 3
  %call10 = call i32 @mipi_dsi_create_packet(ptr noundef %packet, ptr noundef %msg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %rx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %252 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %rx_len, align 4
  %conv = trunc i32 %253 to i16
  %rx_len13 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 7
  %254 = ptrtoint ptr %rx_len13 to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %conv, ptr %rx_len13, align 4
  %rx_buf = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %255 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %rx_buf, align 4
  %rx_payload = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 6
  %257 = ptrtoint ptr %rx_payload to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %256, ptr %rx_payload, align 4
  %flags = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 2
  %258 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %flags, align 2
  %flags14 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 4
  %260 = ptrtoint ptr %flags14 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %259, ptr %flags14, align 4
  %tx_done.i = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 5
  %261 = ptrtoint ptr %tx_done.i to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 0, ptr %tx_done.i, align 2
  %rx_done.i = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 8
  %262 = ptrtoint ptr %rx_done.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 0, ptr %rx_done.i, align 2
  %result.i = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 2
  %263 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 -110, ptr %result.i, align 4
  %completed.i = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 1
  %264 = ptrtoint ptr %completed.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %completed.i, align 4
  %wait.i.i = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #8
  %transfer_lock.i = getelementptr i8, ptr %host, i32 1208
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %transfer_lock.i) #8
  %transfer_list.i = getelementptr i8, ptr %host, i32 1252
  %265 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load volatile ptr, ptr %transfer_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %266, %transfer_list.i
  %prev.i.i = getelementptr i8, ptr %host, i32 1256
  %267 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %xfer, ptr noundef %268, ptr noundef %transfer_list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end12.list_add_tail.exit.i_crit_edge

if.end12.list_add_tail.exit.i_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %269 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %xfer, ptr %prev.i.i, align 4
  %270 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %transfer_list.i, ptr %xfer, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %xfer, i32 0, i32 1
  %271 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %268, ptr %prev3.i.i.i, align 4
  %272 = ptrtoint ptr %268 to i32
  call void @__asan_store4_noabort(i32 %272)
  store volatile ptr %xfer, ptr %268, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end12.list_add_tail.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %transfer_lock.i, i32 noundef %call2.i) #8
  br i1 %cmp.i.not.i, label %if.then.i33, label %list_add_tail.exit.i.if.end.i34_crit_edge

list_add_tail.exit.i.if.end.i34_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i34

if.then.i33:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @exynos_dsi_transfer_start(ptr noundef %add.ptr) #8
  br label %if.end.i34

if.end.i34:                                       ; preds = %if.then.i33, %list_add_tail.exit.i.if.end.i34_crit_edge
  %call11.i = call i32 @wait_for_completion_timeout(ptr noundef %completed.i, i32 noundef 10) #8
  %273 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %274)
  %cmp13.i = icmp eq i32 %274, -110
  br i1 %cmp13.i, label %if.then15.i, label %exynos_dsi_transfer.exit

if.then15.i:                                      ; preds = %if.end.i34
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %transfer_lock.i) #8
  %275 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load volatile ptr, ptr %transfer_list.i, align 4
  %cmp.i.i.i = icmp ne ptr %276, %transfer_list.i
  %cmp8.i.i = icmp eq ptr %276, %xfer
  %or.cond.i.i = and i1 %cmp.i.i.i, %cmp8.i.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %xfer) #8
  br i1 %or.cond.i.i, label %if.then.i.i35, label %if.end16.i.i

if.then.i.i35:                                    ; preds = %if.then15.i
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i35.list_del_init.exit.i.i_crit_edge

if.then.i.i35.list_del_init.exit.i.i_crit_edge:   ; preds = %if.then.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %xfer, i32 0, i32 1
  %277 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %prev.i.i.i.i, align 4
  %279 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %xfer, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %280, i32 0, i32 1
  %281 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %278, ptr %prev1.i.i.i.i.i, align 4
  %282 = ptrtoint ptr %278 to i32
  call void @__asan_store4_noabort(i32 %282)
  store volatile ptr %280, ptr %278, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i35.list_del_init.exit.i.i_crit_edge
  %283 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %283)
  store volatile ptr %xfer, ptr %xfer, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %xfer, i32 0, i32 1
  %284 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %xfer, ptr %prev.i3.i.i.i, align 4
  %285 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load volatile ptr, ptr %transfer_list.i, align 4
  %cmp.i29.not.i.i = icmp eq ptr %286, %transfer_list.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %transfer_lock.i, i32 noundef %call2.i.i) #8
  br i1 %cmp.i29.not.i.i, label %list_del_init.exit.i.i.exynos_dsi_transfer.exit.thread_crit_edge, label %if.then15.i.i

list_del_init.exit.i.i.exynos_dsi_transfer.exit.thread_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exynos_dsi_transfer.exit.thread

if.then15.i.i:                                    ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @exynos_dsi_transfer_start(ptr noundef %add.ptr) #8
  br label %exynos_dsi_transfer.exit.thread

if.end16.i.i:                                     ; preds = %if.then15.i
  br i1 %call.i.i.i.i, label %if.end.i.i34.i.i, label %if.end16.i.i.list_del_init.exit36.i.i_crit_edge

if.end16.i.i.list_del_init.exit36.i.i_crit_edge:  ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit36.i.i

if.end.i.i34.i.i:                                 ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i32.i.i = getelementptr inbounds %struct.list_head, ptr %xfer, i32 0, i32 1
  %287 = ptrtoint ptr %prev.i.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %prev.i.i32.i.i, align 4
  %289 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %xfer, align 4
  %prev1.i.i.i33.i.i = getelementptr inbounds %struct.list_head, ptr %290, i32 0, i32 1
  %291 = ptrtoint ptr %prev1.i.i.i33.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %288, ptr %prev1.i.i.i33.i.i, align 4
  %292 = ptrtoint ptr %288 to i32
  call void @__asan_store4_noabort(i32 %292)
  store volatile ptr %290, ptr %288, align 4
  br label %list_del_init.exit36.i.i

list_del_init.exit36.i.i:                         ; preds = %if.end.i.i34.i.i, %if.end16.i.i.list_del_init.exit36.i.i_crit_edge
  %293 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %293)
  store volatile ptr %xfer, ptr %xfer, align 4
  %prev.i3.i35.i.i = getelementptr inbounds %struct.list_head, ptr %xfer, i32 0, i32 1
  %294 = ptrtoint ptr %prev.i3.i35.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %xfer, ptr %prev.i3.i35.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %transfer_lock.i, i32 noundef %call2.i.i) #8
  br label %exynos_dsi_transfer.exit.thread

exynos_dsi_transfer.exit.thread:                  ; preds = %list_del_init.exit36.i.i, %if.then15.i.i, %list_del_init.exit.i.i.exynos_dsi_transfer.exit.thread_crit_edge
  %dev.i = getelementptr i8, ptr %host, i32 1072
  %295 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %dev.i, align 8
  %header.i = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 3, i32 1
  %payload_length.i = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 3, i32 2
  %297 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %payload_length.i, align 4
  %payload.i = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 3, i32 3
  %299 = ptrtoint ptr %payload.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %payload.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %296, ptr noundef nonnull @.str.48, i32 noundef 4, ptr noundef %header.i, i32 noundef %298, ptr noundef %300) #12
  br label %cleanup

exynos_dsi_transfer.exit:                         ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %cmp16 = icmp slt i32 %274, 0
  br i1 %cmp16, label %exynos_dsi_transfer.exit.cleanup_crit_edge, label %cond.false

exynos_dsi_transfer.exit.cleanup_crit_edge:       ; preds = %exynos_dsi_transfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false:                                       ; preds = %exynos_dsi_transfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %301 = ptrtoint ptr %rx_done.i to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %rx_done.i, align 2
  %conv18 = zext i16 %302 to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %exynos_dsi_transfer.exit.cleanup_crit_edge, %exynos_dsi_transfer.exit.thread, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %conv18, %cond.false ], [ %274, %exynos_dsi_transfer.exit.cleanup_crit_edge ], [ -110, %exynos_dsi_transfer.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_crtc_get_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @exynos_dsi_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 18
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_dsi_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_unregister(ptr noundef %connector) #8
  tail call void @drm_connector_cleanup(ptr noundef %connector) #8
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %connector, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_dsi_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr i8, ptr %connector, i32 1040
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @drm_panel_get_modes(ptr noundef nonnull %1, ptr noundef %connector) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_dsi_te_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.exynos_dsi, ptr %dev_id, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %dev_id, i32 0, i32 8
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  tail call void @exynos_drm_crtc_te_handler(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_crtc_te_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_dsi_disable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.exynos_dsi, ptr %encoder, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, -9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and2, ptr %state, align 8
  %panel = getelementptr inbounds %struct.exynos_dsi, ptr %encoder, i32 0, i32 3
  %3 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %panel, align 8
  %call3 = tail call i32 @drm_panel_disable(ptr noundef %4) #8
  %bridge_chain = getelementptr inbounds %struct.exynos_dsi, ptr %encoder, i32 0, i32 4
  %prev = getelementptr inbounds %struct.exynos_dsi, ptr %encoder, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn65 = load ptr, ptr %prev, align 4
  %cmp.not67 = icmp eq ptr %.pn65, %bridge_chain
  br i1 %cmp.not67, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn68 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn65, %if.end.for.body_crit_edge ]
  %funcs = getelementptr i8, ptr %.pn68, i32 24
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %disable = getelementptr inbounds %struct.drm_bridge_funcs, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %iter.069 = getelementptr i8, ptr %.pn68, i32 -132
  tail call void %9(ptr noundef %iter.069) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %prev12 = getelementptr inbounds %struct.list_head, ptr %.pn68, i32 0, i32 1
  %10 = ptrtoint ptr %prev12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %prev12, align 4
  %cmp.not = icmp eq ptr %.pn, %bridge_chain
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %reg_base.i.i = getelementptr inbounds %struct.exynos_dsi, ptr %encoder, i32 0, i32 7
  %11 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.exynos_dsi, ptr %encoder, i32 0, i32 24
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %arrayidx.i.i = getelementptr i32, ptr %16, i32 6
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %18
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %20 = and i32 %19, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base.i.i, align 4
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %arrayidx.i6.i = getelementptr i32, ptr %26, i32 6
  %27 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %22, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %20) #8, !srcloc !230
  %29 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %panel, align 8
  %call16 = tail call i32 @drm_panel_unprepare(ptr noundef %30) #8
  %31 = ptrtoint ptr %bridge_chain to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn6470 = load ptr, ptr %bridge_chain, align 4
  %cmp24.not72 = icmp eq ptr %.pn6470, %bridge_chain
  br i1 %cmp24.not72, label %for.end.for.end39_crit_edge, label %for.end.for.body26_crit_edge

for.end.for.body26_crit_edge:                     ; preds = %for.end
  br label %for.body26

for.end.for.end39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end39

for.body26:                                       ; preds = %for.inc33.for.body26_crit_edge, %for.end.for.body26_crit_edge
  %.pn6473 = phi ptr [ %.pn64, %for.inc33.for.body26_crit_edge ], [ %.pn6470, %for.end.for.body26_crit_edge ]
  %funcs27 = getelementptr i8, ptr %.pn6473, i32 24
  %32 = ptrtoint ptr %funcs27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %funcs27, align 4
  %post_disable = getelementptr inbounds %struct.drm_bridge_funcs, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %post_disable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %post_disable, align 4
  %tobool28.not = icmp eq ptr %35, null
  br i1 %tobool28.not, label %for.body26.for.inc33_crit_edge, label %if.then29

for.body26.for.inc33_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc33

if.then29:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  %iter.174 = getelementptr i8, ptr %.pn6473, i32 -132
  tail call void %35(ptr noundef %iter.174) #8
  br label %for.inc33

for.inc33:                                        ; preds = %if.then29, %for.body26.for.inc33_crit_edge
  %36 = ptrtoint ptr %.pn6473 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn64 = load ptr, ptr %.pn6473, align 4
  %cmp24.not = icmp eq ptr %.pn64, %bridge_chain
  br i1 %cmp24.not, label %for.inc33.for.end39_crit_edge, label %for.inc33.for.body26_crit_edge

for.inc33.for.body26_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26

for.inc33.for.end39_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end39

for.end39:                                        ; preds = %for.inc33.for.end39_crit_edge, %for.end.for.end39_crit_edge
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state, align 8
  %and41 = and i32 %38, -2
  store i32 %and41, ptr %state, align 8
  %dev = getelementptr inbounds %struct.exynos_dsi, ptr %encoder, i32 0, i32 6
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %40, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end39, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_create_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_dsi_enable_clock(ptr nocapture noundef readonly %dsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %burst_clk_rate = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 14
  %0 = ptrtoint ptr %burst_clk_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %burst_clk_rate, align 4
  %call = tail call fastcc i32 @exynos_dsi_set_pll(ptr noundef %dsi, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.30) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %div1 = lshr i32 %call, 3
  %esc_clk_rate = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 15
  %4 = ptrtoint ptr %esc_clk_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %esc_clk_rate, align 8
  %add = add nsw i32 %div1, -1
  %sub = add i32 %add, %5
  %div2 = udiv i32 %sub, %5
  %div3 = udiv i32 %div1, %div2
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %div3)
  %cmp = icmp ugt i32 %div3, 20000000
  br i1 %cmp, label %if.then4, label %if.end.do.body7_crit_edge

if.end.do.body7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %div2, 1
  %div5 = udiv i32 %div1, %inc
  br label %do.body7

do.body7:                                         ; preds = %if.then4, %if.end.do.body7_crit_edge
  %esc_clk.0 = phi i32 [ %div5, %if.then4 ], [ %div3, %if.end.do.body7_crit_edge ]
  %esc_div.0 = phi i32 [ %inc, %if.then4 ], [ %div2, %if.end.do.body7_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_dsi_enable_clock.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_dsi_enable_clock, %if.then12)) #8
          to label %do.end16 [label %if.then12], !srcloc !232

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %dev13 = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 6
  %6 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev13, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos_dsi_enable_clock.__UNIQUE_ID_ddebug310, ptr noundef %7, ptr noundef nonnull @.str.33, i32 noundef %call, i32 noundef %div1, i32 noundef %esc_clk.0) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body7
  %reg_base.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 7
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  %driver_data.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 24
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %arrayidx.i = getelementptr i32, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %17 = and i32 %16, 1888
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %and18 = and i32 %esc_div.0, 65535
  %lanes = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 16
  %19 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lanes, align 4
  %sub21 = shl i32 -1048576, %20
  %and22 = and i32 %sub21, 15728640
  %or19 = or i32 %and18, %18
  %21 = or i32 %or19, %and22
  %or27 = xor i32 %21, -1846018048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %or27) #8
  %23 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i, align 4
  %25 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %arrayidx.i4 = getelementptr i32, ptr %28, i32 2
  %29 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %24, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %22) #8, !srcloc !230
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos_dsi_set_pll(ptr nocapture noundef readonly %dsi, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data1 = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 24
  %0 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data1, align 4
  %pll_clk_rate = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 13
  %2 = ptrtoint ptr %pll_clk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pll_clk_rate, align 8
  %sub.i = add i32 %3, 11999999
  %div.i = udiv i32 %sub.i, 12000000
  %div2.i = udiv i32 %3, 6000000
  %conv5.i = and i32 %div2.i, 255
  %conv41102.i = and i32 %div.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %conv41102.i)
  %cmp.not1103.i = icmp ult i32 %conv5.i, %conv41102.i
  br i1 %cmp.not1103.i, label %entry.cleanup.sink.split_crit_edge, label %for.cond7.preheader.lr.ph.i

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.cond7.preheader.lr.ph.i:                      ; preds = %entry
  %conv.i = trunc i32 %div.i to i8
  %conv12.i = zext i32 %freq to i64
  %conv49.i = zext i32 %3 to i64
  %max_freq.i = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %1, i32 0, i32 4
  %4 = trunc i32 %div2.i to i8
  br label %for.cond7.preheader.i

for.cond7.preheader.i:                            ; preds = %for.inc691.i.for.cond7.preheader.i_crit_edge, %for.cond7.preheader.lr.ph.i
  %conv41110.i = phi i32 [ %conv41102.i, %for.cond7.preheader.lr.ph.i ], [ %conv4.i, %for.inc691.i.for.cond7.preheader.i_crit_edge ]
  %best_freq.01109.i = phi i32 [ 0, %for.cond7.preheader.lr.ph.i ], [ %best_freq.3.i, %for.inc691.i.for.cond7.preheader.i_crit_edge ]
  %min_delta.01108.i = phi i32 [ -1, %for.cond7.preheader.lr.ph.i ], [ %min_delta.3.i, %for.inc691.i.for.cond7.preheader.i_crit_edge ]
  %_p.01107.i = phi i8 [ %conv.i, %for.cond7.preheader.lr.ph.i ], [ %inc692.i, %for.inc691.i.for.cond7.preheader.i_crit_edge ]
  %best_p.01106.i = phi i8 [ -1, %for.cond7.preheader.lr.ph.i ], [ %best_p.3.i, %for.inc691.i.for.cond7.preheader.i_crit_edge ]
  %best_s.01105.i = phi i8 [ -1, %for.cond7.preheader.lr.ph.i ], [ %best_s.3.i, %for.inc691.i.for.cond7.preheader.i_crit_edge ]
  %best_m.01104.i = phi i16 [ -1, %for.cond7.preheader.lr.ph.i ], [ %best_m.3.i, %for.inc691.i.for.cond7.preheader.i_crit_edge ]
  br label %for.body11.i

for.body11.i:                                     ; preds = %cleanup.i.for.body11.i_crit_edge, %for.cond7.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.cond7.preheader.i ], [ %indvars.iv.next.i, %cleanup.i.for.body11.i_crit_edge ]
  %best_freq.11101.i = phi i32 [ %best_freq.01109.i, %for.cond7.preheader.i ], [ %best_freq.3.i, %cleanup.i.for.body11.i_crit_edge ]
  %min_delta.11100.i = phi i32 [ %min_delta.01108.i, %for.cond7.preheader.i ], [ %min_delta.3.i, %cleanup.i.for.body11.i_crit_edge ]
  %best_p.11099.i = phi i8 [ %best_p.01106.i, %for.cond7.preheader.i ], [ %best_p.3.i, %cleanup.i.for.body11.i_crit_edge ]
  %best_s.11098.i = phi i8 [ %best_s.01105.i, %for.cond7.preheader.i ], [ %best_s.3.i, %cleanup.i.for.body11.i_crit_edge ]
  %best_m.11095.i = phi i16 [ %best_m.01104.i, %for.cond7.preheader.i ], [ %best_m.3.i, %cleanup.i.for.body11.i_crit_edge ]
  %shl.i = shl i32 %conv41110.i, %indvars.iv.i
  %5 = zext i32 %shl.i to i64
  %mul.i = mul nuw i64 %5, %conv12.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp188.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp188.i, label %if.then192.i, label %if.else198.i, !prof !233

if.then192.i:                                     ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv193.i = trunc i64 %mul.i to i32
  %div196.i = udiv i32 %conv193.i, %3
  %conv197.i = zext i32 %div196.i to i64
  br label %if.end202.i

if.else198.i:                                     ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %mul.i) #13, !srcloc !234
  %asmresult1.i.i = extractvalue { i64, i64 } %6, 1
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.else198.i, %if.then192.i
  %tmp.0.i = phi i64 [ %conv197.i, %if.then192.i ], [ %asmresult1.i.i, %if.else198.i ]
  %conv204.i = trunc i64 %tmp.0.i to i16
  %7 = trunc i64 %tmp.0.i to i32
  %conv205.i = and i32 %7, 65535
  %8 = add nsw i32 %conv205.i, -126
  call void @__sanitizer_cov_trace_const_cmp4(i32 -85, i32 %8)
  %9 = icmp ult i32 %8, -85
  br i1 %9, label %if.end202.i.cleanup.i_crit_edge, label %if.end212.i

if.end202.i.cleanup.i_crit_edge:                  ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end212.i:                                      ; preds = %if.end202.i
  %conv213.i = and i64 %tmp.0.i, 65535
  %mul215.i = mul nuw nsw i64 %conv213.i, %conv49.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul215.i)
  %cmp418.i = icmp ult i64 %mul215.i, 4294967296
  br i1 %cmp418.i, label %if.then426.i, label %if.else432.i, !prof !233

if.then426.i:                                     ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv427.i = trunc i64 %mul215.i to i32
  %div430.i = udiv i32 %conv427.i, %conv41110.i
  %conv431.i = zext i32 %div430.i to i64
  br label %if.end436.i

if.else432.i:                                     ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv41110.i, i64 %mul215.i) #13, !srcloc !234
  %asmresult1.i996.i = extractvalue { i64, i64 } %10, 1
  br label %if.end436.i

if.end436.i:                                      ; preds = %if.else432.i, %if.then426.i
  %tmp.1.i = phi i64 [ %conv431.i, %if.then426.i ], [ %asmresult1.i996.i, %if.else432.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 500000000, i64 %tmp.1.i)
  %cmp438.i = icmp ult i64 %tmp.1.i, 500000000
  br i1 %cmp438.i, label %if.end436.i.cleanup.i_crit_edge, label %lor.lhs.false440.i

if.end436.i.cleanup.i_crit_edge:                  ; preds = %if.end436.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false440.i:                               ; preds = %if.end436.i
  %11 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_freq.i, align 4
  %mul441.i = mul i32 %12, 1000000
  %conv442.i = zext i32 %mul441.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %tmp.1.i, i64 %conv442.i)
  %cmp443.i = icmp ugt i64 %tmp.1.i, %conv442.i
  br i1 %cmp443.i, label %lor.lhs.false440.i.cleanup.i_crit_edge, label %if.else652.i

lor.lhs.false440.i.cleanup.i_crit_edge:           ; preds = %lor.lhs.false440.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.else652.i:                                     ; preds = %lor.lhs.false440.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul215.i)
  %cmp654.i = icmp ult i64 %mul215.i, 4294967296
  br i1 %cmp654.i, label %if.then662.i, label %if.else668.i, !prof !233

if.then662.i:                                     ; preds = %if.else652.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv663.i = trunc i64 %mul215.i to i32
  %div666.i = udiv i32 %conv663.i, %shl.i
  %conv667.i = zext i32 %div666.i to i64
  br label %if.end672.i

if.else668.i:                                     ; preds = %if.else652.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl.i, i64 %mul215.i) #13, !srcloc !234
  %asmresult1.i1021.i = extractvalue { i64, i64 } %13, 1
  br label %if.end672.i

if.end672.i:                                      ; preds = %if.else668.i, %if.then662.i
  %tmp.2.i = phi i64 [ %conv667.i, %if.then662.i ], [ %asmresult1.i1021.i, %if.else668.i ]
  %sub675.i = sub i64 %conv12.i, %tmp.2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub675.i)
  %cmp677.i = icmp slt i64 %sub675.i, 0
  %14 = trunc i64 %sub675.i to i32
  %extract.t.i = sub i32 0, %14
  %cond683.off0.i = select i1 %cmp677.i, i32 %extract.t.i, i32 %14
  call void @__sanitizer_cov_trace_cmp4(i32 %cond683.off0.i, i32 %min_delta.11100.i)
  %cmp685.i = icmp ult i32 %cond683.off0.i, %min_delta.11100.i
  br i1 %cmp685.i, label %if.then687.i, label %if.end672.i.cleanup.i_crit_edge

if.end672.i.cleanup.i_crit_edge:                  ; preds = %if.end672.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then687.i:                                     ; preds = %if.end672.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv688.i = trunc i64 %tmp.2.i to i32
  %15 = trunc i32 %indvars.iv.i to i8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then687.i, %if.end672.i.cleanup.i_crit_edge, %lor.lhs.false440.i.cleanup.i_crit_edge, %if.end436.i.cleanup.i_crit_edge, %if.end202.i.cleanup.i_crit_edge
  %best_m.3.i = phi i16 [ %best_m.11095.i, %if.end202.i.cleanup.i_crit_edge ], [ %best_m.11095.i, %lor.lhs.false440.i.cleanup.i_crit_edge ], [ %best_m.11095.i, %if.end436.i.cleanup.i_crit_edge ], [ %conv204.i, %if.then687.i ], [ %best_m.11095.i, %if.end672.i.cleanup.i_crit_edge ]
  %best_s.3.i = phi i8 [ %best_s.11098.i, %if.end202.i.cleanup.i_crit_edge ], [ %best_s.11098.i, %lor.lhs.false440.i.cleanup.i_crit_edge ], [ %best_s.11098.i, %if.end436.i.cleanup.i_crit_edge ], [ %15, %if.then687.i ], [ %best_s.11098.i, %if.end672.i.cleanup.i_crit_edge ]
  %best_p.3.i = phi i8 [ %best_p.11099.i, %if.end202.i.cleanup.i_crit_edge ], [ %best_p.11099.i, %lor.lhs.false440.i.cleanup.i_crit_edge ], [ %best_p.11099.i, %if.end436.i.cleanup.i_crit_edge ], [ %_p.01107.i, %if.then687.i ], [ %best_p.11099.i, %if.end672.i.cleanup.i_crit_edge ]
  %min_delta.3.i = phi i32 [ %min_delta.11100.i, %if.end202.i.cleanup.i_crit_edge ], [ %min_delta.11100.i, %lor.lhs.false440.i.cleanup.i_crit_edge ], [ %min_delta.11100.i, %if.end436.i.cleanup.i_crit_edge ], [ %cond683.off0.i, %if.then687.i ], [ %min_delta.11100.i, %if.end672.i.cleanup.i_crit_edge ]
  %best_freq.3.i = phi i32 [ %best_freq.11101.i, %if.end202.i.cleanup.i_crit_edge ], [ %best_freq.11101.i, %lor.lhs.false440.i.cleanup.i_crit_edge ], [ %best_freq.11101.i, %if.end436.i.cleanup.i_crit_edge ], [ %conv688.i, %if.then687.i ], [ %best_freq.11101.i, %if.end672.i.cleanup.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 6
  br i1 %exitcond.not.i, label %for.inc691.i, label %cleanup.i.for.body11.i_crit_edge

cleanup.i.for.body11.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11.i

for.inc691.i:                                     ; preds = %cleanup.i
  %inc692.i = add i8 %_p.01107.i, 1
  %conv4.i = zext i8 %inc692.i to i32
  %cmp.not.i = icmp ugt i8 %inc692.i, %4
  br i1 %cmp.not.i, label %for.end693.i, label %for.inc691.i.for.cond7.preheader.i_crit_edge

for.inc691.i.for.cond7.preheader.i_crit_edge:     ; preds = %for.inc691.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond7.preheader.i

for.end693.i:                                     ; preds = %for.inc691.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_freq.3.i)
  %tobool694.not.i = icmp eq i32 %best_freq.3.i, 0
  br i1 %tobool694.not.i, label %for.end693.i.cleanup.sink.split_crit_edge, label %do.body2

for.end693.i.cleanup.sink.split_crit_edge:        ; preds = %for.end693.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body2:                                         ; preds = %for.end693.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_dsi_set_pll.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_dsi_set_pll, %if.then7)) #8
          to label %do.body14 [label %if.then7], !srcloc !232

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 6
  %16 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev8, align 8
  %conv = zext i8 %best_p.3.i to i32
  %conv9 = zext i16 %best_m.3.i to i32
  %conv10 = zext i8 %best_s.3.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos_dsi_set_pll.__UNIQUE_ID_ddebug308, ptr noundef %17, ptr noundef nonnull @.str.36, i32 noundef %best_freq.3.i, i32 noundef %conv, i32 noundef %conv9, i32 noundef %conv10) #8
  br label %do.body14

do.body14:                                        ; preds = %if.then7, %do.body2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void @arm_heavy_mb() #8
  %reg_values = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %reg_values to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_values, align 4
  %arrayidx = getelementptr i32, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %reg_base = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 7
  %23 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base, align 4
  %plltmr_reg = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %plltmr_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %plltmr_reg, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #8, !srcloc !230
  %conv17 = zext i8 %best_p.3.i to i32
  %shl = shl nuw nsw i32 %conv17, 13
  %conv18 = zext i16 %best_m.3.i to i32
  %shl19 = shl nuw nsw i32 %conv18, 4
  %conv21 = zext i8 %best_s.3.i to i32
  %shl22 = shl nuw nsw i32 %conv21, 1
  %or = or i32 %shl19, %shl22
  %or20 = or i32 %or, %shl
  %or23 = or i32 %or20, 8388608
  %has_freqband = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %has_freqband to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %has_freqband, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool24.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool24.not, label %do.body14.if.end51_crit_edge, label %for.body.preheader

do.body14.if.end51_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

for.body.preheader:                               ; preds = %do.body14
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %best_freq.3.i)
  %cmp28 = icmp ult i32 %best_freq.3.i, 100000000
  br i1 %cmp28, label %for.body.preheader.do.body32_crit_edge, label %for.inc

for.body.preheader.do.body32_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.inc:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 120000000, i32 %best_freq.3.i)
  %cmp28.1 = icmp ult i32 %best_freq.3.i, 120000000
  br i1 %cmp28.1, label %for.inc.do.body32_crit_edge, label %for.inc.1

for.inc.do.body32_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000000, i32 %best_freq.3.i)
  %cmp28.2 = icmp ult i32 %best_freq.3.i, 160000000
  br i1 %cmp28.2, label %for.inc.1.do.body32_crit_edge, label %for.inc.2

for.inc.1.do.body32_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %best_freq.3.i)
  %cmp28.3 = icmp ult i32 %best_freq.3.i, 200000000
  br i1 %cmp28.3, label %for.inc.2.do.body32_crit_edge, label %for.inc.3

for.inc.2.do.body32_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 270000000, i32 %best_freq.3.i)
  %cmp28.4 = icmp ult i32 %best_freq.3.i, 270000000
  br i1 %cmp28.4, label %for.inc.3.do.body32_crit_edge, label %for.inc.4

for.inc.3.do.body32_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 320000000, i32 %best_freq.3.i)
  %cmp28.5 = icmp ult i32 %best_freq.3.i, 320000000
  br i1 %cmp28.5, label %for.inc.4.do.body32_crit_edge, label %for.inc.5

for.inc.4.do.body32_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 390000000, i32 %best_freq.3.i)
  %cmp28.6 = icmp ult i32 %best_freq.3.i, 390000000
  br i1 %cmp28.6, label %for.inc.5.do.body32_crit_edge, label %for.inc.6

for.inc.5.do.body32_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 450000000, i32 %best_freq.3.i)
  %cmp28.7 = icmp ult i32 %best_freq.3.i, 450000000
  br i1 %cmp28.7, label %for.inc.6.do.body32_crit_edge, label %for.inc.7

for.inc.6.do.body32_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 510000000, i32 %best_freq.3.i)
  %cmp28.8 = icmp ult i32 %best_freq.3.i, 510000000
  br i1 %cmp28.8, label %for.inc.7.do.body32_crit_edge, label %for.inc.8

for.inc.7.do.body32_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 560000000, i32 %best_freq.3.i)
  %cmp28.9 = icmp ult i32 %best_freq.3.i, 560000000
  br i1 %cmp28.9, label %for.inc.8.do.body32_crit_edge, label %for.inc.9

for.inc.8.do.body32_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.inc.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640000000, i32 %best_freq.3.i)
  %cmp28.10 = icmp ult i32 %best_freq.3.i, 640000000
  br i1 %cmp28.10, label %for.inc.9.do.body32_crit_edge, label %for.inc.10

for.inc.9.do.body32_crit_edge:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.inc.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 690000000, i32 %best_freq.3.i)
  %cmp28.11 = icmp ult i32 %best_freq.3.i, 690000000
  br i1 %cmp28.11, label %for.inc.10.do.body32_crit_edge, label %for.inc.11

for.inc.10.do.body32_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.inc.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 770000000, i32 %best_freq.3.i)
  %cmp28.12 = icmp ult i32 %best_freq.3.i, 770000000
  br i1 %cmp28.12, label %for.inc.11.do.body32_crit_edge, label %for.inc.12

for.inc.11.do.body32_crit_edge:                   ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.inc.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 870000000, i32 %best_freq.3.i)
  %cmp28.13 = icmp ult i32 %best_freq.3.i, 870000000
  br i1 %cmp28.13, label %for.inc.12.do.body32_crit_edge, label %for.inc.13

for.inc.12.do.body32_crit_edge:                   ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.inc.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 950000000, i32 %best_freq.3.i)
  %cmp28.14 = icmp ult i32 %best_freq.3.i, 950000000
  %spec.select = select i1 %cmp28.14, i32 14, i32 15
  br label %do.body32

do.body32:                                        ; preds = %for.inc.13, %for.inc.12.do.body32_crit_edge, %for.inc.11.do.body32_crit_edge, %for.inc.10.do.body32_crit_edge, %for.inc.9.do.body32_crit_edge, %for.inc.8.do.body32_crit_edge, %for.inc.7.do.body32_crit_edge, %for.inc.6.do.body32_crit_edge, %for.inc.5.do.body32_crit_edge, %for.inc.4.do.body32_crit_edge, %for.inc.3.do.body32_crit_edge, %for.inc.2.do.body32_crit_edge, %for.inc.1.do.body32_crit_edge, %for.inc.do.body32_crit_edge, %for.body.preheader.do.body32_crit_edge
  %band.0.lcssa = phi i32 [ 0, %for.body.preheader.do.body32_crit_edge ], [ 1, %for.inc.do.body32_crit_edge ], [ 2, %for.inc.1.do.body32_crit_edge ], [ 3, %for.inc.2.do.body32_crit_edge ], [ 4, %for.inc.3.do.body32_crit_edge ], [ 5, %for.inc.4.do.body32_crit_edge ], [ 6, %for.inc.5.do.body32_crit_edge ], [ 7, %for.inc.6.do.body32_crit_edge ], [ 8, %for.inc.7.do.body32_crit_edge ], [ 9, %for.inc.8.do.body32_crit_edge ], [ 10, %for.inc.9.do.body32_crit_edge ], [ 11, %for.inc.10.do.body32_crit_edge ], [ 12, %for.inc.11.do.body32_crit_edge ], [ 13, %for.inc.12.do.body32_crit_edge ], [ %spec.select, %for.inc.13 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_dsi_set_pll.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_dsi_set_pll, %if.then44)) #8
          to label %do.end48 [label %if.then44], !srcloc !232

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %dev45 = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 6
  %28 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev45, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos_dsi_set_pll.__UNIQUE_ID_ddebug309, ptr noundef %29, ptr noundef nonnull @.str.37, i32 noundef %band.0.lcssa) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %do.body32
  %shl49 = shl nuw nsw i32 %band.0.lcssa, 24
  %or50 = or i32 %shl49, %or23
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %do.body14.if.end51_crit_edge
  %reg.0 = phi i32 [ %or50, %do.end48 ], [ %or23, %do.body14.if.end51_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #8
  %31 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base, align 4
  %33 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data1, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %arrayidx.i = getelementptr i32, ptr %36, i32 16
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %30) #8, !srcloc !230
  br label %do.body52

do.body52:                                        ; preds = %if.end60.do.body52_crit_edge, %if.end51
  %timeout.0 = phi i32 [ 1000, %if.end51 ], [ %dec, %if.end60.do.body52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %cmp53 = icmp eq i32 %timeout.0, 0
  br i1 %cmp53, label %do.body52.cleanup.sink.split_crit_edge, label %if.end60

do.body52.cleanup.sink.split_crit_edge:           ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end60:                                         ; preds = %do.body52
  %dec = add nsw i32 %timeout.0, -1
  %39 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_base, align 4
  %41 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data1, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add.ptr.i98 = getelementptr i8, ptr %40, i32 %46
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %.mask = and i32 %47, 128
  %cmp63 = icmp eq i32 %.mask, 0
  br i1 %cmp63, label %if.end60.do.body52_crit_edge, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end60.do.body52_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body52

cleanup.sink.split:                               ; preds = %do.body52.cleanup.sink.split_crit_edge, %for.end693.i.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.39.sink = phi ptr [ @.str.34, %for.end693.i.cleanup.sink.split_crit_edge ], [ @.str.34, %entry.cleanup.sink.split_crit_edge ], [ @.str.39, %do.body52.cleanup.sink.split_crit_edge ]
  %dev59 = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 6
  %48 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev59, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull %.str.39.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end60.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cleanup.sink.split ], [ %best_freq.3.i, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_dsi_transfer_start(ptr noundef %dsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_lock = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 22
  %transfer_list = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 23
  br label %again

again:                                            ; preds = %list_del_init.exit.again_crit_edge, %entry
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %transfer_lock) #8
  %0 = ptrtoint ptr %transfer_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %transfer_list, align 4
  %cmp.i.not = icmp eq ptr %1, %transfer_list
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %transfer_lock, i32 noundef %call2) #8
  br i1 %cmp.i.not, label %again.cleanup_crit_edge, label %if.end

again.cleanup_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %again
  %payload_length = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %payload_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %payload_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %if.end.if.end17_crit_edge, label %land.lhs.true

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %tx_done = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %tx_done to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_done, align 2
  %conv11 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv11)
  %cmp14 = icmp eq i32 %3, %conv11
  br i1 %cmp14, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  tail call fastcc void @exynos_dsi_send_to_fifo(ptr noundef %dsi, ptr noundef %1)
  %6 = ptrtoint ptr %payload_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %payload_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool20.not = icmp eq i32 %7, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end17
  %rx_len = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %rx_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool22.not = icmp eq i16 %9, 0
  br i1 %tobool22.not, label %if.end24, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %result = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %result, align 4
  %completed = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 1
  tail call void @complete(ptr noundef %completed) #8
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %transfer_lock) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end24.list_del_init.exit_crit_edge

if.end24.list_del_init.exit_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end24.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %prev.i3.i, align 4
  %19 = ptrtoint ptr %transfer_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %transfer_list, align 4
  %cmp.i66.not = icmp eq ptr %20, %transfer_list
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %transfer_lock, i32 noundef %call34) #8
  br i1 %cmp.i66.not, label %list_del_init.exit.cleanup_crit_edge, label %list_del_init.exit.again_crit_edge

list_del_init.exit.again_crit_edge:               ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %again

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %again.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_dsi_send_to_fifo(ptr nocapture noundef %dsi, ptr noundef %xfer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 6
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %payload2 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %payload2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %payload2, align 4
  %tx_done = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 5
  %4 = ptrtoint ptr %tx_done to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_done, align 2
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %payload_length = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %payload_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %payload_length, align 4
  %8 = trunc i32 %7 to i16
  %conv5 = sub i16 %8, %5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_dsi_send_to_fifo.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_dsi_send_to_fifo, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !232

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv12 = zext i16 %conv5 to i32
  %9 = ptrtoint ptr %tx_done to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tx_done, align 2
  %conv14 = zext i16 %10 to i32
  %rx_len = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 7
  %11 = ptrtoint ptr %rx_len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rx_len, align 4
  %conv15 = zext i16 %12 to i32
  %rx_done = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 8
  %13 = ptrtoint ptr %rx_done to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rx_done, align 2
  %conv16 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos_dsi_send_to_fifo.__UNIQUE_ID_ddebug312, ptr noundef %1, ptr noundef nonnull @.str.51, ptr noundef %xfer, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %conv16) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %15 = tail call i16 @llvm.umin.i16(i16 %conv5, i16 2048)
  %16 = ptrtoint ptr %tx_done to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tx_done, align 2
  %add = add i16 %17, %15
  store i16 %add, ptr %tx_done, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %15)
  %cmp26138 = icmp ugt i16 %15, 3
  br i1 %cmp26138, label %while.body.lr.ph, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %reg_base.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 7
  %driver_data.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 24
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %length.0140 = phi i16 [ %15, %while.body.lr.ph ], [ %sub31, %while.body.while.body_crit_edge ]
  %payload.0139 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr29, %while.body.while.body_crit_edge ]
  %18 = ptrtoint ptr %payload.0139 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %payload.0139, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base.i, align 4
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %arrayidx.i = getelementptr i32, ptr %25, i32 13
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #8, !srcloc !230
  %add.ptr29 = getelementptr i8, ptr %payload.0139, i32 4
  %sub31 = add i16 %length.0140, -4
  %cmp26 = icmp ugt i16 %sub31, 3
  br i1 %cmp26, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  %payload.0.lcssa = phi ptr [ %add.ptr, %do.end.while.end_crit_edge ], [ %add.ptr29, %while.body.while.end_crit_edge ]
  %length.0.lcssa = phi i16 [ %15, %do.end.while.end_crit_edge ], [ %sub31, %while.body.while.end_crit_edge ]
  %28 = zext i16 %length.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i16 %length.0.lcssa, label %while.end.sw.epilog_crit_edge [
    i16 3, label %sw.bb
    i16 2, label %while.end.sw.bb35_crit_edge
    i16 1, label %while.end.sw.bb40_crit_edge
  ]

while.end.sw.bb40_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40

while.end.sw.bb35_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb35

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %payload.0.lcssa, i32 2
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %conv34 = zext i8 %30 to i32
  %shl = shl nuw nsw i32 %conv34, 16
  br label %sw.bb35

sw.bb35:                                          ; preds = %sw.bb, %while.end.sw.bb35_crit_edge
  %reg.0 = phi i32 [ 0, %while.end.sw.bb35_crit_edge ], [ %shl, %sw.bb ]
  %arrayidx36 = getelementptr i8, ptr %payload.0.lcssa, i32 1
  %31 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %32 to i32
  %shl38 = shl nuw nsw i32 %conv37, 8
  %or39 = or i32 %shl38, %reg.0
  br label %sw.bb40

sw.bb40:                                          ; preds = %sw.bb35, %while.end.sw.bb40_crit_edge
  %reg.1 = phi i32 [ 0, %while.end.sw.bb40_crit_edge ], [ %or39, %sw.bb35 ]
  %33 = ptrtoint ptr %payload.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %payload.0.lcssa, align 1
  %conv42 = zext i8 %34 to i32
  %or43 = or i32 %reg.1, %conv42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %or43) #8
  %reg_base.i119 = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 7
  %36 = ptrtoint ptr %reg_base.i119 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base.i119, align 4
  %driver_data.i120 = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 24
  %38 = ptrtoint ptr %driver_data.i120 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i120, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %arrayidx.i121 = getelementptr i32, ptr %41, i32 13
  %42 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i121, align 4
  %add.ptr.i122 = getelementptr i8, ptr %37, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %35) #8, !srcloc !230
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb40, %while.end.sw.epilog_crit_edge
  br i1 %tobool.not, label %if.end46, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %sw.epilog
  %header = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %header to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %header, align 1
  %reg_base.i.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 7
  %driver_data.i.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 24
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end46
  %timeout.0.i = phi i32 [ 2000, %if.end46 ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  %46 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base.i.i, align 4
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_data.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %arrayidx.i.i = getelementptr i32, ptr %51, i32 15
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 %53
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %55 = and i32 %54, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i, label %if.end54, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 932, i32 noundef 0) #8
  %call.i.i = tail call i32 @__cond_resched() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.do.cond.i_crit_edge

if.end.i.do.cond.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 950, i32 noundef 1050, i32 noundef 2) #8
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then3.i, %if.end.i.do.cond.i_crit_edge
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %do.end53, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end53:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.52) #12
  br label %cleanup

if.end54:                                         ; preds = %do.body.i
  %flags = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %xfer, i32 0, i32 4
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %flags, align 4
  %58 = and i16 %57, 2
  %.lobit = lshr exact i16 %58, 1
  %59 = xor i16 %.lobit, 1
  %60 = zext i16 %59 to i32
  %state = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 19
  %61 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state, align 8
  %and59 = lshr i32 %62, 2
  %and59.lobit = and i32 %and59, 1
  %63 = xor i32 %and59.lobit, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %tobool63.not = icmp eq i32 %63, 1
  br i1 %tobool63.not, label %if.end54.if.end71_crit_edge, label %if.then64

if.end54.if.end71_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then64:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_base.i.i, align 4
  %66 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver_data.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %arrayidx.i.i125 = getelementptr i32, ptr %69, i32 5
  %70 = ptrtoint ptr %arrayidx.i.i125 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i125, align 4
  %add.ptr.i.i126 = getelementptr i8, ptr %65, i32 %71
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i126) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %73 = and i32 %72, 2147483647
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #8
  %75 = shl nuw nsw i16 %58, 6
  %76 = zext i16 %75 to i32
  %v.0.i = or i32 %74, %76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %77 = tail call i32 @llvm.bswap.i32(i32 %v.0.i) #8
  %78 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_base.i.i, align 4
  %80 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %driver_data.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %arrayidx.i6.i = getelementptr i32, ptr %83, i32 5
  %84 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %79, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %77) #8, !srcloc !230
  %86 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %state, align 8
  %xor70 = xor i32 %87, 4
  store i32 %xor70, ptr %state, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then64, %if.end54.if.end71_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %88 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_base.i.i, align 4
  %90 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %driver_data.i.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %arrayidx.i129 = getelementptr i32, ptr %93, i32 12
  %94 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i129, align 4
  %add.ptr.i130 = getelementptr i8, ptr %89, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %45) #8, !srcloc !230
  %96 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %flags, align 4
  %98 = and i16 %97, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool75.not = icmp eq i16 %98, 0
  br i1 %tobool75.not, label %if.end71.cleanup_crit_edge, label %if.then76

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg_base.i.i, align 4
  %101 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %driver_data.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %arrayidx.i.i133 = getelementptr i32, ptr %104, i32 5
  %105 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i.i133, align 4
  %add.ptr.i.i134 = getelementptr i8, ptr %100, i32 %106
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i134) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %108 = or i32 %107, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %109 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg_base.i.i, align 4
  %111 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %driver_data.i.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %arrayidx.i5.i = getelementptr i32, ptr %114, i32 5
  %115 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i5.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %110, i32 %116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %108) #8, !srcloc !230
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %if.end71.cleanup_crit_edge, %do.end53, %sw.epilog.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @printk_timed_ratelimit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @exynos_dsi_transfer_finish(ptr noundef %dsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_lock = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %transfer_lock) #8
  %transfer_list = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 23
  %0 = ptrtoint ptr %transfer_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %transfer_list, align 4
  %cmp.i.not = icmp eq ptr %1, %transfer_list
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %transfer_lock, i32 noundef %call2) #8
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_dsi_transfer_finish.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_dsi_transfer_finish, %if.then16)) #8
          to label %do.end22 [label %if.then16], !srcloc !232

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %payload_length = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %payload_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %payload_length, align 4
  %tx_done = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %tx_done to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx_done, align 2
  %conv17 = zext i16 %7 to i32
  %rx_len = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %rx_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx_len, align 4
  %conv18 = zext i16 %9 to i32
  %rx_done = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %rx_done to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rx_done, align 2
  %conv19 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos_dsi_transfer_finish.__UNIQUE_ID_ddebug313, ptr noundef %3, ptr noundef nonnull @.str.61, ptr noundef %1, i32 noundef %5, i32 noundef %conv17, i32 noundef %conv18, i32 noundef %conv19) #8
  br label %do.end22

do.end22:                                         ; preds = %if.then16, %if.end
  %tx_done23 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %tx_done23 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tx_done23, align 2
  %conv24 = zext i16 %13 to i32
  %payload_length26 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %payload_length26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %payload_length26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv24)
  %cmp27.not = icmp eq i32 %15, %conv24
  br i1 %cmp27.not, label %if.end30, label %do.end22.cleanup_crit_edge

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %do.end22
  %rx_done31 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %rx_done31 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rx_done31, align 2
  %rx_len33 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %rx_len33 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rx_len33, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp35.not = icmp eq i16 %17, %19
  br i1 %cmp35.not, label %if.end30.if.end38_crit_edge, label %if.then37

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then37:                                        ; preds = %if.end30
  %rx_payload.i = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %rx_payload.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_payload.i, align 4
  %conv.i101 = zext i16 %17 to i32
  %add.ptr.i = getelementptr i8, ptr %21, i32 %conv.i101
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  %dev2.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 6
  %22 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev2.i, align 8
  br i1 %tobool.not.i, label %if.then.i, label %if.then37.if.end46.i_crit_edge

if.then37.if.end46.i_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

if.then.i:                                        ; preds = %if.then37
  %reg_base.i.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 7
  %24 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base.i.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 24
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %arrayidx.i.i = getelementptr i32, ptr %29, i32 14
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %31
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !227
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %and.i = and i32 %33, 63
  %34 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and.i, label %sw.epilog.i [
    i32 18, label %if.then.i.sw.bb.i_crit_edge
    i32 34, label %if.then.i.sw.bb.i_crit_edge106
    i32 17, label %if.then.i.sw.bb9.i_crit_edge
    i32 33, label %if.then.i.sw.bb9.i_crit_edge107
    i32 2, label %do.end.i
  ]

if.then.i.sw.bb9.i_crit_edge107:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i

if.then.i.sw.bb9.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i

if.then.i.sw.bb.i_crit_edge106:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge106
  %35 = ptrtoint ptr %rx_len33 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %rx_len33, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %36)
  %cmp.i102 = icmp ugt i16 %36, 1
  br i1 %cmp.i102, label %if.then6.i, label %sw.bb.i.sw.bb9.i_crit_edge

sw.bb.i.sw.bb9.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i

if.then6.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %33, 16
  %conv7.i = trunc i32 %shr.i to i8
  %arrayidx.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv7.i, ptr %arrayidx.i, align 1
  %38 = ptrtoint ptr %rx_done31 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %rx_done31, align 2
  %inc.i = add i16 %39, 1
  store i16 %inc.i, ptr %rx_done31, align 2
  br label %sw.bb9.i

sw.bb9.i:                                         ; preds = %if.then6.i, %sw.bb.i.sw.bb9.i_crit_edge, %if.then.i.sw.bb9.i_crit_edge, %if.then.i.sw.bb9.i_crit_edge107
  %shr10.i = lshr i32 %33, 8
  %conv11.i = trunc i32 %shr10.i to i8
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv11.i, ptr %add.ptr.i, align 1
  %41 = ptrtoint ptr %rx_done31 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rx_done31, align 2
  %inc14.i = add i16 %42, 1
  store i16 %inc14.i, ptr %rx_done31, align 2
  %43 = ptrtoint ptr %rx_len33 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %inc14.i, ptr %rx_len33, align 4
  br label %clear_fifo.sink.split.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr18.i = lshr i32 %33, 8
  %and19.i = and i32 %shr18.i, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.62, i32 noundef %and19.i) #12
  br label %clear_fifo.sink.split.i

sw.epilog.i:                                      ; preds = %if.then.i
  %shr21.i = lshr i32 %33, 8
  %conv23.i = trunc i32 %shr21.i to i16
  %conv24.i = and i32 %shr21.i, 65535
  %44 = ptrtoint ptr %rx_len33 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rx_len33, align 4
  %conv26.i = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv24.i, i32 %conv26.i)
  %cmp27.i = icmp ugt i32 %conv24.i, %conv26.i
  br i1 %cmp27.i, label %do.end32.i, label %if.else.i

do.end32.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.65, i32 noundef %conv26.i, i32 noundef %conv24.i) #12
  br label %if.end46.i

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv24.i, i32 %conv26.i)
  %cmp40.i = icmp ult i32 %conv24.i, %conv26.i
  br i1 %cmp40.i, label %if.then42.i, label %if.else.i.if.end46.i_crit_edge

if.else.i.if.end46.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

if.then42.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %rx_len33 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv23.i, ptr %rx_len33, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then42.i, %if.else.i.if.end46.i_crit_edge, %do.end32.i, %if.then37.if.end46.i_crit_edge
  %47 = ptrtoint ptr %rx_len33 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rx_len33, align 4
  %49 = ptrtoint ptr %rx_done31 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %rx_done31, align 2
  %sub.i = sub i16 %48, %50
  store i16 %48, ptr %rx_done31, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %sub.i)
  %cmp57185.i = icmp ugt i16 %sub.i, 3
  br i1 %cmp57185.i, label %while.body.lr.ph.i, label %if.end46.i.while.end.i_crit_edge

if.end46.i.while.end.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end46.i
  %reg_base.i173.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 7
  %driver_data.i174.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 24
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %length.0187.i = phi i16 [ %sub.i, %while.body.lr.ph.i ], [ %sub78.i, %while.body.i.while.body.i_crit_edge ]
  %payload.0186.i = phi ptr [ %add.ptr.i, %while.body.lr.ph.i ], [ %add.ptr76.i, %while.body.i.while.body.i_crit_edge ]
  %51 = ptrtoint ptr %reg_base.i173.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_base.i173.i, align 4
  %53 = ptrtoint ptr %driver_data.i174.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver_data.i174.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %arrayidx.i175.i = getelementptr i32, ptr %56, i32 14
  %57 = ptrtoint ptr %arrayidx.i175.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i175.i, align 4
  %add.ptr.i176.i = getelementptr i8, ptr %52, i32 %58
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i176.i) #8, !srcloc !227
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %conv62.i = trunc i32 %60 to i8
  %61 = ptrtoint ptr %payload.0186.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv62.i, ptr %payload.0186.i, align 1
  %shr64.i = lshr i32 %60, 8
  %conv66.i = trunc i32 %shr64.i to i8
  %arrayidx67.i = getelementptr i8, ptr %payload.0186.i, i32 1
  %62 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv66.i, ptr %arrayidx67.i, align 1
  %shr68.i = lshr i32 %60, 16
  %conv70.i = trunc i32 %shr68.i to i8
  %arrayidx71.i = getelementptr i8, ptr %payload.0186.i, i32 2
  %63 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv70.i, ptr %arrayidx71.i, align 1
  %shr72.i = lshr i32 %60, 24
  %conv74.i = trunc i32 %shr72.i to i8
  %arrayidx75.i = getelementptr i8, ptr %payload.0186.i, i32 3
  %64 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv74.i, ptr %arrayidx75.i, align 1
  %add.ptr76.i = getelementptr i8, ptr %payload.0186.i, i32 4
  %sub78.i = add i16 %length.0187.i, -4
  %cmp57.i = icmp ugt i16 %sub78.i, 3
  br i1 %cmp57.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end46.i.while.end.i_crit_edge
  %payload.0.lcssa.i = phi ptr [ %add.ptr.i, %if.end46.i.while.end.i_crit_edge ], [ %add.ptr76.i, %while.body.i.while.end.i_crit_edge ]
  %length.0.lcssa.i = phi i16 [ %sub.i, %if.end46.i.while.end.i_crit_edge ], [ %sub78.i, %while.body.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %length.0.lcssa.i)
  %tobool80.not.i = icmp eq i16 %length.0.lcssa.i, 0
  br i1 %tobool80.not.i, label %while.end.i.if.end99.i_crit_edge, label %if.then81.i

while.end.i.if.end99.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.i

if.then81.i:                                      ; preds = %while.end.i
  %reg_base.i177.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 7
  %65 = ptrtoint ptr %reg_base.i177.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_base.i177.i, align 4
  %driver_data.i178.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 24
  %67 = ptrtoint ptr %driver_data.i178.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver_data.i178.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %arrayidx.i179.i = getelementptr i32, ptr %70, i32 14
  %71 = ptrtoint ptr %arrayidx.i179.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i179.i, align 4
  %add.ptr.i180.i = getelementptr i8, ptr %66, i32 %72
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180.i) #8, !srcloc !227
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %75 = zext i16 %length.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %length.0.lcssa.i, label %if.then81.i.if.end99.i_crit_edge [
    i16 3, label %sw.bb84.i
    i16 2, label %if.then81.i.sw.bb89.i_crit_edge
    i16 1, label %if.then81.i.sw.bb94.i_crit_edge
  ]

if.then81.i.sw.bb94.i_crit_edge:                  ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb94.i

if.then81.i.sw.bb89.i_crit_edge:                  ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb89.i

if.then81.i.if.end99.i_crit_edge:                 ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.i

sw.bb84.i:                                        ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr85.i = lshr i32 %74, 16
  %conv87.i = trunc i32 %shr85.i to i8
  %arrayidx88.i = getelementptr i8, ptr %payload.0.lcssa.i, i32 2
  %76 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv87.i, ptr %arrayidx88.i, align 1
  br label %sw.bb89.i

sw.bb89.i:                                        ; preds = %sw.bb84.i, %if.then81.i.sw.bb89.i_crit_edge
  %shr90.i = lshr i32 %74, 8
  %conv92.i = trunc i32 %shr90.i to i8
  %arrayidx93.i = getelementptr i8, ptr %payload.0.lcssa.i, i32 1
  %77 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv92.i, ptr %arrayidx93.i, align 1
  br label %sw.bb94.i

sw.bb94.i:                                        ; preds = %sw.bb89.i, %if.then81.i.sw.bb94.i_crit_edge
  %conv96.i = trunc i32 %74 to i8
  %78 = ptrtoint ptr %payload.0.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv96.i, ptr %payload.0.lcssa.i, align 1
  br label %if.end99.i

if.end99.i:                                       ; preds = %sw.bb94.i, %if.then81.i.if.end99.i_crit_edge, %while.end.i.if.end99.i_crit_edge
  %79 = ptrtoint ptr %rx_done31 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %rx_done31, align 2
  %81 = ptrtoint ptr %rx_len33 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %rx_len33, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %82)
  %cmp104.i = icmp eq i16 %80, %82
  br i1 %cmp104.i, label %if.end99.i.clear_fifo.sink.split.i_crit_edge, label %if.end99.i.clear_fifo.i_crit_edge

if.end99.i.clear_fifo.i_crit_edge:                ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clear_fifo.i

if.end99.i.clear_fifo.sink.split.i_crit_edge:     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clear_fifo.sink.split.i

clear_fifo.sink.split.i:                          ; preds = %if.end99.i.clear_fifo.sink.split.i_crit_edge, %do.end.i, %sw.bb9.i
  %result107.i = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 2
  %83 = ptrtoint ptr %result107.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %result107.i, align 4
  br label %clear_fifo.i

clear_fifo.i:                                     ; preds = %clear_fifo.sink.split.i, %if.end99.i.clear_fifo.i_crit_edge
  %reg_base.i181.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 7
  %driver_data.i182.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 24
  br label %do.body109.i

do.body109.i:                                     ; preds = %do.body109.i.do.body109.i_crit_edge, %clear_fifo.i
  %length.1.i = phi i16 [ 64, %clear_fifo.i ], [ %dec.i, %do.body109.i.do.body109.i_crit_edge ]
  %84 = ptrtoint ptr %reg_base.i181.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg_base.i181.i, align 4
  %86 = ptrtoint ptr %driver_data.i182.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %driver_data.i182.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %arrayidx.i183.i = getelementptr i32, ptr %89, i32 14
  %90 = ptrtoint ptr %arrayidx.i183.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i183.i, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %85, i32 %91
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i184.i) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 33587248, i32 %92)
  %cmp111.i = icmp eq i32 %92, 33587248
  %dec.i = add nsw i16 %length.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i)
  %tobool116.not.i = icmp eq i16 %dec.i, 0
  %or.cond.i = select i1 %cmp111.i, i1 true, i1 %tobool116.not.i
  br i1 %or.cond.i, label %do.body109.i.if.end38_crit_edge, label %do.body109.i.do.body109.i_crit_edge

do.body109.i.do.body109.i_crit_edge:              ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body109.i

do.body109.i.if.end38_crit_edge:                  ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end38:                                         ; preds = %do.body109.i.if.end38_crit_edge, %if.end30.if.end38_crit_edge
  %93 = ptrtoint ptr %rx_done31 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %rx_done31, align 2
  %95 = ptrtoint ptr %rx_len33 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %rx_len33, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %94, i16 %96)
  %cmp43.not = icmp eq i16 %94, %96
  br i1 %cmp43.not, label %do.body48, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body48:                                        ; preds = %if.end38
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %transfer_lock) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.body48.list_del_init.exit_crit_edge

do.body48.list_del_init.exit_crit_edge:           ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i, align 4
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev1.i.i.i, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %100, ptr %98, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body48.list_del_init.exit_crit_edge
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %1, ptr %prev.i3.i, align 4
  %105 = ptrtoint ptr %transfer_list to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile ptr, ptr %transfer_list, align 4
  %cmp.i103 = icmp ne ptr %106, %transfer_list
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %transfer_lock, i32 noundef %call56) #8
  %107 = ptrtoint ptr %rx_len33 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %rx_len33, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool69.not = icmp eq i16 %108, 0
  br i1 %tobool69.not, label %if.then70, label %list_del_init.exit.if.end71_crit_edge

list_del_init.exit.if.end71_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then70:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %result = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 2
  %109 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %result, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %list_del_init.exit.if.end71_crit_edge
  %completed = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %1, i32 0, i32 1
  tail call void @complete(ptr noundef %completed) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end38.cleanup_crit_edge, %do.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp.i103, %if.end71 ], [ true, %do.end22.cleanup_crit_edge ], [ true, %if.end38.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_dsi_bind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @drm_simple_encoder_init(ptr noundef %data, ptr noundef %1, i32 noundef 2) #8
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @exynos_dsi_encoder_helper_funcs, ptr %helper_private.i, align 4
  %call3 = tail call i32 @exynos_drm_set_possible_crtcs(ptr noundef %1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @of_graph_get_remote_node(ptr noundef %4, i32 noundef 0, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %call6 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call4) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then8

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef nonnull %call6, ptr noundef null, i32 noundef 0) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then5.if.end10_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call4) #8
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end.if.end11_crit_edge
  %dsi_host = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 1
  %call12 = tail call i32 @mipi_dsi_host_register(ptr noundef %dsi_host) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_dsi_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @exynos_dsi_disable(ptr noundef %1)
  %dsi_host = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 1
  tail call void @mipi_dsi_host_unregister(ptr noundef %dsi_host) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_set_possible_crtcs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_dsi_enable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.exynos_dsi, ptr %encoder, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.exynos_dsi, ptr %encoder, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end4

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !237
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !238
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.72) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  %or = or i32 %8, 1
  store i32 %or, ptr %state, align 8
  %panel = getelementptr inbounds %struct.exynos_dsi, ptr %encoder, i32 0, i32 3
  %9 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %panel, align 8
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  %call9 = tail call i32 @drm_panel_prepare(ptr noundef nonnull %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then7.err_put_sync_crit_edge, label %if.then7.if.end25_crit_edge

if.then7.if.end25_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then7.err_put_sync_crit_edge:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_sync

if.else:                                          ; preds = %if.end4
  %bridge_chain = getelementptr inbounds %struct.exynos_dsi, ptr %encoder, i32 0, i32 4
  %prev = getelementptr inbounds %struct.exynos_dsi, ptr %encoder, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn111 = load ptr, ptr %prev, align 4
  %cmp14.not113 = icmp eq ptr %.pn111, %bridge_chain
  br i1 %cmp14.not113, label %if.else.if.end25_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else.for.body_crit_edge
  %.pn114 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn111, %if.else.for.body_crit_edge ]
  %funcs = getelementptr i8, ptr %.pn114, i32 24
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 4
  %pre_enable = getelementptr inbounds %struct.drm_bridge_funcs, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %pre_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pre_enable, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.then16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %iter.0115 = getelementptr i8, ptr %.pn114, i32 -132
  tail call void %15(ptr noundef %iter.0115) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %for.body.for.inc_crit_edge
  %prev22 = getelementptr inbounds %struct.list_head, ptr %.pn114, i32 0, i32 1
  %16 = ptrtoint ptr %prev22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %prev22, align 4
  %cmp14.not = icmp eq ptr %.pn, %bridge_chain
  br i1 %cmp14.not, label %for.inc.if.end25_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end25_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end25:                                         ; preds = %for.inc.if.end25_crit_edge, %if.else.if.end25_crit_edge, %if.then7.if.end25_crit_edge
  tail call fastcc void @exynos_dsi_set_display_mode(ptr noundef %encoder)
  %reg_base.i.i = getelementptr inbounds %struct.exynos_dsi, ptr %encoder, i32 0, i32 7
  %17 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.exynos_dsi, ptr %encoder, i32 0, i32 24
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %arrayidx.i.i = getelementptr i32, ptr %22, i32 6
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %26 = or i32 %25, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i.i, align 4
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %arrayidx.i6.i = getelementptr i32, ptr %32, i32 6
  %33 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %28, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %26) #8, !srcloc !230
  %35 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %panel, align 8
  %tobool27.not = icmp eq ptr %36, null
  br i1 %tobool27.not, label %if.else34, label %if.then28

if.then28:                                        ; preds = %if.end25
  %call30 = tail call i32 @drm_panel_enable(ptr noundef nonnull %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %err_display_disable, label %if.then28.if.end58_crit_edge

if.then28.if.end58_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.else34:                                        ; preds = %if.end25
  %bridge_chain36 = getelementptr inbounds %struct.exynos_dsi, ptr %encoder, i32 0, i32 4
  %37 = ptrtoint ptr %bridge_chain36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn101116 = load ptr, ptr %bridge_chain36, align 4
  %cmp42.not118 = icmp eq ptr %.pn101116, %bridge_chain36
  br i1 %cmp42.not118, label %if.else34.if.end58_crit_edge, label %if.else34.for.body44_crit_edge

if.else34.for.body44_crit_edge:                   ; preds = %if.else34
  br label %for.body44

if.else34.if.end58_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

for.body44:                                       ; preds = %for.inc51.for.body44_crit_edge, %if.else34.for.body44_crit_edge
  %.pn101119 = phi ptr [ %.pn101, %for.inc51.for.body44_crit_edge ], [ %.pn101116, %if.else34.for.body44_crit_edge ]
  %funcs45 = getelementptr i8, ptr %.pn101119, i32 24
  %38 = ptrtoint ptr %funcs45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %funcs45, align 4
  %enable = getelementptr inbounds %struct.drm_bridge_funcs, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %enable, align 4
  %tobool46.not = icmp eq ptr %41, null
  br i1 %tobool46.not, label %for.body44.for.inc51_crit_edge, label %if.then47

for.body44.for.inc51_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc51

if.then47:                                        ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #10
  %iter.1120 = getelementptr i8, ptr %.pn101119, i32 -132
  tail call void %41(ptr noundef %iter.1120) #8
  br label %for.inc51

for.inc51:                                        ; preds = %if.then47, %for.body44.for.inc51_crit_edge
  %42 = ptrtoint ptr %.pn101119 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn101 = load ptr, ptr %.pn101119, align 4
  %cmp42.not = icmp eq ptr %.pn101, %bridge_chain36
  br i1 %cmp42.not, label %for.inc51.if.end58_crit_edge, label %for.inc51.for.body44_crit_edge

for.inc51.for.body44_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44

for.inc51.if.end58_crit_edge:                     ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.end58:                                         ; preds = %for.inc51.if.end58_crit_edge, %if.else34.if.end58_crit_edge, %if.then28.if.end58_crit_edge
  %43 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state, align 8
  %or60 = or i32 %44, 8
  store i32 %or60, ptr %state, align 8
  br label %cleanup

err_display_disable:                              ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_base.i.i, align 4
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %arrayidx.i.i104 = getelementptr i32, ptr %50, i32 6
  %51 = ptrtoint ptr %arrayidx.i.i104 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i104, align 4
  %add.ptr.i.i105 = getelementptr i8, ptr %46, i32 %52
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i105) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %54 = and i32 %53, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %55 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_base.i.i, align 4
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver_data.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %arrayidx.i6.i106 = getelementptr i32, ptr %60, i32 6
  %61 = ptrtoint ptr %arrayidx.i6.i106 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i6.i106, align 4
  %add.ptr.i7.i107 = getelementptr i8, ptr %56, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i107, i32 %54) #8, !srcloc !230
  %63 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %panel, align 8
  %call62 = tail call i32 @drm_panel_unprepare(ptr noundef %64) #8
  br label %err_put_sync

err_put_sync:                                     ; preds = %err_display_disable, %if.then7.err_put_sync_crit_edge
  %65 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %state, align 8
  %and64 = and i32 %66, -2
  store i32 %and64, ptr %state, align 8
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 8
  %call.i108 = tail call i32 @__pm_runtime_idle(ptr noundef %68, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %err_put_sync, %if.end58, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_dsi_set_display_mode(ptr nocapture noundef readonly %dsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %dsi, i32 0, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %driver_data = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 24
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data, align 4
  %num_bits_resol1 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %num_bits_resol1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_bits_resol1, align 4
  %mode_flags = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 17
  %8 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode_flags, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 7
  %10 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vsync_start, align 4
  %conv = zext i16 %11 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 6
  %12 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vdisplay, align 2
  %conv2 = zext i16 %13 to i32
  %sub = sub nsw i32 %conv, %conv2
  %shl = shl i32 %sub, 16
  %vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 9
  %14 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vtotal, align 4
  %conv3 = zext i16 %15 to i32
  %vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 8
  %16 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vsync_end, align 2
  %conv4 = zext i16 %17 to i32
  %sub5 = sub nsw i32 %conv3, %conv4
  %or = or i32 %shl, %sub5
  %or7 = or i32 %or, -268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %or7) #8
  %reg_base.i = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 7
  %19 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base.i, align 4
  %21 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %arrayidx.i = getelementptr i32, ptr %24, i32 7
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #8, !srcloc !230
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hsync_start, align 2
  %conv8 = zext i16 %28 to i32
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hdisplay, align 4
  %conv9 = zext i16 %30 to i32
  %sub10 = sub nsw i32 %conv8, %conv9
  %shl11 = shl i32 %sub10, 16
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 4
  %31 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %htotal, align 2
  %conv12 = zext i16 %32 to i32
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 3
  %33 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %hsync_end, align 4
  %conv13 = zext i16 %34 to i32
  %sub14 = sub nsw i32 %conv12, %conv13
  %or16 = or i32 %sub14, %shl11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %or16) #8
  %36 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base.i, align 4
  %38 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %arrayidx.i80 = getelementptr i32, ptr %41, i32 8
  %42 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i80, align 4
  %add.ptr.i81 = getelementptr i8, ptr %37, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %35) #8, !srcloc !230
  %44 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vsync_end, align 2
  %conv18 = zext i16 %45 to i32
  %46 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vsync_start, align 4
  %conv20 = zext i16 %47 to i32
  %sub21 = sub nsw i32 %conv18, %conv20
  %shl22 = shl i32 %sub21, 22
  %48 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %hsync_end, align 4
  %conv24 = zext i16 %49 to i32
  %50 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %hsync_start, align 2
  %conv26 = zext i16 %51 to i32
  %sub27 = sub nsw i32 %conv24, %conv26
  %or29 = or i32 %sub27, %shl22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %52 = tail call i32 @llvm.bswap.i32(i32 %or29) #8
  %53 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_base.i, align 4
  %55 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %arrayidx.i84 = getelementptr i32, ptr %58, i32 9
  %59 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i84, align 4
  %add.ptr.i85 = getelementptr i8, ptr %54, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %52) #8, !srcloc !230
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hdisplay30 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 1
  %61 = ptrtoint ptr %hdisplay30 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %hdisplay30, align 4
  %conv31 = zext i16 %62 to i32
  %notmask = shl nsw i32 -1, %7
  %sub33 = xor i32 %notmask, -1
  %and34 = and i32 %conv31, %sub33
  %vdisplay36 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 6
  %63 = ptrtoint ptr %vdisplay36 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vdisplay36, align 2
  %conv37 = zext i16 %64 to i32
  %and40 = and i32 %conv37, %sub33
  %shl41 = shl nuw i32 %and40, 16
  %or42 = or i32 %shl41, %and34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %65 = tail call i32 @llvm.bswap.i32(i32 %or42) #8
  %reg_base.i86 = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 7
  %66 = ptrtoint ptr %reg_base.i86 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_base.i86, align 4
  %68 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_data, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %arrayidx.i88 = getelementptr i32, ptr %71, i32 6
  %72 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i88, align 4
  %add.ptr.i89 = getelementptr i8, ptr %67, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %65) #8, !srcloc !230
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_dsi_set_display_mode.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_dsi_set_display_mode, %if.then46)) #8
          to label %do.end [label %if.then46], !srcloc !232

if.then46:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.exynos_dsi, ptr %dsi, i32 0, i32 6
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 8
  %76 = ptrtoint ptr %hdisplay30 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %hdisplay30, align 4
  %conv48 = zext i16 %77 to i32
  %78 = ptrtoint ptr %vdisplay36 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %vdisplay36, align 2
  %conv50 = zext i16 %79 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos_dsi_set_display_mode.__UNIQUE_ID_ddebug311, ptr noundef %75, ptr noundef nonnull @.str.75, i32 noundef %conv48, i32 noundef %conv50) #8
  br label %do.end

do.end:                                           ; preds = %if.then46, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_dsi_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data1 = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data1, align 4
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  %state = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %and3 = and i32 %5, -3
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and3, ptr %state, align 8
  %reg_base.i.i = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i.i, align 4
  %9 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data1, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %arrayidx.i.i = getelementptr i32, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %16 = and i32 %15, -63506
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i.i, align 4
  %19 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data1, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %arrayidx.i11.i = getelementptr i32, ptr %22, i32 2
  %23 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i11.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %18, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %16) #8, !srcloc !230
  %25 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base.i.i, align 4
  %27 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data1, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %arrayidx.i15.i = getelementptr i32, ptr %30, i32 16
  %31 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i15.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %26, i32 %32
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %34 = and i32 %33, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base.i.i, align 4
  %37 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data1, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %arrayidx.i19.i = getelementptr i32, ptr %40, i32 16
  %41 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i19.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %36, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %34) #8, !srcloc !230
  %te_gpio.i = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 12
  %43 = ptrtoint ptr %te_gpio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %te_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.then.exynos_dsi_disable_irq.exit_crit_edge, label %if.then.i

if.then.exynos_dsi_disable_irq.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %exynos_dsi_disable_irq.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @gpiod_to_irq(ptr noundef nonnull %44) #8
  tail call void @disable_irq(i32 noundef %call.i) #8
  br label %exynos_dsi_disable_irq.exit

exynos_dsi_disable_irq.exit:                      ; preds = %if.then.i, %if.then.exynos_dsi_disable_irq.exit_crit_edge
  %irq.i = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 11
  %45 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq(i32 noundef %46) #8
  br label %if.end

if.end:                                           ; preds = %exynos_dsi_disable_irq.exit, %entry.if.end_crit_edge
  %47 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state, align 8
  %and5 = and i32 %48, -5
  store i32 %and5, ptr %state, align 8
  %phy = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 8
  %49 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy, align 8
  %call6 = tail call i32 @phy_power_off(ptr noundef %50) #8
  %num_clks = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %3, i32 0, i32 3
  %51 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_clks, align 4
  %i.024 = add i32 %52, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.024)
  %cmp25 = icmp sgt i32 %i.024, -1
  br i1 %cmp25, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %clks = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ %i.024, %for.body.lr.ph ], [ %i.0, %for.body.for.body_crit_edge ]
  %53 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clks, align 4
  %arrayidx = getelementptr ptr, ptr %54, i32 %i.026
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %56) #8
  tail call void @clk_unprepare(ptr noundef %56) #8
  %i.0 = add nsw i32 %i.026, -1
  %cmp = icmp sgt i32 %i.026, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %supplies = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 10
  %call7 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end, label %for.end.if.end11_crit_edge

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 6
  %57 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.76, i32 noundef %call7) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end, %for.end.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_dsi_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data1 = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data1, align 4
  %supplies = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 10
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num_clks = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp447.not = icmp eq i32 %5, 0
  br i1 %cmp447.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %clks = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 9
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.78, i32 noundef %call2) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clks, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %i.048
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.clk_prepare_enable.exit_crit_edge

for.body.clk_prepare_enable.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.then3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %for.body.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %for.body.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp6 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp6, label %clk_prepare_enable.exit.err_clk_crit_edge, label %clk_prepare_enable.exit.for.inc_crit_edge

clk_prepare_enable.exit.for.inc_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

clk_prepare_enable.exit.err_clk_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk

for.inc:                                          ; preds = %clk_prepare_enable.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %inc = add nuw i32 %i.048, 1
  %12 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_clks, align 4
  %cmp4 = icmp ult i32 %inc, %13
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %phy = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 8
  %call9 = tail call i32 @phy_power_on(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end14:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.81, i32 noundef %call9) #12
  br label %err_clk

err_clk:                                          ; preds = %do.end14, %clk_prepare_enable.exit.err_clk_crit_edge
  %i.046 = phi i32 [ %i.0.lcssa, %do.end14 ], [ %i.048, %clk_prepare_enable.exit.err_clk_crit_edge ]
  %ret.0 = phi i32 [ %call9, %do.end14 ], [ %retval.0.i, %clk_prepare_enable.exit.err_clk_crit_edge ]
  %dec50 = add i32 %i.046, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec50)
  %cmp1751 = icmp sgt i32 %dec50, -1
  br i1 %cmp1751, label %while.body.lr.ph, label %err_clk.while.end_crit_edge

err_clk.while.end_crit_edge:                      ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %err_clk
  %clks18 = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %dec52 = phi i32 [ %dec50, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %18 = ptrtoint ptr %clks18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clks18, align 4
  %arrayidx19 = getelementptr ptr, ptr %19, i32 %dec52
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx19, align 4
  tail call void @clk_disable(ptr noundef %21) #8
  tail call void @clk_unprepare(ptr noundef %21) #8
  %dec = add nsw i32 %dec52, -1
  %cmp17 = icmp sgt i32 %dec52, 0
  br i1 %cmp17, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %err_clk.while.end_crit_edge
  %call22 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %ret.0, %while.end ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !90, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !159, !161, !163, !164, !165, !166, !168, !170, !172, !173, !174, !175, !177, !178, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !206, !207, !208, !210, !211, !212, !213, !215, !216}
!llvm.module.flags = !{!217, !218, !219, !220, !221, !222, !223, !224}
!llvm.ident = !{!225}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1904, i32 14}
!2 = !{ptr @dsi_driver, !3, !"dsi_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1900, i32 24}
!4 = !{ptr @__UNIQUE_ID_author314, !5, !"__UNIQUE_ID_author314", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1911, i32 1}
!6 = !{ptr @__UNIQUE_ID_author315, !7, !"__UNIQUE_ID_author315", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1912, i32 1}
!8 = !{ptr @__UNIQUE_ID_description316, !9, !"__UNIQUE_ID_description316", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1913, i32 1}
!10 = !{ptr @__UNIQUE_ID_file317, !11, !"__UNIQUE_ID_file317", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1914, i32 1}
!12 = !{ptr @__UNIQUE_ID_license318, !11, !"__UNIQUE_ID_license318", i1 false, i1 false}
!13 = !{ptr @exynos_dsi_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1739, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1749, i32 28}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1750, i32 28}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1754, i32 34}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1765, i32 29}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1767, i32 8}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1772, i32 4}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @exynos_dsi_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @exynos_dsi_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1782, i32 31}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1784, i32 3}
!38 = !{ptr @exynos_dsi_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @exynos_dsi_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1797, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @exynos_dsi_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @exynos_dsi_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @init_completion.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../include/linux/completion.h", i32 87, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @exynos_dsi_ops, !49, !"exynos_dsi_ops", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1637, i32 39}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1539, i32 4}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1499, i32 3}
!54 = !{ptr @exynos_dsi_connector_funcs, !55, !"exynos_dsi_connector_funcs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1464, i32 41}
!56 = !{ptr @exynos_dsi_connector_helper_funcs, !57, !"exynos_dsi_connector_helper_funcs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1483, i32 48}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1337, i32 43}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1341, i32 3}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @exynos_dsi_register_te_irq._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @exynos_dsi_register_te_irq._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1349, i32 46}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1351, i32 3}
!69 = !{ptr @exynos_dsi_register_te_irq._entry.27, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @exynos_dsi_register_te_irq._entry_ptr.29, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 659, i32 3}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @exynos_dsi_enable_clock._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @exynos_dsi_enable_clock._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 672, i32 2}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @exynos_dsi_enable_clock.__UNIQUE_ID_ddebug310, !77, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 608, i32 3}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @exynos_dsi_set_pll._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @exynos_dsi_set_pll._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 612, i32 2}
!87 = !{ptr @exynos_dsi_set_pll.__UNIQUE_ID_ddebug308, !86, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!88 = distinct !{null, !89, !"freq_bands", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 620, i32 30}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 632, i32 3}
!92 = !{ptr @exynos_dsi_set_pll.__UNIQUE_ID_ddebug309, !91, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 642, i32 4}
!95 = !{ptr @exynos_dsi_set_pll._entry.38, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @exynos_dsi_set_pll._entry_ptr.40, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 526, i32 2}
!99 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @exynos_dsi_wait_for_reset._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @exynos_dsi_wait_for_reset._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 836, i32 3}
!104 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @exynos_dsi_init_link._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @exynos_dsi_init_link._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 861, i32 4}
!109 = !{ptr @exynos_dsi_init_link._entry.45, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @exynos_dsi_init_link._entry_ptr.47, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1243, i32 3}
!113 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @exynos_dsi_transfer._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @exynos_dsi_transfer._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 968, i32 2}
!118 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @exynos_dsi_send_to_fifo.__UNIQUE_ID_ddebug312, !117, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1004, i32 3}
!122 = !{ptr @exynos_dsi_send_to_fifo._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @exynos_dsi_send_to_fifo._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 214, i32 43}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 215, i32 2}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 215, i32 33}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 216, i32 2}
!132 = !{ptr @clk_names, !133, !"clk_names", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 214, i32 26}
!134 = !{ptr @exynos_dsi_irq.j, !135, !"j", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1259, i32 28}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1261, i32 4}
!138 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @exynos_dsi_irq._entry, !137, !"_entry", i1 false, i1 false}
!141 = !{ptr @exynos_dsi_irq._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1165, i32 2}
!144 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @exynos_dsi_transfer_finish.__UNIQUE_ID_ddebug313, !143, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1048, i32 4}
!148 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @exynos_dsi_read_from_fifo._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @exynos_dsi_read_from_fifo._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1056, i32 4}
!153 = !{ptr @exynos_dsi_read_from_fifo._entry.64, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @exynos_dsi_read_from_fifo._entry_ptr.66, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1665, i32 37}
!157 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1670, i32 37}
!159 = !{ptr @.str.69, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1675, i32 37}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1649, i32 3}
!163 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @exynos_dsi_of_read_u32._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @exynos_dsi_of_read_u32._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @exynos_dsi_component_ops, !167, !"exynos_dsi_component_ops", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1723, i32 35}
!168 = !{ptr @exynos_dsi_encoder_helper_funcs, !169, !"exynos_dsi_encoder_helper_funcs", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1515, i32 46}
!170 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1378, i32 3}
!172 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @exynos_dsi_enable._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @exynos_dsi_enable._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.74, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 907, i32 2}
!177 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @exynos_dsi_set_display_mode.__UNIQUE_ID_ddebug311, !176, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!179 = !{ptr @exynos_dsi_of_match, !180, !"exynos_dsi_of_match", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 507, i32 34}
!181 = !{ptr @exynos3_dsi_driver_data, !182, !"exynos3_dsi_driver_data", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 451, i32 44}
!183 = !{ptr @exynos_reg_ofs, !184, !"exynos_reg_ofs", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 331, i32 27}
!185 = !{ptr @reg_values, !186, !"reg_values", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 397, i32 27}
!187 = !{ptr @exynos4_dsi_driver_data, !188, !"exynos4_dsi_driver_data", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 463, i32 44}
!189 = !{ptr @exynos5_dsi_driver_data, !190, !"exynos5_dsi_driver_data", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 475, i32 44}
!191 = !{ptr @exynos5422_dsi_driver_data, !192, !"exynos5422_dsi_driver_data", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 496, i32 44}
!193 = !{ptr @exynos5433_reg_ofs, !194, !"exynos5433_reg_ofs", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 355, i32 27}
!195 = !{ptr @exynos5422_reg_values, !196, !"exynos5422_reg_values", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 415, i32 27}
!197 = !{ptr @exynos5433_dsi_driver_data, !198, !"exynos5433_dsi_driver_data", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 485, i32 44}
!199 = !{ptr @exynos5433_reg_values, !200, !"exynos5433_reg_values", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 433, i32 27}
!201 = !{ptr @exynos_dsi_pm_ops, !202, !"exynos_dsi_pm_ops", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1894, i32 32}
!203 = !{ptr @.str.76, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1855, i32 3}
!205 = !{ptr @.str.77, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @exynos_dsi_suspend._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @exynos_dsi_suspend._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.78, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1868, i32 3}
!210 = !{ptr @.str.79, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @exynos_dsi_resume._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @exynos_dsi_resume._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.81, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/exynos/exynos_drm_dsi.c", i32 1880, i32 3}
!215 = !{ptr @exynos_dsi_resume._entry.80, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @exynos_dsi_resume._entry_ptr.82, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 1, !"min_enum_size", i32 4}
!219 = !{i32 8, !"branch-target-enforcement", i32 0}
!220 = !{i32 8, !"sign-return-address", i32 0}
!221 = !{i32 8, !"sign-return-address-all", i32 0}
!222 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!223 = !{i32 7, !"uwtable", i32 1}
!224 = !{i32 7, !"frame-pointer", i32 2}
!225 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!226 = !{!"branch_weights", i32 1, i32 2000}
!227 = !{i64 4277540}
!228 = !{i64 2156869273}
!229 = !{i64 2156868298}
!230 = !{i64 4277122}
!231 = !{i8 0, i8 2}
!232 = !{i64 2148770420, i64 2148770425, i64 2148770438, i64 2148770482, i64 2148770516, i64 2148770537}
!233 = !{!"branch_weights", i32 2000, i32 1}
!234 = !{i64 2148679139, i64 2148679419, i64 2148679753, i64 2148680087}
!235 = !{i64 2156900269}
!236 = !{i64 2148288024}
!237 = !{i64 772847, i64 772872, i64 772894, i64 772910, i64 772922, i64 772942, i64 772966, i64 772982, i64 772994}
!238 = !{i64 2148288212}
