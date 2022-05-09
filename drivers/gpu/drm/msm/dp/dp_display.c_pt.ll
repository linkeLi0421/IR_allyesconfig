; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dp/dp_display.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.msm_dp_config = type { ptr, i32 }
%struct.msm_dp_desc = type { i32, i32 }
%struct.msm_dp = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i32, ptr, i32, i32, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.dp_panel = type { [16 x i8], [16 x i8], i32, i32, %struct.dp_link_info, %struct.drm_dp_desc, ptr, ptr, %struct.dp_display_mode, i8, i32, i32, i32, i32 }
%struct.dp_link_info = type { i8, i32, i32, i32 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.dp_display_mode = type { %struct.drm_display_mode, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.dp_link = type { i32, i32, i8, i8, %struct.dp_link_test_video, %struct.dp_link_test_audio, %struct.dp_link_phy_params, %struct.dp_link_info }
%struct.dp_link_test_video = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_test_audio = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_phy_params = type { i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dp_display_private = type { ptr, i32, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dp_usbpd_cb, %struct.dp_display_mode, %struct.msm_dp, %struct.completion, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, [8 x %struct.dp_event], %struct.spinlock, ptr }
%struct.dp_usbpd_cb = type { ptr, ptr, ptr }
%struct.dp_event = type { i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.92 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.100, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.100 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.dp_audio = type { i32, i32 }
%struct.dp_panel_in = type { ptr, ptr, ptr, ptr }
%struct.dp_parser = type { ptr, [4 x %struct.dss_module_power], %struct.dp_pinctrl, %struct.dp_io, %struct.dp_display_data, ptr, i32, ptr, ptr }
%struct.dss_module_power = type { i32, ptr }
%struct.dp_pinctrl = type { ptr, ptr, ptr, ptr }
%struct.dp_io = type { %struct.dss_io_data, ptr, %union.phy_configure_opts }
%struct.dss_io_data = type { %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region }
%struct.dss_io_region = type { i32, ptr }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dp_display_data = type { ptr, ptr, i8, ptr, ptr }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid params\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid input\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get irq: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dp_display_isr\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request IRQ%u: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dp_display_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dp_display_probe, ptr @dp_display_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.18, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @dp_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Dp display driver register failed\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to initialize debug, rc = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/msm/dp/dp_display.c\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"request_irq failed, ret=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* failed to create dp connector: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* failed to create dp bridge: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid data\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hpd isr status=%#x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msm-dp-display\00", [17 x i8] zeroinitializer }, align 32
@dp_dt_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-dp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7180_dp_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-dp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7280_dp_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-edp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7280_dp_cfg }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@dp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @dp_pm_prepare, ptr @dp_pm_complete, ptr @dp_pm_suspend, ptr @dp_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pdev not found\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"drm_dp\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"init sub module failed\0A\00", [40 x i8] zeroinitializer }, align 32
@dp_display_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dp->event_mutex\00", [47 x i8] zeroinitializer }, align 32
@dp_display_comp_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @dp_display_bind, ptr @dp_display_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"component add failed, rc=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@dp_display_get_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.7, i32 1228, ptr @.str.9, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unknown displayport instance\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dp_display_get_desc\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dp_display_get_desc._entry_ptr = internal global ptr @dp_display_get_desc._entry, section ".printk_index", align 4
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize hpd, rc = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to initialize parser, rc = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to initialize catalog, rc = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to initialize power, rc = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize aux, rc = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to initialize link, rc = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to initialize panel, rc = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to initialize ctrl, rc = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dp_init_sub_modules._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.7, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013failed to initialize audio, rc = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dp_init_sub_modules\00", [44 x i8] zeroinitializer }, align 32
@dp_init_sub_modules._entry_ptr = internal global ptr @dp_init_sub_modules._entry, section ".printk_index", align 4
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to complete DP link training\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hpd_state=%d sink_request=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sink count is zero, nothing to do\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"present=%#x sink_count=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Disconnected sink_request: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Disconnected, no DP_LINK_STATUS_UPDATED\0A\00", [55 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device tree parsing failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DRM DP AUX register failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Power client create failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Audio registration Dp failed\0A\00", [34 x i8] zeroinitializer }, align 32
@sc7180_dp_cfg = internal constant { %struct.msm_dp_config, [24 x i8] } { %struct.msm_dp_config { ptr @.compoundliteral, i32 1 }, [24 x i8] zeroinitializer }, align 32
@sc7280_dp_cfg = internal constant { %struct.msm_dp_config, [24 x i8] } { %struct.msm_dp_config { ptr @.compoundliteral.49, i32 2 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [1 x %struct.msm_dp_desc], [24 x i8] } { [1 x %struct.msm_dp_desc] [%struct.msm_dp_desc { i32 183042048, i32 10 }], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal constant { [2 x %struct.msm_dp_desc], [16 x i8] } { [2 x %struct.msm_dp_desc] [%struct.msm_dp_desc { i32 183042048, i32 10 }, %struct.msm_dp_desc { i32 183107584, i32 14 }], [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Before, core_inited=%d power_on=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"After, core_inited=%d power_on=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DP core not initialized\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"After, sink_count=%d is_connected=%d core_inited=%d power_on=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@dp_hpd_event_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dp_priv->event_q\00", [46 x i8] zeroinitializer }, align 32
@dp_hpd_event_setup.__key.55 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dp_priv->event_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dp_hpd_handler\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hpd_state=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HPD already %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hpd=%d\0A\00", [24 x i8] zeroinitializer }, align 32
@dp_add_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.7, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013event_q is full: pndx=%d gndx=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dp_add_event\00", [19 x i8] zeroinitializer }, align 32
@dp_add_event._entry_ptr = internal global ptr @dp_add_event._entry, section ".printk_index", align 4
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"core_initialized=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DP core already initialized\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sink_count=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Link already setup, return\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"audio comp timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sink count: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32, i64 64]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32, i64 64]
@__sancov_gen_cov_switch_values.72 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.73 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 935, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1184, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1193, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1199, i32 23 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1201, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"dp_display_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1399, i32 31 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1416, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1454, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1465, i32 6 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1473, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1482, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1493, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1142, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1148, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1403, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant [12 x i8] c"dp_dt_match\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 146, i32 34 }
@___asan_gen_.127 = private unnamed_addr constant [10 x i8] c"dp_pm_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1392, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1239, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1252, i32 13 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1257, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1261, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c"dp_display_comp_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 283, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1272, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1228, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 737, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 745, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 753, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 761, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 769, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 777, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 789, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 798, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 806, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 365, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 487, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 439, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 296, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 460, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 463, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 464, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 87, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 245, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 254, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 260, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 266, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [14 x i8] c"sc7180_dp_cfg\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 131, i32 35 }
@___asan_gen_.238 = private unnamed_addr constant [14 x i8] c"sc7280_dp_cfg\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 138, i32 35 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1358, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1374, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 397, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1339, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1129, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1130, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1132, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 510, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 319, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 329, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 171, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 379, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 381, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 845, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 847, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 890, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.310 = private constant [39 x i8] c"../drivers/gpu/drm/msm/dp/dp_display.c\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 905, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @dp_add_event._entry, ptr @dp_add_event._entry_ptr, ptr @dp_display_get_desc._entry, ptr @dp_display_get_desc._entry_ptr, ptr @dp_init_sub_modules._entry, ptr @dp_init_sub_modules._entry_ptr, ptr @msm_dp_unregister, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dp_display_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @dp_dt_match, ptr @dp_pm_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @dp_display_probe.__key, ptr @.str.22, ptr @dp_display_comp_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @init_completion.__key, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @sc7180_dp_cfg, ptr @sc7280_dp_cfg, ptr @.compoundliteral, ptr @.compoundliteral.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @dp_hpd_event_setup.__key, ptr @.str.54, ptr @dp_hpd_event_setup.__key.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_display_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_dt_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_display_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_display_comp_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_display_get_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_init_sub_modules._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_dp_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_dp_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_hpd_event_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_hpd_event_setup.__key.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_add_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dp_display_signal_audio_start(ptr nocapture noundef writeonly %dp_display) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_comp = getelementptr i8, ptr %dp_display, i32 48
  %0 = ptrtoint ptr %audio_comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %audio_comp, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_display_signal_audio_complete(ptr noundef %dp_display) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_comp = getelementptr i8, ptr %dp_display, i32 48
  tail call void @complete_all(ptr noundef %audio_comp) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_display_set_plugged_cb(ptr nocapture noundef %dp_display, ptr noundef %fn, ptr noundef %codec_dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %plugged_cb = getelementptr inbounds %struct.msm_dp, ptr %dp_display, i32 0, i32 10
  %0 = ptrtoint ptr %plugged_cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fn, ptr %plugged_cb, align 4
  %codec_dev1 = getelementptr inbounds %struct.msm_dp, ptr %dp_display, i32 0, i32 1
  %1 = ptrtoint ptr %codec_dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %codec_dev, ptr %codec_dev1, align 4
  %is_connected = getelementptr inbounds %struct.msm_dp, ptr %dp_display, i32 0, i32 6
  %2 = ptrtoint ptr %is_connected to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_connected, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  %tobool.not.i = icmp eq ptr %fn, null
  %tobool1.not.i = icmp eq ptr %codec_dev, null
  %or.cond = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond, label %entry.dp_display_handle_plugged_change.exit_crit_edge, label %land.lhs.true2.i

entry.dp_display_handle_plugged_change.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_display_handle_plugged_change.exit

land.lhs.true2.i:                                 ; preds = %entry
  %audio_supported.i = getelementptr i8, ptr %dp_display, i32 -186
  %4 = ptrtoint ptr %audio_supported.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %audio_supported.i, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not.i = icmp eq i8 %5, 0
  br i1 %tobool3.not.i, label %land.lhs.true2.i.dp_display_handle_plugged_change.exit_crit_edge, label %if.then.i

land.lhs.true2.i.dp_display_handle_plugged_change.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_display_handle_plugged_change.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %fn(ptr noundef nonnull %codec_dev, i1 noundef zeroext %tobool) #10
  br label %dp_display_handle_plugged_change.exit

dp_display_handle_plugged_change.exit:            ; preds = %if.then.i, %land.lhs.true2.i.dp_display_handle_plugged_change.exit_crit_edge, %entry.dp_display_handle_plugged_change.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_display_validate_mode(ptr noundef readonly %dp, i32 noundef %mode_pclk_khz) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode_pclk_khz)
  %tobool1.not = icmp eq i32 %mode_pclk_khz, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.if.then_crit_edge, label %lor.lhs.false2

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false2:                                   ; preds = %entry
  %connector = getelementptr inbounds %struct.msm_dp, ptr %dp, i32 0, i32 3
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %lor.lhs.false2.if.then_crit_edge, label %if.end

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  %panel = getelementptr i8, ptr %dp, i32 -152
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 2
  %4 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bpc, align 8
  %mul = mul i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool6.not = icmp eq i32 %mul, 0
  %spec.store.select = select i1 %tobool6.not, i32 24, i32 %mul
  %call = tail call i32 @dp_panel_get_mode_bpp(ptr noundef %3, i32 noundef %spec.store.select, i32 noundef %mode_pclk_khz) #10
  %mul10 = mul i32 %call, %mode_pclk_khz
  %num_lanes = getelementptr inbounds %struct.dp_panel, ptr %3, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_lanes, align 4
  %rate = getelementptr inbounds %struct.dp_panel, ptr %3, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %mul11 = shl i32 %7, 3
  %mul12 = mul i32 %mul11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul10, i32 %mul12)
  %cmp = icmp ugt i32 %mul10, %mul12
  %. = select i1 %cmp, i32 -2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_panel_get_mode_bpp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_display_get_modes(ptr noundef %dp, ptr noundef %dp_mode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %panel = getelementptr i8, ptr %dp, i32 -152
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %connector = getelementptr inbounds %struct.msm_dp, ptr %dp, i32 0, i32 3
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 4
  %call = tail call i32 @dp_panel_get_modes(ptr noundef %1, ptr noundef %3, ptr noundef %dp_mode) #10
  %4 = ptrtoint ptr %dp_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %max_pclk_khz = getelementptr inbounds %struct.msm_dp, ptr %dp, i32 0, i32 11
  %6 = ptrtoint ptr %max_pclk_khz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %max_pclk_khz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.then2 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_panel_get_modes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dp_display_check_video_test(ptr nocapture noundef readonly %dp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr i8, ptr %dp, i32 -152
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %video_test = getelementptr inbounds %struct.dp_panel, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %video_test to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %video_test, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_display_get_test_bpp(ptr noundef readonly %dp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %link = getelementptr i8, ptr %dp, i32 -156
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %test_bit_depth = getelementptr inbounds %struct.dp_link, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %test_bit_depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %test_bit_depth, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default.i [
    i32 0, label %if.end.cleanup_crit_edge
    i32 32, label %sw.bb1.i
    i32 64, label %sw.bb2.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %sw.default.i ], [ 30, %sw.bb2.i ], [ 24, %sw.bb1.i ], [ 18, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dp_snapshot(ptr noundef %disp_state, ptr noundef %dp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %event_mutex = getelementptr i8, ptr %dp, i32 104
  tail call void @mutex_lock_nested(ptr noundef %event_mutex, i32 noundef 0) #10
  %power_on = getelementptr inbounds %struct.msm_dp, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_on, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %catalog = getelementptr i8, ptr %dp, i32 -164
  %2 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_snapshot(ptr noundef %3, ptr noundef %disp_state) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %event_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_display_request_irq(ptr noundef %dp_display) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_display, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr i8, ptr %dp_display, i32 -184
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef 0) #10
  %irq = getelementptr i8, ptr %dp_display, i32 -196
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %call) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %dp_display, i32 -200
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev6, i32 noundef %call, ptr noundef nonnull @dp_display_irq_handler, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9 = icmp slt i32 %call.i, 0
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %8, i32 noundef %call.i) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @disable_irq(i32 noundef %8) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then2 ], [ %call.i, %if.then10 ], [ 0, %if.end12 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_display_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %catalog = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 11
  %0 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %catalog, align 4
  %call = tail call i32 @dp_catalog_hpd_get_intr_status(ptr noundef %1) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.17, i32 noundef %call) #10
  %and = and i32 %call, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end25_crit_edge, label %if.then2

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then2:                                         ; preds = %if.end
  %and3 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then5

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.then2
  %event_lock.i = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 27
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #10
  %event_pndx.i = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 24
  %2 = ptrtoint ptr %event_pndx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event_pndx.i, align 4
  %add.i = add i32 %3, 1
  %rem.i = srem i32 %add.i, 8
  %event_gndx.i = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 25
  %4 = ptrtoint ptr %event_gndx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event_gndx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %5)
  %cmp5.i = icmp eq i32 %rem.i, %5
  br i1 %cmp5.i, label %do.end9.i, label %if.end.i

do.end9.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %3, i32 noundef %rem.i) #13
  br label %dp_add_event.exit

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %3
  %rem17.i = and i32 %add.i, 7
  %6 = ptrtoint ptr %event_pndx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rem17.i, ptr %event_pndx.i, align 4
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %arrayidx.i, align 4
  %data18.i = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %3, i32 1
  %8 = ptrtoint ptr %data18.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %data18.i, align 4
  %delay19.i = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %3, i32 2
  %9 = ptrtoint ptr %delay19.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %delay19.i, align 4
  %event_q.i = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %event_q.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit

dp_add_event.exit:                                ; preds = %if.end.i, %do.end9.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call2.i) #10
  br label %if.end7

if.end7:                                          ; preds = %dp_add_event.exit, %if.then2.if.end7_crit_edge
  %and8 = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  %event_lock.i42 = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 27
  %call2.i43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i42) #10
  %event_pndx.i44 = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 24
  %10 = ptrtoint ptr %event_pndx.i44 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event_pndx.i44, align 4
  %event_gndx.i45 = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 25
  %12 = ptrtoint ptr %event_gndx.i45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %event_gndx.i45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp5.i46 = icmp eq i32 %11, %13
  br i1 %cmp5.i46, label %if.then10.dp_del_event.exit_crit_edge, label %if.then10.while.body.i_crit_edge

if.then10.while.body.i_crit_edge:                 ; preds = %if.then10
  br label %while.body.i

if.then10.dp_del_event.exit_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_del_event.exit

while.body.i:                                     ; preds = %if.end16.i.while.body.i_crit_edge, %if.then10.while.body.i_crit_edge
  %gndx.02.i = phi i32 [ %rem.i48, %if.end16.i.while.body.i_crit_edge ], [ %13, %if.then10.while.body.i_crit_edge ]
  %arrayidx.i47 = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %gndx.02.i
  %14 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp12.i = icmp eq i32 %15, 6
  br i1 %cmp12.i, label %if.then14.i, label %while.body.i.if.end16.i_crit_edge

