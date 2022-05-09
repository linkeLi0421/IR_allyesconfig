; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/dsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.tegra_dsi = type { %struct.host1x_client, %struct.tegra_output, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.mipi_dsi_host, ptr, i32, i32, ptr, ptr }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.tegra_output = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.drm_encoder, %struct.drm_connector }
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
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.mipi_dsi_packet = type { i32, [4 x i8], i32, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.tegra_dc = type { %struct.host1x_client, ptr, ptr, %struct.drm_crtc, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.tegra_dc_stats, %struct.list_head, ptr, ptr, i8 }
%struct.tegra_dc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_dsi_state = type { %struct.drm_connector_state, %struct.mipi_dphy_timing, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.mipi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-dsi\00", [22 x i8] zeroinitializer }, align 32
@tegra_dsi_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra132-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tegra_dsi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_dsi_probe, ptr @tegra_dsi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_dsi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsi\00", [28 x i8] zeroinitializer }, align 32
@tegra_dsi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1591, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot get DSI clock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_dsi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpu/drm/tegra/dsi.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_dsi_probe._entry_ptr = internal global ptr @tegra_dsi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"lp\00", [29 x i8] zeroinitializer }, align 32
@tegra_dsi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1597, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot get low-power clock\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_dsi_probe._entry_ptr.10 = internal global ptr @tegra_dsi_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parent\00", [25 x i8] zeroinitializer }, align 32
@tegra_dsi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1603, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot get parent clock\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_dsi_probe._entry_ptr.14 = internal global ptr @tegra_dsi_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"avdd-dsi-csi\00", [19 x i8] zeroinitializer }, align 32
@tegra_dsi_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1609, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get VDD supply\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra_dsi_probe._entry_ptr.18 = internal global ptr @tegra_dsi_probe._entry.16, section ".printk_index", align 4
@tegra_dsi_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1615, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot setup clocks\0A\00", [43 x i8] zeroinitializer }, align 32
@tegra_dsi_probe._entry_ptr.21 = internal global ptr @tegra_dsi_probe._entry.19, section ".printk_index", align 4
@tegra_dsi_host_ops = internal constant { %struct.mipi_dsi_host_ops, [20 x i8] } { %struct.mipi_dsi_host_ops { ptr @tegra_dsi_host_attach, ptr @tegra_dsi_host_detach, ptr @tegra_dsi_host_transfer }, [20 x i8] zeroinitializer }, align 32
@tegra_dsi_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1633, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register DSI host: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_dsi_probe._entry_ptr.24 = internal global ptr @tegra_dsi_probe._entry.22, section ".printk_index", align 4
@dsi_client_ops = internal constant { %struct.host1x_client_ops, [40 x i8] } { %struct.host1x_client_ops { ptr null, ptr @tegra_dsi_init, ptr @tegra_dsi_exit, ptr null, ptr @tegra_dsi_runtime_suspend, ptr @tegra_dsi_runtime_resume }, [40 x i8] zeroinitializer }, align 32
@tegra_dsi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra_dsi_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 1647, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register host1x client: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_dsi_probe._entry_ptr.27 = internal global ptr @tegra_dsi_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvidia,ganged-mode\00", [45 x i8] zeroinitializer }, align 32
@tegra_dsi_host_attach.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 1, i8 114, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra_drm\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_dsi_host_attach\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"attaching dual-channel device %s\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_dsi_host_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 1485, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set up ganged mode: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_dsi_host_attach._entry_ptr = internal global ptr @tegra_dsi_host_attach._entry, section ".printk_index", align 4
@tegra_dsi_host_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 1421, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown status: %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_dsi_host_transfer\00", [40 x i8] zeroinitializer }, align 32
@tegra_dsi_host_transfer._entry_ptr = internal global ptr @tegra_dsi_host_transfer._entry, section ".printk_index", align 4
@tegra_dsi_host_transfer._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 1430, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to parse response: %zd\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_dsi_host_transfer._entry_ptr.37 = internal global ptr @tegra_dsi_host_transfer._entry.35, section ".printk_index", align 4
@__tracepoint_dsi_readl = external dso_local global %struct.tracepoint, align 4
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/tegra/trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_dsi_readl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_dsi_writel = external dso_local global %struct.tracepoint, align 4
@trace_dsi_writel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"timeout waiting for transmission to complete\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"peripheral returned no data\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_dsi_read_response.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 1, i8 49, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_dsi_read_response\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Acknowledge and error report: %04x\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_dsi_read_response.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.43, ptr @.str.4, ptr @.str.45, i8 1, i8 50, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"  %2u: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@error_report = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], [32 x i8] zeroinitializer }, align 32
@tegra_dsi_read_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.4, i32 1248, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unhandled response type: %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_dsi_read_response._entry_ptr = internal global ptr @tegra_dsi_read_response._entry, section ".printk_index", align 4
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SoT Error\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SoT Sync Error\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EoT Sync Error\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Escape Mode Entry Command Error\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Low-Power Transmit Sync Error\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Peripheral Timeout Error\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"False Control Error\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Contention Detected\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ECC Error, single-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ECC Error, multi-bit\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Checksum Error\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DSI Data Type Not Recognized\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSI VC ID Invalid\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid Transmission Length\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DSI Protocol Violation\00", [41 x i8] zeroinitializer }, align 32
@tegra_dsi_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @tegra_dsi_connector_reset, ptr @tegra_output_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @tegra_dsi_late_register, ptr @tegra_dsi_early_unregister, ptr @tegra_output_connector_destroy, ptr @tegra_dsi_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_dsi_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @tegra_output_connector_get_modes, ptr null, ptr @tegra_dsi_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tegra_dsi_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_dsi_encoder_disable, ptr @tegra_dsi_encoder_enable, ptr @tegra_dsi_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@tegra_dsi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 1066, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize output: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_dsi_init\00", [17 x i8] zeroinitializer }, align 32
@tegra_dsi_init._entry_ptr = internal global ptr @tegra_dsi_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@debugfs_files = internal global { [1 x %struct.drm_info_list], [16 x i8] } { [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.65, ptr @tegra_dsi_show_regs, i32 0, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@tegra_dsi_regs = internal constant { [71 x %struct.debugfs_reg32], [136 x i8] } { [71 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.67, i32 0 }, %struct.debugfs_reg32 { ptr @.str.68, i32 1 }, %struct.debugfs_reg32 { ptr @.str.69, i32 2 }, %struct.debugfs_reg32 { ptr @.str.70, i32 8 }, %struct.debugfs_reg32 { ptr @.str.71, i32 9 }, %struct.debugfs_reg32 { ptr @.str.72, i32 10 }, %struct.debugfs_reg32 { ptr @.str.73, i32 11 }, %struct.debugfs_reg32 { ptr @.str.74, i32 12 }, %struct.debugfs_reg32 { ptr @.str.75, i32 13 }, %struct.debugfs_reg32 { ptr @.str.76, i32 14 }, %struct.debugfs_reg32 { ptr @.str.77, i32 15 }, %struct.debugfs_reg32 { ptr @.str.78, i32 16 }, %struct.debugfs_reg32 { ptr @.str.79, i32 17 }, %struct.debugfs_reg32 { ptr @.str.80, i32 18 }, %struct.debugfs_reg32 { ptr @.str.81, i32 19 }, %struct.debugfs_reg32 { ptr @.str.82, i32 20 }, %struct.debugfs_reg32 { ptr @.str.83, i32 21 }, %struct.debugfs_reg32 { ptr @.str.84, i32 26 }, %struct.debugfs_reg32 { ptr @.str.85, i32 27 }, %struct.debugfs_reg32 { ptr @.str.86, i32 28 }, %struct.debugfs_reg32 { ptr @.str.87, i32 29 }, %struct.debugfs_reg32 { ptr @.str.88, i32 30 }, %struct.debugfs_reg32 { ptr @.str.89, i32 31 }, %struct.debugfs_reg32 { ptr @.str.90, i32 32 }, %struct.debugfs_reg32 { ptr @.str.91, i32 33 }, %struct.debugfs_reg32 { ptr @.str.92, i32 34 }, %struct.debugfs_reg32 { ptr @.str.93, i32 35 }, %struct.debugfs_reg32 { ptr @.str.94, i32 36 }, %struct.debugfs_reg32 { ptr @.str.95, i32 37 }, %struct.debugfs_reg32 { ptr @.str.96, i32 38 }, %struct.debugfs_reg32 { ptr @.str.97, i32 39 }, %struct.debugfs_reg32 { ptr @.str.98, i32 40 }, %struct.debugfs_reg32 { ptr @.str.99, i32 41 }, %struct.debugfs_reg32 { ptr @.str.100, i32 42 }, %struct.debugfs_reg32 { ptr @.str.101, i32 43 }, %struct.debugfs_reg32 { ptr @.str.102, i32 44 }, %struct.debugfs_reg32 { ptr @.str.103, i32 45 }, %struct.debugfs_reg32 { ptr @.str.104, i32 46 }, %struct.debugfs_reg32 { ptr @.str.105, i32 51 }, %struct.debugfs_reg32 { ptr @.str.106, i32 52 }, %struct.debugfs_reg32 { ptr @.str.107, i32 53 }, %struct.debugfs_reg32 { ptr @.str.108, i32 54 }, %struct.debugfs_reg32 { ptr @.str.109, i32 55 }, %struct.debugfs_reg32 { ptr @.str.110, i32 60 }, %struct.debugfs_reg32 { ptr @.str.111, i32 61 }, %struct.debugfs_reg32 { ptr @.str.112, i32 62 }, %struct.debugfs_reg32 { ptr @.str.113, i32 63 }, %struct.debugfs_reg32 { ptr @.str.114, i32 68 }, %struct.debugfs_reg32 { ptr @.str.115, i32 69 }, %struct.debugfs_reg32 { ptr @.str.116, i32 70 }, %struct.debugfs_reg32 { ptr @.str.117, i32 75 }, %struct.debugfs_reg32 { ptr @.str.118, i32 76 }, %struct.debugfs_reg32 { ptr @.str.119, i32 77 }, %struct.debugfs_reg32 { ptr @.str.120, i32 78 }, %struct.debugfs_reg32 { ptr @.str.121, i32 79 }, %struct.debugfs_reg32 { ptr @.str.122, i32 80 }, %struct.debugfs_reg32 { ptr @.str.123, i32 81 }, %struct.debugfs_reg32 { ptr @.str.124, i32 82 }, %struct.debugfs_reg32 { ptr @.str.125, i32 83 }, %struct.debugfs_reg32 { ptr @.str.126, i32 84 }, %struct.debugfs_reg32 { ptr @.str.127, i32 85 }, %struct.debugfs_reg32 { ptr @.str.128, i32 86 }, %struct.debugfs_reg32 { ptr @.str.129, i32 87 }, %struct.debugfs_reg32 { ptr @.str.130, i32 88 }, %struct.debugfs_reg32 { ptr @.str.131, i32 89 }, %struct.debugfs_reg32 { ptr @.str.132, i32 90 }, %struct.debugfs_reg32 { ptr @.str.133, i32 91 }, %struct.debugfs_reg32 { ptr @.str.134, i32 92 }, %struct.debugfs_reg32 { ptr @.str.135, i32 93 }, %struct.debugfs_reg32 { ptr @.str.136, i32 94 }, %struct.debugfs_reg32 { ptr @.str.137, i32 95 }], [136 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%-32s %#05x %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DSI_INCR_SYNCPT\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DSI_INCR_SYNCPT_CONTROL\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSI_INCR_SYNCPT_ERROR\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DSI_CTXSW\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DSI_RD_DATA\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DSI_WR_DATA\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSI_POWER_CONTROL\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSI_INT_ENABLE\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSI_INT_STATUS\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI_INT_MASK\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_HOST_CONTROL\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DSI_CONTROL\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DSI_SOL_DELAY\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSI_MAX_THRESHOLD\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DSI_TRIGGER\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DSI_TX_CRC\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DSI_STATUS\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSI_INIT_SEQ_CONTROL\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSI_INIT_SEQ_DATA_0\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSI_INIT_SEQ_DATA_1\00", [44 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSI_INIT_SEQ_DATA_2\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSI_INIT_SEQ_DATA_3\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSI_INIT_SEQ_DATA_4\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSI_INIT_SEQ_DATA_5\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSI_INIT_SEQ_DATA_6\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSI_INIT_SEQ_DATA_7\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_PKT_SEQ_0_LO\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_PKT_SEQ_0_HI\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_PKT_SEQ_1_LO\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_PKT_SEQ_1_HI\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_PKT_SEQ_2_LO\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_PKT_SEQ_2_HI\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_PKT_SEQ_3_LO\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_PKT_SEQ_3_HI\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_PKT_SEQ_4_LO\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_PKT_SEQ_4_HI\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_PKT_SEQ_5_LO\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_PKT_SEQ_5_HI\00", [47 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI_DCS_CMDS\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DSI_PKT_LEN_0_1\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DSI_PKT_LEN_2_3\00", [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DSI_PKT_LEN_4_5\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DSI_PKT_LEN_6_7\00", [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_PHY_TIMING_0\00", [47 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_PHY_TIMING_1\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI_PHY_TIMING_2\00", [47 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSI_BTA_TIMING\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DSI_TIMEOUT_0\00", [18 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DSI_TIMEOUT_1\00", [18 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI_TO_TALLY\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSI_PAD_CONTROL_0\00", [46 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSI_PAD_CONTROL_CD\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSI_PAD_CD_STATUS\00", [46 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DSI_VIDEO_MODE_CONTROL\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSI_PAD_CONTROL_1\00", [46 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSI_PAD_CONTROL_2\00", [46 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSI_PAD_CONTROL_3\00", [46 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSI_PAD_CONTROL_4\00", [46 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DSI_GANGED_MODE_CONTROL\00", [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSI_GANGED_MODE_START\00", [42 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSI_GANGED_MODE_SIZE\00", [43 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DSI_RAW_DATA_BYTE_COUNT\00", [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DSI_ULTRA_LOW_POWER_CONTROL\00", [36 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSI_INIT_SEQ_DATA_8\00", [44 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSI_INIT_SEQ_DATA_9\00", [44 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSI_INIT_SEQ_DATA_10\00", [43 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSI_INIT_SEQ_DATA_11\00", [43 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSI_INIT_SEQ_DATA_12\00", [43 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSI_INIT_SEQ_DATA_13\00", [43 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSI_INIT_SEQ_DATA_14\00", [43 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSI_INIT_SEQ_DATA_15\00", [43 x i8] zeroinitializer }, align 32
@tegra_dsi_encoder_disable.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.138, ptr @.str.4, ptr @.str.139, i8 0, i8 -39, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_dsi_encoder_disable\00", [38 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to idle DSI: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_dc_readl = external dso_local global %struct.tracepoint, align 4
@trace_dc_readl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dc_writel = external dso_local global %struct.tracepoint, align 4
@trace_dc_writel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tegra_dsi_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.4, i32 834, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to disable MIPI calibration: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_dsi_unprepare\00", [44 x i8] zeroinitializer }, align 32
@tegra_dsi_unprepare._entry_ptr = internal global ptr @tegra_dsi_unprepare._entry, section ".printk_index", align 4
@tegra_dsi_unprepare._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.141, ptr @.str.4, i32 838, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to suspend: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra_dsi_unprepare._entry_ptr.144 = internal global ptr @tegra_dsi_unprepare._entry.142, section ".printk_index", align 4
@tegra_dsi_encoder_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.4, i32 917, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to prepare: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_dsi_encoder_enable\00", [39 x i8] zeroinitializer }, align 32
@tegra_dsi_encoder_enable._entry_ptr = internal global ptr @tegra_dsi_encoder_enable._entry, section ".printk_index", align 4
@tegra_dsi_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.4, i32 886, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to resume: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_dsi_prepare\00", [46 x i8] zeroinitializer }, align 32
@tegra_dsi_prepare._entry_ptr = internal global ptr @tegra_dsi_prepare._entry, section ".printk_index", align 4
@tegra_dsi_prepare._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.4, i32 893, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to enable MIPI calibration: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_dsi_prepare._entry_ptr.151 = internal global ptr @tegra_dsi_prepare._entry.149, section ".printk_index", align 4
@tegra_dsi_prepare._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.148, ptr @.str.4, i32 897, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MIPI calibration failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_dsi_prepare._entry_ptr.154 = internal global ptr @tegra_dsi_prepare._entry.152, section ".printk_index", align 4
@.str.155 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Non-burst video mode with sync pulses\0A\00", [57 x i8] zeroinitializer }, align 32
@pkt_seq_video_non_burst_sync_pulses = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 2022385160, i32 0, i32 2022385288, i32 0, i32 2022385416, i32 0, i32 948643592, i32 751816394, i32 2022385416, i32 0, i32 948643592, i32 751816394], [48 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Non-burst video mode with sync events\0A\00", [57 x i8] zeroinitializer }, align 32
@pkt_seq_video_non_burst_sync_events = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1074339336, i32 0, i32 1074339592, i32 0, i32 1074339592, i32 0, i32 1060842248, i32 716, i32 1074339592, i32 0, i32 1060842248, i32 716], [48 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Command mode\0A\00", [18 x i8] zeroinitializer }, align 32
@pkt_seq_command_mode = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073742795, i32 0, i32 0, i32 0, i32 1073742797, i32 0], [48 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mul: %u, div: %u, lanes: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"format: %u, vrefresh: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bclk: %lu\0A\00", [21 x i8] zeroinitializer }, align 32
@tegra_dsi_encoder_atomic_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.4, i32 998, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to validate D-PHY timing: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra_dsi_encoder_atomic_check\00", [33 x i8] zeroinitializer }, align 32
@tegra_dsi_encoder_atomic_check._entry_ptr = internal global ptr @tegra_dsi_encoder_atomic_check._entry, section ".printk_index", align 4
@tegra_dsi_encoder_atomic_check._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str.4, i32 1024, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to setup CRTC state: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_dsi_encoder_atomic_check._entry_ptr.165 = internal global ptr @tegra_dsi_encoder_atomic_check._entry.163, section ".printk_index", align 4
@tegra_dsi_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.4, i32 1092, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to assert reset: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_dsi_runtime_suspend\00", [38 x i8] zeroinitializer }, align 32
@tegra_dsi_runtime_suspend._entry_ptr = internal global ptr @tegra_dsi_runtime_suspend._entry, section ".printk_index", align 4
@tegra_dsi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.4, i32 1116, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get runtime PM: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_dsi_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@tegra_dsi_runtime_resume._entry_ptr = internal global ptr @tegra_dsi_runtime_resume._entry, section ".printk_index", align 4
@tegra_dsi_runtime_resume._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.4, i32 1122, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable VDD supply: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_dsi_runtime_resume._entry_ptr.172 = internal global ptr @tegra_dsi_runtime_resume._entry.170, section ".printk_index", align 4
@tegra_dsi_runtime_resume._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.169, ptr @.str.4, i32 1128, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot enable DSI clock: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_dsi_runtime_resume._entry_ptr.175 = internal global ptr @tegra_dsi_runtime_resume._entry.173, section ".printk_index", align 4
@tegra_dsi_runtime_resume._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.169, ptr @.str.4, i32 1134, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot enable low-power clock: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_dsi_runtime_resume._entry_ptr.178 = internal global ptr @tegra_dsi_runtime_resume._entry.176, section ".printk_index", align 4
@tegra_dsi_runtime_resume._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.169, ptr @.str.4, i32 1143, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot assert reset: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_dsi_runtime_resume._entry_ptr.181 = internal global ptr @tegra_dsi_runtime_resume._entry.179, section ".printk_index", align 4
@tegra_dsi_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.4, i32 1670, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to unregister host1x client: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_dsi_remove\00", [47 x i8] zeroinitializer }, align 32
@tegra_dsi_remove._entry_ptr = internal global ptr @tegra_dsi_remove._entry, section ".printk_index", align 4
@switch.table.tegra_dsi_encoder_atomic_check = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 9, i32 3, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.tegra_dsi_encoder_atomic_check.184 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 4, i32 1, i32 1], [16 x i8] zeroinitializer }, align 32
@switch.table.tegra_dsi_encoder_atomic_check.185 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 1, i32 2, i32 0], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 132, i64 135]
@__sancov_gen_cov_switch_values.186 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 26, i64 28, i64 33, i64 34]
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1693, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant [19 x i8] c"tegra_dsi_of_match\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1682, i32 34 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"tegra_dsi_driver\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1691, i32 24 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1584, i32 49 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1591, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1595, i32 41 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1597, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1601, i32 45 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1603, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1607, i32 44 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1609, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1615, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [19 x i8] c"tegra_dsi_host_ops\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1524, i32 39 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1633, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [15 x i8] c"dsi_client_ops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1161, i32 39 }
@___asan_gen_.262 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1644, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1646, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1534, i32 43 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1479, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1484, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1421, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1428, i32 5 }
@___asan_gen_.308 = private unnamed_addr constant [33 x i8] c"../drivers/gpu/drm/tegra/trace.h\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 44, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 108, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1282, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1301, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1219, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1223, i32 5 }
@___asan_gen_.328 = private unnamed_addr constant [13 x i8] c"error_report\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1184, i32 27 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1247, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1185, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1186, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1187, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1188, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1189, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1190, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1191, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1192, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1193, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1194, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1195, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1196, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1197, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1198, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1199, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1200, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant [26 x i8] c"tegra_dsi_connector_funcs\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 801, i32 41 }
@___asan_gen_.388 = private unnamed_addr constant [33 x i8] c"tegra_dsi_connector_helper_funcs\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 819, i32 48 }
@___asan_gen_.391 = private unnamed_addr constant [31 x i8] c"tegra_dsi_encoder_helper_funcs\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1031, i32 46 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1065, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant [14 x i8] c"debugfs_files\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 227, i32 29 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 228, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant [15 x i8] c"tegra_dsi_regs\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 125, i32 35 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 218, i32 17 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 126, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 127, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 128, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 129, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 130, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 131, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 132, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 133, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 134, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 135, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 136, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 137, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 138, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 139, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 140, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 141, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 142, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 143, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 144, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 145, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 146, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 147, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 148, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 149, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 150, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 151, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 152, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 153, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 154, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 155, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 156, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 157, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 158, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 159, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 160, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 161, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 162, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 163, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 164, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 165, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 166, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 167, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 168, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 169, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 170, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 171, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 172, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 173, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 174, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 175, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 176, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 177, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 178, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 179, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 180, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 181, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 182, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 183, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 184, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 185, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 186, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 187, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 188, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 189, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 190, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 191, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 192, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 193, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 194, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 195, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 196, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 868, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 833, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 838, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 917, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 886, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 892, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 897, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 496, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant [36 x i8] c"pkt_seq_video_non_burst_sync_pulses\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 277, i32 18 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 499, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant [36 x i8] c"pkt_seq_video_non_burst_sync_events\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 315, i32 18 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 502, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant [21 x i8] c"pkt_seq_command_mode\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 342, i32 18 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 980, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 982, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 984, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 998, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1024, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1092, i32 4 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1116, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1122, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1128, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1134, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1143, i32 4 }
@___asan_gen_.763 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.769 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.770 = private constant [31 x i8] c"../drivers/gpu/drm/tegra/dsi.c\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1669, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant [44 x i8] c"switch.table.tegra_dsi_encoder_atomic_check\00", align 1
@___asan_gen_.773 = private unnamed_addr constant [48 x i8] c"switch.table.tegra_dsi_encoder_atomic_check.184\00", align 1
@___asan_gen_.774 = private unnamed_addr constant [48 x i8] c"switch.table.tegra_dsi_encoder_atomic_check.185\00", align 1
@llvm.compiler.used = appending global [225 x ptr] [ptr @tegra_dsi_encoder_atomic_check._entry, ptr @tegra_dsi_encoder_atomic_check._entry.163, ptr @tegra_dsi_encoder_atomic_check._entry_ptr, ptr @tegra_dsi_encoder_atomic_check._entry_ptr.165, ptr @tegra_dsi_encoder_enable._entry, ptr @tegra_dsi_encoder_enable._entry_ptr, ptr @tegra_dsi_host_attach._entry, ptr @tegra_dsi_host_attach._entry_ptr, ptr @tegra_dsi_host_transfer._entry, ptr @tegra_dsi_host_transfer._entry.35, ptr @tegra_dsi_host_transfer._entry_ptr, ptr @tegra_dsi_host_transfer._entry_ptr.37, ptr @tegra_dsi_init._entry, ptr @tegra_dsi_init._entry_ptr, ptr @tegra_dsi_prepare._entry, ptr @tegra_dsi_prepare._entry.149, ptr @tegra_dsi_prepare._entry.152, ptr @tegra_dsi_prepare._entry_ptr, ptr @tegra_dsi_prepare._entry_ptr.151, ptr @tegra_dsi_prepare._entry_ptr.154, ptr @tegra_dsi_probe._entry, ptr @tegra_dsi_probe._entry.12, ptr @tegra_dsi_probe._entry.16, ptr @tegra_dsi_probe._entry.19, ptr @tegra_dsi_probe._entry.22, ptr @tegra_dsi_probe._entry.25, ptr @tegra_dsi_probe._entry.8, ptr @tegra_dsi_probe._entry_ptr, ptr @tegra_dsi_probe._entry_ptr.10, ptr @tegra_dsi_probe._entry_ptr.14, ptr @tegra_dsi_probe._entry_ptr.18, ptr @tegra_dsi_probe._entry_ptr.21, ptr @tegra_dsi_probe._entry_ptr.24, ptr @tegra_dsi_probe._entry_ptr.27, ptr @tegra_dsi_read_response._entry, ptr @tegra_dsi_read_response._entry_ptr, ptr @tegra_dsi_remove._entry, ptr @tegra_dsi_remove._entry_ptr, ptr @tegra_dsi_runtime_resume._entry, ptr @tegra_dsi_runtime_resume._entry.170, ptr @tegra_dsi_runtime_resume._entry.173, ptr @tegra_dsi_runtime_resume._entry.176, ptr @tegra_dsi_runtime_resume._entry.179, ptr @tegra_dsi_runtime_resume._entry_ptr, ptr @tegra_dsi_runtime_resume._entry_ptr.172, ptr @tegra_dsi_runtime_resume._entry_ptr.175, ptr @tegra_dsi_runtime_resume._entry_ptr.178, ptr @tegra_dsi_runtime_resume._entry_ptr.181, ptr @tegra_dsi_runtime_suspend._entry, ptr @tegra_dsi_runtime_suspend._entry_ptr, ptr @tegra_dsi_unprepare._entry, ptr @tegra_dsi_unprepare._entry.142, ptr @tegra_dsi_unprepare._entry_ptr, ptr @tegra_dsi_unprepare._entry_ptr.144, ptr @.str, ptr @tegra_dsi_of_match, ptr @tegra_dsi_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @tegra_dsi_host_ops, ptr @.str.23, ptr @dsi_client_ops, ptr @tegra_dsi_probe.__key, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @error_report, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @tegra_dsi_connector_funcs, ptr @tegra_dsi_connector_helper_funcs, ptr @tegra_dsi_encoder_helper_funcs, ptr @.str.63, ptr @.str.64, ptr @debugfs_files, ptr @.str.65, ptr @tegra_dsi_regs, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.153, ptr @.str.155, ptr @pkt_seq_video_non_burst_sync_pulses, ptr @.str.156, ptr @pkt_seq_video_non_burst_sync_events, ptr @.str.157, ptr @pkt_seq_command_mode, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.182, ptr @.str.183, ptr @switch.table.tegra_dsi_encoder_atomic_check, ptr @switch.table.tegra_dsi_encoder_atomic_check.184, ptr @switch.table.tegra_dsi_encoder_atomic_check.185], section "llvm.metadata"
@0 = internal global [198 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_host_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_client_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_host_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_host_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_host_transfer._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_report to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_read_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_files to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_regs to i32), i32 568, i32 704, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_unprepare._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_encoder_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_prepare._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_prepare._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_seq_video_non_burst_sync_pulses to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_seq_video_non_burst_sync_events to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_seq_command_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_encoder_atomic_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_encoder_atomic_check._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_runtime_resume._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_runtime_resume._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_runtime_resume._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_runtime_resume._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dsi_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_dsi_encoder_atomic_check to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_dsi_encoder_atomic_check.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_dsi_encoder_atomic_check.185 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dsi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1472, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 8
  %dev3 = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev3, align 4
  %video_fifo_depth = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 15
  %2 = ptrtoint ptr %video_fifo_depth to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1920, ptr %video_fifo_depth, align 8
  %host_fifo_depth = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 16
  %3 = ptrtoint ptr %host_fifo_depth to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 64, ptr %host_fifo_depth, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #10
  %6 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.28, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #10
  br label %if.end6

of_parse_phandle.exit.i:                          ; preds = %if.end
  %7 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #10
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.if.end6_crit_edge, label %if.then.i

of_parse_phandle.exit.i.if.end6_crit_edge:        ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then.i:                                        ; preds = %of_parse_phandle.exit.i
  %call1.i = call ptr @of_find_device_by_node(ptr noundef nonnull %8) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %call1.i, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  %slave.i = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 18
  %11 = ptrtoint ptr %slave.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %slave.i, align 4
  call void @of_node_put(ptr noundef nonnull %8) #10
  %12 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slave.i, align 4
  %tobool4.not.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %master.i = getelementptr inbounds %struct.tegra_dsi, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %master.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %master.i, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end.i, %of_parse_phandle.exit.i.if.end6_crit_edge, %of_parse_phandle.exit.thread.i
  %output = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 1
  %call8 = call i32 @tegra_output_probe(ptr noundef %output) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %polled = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 1, i32 10, i32 33
  %15 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %polled, align 4
  %flags = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 9
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %flags, align 4
  %format = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 10
  %17 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %format, align 8
  %lanes = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 11
  %18 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %lanes, align 4
  %pm_domain = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 13
  %19 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pm_domain, align 8
  %tobool14.not = icmp eq ptr %20, null
  br i1 %tobool14.not, label %if.then15, label %if.end11.if.end24_crit_edge

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then15:                                        ; preds = %if.end11
  %call.i.i204 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %rst = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i204, ptr %rst, align 8
  %cmp.i = icmp ugt ptr %call.i.i204, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.then15.if.end24_crit_edge

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %call.i.i204 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.then15.if.end24_crit_edge, %if.end11.if.end24_crit_edge
  %call26 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call26, ptr %clk, align 4
  %cmp.i205 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %do.end, label %if.end33

do.end:                                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #13
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %call35 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  %clk_lp = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %clk_lp to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call35, ptr %clk_lp, align 8
  %cmp.i206 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %do.end41, label %if.end45

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #13
  %28 = ptrtoint ptr %clk_lp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_lp, align 8
  %30 = ptrtoint ptr %29 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end33
  %call47 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  %clk_parent = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %clk_parent to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call47, ptr %clk_parent, align 4
  %cmp.i207 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207, label %do.end53, label %if.end57

do.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #13
  %32 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_parent, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.end45
  %call59 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  %vdd = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 14
  %35 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call59, ptr %vdd, align 4
  %cmp.i208 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %do.end65, label %if.end69

do.end65:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #13
  %36 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vdd, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %cleanup

if.end69:                                         ; preds = %if.end57
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 4
  %call.i209 = call ptr @clk_get_parent(ptr noundef %40) #10
  %tobool.not.i210 = icmp eq ptr %call.i209, null
  br i1 %tobool.not.i210, label %if.end69.do.end75_crit_edge, label %tegra_dsi_setup_clocks.exit

if.end69.do.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75

tegra_dsi_setup_clocks.exit:                      ; preds = %if.end69
  %41 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk_parent, align 4
  %call1.i211 = call i32 @clk_set_parent(ptr noundef nonnull %call.i209, ptr noundef %42) #10
  %43 = call i32 @llvm.smin.i32(i32 %call1.i211, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i211)
  %cmp71 = icmp slt i32 %call1.i211, 0
  br i1 %cmp71, label %tegra_dsi_setup_clocks.exit.do.end75_crit_edge, label %if.end77

tegra_dsi_setup_clocks.exit.do.end75_crit_edge:   ; preds = %tegra_dsi_setup_clocks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75

do.end75:                                         ; preds = %tegra_dsi_setup_clocks.exit.do.end75_crit_edge, %if.end69.do.end75_crit_edge
  %retval.0.i219 = phi i32 [ %43, %tegra_dsi_setup_clocks.exit.do.end75_crit_edge ], [ -22, %if.end69.do.end75_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end77:                                         ; preds = %tegra_dsi_setup_clocks.exit
  %call78 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call80 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call78) #10
  %regs81 = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 3
  %44 = ptrtoint ptr %regs81 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call80, ptr %regs81, align 4
  %cmp.i213 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %call80 to i32
  br label %cleanup

if.end87:                                         ; preds = %if.end77
  %46 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node.i, align 8
  %call90 = call ptr @tegra_mipi_request(ptr noundef %dev, ptr noundef %47) #10
  %mipi = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 12
  %48 = ptrtoint ptr %mipi to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call90, ptr %mipi, align 8
  %cmp.i214 = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %if.then93, label %if.end96

if.then93:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %call90 to i32
  br label %cleanup

if.end96:                                         ; preds = %if.end87
  %host = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 13
  %ops = getelementptr inbounds %struct.tegra_dsi, ptr %call.i, i32 0, i32 13, i32 1
  %50 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @tegra_dsi_host_ops, ptr %ops, align 4
  %51 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dev, ptr %host, align 4
  %call101 = call i32 @mipi_dsi_host_register(ptr noundef %host) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %do.end106, label %if.end108

do.end106:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call101) #13
  br label %mipi_free

if.end108:                                        ; preds = %if.end96
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #10
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %prev.i, align 4
  %ops111 = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 4
  %55 = ptrtoint ptr %ops111 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @dsi_client_ops, ptr %ops111, align 4
  %dev114 = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 2
  %56 = ptrtoint ptr %dev114 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dev, ptr %dev114, align 4
  call void @__host1x_client_init(ptr noundef nonnull %call.i, ptr noundef nonnull @tegra_dsi_probe.__key) #10
  %call117 = call i32 @__host1x_client_register(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %do.end122, label %if.end108.cleanup_crit_edge

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end122:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call117) #13
  call void @mipi_dsi_host_unregister(ptr noundef %host) #10
  br label %mipi_free

mipi_free:                                        ; preds = %do.end122, %do.end106
  %err.0 = phi i32 [ %call101, %do.end106 ], [ %call117, %do.end122 ]
  %57 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mipi, align 8
  call void @tegra_mipi_free(ptr noundef %58) #10
  br label %cleanup