while.body.i.if.end16.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then14.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx.i47, align 4
  %delay.i = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %gndx.02.i, i32 2
  %17 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %delay.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %while.body.i.if.end16.i_crit_edge
  %inc.i = add i32 %gndx.02.i, 1
  %rem.i48 = and i32 %inc.i, 7
  %18 = ptrtoint ptr %event_pndx.i44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %event_pndx.i44, align 4
  %cmp10.not.i = icmp eq i32 %19, %rem.i48
  br i1 %cmp10.not.i, label %if.end16.i.dp_del_event.exit_crit_edge, label %if.end16.i.while.body.i_crit_edge

if.end16.i.while.body.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end16.i.dp_del_event.exit_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_del_event.exit

dp_del_event.exit:                                ; preds = %if.end16.i.dp_del_event.exit_crit_edge, %if.then10.dp_del_event.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i42, i32 noundef %call2.i43) #10
  %call2.i50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i42) #10
  %20 = ptrtoint ptr %event_pndx.i44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %event_pndx.i44, align 4
  %add.i52 = add i32 %21, 1
  %rem.i53 = srem i32 %add.i52, 8
  %22 = ptrtoint ptr %event_gndx.i45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %event_gndx.i45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i53, i32 %23)
  %cmp5.i55 = icmp eq i32 %rem.i53, %23
  br i1 %cmp5.i55, label %do.end9.i57, label %if.end.i63

do.end9.i57:                                      ; preds = %dp_del_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %21, i32 noundef %rem.i53) #13
  br label %dp_add_event.exit64

if.end.i63:                                       ; preds = %dp_del_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i58 = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %21
  %rem17.i59 = and i32 %add.i52, 7
  %24 = ptrtoint ptr %event_pndx.i44 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rem17.i59, ptr %event_pndx.i44, align 4
  %25 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %arrayidx.i58, align 4
  %data18.i60 = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %21, i32 1
  %26 = ptrtoint ptr %data18.i60 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %data18.i60, align 4
  %delay19.i61 = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %21, i32 2
  %27 = ptrtoint ptr %delay19.i61 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %delay19.i61, align 4
  %event_q.i62 = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %event_q.i62, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit64

dp_add_event.exit64:                              ; preds = %if.end.i63, %do.end9.i57
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i42, i32 noundef %call2.i50) #10
  br label %if.end13

if.end13:                                         ; preds = %dp_add_event.exit64, %if.end7.if.end13_crit_edge
  %and14 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  %event_lock.i65 = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 27
  %call2.i66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i65) #10
  %event_pndx.i67 = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 24
  %28 = ptrtoint ptr %event_pndx.i67 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %event_pndx.i67, align 4
  %add.i68 = add i32 %29, 1
  %rem.i69 = srem i32 %add.i68, 8
  %event_gndx.i70 = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 25
  %30 = ptrtoint ptr %event_gndx.i70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %event_gndx.i70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i69, i32 %31)
  %cmp5.i71 = icmp eq i32 %rem.i69, %31
  br i1 %cmp5.i71, label %do.end9.i73, label %if.end.i79

do.end9.i73:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %29, i32 noundef %rem.i69) #13
  br label %dp_add_event.exit80

if.end.i79:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i74 = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %29
  %rem17.i75 = and i32 %add.i68, 7
  %32 = ptrtoint ptr %event_pndx.i67 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %rem17.i75, ptr %event_pndx.i67, align 4
  %33 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %arrayidx.i74, align 4
  %data18.i76 = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %29, i32 1
  %34 = ptrtoint ptr %data18.i76 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %data18.i76, align 4
  %delay19.i77 = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %29, i32 2
  %35 = ptrtoint ptr %delay19.i77 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %delay19.i77, align 4
  %event_q.i78 = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %event_q.i78, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit80

dp_add_event.exit80:                              ; preds = %if.end.i79, %do.end9.i73
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i65, i32 noundef %call2.i66) #10
  %call2.i82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i65) #10
  %36 = ptrtoint ptr %event_pndx.i67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %event_pndx.i67, align 4
  %add.i84 = add i32 %37, 1
  %rem.i85 = srem i32 %add.i84, 8
  %38 = ptrtoint ptr %event_gndx.i70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %event_gndx.i70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i85, i32 %39)
  %cmp5.i87 = icmp eq i32 %rem.i85, %39
  br i1 %cmp5.i87, label %do.end9.i89, label %if.end.i95

do.end9.i89:                                      ; preds = %dp_add_event.exit80
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %37, i32 noundef %rem.i85) #13
  br label %dp_add_event.exit96

if.end.i95:                                       ; preds = %dp_add_event.exit80
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i90 = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %37
  %rem17.i91 = and i32 %add.i84, 7
  %40 = ptrtoint ptr %event_pndx.i67 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %rem17.i91, ptr %event_pndx.i67, align 4
  %41 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %arrayidx.i90, align 4
  %data18.i92 = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %37, i32 1
  %42 = ptrtoint ptr %data18.i92 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %data18.i92, align 4
  %delay19.i93 = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %37, i32 2
  %43 = ptrtoint ptr %delay19.i93 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %delay19.i93, align 4
  %event_q.i94 = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %event_q.i94, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit96

dp_add_event.exit96:                              ; preds = %if.end.i95, %do.end9.i89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i65, i32 noundef %call2.i82) #10
  br label %if.end19

if.end19:                                         ; preds = %dp_add_event.exit96, %if.end13.if.end19_crit_edge
  %and20 = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end25_crit_edge, label %if.then22

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then22:                                        ; preds = %if.end19
  %event_lock.i97 = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 27
  %call2.i98 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i97) #10
  %event_pndx.i99 = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 24
  %44 = ptrtoint ptr %event_pndx.i99 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %event_pndx.i99, align 4
  %add.i100 = add i32 %45, 1
  %rem.i101 = srem i32 %add.i100, 8
  %event_gndx.i102 = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 25
  %46 = ptrtoint ptr %event_gndx.i102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %event_gndx.i102, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i101, i32 %47)
  %cmp5.i103 = icmp eq i32 %rem.i101, %47
  br i1 %cmp5.i103, label %do.end9.i105, label %if.end.i111

do.end9.i105:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %45, i32 noundef %rem.i101) #13
  br label %dp_add_event.exit112

if.end.i111:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i106 = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %45
  %rem17.i107 = and i32 %add.i100, 7
  %48 = ptrtoint ptr %event_pndx.i99 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %rem17.i107, ptr %event_pndx.i99, align 4
  %49 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %arrayidx.i106, align 4
  %data18.i108 = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %45, i32 1
  %50 = ptrtoint ptr %data18.i108 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %data18.i108, align 4
  %delay19.i109 = getelementptr %struct.dp_display_private, ptr %dev_id, i32 0, i32 26, i32 %45, i32 2
  %51 = ptrtoint ptr %delay19.i109 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %delay19.i109, align 4
  %event_q.i110 = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %event_q.i110, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit112

dp_add_event.exit112:                             ; preds = %if.end.i111, %do.end9.i105
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i97, i32 noundef %call2.i98) #10
  br label %if.end25

if.end25:                                         ; preds = %dp_add_event.exit112, %if.end19.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %ctrl = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 15
  %52 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctrl, align 4
  tail call void @dp_ctrl_isr(ptr noundef %53) #10
  %aux = getelementptr inbounds %struct.dp_display_private, ptr %dev_id, i32 0, i32 12
  %54 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %aux, align 4
  tail call void @dp_aux_isr(ptr noundef %55) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then
  %retval.0 = phi i32 [ 1, %if.end25 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dp_register() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dp_display_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dp_unregister() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @dp_display_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dp_irq_postinstall(ptr noundef %dp_display) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_display, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dp_display, i32 -200
  %event_q.i = getelementptr i8, ptr %dp_display, i32 196
  tail call void @__init_waitqueue_head(ptr noundef %event_q.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @dp_hpd_event_setup.__key) #10
  %event_lock.i = getelementptr i8, ptr %dp_display, i32 356
  tail call void @__raw_spin_lock_init(ptr noundef %event_lock.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @dp_hpd_event_setup.__key.55, i16 noundef signext 3) #10
  %call3.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @hpd_event_thread, ptr noundef %add.ptr, i32 noundef -1, ptr noundef nonnull @.str.57) #10
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.dp_hpd_event_setup.exit_crit_edge, label %if.then.i

if.end.dp_hpd_event_setup.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_hpd_event_setup.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 @wake_up_process(ptr noundef %call3.i) #10
  br label %dp_hpd_event_setup.exit

dp_hpd_event_setup.exit:                          ; preds = %if.then.i, %if.end.dp_hpd_event_setup.exit_crit_edge
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #10
  %event_pndx.i = getelementptr i8, ptr %dp_display, i32 252
  %0 = ptrtoint ptr %event_pndx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_pndx.i, align 4
  %add.i = add i32 %1, 1
  %rem.i = srem i32 %add.i, 8
  %event_gndx.i = getelementptr i8, ptr %dp_display, i32 256
  %2 = ptrtoint ptr %event_gndx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event_gndx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %3)
  %cmp5.i = icmp eq i32 %rem.i, %3
  br i1 %cmp5.i, label %do.end9.i, label %if.end.i

do.end9.i:                                        ; preds = %dp_hpd_event_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %1, i32 noundef %rem.i) #13
  br label %dp_add_event.exit

if.end.i:                                         ; preds = %dp_hpd_event_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.dp_display_private, ptr %add.ptr, i32 0, i32 26, i32 %1
  %rem17.i = and i32 %add.i, 7
  %4 = ptrtoint ptr %event_pndx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %rem17.i, ptr %event_pndx.i, align 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %arrayidx.i, align 4
  %data18.i = getelementptr %struct.dp_display_private, ptr %add.ptr, i32 0, i32 26, i32 %1, i32 1
  %6 = ptrtoint ptr %data18.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data18.i, align 4
  %delay19.i = getelementptr %struct.dp_display_private, ptr %add.ptr, i32 0, i32 26, i32 %1, i32 2
  %7 = ptrtoint ptr %delay19.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 100, ptr %delay19.i, align 4
  tail call void @__wake_up(ptr noundef %event_q.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit

dp_add_event.exit:                                ; preds = %if.end.i, %do.end9.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %dp_add_event.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dp_debugfs_init(ptr nocapture noundef %dp_display, ptr noundef %minor) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dp_display, i32 -184
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %panel = getelementptr i8, ptr %dp_display, i32 -152
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %usbpd = getelementptr i8, ptr %dp_display, i32 -176
  %4 = ptrtoint ptr %usbpd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usbpd, align 4
  %link = getelementptr i8, ptr %dp_display, i32 -156
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link, align 4
  %connector = getelementptr inbounds %struct.msm_dp, ptr %dp_display, i32 0, i32 3
  %8 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connector, align 4
  %call = tail call ptr @dp_debug_get(ptr noundef %dev1, ptr noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef %minor) #10
  %debug = getelementptr i8, ptr %dp_display, i32 -144
  %10 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %debug, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %11) #10
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %debug, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_debug_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dp_modeset_init(ptr noundef %dp_display, ptr noundef %dev, ptr noundef %encoder) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %encoder, null
  br i1 %tobool.not, label %do.end, label %lor.lhs.false.critedge, !prof !163

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1465, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %entry
  %tobool23.not = icmp eq ptr %dp_display, null
  br i1 %tobool23.not, label %do.end41, label %lor.lhs.false56.critedge, !prof !163

do.end41:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1465, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

lor.lhs.false56.critedge:                         ; preds = %lor.lhs.false.critedge
  %tobool58.not = icmp eq ptr %dev, null
  br i1 %tobool58.not, label %do.end76, label %if.end92, !prof !163

do.end76:                                         ; preds = %lor.lhs.false56.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1465, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end92:                                         ; preds = %lor.lhs.false56.critedge
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %dp_display to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dp_display, align 4
  %call = tail call i32 @dp_display_request_irq(ptr noundef nonnull %dp_display)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool93.not = icmp eq i32 %call, 0
  br i1 %tobool93.not, label %if.end95, label %if.then94

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %call) #10
  br label %cleanup

if.end95:                                         ; preds = %if.end92
  %encoder96 = getelementptr inbounds %struct.msm_dp, ptr %dp_display, i32 0, i32 4
  %3 = ptrtoint ptr %encoder96 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %encoder, ptr %encoder96, align 4
  %call97 = tail call ptr @dp_drm_connector_init(ptr noundef nonnull %dp_display) #10
  %connector = getelementptr inbounds %struct.msm_dp, ptr %dp_display, i32 0, i32 3
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call97, ptr %connector, align 4
  %cmp.i = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then100, label %if.end105

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call97 to i32
  %dev103 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev103, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %5) #10
  %8 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %connector, align 4
  br label %cleanup

if.end105:                                        ; preds = %if.end95
  %num_connectors = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %num_connectors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_connectors, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %num_connectors, align 4
  %arrayidx = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 33, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call97, ptr %arrayidx, align 4
  %call107 = tail call ptr @msm_dp_bridge_init(ptr noundef nonnull %dp_display, ptr noundef nonnull %dev, ptr noundef nonnull %encoder) #10
  %bridge = getelementptr inbounds %struct.msm_dp, ptr %dp_display, i32 0, i32 2
  %12 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call107, ptr %bridge, align 4
  %cmp.i156 = icmp ugt ptr %call107, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.then110, label %if.end115

if.then110:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call107 to i32
  %dev113 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %14 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev113, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %13) #10
  %16 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %bridge, align 4
  br label %cleanup

if.end115:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %num_bridges = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 30
  %17 = ptrtoint ptr %num_bridges to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_bridges, align 8
  %inc117 = add i32 %18, 1
  store i32 %inc117, ptr %num_bridges, align 8
  %arrayidx118 = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 31, i32 %18
  %19 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call107, ptr %arrayidx118, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %if.then110, %if.then100, %if.then94, %do.end76, %do.end41, %do.end
  %retval.0 = phi i32 [ %call, %if.then94 ], [ %5, %if.then100 ], [ %13, %if.then110 ], [ 0, %if.end115 ], [ -22, %do.end76 ], [ -22, %do.end41 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_drm_connector_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dp_bridge_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dp_display_enable(ptr noundef %dp, ptr nocapture noundef readnone %encoder) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dp, i32 -200
  %dp_mode = getelementptr i8, ptr %dp, i32 -128
  %0 = ptrtoint ptr %dp_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dp_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %event_mutex = getelementptr i8, ptr %dp, i32 104
  tail call void @mutex_lock_nested(ptr noundef %event_mutex, i32 noundef 0) #10
  %event_lock.i = getelementptr i8, ptr %dp, i32 356
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #10
  %event_pndx.i = getelementptr i8, ptr %dp, i32 252
  %2 = ptrtoint ptr %event_pndx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event_pndx.i, align 4
  %event_gndx.i = getelementptr i8, ptr %dp, i32 256
  %4 = ptrtoint ptr %event_gndx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event_gndx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5.i = icmp eq i32 %3, %5
  br i1 %cmp5.i, label %if.end.dp_del_event.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.dp_del_event.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_del_event.exit

while.body.i:                                     ; preds = %if.end16.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %gndx.02.i = phi i32 [ %rem.i, %if.end16.i.while.body.i_crit_edge ], [ %5, %if.end.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dp_display_private, ptr %add.ptr, i32 0, i32 26, i32 %gndx.02.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp12.i = icmp eq i32 %7, 6
  br i1 %cmp12.i, label %if.then14.i, label %while.body.i.if.end16.i_crit_edge

while.body.i.if.end16.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then14.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx.i, align 4
  %delay.i = getelementptr %struct.dp_display_private, ptr %add.ptr, i32 0, i32 26, i32 %gndx.02.i, i32 2
  %9 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %delay.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %while.body.i.if.end16.i_crit_edge
  %inc.i = add i32 %gndx.02.i, 1
  %rem.i = and i32 %inc.i, 7
  %10 = ptrtoint ptr %event_pndx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event_pndx.i, align 4
  %cmp10.not.i = icmp eq i32 %11, %rem.i
  br i1 %cmp10.not.i, label %if.end16.i.dp_del_event.exit_crit_edge, label %if.end16.i.while.body.i_crit_edge

if.end16.i.while.body.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end16.i.dp_del_event.exit_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_del_event.exit

dp_del_event.exit:                                ; preds = %if.end16.i.dp_del_event.exit_crit_edge, %if.end.dp_del_event.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call2.i) #10
  %panel.i = getelementptr i8, ptr %dp, i32 -152
  %12 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %panel.i, align 4
  %dp_mode.i = getelementptr inbounds %struct.dp_panel, ptr %13, i32 0, i32 8
  %14 = call ptr @memcpy(ptr %dp_mode.i, ptr %dp_mode, i32 112)
  %bpp.i = getelementptr i8, ptr %dp, i32 -12
  %15 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bpp.i, align 4
  %17 = load ptr, ptr %panel.i, align 4
  %bpp4.i = getelementptr inbounds %struct.dp_panel, ptr %17, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %bpp4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %bpp4.i, align 4
  %capabilities.i = getelementptr i8, ptr %dp, i32 -16
  %19 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %capabilities.i, align 4
  %21 = load ptr, ptr %panel.i, align 4
  %capabilities7.i = getelementptr inbounds %struct.dp_panel, ptr %21, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %capabilities7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %capabilities7.i, align 4
  %23 = load ptr, ptr %panel.i, align 4
  %call.i = tail call i32 @dp_panel_init_panel_info(ptr noundef %23) #10
  %hpd_state = getelementptr i8, ptr %dp, i32 248
  %24 = ptrtoint ptr %hpd_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hpd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp = icmp eq i32 %25, 4
  br i1 %cmp, label %if.then12, label %if.end24.critedge

if.then12:                                        ; preds = %dp_del_event.exit
  %core_initialized.i = getelementptr i8, ptr %dp, i32 -188
  %26 = ptrtoint ptr %core_initialized.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %core_initialized.i, align 4, !range !162
  %28 = zext i8 %27 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.65, i32 noundef %28) #10
  %29 = ptrtoint ptr %core_initialized.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %core_initialized.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool2.not.i = icmp eq i8 %30, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.66) #10
  br label %dp_display_host_init.exit

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %usbpd.i = getelementptr i8, ptr %dp, i32 -176
  %31 = ptrtoint ptr %usbpd.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usbpd.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.i = icmp eq i32 %34, 2
  %power.i = getelementptr i8, ptr %dp, i32 -168
  %35 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %power.i, align 4
  %call.i54 = tail call i32 @dp_power_init(ptr noundef %36, i1 noundef zeroext %cmp.i) #10
  %ctrl.i = getelementptr i8, ptr %dp, i32 -148
  %37 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctrl.i, align 4
  %call9.i = tail call i32 @dp_ctrl_host_init(ptr noundef %38, i1 noundef zeroext %cmp.i, i1 noundef zeroext true) #10
  %aux.i = getelementptr i8, ptr %dp, i32 -160
  %39 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %aux.i, align 4
  tail call void @dp_aux_init(ptr noundef %40) #10
  %41 = ptrtoint ptr %core_initialized.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %core_initialized.i, align 4
  br label %dp_display_host_init.exit