cleanup:                                          ; preds = %mipi_free, %if.end108.cleanup_crit_edge, %if.then93, %if.then84, %do.end75, %do.end65, %do.end53, %do.end41, %do.end, %if.then20, %if.end6.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %do.end ], [ %30, %do.end41 ], [ %34, %do.end53 ], [ %38, %do.end65 ], [ %retval.0.i219, %do.end75 ], [ %45, %if.then84 ], [ %49, %if.then93 ], [ %err.0, %mipi_free ], [ %22, %if.then20 ], [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ], [ 0, %if.end108.cleanup_crit_edge ], [ -517, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dsi_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %call1 = tail call i32 @host1x_client_unregister(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.182, i32 noundef %call1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %output = getelementptr inbounds %struct.tegra_dsi, ptr %1, i32 0, i32 1
  tail call void @tegra_output_remove(ptr noundef %output) #10
  %host = getelementptr inbounds %struct.tegra_dsi, ptr %1, i32 0, i32 13
  tail call void @mipi_dsi_host_unregister(ptr noundef %host) #10
  %mipi = getelementptr inbounds %struct.tegra_dsi, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mipi, align 8
  tail call void @tegra_mipi_free(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_mipi_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_mipi_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dsi_host_attach(ptr nocapture noundef %host, ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 6
  %0 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode_flags, align 8
  %flags = getelementptr i8, ptr %host, i32 -16
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %flags, align 4
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 5
  %3 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %format, align 4
  %format1 = getelementptr i8, ptr %host, i32 -12
  %5 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %format1, align 8
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 4
  %6 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lanes, align 8
  %lanes2 = getelementptr i8, ptr %host, i32 -8
  %8 = ptrtoint ptr %lanes2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lanes2, align 4
  %slave = getelementptr i8, ptr %host, i32 32
  %9 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slave, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_dsi_host_attach.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_dsi_host_attach, %do.end)) #10
          to label %if.then8 [label %do.end], !srcloc !398

if.then8:                                         ; preds = %if.then
  %dev = getelementptr i8, ptr %host, i32 -44
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then8.dev_name.exit_crit_edge

if.then8.dev_name.exit_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %dev9 = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 1
  %15 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then8.dev_name.exit_crit_edge
  %retval.0.i59 = phi ptr [ %16, %if.end.i ], [ %14, %if.then8.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_dsi_host_attach.__UNIQUE_ID_ddebug346, ptr noundef %12, ptr noundef nonnull @.str.31, ptr noundef %retval.0.i59) #10
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %if.then
  %17 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %slave, align 4
  %clk.i = getelementptr inbounds %struct.tegra_dsi, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk.i, align 4
  %call.i = tail call ptr @clk_get_parent(ptr noundef %20) #10
  %tobool.not.i60 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i60, label %do.end.do.end15_crit_edge, label %tegra_dsi_ganged_setup.exit

do.end.do.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

tegra_dsi_ganged_setup.exit:                      ; preds = %do.end
  %clk_parent.i = getelementptr i8, ptr %host, i32 -32
  %21 = ptrtoint ptr %clk_parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_parent.i, align 4
  %call1.i = tail call i32 @clk_set_parent(ptr noundef nonnull %call.i, ptr noundef %22) #10
  %23 = tail call i32 @llvm.smin.i32(i32 %call1.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %tegra_dsi_ganged_setup.exit.do.end15_crit_edge, label %tegra_dsi_ganged_setup.exit.if.end18_crit_edge

tegra_dsi_ganged_setup.exit.if.end18_crit_edge:   ; preds = %tegra_dsi_ganged_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

tegra_dsi_ganged_setup.exit.do.end15_crit_edge:   ; preds = %tegra_dsi_ganged_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.end15:                                         ; preds = %tegra_dsi_ganged_setup.exit.do.end15_crit_edge, %do.end.do.end15_crit_edge
  %retval.0.i6266 = phi i32 [ %23, %tegra_dsi_ganged_setup.exit.do.end15_crit_edge ], [ -22, %do.end.do.end15_crit_edge ]
  %dev16 = getelementptr i8, ptr %host, i32 -44
  %24 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i6266) #13
  br label %cleanup39

if.end18:                                         ; preds = %tegra_dsi_ganged_setup.exit.if.end18_crit_edge, %entry.if.end18_crit_edge
  %master = getelementptr i8, ptr %host, i32 28
  %26 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master, align 8
  %tobool19.not = icmp eq ptr %27, null
  br i1 %tobool19.not, label %if.then20, label %if.end18.cleanup39_crit_edge

if.end18.cleanup39_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

if.then20:                                        ; preds = %if.end18
  %of_node = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 1, i32 27
  %28 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node, align 8
  %call23 = tail call ptr @of_drm_find_panel(ptr noundef %29) #10
  %panel = getelementptr i8, ptr %host, i32 -1184
  %30 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call23, ptr %panel, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end28.thread, label %if.end28

if.end28.thread:                                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %panel, align 4
  br label %cleanup39

if.end28:                                         ; preds = %if.then20
  %tobool30.not = icmp eq ptr %call23, null
  br i1 %tobool30.not, label %if.end28.cleanup39_crit_edge, label %land.lhs.true

if.end28.cleanup39_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

land.lhs.true:                                    ; preds = %if.end28
  %connector = getelementptr i8, ptr %host, i32 -1084
  %32 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %connector, align 8
  %tobool32.not = icmp eq ptr %33, null
  br i1 %tobool32.not, label %land.lhs.true.cleanup39_crit_edge, label %if.then33

land.lhs.true.cleanup39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef nonnull %33) #10
  br label %cleanup39

cleanup39:                                        ; preds = %if.then33, %land.lhs.true.cleanup39_crit_edge, %if.end28.cleanup39_crit_edge, %if.end28.thread, %if.end18.cleanup39_crit_edge, %do.end15
  %retval.1 = phi i32 [ %retval.0.i6266, %do.end15 ], [ 0, %if.end28.cleanup39_crit_edge ], [ 0, %land.lhs.true.cleanup39_crit_edge ], [ 0, %if.then33 ], [ 0, %if.end18.cleanup39_crit_edge ], [ 0, %if.end28.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dsi_host_detach(ptr nocapture noundef %host, ptr noundef readnone %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr i8, ptr %host, i32 -1184
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %dev, %3
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %panel, align 4
  %connector = getelementptr i8, ptr %host, i32 -1084
  %5 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %connector, align 8
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.then.if.end11_crit_edge, label %if.then7

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef nonnull %6) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dsi_host_transfer(ptr noundef readonly %host, ptr noundef %msg) #0 align 64 {
entry:
  %packet = alloca %struct.mipi_dsi_packet, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %host, i32 -1436
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %packet) #10
  %0 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 1, i32 2
  %3 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 2
  %4 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 3
  %5 = call ptr @memset(ptr %packet, i32 255, i32 16)
  %call1 = call i32 @mipi_dsi_create_packet(ptr noundef nonnull %packet, ptr noundef %msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %packet, align 4
  %video_fifo_depth = getelementptr i8, ptr %host, i32 20
  %8 = ptrtoint ptr %video_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %video_fifo_depth, align 8
  %mul = shl i32 %9, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul)
  %cmp3 = icmp ugt i32 %7, %mul
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %regs.i = getelementptr i8, ptr %host, i32 -40
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i141 = getelementptr i8, ptr %11, i32 84
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #10, !srcloc !399
  %13 = call i32 @llvm.bswap.i32(i32 %12) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %dev.i = getelementptr i8, ptr %host, i32 -44
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_dsi_readl(ptr noundef %15, i32 noundef 21, i32 noundef %13) #10
  %and = and i32 %13, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_dsi_writel(ptr noundef %17, i32 noundef 15, i32 noundef 2097152) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %19, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 8192) #10, !srcloc !402
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %21, i32 44
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #10, !srcloc !399
  %23 = call i32 @llvm.bswap.i32(i32 %22) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_dsi_readl(ptr noundef %25, i32 noundef 11, i32 noundef %23) #10
  %or = or i32 %23, 1
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_dsi_writel(ptr noundef %27, i32 noundef 11, i32 noundef %or) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  call void @arm_heavy_mb() #10
  %28 = call i32 @llvm.bswap.i32(i32 %or) #10
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %30, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 %28) #10, !srcloc !402
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #10
  %flags = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 2
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags, align 2
  %33 = and i16 %32, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp11 = icmp eq i16 %33, 0
  %spec.select = select i1 %cmp11, i32 1056803, i32 1056771
  %34 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %packet, align 4
  %host_fifo_depth = getelementptr i8, ptr %host, i32 24
  %36 = ptrtoint ptr %host_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %host_fifo_depth, align 4
  %mul17 = shl i32 %37, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %mul17)
  %cmp18 = icmp ugt i32 %35, %mul17
  %or21 = or i32 %spec.select, 16
  %value.1 = select i1 %cmp18, i32 %or21, i32 %spec.select
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_dsi_writel(ptr noundef %39, i32 noundef 15, i32 noundef %value.1) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  call void @arm_heavy_mb() #10
  %40 = call i32 @llvm.bswap.i32(i32 %value.1) #10
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %42, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %40) #10, !srcloc !402
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %flags, align 2
  %45 = and i16 %44, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool26.not = icmp eq i16 %45, 0
  br i1 %tobool26.not, label %lor.lhs.false, label %if.end8.if.then30_crit_edge

if.end8.if.then30_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end8
  %rx_buf = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %46 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_buf, align 4
  %tobool27.not = icmp eq ptr %47, null
  br i1 %tobool27.not, label %lor.lhs.false.if.end33_crit_edge, label %land.lhs.true

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true:                                    ; preds = %lor.lhs.false
  %rx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %48 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp28.not = icmp eq i32 %49, 0
  br i1 %cmp28.not, label %land.lhs.true.if.end33_crit_edge, label %land.lhs.true.if.then30_crit_edge

land.lhs.true.if.then30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then30:                                        ; preds = %land.lhs.true.if.then30_crit_edge, %if.end8.if.then30_crit_edge
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %51, i32 60
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155) #10, !srcloc !399
  %53 = call i32 @llvm.bswap.i32(i32 %52) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_dsi_readl(ptr noundef %55, i32 noundef 15, i32 noundef %53) #10
  %or32 = or i32 %53, 4
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_dsi_writel(ptr noundef %57, i32 noundef 15, i32 noundef %or32) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  call void @arm_heavy_mb() #10
  %58 = call i32 @llvm.bswap.i32(i32 %or32) #10
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %60, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %58) #10, !srcloc !402
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true.if.end33_crit_edge, %lor.lhs.false.if.end33_crit_edge
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_dsi_writel(ptr noundef %62, i32 noundef 16, i32 noundef 1) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  call void @arm_heavy_mb() #10
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %64, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 16777216) #10, !srcloc !402
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %2, align 2
  %conv34 = zext i8 %66 to i32
  %shl = shl nuw nsw i32 %conv34, 16
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %1, align 1
  %conv36 = zext i8 %68 to i32
  %shl37 = shl nuw nsw i32 %conv36, 8
  %or38 = or i32 %shl37, %shl
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %0, align 4
  %conv40 = zext i8 %70 to i32
  %or41 = or i32 %or38, %conv40
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_dsi_writel(ptr noundef %72, i32 noundef 10, i32 noundef %or41) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  call void @arm_heavy_mb() #10
  %73 = call i32 @llvm.bswap.i32(i32 %or41) #10
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 4
  %add.ptr.i165 = getelementptr i8, ptr %75, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 %73) #10, !srcloc !402
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp42.not = icmp eq i32 %77, 0
  br i1 %cmp42.not, label %if.end33.if.end46_crit_edge, label %for.cond1.preheader.lr.ph.i

if.end33.if.end46_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

for.cond1.preheader.lr.ph.i:                      ; preds = %if.end33
  %78 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %4, align 4
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.end.i.for.body4.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %j.05.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %add8.i, %for.end.i.for.body4.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %79, i32 %j.05.i
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %81 to i32
  %add.1.i = or i32 %j.05.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1.i, i32 %77)
  %cmp3.1.i = icmp ult i32 %add.1.i, %77
  br i1 %cmp3.1.i, label %for.body4.1.i, label %for.body4.i.for.end.i_crit_edge

for.body4.i.for.end.i_crit_edge:                  ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body4.1.i:                                    ; preds = %for.body4.i
  %arrayidx.1.i = getelementptr i8, ptr %79, i32 %add.1.i
  %82 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %83 to i32
  %shl6.1.i = shl nuw nsw i32 %conv.1.i, 8
  %or.1.i = or i32 %shl6.1.i, %conv.i
  %add.2.i = or i32 %j.05.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2.i, i32 %77)
  %cmp3.2.i = icmp ult i32 %add.2.i, %77
  br i1 %cmp3.2.i, label %for.body4.2.i, label %for.body4.1.i.for.end.i_crit_edge

for.body4.1.i.for.end.i_crit_edge:                ; preds = %for.body4.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body4.2.i:                                    ; preds = %for.body4.1.i
  %arrayidx.2.i = getelementptr i8, ptr %79, i32 %add.2.i
  %84 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %85 to i32
  %shl6.2.i = shl nuw nsw i32 %conv.2.i, 16
  %or.2.i = or i32 %shl6.2.i, %or.1.i
  %add.3.i = or i32 %j.05.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3.i, i32 %77)
  %cmp3.3.i = icmp ult i32 %add.3.i, %77
  br i1 %cmp3.3.i, label %for.body4.3.i, label %for.body4.2.i.for.end.i_crit_edge

for.body4.2.i.for.end.i_crit_edge:                ; preds = %for.body4.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body4.3.i:                                    ; preds = %for.body4.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.3.i = getelementptr i8, ptr %79, i32 %add.3.i
  %86 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %87 to i32
  %shl6.3.i = shl nuw i32 %conv.3.i, 24
  %or.3.i = or i32 %shl6.3.i, %or.2.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.body4.3.i, %for.body4.2.i.for.end.i_crit_edge, %for.body4.1.i.for.end.i_crit_edge, %for.body4.i.for.end.i_crit_edge
  %value.0.lcssa.i = phi i32 [ %conv.i, %for.body4.i.for.end.i_crit_edge ], [ %or.1.i, %for.body4.1.i.for.end.i_crit_edge ], [ %or.2.i, %for.body4.2.i.for.end.i_crit_edge ], [ %or.3.i, %for.body4.3.i ]
  %88 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_dsi_writel(ptr noundef %89, i32 noundef 10, i32 noundef %value.0.lcssa.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  call void @arm_heavy_mb() #10
  %90 = call i32 @llvm.bswap.i32(i32 %value.0.lcssa.i) #10
  %91 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %92, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %90) #10, !srcloc !402
  %add8.i = add i32 %j.05.i, 4
  %cmp.i = icmp ult i32 %add8.i, %77
  br i1 %cmp.i, label %for.end.i.for.body4.i_crit_edge, label %for.end.i.if.end46_crit_edge

for.end.i.if.end46_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

for.end.i.for.body4.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i

if.end46:                                         ; preds = %for.end.i.if.end46_crit_edge, %if.end33.if.end46_crit_edge
  %93 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_dsi_writel(ptr noundef %94, i32 noundef 19, i32 noundef 2) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  call void @arm_heavy_mb() #10
  %95 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i168 = getelementptr i8, ptr %96, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i168, i32 33554432) #10, !srcloc !402
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %97 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -25, %97
  %98 = load volatile i32, ptr @jiffies, align 128
  %sub5.i = add i32 %add.neg.i, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i)
  %cmp6.i = icmp slt i32 %sub5.i, 0
  br i1 %cmp6.i, label %if.end46.while.body.i_crit_edge, label %if.end46.tegra_dsi_transmit.exit.thread_crit_edge

if.end46.tegra_dsi_transmit.exit.thread_crit_edge: ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_dsi_transmit.exit.thread

if.end46.while.body.i_crit_edge:                  ; preds = %if.end46
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end46.while.body.i_crit_edge
  %99 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %100, i32 76
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #10, !srcloc !399
  %102 = call i32 @llvm.bswap.i32(i32 %101) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %103 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_dsi_readl(ptr noundef %104, i32 noundef 19, i32 noundef %102) #10
  %and.i = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 0
  br i1 %cmp2.i, label %if.end51, label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %105 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %105, %add.neg.i
  %cmp.i169 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i169, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.tegra_dsi_transmit.exit.thread_crit_edge

cleanup.i.tegra_dsi_transmit.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_dsi_transmit.exit.thread

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

tegra_dsi_transmit.exit.thread:                   ; preds = %cleanup.i.tegra_dsi_transmit.exit.thread_crit_edge, %if.end46.tegra_dsi_transmit.exit.thread_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.41) #10
  br label %cleanup

if.end51:                                         ; preds = %while.body.i
  %106 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %flags, align 2
  %108 = and i16 %107, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool55.not = icmp eq i16 %108, 0
  br i1 %tobool55.not, label %lor.lhs.false56, label %if.end51.if.then63_crit_edge

if.end51.if.then63_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

lor.lhs.false56:                                  ; preds = %if.end51
  %rx_buf57 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %109 = ptrtoint ptr %rx_buf57 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rx_buf57, align 4
  %tobool58.not = icmp eq ptr %110, null
  br i1 %tobool58.not, label %lor.lhs.false56.if.else83_crit_edge, label %land.lhs.true59

lor.lhs.false56.if.else83_crit_edge:              ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else83

land.lhs.true59:                                  ; preds = %lor.lhs.false56
  %rx_len60 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %111 = ptrtoint ptr %rx_len60 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rx_len60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp61.not = icmp eq i32 %112, 0
  br i1 %cmp61.not, label %land.lhs.true59.if.else83_crit_edge, label %land.lhs.true59.if.then63_crit_edge

land.lhs.true59.if.then63_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

land.lhs.true59.if.else83_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else83