dp_display_host_init.exit:                        ; preds = %if.end.i, %if.then.i
  %link.i = getelementptr i8, ptr %dp, i32 -156
  %42 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %link.i, align 4
  %sink_count.i = getelementptr inbounds %struct.dp_link, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %sink_count.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %sink_count.i, align 1
  %conv.i = zext i8 %45 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.67, i32 noundef %conv.i) #10
  %power_on.i = getelementptr i8, ptr %dp, i32 26
  %46 = ptrtoint ptr %power_on.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %power_on.i, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i, label %if.end.i59, label %if.then.i55

if.then.i55:                                      ; preds = %dp_display_host_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.68) #10
  br label %dp_display_enable.exit

if.end.i59:                                       ; preds = %dp_display_host_init.exit
  %ctrl.i56 = getelementptr i8, ptr %dp, i32 -148
  %48 = ptrtoint ptr %ctrl.i56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctrl.i56, align 4
  %call.i57 = tail call i32 @dp_ctrl_on_stream(ptr noundef %49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool2.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool2.not.i58, label %if.then3.i, label %if.end.i59.dp_display_enable.exit_crit_edge

if.end.i59.dp_display_enable.exit_crit_edge:      ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_display_enable.exit

if.then3.i:                                       ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %power_on.i, align 2
  br label %dp_display_enable.exit

dp_display_enable.exit:                           ; preds = %if.then3.i, %if.end.i59.dp_display_enable.exit_crit_edge, %if.then.i55
  %audio_supported.i = getelementptr i8, ptr %dp, i32 -186
  %51 = ptrtoint ptr %audio_supported.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %audio_supported.i, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i60 = icmp eq i8 %52, 0
  br i1 %tobool.not.i60, label %dp_display_enable.exit.if.end.i65_crit_edge, label %if.then.i64

dp_display_enable.exit.if.end.i65_crit_edge:      ; preds = %dp_display_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i65

if.then.i64:                                      ; preds = %dp_display_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %link.i, align 4
  %rate1.i = getelementptr inbounds %struct.dp_link, ptr %54, i32 0, i32 7, i32 1
  %55 = ptrtoint ptr %rate1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rate1.i, align 4
  %call.i62 = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %56) #10
  %conv.i63 = zext i8 %call.i62 to i32
  %audio.i = getelementptr i8, ptr %dp, i32 400
  %57 = ptrtoint ptr %audio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %audio.i, align 4
  %bw_code.i = getelementptr inbounds %struct.dp_audio, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %bw_code.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv.i63, ptr %bw_code.i, align 4
  %60 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %link.i, align 4
  %num_lanes.i = getelementptr inbounds %struct.dp_link, ptr %61, i32 0, i32 7, i32 2
  %62 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_lanes.i, align 4
  %64 = load ptr, ptr %audio.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %63, ptr %64, align 4
  br label %if.end.i65

if.end.i65:                                       ; preds = %if.then.i64, %dp_display_enable.exit.if.end.i65_crit_edge
  %plugged_cb.i.i = getelementptr inbounds %struct.msm_dp, ptr %dp, i32 0, i32 10
  %66 = ptrtoint ptr %plugged_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %plugged_cb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i, label %if.end.i65.dp_display_post_enable.exit_crit_edge, label %land.lhs.true.i.i

if.end.i65.dp_display_post_enable.exit_crit_edge: ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_display_post_enable.exit

land.lhs.true.i.i:                                ; preds = %if.end.i65
  %codec_dev.i.i = getelementptr inbounds %struct.msm_dp, ptr %dp, i32 0, i32 1
  %68 = ptrtoint ptr %codec_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %codec_dev.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %69, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.dp_display_post_enable.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.dp_display_post_enable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_display_post_enable.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %70 = ptrtoint ptr %audio_supported.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %audio_supported.i, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool3.not.i.i = icmp eq i8 %71, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true2.i.i.dp_display_post_enable.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.dp_display_post_enable.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_display_post_enable.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %67(ptr noundef nonnull %69, i1 noundef zeroext true) #10
  br label %dp_display_post_enable.exit

dp_display_post_enable.exit:                      ; preds = %if.then.i.i, %land.lhs.true2.i.i.dp_display_post_enable.exit_crit_edge, %land.lhs.true.i.i.dp_display_post_enable.exit_crit_edge, %if.end.i65.dp_display_post_enable.exit_crit_edge
  %call2.i67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #10
  %72 = ptrtoint ptr %event_pndx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %event_pndx.i, align 4
  %add.i = add i32 %73, 1
  %rem.i69 = srem i32 %add.i, 8
  %74 = ptrtoint ptr %event_gndx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %event_gndx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i69, i32 %75)
  %cmp5.i71 = icmp eq i32 %rem.i69, %75
  br i1 %cmp5.i71, label %do.end9.i, label %if.end.i73

do.end9.i:                                        ; preds = %dp_display_post_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %73, i32 noundef %rem.i69) #13
  br label %dp_add_event.exit

if.end.i73:                                       ; preds = %dp_display_post_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i72 = getelementptr %struct.dp_display_private, ptr %add.ptr, i32 0, i32 26, i32 %73
  %rem17.i = and i32 %add.i, 7
  %76 = ptrtoint ptr %event_pndx.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %rem17.i, ptr %event_pndx.i, align 4
  %77 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %arrayidx.i72, align 4
  %data18.i = getelementptr %struct.dp_display_private, ptr %add.ptr, i32 0, i32 26, i32 %73, i32 1
  %78 = ptrtoint ptr %data18.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %data18.i, align 4
  %delay19.i = getelementptr %struct.dp_display_private, ptr %add.ptr, i32 0, i32 26, i32 %73, i32 2
  %79 = ptrtoint ptr %delay19.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %delay19.i, align 4
  %event_q.i = getelementptr i8, ptr %dp, i32 196
  tail call void @__wake_up(ptr noundef %event_q.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit

dp_add_event.exit:                                ; preds = %if.end.i73, %do.end9.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call2.i67) #10
  br label %if.end24

if.end24.critedge:                                ; preds = %dp_del_event.exit
  %link.i74 = getelementptr i8, ptr %dp, i32 -156
  %80 = ptrtoint ptr %link.i74 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %link.i74, align 4
  %sink_count.i75 = getelementptr inbounds %struct.dp_link, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %sink_count.i75 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %sink_count.i75, align 1
  %conv.i76 = zext i8 %83 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.67, i32 noundef %conv.i76) #10
  %power_on.i77 = getelementptr i8, ptr %dp, i32 26
  %84 = ptrtoint ptr %power_on.i77 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %power_on.i77, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i78 = icmp eq i8 %85, 0
  br i1 %tobool.not.i78, label %if.end.i83, label %if.then.i79

if.then.i79:                                      ; preds = %if.end24.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.68) #10
  br label %dp_display_enable.exit85

if.end.i83:                                       ; preds = %if.end24.critedge
  %ctrl.i80 = getelementptr i8, ptr %dp, i32 -148
  %86 = ptrtoint ptr %ctrl.i80 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctrl.i80, align 4
  %call.i81 = tail call i32 @dp_ctrl_on_stream(ptr noundef %87) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool2.not.i82 = icmp eq i32 %call.i81, 0
  br i1 %tobool2.not.i82, label %if.then3.i84, label %if.end.i83.dp_display_enable.exit85_crit_edge

if.end.i83.dp_display_enable.exit85_crit_edge:    ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_display_enable.exit85

if.then3.i84:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %power_on.i77 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %power_on.i77, align 2
  br label %dp_display_enable.exit85

dp_display_enable.exit85:                         ; preds = %if.then3.i84, %if.end.i83.dp_display_enable.exit85_crit_edge, %if.then.i79
  %audio_supported.i86 = getelementptr i8, ptr %dp, i32 -186
  %89 = ptrtoint ptr %audio_supported.i86 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %audio_supported.i86, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i87 = icmp eq i8 %90, 0
  br i1 %tobool.not.i87, label %dp_display_enable.exit85.if.end.i98_crit_edge, label %if.then.i95

dp_display_enable.exit85.if.end.i98_crit_edge:    ; preds = %dp_display_enable.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i98

if.then.i95:                                      ; preds = %dp_display_enable.exit85
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %link.i74 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %link.i74, align 4
  %rate1.i89 = getelementptr inbounds %struct.dp_link, ptr %92, i32 0, i32 7, i32 1
  %93 = ptrtoint ptr %rate1.i89 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rate1.i89, align 4
  %call.i90 = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %94) #10
  %conv.i91 = zext i8 %call.i90 to i32
  %audio.i92 = getelementptr i8, ptr %dp, i32 400
  %95 = ptrtoint ptr %audio.i92 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %audio.i92, align 4
  %bw_code.i93 = getelementptr inbounds %struct.dp_audio, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %bw_code.i93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv.i91, ptr %bw_code.i93, align 4
  %98 = ptrtoint ptr %link.i74 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %link.i74, align 4
  %num_lanes.i94 = getelementptr inbounds %struct.dp_link, ptr %99, i32 0, i32 7, i32 2
  %100 = ptrtoint ptr %num_lanes.i94 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_lanes.i94, align 4
  %102 = load ptr, ptr %audio.i92, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %101, ptr %102, align 4
  br label %if.end.i98

if.end.i98:                                       ; preds = %if.then.i95, %dp_display_enable.exit85.if.end.i98_crit_edge
  %plugged_cb.i.i96 = getelementptr inbounds %struct.msm_dp, ptr %dp, i32 0, i32 10
  %104 = ptrtoint ptr %plugged_cb.i.i96 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %plugged_cb.i.i96, align 4
  %tobool.not.i.i97 = icmp eq ptr %105, null
  br i1 %tobool.not.i.i97, label %if.end.i98.if.end24_crit_edge, label %land.lhs.true.i.i101

if.end.i98.if.end24_crit_edge:                    ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true.i.i101:                             ; preds = %if.end.i98
  %codec_dev.i.i99 = getelementptr inbounds %struct.msm_dp, ptr %dp, i32 0, i32 1
  %106 = ptrtoint ptr %codec_dev.i.i99 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %codec_dev.i.i99, align 4
  %tobool1.not.i.i100 = icmp eq ptr %107, null
  br i1 %tobool1.not.i.i100, label %land.lhs.true.i.i101.if.end24_crit_edge, label %land.lhs.true2.i.i103

land.lhs.true.i.i101.if.end24_crit_edge:          ; preds = %land.lhs.true.i.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true2.i.i103:                            ; preds = %land.lhs.true.i.i101
  %108 = ptrtoint ptr %audio_supported.i86 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %audio_supported.i86, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool3.not.i.i102 = icmp eq i8 %109, 0
  br i1 %tobool3.not.i.i102, label %land.lhs.true2.i.i103.if.end24_crit_edge, label %if.then.i.i104