if.then63:                                        ; preds = %land.lhs.true59.if.then63_crit_edge, %if.end51.if.then63_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %113 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i170 = sub i32 -25, %113
  %114 = load volatile i32, ptr @jiffies, align 128
  %sub2.i = add i32 %add.neg.i170, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i)
  %cmp3.i = icmp slt i32 %sub2.i, 0
  br i1 %cmp3.i, label %if.then63.while.body.i175_crit_edge, label %if.then63.tegra_dsi_wait_for_response.exit.thread_crit_edge

if.then63.tegra_dsi_wait_for_response.exit.thread_crit_edge: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_dsi_wait_for_response.exit.thread

if.then63.while.body.i175_crit_edge:              ; preds = %if.then63
  br label %while.body.i175

while.body.i175:                                  ; preds = %cleanup.i178.while.body.i175_crit_edge, %if.then63.while.body.i175_crit_edge
  %115 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i173 = getelementptr i8, ptr %116, i32 84
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i173) #10, !srcloc !399
  %118 = call i32 @llvm.bswap.i32(i32 %117) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %119 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_dsi_readl(ptr noundef %120, i32 noundef 21, i32 noundef %118) #10
  %conv.i174 = and i32 %118, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i174)
  %cmp3.not.i = icmp eq i32 %conv.i174, 0
  br i1 %cmp3.not.i, label %cleanup.i178, label %if.end68

cleanup.i178:                                     ; preds = %while.body.i175
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %121 = load volatile i32, ptr @jiffies, align 128
  %sub.i176 = add i32 %121, %add.neg.i170
  %cmp.i177 = icmp slt i32 %sub.i176, 0
  br i1 %cmp.i177, label %cleanup.i178.while.body.i175_crit_edge, label %cleanup.i178.tegra_dsi_wait_for_response.exit.thread_crit_edge

cleanup.i178.tegra_dsi_wait_for_response.exit.thread_crit_edge: ; preds = %cleanup.i178
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_dsi_wait_for_response.exit.thread

cleanup.i178.while.body.i175_crit_edge:           ; preds = %cleanup.i178
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i175

tegra_dsi_wait_for_response.exit.thread:          ; preds = %cleanup.i178.tegra_dsi_wait_for_response.exit.thread_crit_edge, %if.then63.tegra_dsi_wait_for_response.exit.thread_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.42) #10
  br label %cleanup

if.end68:                                         ; preds = %while.body.i175
  %122 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i, align 4
  %add.ptr.i182 = getelementptr i8, ptr %123, i32 36
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i182) #10, !srcloc !399
  %125 = call i32 @llvm.bswap.i32(i32 %124) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %126 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_dsi_readl(ptr noundef %127, i32 noundef 9, i32 noundef %125) #10
  %128 = zext i32 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values)
  switch i32 %125, label %do.end [
    i32 132, label %if.end68.sw.epilog_crit_edge
    i32 135, label %if.end68.sw.epilog_crit_edge194
  ]

if.end68.sw.epilog_crit_edge194:                  ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end68.sw.epilog_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.33, i32 noundef %125) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end68.sw.epilog_crit_edge, %if.end68.sw.epilog_crit_edge194
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i174)
  %cmp70 = icmp ugt i32 %conv.i174, 1
  br i1 %cmp70, label %if.then72, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then72:                                        ; preds = %sw.epilog
  %call73 = call fastcc i32 @tegra_dsi_read_response(ptr noundef %add.ptr.i, ptr noundef %msg, i32 noundef %conv.i174)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %do.end79, label %if.then72.cleanup_crit_edge

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end79:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.36, i32 noundef %call73) #13
  br label %cleanup

if.else83:                                        ; preds = %land.lhs.true59.if.else83_crit_edge, %lor.lhs.false56.if.else83_crit_edge
  %133 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %3, align 4
  %add = add i32 %134, 4
  br label %cleanup

cleanup:                                          ; preds = %if.else83, %do.end79, %if.then72.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %tegra_dsi_wait_for_response.exit.thread, %tegra_dsi_transmit.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ %conv.i174, %do.end79 ], [ 1, %sw.epilog.cleanup_crit_edge ], [ %add, %if.else83 ], [ %call73, %if.then72.cleanup_crit_edge ], [ -110, %tegra_dsi_transmit.exit.thread ], [ -110, %tegra_dsi_wait_for_response.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packet) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_create_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_dsi_read_response(ptr nocapture noundef readonly %dsi, ptr nocapture noundef readonly %msg, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buf = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %0 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_buf, align 4
  %regs.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !399
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %dev.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_readl(ptr noundef %7, i32 noundef 9, i32 noundef %5) #10
  %and = and i32 %5, 63
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %and, label %do.end59 [
    i32 2, label %sw.bb
    i32 33, label %sw.bb32
    i32 34, label %sw.bb37
    i32 28, label %sw.bb46
    i32 26, label %sw.bb51
  ]

sw.bb:                                            ; preds = %entry
  %shr = lshr i32 %5, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_dsi_read_response.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_dsi_read_response, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !398

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %conv6 = and i32 %shr, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_dsi_read_response.__UNIQUE_ID_ddebug342, ptr noundef %10, ptr noundef nonnull @.str.44, i32 noundef %conv6) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %sw.bb
  %conv8 = and i32 %shr, 65535
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %i.0150 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0150
  %and9 = and i32 %conv8, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %do.body12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_dsi_read_response.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_dsi_read_response, %for.inc)) #10
          to label %if.then26 [label %for.inc], !srcloc !398

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  %arrayidx = getelementptr [16 x ptr], ptr @error_report, i32 0, i32 %i.0150
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_dsi_read_response.__UNIQUE_ID_ddebug343, ptr noundef %12, ptr noundef nonnull @.str.45, i32 noundef %i.0150, ptr noundef %14) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %do.body12, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0150, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.sw.epilog_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shr33 = lshr i32 %5, 8
  %conv35 = trunc i32 %shr33 to i8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv35, ptr %1, align 1
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shr38 = lshr i32 %5, 8
  %conv40 = trunc i32 %shr38 to i8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv40, ptr %1, align 1
  %shr42 = lshr i32 %5, 16
  %conv44 = trunc i32 %shr42 to i8
  %arrayidx45 = getelementptr i8, ptr %1, i32 1
  %17 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv44, ptr %arrayidx45, align 1
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shr47 = lshr i32 %5, 8
  %or = and i32 %shr47, 65535
  br label %sw.epilog

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shr52 = lshr i32 %5, 8
  %or56 = and i32 %shr52, 65535
  br label %sw.epilog

do.end59:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.46, i32 noundef %and) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb51, %sw.bb46, %sw.bb37, %sw.bb32, %for.inc.sw.epilog_crit_edge
  %size.0 = phi i32 [ %or56, %sw.bb51 ], [ %or, %sw.bb46 ], [ 2, %sw.bb37 ], [ 1, %sw.bb32 ], [ 0, %for.inc.sw.epilog_crit_edge ]
  %rx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %20 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_len, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %size.0, i32 %21)
  %23 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_buf, align 4
  %tobool66.not = icmp eq ptr %24, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp67.not = icmp eq i32 %22, 0
  %or.cond = select i1 %tobool66.not, i1 true, i1 %cmp67.not
  br i1 %or.cond, label %sw.epilog.cleanup_crit_edge, label %for.cond70.preheader

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond70.preheader:                             ; preds = %sw.epilog
  %sub = add i32 %count, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp71153.not = icmp eq i32 %sub, 0
  br i1 %cmp71153.not, label %for.cond70.preheader.cleanup_crit_edge, label %for.cond70.preheader.for.body73_crit_edge

for.cond70.preheader.for.body73_crit_edge:        ; preds = %for.cond70.preheader
  br label %for.body73

for.cond70.preheader.cleanup_crit_edge:           ; preds = %for.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body73:                                       ; preds = %for.end92.for.body73_crit_edge, %for.cond70.preheader.for.body73_crit_edge
  %i.1155 = phi i32 [ %inc94, %for.end92.for.body73_crit_edge ], [ 0, %for.cond70.preheader.for.body73_crit_edge ]
  %j.0154 = phi i32 [ %add95, %for.end92.for.body73_crit_edge ], [ 0, %for.cond70.preheader.for.body73_crit_edge ]
  %25 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_buf, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 %j.0154
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %28, i32 36
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #10, !srcloc !399
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_readl(ptr noundef %32, i32 noundef 9, i32 noundef %30) #10
  %33 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0154, i32 %34)
  %cmp81 = icmp ult i32 %j.0154, %34
  br i1 %cmp81, label %for.body83, label %for.body73.for.end92_crit_edge

for.body73.for.end92_crit_edge:                   ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end92

for.body83:                                       ; preds = %for.body73
  %conv87 = trunc i32 %30 to i8
  %arrayidx89 = getelementptr i8, ptr %add.ptr, i32 %j.0154
  %35 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv87, ptr %arrayidx89, align 1
  %add.1 = or i32 %j.0154, 1
  %36 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1, i32 %37)
  %cmp81.1 = icmp ult i32 %add.1, %37
  br i1 %cmp81.1, label %for.body83.1, label %for.body83.for.end92_crit_edge

for.body83.for.end92_crit_edge:                   ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end92

for.body83.1:                                     ; preds = %for.body83
  %shr85.1 = lshr i32 %30, 8
  %conv87.1 = trunc i32 %shr85.1 to i8
  %arrayidx89.1 = getelementptr i8, ptr %add.ptr, i32 %add.1
  %38 = ptrtoint ptr %arrayidx89.1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv87.1, ptr %arrayidx89.1, align 1
  %add.2 = or i32 %j.0154, 2
  %39 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2, i32 %40)
  %cmp81.2 = icmp ult i32 %add.2, %40
  br i1 %cmp81.2, label %for.body83.2, label %for.body83.1.for.end92_crit_edge

for.body83.1.for.end92_crit_edge:                 ; preds = %for.body83.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end92

for.body83.2:                                     ; preds = %for.body83.1
  %shr85.2 = lshr i32 %30, 16
  %conv87.2 = trunc i32 %shr85.2 to i8
  %arrayidx89.2 = getelementptr i8, ptr %add.ptr, i32 %add.2
  %41 = ptrtoint ptr %arrayidx89.2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv87.2, ptr %arrayidx89.2, align 1
  %add.3 = or i32 %j.0154, 3
  %42 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3, i32 %43)
  %cmp81.3 = icmp ult i32 %add.3, %43
  br i1 %cmp81.3, label %for.body83.3, label %for.body83.2.for.end92_crit_edge

for.body83.2.for.end92_crit_edge:                 ; preds = %for.body83.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end92

for.body83.3:                                     ; preds = %for.body83.2
  call void @__sanitizer_cov_trace_pc() #12
  %shr85.3 = lshr i32 %30, 24
  %conv87.3 = trunc i32 %shr85.3 to i8
  %arrayidx89.3 = getelementptr i8, ptr %add.ptr, i32 %add.3
  %44 = ptrtoint ptr %arrayidx89.3 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv87.3, ptr %arrayidx89.3, align 1
  br label %for.end92

for.end92:                                        ; preds = %for.body83.3, %for.body83.2.for.end92_crit_edge, %for.body83.1.for.end92_crit_edge, %for.body83.for.end92_crit_edge, %for.body73.for.end92_crit_edge
  %inc94 = add nuw i32 %i.1155, 1
  %add95 = add i32 %j.0154, 4
  %exitcond157.not = icmp eq i32 %inc94, %sub
  br i1 %exitcond157.not, label %for.end92.cleanup_crit_edge, label %for.end92.for.body73_crit_edge

for.end92.for.body73_crit_edge:                   ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body73

for.end92.cleanup_crit_edge:                      ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.end92.cleanup_crit_edge, %for.cond70.preheader.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end59
  %retval.0 = phi i32 [ -71, %do.end59 ], [ %22, %sw.epilog.cleanup_crit_edge ], [ %22, %for.cond70.preheader.cleanup_crit_edge ], [ %22, %for.end92.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dsi_readl(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), ptr blockaddress(@trace_dsi_readl, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !398

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !403

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !404
  %call42 = tail call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !405
  %13 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !403

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !406
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dsi_readl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_dsi_readl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 46, ptr noundef nonnull @.str.39) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !407
  %31 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dsi_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dsi_writel(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), ptr blockaddress(@trace_dsi_writel, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !398

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !403

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !408
  %call42 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !409
  %13 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !403

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !406
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dsi_writel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_dsi_writel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 43, ptr noundef nonnull @.str.39) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !407
  %31 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dsi_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dsi_init(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 17
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then:                                          ; preds = %entry
  %host = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 1
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %dev = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %output = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 1
  %dev2 = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %dev2, align 4
  %connector = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 1, i32 10
  %call4 = tail call i32 @drm_connector_init(ptr noundef %5, ptr noundef %connector, ptr noundef nonnull @tegra_dsi_connector_funcs, i32 noundef 16) #10
  %helper_private.i = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 1, i32 10, i32 35
  %9 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tegra_dsi_connector_helper_funcs, ptr %helper_private.i, align 4
  %dpms = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 1, i32 10, i32 34
  %10 = ptrtoint ptr %dpms to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %dpms, align 8
  %encoder = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 1, i32 9
  %call10 = tail call i32 @drm_simple_encoder_init(ptr noundef %5, ptr noundef %encoder, i32 noundef 6) #10
  %helper_private.i45 = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 1, i32 9, i32 11
  %11 = ptrtoint ptr %helper_private.i45 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tegra_dsi_encoder_helper_funcs, ptr %helper_private.i45, align 4
  %call17 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector, ptr noundef %encoder) #10
  %call20 = tail call i32 @drm_connector_register(ptr noundef %connector) #10
  %call22 = tail call i32 @tegra_output_init(ptr noundef %5, ptr noundef %output) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev24 = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 2
  %12 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev24, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.63, i32 noundef %call22) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %possible_crtcs = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 1, i32 9, i32 6
  %14 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %possible_crtcs, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end, %entry.if.end27_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dsi_exit(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 1
  tail call void @tegra_output_exit(ptr noundef %output) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dsi_runtime_suspend(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %rst = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 4
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @reset_control_assert(ptr noundef nonnull %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.166, i32 noundef %call3) #13
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %clk_lp = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 6
  %4 = ptrtoint ptr %clk_lp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_lp, align 8
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %clk = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 7
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  %vdd = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 14
  %8 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdd, align 4
  %call6 = tail call i32 @regulator_disable(ptr noundef %9) #10
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dsi_runtime_resume(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !410
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !411
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !412
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.168, i32 noundef %call.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %vdd = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 14
  %3 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdd, align 4
  %call3 = tail call i32 @regulator_enable(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.171, i32 noundef %call3) #13
  br label %put_rpm

if.end9:                                          ; preds = %if.end
  %clk = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 7
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call.i66 = tail call i32 @clk_prepare(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.clk_prepare_enable.exit_crit_edge

if.end9.clk_prepare_enable.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end9
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end16_crit_edge, label %if.then3.i

if.end.i.if.end16_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %6) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end9.clk_prepare_enable.exit_crit_edge
  %retval.0.i67 = phi i32 [ %call.i66, %if.end9.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i67)
  %cmp11 = icmp slt i32 %retval.0.i67, 0
  br i1 %cmp11, label %do.end15, label %clk_prepare_enable.exit.if.end16_crit_edge

clk_prepare_enable.exit.if.end16_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.end15:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.174, i32 noundef %retval.0.i67) #13
  br label %disable_vdd

if.end16:                                         ; preds = %clk_prepare_enable.exit.if.end16_crit_edge, %if.end.i.if.end16_crit_edge
  %clk_lp = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 6
  %7 = ptrtoint ptr %clk_lp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_lp, align 8
  %call.i68 = tail call i32 @clk_prepare(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i69 = icmp eq i32 %call.i68, 0
  br i1 %tobool.not.i69, label %if.end.i72, label %if.end16.clk_prepare_enable.exit75_crit_edge

if.end16.clk_prepare_enable.exit75_crit_edge:     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit75

if.end.i72:                                       ; preds = %if.end16
  %call1.i70 = tail call i32 @clk_enable(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70)
  %tobool2.not.i71 = icmp eq i32 %call1.i70, 0
  br i1 %tobool2.not.i71, label %if.end.i72.if.end23_crit_edge, label %if.then3.i73

if.end.i72.if.end23_crit_edge:                    ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then3.i73:                                     ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %8) #10
  br label %clk_prepare_enable.exit75

clk_prepare_enable.exit75:                        ; preds = %if.then3.i73, %if.end16.clk_prepare_enable.exit75_crit_edge
  %retval.0.i74 = phi i32 [ %call.i68, %if.end16.clk_prepare_enable.exit75_crit_edge ], [ %call1.i70, %if.then3.i73 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i74)
  %cmp18 = icmp slt i32 %retval.0.i74, 0
  br i1 %cmp18, label %do.end22, label %clk_prepare_enable.exit75.if.end23_crit_edge

clk_prepare_enable.exit75.if.end23_crit_edge:     ; preds = %clk_prepare_enable.exit75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end22:                                         ; preds = %clk_prepare_enable.exit75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.177, i32 noundef %retval.0.i74) #13
  br label %disable_clk

if.end23:                                         ; preds = %clk_prepare_enable.exit75.if.end23_crit_edge, %if.end.i72.if.end23_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %rst = getelementptr inbounds %struct.tegra_dsi, ptr %client, i32 0, i32 4
  %9 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rst, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end23.cleanup_crit_edge, label %if.then24

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %if.end23
  %call26 = tail call i32 @reset_control_deassert(ptr noundef nonnull %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end31:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.180, i32 noundef %call26) #13
  %11 = ptrtoint ptr %clk_lp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_lp, align 8
  tail call void @clk_disable(ptr noundef %12) #10
  tail call void @clk_unprepare(ptr noundef %12) #10
  br label %disable_clk

disable_clk:                                      ; preds = %do.end31, %do.end22
  %err.0 = phi i32 [ %retval.0.i74, %do.end22 ], [ %call26, %do.end31 ]
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #10
  tail call void @clk_unprepare(ptr noundef %14) #10
  br label %disable_vdd

disable_vdd:                                      ; preds = %disable_clk, %do.end15
  %err.1 = phi i32 [ %retval.0.i67, %do.end15 ], [ %err.0, %disable_clk ]
  %15 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdd, align 4
  %call37 = tail call i32 @regulator_disable(ptr noundef %16) #10
  br label %put_rpm

put_rpm:                                          ; preds = %disable_vdd, %do.end8
  %err.2 = phi i32 [ %call3, %do.end8 ], [ %err.1, %disable_vdd ]
  %call.i76 = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %put_rpm, %if.then24.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %err.2, %put_rpm ], [ 0, %if.then24.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_dsi_connector_reset(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 236) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %state1 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 52
  %1 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state1, align 8
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__drm_atomic_helper_connector_destroy_state(ptr noundef nonnull %2) #10
  %3 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state1, align 8
  tail call void @kfree(ptr noundef %4) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  tail call void @__drm_atomic_helper_connector_reset(ptr noundef %connector, ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_connector_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dsi_late_register(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  %debugfs_entry = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 51
  %4 = ptrtoint ptr %debugfs_entry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_entry, align 4
  %call2 = tail call ptr @kmemdup(ptr noundef nonnull @debugfs_files, i32 noundef 16, i32 noundef 3264) #10
  %debugfs_files = getelementptr i8, ptr %connector, i32 1064
  %6 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %debugfs_files, align 8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i20 = getelementptr i8, ptr %connector, i32 -352
  %data = getelementptr inbounds %struct.drm_info_list, ptr %call2, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i20, ptr %data, align 4
  %8 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfs_files, align 8
  tail call void @drm_debugfs_create_files(ptr noundef %9, i32 noundef 1, ptr noundef %5, ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %for.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_dsi_early_unregister(ptr nocapture noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_files = getelementptr i8, ptr %connector, i32 1064
  %0 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_files, align 8
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary, align 4
  %call2 = tail call i32 @drm_debugfs_remove_files(ptr noundef %1, i32 noundef 1, ptr noundef %5) #10
  %6 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_files, align 8
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %debugfs_files, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_connector_destroy(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_dsi_connector_duplicate_state(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 52
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 8
  %call2 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 236, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__drm_atomic_helper_connector_duplicate_state(ptr noundef %connector, ptr noundef nonnull %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dsi_show_regs(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info_ent, align 4
  %data1 = getelementptr inbounds %struct.drm_info_list, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %crtc2 = getelementptr inbounds %struct.tegra_dsi, ptr %5, i32 0, i32 1, i32 9, i32 8
  %6 = ptrtoint ptr %crtc2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc2, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.drm_minor, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void @drm_modeset_lock_all(ptr noundef %11) #10
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %lor.lhs.false

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 22
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %active, align 1, !range !413
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not = icmp eq i8 %15, 0
  br i1 %tobool3.not, label %lor.lhs.false.unlock_crit_edge, label %for.cond.preheader

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

for.cond.preheader:                               ; preds = %lor.lhs.false
  %regs.i = getelementptr inbounds %struct.tegra_dsi, ptr %5, i32 0, i32 3
  %dev.i = getelementptr inbounds %struct.tegra_dsi, ptr %5, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.015 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [71 x %struct.debugfs_reg32], ptr @tegra_dsi_regs, i32 0, i32 %i.015
  %offset4 = getelementptr [71 x %struct.debugfs_reg32], ptr @tegra_dsi_regs, i32 0, i32 %i.015, i32 1
  %16 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset4, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %shl.i = shl i32 %17, 2
  %add.ptr.i = getelementptr i8, ptr %21, i32 %shl.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !399
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_readl(ptr noundef %25, i32 noundef %17, i32 noundef %23) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, ptr noundef %19, i32 noundef %17, i32 noundef %23) #10
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 71
  br i1 %exitcond.not, label %for.body.unlock_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.unlock_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

unlock:                                           ; preds = %for.body.unlock_crit_edge, %lor.lhs.false.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ -16, %lor.lhs.false.unlock_crit_edge ], [ -16, %entry.unlock_crit_edge ], [ 0, %for.body.unlock_crit_edge ]
  tail call void @drm_modeset_unlock_all(ptr noundef %11) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_debugfs_remove_files(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_connector_get_modes(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_dsi_connector_mode_valid(ptr nocapture noundef readnone %connector, ptr nocapture noundef readnone %mode) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_dsi_encoder_disable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i41 = getelementptr i8, ptr %1, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i41
  %add.ptr.i42 = getelementptr i8, ptr %encoder, i32 -276
  %panel = getelementptr i8, ptr %encoder, i32 -24
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.tailrecurse.i.preheader_crit_edge, label %if.then

entry.tailrecurse.i.preheader_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @drm_panel_disable(ptr noundef nonnull %3) #10
  br label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %if.then, %entry.tailrecurse.i.preheader_crit_edge
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.tailrecurse.i_crit_edge, %tailrecurse.i.preheader
  %dsi.tr.i = phi ptr [ %16, %tailrecurse.i.tailrecurse.i_crit_edge ], [ %add.ptr.i42, %tailrecurse.i.preheader ]
  %regs.i.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.i, i32 0, i32 3
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 64
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !399
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %dev.i.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.i, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dsi_readl(ptr noundef %9, i32 noundef 16, i32 noundef %7) #10
  %and.i = and i32 %7, -3
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %11, i32 noundef 16, i32 noundef %and.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %14, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %12) #10, !srcloc !402
  %slave.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.i, i32 0, i32 18
  %15 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slave.i, align 4
  %tobool.not.i43 = icmp eq ptr %16, null
  br i1 %tobool.not.i43, label %tegra_dsi_video_disable.exit, label %tailrecurse.i.tailrecurse.i_crit_edge

tailrecurse.i.tailrecurse.i_crit_edge:            ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i

tegra_dsi_video_disable.exit:                     ; preds = %tailrecurse.i
  %tobool5.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool5.not, label %tegra_dsi_video_disable.exit.if.end8_crit_edge, label %if.then6

tegra_dsi_video_disable.exit.if.end8_crit_edge:   ; preds = %tegra_dsi_video_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %tegra_dsi_video_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  %regs.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 8
  %add.ptr.i44 = getelementptr i8, ptr %18, i32 4104
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #10, !srcloc !399
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !414
  %dev.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %22, i32 noundef %20) #10
  %and = and i32 %20, -536870913
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %24, i32 noundef %and) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !415
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %add.ptr.i47 = getelementptr i8, ptr %27, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %25) #10, !srcloc !402
  tail call void @tegra_dc_commit(ptr noundef nonnull %spec.select.i) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %tegra_dsi_video_disable.exit.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %regs.i.i48 = getelementptr i8, ptr %encoder, i32 1120
  %add.neg.i = sub i32 -10, %28
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub1.i = add i32 %add.neg.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp2.i = icmp slt i32 %sub1.i, 0
  br i1 %cmp2.i, label %while.body.lr.ph.i, label %if.end8.do.body_crit_edge

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

while.body.lr.ph.i:                               ; preds = %if.end8
  %dev.i.i49 = getelementptr i8, ptr %encoder, i32 1116
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %30 = ptrtoint ptr %regs.i.i48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i48, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %31, i32 84
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50) #10, !srcloc !399
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %34 = ptrtoint ptr %dev.i.i49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i49, align 8
  tail call fastcc void @trace_dsi_readl(ptr noundef %35, i32 noundef 21, i32 noundef %33) #10
  %and.i51 = and i32 %33, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52 = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i52, label %if.end.i, label %while.body.i.tailrecurse.i60_crit_edge

while.body.i.tailrecurse.i60_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i60

if.end.i:                                         ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %36, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

do.body:                                          ; preds = %if.end.i.do.body_crit_edge, %if.end8.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_dsi_encoder_disable.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_dsi_encoder_disable, %tailrecurse.i60)) #10
          to label %if.then16 [label %tailrecurse.i60], !srcloc !398

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %encoder, i32 1116
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_dsi_encoder_disable.__UNIQUE_ID_ddebug341, ptr noundef %38, ptr noundef nonnull @.str.139, i32 noundef -110) #10
  br label %tailrecurse.i60

tailrecurse.i60:                                  ; preds = %if.end.i62.tailrecurse.i60_crit_edge, %if.then16, %do.body, %while.body.i.tailrecurse.i60_crit_edge
  %dsi.tr.i54 = phi ptr [ %72, %if.end.i62.tailrecurse.i60_crit_edge ], [ %add.ptr.i42, %do.body ], [ %add.ptr.i42, %if.then16 ], [ %add.ptr.i42, %while.body.i.tailrecurse.i60_crit_edge ]
  %regs.i.i55 = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.i54, i32 0, i32 3
  %39 = ptrtoint ptr %regs.i.i55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i55, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %40, i32 44
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56) #10, !srcloc !399
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %dev.i.i57 = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.i54, i32 0, i32 2
  %43 = ptrtoint ptr %dev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i57, align 8
  tail call fastcc void @trace_dsi_readl(ptr noundef %44, i32 noundef 11, i32 noundef %42) #10
  %and.i58 = and i32 %42, -2
  %45 = ptrtoint ptr %dev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i57, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %46, i32 noundef 11, i32 noundef %and.i58) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %47 = tail call i32 @llvm.bswap.i32(i32 %and.i58) #10
  %48 = ptrtoint ptr %regs.i.i55 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i55, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %49, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %47) #10, !srcloc !402
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 1000, i32 noundef 2) #10
  %50 = ptrtoint ptr %regs.i.i55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i55, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %51, i32 44
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #10, !srcloc !399
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %54 = ptrtoint ptr %dev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i.i57, align 8
  tail call fastcc void @trace_dsi_readl(ptr noundef %55, i32 noundef 11, i32 noundef %53) #10
  %or.i = or i32 %53, 1
  %56 = ptrtoint ptr %dev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i.i57, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %57, i32 noundef 11, i32 noundef %or.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %59 = ptrtoint ptr %regs.i.i55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i.i55, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %60, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %58) #10, !srcloc !402
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 1000, i32 noundef 2) #10
  %61 = ptrtoint ptr %regs.i.i55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i55, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %62, i32 76
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #10, !srcloc !399
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %65 = ptrtoint ptr %dev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i.i57, align 8
  tail call fastcc void @trace_dsi_readl(ptr noundef %66, i32 noundef 19, i32 noundef %64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i59 = icmp eq i32 %63, 0
  br i1 %tobool.not.i59, label %tailrecurse.i60.if.end.i62_crit_edge, label %if.then.i

tailrecurse.i60.if.end.i62_crit_edge:             ; preds = %tailrecurse.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i62

if.then.i:                                        ; preds = %tailrecurse.i60
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %dev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i.i57, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %68, i32 noundef 19, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %69 = ptrtoint ptr %regs.i.i55 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i55, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %70, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 0) #10, !srcloc !402
  br label %if.end.i62

if.end.i62:                                       ; preds = %if.then.i, %tailrecurse.i60.if.end.i62_crit_edge
  %slave.i61 = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.i54, i32 0, i32 18
  %71 = ptrtoint ptr %slave.i61 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %slave.i61, align 4
  %tobool3.not.i = icmp eq ptr %72, null
  br i1 %tobool3.not.i, label %tegra_dsi_soft_reset.exit, label %if.end.i62.tailrecurse.i60_crit_edge

if.end.i62.tailrecurse.i60_crit_edge:             ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i60

tegra_dsi_soft_reset.exit:                        ; preds = %if.end.i62
  %73 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %panel, align 4
  %tobool20.not = icmp eq ptr %74, null
  br i1 %tobool20.not, label %tegra_dsi_soft_reset.exit.if.end24_crit_edge, label %if.then21

tegra_dsi_soft_reset.exit.if.end24_crit_edge:     ; preds = %tegra_dsi_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then21:                                        ; preds = %tegra_dsi_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 @drm_panel_unprepare(ptr noundef nonnull %74) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %tegra_dsi_soft_reset.exit.if.end24_crit_edge
  tail call fastcc void @tegra_dsi_disable(ptr noundef %add.ptr.i42)
  tail call fastcc void @tegra_dsi_unprepare(ptr noundef %add.ptr.i42)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_dsi_encoder_enable(ptr noundef %encoder) #0 align 64 {
entry:
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
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i45 = getelementptr i8, ptr %1, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i45
  %add.ptr.i46 = getelementptr i8, ptr %encoder, i32 -276
  %call44.i = tail call i32 @host1x_client_resume(ptr noundef %add.ptr.i46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp slt i32 %call44.i, 0
  br i1 %cmp45.i, label %entry.do.end.i_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then17.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %dsi.tr.lcssa.i = phi ptr [ %add.ptr.i46, %entry.do.end.i_crit_edge ], [ %50, %if.then17.i.do.end.i_crit_edge ]
  %call.lcssa.i = phi i32 [ %call44.i, %entry.do.end.i_crit_edge ], [ %call.i, %if.then17.i.do.end.i_crit_edge ]
  %4 = xor i1 %cmp45.i, true
  %dev.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.lcssa.i, i32 0, i32 2
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.147, i32 noundef %call.lcssa.i) #13
  br label %tegra_dsi_prepare.exit

if.end.i:                                         ; preds = %if.then17.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %ret.known.tr48.i = phi i1 [ true, %if.then17.i.if.end.i_crit_edge ], [ false, %entry.if.end.i_crit_edge ]
  %dsi.tr46.i = phi ptr [ %50, %if.then17.i.if.end.i_crit_edge ], [ %add.ptr.i46, %entry.if.end.i_crit_edge ]
  %mipi.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr46.i, i32 0, i32 12
  %7 = ptrtoint ptr %mipi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mipi.i, align 8
  %call1.i = tail call i32 @tegra_mipi_enable(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end6.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev7.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr46.i, i32 0, i32 2
  %9 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.150, i32 noundef %call1.i) #13
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end6.i, %if.end.i.if.end8.i_crit_edge
  %dev.i.i.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr46.i, i32 0, i32 2
  %11 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %12, i32 noundef 75, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %regs.i.i.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr46.i, i32 0, i32 3
  %13 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #10, !srcloc !402
  %15 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %16, i32 noundef 79, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %18, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 0) #10, !srcloc !402
  %19 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %20, i32 noundef 80, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %22, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i.i, i32 0) #10, !srcloc !402
  %23 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %24, i32 noundef 81, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %26, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i.i, i32 0) #10, !srcloc !402
  %27 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %28, i32 noundef 82, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %30, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #10, !srcloc !402
  %31 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %32, i32 noundef 75, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %34, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 0) #10, !srcloc !402
  %35 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %36, i32 noundef 80, i32 noundef 487696) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i30.i.i = getelementptr i8, ptr %38, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i, i32 275842816) #10, !srcloc !402
  %39 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %40, i32 noundef 81, i32 noundef 13107) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %41 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %42, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i.i, i32 858980352) #10, !srcloc !402
  %43 = ptrtoint ptr %mipi.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mipi.i, align 8
  %call1.i.i = tail call i32 @tegra_mipi_start_calibration(ptr noundef %44) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.end8.i.do.end14.i_crit_edge, label %tegra_dsi_pad_calibrate.exit.i

if.end8.i.do.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

tegra_dsi_pad_calibrate.exit.i:                   ; preds = %if.end8.i
  %45 = ptrtoint ptr %mipi.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mipi.i, align 8
  %call3.i.i = tail call i32 @tegra_mipi_finish_calibration(ptr noundef %46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp10.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp10.i, label %tegra_dsi_pad_calibrate.exit.i.do.end14.i_crit_edge, label %tegra_dsi_pad_calibrate.exit.i.if.end16.i_crit_edge

tegra_dsi_pad_calibrate.exit.i.if.end16.i_crit_edge: ; preds = %tegra_dsi_pad_calibrate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

tegra_dsi_pad_calibrate.exit.i.do.end14.i_crit_edge: ; preds = %tegra_dsi_pad_calibrate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

do.end14.i:                                       ; preds = %tegra_dsi_pad_calibrate.exit.i.do.end14.i_crit_edge, %if.end8.i.do.end14.i_crit_edge
  %retval.0.i36.i = phi i32 [ %call3.i.i, %tegra_dsi_pad_calibrate.exit.i.do.end14.i_crit_edge ], [ %call1.i.i, %if.end8.i.do.end14.i_crit_edge ]
  %47 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.153, i32 noundef %retval.0.i36.i) #13
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end14.i, %tegra_dsi_pad_calibrate.exit.i.if.end16.i_crit_edge
  %slave.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr46.i, i32 0, i32 18
  %49 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %slave.i, align 4
  %tobool.not.i47 = icmp eq ptr %50, null
  br i1 %tobool.not.i47, label %if.end16.i.tegra_dsi_prepare.exit_crit_edge, label %if.then17.i

if.end16.i.tegra_dsi_prepare.exit_crit_edge:      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_dsi_prepare.exit

if.then17.i:                                      ; preds = %if.end16.i
  %call.i = tail call i32 @host1x_client_resume(ptr noundef nonnull %50) #10
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then17.i.do.end.i_crit_edge, label %if.then17.i.if.end.i_crit_edge