land.lhs.true2.i.i103.if.end24_crit_edge:         ; preds = %land.lhs.true2.i.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then.i.i104:                                   ; preds = %land.lhs.true2.i.i103
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %105(ptr noundef nonnull %107, i1 noundef zeroext true) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then.i.i104, %land.lhs.true2.i.i103.if.end24_crit_edge, %land.lhs.true.i.i101.if.end24_crit_edge, %if.end.i98.if.end24_crit_edge, %dp_add_event.exit
  %110 = ptrtoint ptr %hpd_state to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 2, ptr %hpd_state, align 4
  tail call void @mutex_unlock(ptr noundef %event_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dp_display_pre_disable(ptr nocapture noundef readonly %dp, ptr nocapture noundef readnone %encoder) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl = getelementptr i8, ptr %dp, i32 -148
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  tail call void @dp_ctrl_push_idle(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_ctrl_push_idle(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dp_display_disable(ptr noundef %dp, ptr nocapture noundef readnone %encoder) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dp, i32 -200
  %event_mutex = getelementptr i8, ptr %dp, i32 104
  tail call void @mutex_lock_nested(ptr noundef %event_mutex, i32 noundef 0) #10
  %event_lock.i = getelementptr i8, ptr %dp, i32 356
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #10
  %event_pndx.i = getelementptr i8, ptr %dp, i32 252
  %0 = ptrtoint ptr %event_pndx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_pndx.i, align 4
  %event_gndx.i = getelementptr i8, ptr %dp, i32 256
  %2 = ptrtoint ptr %event_gndx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event_gndx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp5.i = icmp eq i32 %1, %3
  br i1 %cmp5.i, label %entry.dp_del_event.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.dp_del_event.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_del_event.exit

while.body.i:                                     ; preds = %if.end16.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %gndx.02.i = phi i32 [ %rem.i, %if.end16.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dp_display_private, ptr %add.ptr, i32 0, i32 26, i32 %gndx.02.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp12.i = icmp eq i32 %5, 7
  br i1 %cmp12.i, label %if.then14.i, label %while.body.i.if.end16.i_crit_edge

while.body.i.if.end16.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then14.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx.i, align 4
  %delay.i = getelementptr %struct.dp_display_private, ptr %add.ptr, i32 0, i32 26, i32 %gndx.02.i, i32 2
  %7 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %delay.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %while.body.i.if.end16.i_crit_edge
  %inc.i = add i32 %gndx.02.i, 1
  %rem.i = and i32 %inc.i, 7
  %8 = ptrtoint ptr %event_pndx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event_pndx.i, align 4
  %cmp10.not.i = icmp eq i32 %9, %rem.i
  br i1 %cmp10.not.i, label %if.end16.i.dp_del_event.exit_crit_edge, label %if.end16.i.while.body.i_crit_edge

if.end16.i.while.body.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end16.i.dp_del_event.exit_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_del_event.exit

dp_del_event.exit:                                ; preds = %if.end16.i.dp_del_event.exit_crit_edge, %entry.dp_del_event.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call2.i) #10
  %power_on.i = getelementptr i8, ptr %dp, i32 26
  %10 = ptrtoint ptr %power_on.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %power_on.i, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %dp_del_event.exit.dp_display_disable.exit_crit_edge, label %if.end.i

dp_del_event.exit.dp_display_disable.exit_crit_edge: ; preds = %dp_del_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_display_disable.exit

if.end.i:                                         ; preds = %dp_del_event.exit
  %audio_enabled.i = getelementptr i8, ptr %dp, i32 25
  %12 = ptrtoint ptr %audio_enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %audio_enabled.i, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not.i = icmp eq i8 %13, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then3.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  %plugged_cb.i.i = getelementptr i8, ptr %dp, i32 32
  %14 = ptrtoint ptr %plugged_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %plugged_cb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.then3.i.dp_display_handle_plugged_change.exit.i_crit_edge, label %land.lhs.true.i.i

if.then3.i.dp_display_handle_plugged_change.exit.i_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_display_handle_plugged_change.exit.i

land.lhs.true.i.i:                                ; preds = %if.then3.i
  %codec_dev.i.i = getelementptr i8, ptr %dp, i32 4
  %16 = ptrtoint ptr %codec_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %codec_dev.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.dp_display_handle_plugged_change.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.dp_display_handle_plugged_change.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_display_handle_plugged_change.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %audio_supported.i.i = getelementptr i8, ptr %dp, i32 -186
  %18 = ptrtoint ptr %audio_supported.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %audio_supported.i.i, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool3.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true2.i.i.dp_display_handle_plugged_change.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.dp_display_handle_plugged_change.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_display_handle_plugged_change.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %15(ptr noundef nonnull %17, i1 noundef zeroext false) #10
  br label %dp_display_handle_plugged_change.exit.i

dp_display_handle_plugged_change.exit.i:          ; preds = %if.then.i.i, %land.lhs.true2.i.i.dp_display_handle_plugged_change.exit.i_crit_edge, %land.lhs.true.i.i.dp_display_handle_plugged_change.exit.i_crit_edge, %if.then3.i.dp_display_handle_plugged_change.exit.i_crit_edge
  %audio_comp.i = getelementptr i8, ptr %dp, i32 48
  %call.i = tail call i32 @wait_for_completion_timeout(ptr noundef %audio_comp.i, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %dp_display_handle_plugged_change.exit.i.if.end7.i_crit_edge

dp_display_handle_plugged_change.exit.i.if.end7.i_crit_edge: ; preds = %dp_display_handle_plugged_change.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then5.i:                                       ; preds = %dp_display_handle_plugged_change.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.69) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %dp_display_handle_plugged_change.exit.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %20 = ptrtoint ptr %audio_enabled.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %audio_enabled.i, align 1
  %link.i = getelementptr i8, ptr %dp, i32 -156
  %21 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link.i, align 4
  %sink_count.i = getelementptr inbounds %struct.dp_link, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %sink_count.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sink_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp.i = icmp eq i8 %24, 0
  %ctrl.i = getelementptr i8, ptr %dp, i32 -148
  %25 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl.i, align 4
  br i1 %cmp.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i = tail call i32 @dp_ctrl_off_link_stream(ptr noundef %26) #10
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = tail call i32 @dp_ctrl_off(ptr noundef %26) #10
  %core_initialized.i = getelementptr i8, ptr %dp, i32 -188
  %27 = ptrtoint ptr %core_initialized.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %core_initialized.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %if.then10.i
  %28 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %power_on.i, align 2
  %29 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %link.i, align 4
  %sink_count17.i = getelementptr inbounds %struct.dp_link, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %sink_count17.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sink_count17.i, align 1
  %conv18.i = zext i8 %32 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.70, i32 noundef %conv18.i) #10
  br label %dp_display_disable.exit

dp_display_disable.exit:                          ; preds = %if.end14.i, %dp_del_event.exit.dp_display_disable.exit_crit_edge
  %hpd_state = getelementptr i8, ptr %dp, i32 248
  %33 = ptrtoint ptr %hpd_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hpd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp = icmp eq i32 %34, 3
  %storemerge = select i1 %cmp, i32 0, i32 4
  %35 = ptrtoint ptr %hpd_state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge, ptr %hpd_state, align 4
  tail call void @mutex_unlock(ptr noundef %event_mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dp_display_mode_set(ptr noundef %dp, ptr nocapture noundef readnone %encoder, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_mode = getelementptr i8, ptr %dp, i32 -128
  %0 = call ptr @memset(ptr %dp_mode, i32 0, i32 128)
  %panel.i = getelementptr i8, ptr %dp, i32 -152
  %1 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %panel.i, align 4
  %video_test.i = getelementptr inbounds %struct.dp_panel, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %video_test.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %video_test.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not = icmp eq i8 %4, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %dp, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %link.i = getelementptr i8, ptr %dp, i32 -156
  %5 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link.i, align 4
  %test_bit_depth.i = getelementptr inbounds %struct.dp_link, ptr %6, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %test_bit_depth.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %test_bit_depth.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %8, label %sw.default.i.i [
    i32 0, label %if.end.i.if.end_crit_edge
    i32 32, label %sw.bb1.i.i
    i32 64, label %sw.bb2.i.i
  ]

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb2.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.default.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %connector = getelementptr inbounds %struct.msm_dp, ptr %dp, i32 0, i32 3
  %10 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %connector, align 4
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %11, i32 0, i32 20, i32 2
  %12 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bpc, align 8
  %mul = mul i32 %13, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end.i.if.end_crit_edge, %if.then.i
  %mul.sink = phi i32 [ %mul, %if.else ], [ 0, %if.then.i ], [ 0, %sw.default.i.i ], [ 30, %sw.bb2.i.i ], [ 24, %sw.bb1.i.i ], [ 18, %if.end.i.if.end_crit_edge ]
  %bpp4 = getelementptr i8, ptr %dp, i32 -12
  %14 = ptrtoint ptr %bpp4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul.sink, ptr %bpp4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.sink)
  %tobool.not = icmp eq i32 %mul.sink, 0
  br i1 %tobool.not, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bpp6 = getelementptr i8, ptr %dp, i32 -12
  %15 = ptrtoint ptr %bpp6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 24, ptr %bpp6, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  tail call void @drm_mode_copy(ptr noundef %dp_mode, ptr noundef %adjusted_mode) #10
  %flags = getelementptr i8, ptr %dp, i32 -104
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = lshr i32 %17, 3
  %and.lobit = and i32 %and, 1
  %v_active_low = getelementptr i8, ptr %dp, i32 -4
  %18 = ptrtoint ptr %v_active_low to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.lobit, ptr %v_active_low, align 4
  %and20 = lshr i32 %17, 1
  %and20.lobit = and i32 %and20, 1
  %h_active_low = getelementptr i8, ptr %dp, i32 -8
  %19 = ptrtoint ptr %h_active_low to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and20.lobit, ptr %h_active_low, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_hpd_get_intr_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_ctrl_isr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_aux_isr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_display_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %panel_in.i = alloca %struct.dp_panel_in, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pdev, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 604, i32 noundef 3520) #10
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 2
  %call.i46 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %call1.i = tail call ptr @platform_get_resource(ptr noundef nonnull %pdev, i32 noundef 512, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end5.cleanup_crit_edge, label %for.cond.preheader.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end5
  %num_descs.i = getelementptr inbounds %struct.msm_dp_config, ptr %call.i46, i32 0, i32 1
  %2 = ptrtoint ptr %num_descs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_descs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.not.i = icmp eq i32 %3, 0
  br i1 %cmp20.not.i, label %for.cond.preheader.i.do.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.do.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %4 = ptrtoint ptr %call.i46 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i46, align 4
  %6 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.msm_dp_desc, ptr %5, i32 %i.021.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp2.i = icmp eq i32 %9, %7
  br i1 %cmp2.i, label %dp_display_get_desc.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %for.cond.preheader.i.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #13
  br label %cleanup

dp_display_get_desc.exit:                         ; preds = %for.body.i
  %10 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.021.i, ptr %id, align 4
  %11 = ptrtoint ptr %call.i46 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i46, align 4
  %arrayidx5.i = getelementptr %struct.msm_dp_desc, ptr %12, i32 %i.021.i
  %tobool7.not = icmp eq ptr %arrayidx5.i, null
  br i1 %tobool7.not, label %dp_display_get_desc.exit.cleanup_crit_edge, label %if.end9

dp_display_get_desc.exit.cleanup_crit_edge:       ; preds = %dp_display_get_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %dp_display_get_desc.exit
  %pdev10 = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %pdev10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pdev, ptr %pdev10, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.20, ptr %call.i, align 4
  %connector_type = getelementptr %struct.msm_dp_desc, ptr %12, i32 %i.021.i, i32 1
  %15 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %connector_type, align 4
  %connector_type11 = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 19, i32 9
  %17 = ptrtoint ptr %connector_type11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %connector_type11, align 4
  %usbpd_cb.i = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %panel_in.i) #10
  %18 = getelementptr inbounds %struct.dp_panel_in, ptr %panel_in.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.dp_panel_in, ptr %panel_in.i, i32 0, i32 2
  %20 = getelementptr inbounds %struct.dp_panel_in, ptr %panel_in.i, i32 0, i32 3
  %21 = ptrtoint ptr %panel_in.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %panel_in.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %18, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %19, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %20, align 4
  %25 = ptrtoint ptr %usbpd_cb.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dp_display_usbpd_configure_cb, ptr %usbpd_cb.i, align 4
  %disconnect.i = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 17, i32 1
  %26 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @dp_display_usbpd_disconnect_cb, ptr %disconnect.i, align 4
  %attention.i = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 17, i32 2
  %27 = ptrtoint ptr %attention.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dp_display_usbpd_attention_cb, ptr %attention.i, align 4
  %call.i47 = tail call ptr @dp_hpd_get(ptr noundef %dev, ptr noundef %usbpd_cb.i) #10
  %usbpd.i = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 8
  %28 = ptrtoint ptr %usbpd.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i47, ptr %usbpd.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %call.i47 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %29) #10
  %30 = ptrtoint ptr %usbpd.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %usbpd.i, align 4
  br label %dp_init_sub_modules.exit

if.end.i:                                         ; preds = %if.end9
  %31 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev10, align 4
  %call9.i = tail call ptr @dp_parser_get(ptr noundef %32) #10
  %parser.i = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 9
  %33 = ptrtoint ptr %parser.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i, ptr %parser.i, align 4
  %cmp.i176.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176.i, label %if.then12.i, label %if.end16.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %call9.i to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28, i32 noundef %34) #10
  %35 = ptrtoint ptr %parser.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %parser.i, align 4
  br label %dp_init_sub_modules.exit

if.end16.i:                                       ; preds = %if.end.i
  %io.i = getelementptr inbounds %struct.dp_parser, ptr %call9.i, i32 0, i32 3
  %call18.i = tail call ptr @dp_catalog_get(ptr noundef %dev, ptr noundef %io.i) #10
  %catalog19.i = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 11
  %36 = ptrtoint ptr %catalog19.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call18.i, ptr %catalog19.i, align 4
  %cmp.i177.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177.i, label %if.then22.i, label %if.end26.i

if.then22.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %call18.i to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29, i32 noundef %37) #10
  %38 = ptrtoint ptr %catalog19.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %catalog19.i, align 4
  br label %dp_init_sub_modules.exit

if.end26.i:                                       ; preds = %if.end16.i
  %39 = ptrtoint ptr %parser.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parser.i, align 4
  %call28.i = tail call ptr @dp_power_get(ptr noundef %dev, ptr noundef %40) #10
  %power.i = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 10
  %41 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call28.i, ptr %power.i, align 4
  %cmp.i178.i = icmp ugt ptr %call28.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178.i, label %if.then31.i, label %if.end35.i

if.then31.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %call28.i to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %42) #10
  %43 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %power.i, align 4
  br label %dp_init_sub_modules.exit

if.end35.i:                                       ; preds = %if.end26.i
  %44 = ptrtoint ptr %catalog19.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %catalog19.i, align 4
  %call37.i = tail call ptr @dp_aux_get(ptr noundef %dev, ptr noundef %45) #10
  %aux38.i = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 12
  %46 = ptrtoint ptr %aux38.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call37.i, ptr %aux38.i, align 4
  %cmp.i179.i = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179.i, label %if.then41.i, label %if.end45.i

if.then41.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %call37.i to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %47) #10
  %48 = ptrtoint ptr %aux38.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %aux38.i, align 4
  br label %dp_init_sub_modules.exit

if.end45.i:                                       ; preds = %if.end35.i
  %call47.i = tail call ptr @dp_link_get(ptr noundef %dev, ptr noundef %call37.i) #10
  %link48.i = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 13
  %49 = ptrtoint ptr %link48.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call47.i, ptr %link48.i, align 4
  %cmp.i180.i = icmp ugt ptr %call47.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180.i, label %if.then51.i, label %if.end55.i

if.then51.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %call47.i to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32, i32 noundef %50) #10
  %51 = ptrtoint ptr %link48.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %link48.i, align 4
  br label %error_link.i

if.end55.i:                                       ; preds = %if.end45.i
  %52 = ptrtoint ptr %aux38.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %aux38.i, align 4
  %54 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %18, align 4
  %55 = ptrtoint ptr %catalog19.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %catalog19.i, align 4
  %57 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %20, align 4
  %58 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call47.i, ptr %19, align 4
  %call62.i = call ptr @dp_panel_get(ptr noundef nonnull %panel_in.i) #10
  %panel.i = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 14
  %59 = ptrtoint ptr %panel.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call62.i, ptr %panel.i, align 4
  %cmp.i181.i = icmp ugt ptr %call62.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181.i, label %if.then65.i, label %if.end69.i

if.then65.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %call62.i to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33, i32 noundef %60) #10
  %61 = ptrtoint ptr %panel.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %panel.i, align 4
  br label %error_link.i

if.end69.i:                                       ; preds = %if.end55.i
  %62 = ptrtoint ptr %link48.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %link48.i, align 4
  %64 = ptrtoint ptr %aux38.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %aux38.i, align 4
  %66 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %power.i, align 4
  %68 = ptrtoint ptr %catalog19.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %catalog19.i, align 4
  %70 = ptrtoint ptr %parser.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %parser.i, align 4
  %call76.i = call ptr @dp_ctrl_get(ptr noundef %dev, ptr noundef %63, ptr noundef %call62.i, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #10
  %ctrl.i = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 15
  %72 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call76.i, ptr %ctrl.i, align 4
  %cmp.i182.i = icmp ugt ptr %call76.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182.i, label %if.then79.i, label %if.end83.i

if.then79.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %call76.i to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %73) #10
  br label %error_ctrl.i

if.end83.i:                                       ; preds = %if.end69.i
  %74 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev10, align 4
  %76 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %panel.i, align 4
  %78 = ptrtoint ptr %catalog19.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %catalog19.i, align 4
  %call87.i = call ptr @dp_audio_get(ptr noundef %75, ptr noundef %77, ptr noundef %79) #10
  %audio.i = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 28
  %80 = ptrtoint ptr %audio.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call87.i, ptr %audio.i, align 4
  %cmp.i183.i = icmp ugt ptr %call87.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183.i, label %if.then90.i, label %dp_init_sub_modules.exit.thread

dp_init_sub_modules.exit.thread:                  ; preds = %if.end83.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %panel_in.i) #10
  %dp_display = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 19
  %event_mutex = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 21
  call void @__mutex_init(ptr noundef %event_mutex, ptr noundef nonnull @.str.22, ptr noundef nonnull @dp_display_probe.__key) #10
  %81 = ptrtoint ptr %audio.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %audio.i, align 4
  %dp_audio = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 19, i32 13
  %83 = ptrtoint ptr %dp_audio to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %dp_audio, align 4
  %audio_comp = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 20
  %84 = ptrtoint ptr %audio_comp to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %audio_comp, align 4
  %wait.i = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 20, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @init_completion.__key) #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %85 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %dp_display, ptr %driver_data.i.i, align 4
  %call19 = call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @dp_display_comp_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %dp_init_sub_modules.exit.thread.cleanup_crit_edge, label %if.then21

dp_init_sub_modules.exit.thread.cleanup_crit_edge: ; preds = %dp_init_sub_modules.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then90.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %call87.i to i32
  %call93.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %86) #13
  br label %error_ctrl.i

error_ctrl.i:                                     ; preds = %if.then90.i, %if.then79.i
  %audio.sink.i = phi ptr [ %audio.i, %if.then90.i ], [ %ctrl.i, %if.then79.i ]
  %87 = ptrtoint ptr %audio.sink.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %audio.sink.i, align 4
  %88 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %panel.i, align 4
  call void @dp_panel_put(ptr noundef %89) #10
  br label %error_link.i

error_link.i:                                     ; preds = %error_ctrl.i, %if.then65.i, %if.then51.i
  %90 = ptrtoint ptr %aux38.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %aux38.i, align 4
  call void @dp_aux_put(ptr noundef %91) #10
  br label %dp_init_sub_modules.exit