if.then17.i.if.end.i_crit_edge:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then17.i.do.end.i_crit_edge:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

tegra_dsi_prepare.exit:                           ; preds = %if.end16.i.tegra_dsi_prepare.exit_crit_edge, %do.end.i
  %ret.known.tr40.i = phi i1 [ %4, %do.end.i ], [ %ret.known.tr48.i, %if.end16.i.tegra_dsi_prepare.exit_crit_edge ]
  %retval.0.i = phi i32 [ %call.lcssa.i, %do.end.i ], [ 0, %if.end16.i.tegra_dsi_prepare.exit_crit_edge ]
  %current.ret.tr37.i = select i1 %ret.known.tr40.i, i32 0, i32 %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %current.ret.tr37.i)
  %cmp = icmp slt i32 %current.ret.tr37.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %tegra_dsi_prepare.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %encoder, i32 1116
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.145, i32 noundef %current.ret.tr37.i) #13
  br label %cleanup

if.end:                                           ; preds = %tegra_dsi_prepare.exit
  %state.i = getelementptr i8, ptr %encoder, i32 1068
  %53 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %state.i, align 8
  %bclk = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bclk, align 4
  %vrefresh = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 3
  %57 = ptrtoint ptr %vrefresh to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vrefresh, align 4
  %div.i = udiv i32 %56, %58
  %div118.i = lshr i32 %div.i, 9
  %and.i = and i32 %div118.i, 65535
  %or.i = or i32 %and.i, 536870912
  %59 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %60 = lshr i32 %56, 8
  %shl5.i = mul i32 %60, 65536000
  %or6.i = or i32 %shl5.i, 8192
  %61 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #10
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.tailrecurse.i_crit_edge, %if.end
  %dsi.tr.i = phi ptr [ %add.ptr.i46, %if.end ], [ %75, %tailrecurse.i.tailrecurse.i_crit_edge ]
  %dev.i.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.i, i32 0, i32 2
  %62 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %63, i32 noundef 68, i32 noundef %or.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %regs.i.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.i, i32 0, i32 3
  %64 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %65, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %59) #10, !srcloc !402
  %66 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %67, i32 noundef 69, i32 noundef %or6.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %68 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %69, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %61) #10, !srcloc !402
  %70 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %71, i32 noundef 70, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %72 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %73, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #10, !srcloc !402
  %slave.i48 = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.i, i32 0, i32 18
  %74 = ptrtoint ptr %slave.i48 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %slave.i48, align 4
  %tobool.not.i49 = icmp eq ptr %75, null
  br i1 %tobool.not.i49, label %tegra_dsi_set_timeout.exit, label %tailrecurse.i.tailrecurse.i_crit_edge

tailrecurse.i.tailrecurse.i_crit_edge:            ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i

tegra_dsi_set_timeout.exit:                       ; preds = %tailrecurse.i
  %period = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 2
  %76 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %period, align 4
  %mul = shl i32 %77, 3
  %hsexit.i = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 1, i32 10
  %div176.i = lshr exact i32 %mul, 1
  %hstrail.i = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 1, i32 15
  %hszero.i = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 1, i32 12
  %hsprepare.i = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 1, i32 11
  %clktrail.i = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 1, i32 6
  %clkpost.i = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 1, i32 1
  %clkzero.i = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 1, i32 7
  %lpx.i = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 1, i32 17
  %clkprepare.i = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 1, i32 3
  %clkpre.i = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 1, i32 2
  %mul.i = mul i32 %77, 2040
  %add91.i = add i32 %div176.i, %mul.i
  %taget.i = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 1, i32 18
  %tasure.i = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 1, i32 20
  %tago.i = getelementptr inbounds %struct.tegra_dsi_state, ptr %54, i32 0, i32 1, i32 19
  br label %tailrecurse.i58

tailrecurse.i58:                                  ; preds = %tailrecurse.i58.tailrecurse.i58_crit_edge, %tegra_dsi_set_timeout.exit
  %dsi.tr.i51 = phi ptr [ %add.ptr.i46, %tegra_dsi_set_timeout.exit ], [ %125, %tailrecurse.i58.tailrecurse.i58_crit_edge ]
  %78 = ptrtoint ptr %hsexit.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hsexit.i, align 4
  %add.i = add i32 %79, %div176.i
  %div1.i = udiv i32 %add.i, %mul
  %sub.i = shl i32 %div1.i, 24
  %shl.i = add i32 %sub.i, -16777216
  %80 = ptrtoint ptr %hstrail.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %hstrail.i, align 4
  %add6.i = add i32 %81, %div176.i
  %div7.i = udiv i32 %add6.i, %mul
  %and9.i = shl i32 %div7.i, 16
  %shl10.i = and i32 %and9.i, 16711680
  %or.i52 = or i32 %shl10.i, %shl.i
  %82 = ptrtoint ptr %hszero.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hszero.i, align 4
  %add15.i = add i32 %83, %div176.i
  %div16.i = udiv i32 %add15.i, %mul
  %sub17.i = shl i32 %div16.i, 8
  %and18.i = add i32 %sub17.i, 64768
  %shl19.i = and i32 %and18.i, 65280
  %or20.i = or i32 %shl19.i, %or.i52
  %84 = ptrtoint ptr %hsprepare.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %hsprepare.i, align 4
  %add25.i = add i32 %85, %div176.i
  %div26.i = udiv i32 %add25.i, %mul
  %sub27.i = add i32 %div26.i, 255
  %and28.i = and i32 %sub27.i, 255
  %or29.i = or i32 %or20.i, %and28.i
  %dev.i.i53 = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.i51, i32 0, i32 2
  %86 = ptrtoint ptr %dev.i.i53 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i.i53, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %87, i32 noundef 60, i32 noundef %or29.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %88 = tail call i32 @llvm.bswap.i32(i32 %or29.i) #10
  %regs.i.i54 = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.i51, i32 0, i32 3
  %89 = ptrtoint ptr %regs.i.i54 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i.i54, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %90, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55, i32 %88) #10, !srcloc !402
  %91 = ptrtoint ptr %clktrail.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %clktrail.i, align 4
  %add34.i = add i32 %92, %div176.i
  %div35.i = udiv i32 %add34.i, %mul
  %sub36.i = shl i32 %div35.i, 24
  %shl38.i = add i32 %sub36.i, -16777216
  %93 = ptrtoint ptr %clkpost.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %clkpost.i, align 4
  %add43.i = add i32 %94, %div176.i
  %div44.i = udiv i32 %add43.i, %mul
  %sub45.i = shl i32 %div44.i, 16
  %and46.i = add i32 %sub45.i, 16711680
  %shl47.i = and i32 %and46.i, 16711680
  %or48.i = or i32 %shl47.i, %shl38.i
  %95 = ptrtoint ptr %clkzero.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %clkzero.i, align 4
  %add53.i = add i32 %96, %div176.i
  %div54.i = udiv i32 %add53.i, %mul
  %sub55.i = shl i32 %div54.i, 8
  %and56.i = add i32 %sub55.i, 65280
  %shl57.i = and i32 %and56.i, 65280
  %or58.i = or i32 %shl57.i, %or48.i
  %97 = ptrtoint ptr %lpx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %lpx.i, align 4
  %add63.i = add i32 %98, %div176.i
  %div64.i = udiv i32 %add63.i, %mul
  %sub65.i = add i32 %div64.i, 255
  %and66.i = and i32 %sub65.i, 255
  %or67.i = or i32 %or58.i, %and66.i
  %99 = ptrtoint ptr %dev.i.i53 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i.i53, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %100, i32 noundef 61, i32 noundef %or67.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %101 = tail call i32 @llvm.bswap.i32(i32 %or67.i) #10
  %102 = ptrtoint ptr %regs.i.i54 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i.i54, align 4
  %add.ptr.i179.i = getelementptr i8, ptr %103, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179.i, i32 %101) #10, !srcloc !402
  %104 = ptrtoint ptr %clkprepare.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %clkprepare.i, align 4
  %add72.i = add i32 %105, %div176.i
  %div73.i = udiv i32 %add72.i, %mul
  %sub74.i = shl i32 %div73.i, 16
  %and75.i = add i32 %sub74.i, 16711680
  %shl76.i = and i32 %and75.i, 16711680
  %106 = ptrtoint ptr %clkpre.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %clkpre.i, align 4
  %add81.i = add i32 %107, %div176.i
  %div82.i = udiv i32 %add81.i, %mul
  %sub83.i = shl i32 %div82.i, 8
  %and84.i = add i32 %sub83.i, 65280
  %shl85.i = and i32 %and84.i, 65280
  %div92.i = udiv i32 %add91.i, %mul
  %and94.i = and i32 %div92.i, 255
  %or86.i = or i32 %and94.i, %shl76.i
  %or96.i = or i32 %or86.i, %shl85.i
  %108 = ptrtoint ptr %dev.i.i53 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i.i53, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %109, i32 noundef 62, i32 noundef %or96.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %110 = tail call i32 @llvm.bswap.i32(i32 %or96.i) #10
  %111 = ptrtoint ptr %regs.i.i54 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs.i.i54, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %112, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182.i, i32 %110) #10, !srcloc !402
  %113 = ptrtoint ptr %taget.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %taget.i, align 4
  %add101.i = add i32 %114, %div176.i
  %div102.i = udiv i32 %add101.i, %mul
  %sub103.i = shl i32 %div102.i, 16
  %and104.i = add i32 %sub103.i, 16711680
  %shl105.i = and i32 %and104.i, 16711680
  %115 = ptrtoint ptr %tasure.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tasure.i, align 4
  %add110.i = add i32 %116, %div176.i
  %div111.i = udiv i32 %add110.i, %mul
  %sub112.i = shl i32 %div111.i, 8
  %and113.i = add i32 %sub112.i, 65280
  %shl114.i = and i32 %and113.i, 65280
  %or115.i = or i32 %shl114.i, %shl105.i
  %117 = ptrtoint ptr %tago.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tago.i, align 4
  %add120.i = add i32 %118, %div176.i
  %div121.i = udiv i32 %add120.i, %mul
  %sub122.i = add i32 %div121.i, 255
  %and123.i = and i32 %sub122.i, 255
  %or124.i = or i32 %or115.i, %and123.i
  %119 = ptrtoint ptr %dev.i.i53 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i.i53, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %120, i32 noundef 63, i32 noundef %or124.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %121 = tail call i32 @llvm.bswap.i32(i32 %or124.i) #10
  %122 = ptrtoint ptr %regs.i.i54 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i.i54, align 4
  %add.ptr.i185.i = getelementptr i8, ptr %123, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185.i, i32 %121) #10, !srcloc !402
  %slave.i56 = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.i51, i32 0, i32 18
  %124 = ptrtoint ptr %slave.i56 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %slave.i56, align 4
  %tobool.not.i57 = icmp eq ptr %125, null
  br i1 %tobool.not.i57, label %tegra_dsi_set_phy_timing.exit, label %tailrecurse.i58.tailrecurse.i58_crit_edge

tailrecurse.i58.tailrecurse.i58_crit_edge:        ; preds = %tailrecurse.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i58

tegra_dsi_set_phy_timing.exit:                    ; preds = %tailrecurse.i58
  %panel = getelementptr i8, ptr %encoder, i32 -24
  %126 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %127, null
  br i1 %tobool.not, label %tegra_dsi_set_phy_timing.exit.if.end10_crit_edge, label %if.then7

tegra_dsi_set_phy_timing.exit.if.end10_crit_edge: ; preds = %tegra_dsi_set_phy_timing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %tegra_dsi_set_phy_timing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @drm_panel_prepare(ptr noundef nonnull %127) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %tegra_dsi_set_phy_timing.exit.if.end10_crit_edge
  %pipe = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 5
  %128 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pipe, align 4
  tail call fastcc void @tegra_dsi_configure(ptr noundef %add.ptr.i46, i32 noundef %129, ptr noundef %adjusted_mode)
  %regs.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %130 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs.i, align 8
  %add.ptr.i60 = getelementptr i8, ptr %131, i32 4104
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #10, !srcloc !399
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !414
  %dev.i61 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %134 = ptrtoint ptr %dev.i61 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev.i61, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %135, i32 noundef %133) #10
  %or = or i32 %133, 536870912
  %136 = ptrtoint ptr %dev.i61 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev.i61, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %137, i32 noundef %or) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !415
  tail call void @arm_heavy_mb() #10
  %138 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %139 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs.i, align 8
  %add.ptr.i64 = getelementptr i8, ptr %140, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %138) #10, !srcloc !402
  tail call void @tegra_dc_commit(ptr noundef %spec.select.i) #10
  br label %tailrecurse.i72

tailrecurse.i72:                                  ; preds = %tailrecurse.i72.tailrecurse.i72_crit_edge, %if.end10
  %dsi.tr.i65 = phi ptr [ %add.ptr.i46, %if.end10 ], [ %153, %tailrecurse.i72.tailrecurse.i72_crit_edge ]
  %regs.i.i66 = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.i65, i32 0, i32 3
  %141 = ptrtoint ptr %regs.i.i66 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i.i66, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %142, i32 44
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i67) #10, !srcloc !399
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %dev.i.i68 = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.i65, i32 0, i32 2
  %145 = ptrtoint ptr %dev.i.i68 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev.i.i68, align 8
  tail call fastcc void @trace_dsi_readl(ptr noundef %146, i32 noundef 11, i32 noundef %144) #10
  %or.i69 = or i32 %144, 1
  %147 = ptrtoint ptr %dev.i.i68 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev.i.i68, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %148, i32 noundef 11, i32 noundef %or.i69) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %149 = tail call i32 @llvm.bswap.i32(i32 %or.i69) #10
  %150 = ptrtoint ptr %regs.i.i66 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs.i.i66, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %151, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %149) #10, !srcloc !402
  %slave.i70 = getelementptr inbounds %struct.tegra_dsi, ptr %dsi.tr.i65, i32 0, i32 18
  %152 = ptrtoint ptr %slave.i70 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %slave.i70, align 4
  %tobool.not.i71 = icmp eq ptr %153, null
  br i1 %tobool.not.i71, label %tegra_dsi_enable.exit, label %tailrecurse.i72.tailrecurse.i72_crit_edge

tailrecurse.i72.tailrecurse.i72_crit_edge:        ; preds = %tailrecurse.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i72

tegra_dsi_enable.exit:                            ; preds = %tailrecurse.i72
  %154 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %panel, align 4
  %tobool13.not = icmp eq ptr %155, null
  br i1 %tobool13.not, label %tegra_dsi_enable.exit.cleanup_crit_edge, label %if.then14

tegra_dsi_enable.exit.cleanup_crit_edge:          ; preds = %tegra_dsi_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %tegra_dsi_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 @drm_panel_enable(ptr noundef nonnull %155) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %tegra_dsi_enable.exit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dsi_encoder_atomic_check(ptr nocapture noundef readonly %encoder, ptr noundef %crtc_state, ptr noundef %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %conn_state, i32 0, i32 1
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i117 = getelementptr i8, ptr %1, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i117
  %add.ptr.i118 = getelementptr i8, ptr %encoder, i32 -276
  %mode = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %mul = mul i32 %3, 1000
  %pclk = getelementptr inbounds %struct.tegra_dsi_state, ptr %conn_state, i32 0, i32 5
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %pclk, align 4
  %format = getelementptr i8, ptr %encoder, i32 1148
  %5 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %format, align 8
  %mul4 = getelementptr inbounds %struct.tegra_dsi_state, ptr %conn_state, i32 0, i32 8
  %div = getelementptr inbounds %struct.tegra_dsi_state, ptr %conn_state, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.tegra_dsi_encoder_atomic_check, i32 0, i32 %6
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep132 = getelementptr inbounds [4 x i32], ptr @switch.table.tegra_dsi_encoder_atomic_check.184, i32 0, i32 %6
  %9 = ptrtoint ptr %switch.gep132 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load133 = load i32, ptr %switch.gep132, align 4
  %10 = ptrtoint ptr %mul4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %switch.load, ptr %mul4, align 4
  %11 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %switch.load133, ptr %div, align 4
  %master.i = getelementptr i8, ptr %encoder, i32 1188
  %12 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master.i, align 8
  %tobool.not.i119 = icmp eq ptr %13, null
  br i1 %tobool.not.i119, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %lanes.i = getelementptr inbounds %struct.tegra_dsi, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lanes.i, align 4
  br label %return.sink.split.i121

if.end.i:                                         ; preds = %switch.lookup
  %slave.i = getelementptr i8, ptr %encoder, i32 1192
  %16 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slave.i, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  %lanes10.i = getelementptr i8, ptr %encoder, i32 1152
  %18 = ptrtoint ptr %lanes10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lanes10.i, align 4
  br i1 %tobool3.not.i, label %if.end.i.tegra_dsi_get_lanes.exit_crit_edge, label %if.end.i.return.sink.split.i121_crit_edge

if.end.i.return.sink.split.i121_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i121

if.end.i.tegra_dsi_get_lanes.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_dsi_get_lanes.exit

return.sink.split.i121:                           ; preds = %if.end.i.return.sink.split.i121_crit_edge, %if.then.i
  %.sink.i120 = phi ptr [ %add.ptr.i118, %if.then.i ], [ %17, %if.end.i.return.sink.split.i121_crit_edge ]
  %.sink18.i = phi i32 [ %15, %if.then.i ], [ %19, %if.end.i.return.sink.split.i121_crit_edge ]
  %lanes7.i = getelementptr inbounds %struct.tegra_dsi, ptr %.sink.i120, i32 0, i32 11
  %20 = ptrtoint ptr %lanes7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lanes7.i, align 4
  %add8.i = add i32 %21, %.sink18.i
  br label %tegra_dsi_get_lanes.exit

tegra_dsi_get_lanes.exit:                         ; preds = %return.sink.split.i121, %if.end.i.tegra_dsi_get_lanes.exit_crit_edge
  %retval.0.i122 = phi i32 [ %19, %if.end.i.tegra_dsi_get_lanes.exit_crit_edge ], [ %add8.i, %return.sink.split.i121 ]
  %lanes = getelementptr inbounds %struct.tegra_dsi_state, ptr %conn_state, i32 0, i32 4
  %22 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i122, ptr %lanes, align 4
  %23 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %switch.lookup134, label %tegra_dsi_get_lanes.exit.cleanup_crit_edge

tegra_dsi_get_lanes.exit.cleanup_crit_edge:       ; preds = %tegra_dsi_get_lanes.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup134:                                 ; preds = %tegra_dsi_get_lanes.exit
  %format8 = getelementptr inbounds %struct.tegra_dsi_state, ptr %conn_state, i32 0, i32 7
  %switch.gep135 = getelementptr inbounds [4 x i32], ptr @switch.table.tegra_dsi_encoder_atomic_check.185, i32 0, i32 %24
  %26 = ptrtoint ptr %switch.gep135 to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load136 = load i32, ptr %switch.gep135, align 4
  %27 = ptrtoint ptr %format8 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %switch.load136, ptr %format8, align 4
  %call14 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #10
  %vrefresh = getelementptr inbounds %struct.tegra_dsi_state, ptr %conn_state, i32 0, i32 3
  %28 = ptrtoint ptr %vrefresh to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call14, ptr %vrefresh, align 4
  %29 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pclk, align 4
  %31 = ptrtoint ptr %mul4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mul4, align 4
  %mul17 = mul i32 %32, %30
  %33 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %div, align 4
  %35 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lanes, align 4
  %mul20 = mul i32 %36, %34
  %div21 = udiv i32 %mul17, %mul20
  %bclk = getelementptr inbounds %struct.tegra_dsi_state, ptr %conn_state, i32 0, i32 6
  %37 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div21, ptr %bclk, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.158, i32 noundef %32, i32 noundef %34, i32 noundef %36) #10
  %38 = ptrtoint ptr %format8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %format8, align 4
  %40 = ptrtoint ptr %vrefresh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vrefresh, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.159, i32 noundef %39, i32 noundef %41) #10
  %42 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bclk, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.160, i32 noundef %43) #10
  %44 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bclk, align 4
  %mul29 = shl i32 %45, 3
  %sub = add i32 %mul29, 999999
  %46 = urem i32 %sub, 1000000
  %mul31 = sub i32 %sub, %46
  %div32116 = lshr i32 %mul31, 1
  %add33 = add nuw i32 %div32116, 1000000000
  %div34 = udiv i32 %add33, %mul31
  %period = getelementptr inbounds %struct.tegra_dsi_state, ptr %conn_state, i32 0, i32 2
  %47 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div34, ptr %period, align 4
  %timing = getelementptr inbounds %struct.tegra_dsi_state, ptr %conn_state, i32 0, i32 1
  %call36 = tail call i32 @mipi_dphy_timing_get_default(ptr noundef %timing, i32 noundef %div34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %switch.lookup134.cleanup_crit_edge, label %if.end39

switch.lookup134.cleanup_crit_edge:               ; preds = %switch.lookup134
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %switch.lookup134
  %48 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %period, align 4
  %call42 = tail call i32 @mipi_dphy_timing_validate(ptr noundef %timing, i32 noundef %49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.end, label %if.end45

do.end:                                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %encoder, i32 1116
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.161, i32 noundef %call42) #13
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  %52 = ptrtoint ptr %mul4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mul4, align 4
  %mul48 = shl i32 %53, 3
  %54 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %div, align 4
  %56 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lanes, align 4
  %mul51 = mul i32 %57, %55
  %div52 = udiv i32 %mul48, %mul51
  %sub53 = add i32 %div52, -2
  %clk_parent = getelementptr i8, ptr %encoder, i32 1128
  %58 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk_parent, align 4
  %call54 = tail call i32 @tegra_dc_state_setup_clock(ptr noundef %spec.select.i, ptr noundef %crtc_state, ptr noundef %59, i32 noundef %div32116, i32 noundef %sub53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %do.end59, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end59:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %dev60 = getelementptr i8, ptr %encoder, i32 -32
  %60 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.164, i32 noundef %call54) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.end45.cleanup_crit_edge, %do.end, %switch.lookup134.cleanup_crit_edge, %tegra_dsi_get_lanes.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %do.end ], [ %call54, %do.end59 ], [ %call36, %switch.lookup134.cleanup_crit_edge ], [ %call54, %if.end45.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %tegra_dsi_get_lanes.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_dc_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_dsi_disable(ptr nocapture noundef readonly %dsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %slave = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 18
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.tegra_dsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %3, i32 noundef 84, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %regs.i.i = getelementptr inbounds %struct.tegra_dsi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !402
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %7, i32 noundef 85, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %9, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #10, !srcloc !402
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %11, i32 noundef 83, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %13, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #10, !srcloc !402
  %dev.i.i15 = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 2
  %14 = ptrtoint ptr %dev.i.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i15, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %15, i32 noundef 84, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %regs.i.i16 = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 3
  %16 = ptrtoint ptr %regs.i.i16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i16, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %17, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17, i32 0) #10, !srcloc !402
  %18 = ptrtoint ptr %dev.i.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i15, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %19, i32 noundef 85, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %regs.i.i16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i16, align 4
  %add.ptr.i5.i18 = getelementptr i8, ptr %21, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i18, i32 0) #10, !srcloc !402
  %22 = ptrtoint ptr %dev.i.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i15, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %23, i32 noundef 83, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %regs.i.i16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i16, align 4
  %add.ptr.i8.i19 = getelementptr i8, ptr %25, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i19, i32 0) #10, !srcloc !402
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regs.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 3
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 44
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !399
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %dev.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 2
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_readl(ptr noundef %31, i32 noundef 11, i32 noundef %29) #10
  %and = and i32 %29, -2
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %33, i32 noundef 11, i32 noundef %and) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %34 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %36, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %34) #10, !srcloc !402
  %37 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %slave, align 4
  %tobool3.not = icmp eq ptr %38, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @tegra_dsi_disable(ptr noundef nonnull %38)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_dsi_unprepare(ptr noundef %dsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %slave = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 18
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @tegra_dsi_unprepare(ptr noundef nonnull %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mipi = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 12
  %2 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mipi, align 8
  %call = tail call i32 @tegra_mipi_disable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.140, i32 noundef %call) #13
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  %call4 = tail call i32 @host1x_client_suspend(ptr noundef %dsi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end3.if.end11_crit_edge

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %dev10 = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 2
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.143, i32 noundef %call4) #13
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %if.end3.if.end11_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dc_readl(ptr noundef %dev, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), ptr blockaddress(@trace_dc_readl, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !398

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !403

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !416
  %call42 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %dev, i32 noundef 1026, i32 noundef %value) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !417
  %13 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !403

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !406
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_dc_readl.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_dc_readl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 32, ptr noundef nonnull @.str.39) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !407
  %31 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dc_writel(ptr noundef %dev, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), ptr blockaddress(@trace_dc_writel, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !398

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !403

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !418
  %call42 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %dev, i32 noundef 1026, i32 noundef %value) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !419
  %13 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !403

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !406
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_dc_writel.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_dc_writel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 29, ptr noundef nonnull @.str.39) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !407
  %31 = tail call i32 @llvm.read_register.i32(metadata !388) #10
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mipi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_dsi_configure(ptr noundef readonly %dsi, i32 noundef %pipe, ptr nocapture noundef readonly %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 17
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 8
  %tobool.not = icmp eq ptr %1, null
  %dsi. = select i1 %tobool.not, ptr %dsi, ptr %1
  %state.0.in = getelementptr inbounds %struct.tegra_dsi, ptr %dsi., i32 0, i32 1, i32 10, i32 52
  %2 = ptrtoint ptr %state.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %state.0 = load ptr, ptr %state.0.in, align 8
  %mul3 = getelementptr inbounds %struct.tegra_dsi_state, ptr %state.0, i32 0, i32 8
  %3 = ptrtoint ptr %mul3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mul3, align 4
  %div4 = getelementptr inbounds %struct.tegra_dsi_state, ptr %state.0, i32 0, i32 9
  %5 = ptrtoint ptr %div4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %div4, align 4
  %flags = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 9
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %and9 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %.str.157..str.156 = select i1 %tobool10.not, ptr @.str.157, ptr @.str.156
  %pkt_seq_command_mode.pkt_seq_video_non_burst_sync_events = select i1 %tobool10.not, ptr @pkt_seq_command_mode, ptr @pkt_seq_video_non_burst_sync_events
  %.str.156.sink = select i1 %tobool5.not, ptr %.str.157..str.156, ptr @.str.155
  %pkt_seq.0 = select i1 %tobool5.not, ptr %pkt_seq_command_mode.pkt_seq_video_non_burst_sync_events, ptr @pkt_seq_video_non_burst_sync_pulses
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.156.sink) #10
  %format = getelementptr inbounds %struct.tegra_dsi_state, ptr %state.0, i32 0, i32 7
  %9 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format, align 4
  %and15 = shl i32 %10, 12
  %shl = and i32 %and15, 12288
  %lanes = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 11
  %11 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lanes, align 4
  %sub = shl i32 %12, 4
  %and16 = add i32 %sub, 48
  %shl17 = and i32 %and16, 48
  %and19 = shl i32 %pipe, 2
  %shl20 = and i32 %and19, 4
  %or18 = or i32 %shl, %shl20
  %or21 = or i32 %or18, %shl17
  %dev.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 2
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %14, i32 noundef 16, i32 noundef %or21) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %or21) #10
  %regs.i = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 3
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #10, !srcloc !402
  %video_fifo_depth = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 15
  %18 = ptrtoint ptr %video_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %video_fifo_depth, align 8
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %21, i32 noundef 18, i32 noundef %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i261 = getelementptr i8, ptr %24, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261, i32 %22) #10, !srcloc !402
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %26, i32 noundef 15, i32 noundef 32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i264 = getelementptr i8, ptr %28, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i264, i32 536870912) #10, !srcloc !402
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i266 = getelementptr i8, ptr %30, i32 64
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i266) #10, !srcloc !399
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_readl(ptr noundef %34, i32 noundef 16, i32 noundef %32) #10
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %and24 = shl i32 %36, 10
  %37 = and i32 %and24, 1048576
  %.masked = and i32 %32, -780
  %and34 = or i32 %37, %.masked
  %and31 = shl i32 %36, 3
  %38 = and i32 %and31, 8
  %39 = or i32 %and34, %38
  %and39 = xor i32 %39, 10
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %41, i32 noundef 16, i32 noundef %and39) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %42 = tail call i32 @llvm.bswap.i32(i32 %and39) #10
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr.i270 = getelementptr i8, ptr %44, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i270, i32 %42) #10, !srcloc !402
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0315 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %pkt_seq.0, i32 %i.0315
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.0315, 35
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %48, i32 noundef %add, i32 noundef %46) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %shl.i = shl nuw nsw i32 %add, 2
  %add.ptr.i273 = getelementptr i8, ptr %51, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i273, i32 %49) #10, !srcloc !402
  %inc = add nuw nsw i32 %i.0315, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %and41 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.else80, label %if.then43

if.then43:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %54 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %55 to i32
  %mul44 = mul i32 %4, %conv
  %div45 = udiv i32 %mul44, %6
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %56 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %hsync_end, align 4
  %conv46 = zext i16 %57 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %58 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %hsync_start, align 2
  %conv47 = zext i16 %59 to i32
  %sub48 = sub nsw i32 %conv46, %conv47
  %mul49 = mul i32 %sub48, %4
  %div50 = udiv i32 %mul49, %6
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %60 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %htotal, align 2
  %conv51 = zext i16 %61 to i32
  %sub54 = sub nsw i32 %conv51, %conv46
  %mul55 = mul i32 %sub54, %4
  %div56 = udiv i32 %mul55, %6
  %and58 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %cmp59 = icmp eq i32 %and58, 0
  %sub68 = sub nsw i32 %conv47, %conv
  %mul69 = mul i32 %sub68, %4
  %div70 = udiv i32 %mul69, %6
  %div50.op = add i32 %div50, -14
  %spec.select257 = select i1 %cmp59, i32 %div50.op, i32 -14
  %sub72 = add i32 %spec.select257, %div56
  %sub73 = add i32 %div70, -8
  %sub71 = shl i32 %div50, 16
  %shl74 = add i32 %sub71, -655360
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %63, i32 noundef 52, i32 noundef %shl74) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %64 = tail call i32 @llvm.bswap.i32(i32 %shl74) #10
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 4
  %add.ptr.i276 = getelementptr i8, ptr %66, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276, i32 %64) #10, !srcloc !402
  %shl76 = shl i32 %div45, 16
  %or77 = or i32 %sub72, %shl76
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %68, i32 noundef 53, i32 noundef %or77) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %69 = tail call i32 @llvm.bswap.i32(i32 %or77) #10
  %70 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i, align 4
  %add.ptr.i279 = getelementptr i8, ptr %71, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i279, i32 %69) #10, !srcloc !402
  %72 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %73, i32 noundef 54, i32 noundef %sub73) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %74 = tail call i32 @llvm.bswap.i32(i32 %sub73) #10
  %75 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i, align 4
  %add.ptr.i282 = getelementptr i8, ptr %76, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282, i32 %74) #10, !srcloc !402
  %77 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %78, i32 noundef 55, i32 noundef 252641280) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %79 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i, align 4
  %add.ptr.i285 = getelementptr i8, ptr %80, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i285, i32 3855) #10, !srcloc !402
  %mul78 = shl i32 %4, 3
  %div79 = udiv i32 %mul78, %6
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %82, i32 noundef 17, i32 noundef %div79) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %83 = tail call i32 @llvm.bswap.i32(i32 %div79) #10
  %84 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i, align 4
  %add.ptr.i288 = getelementptr i8, ptr %85, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i288, i32 %83) #10, !srcloc !402
  br label %if.end139

if.else80:                                        ; preds = %for.end
  %86 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %master, align 8
  %tobool82.not = icmp eq ptr %87, null
  br i1 %tobool82.not, label %lor.lhs.false, label %if.else80.if.then84_crit_edge

if.else80.if.then84_crit_edge:                    ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84

lor.lhs.false:                                    ; preds = %if.else80
  %slave = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 18
  %88 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %slave, align 4
  %tobool83.not = icmp eq ptr %89, null
  br i1 %tobool83.not, label %if.else92, label %lor.lhs.false.if.then84_crit_edge

lor.lhs.false.if.then84_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84

if.then84:                                        ; preds = %lor.lhs.false.if.then84_crit_edge, %if.else80.if.then84_crit_edge
  %hdisplay85 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %90 = ptrtoint ptr %hdisplay85 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %hdisplay85, align 4
  %92 = lshr i16 %91, 1
  br label %if.end99

if.else92:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %hdisplay93 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %93 = ptrtoint ptr %hdisplay93 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %hdisplay93, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.else92, %if.then84
  %div87.pn.in = phi i16 [ %92, %if.then84 ], [ %94, %if.else92 ]
  %div87.pn = zext i16 %div87.pn.in to i32
  %mul88.pn = mul i32 %4, %div87.pn
  %bytes.0.in = udiv i32 %mul88.pn, %6
  %95 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %96, i32 noundef 52, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %97 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i, align 4
  %add.ptr.i291 = getelementptr i8, ptr %98, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i291, i32 0) #10, !srcloc !402
  %bytes.0 = shl i32 %bytes.0.in, 16
  %shl101 = add i32 %bytes.0, 65536
  %99 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %100, i32 noundef 53, i32 noundef %shl101) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %101 = tail call i32 @llvm.bswap.i32(i32 %shl101) #10
  %102 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i, align 4
  %add.ptr.i294 = getelementptr i8, ptr %103, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i294, i32 %101) #10, !srcloc !402
  %104 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %105, i32 noundef 54, i32 noundef %shl101) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %106 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i, align 4
  %add.ptr.i297 = getelementptr i8, ptr %107, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i297, i32 %101) #10, !srcloc !402
  %108 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %109, i32 noundef 55, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %110 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i, align 4
  %add.ptr.i300 = getelementptr i8, ptr %111, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i300, i32 0) #10, !srcloc !402
  %112 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %113, i32 noundef 51, i32 noundef 11324) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %114 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i, align 4
  %add.ptr.i303 = getelementptr i8, ptr %115, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i303, i32 1009516544) #10, !srcloc !402
  %116 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %master, align 8
  %tobool105.not = icmp eq ptr %117, null
  br i1 %tobool105.not, label %lor.lhs.false106, label %if.end99.if.then109_crit_edge

if.end99.if.then109_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then109

lor.lhs.false106:                                 ; preds = %if.end99
  %slave107 = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 18
  %118 = ptrtoint ptr %slave107 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %slave107, align 4
  %tobool108.not = icmp eq ptr %119, null
  br i1 %tobool108.not, label %if.else135, label %lor.lhs.false106.if.then109_crit_edge

lor.lhs.false106.if.then109_crit_edge:            ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then109