dp_init_sub_modules.exit:                         ; preds = %error_link.i, %if.then41.i, %if.then31.i, %if.then22.i, %if.then12.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %panel_in.i) #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.then21:                                        ; preds = %dp_init_sub_modules.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %call19) #10
  %debug.i = getelementptr inbounds %struct.dp_display_private, ptr %call.i, i32 0, i32 16
  %92 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %debug.i, align 4
  call void @dp_debug_put(ptr noundef %93) #10
  %94 = ptrtoint ptr %audio.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %audio.i, align 4
  call void @dp_audio_put(ptr noundef %95) #10
  %96 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %panel.i, align 4
  call void @dp_panel_put(ptr noundef %97) #10
  %98 = ptrtoint ptr %aux38.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %aux38.i, align 4
  call void @dp_aux_put(ptr noundef %99) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %dp_init_sub_modules.exit, %dp_init_sub_modules.exit.thread.cleanup_crit_edge, %dp_display_get_desc.exit.cleanup_crit_edge, %do.end.i, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -517, %dp_init_sub_modules.exit ], [ -19, %if.then ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %dp_display_get_desc.exit.cleanup_crit_edge ], [ %call19, %if.then21 ], [ 0, %dp_init_sub_modules.exit.thread.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_display_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debug.i = getelementptr i8, ptr %1, i32 -144
  %2 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug.i, align 4
  tail call void @dp_debug_put(ptr noundef %3) #10
  %audio.i = getelementptr i8, ptr %1, i32 400
  %4 = ptrtoint ptr %audio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %audio.i, align 4
  tail call void @dp_audio_put(ptr noundef %5) #10
  %panel.i = getelementptr i8, ptr %1, i32 -152
  %6 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel.i, align 4
  tail call void @dp_panel_put(ptr noundef %7) #10
  %aux.i = getelementptr i8, ptr %1, i32 -160
  %8 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aux.i, align 4
  tail call void @dp_aux_put(ptr noundef %9) #10
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @dp_display_comp_ops) #10
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_display_usbpd_configure_cb(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core_initialized.i = getelementptr i8, ptr %1, i32 -188
  %2 = ptrtoint ptr %core_initialized.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %core_initialized.i, align 4, !range !162
  %4 = zext i8 %3 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.65, i32 noundef %4) #10
  %5 = ptrtoint ptr %core_initialized.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %core_initialized.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not.i = icmp eq i8 %6, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.66) #10
  br label %dp_display_host_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %usbpd.i = getelementptr i8, ptr %1, i32 -176
  %7 = ptrtoint ptr %usbpd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usbpd.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i = icmp eq i32 %10, 2
  %power.i = getelementptr i8, ptr %1, i32 -168
  %11 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %power.i, align 4
  %call.i = tail call i32 @dp_power_init(ptr noundef %12, i1 noundef zeroext %cmp.i) #10
  %ctrl.i = getelementptr i8, ptr %1, i32 -148
  %13 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl.i, align 4
  %call9.i = tail call i32 @dp_ctrl_host_init(ptr noundef %14, i1 noundef zeroext %cmp.i, i1 noundef zeroext false) #10
  %aux.i = getelementptr i8, ptr %1, i32 -160
  %15 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aux.i, align 4
  tail call void @dp_aux_init(ptr noundef %16) #10
  %17 = ptrtoint ptr %core_initialized.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %core_initialized.i, align 4
  br label %dp_display_host_init.exit

dp_display_host_init.exit:                        ; preds = %if.end.i, %if.then.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -200
  %call1 = tail call fastcc i32 @dp_display_process_hpd_high(ptr noundef %add.ptr.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_display_usbpd_disconnect_cb(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %event_lock.i = getelementptr i8, ptr %1, i32 356
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #10
  %event_pndx.i = getelementptr i8, ptr %1, i32 252
  %2 = ptrtoint ptr %event_pndx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event_pndx.i, align 4
  %add.i = add i32 %3, 1
  %rem.i = srem i32 %add.i, 8
  %event_gndx.i = getelementptr i8, ptr %1, i32 256
  %4 = ptrtoint ptr %event_gndx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event_gndx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %5)
  %cmp5.i = icmp eq i32 %rem.i, %5
  br i1 %cmp5.i, label %do.end9.i, label %if.end.i

do.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %3, i32 noundef %rem.i) #13
  br label %dp_add_event.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %1, i32 -200
  %arrayidx.i = getelementptr %struct.dp_display_private, ptr %add.ptr.i, i32 0, i32 26, i32 %3
  %rem17.i = and i32 %add.i, 7
  %6 = ptrtoint ptr %event_pndx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rem17.i, ptr %event_pndx.i, align 4
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %arrayidx.i, align 4
  %data18.i = getelementptr %struct.dp_display_private, ptr %add.ptr.i, i32 0, i32 26, i32 %3, i32 1
  %8 = ptrtoint ptr %data18.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %data18.i, align 4
  %delay19.i = getelementptr %struct.dp_display_private, ptr %add.ptr.i, i32 0, i32 26, i32 %3, i32 2
  %9 = ptrtoint ptr %delay19.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %delay19.i, align 4
  %event_q.i = getelementptr i8, ptr %1, i32 196
  tail call void @__wake_up(ptr noundef %event_q.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit

dp_add_event.exit:                                ; preds = %if.end.i, %do.end9.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call2.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_display_usbpd_attention_cb(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -200
  %link = getelementptr i8, ptr %1, i32 -156
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %call1 = tail call i32 @dp_link_process_request(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %hpd_state = getelementptr i8, ptr %1, i32 248
  %8 = ptrtoint ptr %hpd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hpd_state, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.38, i32 noundef %9, i32 noundef %7) #10
  %and = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %panel.i.i = getelementptr i8, ptr %1, i32 -152
  %10 = ptrtoint ptr %panel.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %panel.i.i, align 4
  %arrayidx.i.i = getelementptr [16 x i8], ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %13 to i32
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link, align 4
  %sink_count.i.i = getelementptr inbounds %struct.dp_link, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %sink_count.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sink_count.i.i, align 1
  %conv1.i.i = zext i8 %17 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.40, i32 noundef %conv.i.i, i32 noundef %conv1.i.i) #10
  %18 = ptrtoint ptr %panel.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %panel.i.i, align 4
  %arrayidx.i.i.i = getelementptr [16 x i8], ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i.i, align 1
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.i.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.i.not.i.i, label %if.then5.if.else.i_crit_edge, label %dp_display_is_sink_count_zero.exit.i

if.then5.if.else.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

dp_display_is_sink_count_zero.exit.i:             ; preds = %if.then5
  %23 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link, align 4
  %sink_count5.i.i = getelementptr inbounds %struct.dp_link, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %sink_count5.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sink_count5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.i.i = icmp eq i8 %26, 0
  br i1 %cmp.i.i, label %if.then.i, label %dp_display_is_sink_count_zero.exit.i.if.else.i_crit_edge

dp_display_is_sink_count_zero.exit.i.if.else.i_crit_edge: ; preds = %dp_display_is_sink_count_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %dp_display_is_sink_count_zero.exit.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.39) #10
  %27 = ptrtoint ptr %hpd_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hpd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i = icmp eq i32 %28, 0
  br i1 %cmp.not.i, label %if.then.i.if.end8_crit_edge, label %if.then1.i

if.then.i.if.end8_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then1.i:                                       ; preds = %if.then.i
  %29 = ptrtoint ptr %hpd_state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %hpd_state, align 4
  %event_lock.i.i = getelementptr i8, ptr %1, i32 356
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i.i) #10
  %event_pndx.i.i = getelementptr i8, ptr %1, i32 252
  %30 = ptrtoint ptr %event_pndx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %event_pndx.i.i, align 4
  %add.i.i = add i32 %31, 1
  %rem.i.i = srem i32 %add.i.i, 8
  %event_gndx.i.i = getelementptr i8, ptr %1, i32 256
  %32 = ptrtoint ptr %event_gndx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %event_gndx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i, i32 %33)
  %cmp5.i.i = icmp eq i32 %rem.i.i, %33
  br i1 %cmp5.i.i, label %do.end9.i.i, label %if.end.i.i

do.end9.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %31, i32 noundef %rem.i.i) #13
  br label %dp_add_event.exit.i

if.end.i.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i22.i = getelementptr %struct.dp_display_private, ptr %add.ptr.i, i32 0, i32 26, i32 %31
  %rem17.i.i = and i32 %add.i.i, 7
  %34 = ptrtoint ptr %event_pndx.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %rem17.i.i, ptr %event_pndx.i.i, align 4
  %35 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %arrayidx.i22.i, align 4
  %data18.i.i = getelementptr %struct.dp_display_private, ptr %add.ptr.i, i32 0, i32 26, i32 %31, i32 1
  %36 = ptrtoint ptr %data18.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %data18.i.i, align 4
  %delay19.i.i = getelementptr %struct.dp_display_private, ptr %add.ptr.i, i32 0, i32 26, i32 %31, i32 2
  %37 = ptrtoint ptr %delay19.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %delay19.i.i, align 4
  %event_q.i.i = getelementptr i8, ptr %1, i32 196
  tail call void @__wake_up(ptr noundef %event_q.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit.i

dp_add_event.exit.i:                              ; preds = %if.end.i.i, %do.end9.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i.i, i32 noundef %call2.i.i) #10
  br label %if.end8

if.else.i:                                        ; preds = %dp_display_is_sink_count_zero.exit.i.if.else.i_crit_edge, %if.then5.if.else.i_crit_edge
  %38 = ptrtoint ptr %hpd_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hpd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp5.i = icmp eq i32 %39, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i.if.end8_crit_edge

if.else.i.if.end8_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6.i:                                       ; preds = %if.else.i
  %40 = ptrtoint ptr %hpd_state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %hpd_state, align 4
  %call8.i = tail call fastcc i32 @dp_display_process_hpd_high(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.then6.i.if.end8_crit_edge, label %if.then9.i

if.then6.i.if.end8_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %hpd_state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %hpd_state, align 4
  br label %if.end8

if.else:                                          ; preds = %if.then
  %42 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %link, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.41, i32 noundef %45) #10
  %46 = ptrtoint ptr %hpd_state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hpd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i = icmp ne i32 %47, 0
  %and.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i16 = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %tobool.not.i16, %cmp.i
  br i1 %or.cond.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.42, i32 noundef %45) #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43) #10
  br label %if.end8

if.end3.i:                                        ; preds = %if.else
  %ctrl.i = getelementptr i8, ptr %1, i32 -148
  %48 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctrl.i, align 4
  tail call void @dp_ctrl_handle_sink_request(ptr noundef %49) #10
  %and4.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.if.end8_crit_edge, label %if.then6.i17

if.end3.i.if.end8_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6.i17:                                     ; preds = %if.end3.i
  %50 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %link, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %and.i.i = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then6.i17.if.end8_crit_edge, label %if.then.i.i

if.then6.i17.if.end8_crit_edge:                   ; preds = %if.then6.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then.i.i:                                      ; preds = %if.then6.i17
  call void @__sanitizer_cov_trace_pc() #12
  %panel.i.i18 = getelementptr i8, ptr %1, i32 -152
  %54 = ptrtoint ptr %panel.i.i18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %panel.i.i18, align 4
  %video_test.i.i = getelementptr inbounds %struct.dp_panel, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %video_test.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %video_test.i.i, align 4
  %57 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %link, align 4
  %call.i.i = tail call zeroext i1 @dp_link_send_test_response(ptr noundef %58) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then.i.i, %if.then6.i17.if.end8_crit_edge, %if.end3.i.if.end8_crit_edge, %if.then2.i, %if.then9.i, %if.then6.i.if.end8_crit_edge, %if.else.i.if.end8_crit_edge, %dp_add_event.exit.i, %if.then.i.if.end8_crit_edge, %entry.if.end8_crit_edge
  %rc.0 = phi i32 [ %call1, %entry.if.end8_crit_edge ], [ 0, %dp_add_event.exit.i ], [ 0, %if.then.i.if.end8_crit_edge ], [ %call8.i, %if.then9.i ], [ 0, %if.then6.i.if.end8_crit_edge ], [ 0, %if.else.i.if.end8_crit_edge ], [ -22, %if.then2.i ], [ 0, %if.end3.i.if.end8_crit_edge ], [ 0, %if.then6.i17.if.end8_crit_edge ], [ 0, %if.then.i.i ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_hpd_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_parser_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_catalog_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_power_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_aux_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_link_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_panel_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_ctrl_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_audio_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_panel_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_aux_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp_display_process_hpd_high(ptr noundef %dp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parser = getelementptr inbounds %struct.dp_display_private, ptr %dp, i32 0, i32 9
  %0 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parser, align 4
  %max_dp_lanes = getelementptr inbounds %struct.dp_parser, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %max_dp_lanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_dp_lanes, align 4
  %panel = getelementptr inbounds %struct.dp_display_private, ptr %dp, i32 0, i32 14
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  %max_dp_lanes1 = getelementptr inbounds %struct.dp_panel, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %max_dp_lanes1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %max_dp_lanes1, align 4
  %7 = load ptr, ptr %panel, align 4
  %connector = getelementptr inbounds %struct.dp_display_private, ptr %dp, i32 0, i32 19, i32 3
  %8 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connector, align 4
  %call = tail call i32 @dp_panel_read_sink_caps(ptr noundef %7, ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

if.end:                                           ; preds = %entry
  %link = getelementptr inbounds %struct.dp_display_private, ptr %dp, i32 0, i32 13
  %10 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link, align 4
  %call3 = tail call i32 @dp_link_process_request(ptr noundef %11) #10
  %12 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %panel, align 4
  %edid5 = getelementptr inbounds %struct.dp_panel, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %edid5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %edid5, align 4
  %call6 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef %15) #10
  %audio_supported = getelementptr inbounds %struct.dp_display_private, ptr %dp, i32 0, i32 5
  %frombool = zext i1 %call6 to i8
  %16 = ptrtoint ptr %audio_supported to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %audio_supported, align 2
  %17 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %panel, align 4
  tail call void @dp_panel_handle_sink_request(ptr noundef %18) #10
  %max_pclk_khz = getelementptr inbounds %struct.dp_display_private, ptr %dp, i32 0, i32 19, i32 11
  %19 = ptrtoint ptr %max_pclk_khz to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 675000, ptr %max_pclk_khz, align 4
  %20 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parser, align 4
  %max_dp_lanes10 = getelementptr inbounds %struct.dp_parser, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %max_dp_lanes10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_dp_lanes10, align 4
  %max_dp_lanes12 = getelementptr inbounds %struct.dp_display_private, ptr %dp, i32 0, i32 19, i32 12
  %24 = ptrtoint ptr %max_dp_lanes12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %max_dp_lanes12, align 4
  %25 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %link, align 4
  %27 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %panel, align 4
  %link_info = getelementptr inbounds %struct.dp_panel, ptr %28, i32 0, i32 4
  %call15 = tail call i32 @dp_link_psm_config(ptr noundef %26, ptr noundef %link_info, i1 noundef zeroext false) #10
  %29 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %link, align 4
  tail call void @dp_link_reset_phy_params_vx_px(ptr noundef %30) #10
  %ctrl = getelementptr inbounds %struct.dp_display_private, ptr %dp, i32 0, i32 15
  %31 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctrl, align 4
  %call17 = tail call i32 @dp_ctrl_on_link(ptr noundef %32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37) #10
  br label %end

if.end20:                                         ; preds = %if.end
  %event_lock.i = getelementptr inbounds %struct.dp_display_private, ptr %dp, i32 0, i32 27
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #10
  %event_pndx.i = getelementptr inbounds %struct.dp_display_private, ptr %dp, i32 0, i32 24
  %33 = ptrtoint ptr %event_pndx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %event_pndx.i, align 4
  %add.i = add i32 %34, 1
  %rem.i = srem i32 %add.i, 8
  %event_gndx.i = getelementptr inbounds %struct.dp_display_private, ptr %dp, i32 0, i32 25
  %35 = ptrtoint ptr %event_gndx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %event_gndx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %36)
  %cmp5.i = icmp eq i32 %rem.i, %36
  br i1 %cmp5.i, label %do.end9.i, label %if.end.i

do.end9.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %34, i32 noundef %rem.i) #13
  br label %dp_add_event.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.dp_display_private, ptr %dp, i32 0, i32 26, i32 %34
  %rem17.i = and i32 %add.i, 7
  %37 = ptrtoint ptr %event_pndx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %rem17.i, ptr %event_pndx.i, align 4
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 5, ptr %arrayidx.i, align 4
  %data18.i = getelementptr %struct.dp_display_private, ptr %dp, i32 0, i32 26, i32 %34, i32 1
  %39 = ptrtoint ptr %data18.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %data18.i, align 4
  %delay19.i = getelementptr %struct.dp_display_private, ptr %dp, i32 0, i32 26, i32 %34, i32 2
  %40 = ptrtoint ptr %delay19.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %delay19.i, align 4
  %event_q.i = getelementptr inbounds %struct.dp_display_private, ptr %dp, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %event_q.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit

dp_add_event.exit:                                ; preds = %if.end.i, %do.end9.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call2.i) #10
  br label %end