if.then109:                                       ; preds = %lor.lhs.false106.if.then109_crit_edge, %if.end99.if.then109_crit_edge
  %lanes111 = getelementptr inbounds %struct.tegra_dsi_state, ptr %state.0, i32 0, i32 4
  %120 = ptrtoint ptr %lanes111 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %lanes111, align 4
  %mul112 = mul i32 %4, 10
  %mul113 = mul i32 %121, %6
  %add114 = add i32 %mul113, -1
  %sub115 = add i32 %add114, %mul112
  %div117 = udiv i32 %sub115, %mul113
  %htotal119 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %122 = ptrtoint ptr %htotal119 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %htotal119, align 2
  %conv120 = zext i16 %123 to i32
  %mul121 = mul i32 %4, %conv120
  %sub124 = add i32 %add114, %mul121
  %div126 = udiv i32 %sub124, %mul113
  %mul127 = mul i32 %div126, %121
  %div128256 = lshr i32 %mul127, 1
  %add129 = add i32 %121, -1
  %sub130 = add i32 %add129, %div128256
  %div131 = udiv i32 %sub130, %121
  %add118 = add i32 %div117, 26
  %add133 = add i32 %add118, %div126
  %add134 = sub i32 %add133, %div131
  br label %if.end138

if.else135:                                       ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #12
  %mul136 = shl i32 %4, 3
  %div137 = udiv i32 %mul136, %6
  br label %if.end138

if.end138:                                        ; preds = %if.else135, %if.then109
  %value.2 = phi i32 [ %add134, %if.then109 ], [ %div137, %if.else135 ]
  %124 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %125, i32 noundef 17, i32 noundef %value.2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %126 = tail call i32 @llvm.bswap.i32(i32 %value.2) #10
  %127 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs.i, align 4
  %add.ptr.i306 = getelementptr i8, ptr %128, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i306, i32 %126) #10, !srcloc !402
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.then43
  %slave140 = getelementptr inbounds %struct.tegra_dsi, ptr %dsi, i32 0, i32 18
  %129 = ptrtoint ptr %slave140 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %slave140, align 4
  %tobool141.not = icmp eq ptr %130, null
  br i1 %tobool141.not, label %if.end139.common.ret_crit_edge, label %if.then142

if.end139.common.ret_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %common.ret

common.ret:                                       ; preds = %if.then142, %if.end139.common.ret_crit_edge
  ret void

if.then142:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @tegra_dsi_configure(ptr noundef nonnull %130, i32 noundef %pipe, ptr noundef %mode)
  %hdisplay144 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %131 = ptrtoint ptr %hdisplay144 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %hdisplay144, align 4
  %133 = lshr i16 %132, 1
  %div146 = zext i16 %133 to i32
  %134 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %135, i32 noundef 84, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %136 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %137, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !402
  %or.i = mul nuw nsw i32 %div146, 65537
  %138 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %139, i32 noundef 85, i32 noundef %or.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %140 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %141 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %142, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %140) #10, !srcloc !402
  %143 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %144, i32 noundef 83, i32 noundef 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %145 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %146, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 16777216) #10, !srcloc !402
  %147 = ptrtoint ptr %slave140 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %slave140, align 4
  %149 = ptrtoint ptr %hdisplay144 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %hdisplay144, align 4
  %151 = lshr i16 %150, 1
  %div150 = zext i16 %151 to i32
  %dev.i.i308 = getelementptr inbounds %struct.tegra_dsi, ptr %148, i32 0, i32 2
  %152 = ptrtoint ptr %dev.i.i308 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev.i.i308, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %153, i32 noundef 84, i32 noundef %div150) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %154 = tail call i32 @llvm.bswap.i32(i32 %div150) #10
  %regs.i.i309 = getelementptr inbounds %struct.tegra_dsi, ptr %148, i32 0, i32 3
  %155 = ptrtoint ptr %regs.i.i309 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs.i.i309, align 4
  %add.ptr.i.i310 = getelementptr i8, ptr %156, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i310, i32 %154) #10, !srcloc !402
  %or.i312 = mul nuw nsw i32 %div150, 65537
  %157 = ptrtoint ptr %dev.i.i308 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev.i.i308, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %158, i32 noundef 85, i32 noundef %or.i312) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %159 = tail call i32 @llvm.bswap.i32(i32 %or.i312) #10
  %160 = ptrtoint ptr %regs.i.i309 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs.i.i309, align 4
  %add.ptr.i6.i313 = getelementptr i8, ptr %161, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i313, i32 %159) #10, !srcloc !402
  %162 = ptrtoint ptr %dev.i.i308 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev.i.i308, align 8
  tail call fastcc void @trace_dsi_writel(ptr noundef %163, i32 noundef 83, i32 noundef 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %164 = ptrtoint ptr %regs.i.i309 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs.i.i309, align 4
  %add.ptr.i9.i314 = getelementptr i8, ptr %165, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i314, i32 16777216) #10, !srcloc !402
  br label %common.ret
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mipi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mipi_start_calibration(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mipi_finish_calibration(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dphy_timing_get_default(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dphy_timing_validate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_state_setup_clock(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !78, !79, !81, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !294, !295, !297, !298, !300, !301, !303, !304, !305, !306, !308, !309, !310, !312, !313, !314, !315, !317, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !349, !350, !351, !353, !354, !355, !357, !358, !359, !360, !362, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !383, !384, !385, !386}
!llvm.named.register.sp = !{!388}
!llvm.module.flags = !{!389, !390, !391, !392, !393, !394, !395, !396}
!llvm.ident = !{!397}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1693, i32 11}
!2 = !{ptr @tegra_dsi_driver, !3, !"tegra_dsi_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1691, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1584, i32 49}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1591, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tegra_dsi_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @tegra_dsi_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1595, i32 41}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1597, i32 3}
!18 = !{ptr @tegra_dsi_probe._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @tegra_dsi_probe._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1601, i32 45}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1603, i32 3}
!24 = !{ptr @tegra_dsi_probe._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tegra_dsi_probe._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1607, i32 44}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1609, i32 3}
!30 = !{ptr @tegra_dsi_probe._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tegra_dsi_probe._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1615, i32 3}
!34 = !{ptr @tegra_dsi_probe._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tegra_dsi_probe._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1633, i32 3}
!38 = !{ptr @tegra_dsi_probe._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tegra_dsi_probe._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @tegra_dsi_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1644, i32 8}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1646, i32 3}
!44 = !{ptr @tegra_dsi_probe._entry.25, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @tegra_dsi_probe._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1534, i32 43}
!48 = !{ptr @tegra_dsi_host_ops, !49, !"tegra_dsi_host_ops", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1524, i32 39}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1479, i32 3}
!52 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @tegra_dsi_host_attach.__UNIQUE_ID_ddebug346, !51, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1484, i32 4}
!57 = !{ptr @tegra_dsi_host_attach._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @tegra_dsi_host_attach._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1421, i32 4}
!61 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @tegra_dsi_host_transfer._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @tegra_dsi_host_transfer._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1428, i32 5}
!66 = !{ptr @tegra_dsi_host_transfer._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tegra_dsi_host_transfer._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 44, i32 1}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!72 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!75 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 41, i32 1}
!78 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1282, i32 2}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1301, i32 2}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1219, i32 3}
!85 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @tegra_dsi_read_response.__UNIQUE_ID_ddebug342, !84, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1223, i32 5}
!89 = !{ptr @tegra_dsi_read_response.__UNIQUE_ID_ddebug343, !88, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1247, i32 3}
!92 = !{ptr @tegra_dsi_read_response._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @tegra_dsi_read_response._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1185, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1186, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1187, i32 2}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1188, i32 2}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1189, i32 2}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1190, i32 2}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1191, i32 2}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1192, i32 2}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1193, i32 2}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1194, i32 2}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1195, i32 2}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1196, i32 2}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1197, i32 2}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1198, i32 2}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1199, i32 2}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1200, i32 2}
!126 = !{ptr @error_report, !127, !"error_report", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1184, i32 27}
!128 = !{ptr @dsi_client_ops, !129, !"dsi_client_ops", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1161, i32 39}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1065, i32 4}
!132 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @tegra_dsi_init._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @tegra_dsi_init._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @tegra_dsi_connector_funcs, !136, !"tegra_dsi_connector_funcs", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 801, i32 41}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 228, i32 4}
!139 = !{ptr @debugfs_files, !140, !"debugfs_files", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 227, i32 29}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 218, i32 17}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 126, i32 2}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 127, i32 2}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 128, i32 2}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 129, i32 2}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 130, i32 2}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 131, i32 2}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 132, i32 2}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 133, i32 2}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 134, i32 2}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 135, i32 2}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 136, i32 2}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 137, i32 2}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 138, i32 2}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 139, i32 2}
!171 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 140, i32 2}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 141, i32 2}
!175 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 142, i32 2}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 143, i32 2}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 144, i32 2}
!181 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 145, i32 2}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 146, i32 2}
!185 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 147, i32 2}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 148, i32 2}
!189 = !{ptr @.str.90, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 149, i32 2}
!191 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 150, i32 2}
!193 = !{ptr @.str.92, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 151, i32 2}
!195 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 152, i32 2}
!197 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 153, i32 2}
!199 = !{ptr @.str.95, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 154, i32 2}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 155, i32 2}
!203 = !{ptr @.str.97, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 156, i32 2}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 157, i32 2}
!207 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 158, i32 2}
!209 = !{ptr @.str.100, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 159, i32 2}
!211 = !{ptr @.str.101, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 160, i32 2}
!213 = !{ptr @.str.102, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 161, i32 2}
!215 = !{ptr @.str.103, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 162, i32 2}
!217 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 163, i32 2}
!219 = !{ptr @.str.105, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 164, i32 2}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 165, i32 2}
!223 = !{ptr @.str.107, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 166, i32 2}
!225 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 167, i32 2}
!227 = !{ptr @.str.109, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 168, i32 2}
!229 = !{ptr @.str.110, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 169, i32 2}
!231 = !{ptr @.str.111, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 170, i32 2}
!233 = !{ptr @.str.112, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 171, i32 2}
!235 = !{ptr @.str.113, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 172, i32 2}
!237 = !{ptr @.str.114, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 173, i32 2}
!239 = !{ptr @.str.115, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 174, i32 2}
!241 = !{ptr @.str.116, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 175, i32 2}
!243 = !{ptr @.str.117, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 176, i32 2}
!245 = !{ptr @.str.118, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 177, i32 2}
!247 = !{ptr @.str.119, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 178, i32 2}
!249 = !{ptr @.str.120, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 179, i32 2}
!251 = !{ptr @.str.121, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 180, i32 2}
!253 = !{ptr @.str.122, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 181, i32 2}
!255 = !{ptr @.str.123, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 182, i32 2}
!257 = !{ptr @.str.124, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 183, i32 2}
!259 = !{ptr @.str.125, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 184, i32 2}
!261 = !{ptr @.str.126, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 185, i32 2}
!263 = !{ptr @.str.127, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 186, i32 2}
!265 = !{ptr @.str.128, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 187, i32 2}
!267 = !{ptr @.str.129, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 188, i32 2}
!269 = !{ptr @.str.130, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 189, i32 2}
!271 = !{ptr @.str.131, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 190, i32 2}
!273 = !{ptr @.str.132, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 191, i32 2}
!275 = !{ptr @.str.133, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 192, i32 2}
!277 = !{ptr @.str.134, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 193, i32 2}
!279 = !{ptr @.str.135, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 194, i32 2}
!281 = !{ptr @.str.136, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 195, i32 2}
!283 = !{ptr @.str.137, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 196, i32 2}
!285 = !{ptr @tegra_dsi_regs, !286, !"tegra_dsi_regs", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 125, i32 35}
!287 = !{ptr @tegra_dsi_connector_helper_funcs, !288, !"tegra_dsi_connector_helper_funcs", i1 false, i1 false}
!288 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 819, i32 48}
!289 = !{ptr @tegra_dsi_encoder_helper_funcs, !290, !"tegra_dsi_encoder_helper_funcs", i1 false, i1 false}
!290 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1031, i32 46}
!291 = !{ptr @.str.138, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 868, i32 3}
!293 = !{ptr @.str.139, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @tegra_dsi_encoder_disable.__UNIQUE_ID_ddebug341, !292, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!295 = distinct !{null, !296, !"__already_done", i1 false, i1 false}
!296 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 30, i32 1}
!297 = distinct !{null, !296, !"__warned", i1 false, i1 false}
!298 = distinct !{null, !299, !"__already_done", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 27, i32 1}
!300 = distinct !{null, !299, !"__warned", i1 false, i1 false}
!301 = !{ptr @.str.140, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 833, i32 3}
!303 = !{ptr @.str.141, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @tegra_dsi_unprepare._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @tegra_dsi_unprepare._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.143, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 838, i32 3}
!308 = !{ptr @tegra_dsi_unprepare._entry.142, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @tegra_dsi_unprepare._entry_ptr.144, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.145, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 917, i32 3}
!312 = !{ptr @.str.146, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @tegra_dsi_encoder_enable._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @tegra_dsi_encoder_enable._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.147, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 886, i32 3}
!317 = !{ptr @.str.148, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @tegra_dsi_prepare._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @tegra_dsi_prepare._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.150, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 892, i32 3}
!322 = !{ptr @tegra_dsi_prepare._entry.149, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @tegra_dsi_prepare._entry_ptr.151, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.153, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 897, i32 3}
!326 = !{ptr @tegra_dsi_prepare._entry.152, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @tegra_dsi_prepare._entry_ptr.154, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.155, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 496, i32 3}
!330 = !{ptr @.str.156, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 499, i32 3}
!332 = !{ptr @.str.157, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 502, i32 3}
!334 = !{ptr @pkt_seq_video_non_burst_sync_pulses, !335, !"pkt_seq_video_non_burst_sync_pulses", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 277, i32 18}
!336 = !{ptr @pkt_seq_video_non_burst_sync_events, !337, !"pkt_seq_video_non_burst_sync_events", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 315, i32 18}
!338 = !{ptr @pkt_seq_command_mode, !339, !"pkt_seq_command_mode", i1 false, i1 false}
!339 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 342, i32 18}
!340 = !{ptr @.str.158, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 980, i32 2}
!342 = !{ptr @.str.159, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 982, i32 2}
!344 = !{ptr @.str.160, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 984, i32 2}
!346 = !{ptr @.str.161, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 998, i32 3}
!348 = !{ptr @.str.162, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @tegra_dsi_encoder_atomic_check._entry, !347, !"_entry", i1 false, i1 false}
!350 = !{ptr @tegra_dsi_encoder_atomic_check._entry_ptr, !347, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.164, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1024, i32 3}
!353 = !{ptr @tegra_dsi_encoder_atomic_check._entry.163, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @tegra_dsi_encoder_atomic_check._entry_ptr.165, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.166, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1092, i32 4}
!357 = !{ptr @.str.167, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @tegra_dsi_runtime_suspend._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @tegra_dsi_runtime_suspend._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.168, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1116, i32 3}
!362 = !{ptr @.str.169, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @tegra_dsi_runtime_resume._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @tegra_dsi_runtime_resume._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.171, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1122, i32 3}
!367 = !{ptr @tegra_dsi_runtime_resume._entry.170, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @tegra_dsi_runtime_resume._entry_ptr.172, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.174, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1128, i32 3}
!371 = !{ptr @tegra_dsi_runtime_resume._entry.173, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @tegra_dsi_runtime_resume._entry_ptr.175, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.177, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1134, i32 3}
!375 = !{ptr @tegra_dsi_runtime_resume._entry.176, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @tegra_dsi_runtime_resume._entry_ptr.178, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.180, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1143, i32 4}
!379 = !{ptr @tegra_dsi_runtime_resume._entry.179, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @tegra_dsi_runtime_resume._entry_ptr.181, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.182, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1669, i32 3}
!383 = !{ptr @.str.183, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @tegra_dsi_remove._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @tegra_dsi_remove._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @tegra_dsi_of_match, !387, !"tegra_dsi_of_match", i1 false, i1 false}
!387 = !{!"../drivers/gpu/drm/tegra/dsi.c", i32 1682, i32 34}
!388 = !{!"sp"}
!389 = !{i32 1, !"wchar_size", i32 2}
!390 = !{i32 1, !"min_enum_size", i32 4}
!391 = !{i32 8, !"branch-target-enforcement", i32 0}
!392 = !{i32 8, !"sign-return-address", i32 0}
!393 = !{i32 8, !"sign-return-address-all", i32 0}
!394 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!395 = !{i32 7, !"uwtable", i32 1}
!396 = !{i32 7, !"frame-pointer", i32 2}
!397 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!398 = !{i64 2148762996, i64 2148763001, i64 2148763014, i64 2148763058, i64 2148763092, i64 2148763113}
!399 = !{i64 6086205}
!400 = !{i64 2157398772}
!401 = !{i64 2157399165}
!402 = !{i64 6085787}
!403 = !{!"branch_weights", i32 2000, i32 1}
!404 = !{i64 2157283727}
!405 = !{i64 2157283944}
!406 = !{i64 2149339082}
!407 = !{i64 2149340118}
!408 = !{i64 2157267487}
!409 = !{i64 2157267706}
!410 = !{i64 2148280600}
!411 = !{i64 765423, i64 765448, i64 765470, i64 765486, i64 765498, i64 765518, i64 765542, i64 765558, i64 765570}
!412 = !{i64 2148280788}
!413 = !{i8 0, i8 2}
!414 = !{i64 2157380511}
!415 = !{i64 2157379640}
!416 = !{i64 2157214608}
!417 = !{i64 2157214823}
!418 = !{i64 2157198460}
!419 = !{i64 2157198677}