end:                                              ; preds = %dp_add_event.exit, %if.then19, %entry.end_crit_edge
  %rc.0 = phi i32 [ %call, %entry.end_crit_edge ], [ %call17, %if.then19 ], [ 0, %dp_add_event.exit ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_panel_read_sink_caps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_link_process_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_monitor_audio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_panel_handle_sink_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_link_psm_config(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_link_reset_phy_params_vx_px(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_ctrl_on_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_ctrl_handle_sink_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_link_send_test_response(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_display_bind(ptr noundef %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %1, align 4
  %id = getelementptr i8, ptr %1, i32 -192
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 6, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %arrayidx, align 4
  %parser = getelementptr i8, ptr %1, i32 -172
  %10 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parser, align 4
  %parse = getelementptr inbounds %struct.dp_parser, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %parse to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parse, align 4
  %connector_type = getelementptr i8, ptr %1, i32 28
  %14 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %connector_type, align 4
  %call7 = tail call i32 %13(ptr noundef %11, i32 noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.end.sink.split_crit_edge

entry.end.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %end.sink.split

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parser, align 4
  %panel_bridge = getelementptr inbounds %struct.dp_parser, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %panel_bridge, align 4
  %panel_bridge10 = getelementptr i8, ptr %1, i32 20
  %20 = ptrtoint ptr %panel_bridge10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %panel_bridge10, align 4
  %aux = getelementptr i8, ptr %1, i32 -160
  %21 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aux, align 4
  %drm_dev11 = getelementptr inbounds %struct.drm_dp_aux, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %drm_dev11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %5, ptr %drm_dev11, align 4
  %24 = load ptr, ptr %aux, align 4
  %call13 = tail call i32 @dp_aux_register(ptr noundef %24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end.end.sink.split_crit_edge

if.end.end.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %end.sink.split

if.end16:                                         ; preds = %if.end
  %power = getelementptr i8, ptr %1, i32 -168
  %25 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %power, align 4
  %call17 = tail call i32 @dp_power_client_init(ptr noundef %26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.end.sink.split_crit_edge

if.end16.end.sink.split_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %end.sink.split

if.end20:                                         ; preds = %if.end16
  %audio = getelementptr i8, ptr %1, i32 400
  %27 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %audio, align 4
  %call21 = tail call i32 @dp_register_audio_driver(ptr noundef %dev, ptr noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.end_crit_edge, label %if.end20.end.sink.split_crit_edge

if.end20.end.sink.split_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %end.sink.split

if.end20.end_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

end.sink.split:                                   ; preds = %if.end20.end.sink.split_crit_edge, %if.end16.end.sink.split_crit_edge, %if.end.end.sink.split_crit_edge, %entry.end.sink.split_crit_edge
  %.str.48.sink = phi ptr [ @.str.45, %entry.end.sink.split_crit_edge ], [ @.str.46, %if.end.end.sink.split_crit_edge ], [ @.str.47, %if.end16.end.sink.split_crit_edge ], [ @.str.48, %if.end20.end.sink.split_crit_edge ]
  %rc.0.ph = phi i32 [ %call7, %entry.end.sink.split_crit_edge ], [ %call13, %if.end.end.sink.split_crit_edge ], [ %call17, %if.end16.end.sink.split_crit_edge ], [ %call21, %if.end20.end.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.48.sink) #10
  br label %end

end:                                              ; preds = %end.sink.split, %if.end20.end_crit_edge
  %rc.0 = phi i32 [ 0, %if.end20.end_crit_edge ], [ %rc.0.ph, %end.sink.split ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp_display_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %power = getelementptr i8, ptr %1, i32 -168
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power, align 4
  tail call void @dp_power_client_deinit(ptr noundef %5) #10
  %aux = getelementptr i8, ptr %1, i32 -160
  %6 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aux, align 4
  tail call void @dp_aux_unregister(ptr noundef %7) #10
  %id = getelementptr i8, ptr %1, i32 -192
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 6, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_aux_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_power_client_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_register_audio_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_power_client_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_aux_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_debug_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_audio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dp_pm_prepare(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dp_pm_complete(ptr nocapture noundef %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %event_mutex = getelementptr i8, ptr %1, i32 104
  tail call void @mutex_lock_nested(ptr noundef %event_mutex, i32 noundef 0) #10
  %core_initialized = getelementptr i8, ptr %1, i32 -188
  %2 = ptrtoint ptr %core_initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %core_initialized, align 4, !range !162
  %4 = zext i8 %3 to i32
  %power_on = getelementptr inbounds %struct.msm_dp, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %power_on, align 2, !range !162
  %7 = zext i8 %6 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.50, i32 noundef %4, i32 noundef %7) #10
  %8 = ptrtoint ptr %core_initialized to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %core_initialized, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then:                                          ; preds = %entry
  %power = getelementptr i8, ptr %1, i32 -168
  %10 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %power, align 4
  %call10 = tail call i32 @dp_power_clk_status(ptr noundef %11, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then.if.end_crit_edge, label %if.then12

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl = getelementptr i8, ptr %1, i32 -148
  %12 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl, align 4
  %call13 = tail call i32 @dp_ctrl_off_link_stream(ptr noundef %13) #10
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  %14 = ptrtoint ptr %core_initialized to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %core_initialized, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.52) #10
  br label %if.end14

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl.i = getelementptr i8, ptr %1, i32 -148
  %16 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl.i, align 4
  tail call void @dp_ctrl_host_deinit(ptr noundef %17) #10
  %aux.i = getelementptr i8, ptr %1, i32 -160
  %18 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aux.i, align 4
  tail call void @dp_aux_deinit(ptr noundef %19) #10
  %20 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %power, align 4
  %call.i = tail call i32 @dp_power_deinit(ptr noundef %21) #10
  br label %if.end14

if.end14:                                         ; preds = %if.end.i, %if.then.i, %entry.if.end14_crit_edge
  %hpd_state = getelementptr i8, ptr %1, i32 248
  %22 = ptrtoint ptr %hpd_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %hpd_state, align 4
  %23 = ptrtoint ptr %core_initialized to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %core_initialized, align 4
  %24 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %power_on, align 2, !range !162
  %26 = zext i8 %25 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef %26) #10
  tail call void @mutex_unlock(ptr noundef %event_mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %event_mutex = getelementptr i8, ptr %1, i32 104
  tail call void @mutex_lock_nested(ptr noundef %event_mutex, i32 noundef 0) #10
  %core_initialized = getelementptr i8, ptr %1, i32 -188
  %2 = ptrtoint ptr %core_initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %core_initialized, align 4, !range !162
  %4 = zext i8 %3 to i32
  %power_on = getelementptr inbounds %struct.msm_dp, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %power_on, align 2, !range !162
  %7 = zext i8 %6 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.50, i32 noundef %4, i32 noundef %7) #10
  %hpd_state = getelementptr i8, ptr %1, i32 248
  %8 = ptrtoint ptr %hpd_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %hpd_state, align 4
  %9 = ptrtoint ptr %core_initialized to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %core_initialized, align 4, !range !162
  %11 = zext i8 %10 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.65, i32 noundef %11) #10
  %12 = ptrtoint ptr %core_initialized to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %core_initialized, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not.i = icmp eq i8 %13, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.66) #10
  br label %dp_display_host_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %usbpd.i = getelementptr i8, ptr %1, i32 -176
  %14 = ptrtoint ptr %usbpd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usbpd.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i = icmp eq i32 %17, 2
  %power.i = getelementptr i8, ptr %1, i32 -168
  %18 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %power.i, align 4
  %call.i = tail call i32 @dp_power_init(ptr noundef %19, i1 noundef zeroext %cmp.i) #10
  %ctrl.i = getelementptr i8, ptr %1, i32 -148
  %20 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl.i, align 4
  %call9.i = tail call i32 @dp_ctrl_host_init(ptr noundef %21, i1 noundef zeroext %cmp.i, i1 noundef zeroext true) #10
  %aux.i = getelementptr i8, ptr %1, i32 -160
  %22 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %aux.i, align 4
  tail call void @dp_aux_init(ptr noundef %23) #10
  %24 = ptrtoint ptr %core_initialized to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %core_initialized, align 4
  br label %dp_display_host_init.exit

dp_display_host_init.exit:                        ; preds = %if.end.i, %if.then.i
  %catalog = getelementptr i8, ptr %1, i32 -164
  %25 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_ctrl_hpd_config(ptr noundef %26) #10
  %link = getelementptr i8, ptr %1, i32 -156
  %27 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link, align 4
  %panel = getelementptr i8, ptr %1, i32 -152
  %29 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %panel, align 4
  %link_info = getelementptr inbounds %struct.dp_panel, ptr %30, i32 0, i32 4
  %call6 = tail call i32 @dp_link_psm_config(ptr noundef %28, ptr noundef %link_info, i1 noundef zeroext false) #10
  %31 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %catalog, align 4
  %call8 = tail call i32 @dp_catalog_link_is_connected(ptr noundef %32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %dp_display_host_init.exit.if.end13_crit_edge, label %if.then

dp_display_host_init.exit.if.end13_crit_edge:     ; preds = %dp_display_host_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %dp_display_host_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %aux = getelementptr i8, ptr %1, i32 -160
  %33 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %aux, align 4
  %call10 = tail call i32 @drm_dp_read_sink_count(ptr noundef %34) #10
  %35 = tail call i32 @llvm.smax.i32(i32 %call10, i32 0)
  %phi.cast = trunc i32 %35 to i8
  br label %if.end13

if.end13:                                         ; preds = %if.then, %dp_display_host_init.exit.if.end13_crit_edge
  %sink_count.0 = phi i8 [ %phi.cast, %if.then ], [ 0, %dp_display_host_init.exit.if.end13_crit_edge ]
  %36 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %link, align 4
  %sink_count16 = getelementptr inbounds %struct.dp_link, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %sink_count16 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %sink_count.0, ptr %sink_count16, align 1
  %39 = load ptr, ptr %link, align 4
  %sink_count18 = getelementptr inbounds %struct.dp_link, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %sink_count18 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sink_count18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool19.not = icmp eq i8 %41, 0
  %is_connected23 = getelementptr inbounds %struct.msm_dp, ptr %1, i32 0, i32 6
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %is_connected23 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %is_connected23, align 4
  br label %if.end24

if.else:                                          ; preds = %if.end13
  %43 = ptrtoint ptr %is_connected23 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %is_connected23, align 4
  %plugged_cb.i = getelementptr inbounds %struct.msm_dp, ptr %1, i32 0, i32 10
  %44 = ptrtoint ptr %plugged_cb.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %plugged_cb.i, align 4
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %if.else.if.end24_crit_edge, label %land.lhs.true.i

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true.i:                                  ; preds = %if.else
  %codec_dev.i = getelementptr inbounds %struct.msm_dp, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %codec_dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %codec_dev.i, align 4
  %tobool1.not.i = icmp eq ptr %47, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end24_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end24_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %audio_supported.i = getelementptr i8, ptr %1, i32 -186
  %48 = ptrtoint ptr %audio_supported.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %audio_supported.i, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool3.not.i = icmp eq i8 %49, 0
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.end24_crit_edge, label %if.then.i59

land.lhs.true2.i.if.end24_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then.i59:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %45(ptr noundef nonnull %47, i1 noundef zeroext false) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then.i59, %land.lhs.true2.i.if.end24_crit_edge, %land.lhs.true.i.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.then20
  %50 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %link, align 4
  %sink_count26 = getelementptr inbounds %struct.dp_link, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %sink_count26 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sink_count26, align 1
  %conv27 = zext i8 %53 to i32
  %is_connected29 = getelementptr inbounds %struct.msm_dp, ptr %1, i32 0, i32 6
  %54 = ptrtoint ptr %is_connected29 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %is_connected29, align 4, !range !162
  %56 = zext i8 %55 to i32
  %57 = ptrtoint ptr %core_initialized to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %core_initialized, align 4, !range !162
  %59 = zext i8 %58 to i32
  %60 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %power_on, align 2, !range !162
  %62 = zext i8 %61 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.53, i32 noundef %conv27, i32 noundef %56, i32 noundef %59, i32 noundef %62) #10
  tail call void @mutex_unlock(ptr noundef %event_mutex) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_power_clk_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_ctrl_off_link_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_ctrl_host_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_aux_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_power_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_hpd_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_link_is_connected(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_read_sink_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpd_event_thread(ptr noundef %data) #8 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry48 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %event_pndx = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 24
  %event_gndx = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 25
  %event_q = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 22
  %event_lock = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 27
  %event_mutex.i267 = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 21
  %hpd_state.i268 = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 23
  %is_connected.i = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 19, i32 6
  %panel.i = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 14
  %connector2.i.i = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 19, i32 3
  %core_initialized.i258 = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 3
  %pdev.i260 = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 6
  %usbpd.i196 = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 8
  %catalog.i200 = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 11
  %link.i = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 13
  %ctrl.i = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 15
  %plugged_cb.i.i = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 19, i32 10
  %codec_dev.i.i = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 19, i32 1
  %audio_supported.i.i = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 5
  %power.i.i = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 10
  %aux.i.i = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 12
  %irq.i = getelementptr inbounds %struct.dp_display_private, ptr %data, i32 0, i32 1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %entry
  %tobool.not = phi i1 [ true, %entry ], [ %tobool83.not, %while.cond.outer.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %if.then107, %while.cond.outer
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.cond
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1053) #10
  %0 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_pndx, align 4
  %2 = ptrtoint ptr %event_gndx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event_gndx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then.do.body73_crit_edge, label %if.then10

if.then.do.body73_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body73

if.then10:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call287 = call i32 @prepare_to_wait_event(ptr noundef %event_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %5 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %event_pndx, align 4
  %7 = ptrtoint ptr %event_gndx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %event_gndx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp15288 = icmp eq i32 %6, %8
  br i1 %cmp15288, label %if.then10.for.end_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  br label %cleanup

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %__ret11.1289 = phi i32 [ %__ret11.1, %cleanup.cleanup_crit_edge ], [ 10, %if.then10.cleanup_crit_edge ]
  %call32 = call i32 @schedule_timeout(i32 noundef %__ret11.1289) #10
  %call = call i32 @prepare_to_wait_event(ptr noundef %event_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %9 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event_pndx, align 4
  %11 = ptrtoint ptr %event_gndx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %event_gndx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp15 = icmp eq i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool19.not = icmp eq i32 %call32, 0
  %13 = select i1 %cmp15, i1 %tobool19.not, i1 false
  %__ret11.1 = select i1 %13, i32 1, i32 %call32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1)
  %tobool25.not = icmp eq i32 %__ret11.1, 0
  %14 = select i1 %cmp15, i1 true, i1 %tobool25.not
  br i1 %14, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then10.for.end_crit_edge
  call void @finish_wait(ptr noundef %event_q, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.body73

if.else:                                          ; preds = %while.cond
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1056) #10
  %15 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %event_pndx, align 4
  %17 = ptrtoint ptr %event_gndx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %event_gndx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp46.not = icmp eq i32 %16, %18
  br i1 %cmp46.not, label %if.then47, label %if.else.do.body73_crit_edge

if.else.do.body73_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body73

if.then47:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry48) #10
  %19 = call ptr @memset(ptr %__wq_entry48, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry48, i32 noundef 0) #10
  %call53290 = call i32 @prepare_to_wait_event(ptr noundef %event_q, ptr noundef nonnull %__wq_entry48, i32 noundef 1) #10
  %20 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %event_pndx, align 4
  %22 = ptrtoint ptr %event_gndx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %event_gndx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp56.not291 = icmp eq i32 %21, %23
  br i1 %cmp56.not291, label %if.then47.if.end58_crit_edge, label %if.then47.for.end65_crit_edge

if.then47.for.end65_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end65

if.then47.if.end58_crit_edge:                     ; preds = %if.then47
  br label %if.end58

if.end58:                                         ; preds = %cleanup62.if.end58_crit_edge, %if.then47.if.end58_crit_edge
  %call53292 = phi i32 [ %call53, %cleanup62.if.end58_crit_edge ], [ %call53290, %if.then47.if.end58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53292)
  %tobool59.not = icmp eq i32 %call53292, 0
  br i1 %tobool59.not, label %cleanup62, label %if.end58.__out67_crit_edge

if.end58.__out67_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out67

cleanup62:                                        ; preds = %if.end58
  call void @schedule() #10
  %call53 = call i32 @prepare_to_wait_event(ptr noundef %event_q, ptr noundef nonnull %__wq_entry48, i32 noundef 1) #10
  %24 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %event_pndx, align 4
  %26 = ptrtoint ptr %event_gndx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %event_gndx, align 4
  %cmp56.not = icmp eq i32 %25, %27
  br i1 %cmp56.not, label %cleanup62.if.end58_crit_edge, label %cleanup62.for.end65_crit_edge

cleanup62.for.end65_crit_edge:                    ; preds = %cleanup62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end65

cleanup62.if.end58_crit_edge:                     ; preds = %cleanup62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

for.end65:                                        ; preds = %cleanup62.for.end65_crit_edge, %if.then47.for.end65_crit_edge
  call void @finish_wait(ptr noundef %event_q, ptr noundef nonnull %__wq_entry48) #10
  br label %__out67

__out67:                                          ; preds = %for.end65, %if.end58.__out67_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry48) #10
  br label %do.body73

do.body73:                                        ; preds = %__out67, %if.else.do.body73_crit_edge, %for.end, %if.then.do.body73_crit_edge
  %call77 = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %28 = ptrtoint ptr %event_gndx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %event_gndx, align 4
  %delay = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %29, i32 2
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool83.not = icmp eq i32 %31, 0
  br i1 %tobool83.not, label %if.end102, label %if.then84

if.then84:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.le295 = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %29
  %inc = add i32 %29, 1
  %rem = and i32 %inc, 7
  %32 = ptrtoint ptr %event_gndx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %rem, ptr %event_gndx, align 4
  %33 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %event_pndx, align 4
  %inc89 = add i32 %34, 1
  %arrayidx90 = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %34
  %rem92 = and i32 %inc89, 7
  store i32 %rem92, ptr %event_pndx, align 4
  %35 = ptrtoint ptr %arrayidx.le295 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.le295, align 4
  %37 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx90, align 4
  %data94 = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %29, i32 1
  %38 = ptrtoint ptr %data94 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data94, align 4
  %data95 = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %34, i32 1
  %40 = ptrtoint ptr %data95 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %data95, align 4
  %41 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %delay, align 4
  %sub = add i32 %42, -1
  %delay97 = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %34, i32 2
  %43 = ptrtoint ptr %delay97 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub, ptr %delay97, align 4
  store i32 0, ptr %arrayidx.le295, align 4
  store i32 0, ptr %delay, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call77) #10
  br label %while.cond.outer.backedge

if.end102:                                        ; preds = %do.body73
  %44 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %event_pndx, align 4
  %cmp105 = icmp eq i32 %45, %29
  br i1 %cmp105, label %if.then107, label %if.end109

if.then107:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call77) #10
  br label %while.cond

if.end109:                                        ; preds = %if.end102
  %arrayidx.le = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %29
  %inc111 = add i32 %29, 1
  %rem113 = and i32 %inc111, 7
  %46 = ptrtoint ptr %event_gndx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %rem113, ptr %event_gndx, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call77) #10
  %47 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.le, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %48, label %if.end109.while.cond.outer.backedge_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb116
    i32 4, label %sw.bb119
    i32 3, label %sw.bb122
    i32 5, label %sw.bb125
    i32 6, label %sw.bb129
    i32 7, label %sw.bb132
  ]

if.end109.while.cond.outer.backedge_crit_edge:    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.backedge

sw.bb:                                            ; preds = %if.end109
  %50 = ptrtoint ptr %core_initialized.i258 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %core_initialized.i258, align 4, !range !162
  %52 = zext i8 %51 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.65, i32 noundef %52) #10
  %53 = ptrtoint ptr %core_initialized.i258 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %core_initialized.i258, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool2.not.i.i = icmp eq i8 %54, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.66) #10
  br label %dp_display_config_hpd.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %usbpd.i196 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usbpd.i196, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp.i.i = icmp eq i32 %58, 2
  %59 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %power.i.i, align 4
  %call.i.i = call i32 @dp_power_init(ptr noundef %60, i1 noundef zeroext %cmp.i.i) #10
  %61 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctrl.i, align 4
  %call9.i.i = call i32 @dp_ctrl_host_init(ptr noundef %62, i1 noundef zeroext %cmp.i.i, i1 noundef zeroext true) #10
  %63 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %aux.i.i, align 4
  call void @dp_aux_init(ptr noundef %64) #10
  %65 = ptrtoint ptr %core_initialized.i258 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %core_initialized.i258, align 4
  br label %dp_display_config_hpd.exit

dp_display_config_hpd.exit:                       ; preds = %if.end.i.i, %if.then.i.i
  %66 = ptrtoint ptr %catalog.i200 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %catalog.i200, align 4
  call void @dp_catalog_ctrl_hpd_config(ptr noundef %67) #10
  %68 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq.i, align 4
  call void @enable_irq(i32 noundef %69) #10
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %dp_disconnect_pending_timeout.exit, %dp_connect_pending_timeout.exit, %if.end10.i, %if.then.i, %dp_irq_hpd_handle.exit, %cleanup.sink.split.i222, %sw.bb119.while.cond.outer.backedge_crit_edge, %cleanup.sink.split.i, %sw.bb116.while.cond.outer.backedge_crit_edge, %dp_display_config_hpd.exit, %if.end109.while.cond.outer.backedge_crit_edge, %if.then84
  br label %while.cond.outer

sw.bb116:                                         ; preds = %if.end109
  %70 = ptrtoint ptr %usbpd.i196 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %usbpd.i196, align 4
  %tobool.not.i = icmp eq ptr %71, null
  br i1 %tobool.not.i, label %sw.bb116.while.cond.outer.backedge_crit_edge, label %if.end.i

sw.bb116.while.cond.outer.backedge_crit_edge:     ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.backedge

if.end.i:                                         ; preds = %sw.bb116
  call void @mutex_lock_nested(ptr noundef %event_mutex.i267, i32 noundef 0) #10
  %72 = ptrtoint ptr %hpd_state.i268 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hpd_state.i268, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.58, i32 noundef %73) #10
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %73, label %if.end14.i [
    i32 4, label %if.end.i.cleanup.sink.split.i_crit_edge
    i32 5, label %if.end.i.cleanup.sink.split.i_crit_edge315
    i32 1, label %if.end.i.cleanup.sink.split.i_crit_edge316
    i32 2, label %if.end.i.cleanup.sink.split.i_crit_edge317
    i32 3, label %if.then12.i
  ]

if.end.i.cleanup.sink.split.i_crit_edge317:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end.i.cleanup.sink.split.i_crit_edge316:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end.i.cleanup.sink.split.i_crit_edge315:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.then12.i:                                      ; preds = %if.end.i
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %75 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %event_pndx, align 4
  %add.i.i = add i32 %76, 1
  %rem.i.i = srem i32 %add.i.i, 8
  %77 = ptrtoint ptr %event_gndx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %event_gndx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i, i32 %78)
  %cmp5.i.i = icmp eq i32 %rem.i.i, %78
  br i1 %cmp5.i.i, label %do.end9.i.i, label %if.end.i.i194

do.end9.i.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %76, i32 noundef %rem.i.i) #13
  br label %dp_add_event.exit.i

if.end.i.i194:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %76
  %rem17.i.i = and i32 %add.i.i, 7
  %79 = ptrtoint ptr %event_pndx to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %rem17.i.i, ptr %event_pndx, align 4
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %arrayidx.i.i, align 4
  %data18.i.i = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %76, i32 1
  %81 = ptrtoint ptr %data18.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %data18.i.i, align 4
  %delay19.i.i = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %76, i32 2
  %82 = ptrtoint ptr %delay19.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %delay19.i.i, align 4
  call void @__wake_up(ptr noundef %event_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit.i

dp_add_event.exit.i:                              ; preds = %if.end.i.i194, %do.end9.i.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call2.i.i) #10
  br label %cleanup.sink.split.i

if.end14.i:                                       ; preds = %if.end.i
  %83 = ptrtoint ptr %hpd_state.i268 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %hpd_state.i268, align 4
  %84 = ptrtoint ptr %pdev.i260 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev.i260, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %85, i32 0, i32 3
  %call16.i = call i32 @dp_display_usbpd_configure_cb(ptr noundef %dev.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.else.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end14.i
  %86 = ptrtoint ptr %hpd_state.i268 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %hpd_state.i268, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -104, i32 %call16.i)
  %cmp20.i = icmp eq i32 %call16.i, -104
  br i1 %cmp20.i, label %if.then21.i, label %if.then18.i.if.end24.i_crit_edge

if.then18.i.if.end24.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %core_initialized.i258 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %core_initialized.i258, align 4
  br label %if.end24.i

if.else.i:                                        ; preds = %if.end14.i
  %call2.i2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %88 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %event_pndx, align 4
  %add.i4.i = add i32 %89, 1
  %rem.i5.i = srem i32 %add.i4.i, 8
  %90 = ptrtoint ptr %event_gndx to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %event_gndx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i5.i, i32 %91)
  %cmp5.i7.i = icmp eq i32 %rem.i5.i, %91
  br i1 %cmp5.i7.i, label %do.end9.i9.i, label %if.end.i15.i

do.end9.i9.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %89, i32 noundef %rem.i5.i) #13
  br label %dp_add_event.exit16.i

if.end.i15.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i10.i = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %89
  %rem17.i11.i = and i32 %add.i4.i, 7
  %92 = ptrtoint ptr %event_pndx to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %rem17.i11.i, ptr %event_pndx, align 4
  %93 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 6, ptr %arrayidx.i10.i, align 4
  %data18.i12.i = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %89, i32 1
  %94 = ptrtoint ptr %data18.i12.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %data18.i12.i, align 4
  %delay19.i13.i = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %89, i32 2
  %95 = ptrtoint ptr %delay19.i13.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 500, ptr %delay19.i13.i, align 4
  call void @__wake_up(ptr noundef %event_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit16.i

dp_add_event.exit16.i:                            ; preds = %if.end.i15.i, %do.end9.i9.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call2.i2.i) #10
  br label %if.end24.i

if.end24.i:                                       ; preds = %dp_add_event.exit16.i, %if.then21.i, %if.then18.i.if.end24.i_crit_edge
  %96 = ptrtoint ptr %catalog.i200 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %catalog.i200, align 4
  call void @dp_catalog_hpd_config_intr(ptr noundef %97, i32 noundef 6, i1 noundef zeroext true) #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end24.i, %dp_add_event.exit.i, %if.end.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge315, %if.end.i.cleanup.sink.split.i_crit_edge316, %if.end.i.cleanup.sink.split.i_crit_edge317
  call void @mutex_unlock(ptr noundef %event_mutex.i267) #10
  br label %while.cond.outer.backedge

sw.bb119:                                         ; preds = %if.end109
  %98 = ptrtoint ptr %usbpd.i196 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %usbpd.i196, align 4
  %tobool.not.i197 = icmp eq ptr %99, null
  br i1 %tobool.not.i197, label %sw.bb119.while.cond.outer.backedge_crit_edge, label %if.end.i206

sw.bb119.while.cond.outer.backedge_crit_edge:     ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.backedge

if.end.i206:                                      ; preds = %sw.bb119
  call void @mutex_lock_nested(ptr noundef %event_mutex.i267, i32 noundef 0) #10
  %100 = ptrtoint ptr %hpd_state.i268 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %hpd_state.i268, align 4
  %102 = ptrtoint ptr %catalog.i200 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %catalog.i200, align 4
  call void @dp_catalog_hpd_config_intr(ptr noundef %103, i32 noundef 6, i1 noundef zeroext false) #10
  %call2.i.i202 = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %104 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %event_pndx, align 4
  %106 = ptrtoint ptr %event_gndx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %event_gndx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp5.i.i205 = icmp eq i32 %105, %107
  br i1 %cmp5.i.i205, label %if.end.i206.dp_del_event.exit.i_crit_edge, label %if.end.i206.while.body.i.i_crit_edge

if.end.i206.while.body.i.i_crit_edge:             ; preds = %if.end.i206
  br label %while.body.i.i

if.end.i206.dp_del_event.exit.i_crit_edge:        ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_del_event.exit.i

while.body.i.i:                                   ; preds = %if.end16.i.i.while.body.i.i_crit_edge, %if.end.i206.while.body.i.i_crit_edge
  %gndx.02.i.i = phi i32 [ %rem.i.i208, %if.end16.i.i.while.body.i.i_crit_edge ], [ %107, %if.end.i206.while.body.i.i_crit_edge ]
  %arrayidx.i.i207 = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %gndx.02.i.i
  %108 = ptrtoint ptr %arrayidx.i.i207 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i.i207, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %109)
  %cmp12.i.i = icmp eq i32 %109, 3
  br i1 %cmp12.i.i, label %if.then14.i.i, label %while.body.i.i.if.end16.i.i_crit_edge

while.body.i.i.if.end16.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

if.then14.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %arrayidx.i.i207 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %arrayidx.i.i207, align 4
  %delay.i.i = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %gndx.02.i.i, i32 2
  %111 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %delay.i.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then14.i.i, %while.body.i.i.if.end16.i.i_crit_edge
  %inc.i.i = add i32 %gndx.02.i.i, 1
  %rem.i.i208 = and i32 %inc.i.i, 7
  %112 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %event_pndx, align 4
  %cmp10.not.i.i = icmp eq i32 %113, %rem.i.i208
  br i1 %cmp10.not.i.i, label %if.end16.i.i.dp_del_event.exit.i_crit_edge, label %if.end16.i.i.while.body.i.i_crit_edge

if.end16.i.i.while.body.i.i_crit_edge:            ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end16.i.i.dp_del_event.exit.i_crit_edge:       ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_del_event.exit.i

dp_del_event.exit.i:                              ; preds = %if.end16.i.i.dp_del_event.exit.i_crit_edge, %if.end.i206.dp_del_event.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call2.i.i202) #10
  %114 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %101, label %if.end18.i [
    i32 0, label %if.then1.i
    i32 3, label %dp_del_event.exit.i.cleanup.sink.split.i222_crit_edge
    i32 1, label %if.then15.i
  ]

dp_del_event.exit.i.cleanup.sink.split.i222_crit_edge: ; preds = %dp_del_event.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i222

if.then1.i:                                       ; preds = %dp_del_event.exit.i
  %115 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %link.i, align 4
  %sink_count.i = getelementptr inbounds %struct.dp_link, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %sink_count.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %sink_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp2.i = icmp eq i8 %118, 0
  br i1 %cmp2.i, label %if.then4.i, label %if.then1.i.cleanup.sink.split.i222_crit_edge

if.then1.i.cleanup.sink.split.i222_crit_edge:     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i222

if.then4.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ctrl.i, align 4
  call void @dp_ctrl_off_phy(ptr noundef %120) #10
  %121 = ptrtoint ptr %core_initialized.i258 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %core_initialized.i258, align 4
  br label %cleanup.sink.split.i222

if.then15.i:                                      ; preds = %dp_del_event.exit.i
  %call2.i2.i210 = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %122 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %event_pndx, align 4
  %add.i.i211 = add i32 %123, 1
  %rem.i4.i = srem i32 %add.i.i211, 8
  %124 = ptrtoint ptr %event_gndx to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %event_gndx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i4.i, i32 %125)
  %cmp5.i6.i = icmp eq i32 %rem.i4.i, %125
  br i1 %cmp5.i6.i, label %do.end9.i.i213, label %if.end.i.i218

do.end9.i.i213:                                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i.i212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %123, i32 noundef %rem.i4.i) #13
  br label %dp_add_event.exit.i219

if.end.i.i218:                                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i7.i = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %123
  %rem17.i.i214 = and i32 %add.i.i211, 7
  %126 = ptrtoint ptr %event_pndx to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %rem17.i.i214, ptr %event_pndx, align 4
  %127 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 4, ptr %arrayidx.i7.i, align 4
  %data18.i.i215 = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %123, i32 1
  %128 = ptrtoint ptr %data18.i.i215 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %data18.i.i215, align 4
  %delay19.i.i216 = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %123, i32 2
  %129 = ptrtoint ptr %delay19.i.i216 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %delay19.i.i216, align 4
  call void @__wake_up(ptr noundef %event_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit.i219

dp_add_event.exit.i219:                           ; preds = %if.end.i.i218, %do.end9.i.i213
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call2.i2.i210) #10
  br label %cleanup.sink.split.i222

if.end18.i:                                       ; preds = %dp_del_event.exit.i
  %130 = ptrtoint ptr %hpd_state.i268 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 3, ptr %hpd_state.i268, align 4
  %131 = ptrtoint ptr %catalog.i200 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %catalog.i200, align 4
  call void @dp_catalog_hpd_config_intr(ptr noundef %132, i32 noundef 1, i1 noundef zeroext false) #10
  %133 = ptrtoint ptr %pdev.i260 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pdev.i260, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %134, i32 0, i32 3, i32 8
  %135 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %event_lock.i.i.i = getelementptr i8, ptr %136, i32 356
  %call2.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i.i.i) #10
  %event_pndx.i.i.i = getelementptr i8, ptr %136, i32 252
  %137 = ptrtoint ptr %event_pndx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %event_pndx.i.i.i, align 4
  %add.i.i.i = add i32 %138, 1
  %rem.i.i.i = srem i32 %add.i.i.i, 8
  %event_gndx.i.i.i = getelementptr i8, ptr %136, i32 256
  %139 = ptrtoint ptr %event_gndx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %event_gndx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i.i, i32 %140)
  %cmp5.i.i.i = icmp eq i32 %rem.i.i.i, %140
  br i1 %cmp5.i.i.i, label %do.end9.i.i.i, label %if.end.i.i.i

do.end9.i.i.i:                                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %138, i32 noundef %rem.i.i.i) #13
  br label %dp_display_usbpd_disconnect_cb.exit.i

if.end.i.i.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i = getelementptr i8, ptr %136, i32 -200
  %arrayidx.i.i.i = getelementptr %struct.dp_display_private, ptr %add.ptr.i.i.i, i32 0, i32 26, i32 %138
  %rem17.i.i.i = and i32 %add.i.i.i, 7
  %141 = ptrtoint ptr %event_pndx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %rem17.i.i.i, ptr %event_pndx.i.i.i, align 4
  %142 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 5, ptr %arrayidx.i.i.i, align 4
  %data18.i.i.i = getelementptr %struct.dp_display_private, ptr %add.ptr.i.i.i, i32 0, i32 26, i32 %138, i32 1
  %143 = ptrtoint ptr %data18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %data18.i.i.i, align 4
  %delay19.i.i.i = getelementptr %struct.dp_display_private, ptr %add.ptr.i.i.i, i32 0, i32 26, i32 %138, i32 2
  %144 = ptrtoint ptr %delay19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %delay19.i.i.i, align 4
  %event_q.i.i.i = getelementptr i8, ptr %136, i32 196
  call void @__wake_up(ptr noundef %event_q.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_display_usbpd_disconnect_cb.exit.i

dp_display_usbpd_disconnect_cb.exit.i:            ; preds = %if.end.i.i.i, %do.end9.i.i.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i.i.i, i32 noundef %call2.i.i.i) #10
  %call2.i9.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %145 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %event_pndx, align 4
  %add.i11.i = add i32 %146, 1
  %rem.i12.i = srem i32 %add.i11.i, 8
  %147 = ptrtoint ptr %event_gndx to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %event_gndx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i12.i, i32 %148)
  %cmp5.i14.i = icmp eq i32 %rem.i12.i, %148
  br i1 %cmp5.i14.i, label %do.end9.i16.i, label %if.end.i22.i

do.end9.i16.i:                                    ; preds = %dp_display_usbpd_disconnect_cb.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %146, i32 noundef %rem.i12.i) #13
  br label %dp_add_event.exit23.i

if.end.i22.i:                                     ; preds = %dp_display_usbpd_disconnect_cb.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i17.i = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %146
  %rem17.i18.i = and i32 %add.i11.i, 7
  %149 = ptrtoint ptr %event_pndx to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %rem17.i18.i, ptr %event_pndx, align 4
  %150 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 7, ptr %arrayidx.i17.i, align 4
  %data18.i19.i = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %146, i32 1
  %151 = ptrtoint ptr %data18.i19.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %data18.i19.i, align 4
  %delay19.i20.i = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %146, i32 2
  %152 = ptrtoint ptr %delay19.i20.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 500, ptr %delay19.i20.i, align 4
  call void @__wake_up(ptr noundef %event_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit23.i

dp_add_event.exit23.i:                            ; preds = %if.end.i22.i, %do.end9.i16.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call2.i9.i) #10
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.58, i32 noundef %101) #10
  %153 = ptrtoint ptr %plugged_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %plugged_cb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %154, null
  br i1 %tobool.not.i.i, label %dp_add_event.exit23.i.dp_display_handle_plugged_change.exit.i_crit_edge, label %land.lhs.true.i.i

dp_add_event.exit23.i.dp_display_handle_plugged_change.exit.i_crit_edge: ; preds = %dp_add_event.exit23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_display_handle_plugged_change.exit.i

land.lhs.true.i.i:                                ; preds = %dp_add_event.exit23.i
  %155 = ptrtoint ptr %codec_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %codec_dev.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %156, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.dp_display_handle_plugged_change.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.dp_display_handle_plugged_change.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_display_handle_plugged_change.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %157 = ptrtoint ptr %audio_supported.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %audio_supported.i.i, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool3.not.i.i = icmp eq i8 %158, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true2.i.i.dp_display_handle_plugged_change.exit.i_crit_edge, label %if.then.i.i221

land.lhs.true2.i.i.dp_display_handle_plugged_change.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_display_handle_plugged_change.exit.i

if.then.i.i221:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %154(ptr noundef nonnull %156, i1 noundef zeroext false) #10
  br label %dp_display_handle_plugged_change.exit.i

dp_display_handle_plugged_change.exit.i:          ; preds = %if.then.i.i221, %land.lhs.true2.i.i.dp_display_handle_plugged_change.exit.i_crit_edge, %land.lhs.true.i.i.dp_display_handle_plugged_change.exit.i_crit_edge, %dp_add_event.exit23.i.dp_display_handle_plugged_change.exit.i_crit_edge
  %159 = ptrtoint ptr %catalog.i200 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %catalog.i200, align 4
  call void @dp_catalog_hpd_config_intr(ptr noundef %160, i32 noundef 1, i1 noundef zeroext true) #10
  br label %cleanup.sink.split.i222

cleanup.sink.split.i222:                          ; preds = %dp_display_handle_plugged_change.exit.i, %dp_add_event.exit.i219, %if.then4.i, %if.then1.i.cleanup.sink.split.i222_crit_edge, %dp_del_event.exit.i.cleanup.sink.split.i222_crit_edge
  call void @mutex_unlock(ptr noundef %event_mutex.i267) #10
  br label %while.cond.outer.backedge

sw.bb122:                                         ; preds = %if.end109
  call void @mutex_lock_nested(ptr noundef %event_mutex.i267, i32 noundef 0) #10
  %161 = ptrtoint ptr %hpd_state.i268 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %hpd_state.i268, align 4
  %163 = zext i32 %162 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %162, label %if.end13.i [
    i32 4, label %sw.bb122.dp_irq_hpd_handle.exit_crit_edge
    i32 5, label %sw.bb122.dp_irq_hpd_handle.exit_crit_edge318
    i32 1, label %if.then4.i232
    i32 3, label %if.then10.i
  ]

sw.bb122.dp_irq_hpd_handle.exit_crit_edge318:     ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_irq_hpd_handle.exit

sw.bb122.dp_irq_hpd_handle.exit_crit_edge:        ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_irq_hpd_handle.exit

if.then4.i232:                                    ; preds = %sw.bb122
  %call2.i.i226 = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %164 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %event_pndx, align 4
  %add.i.i228 = add i32 %165, 1
  %rem.i.i229 = srem i32 %add.i.i228, 8
  %166 = ptrtoint ptr %event_gndx to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %event_gndx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i229, i32 %167)
  %cmp5.i.i231 = icmp eq i32 %rem.i.i229, %167
  br i1 %cmp5.i.i231, label %do.end9.i.i234, label %if.end.i.i240

do.end9.i.i234:                                   ; preds = %if.then4.i232
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i.i233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %165, i32 noundef %rem.i.i229) #13
  br label %dp_add_event.exit.i241

if.end.i.i240:                                    ; preds = %if.then4.i232
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i235 = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %165
  %rem17.i.i236 = and i32 %add.i.i228, 7
  %168 = ptrtoint ptr %event_pndx to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %rem17.i.i236, ptr %event_pndx, align 4
  %169 = ptrtoint ptr %arrayidx.i.i235 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 3, ptr %arrayidx.i.i235, align 4
  %data18.i.i237 = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %165, i32 1
  %170 = ptrtoint ptr %data18.i.i237 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %data18.i.i237, align 4
  %delay19.i.i238 = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %165, i32 2
  %171 = ptrtoint ptr %delay19.i.i238 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 1, ptr %delay19.i.i238, align 4
  call void @__wake_up(ptr noundef %event_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit.i241

dp_add_event.exit.i241:                           ; preds = %if.end.i.i240, %do.end9.i.i234
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call2.i.i226) #10
  br label %dp_irq_hpd_handle.exit

if.then10.i:                                      ; preds = %sw.bb122
  %call2.i2.i243 = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %172 = ptrtoint ptr %event_pndx to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %event_pndx, align 4
  %add.i4.i245 = add i32 %173, 1
  %rem.i5.i246 = srem i32 %add.i4.i245, 8
  %174 = ptrtoint ptr %event_gndx to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %event_gndx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i5.i246, i32 %175)
  %cmp5.i7.i248 = icmp eq i32 %rem.i5.i246, %175
  br i1 %cmp5.i7.i248, label %do.end9.i9.i250, label %if.end.i15.i256

do.end9.i9.i250:                                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i8.i249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %173, i32 noundef %rem.i5.i246) #13
  br label %dp_add_event.exit16.i257

if.end.i15.i256:                                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i10.i251 = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %173
  %rem17.i11.i252 = and i32 %add.i4.i245, 7
  %176 = ptrtoint ptr %event_pndx to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %rem17.i11.i252, ptr %event_pndx, align 4
  %177 = ptrtoint ptr %arrayidx.i10.i251 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 3, ptr %arrayidx.i10.i251, align 4
  %data18.i12.i253 = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %173, i32 1
  %178 = ptrtoint ptr %data18.i12.i253 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %data18.i12.i253, align 4
  %delay19.i13.i254 = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %173, i32 2
  %179 = ptrtoint ptr %delay19.i13.i254 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 1, ptr %delay19.i13.i254, align 4
  call void @__wake_up(ptr noundef %event_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %dp_add_event.exit16.i257

dp_add_event.exit16.i257:                         ; preds = %if.end.i15.i256, %do.end9.i9.i250
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call2.i2.i243) #10
  br label %dp_irq_hpd_handle.exit

if.end13.i:                                       ; preds = %sw.bb122
  %180 = ptrtoint ptr %core_initialized.i258 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %core_initialized.i258, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool.not.i259 = icmp eq i8 %181, 0
  br i1 %tobool.not.i259, label %if.end13.i.if.end20.i_crit_edge, label %if.then14.i

if.end13.i.if.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.end13.i
  %182 = ptrtoint ptr %pdev.i260 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pdev.i260, align 4
  %dev.i261 = getelementptr inbounds %struct.platform_device, ptr %183, i32 0, i32 3
  %call15.i = call i32 @dp_display_usbpd_attention_cb(ptr noundef %dev.i261) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -104, i32 %call15.i)
  %cmp16.i = icmp eq i32 %call15.i, -104
  br i1 %cmp16.i, label %if.then17.i, label %if.then14.i.if.end20.i_crit_edge

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  %184 = ptrtoint ptr %core_initialized.i258 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %core_initialized.i258, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.then14.i.if.end20.i_crit_edge, %if.end13.i.if.end20.i_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.58, i32 noundef %162) #10
  br label %dp_irq_hpd_handle.exit

dp_irq_hpd_handle.exit:                           ; preds = %if.end20.i, %dp_add_event.exit16.i257, %dp_add_event.exit.i241, %sw.bb122.dp_irq_hpd_handle.exit_crit_edge, %sw.bb122.dp_irq_hpd_handle.exit_crit_edge318
  call void @mutex_unlock(ptr noundef %event_mutex.i267) #10
  br label %while.cond.outer.backedge

sw.bb125:                                         ; preds = %if.end109
  %data126 = getelementptr %struct.dp_display_private, ptr %data, i32 0, i32 26, i32 %29, i32 1
  %185 = ptrtoint ptr %data126 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %data126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool127 = icmp ne i32 %186, 0
  %frombool.i = zext i1 %tobool127 to i8
  %187 = ptrtoint ptr %is_connected.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %is_connected.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool1.not.i = icmp eq i8 %188, 0
  br i1 %tobool127, label %land.lhs.true.i, label %land.lhs.true3.critedge.i

land.lhs.true.i:                                  ; preds = %sw.bb125
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end10.i_crit_edge, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

land.lhs.true3.critedge.i:                        ; preds = %sw.bb125
  br i1 %tobool1.not.i, label %land.lhs.true3.critedge.i.if.then.i_crit_edge, label %if.then9.critedge.i

land.lhs.true3.critedge.i.if.then.i_crit_edge:    ; preds = %land.lhs.true3.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true3.critedge.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %cond.i = phi ptr [ @.str.61, %land.lhs.true3.critedge.i.if.then.i_crit_edge ], [ @.str.60, %land.lhs.true.i.if.then.i_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.59, ptr noundef nonnull %cond.i) #10
  br label %while.cond.outer.backedge

if.then9.critedge.i:                              ; preds = %land.lhs.true3.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  %189 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %panel.i, align 4
  %video_test.i = getelementptr inbounds %struct.dp_panel, ptr %190, i32 0, i32 9
  %191 = ptrtoint ptr %video_test.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %video_test.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.critedge.i, %land.lhs.true.i.if.end10.i_crit_edge
  %192 = ptrtoint ptr %is_connected.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %frombool.i, ptr %is_connected.i, align 4
  %conv.i = zext i1 %tobool127 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.62, i32 noundef %conv.i) #10
  %193 = ptrtoint ptr %connector2.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %connector2.i.i, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %194, align 8
  %call.i.i262 = call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %196) #10
  br label %while.cond.outer.backedge

sw.bb129:                                         ; preds = %if.end109
  call void @mutex_lock_nested(ptr noundef %event_mutex.i267, i32 noundef 0) #10
  %197 = ptrtoint ptr %hpd_state.i268 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %hpd_state.i268, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %198)
  %cmp.i = icmp eq i32 %198, 1
  br i1 %cmp.i, label %if.then.i265, label %sw.bb129.dp_connect_pending_timeout.exit_crit_edge

sw.bb129.dp_connect_pending_timeout.exit_crit_edge: ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_connect_pending_timeout.exit

if.then.i265:                                     ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #12
  %199 = ptrtoint ptr %hpd_state.i268 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 2, ptr %hpd_state.i268, align 4
  br label %dp_connect_pending_timeout.exit

dp_connect_pending_timeout.exit:                  ; preds = %if.then.i265, %sw.bb129.dp_connect_pending_timeout.exit_crit_edge
  call void @mutex_unlock(ptr noundef %event_mutex.i267) #10
  br label %while.cond.outer.backedge

sw.bb132:                                         ; preds = %if.end109
  call void @mutex_lock_nested(ptr noundef %event_mutex.i267, i32 noundef 0) #10
  %200 = ptrtoint ptr %hpd_state.i268 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %hpd_state.i268, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %201)
  %cmp.i269 = icmp eq i32 %201, 3
  br i1 %cmp.i269, label %if.then.i270, label %sw.bb132.dp_disconnect_pending_timeout.exit_crit_edge

sw.bb132.dp_disconnect_pending_timeout.exit_crit_edge: ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #12
  br label %dp_disconnect_pending_timeout.exit

if.then.i270:                                     ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #12
  %202 = ptrtoint ptr %hpd_state.i268 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %hpd_state.i268, align 4
  br label %dp_disconnect_pending_timeout.exit

dp_disconnect_pending_timeout.exit:               ; preds = %if.then.i270, %sw.bb132.dp_disconnect_pending_timeout.exit_crit_edge
  call void @mutex_unlock(ptr noundef %event_mutex.i267) #10
  br label %while.cond.outer.backedge
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_hpd_config_intr(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_ctrl_off_phy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_panel_init_panel_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_power_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_ctrl_host_init(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_aux_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_ctrl_on_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_ctrl_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !125, !126, !128, !130, !132, !133, !134, !136, !138, !139, !140, !141, !143, !145, !147, !149, !151}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 935, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1184, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1193, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1199, i32 23}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1201, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1416, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1454, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1465, i32 6}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1473, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1482, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1493, i32 3}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1523, i32 3}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1530, i32 3}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1544, i32 3}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1589, i32 3}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1142, i32 3}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1148, i32 2}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1403, i32 11}
!37 = !{ptr @dp_display_driver, !38, !"dp_display_driver", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1399, i32 31}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1239, i32 3}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1252, i32 13}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1257, i32 3}
!45 = !{ptr @dp_display_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1261, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1272, i32 3}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1228, i32 2}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dp_display_get_desc._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @dp_display_get_desc._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 737, i32 3}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 745, i32 3}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 753, i32 3}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 761, i32 3}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 769, i32 3}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 777, i32 3}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 789, i32 3}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 798, i32 3}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 806, i32 3}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dp_init_sub_modules._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @dp_init_sub_modules._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 365, i32 3}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 487, i32 3}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 439, i32 3}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 296, i32 2}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 460, i32 2}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 463, i32 4}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 464, i32 4}
!91 = !{ptr @init_completion.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../include/linux/completion.h", i32 87, i32 2}
!93 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @dp_display_comp_ops, !95, !"dp_display_comp_ops", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 283, i32 35}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 245, i32 3}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 254, i32 3}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 260, i32 3}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 266, i32 3}
!104 = !{ptr @dp_dt_match, !105, !"dp_dt_match", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 146, i32 34}
!106 = !{ptr @sc7180_dp_cfg, !107, !"sc7180_dp_cfg", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 131, i32 35}
!108 = !{ptr @sc7280_dp_cfg, !109, !"sc7280_dp_cfg", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 138, i32 35}
!110 = !{ptr @dp_pm_ops, !111, !"dp_pm_ops", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1392, i32 32}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1358, i32 2}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1374, i32 2}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 397, i32 3}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1339, i32 2}
!120 = !{ptr @dp_hpd_event_setup.__key, !121, !"__key", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1129, i32 2}
!122 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @dp_hpd_event_setup.__key.55, !124, !"__key", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1130, i32 2}
!125 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 1132, i32 2}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 510, i32 2}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 319, i32 3}
!132 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 329, i32 2}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 171, i32 3}
!138 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @dp_add_event._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @dp_add_event._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 379, i32 2}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 381, i32 3}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 845, i32 2}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 847, i32 3}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 890, i32 4}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/msm/dp/dp_display.c", i32 905, i32 2}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{i8 0, i8 2}
!163 = !{!"branch_weights", i32 1, i32 2000}
