; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/camss/camss.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/camss/camss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.camss_clock = type { ptr, ptr, ptr, i32 }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.camss = type { i32, %struct.v4l2_device, %struct.v4l2_async_notifier, %struct.media_device, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, %struct.atomic_t, [3 x ptr], [3 x ptr] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.vfe_device = type { ptr, i8, ptr, i32, [30 x i8], ptr, i32, %struct.completion, %struct.completion, %struct.mutex, i32, %struct.mutex, i32, %struct.spinlock, [7 x i32], [4 x %struct.vfe_line], i8, i32, i8, ptr, ptr, %struct.vfe_isr_ops, %struct.camss_video_ops }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.vfe_line = type { i32, %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_rect, %struct.v4l2_rect, %struct.camss_video, %struct.vfe_output, ptr, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.camss_video = type { ptr, %struct.vb2_queue, %struct.video_device, %struct.media_pad, %struct.v4l2_format, i32, %struct.media_pipeline, ptr, %struct.mutex, %struct.mutex, i32, i32, ptr, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_format = type { i32, %union.anon.101 }
%union.anon.101 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.vfe_output = type { i8, [3 x i8], [2 x ptr], ptr, %struct.list_head, i32, %union.anon.104, i32, i32, i32, %struct.completion, %struct.completion }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, i32 }
%struct.vfe_isr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.camss_video_ops = type { ptr, ptr }
%struct.vfe_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.107, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.107 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.camss_async_subdev = type { %struct.v4l2_async_subdev, %struct.camss_camera_interface }
%struct.v4l2_async_subdev = type { i32, %union.anon.99, %struct.list_head, %struct.list_head }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, i16 }
%struct.camss_camera_interface = type { i8, %struct.csiphy_csi2_cfg }
%struct.csiphy_csi2_cfg = type { %struct.csiphy_lanes_cfg }
%struct.csiphy_lanes_cfg = type { i32, ptr, %struct.csiphy_lane }
%struct.csiphy_lane = type { i8, i8 }
%struct.csiphy_device = type { ptr, i8, %struct.v4l2_subdev, [2 x %struct.media_pad], ptr, ptr, i32, [30 x i8], ptr, ptr, i32, i32, %struct.csiphy_config, [2 x %struct.v4l2_mbus_framefmt], ptr, ptr, i32 }
%struct.csiphy_config = type { i8, i8, ptr }
%struct.resources = type { [17 x ptr], [17 x ptr], [17 x [17 x i32]], [17 x ptr], [17 x ptr] }
%struct.csid_device = type { ptr, i8, %struct.v4l2_subdev, [2 x %struct.media_pad], ptr, i32, [30 x i8], ptr, i32, ptr, %struct.completion, %struct.csid_testgen_config, %struct.csid_phy_config, [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_ctrl_handler, ptr, ptr, i32, ptr }
%struct.csid_testgen_config = type { i32, ptr, i8, i8 }
%struct.csid_phy_config = type { i8, i8, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.ispif_device = type { ptr, ptr, i32, [30 x i8], ptr, i32, ptr, i32, [2 x %struct.completion], i32, %struct.mutex, [2 x %struct.ispif_intf_cmd_reg], %struct.mutex, i32, ptr, ptr }
%struct.ispif_intf_cmd_reg = type { i32, i32 }
%struct.ispif_line = type { ptr, i8, i8, i8, i32, %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], ptr, i32 }

@camss_enable_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 695, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clock enable failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"camss_enable_clocks\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/platform/qcom/camss/camss.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@camss_enable_clocks._entry_ptr = internal global ptr @camss_enable_clocks._entry, section ".printk_index", align 4
@__initcall__kmod_qcom_camss__299_1527_qcom_camss_driver_init6 = internal global ptr @qcom_camss_driver_init, section ".initcall6.init", align 4
@qcom_camss_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @camss_probe, ptr @camss_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @camss_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @camss_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_camss_driver_exit = internal global ptr @qcom_camss_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias300 = internal constant [37 x i8] c"qcom_camss.alias=platform:qcom-camss\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [56 x i8] c"qcom_camss.description=Qualcomm Camera Subsystem driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [55 x i8] c"qcom_camss.author=Todor Tomov <todor.tomov@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [61 x i8] c"qcom_camss.file=drivers/media/platform/qcom/camss/qcom-camss\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [26 x i8] c"qcom_camss.license=GPL v2\00", section ".modinfo", align 1
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom-camss\00", [21 x i8] zeroinitializer }, align 32
@camss_dt_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8916-camss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996-camss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm660-camss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-camss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@camss_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @camss_runtime_suspend, ptr @camss_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,msm8916-camss\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,msm8996-camss\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,sdm660-camss\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,sdm845-camss\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Qualcomm Camera Subsystem\00", [38 x i8] zeroinitializer }, align 32
@camss_media_ops = internal constant { %struct.media_device_ops, [44 x i8] } { %struct.media_device_ops { ptr @v4l2_pipeline_link_notify, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@camss_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1389, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register V4L2 device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"camss_probe\00", [20 x i8] zeroinitializer }, align 32
@camss_probe._entry_ptr = internal global ptr @camss_probe._entry, section ".printk_index", align 4
@camss_subdev_notifier_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @camss_subdev_notifier_bound, ptr @camss_subdev_notifier_complete, ptr null }, [20 x i8] zeroinitializer }, align 32
@camss_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1405, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to register async subdev nodes: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@camss_probe._entry_ptr.15 = internal global ptr @camss_probe._entry.13, section ".printk_index", align 4
@camss_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 1412, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register subdev nodes: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@camss_probe._entry_ptr.18 = internal global ptr @camss_probe._entry.16, section ".printk_index", align 4
@camss_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 1419, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register media device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@camss_probe._entry_ptr.21 = internal global ptr @camss_probe._entry.19, section ".printk_index", align 4
@camss_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.2, i32 1426, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to configure power domains: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@camss_probe._entry_ptr.24 = internal global ptr @camss_probe._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@camss_of_parse_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 884, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot get remote parent\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"camss_of_parse_ports\00", [43 x i8] zeroinitializer }, align 32
@camss_of_parse_ports._entry_ptr = internal global ptr @camss_of_parse_ports._entry, section ".printk_index", align 4
@camss_init_subdevices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 958, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to init csiphy%d sub-device: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"camss_init_subdevices\00", [42 x i8] zeroinitializer }, align 32
@camss_init_subdevices._entry_ptr = internal global ptr @camss_init_subdevices._entry, section ".printk_index", align 4
@camss_init_subdevices._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 969, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to init csid%d sub-device: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@camss_init_subdevices._entry_ptr.31 = internal global ptr @camss_init_subdevices._entry.29, section ".printk_index", align 4
@camss_init_subdevices._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 977, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to init ispif sub-device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@camss_init_subdevices._entry_ptr.34 = internal global ptr @camss_init_subdevices._entry.32, section ".printk_index", align 4
@camss_init_subdevices._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.2, i32 986, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Fail to init vfe%d sub-device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@camss_init_subdevices._entry_ptr.37 = internal global ptr @camss_init_subdevices._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"top_ahb\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ispif_ahb\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csiphy0_timer\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"csiphy0\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csiphy0_clk_mux\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csiphy1_timer\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"csiphy1\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csiphy1_clk_mux\00", [16 x i8] zeroinitializer }, align 32
@csiphy_res_8x16 = internal constant { [2 x { [17 x ptr], <{ ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, [15 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, [16 x ptr] }> }], [728 x i8] } { [2 x { [17 x ptr], <{ ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, [15 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, [16 x ptr] }> }] [{ [17 x ptr], <{ ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, [15 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ ptr, ptr, ptr, ptr, [13 x ptr] }> <{ ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, [13 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, [15 x i32] }>, [13 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, [15 x i32] }> <{ i32 100000000, i32 200000000, [15 x i32] zeroinitializer }>, [13 x [17 x i32]] zeroinitializer }>, <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.42, ptr @.str.43, [15 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.42, [16 x ptr] zeroinitializer }> }, { [17 x ptr], <{ ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, [15 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ ptr, ptr, ptr, ptr, [13 x ptr] }> <{ ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.44, [13 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, [15 x i32] }>, [13 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, [15 x i32] }> <{ i32 100000000, i32 200000000, [15 x i32] zeroinitializer }>, [13 x [17 x i32]] zeroinitializer }>, <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.45, ptr @.str.46, [15 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.45, [16 x ptr] zeroinitializer }> }], [728 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi0_ahb\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"csi0\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi0_phy\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi0_pix\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi0_rdi\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"csid0\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi1_ahb\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"csi1\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi1_phy\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi1_pix\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi1_rdi\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"csid1\00", [26 x i8] zeroinitializer }, align 32
@csid_res_8x16 = internal constant { [2 x { <{ ptr, [16 x ptr] }>, <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, [15 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }], [728 x i8] } { [2 x { <{ ptr, [16 x ptr] }>, <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, [15 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }] [{ <{ ptr, [16 x ptr] }>, <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, [15 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { <{ ptr, [16 x ptr] }> <{ ptr @.str.48, [16 x ptr] zeroinitializer }>, <{ [8 x ptr], [9 x ptr] }> <{ [8 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.49, ptr @.str.40, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [9 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, [15 x i32] }>, [12 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, [15 x i32] }> <{ i32 100000000, i32 200000000, [15 x i32] zeroinitializer }>, [12 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.54, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.54, [16 x ptr] zeroinitializer }> }, { <{ ptr, [16 x ptr] }>, <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, [15 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { <{ ptr, [16 x ptr] }> <{ ptr @.str.48, [16 x ptr] zeroinitializer }>, <{ [8 x ptr], [9 x ptr] }> <{ [8 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.55, ptr @.str.40, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [9 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, [15 x i32] }>, [12 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, [15 x i32] }> <{ i32 100000000, i32 200000000, [15 x i32] zeroinitializer }>, [12 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.60, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.60, [16 x ptr] zeroinitializer }> }], [728 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vfe0\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi_vfe0\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ispif\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"csi_clk_mux\00", [20 x i8] zeroinitializer }, align 32
@ispif_res_8x16 = internal constant { { <{ [9 x ptr], [8 x ptr] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, ptr, [15 x ptr] }>, ptr }, [48 x i8] } { { <{ [9 x ptr], [8 x ptr] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, ptr, [15 x ptr] }>, ptr } { <{ [9 x ptr], [8 x ptr] }> <{ [9 x ptr] [ptr @.str.38, ptr @.str.40, ptr @.str.39, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59], [8 x ptr] zeroinitializer }>, <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.62, ptr @.str.63, [15 x ptr] zeroinitializer }>, <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.64, ptr @.str.65, [15 x ptr] zeroinitializer }>, ptr @.str.64 }, [48 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vfe_ahb\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vfe_axi\00", [24 x i8] zeroinitializer }, align 32
@vfe_res_8x16 = internal constant { [1 x { [17 x ptr], <{ ptr, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }>, <{ [17 x i32], [17 x i32], [15 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }], [364 x i8] } { [1 x { [17 x ptr], <{ ptr, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }>, <{ [17 x i32], [17 x i32], [15 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }] [{ [17 x ptr], <{ ptr, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }>, <{ [17 x i32], [17 x i32], [15 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ ptr, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }> <{ ptr @.str.38, ptr @.str.62, ptr @.str.63, ptr @.str.67, ptr @.str.68, ptr @.str.40, [11 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [15 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] [i32 50000000, i32 80000000, i32 100000000, i32 160000000, i32 177780000, i32 200000000, i32 266670000, i32 320000000, i32 400000000, i32 465000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [15 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.62, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.62, [16 x ptr] zeroinitializer }> }], [364 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csiphy2_timer\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"csiphy2\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csiphy2_clk_mux\00", [16 x i8] zeroinitializer }, align 32
@csiphy_res_8x96 = internal constant { [3 x { [17 x ptr], <{ ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, [16 x ptr] }> }], [1060 x i8] } { [3 x { [17 x ptr], <{ ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, [16 x ptr] }> }] [{ [17 x ptr], <{ ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ ptr, ptr, ptr, ptr, [13 x ptr] }> <{ ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, [13 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, [14 x i32] }> <{ i32 100000000, i32 200000000, i32 266666667, [14 x i32] zeroinitializer }>, [13 x [17 x i32]] zeroinitializer }>, <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.42, ptr @.str.43, [15 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.42, [16 x ptr] zeroinitializer }> }, { [17 x ptr], <{ ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ ptr, ptr, ptr, ptr, [13 x ptr] }> <{ ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.44, [13 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, [14 x i32] }> <{ i32 100000000, i32 200000000, i32 266666667, [14 x i32] zeroinitializer }>, [13 x [17 x i32]] zeroinitializer }>, <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.45, ptr @.str.46, [15 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.45, [16 x ptr] zeroinitializer }> }, { [17 x ptr], <{ ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ ptr, ptr, ptr, ptr, [13 x ptr] }> <{ ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.70, [13 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, [14 x i32] }> <{ i32 100000000, i32 200000000, i32 266666667, [14 x i32] zeroinitializer }>, [13 x [17 x i32]] zeroinitializer }>, <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.71, ptr @.str.72, [15 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.71, [16 x ptr] zeroinitializer }> }], [1060 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi2_ahb\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"csi2\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi2_phy\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi2_pix\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi2_rdi\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"csid2\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi3_ahb\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"csi3\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi3_phy\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi3_pix\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi3_rdi\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"csid3\00", [26 x i8] zeroinitializer }, align 32
@csid_res_8x96 = internal constant { [4 x { <{ ptr, [16 x ptr] }>, <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }], [1424 x i8] } { [4 x { <{ ptr, [16 x ptr] }>, <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }] [{ <{ ptr, [16 x ptr] }>, <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { <{ ptr, [16 x ptr] }> <{ ptr @.str.48, [16 x ptr] zeroinitializer }>, <{ [8 x ptr], [9 x ptr] }> <{ [8 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.49, ptr @.str.40, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [9 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [12 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, [14 x i32] }> <{ i32 100000000, i32 200000000, i32 266666667, [14 x i32] zeroinitializer }>, [12 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.54, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.54, [16 x ptr] zeroinitializer }> }, { <{ ptr, [16 x ptr] }>, <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { <{ ptr, [16 x ptr] }> <{ ptr @.str.48, [16 x ptr] zeroinitializer }>, <{ [8 x ptr], [9 x ptr] }> <{ [8 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.55, ptr @.str.40, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [9 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [12 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, [14 x i32] }> <{ i32 100000000, i32 200000000, i32 266666667, [14 x i32] zeroinitializer }>, [12 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.60, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.60, [16 x ptr] zeroinitializer }> }, { <{ ptr, [16 x ptr] }>, <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { <{ ptr, [16 x ptr] }> <{ ptr @.str.48, [16 x ptr] zeroinitializer }>, <{ [8 x ptr], [9 x ptr] }> <{ [8 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.74, ptr @.str.40, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], [9 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [12 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, [14 x i32] }> <{ i32 100000000, i32 200000000, i32 266666667, [14 x i32] zeroinitializer }>, [12 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.79, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.79, [16 x ptr] zeroinitializer }> }, { <{ ptr, [16 x ptr] }>, <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { <{ ptr, [16 x ptr] }> <{ ptr @.str.48, [16 x ptr] zeroinitializer }>, <{ [8 x ptr], [9 x ptr] }> <{ [8 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.80, ptr @.str.40, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84], [9 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [12 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, [14 x i32] }> <{ i32 100000000, i32 200000000, i32 266666667, [14 x i32] zeroinitializer }>, [12 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.85, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.85, [16 x ptr] zeroinitializer }> }], [1424 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vfe1\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi_vfe1\00", [23 x i8] zeroinitializer }, align 32
@ispif_res_8x96 = internal constant { { [17 x ptr], <{ ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ ptr, ptr, [15 x ptr] }>, ptr }, [48 x i8] } { { [17 x ptr], <{ ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ ptr, ptr, [15 x ptr] }>, ptr } { [17 x ptr] [ptr @.str.38, ptr @.str.40, ptr @.str.39, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr null, ptr null], <{ ptr, ptr, ptr, ptr, [13 x ptr] }> <{ ptr @.str.62, ptr @.str.63, ptr @.str.87, ptr @.str.88, [13 x ptr] zeroinitializer }>, <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.64, ptr @.str.65, [15 x ptr] zeroinitializer }>, ptr @.str.64 }, [48 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfe0_ahb\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vfe0_stream\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfe1_ahb\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vfe1_stream\00", [20 x i8] zeroinitializer }, align 32
@vfe_res_8x96 = internal constant { [2 x { [17 x ptr], <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, [14 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }], [728 x i8] } { [2 x { [17 x ptr], <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, [14 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }] [{ [17 x ptr], <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, [14 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ [8 x ptr], [9 x ptr] }> <{ [8 x ptr] [ptr @.str.38, ptr @.str.40, ptr @.str.62, ptr @.str.63, ptr @.str.67, ptr @.str.90, ptr @.str.68, ptr @.str.91], [9 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, [14 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 75000000, i32 100000000, i32 300000000, i32 320000000, i32 480000000, i32 600000000, [11 x i32] zeroinitializer }>, [14 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.62, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.62, [16 x ptr] zeroinitializer }> }, { [17 x ptr], <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, [14 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ [8 x ptr], [9 x ptr] }> <{ [8 x ptr] [ptr @.str.38, ptr @.str.40, ptr @.str.87, ptr @.str.88, ptr @.str.67, ptr @.str.92, ptr @.str.68, ptr @.str.93], [9 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, [14 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 75000000, i32 100000000, i32 300000000, i32 320000000, i32 480000000, i32 600000000, [11 x i32] zeroinitializer }>, [14 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.87, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.87, [16 x ptr] zeroinitializer }> }], [728 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csiphy_ahb2crif\00", [16 x i8] zeroinitializer }, align 32
@csiphy_res_660 = internal constant { [3 x { [17 x ptr], <{ ptr, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, [16 x ptr] }> }], [1060 x i8] } { [3 x { [17 x ptr], <{ ptr, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, [16 x ptr] }> }] [{ [17 x ptr], <{ ptr, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ ptr, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }> <{ ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.51, ptr @.str.95, [11 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, [14 x i32] }> <{ i32 100000000, i32 200000000, i32 269333333, [14 x i32] zeroinitializer }>, [13 x [17 x i32]] zeroinitializer }>, <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.42, ptr @.str.43, [15 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.42, [16 x ptr] zeroinitializer }> }, { [17 x ptr], <{ ptr, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ ptr, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }> <{ ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.44, ptr @.str.57, ptr @.str.95, [11 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, [14 x i32] }> <{ i32 100000000, i32 200000000, i32 269333333, [14 x i32] zeroinitializer }>, [13 x [17 x i32]] zeroinitializer }>, <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.45, ptr @.str.46, [15 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.45, [16 x ptr] zeroinitializer }> }, { [17 x ptr], <{ ptr, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, ptr, [15 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ ptr, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }> <{ ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.70, ptr @.str.76, ptr @.str.95, [11 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [13 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, [14 x i32] }> <{ i32 100000000, i32 200000000, i32 269333333, [14 x i32] zeroinitializer }>, [13 x [17 x i32]] zeroinitializer }>, <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.71, ptr @.str.72, [15 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.71, [16 x ptr] zeroinitializer }> }], [1060 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_sec\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cphy_csid0\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cphy_csid1\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cphy_csid2\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cphy_csid3\00", [21 x i8] zeroinitializer }, align 32
@csid_res_660 = internal constant { [4 x { <{ ptr, ptr, [15 x ptr] }>, <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, [12 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }], [1424 x i8] } { [4 x { <{ ptr, ptr, [15 x ptr] }>, <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, [12 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }] [{ <{ ptr, ptr, [15 x ptr] }>, <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, [12 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.48, ptr @.str.97, [15 x ptr] zeroinitializer }>, <{ [9 x ptr], [8 x ptr] }> <{ [9 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.49, ptr @.str.40, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.98], [8 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, [12 x i32] }>, [12 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 100000000, i32 200000000, i32 310000000, i32 404000000, i32 465000000, [12 x i32] zeroinitializer }>, [12 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.54, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.54, [16 x ptr] zeroinitializer }> }, { <{ ptr, ptr, [15 x ptr] }>, <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, [12 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.48, ptr @.str.97, [15 x ptr] zeroinitializer }>, <{ [9 x ptr], [8 x ptr] }> <{ [9 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.55, ptr @.str.40, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.99], [8 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, [12 x i32] }>, [12 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 100000000, i32 200000000, i32 310000000, i32 404000000, i32 465000000, [12 x i32] zeroinitializer }>, [12 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.60, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.60, [16 x ptr] zeroinitializer }> }, { <{ ptr, ptr, [15 x ptr] }>, <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, [12 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.48, ptr @.str.97, [15 x ptr] zeroinitializer }>, <{ [9 x ptr], [8 x ptr] }> <{ [9 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.74, ptr @.str.40, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.100], [8 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, [12 x i32] }>, [12 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 100000000, i32 200000000, i32 310000000, i32 404000000, i32 465000000, [12 x i32] zeroinitializer }>, [12 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.79, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.79, [16 x ptr] zeroinitializer }> }, { <{ ptr, ptr, [15 x ptr] }>, <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, [12 x i32] }>, [12 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.48, ptr @.str.97, [15 x ptr] zeroinitializer }>, <{ [9 x ptr], [8 x ptr] }> <{ [9 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.80, ptr @.str.40, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.101], [8 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, i32, i32, [12 x i32] }>, [12 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 100000000, i32 200000000, i32 310000000, i32 404000000, i32 465000000, [12 x i32] zeroinitializer }>, [12 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.85, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.85, [16 x ptr] zeroinitializer }> }], [1424 x i8] zeroinitializer }, align 32
@ispif_res_660 = internal constant { { [17 x ptr], <{ ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ ptr, ptr, [15 x ptr] }>, ptr }, [48 x i8] } { { [17 x ptr], <{ ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ ptr, ptr, [15 x ptr] }>, ptr } { [17 x ptr] [ptr @.str.38, ptr @.str.40, ptr @.str.39, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr null, ptr null], <{ ptr, ptr, ptr, ptr, [13 x ptr] }> <{ ptr @.str.62, ptr @.str.63, ptr @.str.87, ptr @.str.88, [13 x ptr] zeroinitializer }>, <{ ptr, ptr, [15 x ptr] }> <{ ptr @.str.64, ptr @.str.65, [15 x ptr] zeroinitializer }>, ptr @.str.64 }, [48 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"throttle_axi\00", [19 x i8] zeroinitializer }, align 32
@vfe_res_660 = internal constant { [2 x { [17 x ptr], <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ [8 x i32], [9 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }], [728 x i8] } { [2 x { [17 x ptr], <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ [8 x i32], [9 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }] [{ [17 x ptr], <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ [8 x i32], [9 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ [9 x ptr], [8 x ptr] }> <{ [9 x ptr] [ptr @.str.104, ptr @.str.38, ptr @.str.40, ptr @.str.62, ptr @.str.63, ptr @.str.67, ptr @.str.90, ptr @.str.68, ptr @.str.91], [8 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ [8 x i32], [9 x i32] }>, [13 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ [8 x i32], [9 x i32] }> <{ [8 x i32] [i32 120000000, i32 200000000, i32 256000000, i32 300000000, i32 404000000, i32 480000000, i32 540000000, i32 576000000], [9 x i32] zeroinitializer }>, [13 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.62, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.62, [16 x ptr] zeroinitializer }> }, { [17 x ptr], <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ [8 x i32], [9 x i32] }>, [13 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ [9 x ptr], [8 x ptr] }> <{ [9 x ptr] [ptr @.str.104, ptr @.str.38, ptr @.str.40, ptr @.str.87, ptr @.str.88, ptr @.str.67, ptr @.str.92, ptr @.str.68, ptr @.str.93], [8 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], <{ [8 x i32], [9 x i32] }>, [13 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ [8 x i32], [9 x i32] }> <{ [8 x i32] [i32 120000000, i32 200000000, i32 256000000, i32 300000000, i32 404000000, i32 480000000, i32 540000000, i32 576000000], [9 x i32] zeroinitializer }>, [13 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.87, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.87, [16 x ptr] zeroinitializer }> }], [728 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"camnoc_axi\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"soc_ahb\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slow_ahb_src\00", [19 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpas_ahb\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cphy_rx_src\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csiphy0_timer_src\00", [46 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csiphy1_timer_src\00", [46 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csiphy2_timer_src\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"csiphy3\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csiphy3_timer_src\00", [46 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csiphy3_timer\00", [18 x i8] zeroinitializer }, align 32
@csiphy_res_845 = internal constant { [4 x { [17 x ptr], <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [9 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }], [1424 x i8] } { [4 x { [17 x ptr], <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [9 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }] [{ [17 x ptr], <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [9 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ [8 x ptr], [9 x ptr] }> <{ [8 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.42, ptr @.str.111, ptr @.str.41], [9 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [9 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, [14 x i32] }> <{ i32 19200000, i32 240000000, i32 269333333, [14 x i32] zeroinitializer }>, [9 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.42, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.42, [16 x ptr] zeroinitializer }> }, { [17 x ptr], <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [9 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ [8 x ptr], [9 x ptr] }> <{ [8 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.45, ptr @.str.112, ptr @.str.44], [9 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [9 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, [14 x i32] }> <{ i32 19200000, i32 240000000, i32 269333333, [14 x i32] zeroinitializer }>, [9 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.45, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.45, [16 x ptr] zeroinitializer }> }, { [17 x ptr], <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [9 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ [8 x ptr], [9 x ptr] }> <{ [8 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.71, ptr @.str.113, ptr @.str.70], [9 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [9 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, [14 x i32] }> <{ i32 19200000, i32 240000000, i32 269333333, [14 x i32] zeroinitializer }>, [9 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.71, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.71, [16 x ptr] zeroinitializer }> }, { [17 x ptr], <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [9 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ [8 x ptr], [9 x ptr] }> <{ [8 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.114, ptr @.str.115, ptr @.str.116], [9 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], [17 x i32], <{ i32, i32, i32, [14 x i32] }>, [9 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, i32, i32, [14 x i32] }> <{ i32 19200000, i32 240000000, i32 269333333, [14 x i32] zeroinitializer }>, [9 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.114, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.114, [16 x ptr] zeroinitializer }> }], [1424 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdda-csi0\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfe0_src\00", [23 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vfe0_cphy_rx\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi0_src\00", [23 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdda-csi1\00", [22 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfe1_src\00", [23 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vfe1_cphy_rx\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi1_src\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdda-csi2\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfe_lite\00", [23 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vfe_lite_src\00", [19 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vfe_lite_cphy_rx\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi2_src\00", [23 x i8] zeroinitializer }, align 32
@csid_res_845 = internal constant { [3 x { <{ ptr, [16 x ptr] }>, <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], <{ i32, [16 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }], [1060 x i8] } { [3 x { <{ ptr, [16 x ptr] }>, <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], <{ i32, [16 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }] [{ <{ ptr, [16 x ptr] }>, <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], <{ i32, [16 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { <{ ptr, [16 x ptr] }> <{ ptr @.str.118, [16 x ptr] zeroinitializer }>, <{ [9 x ptr], [8 x ptr] }> <{ [9 x ptr] [ptr @.str.109, ptr @.str.110, ptr @.str.108, ptr @.str.107, ptr @.str.62, ptr @.str.119, ptr @.str.120, ptr @.str.50, ptr @.str.121], [8 x ptr] zeroinitializer }>, <{ [17 x i32], <{ i32, [16 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, <{ i32, [16 x i32] }> <{ i32 384000000, [16 x i32] zeroinitializer }>, <{ i32, [16 x i32] }> <{ i32 80000000, [16 x i32] zeroinitializer }>, [17 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 19200000, i32 100000000, i32 320000000, i32 404000000, i32 480000000, i32 600000000, [11 x i32] zeroinitializer }>, <{ i32, [16 x i32] }> <{ i32 320000000, [16 x i32] zeroinitializer }>, [17 x i32] zeroinitializer, <{ i32, i32, i32, i32, [13 x i32] }> <{ i32 19200000, i32 75000000, i32 384000000, i32 538666667, [13 x i32] zeroinitializer }>, <{ i32, [16 x i32] }> <{ i32 384000000, [16 x i32] zeroinitializer }>, [8 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.54, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.54, [16 x ptr] zeroinitializer }> }, { <{ ptr, [16 x ptr] }>, <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], <{ i32, [16 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { <{ ptr, [16 x ptr] }> <{ ptr @.str.122, [16 x ptr] zeroinitializer }>, <{ [9 x ptr], [8 x ptr] }> <{ [9 x ptr] [ptr @.str.109, ptr @.str.110, ptr @.str.108, ptr @.str.107, ptr @.str.87, ptr @.str.123, ptr @.str.124, ptr @.str.56, ptr @.str.125], [8 x ptr] zeroinitializer }>, <{ [17 x i32], <{ i32, [16 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, <{ i32, [16 x i32] }> <{ i32 384000000, [16 x i32] zeroinitializer }>, <{ i32, [16 x i32] }> <{ i32 80000000, [16 x i32] zeroinitializer }>, [17 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 19200000, i32 100000000, i32 320000000, i32 404000000, i32 480000000, i32 600000000, [11 x i32] zeroinitializer }>, <{ i32, [16 x i32] }> <{ i32 320000000, [16 x i32] zeroinitializer }>, [17 x i32] zeroinitializer, <{ i32, i32, i32, i32, [13 x i32] }> <{ i32 19200000, i32 75000000, i32 384000000, i32 538666667, [13 x i32] zeroinitializer }>, <{ i32, [16 x i32] }> <{ i32 384000000, [16 x i32] zeroinitializer }>, [8 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.60, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.60, [16 x ptr] zeroinitializer }> }, { <{ ptr, [16 x ptr] }>, <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], <{ i32, [16 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { <{ ptr, [16 x ptr] }> <{ ptr @.str.126, [16 x ptr] zeroinitializer }>, <{ [9 x ptr], [8 x ptr] }> <{ [9 x ptr] [ptr @.str.109, ptr @.str.110, ptr @.str.108, ptr @.str.107, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.75, ptr @.str.130], [8 x ptr] zeroinitializer }>, <{ [17 x i32], <{ i32, [16 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, <{ i32, [16 x i32] }> <{ i32 384000000, [16 x i32] zeroinitializer }>, <{ i32, [16 x i32] }> <{ i32 80000000, [16 x i32] zeroinitializer }>, [17 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 19200000, i32 100000000, i32 320000000, i32 404000000, i32 480000000, i32 600000000, [11 x i32] zeroinitializer }>, <{ i32, [16 x i32] }> <{ i32 320000000, [16 x i32] zeroinitializer }>, [17 x i32] zeroinitializer, <{ i32, i32, i32, i32, [13 x i32] }> <{ i32 19200000, i32 75000000, i32 384000000, i32 538666667, [13 x i32] zeroinitializer }>, <{ i32, [16 x i32] }> <{ i32 384000000, [16 x i32] zeroinitializer }>, [8 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.79, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.79, [16 x ptr] zeroinitializer }> }], [1060 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfe0_axi\00", [23 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfe1_axi\00", [23 x i8] zeroinitializer }, align 32
@vfe_res_845 = internal constant { <{ { [17 x ptr], <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, [17 x i32], <{ i32, [16 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }, { [17 x ptr], <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, [17 x i32], <{ i32, [16 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }, { [17 x ptr], <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, [16 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [9 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } }>, [1060 x i8] } { <{ { [17 x ptr], <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, [17 x i32], <{ i32, [16 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }, { [17 x ptr], <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, [17 x i32], <{ i32, [16 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> }, { [17 x ptr], <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, [16 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [9 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } }> <{ { [17 x ptr], <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, [17 x i32], <{ i32, [16 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ [9 x ptr], [8 x ptr] }> <{ [9 x ptr] [ptr @.str.106, ptr @.str.109, ptr @.str.108, ptr @.str.107, ptr @.str.62, ptr @.str.132, ptr @.str.119, ptr @.str.50, ptr @.str.121], [8 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, [17 x i32], <{ i32, [16 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, [16 x i32] }> <{ i32 80000000, [16 x i32] zeroinitializer }>, [17 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 19200000, i32 100000000, i32 320000000, i32 404000000, i32 480000000, i32 600000000, [11 x i32] zeroinitializer }>, [17 x i32] zeroinitializer, <{ i32, [16 x i32] }> <{ i32 320000000, [16 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [13 x i32] }> <{ i32 19200000, i32 75000000, i32 384000000, i32 538666667, [13 x i32] zeroinitializer }>, <{ i32, [16 x i32] }> <{ i32 384000000, [16 x i32] zeroinitializer }>, [8 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.62, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.62, [16 x ptr] zeroinitializer }> }, { [17 x ptr], <{ [9 x ptr], [8 x ptr] }>, <{ [17 x i32], [17 x i32], <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, [17 x i32], <{ i32, [16 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ [9 x ptr], [8 x ptr] }> <{ [9 x ptr] [ptr @.str.106, ptr @.str.109, ptr @.str.108, ptr @.str.107, ptr @.str.87, ptr @.str.133, ptr @.str.123, ptr @.str.56, ptr @.str.125], [8 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, [17 x i32], <{ i32, [16 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [8 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, [16 x i32] }> <{ i32 80000000, [16 x i32] zeroinitializer }>, [17 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 19200000, i32 100000000, i32 320000000, i32 404000000, i32 480000000, i32 600000000, [11 x i32] zeroinitializer }>, [17 x i32] zeroinitializer, <{ i32, [16 x i32] }> <{ i32 320000000, [16 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [13 x i32] }> <{ i32 19200000, i32 75000000, i32 384000000, i32 538666667, [13 x i32] zeroinitializer }>, <{ i32, [16 x i32] }> <{ i32 384000000, [16 x i32] zeroinitializer }>, [8 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.87, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.87, [16 x ptr] zeroinitializer }> }, { [17 x ptr], <{ [8 x ptr], [9 x ptr] }>, <{ [17 x i32], [17 x i32], <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, [16 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [9 x [17 x i32]] }>, <{ ptr, [16 x ptr] }>, <{ ptr, [16 x ptr] }> } { [17 x ptr] zeroinitializer, <{ [8 x ptr], [9 x ptr] }> <{ [8 x ptr] [ptr @.str.106, ptr @.str.109, ptr @.str.108, ptr @.str.107, ptr @.str.127, ptr @.str.128, ptr @.str.75, ptr @.str.130], [9 x ptr] zeroinitializer }>, <{ [17 x i32], [17 x i32], <{ i32, [16 x i32] }>, [17 x i32], <{ i32, i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, [16 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }>, <{ i32, [16 x i32] }>, [9 x [17 x i32]] }> <{ [17 x i32] zeroinitializer, [17 x i32] zeroinitializer, <{ i32, [16 x i32] }> <{ i32 80000000, [16 x i32] zeroinitializer }>, [17 x i32] zeroinitializer, <{ i32, i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 19200000, i32 100000000, i32 320000000, i32 404000000, i32 480000000, i32 600000000, [11 x i32] zeroinitializer }>, <{ i32, [16 x i32] }> <{ i32 320000000, [16 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [13 x i32] }> <{ i32 19200000, i32 75000000, i32 384000000, i32 538666667, [13 x i32] zeroinitializer }>, <{ i32, [16 x i32] }> <{ i32 384000000, [16 x i32] zeroinitializer }>, [9 x [17 x i32]] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.127, [16 x ptr] zeroinitializer }>, <{ ptr, [16 x ptr] }> <{ ptr @.str.127, [16 x ptr] zeroinitializer }> } }>, [1060 x i8] zeroinitializer }, align 32
@camss_register_entities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 1011, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to register csiphy%d entity: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"camss_register_entities\00", [40 x i8] zeroinitializer }, align 32
@camss_register_entities._entry_ptr = internal global ptr @camss_register_entities._entry, section ".printk_index", align 4
@camss_register_entities._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.2, i32 1022, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register csid%d entity: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@camss_register_entities._entry_ptr.139 = internal global ptr @camss_register_entities._entry.137, section ".printk_index", align 4
@camss_register_entities._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.136, ptr @.str.2, i32 1031, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to register ispif entities: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@camss_register_entities._entry_ptr.142 = internal global ptr @camss_register_entities._entry.140, section ".printk_index", align 4
@camss_register_entities._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.136, ptr @.str.2, i32 1041, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to register vfe%d entities: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@camss_register_entities._entry_ptr.145 = internal global ptr @camss_register_entities._entry.143, section ".printk_index", align 4
@camss_register_entities._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.136, ptr @.str.2, i32 1059, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to link %s->%s entities: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@camss_register_entities._entry_ptr.148 = internal global ptr @camss_register_entities._entry.146, section ".printk_index", align 4
@camss_register_entities._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.136, ptr @.str.2, i32 1079, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@camss_register_entities._entry_ptr.150 = internal global ptr @camss_register_entities._entry.149, section ".printk_index", align 4
@camss_register_entities._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.136, ptr @.str.2, i32 1101, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@camss_register_entities._entry_ptr.152 = internal global ptr @camss_register_entities._entry.151, section ".printk_index", align 4
@camss_register_entities._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.136, ptr @.str.2, i32 1122, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@camss_register_entities._entry_ptr.154 = internal global ptr @camss_register_entities._entry.153, section ".printk_index", align 4
@camss_subdev_notifier_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 1211, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No source pad in external entity\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"camss_subdev_notifier_complete\00", [33 x i8] zeroinitializer }, align 32
@camss_subdev_notifier_complete._entry_ptr = internal global ptr @camss_subdev_notifier_complete._entry, section ".printk_index", align 4
@camss_subdev_notifier_complete._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.156, ptr @.str.2, i32 1221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@camss_subdev_notifier_complete._entry_ptr.158 = internal global ptr @camss_subdev_notifier_complete._entry.157, section ".printk_index", align 4
@switch.table.camss_delete = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 2, i32 3], [20 x i8] zeroinitializer }, align 32
@switch.table.camss_probe = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @csiphy_res_8x16, ptr @csiphy_res_8x96, ptr @csiphy_res_660, ptr @csiphy_res_845], [16 x i8] zeroinitializer }, align 32
@switch.table.camss_probe.159 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @csid_res_8x16, ptr @csid_res_8x96, ptr @csid_res_660, ptr @csid_res_845], [16 x i8] zeroinitializer }, align 32
@switch.table.camss_probe.160 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @ispif_res_8x16, ptr @ispif_res_8x96, ptr @ispif_res_660, ptr null], [16 x i8] zeroinitializer }, align 32
@switch.table.camss_probe.161 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @vfe_res_8x16, ptr @vfe_res_8x96, ptr @vfe_res_660, ptr @vfe_res_845], [16 x i8] zeroinitializer }, align 32
@switch.table.camss_configure_pd = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 2, i32 3], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 695, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant [18 x i8] c"qcom_camss_driver\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1517, i32 31 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1521, i32 11 }
@___asan_gen_.186 = private unnamed_addr constant [15 x i8] c"camss_dt_match\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1491, i32 34 }
@___asan_gen_.189 = private unnamed_addr constant [13 x i8] c"camss_pm_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1511, i32 32 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1306, i32 44 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1312, i32 9 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1318, i32 9 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1324, i32 9 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1381, i32 34 }
@___asan_gen_.207 = private unnamed_addr constant [16 x i8] c"camss_media_ops\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1239, i32 38 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1389, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [26 x i8] c"camss_subdev_notifier_ops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1234, i32 52 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1403, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1411, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1418, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1426, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 884, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 956, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 967, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 976, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 985, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 37, i32 14 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 37, i32 25 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 37, i32 38 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 37, i32 45 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 42, i32 12 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 42, i32 23 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 49, i32 45 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 54, i32 12 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 54, i32 23 }
@___asan_gen_.309 = private unnamed_addr constant [16 x i8] c"csiphy_res_8x16\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 33, i32 31 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 62, i32 18 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 63, i32 38 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 64, i32 7 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 64, i32 15 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 64, i32 27 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 64, i32 39 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 73, i32 12 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 80, i32 38 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 81, i32 7 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 81, i32 15 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 81, i32 27 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 81, i32 39 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 90, i32 12 }
@___asan_gen_.351 = private unnamed_addr constant [14 x i8] c"csid_res_8x16\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 59, i32 31 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 100, i32 23 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 100, i32 31 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 101, i32 11 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 101, i32 20 }
@___asan_gen_.366 = private unnamed_addr constant [15 x i8] c"ispif_res_8x16\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 95, i32 37 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 111, i32 7 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 111, i32 18 }
@___asan_gen_.375 = private unnamed_addr constant [13 x i8] c"vfe_res_8x16\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 106, i32 31 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 156, i32 45 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 161, i32 12 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 161, i32 23 }
@___asan_gen_.387 = private unnamed_addr constant [16 x i8] c"csiphy_res_8x96\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 128, i32 31 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 204, i32 38 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 205, i32 7 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 205, i32 15 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 205, i32 27 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 205, i32 39 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 214, i32 12 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 221, i32 38 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 222, i32 7 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 222, i32 15 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 222, i32 27 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 222, i32 39 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 231, i32 12 }
@___asan_gen_.426 = private unnamed_addr constant [14 x i8] c"csid_res_8x96\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 166, i32 31 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 243, i32 43 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 243, i32 51 }
@___asan_gen_.435 = private unnamed_addr constant [15 x i8] c"ispif_res_8x96\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 236, i32 37 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 253, i32 7 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 253, i32 30 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 271, i32 7 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 271, i32 30 }
@___asan_gen_.450 = private unnamed_addr constant [13 x i8] c"vfe_res_8x96\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 248, i32 31 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 291, i32 19 }
@___asan_gen_.456 = private unnamed_addr constant [15 x i8] c"csiphy_res_660\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 286, i32 31 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 333, i32 26 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 336, i32 7 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 356, i32 7 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 376, i32 7 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 396, i32 7 }
@___asan_gen_.474 = private unnamed_addr constant [13 x i8] c"csid_res_660\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 330, i32 31 }
@___asan_gen_.477 = private unnamed_addr constant [14 x i8] c"ispif_res_660\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 412, i32 37 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 428, i32 14 }
@___asan_gen_.483 = private unnamed_addr constant [12 x i8] c"vfe_res_660\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 424, i32 31 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 472, i32 14 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 472, i32 28 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 472, i32 39 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 473, i32 5 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 473, i32 17 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 474, i32 5 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 492, i32 5 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 510, i32 5 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 527, i32 32 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 528, i32 5 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 528, i32 26 }
@___asan_gen_.519 = private unnamed_addr constant [15 x i8] c"csiphy_res_845\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 468, i32 31 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 545, i32 18 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 547, i32 24 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 548, i32 5 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 549, i32 5 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 565, i32 18 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 567, i32 24 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 568, i32 5 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 569, i32 5 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 585, i32 18 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 587, i32 16 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 587, i32 28 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 588, i32 5 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 589, i32 5 }
@___asan_gen_.561 = private unnamed_addr constant [13 x i8] c"csid_res_845\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 542, i32 31 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 609, i32 24 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 629, i32 24 }
@___asan_gen_.570 = private unnamed_addr constant [12 x i8] c"vfe_res_845\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 604, i32 31 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1009, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1020, i32 4 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1030, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1039, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1055, i32 5 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1075, i32 6 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1097, i32 7 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1118, i32 7 }
@___asan_gen_.621 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1210, i32 5 }
@___asan_gen_.624 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.625 = private constant [45 x i8] c"../drivers/media/platform/qcom/camss/camss.c\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 1219, i32 5 }
@___asan_gen_.627 = private unnamed_addr constant [26 x i8] c"switch.table.camss_delete\00", align 1
@___asan_gen_.628 = private unnamed_addr constant [25 x i8] c"switch.table.camss_probe\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [29 x i8] c"switch.table.camss_probe.159\00", align 1
@___asan_gen_.630 = private unnamed_addr constant [29 x i8] c"switch.table.camss_probe.160\00", align 1
@___asan_gen_.631 = private unnamed_addr constant [29 x i8] c"switch.table.camss_probe.161\00", align 1
@___asan_gen_.632 = private unnamed_addr constant [32 x i8] c"switch.table.camss_configure_pd\00", align 1
@llvm.compiler.used = appending global [190 x ptr] [ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_qcom_camss_driver_exit, ptr @__initcall__kmod_qcom_camss__299_1527_qcom_camss_driver_init6, ptr @camss_enable_clocks._entry, ptr @camss_enable_clocks._entry_ptr, ptr @camss_init_subdevices._entry, ptr @camss_init_subdevices._entry.29, ptr @camss_init_subdevices._entry.32, ptr @camss_init_subdevices._entry.35, ptr @camss_init_subdevices._entry_ptr, ptr @camss_init_subdevices._entry_ptr.31, ptr @camss_init_subdevices._entry_ptr.34, ptr @camss_init_subdevices._entry_ptr.37, ptr @camss_of_parse_ports._entry, ptr @camss_of_parse_ports._entry_ptr, ptr @camss_probe._entry, ptr @camss_probe._entry.13, ptr @camss_probe._entry.16, ptr @camss_probe._entry.19, ptr @camss_probe._entry.22, ptr @camss_probe._entry_ptr, ptr @camss_probe._entry_ptr.15, ptr @camss_probe._entry_ptr.18, ptr @camss_probe._entry_ptr.21, ptr @camss_probe._entry_ptr.24, ptr @camss_register_entities._entry, ptr @camss_register_entities._entry.137, ptr @camss_register_entities._entry.140, ptr @camss_register_entities._entry.143, ptr @camss_register_entities._entry.146, ptr @camss_register_entities._entry.149, ptr @camss_register_entities._entry.151, ptr @camss_register_entities._entry.153, ptr @camss_register_entities._entry_ptr, ptr @camss_register_entities._entry_ptr.139, ptr @camss_register_entities._entry_ptr.142, ptr @camss_register_entities._entry_ptr.145, ptr @camss_register_entities._entry_ptr.148, ptr @camss_register_entities._entry_ptr.150, ptr @camss_register_entities._entry_ptr.152, ptr @camss_register_entities._entry_ptr.154, ptr @camss_subdev_notifier_complete._entry, ptr @camss_subdev_notifier_complete._entry.157, ptr @camss_subdev_notifier_complete._entry_ptr, ptr @camss_subdev_notifier_complete._entry_ptr.158, ptr @qcom_camss_driver_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @qcom_camss_driver, ptr @.str.5, ptr @camss_dt_match, ptr @camss_pm_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @camss_media_ops, ptr @.str.11, ptr @.str.12, ptr @camss_subdev_notifier_ops, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @csiphy_res_8x16, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @csid_res_8x16, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @ispif_res_8x16, ptr @.str.67, ptr @.str.68, ptr @vfe_res_8x16, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @csiphy_res_8x96, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @csid_res_8x96, ptr @.str.87, ptr @.str.88, ptr @ispif_res_8x96, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @vfe_res_8x96, ptr @.str.95, ptr @csiphy_res_660, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @csid_res_660, ptr @ispif_res_660, ptr @.str.104, ptr @vfe_res_660, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @csiphy_res_845, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @csid_res_845, ptr @.str.132, ptr @.str.133, ptr @vfe_res_845, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.155, ptr @.str.156, ptr @switch.table.camss_delete, ptr @switch.table.camss_probe, ptr @switch.table.camss_probe.159, ptr @switch.table.camss_probe.160, ptr @switch.table.camss_probe.161, ptr @switch.table.camss_configure_pd], section "llvm.metadata"
@0 = internal global [161 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_enable_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_camss_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_dt_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_media_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_subdev_notifier_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_of_parse_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_init_subdevices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_init_subdevices._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_init_subdevices._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_init_subdevices._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_res_8x16 to i32), i32 2856, i32 3584, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_res_8x16 to i32), i32 2856, i32 3584, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_res_8x16 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_res_8x16 to i32), i32 1428, i32 1792, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_res_8x96 to i32), i32 4284, i32 5344, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_res_8x96 to i32), i32 5712, i32 7136, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_res_8x96 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_res_8x96 to i32), i32 2856, i32 3584, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_res_660 to i32), i32 4284, i32 5344, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_res_660 to i32), i32 5712, i32 7136, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_res_660 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_res_660 to i32), i32 2856, i32 3584, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_res_845 to i32), i32 5712, i32 7136, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_res_845 to i32), i32 4284, i32 5344, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_res_845 to i32), i32 4284, i32 5344, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_register_entities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_register_entities._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_register_entities._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_register_entities._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_register_entities._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_register_entities._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_register_entities._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_register_entities._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_subdev_notifier_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camss_subdev_notifier_complete._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.camss_delete to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.camss_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.camss_probe.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.camss_probe.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.camss_probe.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.camss_configure_pd to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camss_add_clock_margin(ptr nocapture noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rate, align 8
  %mul = mul i64 %1, 105
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul, i32 0) #13, !srcloc !326
  %asmresult.i.i.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #13, !srcloc !327
  %asmresult10.i.i.i = extractvalue { i64, i32 } %3, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 6
  %4 = ptrtoint ptr %rate to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %div1581.i.i, ptr %rate, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @camss_enable_clocks(i32 noundef %nclocks, ptr nocapture noundef readonly %clock, ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nclocks)
  %cmp28 = icmp sgt i32 %nclocks, 0
  br i1 %cmp28, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.camss_clock, ptr %clock, i32 %i.029
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %for.body.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %for.body.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %retval.0.i.ph) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.029)
  %cmp231.not = icmp eq i32 %i.029, 0
  br i1 %cmp231.not, label %do.end.cleanup_crit_edge, label %do.end.for.body3_crit_edge

do.end.for.body3_crit_edge:                       ; preds = %do.end
  br label %for.body3

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %if.end.i
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %nclocks
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %do.end.for.body3_crit_edge
  %i.132.in = phi i32 [ %i.132, %for.body3.for.body3_crit_edge ], [ %i.029, %do.end.for.body3_crit_edge ]
  %i.132 = add nsw i32 %i.132.in, -1
  %arrayidx4 = getelementptr %struct.camss_clock, ptr %clock, i32 %i.132
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %cmp2 = icmp sgt i32 %i.132.in, 1
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.cleanup_crit_edge

for.body3.cleanup_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3

cleanup:                                          ; preds = %for.body3.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %for.body3.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camss_disable_clocks(i32 noundef %nclocks, ptr nocapture noundef readonly %clock) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i.03 = add i32 %nclocks, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.03)
  %cmp4 = icmp sgt i32 %i.03, -1
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.03, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.camss_clock, ptr %clock, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %1) #10
  tail call void @clk_unprepare(ptr noundef %1) #10
  %i.0 = add nsw i32 %i.05, -1
  %cmp = icmp sgt i32 %i.05, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @camss_find_sensor(ptr nocapture noundef readonly %entity) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %if.end5.while.cond_crit_edge, %entry
  %entity.addr.0 = phi ptr [ %entity, %entry ], [ %5, %if.end5.while.cond_crit_edge ]
  %pads = getelementptr inbounds %struct.media_entity, ptr %entity.addr.0, i32 0, i32 9
  %0 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pads, align 4
  %flags = getelementptr inbounds %struct.media_pad, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %if.end

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %while.cond
  %call = tail call ptr @media_entity_remote_pad(ptr noundef %1) #10
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %entity2 = getelementptr inbounds %struct.media_pad, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %entity2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entity2, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_media_entity_v4l2_subdev.exit:                 ; preds = %lor.lhs.false
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %if.end5, label %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %is_media_entity_v4l2_subdev.exit
  %function = getelementptr inbounds %struct.media_entity, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %function, align 4
  %cmp = icmp eq i32 %9, 131073
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end5.while.cond_crit_edge

if.end5.while.cond_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5.cleanup_crit_edge, %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %while.cond.cleanup_crit_edge ], [ null, %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %5, %if.end5.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @camss_get_link_freq(ptr nocapture noundef readonly %entity, i32 noundef %bpp, i32 noundef %lanes) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end5.i.while.cond.i_crit_edge, %entry
  %entity.addr.0.i = phi ptr [ %entity, %entry ], [ %5, %if.end5.i.while.cond.i_crit_edge ]
  %pads.i = getelementptr inbounds %struct.media_entity, ptr %entity.addr.0.i, i32 0, i32 9
  %0 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pads.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.i.cleanup_crit_edge, label %if.end.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %while.cond.i
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %1) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %entity2.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %entity2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entity2.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 2
  br i1 %cmp.i.i, label %if.end5.i, label %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %is_media_entity_v4l2_subdev.exit.i
  %function.i = getelementptr inbounds %struct.media_entity, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %function.i, align 4
  %cmp.i = icmp eq i32 %9, 131073
  br i1 %cmp.i, label %cond.end, label %if.end5.i.while.cond.i_crit_edge

if.end5.i.while.cond.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

cond.end:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_handler, align 4
  %mul = shl i32 %lanes, 1
  %call3 = tail call i64 @v4l2_get_link_freq(ptr noundef %11, i32 noundef %bpp, i32 noundef %mul) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge
  %retval.0 = phi i64 [ %call3, %cond.end ], [ -19, %while.cond.i.cleanup_crit_edge ], [ -19, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ], [ -19, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @v4l2_get_link_freq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @camss_get_pixel_clock(ptr nocapture noundef readonly %entity, ptr nocapture noundef writeonly %pixel_clock) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end5.i.while.cond.i_crit_edge, %entry
  %entity.addr.0.i = phi ptr [ %entity, %entry ], [ %5, %if.end5.i.while.cond.i_crit_edge ]
  %pads.i = getelementptr inbounds %struct.media_entity, ptr %entity.addr.0.i, i32 0, i32 9
  %0 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pads.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.i.cleanup_crit_edge, label %if.end.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %while.cond.i
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %1) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %entity2.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %entity2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entity2.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 2
  br i1 %cmp.i.i, label %if.end5.i, label %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %is_media_entity_v4l2_subdev.exit.i
  %function.i = getelementptr inbounds %struct.media_entity, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %function.i, align 4
  %cmp.i = icmp eq i32 %9, 131073
  br i1 %cmp.i, label %cond.end, label %if.end5.i.while.cond.i_crit_edge

if.end5.i.while.cond.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

cond.end:                                         ; preds = %if.end5.i
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_handler, align 4
  %call3 = tail call ptr @v4l2_ctrl_find(ptr noundef %11, i32 noundef 10422530) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %cond.end.cleanup_crit_edge, label %if.end6

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef nonnull %call3) #10
  %12 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call7, ptr %pixel_clock, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %cond.end.cleanup_crit_edge, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %cond.end.cleanup_crit_edge ], [ -19, %while.cond.i.cleanup_crit_edge ], [ -19, %is_media_entity_v4l2_subdev.exit.i.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ], [ -19, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @camss_pm_domain_on(ptr nocapture noundef readonly %camss, i32 noundef %id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vfe_num = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 10
  %0 = ptrtoint ptr %vfe_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfe_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp = icmp sgt i32 %1, %id
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vfe1 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 11
  %2 = ptrtoint ptr %vfe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfe1, align 4
  %arrayidx = getelementptr %struct.vfe_device, ptr %3, i32 %id
  %ops = getelementptr %struct.vfe_device, ptr %3, i32 %id, i32 19
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %pm_domain_on = getelementptr inbounds %struct.vfe_hw_ops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %pm_domain_on to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pm_domain_on, align 4
  %call = tail call i32 %7(ptr noundef %arrayidx) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camss_pm_domain_off(ptr nocapture noundef readonly %camss, i32 noundef %id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vfe_num = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 10
  %0 = ptrtoint ptr %vfe_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfe_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp = icmp sgt i32 %1, %id
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vfe1 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 11
  %2 = ptrtoint ptr %vfe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfe1, align 4
  %arrayidx = getelementptr %struct.vfe_device, ptr %3, i32 %id
  %ops = getelementptr %struct.vfe_device, ptr %3, i32 %id, i32 19
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %pm_domain_off = getelementptr inbounds %struct.vfe_hw_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %pm_domain_off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pm_domain_off, align 4
  tail call void %7(ptr noundef %arrayidx) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camss_delete(ptr noundef %camss) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 1
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #10
  %media_dev = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 3
  tail call void @media_device_unregister(ptr noundef %media_dev) #10
  tail call void @media_device_cleanup(ptr noundef %media_dev) #10
  %dev = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #10
  %2 = ptrtoint ptr %camss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %camss, align 8
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.camss_delete, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %switch.lookup
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %switch.lookup ]
  %arrayidx = getelementptr %struct.camss, ptr %camss, i32 0, i32 14, i32 %i.023
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @device_link_del(ptr noundef %7) #10
  %arrayidx9 = getelementptr %struct.camss, ptr %camss, i32 0, i32 13, i32 %i.023
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %9, i1 noundef zeroext true) #10
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %switch.load
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %camss) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_camss_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_camss_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_camss_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_camss_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @camss_probe(ptr noundef %pdev) #1 align 64 {
entry:
  %vep.i.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 856) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref_count = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #10
  %1 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %ref_count, align 8
  %dev2 = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev2, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call3 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else:                                          ; preds = %if.end
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call7 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else14, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else14:                                        ; preds = %if.else
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call16 = tail call i32 @of_device_is_compatible(ptr noundef %9, ptr noundef nonnull @.str.8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else23, label %if.else14.if.end36_crit_edge

if.else14.if.end36_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else23:                                        ; preds = %if.else14
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call25 = tail call i32 @of_device_is_compatible(ptr noundef %11, ptr noundef nonnull @.str.9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.else23.err_free_crit_edge, label %if.else23.if.end36_crit_edge

if.else23.if.end36_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else23.err_free_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end36:                                         ; preds = %if.else23.if.end36_crit_edge, %if.else14.if.end36_crit_edge, %if.else.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %.sink296 = phi i32 [ 0, %if.end.if.end36_crit_edge ], [ 1, %if.else.if.end36_crit_edge ], [ 2, %if.else14.if.end36_crit_edge ], [ 3, %if.else23.if.end36_crit_edge ]
  %.sink295 = phi i32 [ 2, %if.end.if.end36_crit_edge ], [ 3, %if.else.if.end36_crit_edge ], [ 3, %if.else14.if.end36_crit_edge ], [ 4, %if.else23.if.end36_crit_edge ]
  %.sink294 = phi i32 [ 2, %if.end.if.end36_crit_edge ], [ 4, %if.else.if.end36_crit_edge ], [ 4, %if.else14.if.end36_crit_edge ], [ 3, %if.else23.if.end36_crit_edge ]
  %.sink = phi i32 [ 1, %if.end.if.end36_crit_edge ], [ 2, %if.else.if.end36_crit_edge ], [ 2, %if.else14.if.end36_crit_edge ], [ 3, %if.else23.if.end36_crit_edge ]
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink296, ptr %call7.i.i, align 8
  %csiphy_num11 = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %csiphy_num11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink295, ptr %csiphy_num11, align 4
  %csid_num12 = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %csid_num12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink294, ptr %csid_num12, align 4
  %vfe_num13 = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %vfe_num13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %vfe_num13, align 8
  %csiphy_num37 = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 5
  %16 = mul nuw nsw i32 %.sink295, 444
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %16, i32 noundef 3520) #10
  %csiphy = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %csiphy to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i, ptr %csiphy, align 8
  %tobool40.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool40.not, label %if.end36.err_free_crit_edge, label %if.end42

if.end36.err_free_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end42:                                         ; preds = %if.end36
  %csid_num43 = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %csid_num43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %csid_num43, align 4
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 692) #10
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %devm_kcalloc.exit227.thread, label %devm_kcalloc.exit227, !prof !328

devm_kcalloc.exit227.thread:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %csid251 = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %csid251 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %csid251, align 8
  br label %err_free

devm_kcalloc.exit227:                             ; preds = %if.end42
  %23 = extractvalue { i32, i1 } %20, 0
  %call5.i.i224 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %23, i32 noundef 3520) #10
  %csid = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 8
  %24 = ptrtoint ptr %csid to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i224, ptr %csid, align 8
  %tobool46.not = icmp eq ptr %call5.i.i224, null
  br i1 %tobool46.not, label %devm_kcalloc.exit227.err_free_crit_edge, label %if.end48

devm_kcalloc.exit227.err_free_crit_edge:          ; preds = %devm_kcalloc.exit227
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end48:                                         ; preds = %devm_kcalloc.exit227
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %switch = icmp ult i32 %26, 2
  br i1 %switch, label %if.then52, label %if.end48.if.end58_crit_edge

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then52:                                        ; preds = %if.end48
  %call5.i.i228 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 388, i32 noundef 3520) #10
  %ispif = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %ispif to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i.i228, ptr %ispif, align 4
  %tobool55.not = icmp eq ptr %call5.i.i228, null
  br i1 %tobool55.not, label %if.then52.err_free_crit_edge, label %if.then52.if.end58_crit_edge

if.then52.if.end58_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then52.err_free_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end58:                                         ; preds = %if.then52.if.end58_crit_edge, %if.end48.if.end58_crit_edge
  %vfe_num59 = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %vfe_num59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vfe_num59, align 8
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 12584) #10
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %devm_kcalloc.exit234.thread, label %devm_kcalloc.exit234, !prof !328

devm_kcalloc.exit234.thread:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %vfe254 = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 11
  %32 = ptrtoint ptr %vfe254 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %vfe254, align 4
  br label %err_free

devm_kcalloc.exit234:                             ; preds = %if.end58
  %33 = extractvalue { i32, i1 } %30, 0
  %call5.i.i231 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %33, i32 noundef 3520) #10
  %vfe = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 11
  %34 = ptrtoint ptr %vfe to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call5.i.i231, ptr %vfe, align 4
  %tobool62.not = icmp eq ptr %call5.i.i231, null
  br i1 %tobool62.not, label %devm_kcalloc.exit234.err_free_crit_edge, label %if.end64

devm_kcalloc.exit234.err_free_crit_edge:          ; preds = %devm_kcalloc.exit234
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end64:                                         ; preds = %devm_kcalloc.exit234
  %notifier = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 2
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #10
  %35 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev2, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_graph_get_next_endpoint(ptr noundef %38, ptr noundef null) #10
  %cmp.not54.i = icmp eq ptr %call.i, null
  br i1 %cmp.not54.i, label %if.end64.if.end68_crit_edge, label %for.body.lr.ph.i

if.end64.if.end68_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

for.body.lr.ph.i:                                 ; preds = %if.end64
  %clock_lane.i.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep.i.i, i32 0, i32 2, i32 2, i32 2
  %lane_polarities.i.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep.i.i, i32 0, i32 2, i32 2, i32 4
  %num_data_lanes.i.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep.i.i, i32 0, i32 2, i32 2, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %num_subdevs.057.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %num_subdevs.1.i, %for.inc.i.for.body.i_crit_edge ]
  %node.055.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call17.i, %for.inc.i.for.body.i_crit_edge ]
  %call2.i = call zeroext i1 @of_device_is_available(ptr noundef nonnull %node.055.i) #10
  br i1 %call2.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call3.i = call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %node.055.i) #10
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.25) #14
  br label %err_cleanup.i

if.end5.i:                                        ; preds = %if.end.i
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call3.i, i32 0, i32 3
  %call7.i = call ptr @__v4l2_async_nf_add_fwnode(ptr noundef %notifier, ptr noundef %fwnode.i, i32 noundef 44) #10
  call void @of_node_put(ptr noundef nonnull %call3.i) #10
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %call7.i to i32
  br label %err_cleanup.i

if.end11.i:                                       ; preds = %if.end5.i
  %interface.i.i = getelementptr inbounds %struct.camss_async_subdev, ptr %call7.i, i32 0, i32 1
  %csi2.i.i = getelementptr inbounds %struct.camss_async_subdev, ptr %call7.i, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vep.i.i) #10
  %40 = call ptr @memset(ptr %vep.i.i, i32 0, i32 64)
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node.055.i, i32 0, i32 3
  %call.i.i235 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i.i, ptr noundef nonnull %vep.i.i) #10
  %41 = ptrtoint ptr %vep.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vep.i.i, align 4
  %conv.i.i = trunc i32 %42 to i8
  %43 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.i.i, ptr %interface.i.i, align 4
  %44 = ptrtoint ptr %clock_lane.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %clock_lane.i.i, align 4
  %clk.i.i = getelementptr inbounds %struct.camss_async_subdev, ptr %call7.i, i32 0, i32 1, i32 1, i32 0, i32 2
  %46 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %clk.i.i, align 4
  %47 = ptrtoint ptr %lane_polarities.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %lane_polarities.i.i, align 2, !range !329
  %pol.i.i = getelementptr inbounds %struct.camss_async_subdev, ptr %call7.i, i32 0, i32 1, i32 1, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %pol.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %pol.i.i, align 1
  %50 = ptrtoint ptr %num_data_lanes.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %num_data_lanes.i.i, align 1
  %conv6.i.i = zext i8 %51 to i32
  %52 = ptrtoint ptr %csi2.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv6.i.i, ptr %csi2.i.i, align 4
  %53 = shl nuw nsw i32 %conv6.i.i, 1
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %36, i32 noundef %53, i32 noundef 3520) #10
  %data.i.i = getelementptr inbounds %struct.camss_async_subdev, ptr %call7.i, i32 0, i32 1, i32 1, i32 0, i32 1
  %54 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call5.i.i.i.i, ptr %data.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool10.not.i.i, label %camss_of_parse_endpoint_node.exit.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end11.i
  %55 = ptrtoint ptr %csi2.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %csi2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp49.not.i.i = icmp eq i32 %56, 0
  br i1 %cmp49.not.i.i, label %for.cond.preheader.i.i.if.end15.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.if.end15.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.050.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx13.i.i = getelementptr %struct.v4l2_fwnode_endpoint, ptr %vep.i.i, i32 0, i32 2, i32 2, i32 1, i32 %i.050.i.i
  %57 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx13.i.i, align 1
  %59 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i, align 4
  %arrayidx15.i.i = getelementptr %struct.csiphy_lane, ptr %60, i32 %i.050.i.i
  %61 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %58, ptr %arrayidx15.i.i, align 1
  %add.i.i = add nuw i32 %i.050.i.i, 1
  %arrayidx18.i.i = getelementptr %struct.v4l2_fwnode_endpoint, ptr %vep.i.i, i32 0, i32 2, i32 2, i32 4, i32 %add.i.i
  %62 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx18.i.i, align 1, !range !329
  %64 = load ptr, ptr %data.i.i, align 4
  %pol23.i.i = getelementptr %struct.csiphy_lane, ptr %64, i32 %i.050.i.i, i32 1
  %65 = ptrtoint ptr %pol23.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %63, ptr %pol23.i.i, align 1
  %66 = ptrtoint ptr %csi2.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %csi2.i.i, align 4
  %cmp.i39.i = icmp ult i32 %add.i.i, %67
  br i1 %cmp.i39.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end15.i_crit_edge

for.body.i.i.if.end15.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

camss_of_parse_endpoint_node.exit.i:              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep.i.i) #10
  br label %err_cleanup.i

if.end15.i:                                       ; preds = %for.body.i.i.if.end15.i_crit_edge, %for.cond.preheader.i.i.if.end15.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep.i.i) #10
  %inc.i = add i32 %num_subdevs.057.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end15.i, %for.body.i.for.inc.i_crit_edge
  %num_subdevs.1.i = phi i32 [ %inc.i, %if.end15.i ], [ %num_subdevs.057.i, %for.body.i.for.inc.i_crit_edge ]
  %68 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %of_node.i, align 8
  %call17.i = call ptr @of_graph_get_next_endpoint(ptr noundef %69, ptr noundef nonnull %node.055.i) #10
  %cmp.not.i = icmp eq ptr %call17.i, null
  br i1 %cmp.not.i, label %for.inc.i.camss_of_parse_ports.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.camss_of_parse_ports.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %camss_of_parse_ports.exit

err_cleanup.i:                                    ; preds = %camss_of_parse_endpoint_node.exit.i, %if.then9.i, %do.end.i
  %ret.1.ph.i = phi i32 [ -12, %camss_of_parse_endpoint_node.exit.i ], [ -22, %do.end.i ], [ %39, %if.then9.i ]
  call void @of_node_put(ptr noundef nonnull %node.055.i) #10
  br label %camss_of_parse_ports.exit

camss_of_parse_ports.exit:                        ; preds = %err_cleanup.i, %for.inc.i.camss_of_parse_ports.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.1.ph.i, %err_cleanup.i ], [ %num_subdevs.1.i, %for.inc.i.camss_of_parse_ports.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp66 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp66, label %camss_of_parse_ports.exit.err_cleanup_crit_edge, label %camss_of_parse_ports.exit.if.end68_crit_edge

camss_of_parse_ports.exit.if.end68_crit_edge:     ; preds = %camss_of_parse_ports.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

camss_of_parse_ports.exit.err_cleanup_crit_edge:  ; preds = %camss_of_parse_ports.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_cleanup

if.end68:                                         ; preds = %camss_of_parse_ports.exit.if.end68_crit_edge, %if.end64.if.end68_crit_edge
  %retval.0.i258 = phi i32 [ %retval.0.i, %camss_of_parse_ports.exit.if.end68_crit_edge ], [ 0, %if.end64.if.end68_crit_edge ]
  %70 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %71)
  %72 = icmp ult i32 %71, 4
  br i1 %72, label %switch.lookup, label %if.end68.err_cleanup_crit_edge

if.end68.err_cleanup_crit_edge:                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_cleanup

switch.lookup:                                    ; preds = %if.end68
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.camss_probe, i32 0, i32 %71
  %73 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %73)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep308 = getelementptr inbounds [4 x ptr], ptr @switch.table.camss_probe.159, i32 0, i32 %71
  %74 = ptrtoint ptr %switch.gep308 to i32
  call void @__asan_load4_noabort(i32 %74)
  %switch.load309 = load ptr, ptr %switch.gep308, align 4
  %switch.gep310 = getelementptr inbounds [4 x ptr], ptr @switch.table.camss_probe.160, i32 0, i32 %71
  %75 = ptrtoint ptr %switch.gep310 to i32
  call void @__asan_load4_noabort(i32 %75)
  %switch.load311 = load ptr, ptr %switch.gep310, align 4
  %switch.gep312 = getelementptr inbounds [4 x ptr], ptr @switch.table.camss_probe.161, i32 0, i32 %71
  %76 = ptrtoint ptr %switch.gep312 to i32
  call void @__asan_load4_noabort(i32 %76)
  %switch.load313 = load ptr, ptr %switch.gep312, align 4
  %77 = ptrtoint ptr %csiphy_num37 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %csiphy_num37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp16122.not.i = icmp eq i32 %78, 0
  br i1 %cmp16122.not.i, label %switch.lookup.for.cond22.preheader.i_crit_edge, label %switch.lookup.for.body.i239_crit_edge

switch.lookup.for.body.i239_crit_edge:            ; preds = %switch.lookup
  br label %for.body.i239

switch.lookup.for.cond22.preheader.i_crit_edge:   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond22.preheader.i

for.cond22.preheader.i:                           ; preds = %for.inc.i242.for.cond22.preheader.i_crit_edge, %switch.lookup.for.cond22.preheader.i_crit_edge
  %79 = ptrtoint ptr %csid_num43 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %csid_num43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp23124.not.i = icmp eq i32 %80, 0
  br i1 %cmp23124.not.i, label %for.cond22.preheader.i.for.end40.i_crit_edge, label %for.cond22.preheader.i.for.body25.i_crit_edge

for.cond22.preheader.i.for.body25.i_crit_edge:    ; preds = %for.cond22.preheader.i
  br label %for.body25.i

for.cond22.preheader.i.for.end40.i_crit_edge:     ; preds = %for.cond22.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end40.i

for.body.i239:                                    ; preds = %for.inc.i242.for.body.i239_crit_edge, %switch.lookup.for.body.i239_crit_edge
  %i.0123.i = phi i32 [ %inc.i241, %for.inc.i242.for.body.i239_crit_edge ], [ 0, %switch.lookup.for.body.i239_crit_edge ]
  %81 = ptrtoint ptr %csiphy to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %csiphy, align 8
  %arrayidx.i = getelementptr %struct.csiphy_device, ptr %82, i32 %i.0123.i
  %arrayidx17.i = getelementptr %struct.resources, ptr %switch.load, i32 %i.0123.i
  %conv.i = trunc i32 %i.0123.i to i8
  %call.i238 = call i32 @msm_csiphy_subdev_init(ptr noundef %call7.i.i, ptr noundef %arrayidx.i, ptr noundef %arrayidx17.i, i8 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %cmp18.i = icmp slt i32 %call.i238, 0
  br i1 %cmp18.i, label %do.end.i240, label %for.inc.i242

do.end.i240:                                      ; preds = %for.body.i239
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.27, i32 noundef %i.0123.i, i32 noundef %call.i238) #14
  br label %err_cleanup

for.inc.i242:                                     ; preds = %for.body.i239
  %inc.i241 = add nuw i32 %i.0123.i, 1
  %85 = ptrtoint ptr %csiphy_num37 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %csiphy_num37, align 4
  %cmp16.i = icmp ult i32 %inc.i241, %86
  br i1 %cmp16.i, label %for.inc.i242.for.body.i239_crit_edge, label %for.inc.i242.for.cond22.preheader.i_crit_edge

for.inc.i242.for.cond22.preheader.i_crit_edge:    ; preds = %for.inc.i242
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond22.preheader.i

for.inc.i242.for.body.i239_crit_edge:             ; preds = %for.inc.i242
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i239

for.body25.i:                                     ; preds = %for.inc38.i.for.body25.i_crit_edge, %for.cond22.preheader.i.for.body25.i_crit_edge
  %i.1125.i = phi i32 [ %inc39.i, %for.inc38.i.for.body25.i_crit_edge ], [ 0, %for.cond22.preheader.i.for.body25.i_crit_edge ]
  %87 = ptrtoint ptr %csid to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %csid, align 8
  %arrayidx26.i = getelementptr %struct.csid_device, ptr %88, i32 %i.1125.i
  %arrayidx27.i = getelementptr %struct.resources, ptr %switch.load309, i32 %i.1125.i
  %conv28.i = trunc i32 %i.1125.i to i8
  %call29.i = call i32 @msm_csid_subdev_init(ptr noundef %call7.i.i, ptr noundef %arrayidx26.i, ptr noundef %arrayidx27.i, i8 noundef zeroext %conv28.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %do.end35.i, label %for.inc38.i

do.end35.i:                                       ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.30, i32 noundef %i.1125.i, i32 noundef %call29.i) #14
  br label %err_cleanup

for.inc38.i:                                      ; preds = %for.body25.i
  %inc39.i = add nuw i32 %i.1125.i, 1
  %91 = ptrtoint ptr %csid_num43 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %csid_num43, align 4
  %cmp23.i = icmp ult i32 %inc39.i, %92
  br i1 %cmp23.i, label %for.inc38.i.for.body25.i_crit_edge, label %for.inc38.i.for.end40.i_crit_edge

for.inc38.i.for.end40.i_crit_edge:                ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end40.i

for.inc38.i.for.body25.i_crit_edge:               ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body25.i

for.end40.i:                                      ; preds = %for.inc38.i.for.end40.i_crit_edge, %for.cond22.preheader.i.for.end40.i_crit_edge
  %call41.i = call i32 @msm_ispif_subdev_init(ptr noundef %call7.i.i, ptr noundef %switch.load311) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %do.end47.i, label %for.cond50.preheader.i

for.cond50.preheader.i:                           ; preds = %for.end40.i
  %93 = ptrtoint ptr %vfe_num59 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %vfe_num59, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp51126.not.i = icmp eq i32 %94, 0
  br i1 %cmp51126.not.i, label %for.cond50.preheader.i.if.end72_crit_edge, label %for.cond50.preheader.i.for.body53.i_crit_edge

for.cond50.preheader.i.for.body53.i_crit_edge:    ; preds = %for.cond50.preheader.i
  br label %for.body53.i

for.cond50.preheader.i.if.end72_crit_edge:        ; preds = %for.cond50.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.end47.i:                                       ; preds = %for.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.33, i32 noundef %call41.i) #14
  br label %err_cleanup

for.body53.i:                                     ; preds = %for.inc66.i.for.body53.i_crit_edge, %for.cond50.preheader.i.for.body53.i_crit_edge
  %i.2127.i = phi i32 [ %inc67.i, %for.inc66.i.for.body53.i_crit_edge ], [ 0, %for.cond50.preheader.i.for.body53.i_crit_edge ]
  %97 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %vfe, align 4
  %arrayidx54.i = getelementptr %struct.vfe_device, ptr %98, i32 %i.2127.i
  %arrayidx55.i = getelementptr %struct.resources, ptr %switch.load313, i32 %i.2127.i
  %conv56.i = trunc i32 %i.2127.i to i8
  %call57.i = call i32 @msm_vfe_subdev_init(ptr noundef %call7.i.i, ptr noundef %arrayidx54.i, ptr noundef %arrayidx55.i, i8 noundef zeroext %conv56.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %do.end63.i, label %for.inc66.i

do.end63.i:                                       ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.36, i32 noundef %i.2127.i, i32 noundef %call57.i) #14
  br label %err_cleanup

for.inc66.i:                                      ; preds = %for.body53.i
  %inc67.i = add nuw i32 %i.2127.i, 1
  %101 = ptrtoint ptr %vfe_num59 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %vfe_num59, align 8
  %cmp51.i = icmp ult i32 %inc67.i, %102
  br i1 %cmp51.i, label %for.inc66.i.for.body53.i_crit_edge, label %for.inc66.i.if.end72_crit_edge

for.inc66.i.if.end72_crit_edge:                   ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

for.inc66.i.for.body53.i_crit_edge:               ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body53.i

if.end72:                                         ; preds = %for.inc66.i.if.end72_crit_edge, %for.cond50.preheader.i.if.end72_crit_edge
  %call.i244 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %cmp.i = icmp eq i32 %call.i244, 0
  br i1 %cmp.i, label %if.end76, label %if.end72.err_cleanup_crit_edge

if.end72.err_cleanup_crit_edge:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_cleanup

if.end76:                                         ; preds = %if.end72
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #10
  %103 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev2, align 8
  %media_dev = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 3
  %105 = ptrtoint ptr %media_dev to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %media_dev, align 8
  %model = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 3, i32 2
  %call80 = call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str.10, i32 noundef 32) #10
  %ops = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 3, i32 21
  %106 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @camss_media_ops, ptr %ops, align 8
  call void @media_device_init(ptr noundef %media_dev) #10
  %v4l2_dev = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 1
  %mdev = getelementptr inbounds %struct.camss, ptr %call7.i.i, i32 0, i32 1, i32 1
  %107 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %media_dev, ptr %mdev, align 8
  %108 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev2, align 8
  %call86 = call i32 @v4l2_device_register(ptr noundef %109, ptr noundef %v4l2_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %do.end, label %if.end89

do.end:                                           ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call86) #14
  br label %err_cleanup

if.end89:                                         ; preds = %if.end76
  %call90 = call fastcc i32 @camss_register_entities(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end89.err_register_entities_crit_edge, label %if.end93

if.end89.err_register_entities_crit_edge:         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_register_entities

if.end93:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i258)
  %tobool94.not = icmp eq i32 %retval.0.i258, 0
  br i1 %tobool94.not, label %if.else107, label %if.then95

if.then95:                                        ; preds = %if.end93
  %110 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @camss_subdev_notifier_ops, ptr %notifier, align 4
  %call100 = call i32 @v4l2_async_nf_register(ptr noundef %v4l2_dev, ptr noundef %notifier) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then95.if.end124_crit_edge, label %do.end105

if.then95.if.end124_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

do.end105:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call100) #14
  br label %err_register_subdevs

if.else107:                                       ; preds = %if.end93
  %call.i246 = call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %v4l2_dev, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %cmp110 = icmp slt i32 %call.i246, 0
  br i1 %cmp110, label %do.end114, label %if.end115

do.end114:                                        ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call.i246) #14
  br label %err_register_subdevs

if.end115:                                        ; preds = %if.else107
  %call117 = call i32 @__media_device_register(ptr noundef %media_dev, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %do.end122, label %if.end115.if.end124_crit_edge

if.end115.if.end124_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

do.end122:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call117) #14
  br label %err_register_subdevs

if.end124:                                        ; preds = %if.end115.if.end124_crit_edge, %if.then95.if.end124_crit_edge
  %call125 = call fastcc i32 @camss_configure_pd(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %do.end130, label %if.end131

do.end130:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call125) #14
  br label %cleanup

if.end131:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  call void @pm_runtime_enable(ptr noundef %dev1) #10
  br label %cleanup

err_register_subdevs:                             ; preds = %do.end122, %do.end114, %do.end105
  %ret.0 = phi i32 [ %call100, %do.end105 ], [ %call.i246, %do.end114 ], [ %call117, %do.end122 ]
  call fastcc void @camss_unregister_entities(ptr noundef nonnull %call7.i.i)
  br label %err_register_entities

err_register_entities:                            ; preds = %err_register_subdevs, %if.end89.err_register_entities_crit_edge
  %ret.1 = phi i32 [ %call90, %if.end89.err_register_entities_crit_edge ], [ %ret.0, %err_register_subdevs ]
  call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #10
  br label %err_cleanup

err_cleanup:                                      ; preds = %err_register_entities, %do.end, %if.end72.err_cleanup_crit_edge, %do.end63.i, %do.end47.i, %do.end35.i, %do.end.i240, %if.end68.err_cleanup_crit_edge, %camss_of_parse_ports.exit.err_cleanup_crit_edge
  %ret.2 = phi i32 [ %call86, %do.end ], [ %ret.1, %err_register_entities ], [ %retval.0.i, %camss_of_parse_ports.exit.err_cleanup_crit_edge ], [ %call.i244, %if.end72.err_cleanup_crit_edge ], [ -22, %if.end68.err_cleanup_crit_edge ], [ %call57.i, %do.end63.i ], [ %call41.i, %do.end47.i ], [ %call29.i, %do.end35.i ], [ %call.i238, %do.end.i240 ]
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #10
  br label %err_free

err_free:                                         ; preds = %err_cleanup, %devm_kcalloc.exit234.err_free_crit_edge, %devm_kcalloc.exit234.thread, %if.then52.err_free_crit_edge, %devm_kcalloc.exit227.err_free_crit_edge, %devm_kcalloc.exit227.thread, %if.end36.err_free_crit_edge, %if.else23.err_free_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_cleanup ], [ -22, %if.else23.err_free_crit_edge ], [ -12, %if.end36.err_free_crit_edge ], [ -12, %devm_kcalloc.exit227.err_free_crit_edge ], [ -12, %if.then52.err_free_crit_edge ], [ -12, %devm_kcalloc.exit234.err_free_crit_edge ], [ -12, %devm_kcalloc.exit227.thread ], [ -12, %devm_kcalloc.exit234.thread ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end131, %do.end130, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_free ], [ %call125, %do.end130 ], [ 0, %if.end131 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @camss_remove(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %notifier = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 2
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #10
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #10
  tail call fastcc void @camss_unregister_entities(ptr noundef %1)
  %ref_count = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count, i32 noundef 4) #10
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @camss_delete(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @camss_register_entities(ptr noundef %camss) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %csiphy_num = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 5
  %0 = ptrtoint ptr %csiphy_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %csiphy_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp417 = icmp sgt i32 %1, 0
  br i1 %cmp417, label %for.body.lr.ph, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader

for.body.lr.ph:                                   ; preds = %entry
  %csiphy = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 6
  %v4l2_dev = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 1
  br label %for.body

for.cond2.preheader:                              ; preds = %for.inc.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %csid_num = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 7
  %2 = ptrtoint ptr %csid_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %csid_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3419 = icmp sgt i32 %3, 0
  br i1 %cmp3419, label %for.body4.lr.ph, label %for.cond2.preheader.for.end17_crit_edge

for.cond2.preheader.for.end17_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end17

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %csid = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 8
  %v4l2_dev6 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 1
  br label %for.body4

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0418 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %csiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csiphy, align 8
  %arrayidx = getelementptr %struct.csiphy_device, ptr %5, i32 %i.0418
  %call = tail call i32 @msm_csiphy_register_entity(ptr noundef %arrayidx, ptr noundef %v4l2_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %do.end, label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.135, i32 noundef %i.0418, i32 noundef %call) #14
  br label %err_reg_csiphy

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0418, 1
  %8 = ptrtoint ptr %csiphy_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %csiphy_num, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond2.preheader_crit_edge

for.inc.for.cond2.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body4:                                        ; preds = %for.inc15.for.body4_crit_edge, %for.body4.lr.ph
  %i.1420 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc16, %for.inc15.for.body4_crit_edge ]
  %10 = ptrtoint ptr %csid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csid, align 8
  %arrayidx5 = getelementptr %struct.csid_device, ptr %11, i32 %i.1420
  %call7 = tail call i32 @msm_csid_register_entity(ptr noundef %arrayidx5, ptr noundef %v4l2_dev6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end12, label %for.inc15

do.end12:                                         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  %dev13 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 4
  %12 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.138, i32 noundef %i.1420, i32 noundef %call7) #14
  br label %err_reg_csid

for.inc15:                                        ; preds = %for.body4
  %inc16 = add nuw nsw i32 %i.1420, 1
  %14 = ptrtoint ptr %csid_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %csid_num, align 4
  %cmp3 = icmp slt i32 %inc16, %15
  br i1 %cmp3, label %for.inc15.for.body4_crit_edge, label %for.inc15.for.end17_crit_edge

for.inc15.for.end17_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end17

for.inc15.for.body4_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4

for.end17:                                        ; preds = %for.inc15.for.end17_crit_edge, %for.cond2.preheader.for.end17_crit_edge
  %ispif = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 9
  %16 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ispif, align 4
  %v4l2_dev18 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 1
  %call19 = tail call i32 @msm_ispif_register_entities(ptr noundef %17, ptr noundef %v4l2_dev18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.end17
  %vfe_num = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 10
  %18 = ptrtoint ptr %vfe_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vfe_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp28421 = icmp sgt i32 %19, 0
  br i1 %cmp28421, label %for.body29.lr.ph, label %for.cond27.preheader.for.cond43.preheader_crit_edge

for.cond27.preheader.for.cond43.preheader_crit_edge: ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond43.preheader

for.body29.lr.ph:                                 ; preds = %for.cond27.preheader
  %vfe = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 11
  br label %for.body29

do.end24:                                         ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #12
  %dev25 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 4
  %20 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev25, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.141, i32 noundef %call19) #14
  br label %err_reg_ispif

for.cond43.preheader:                             ; preds = %for.inc40.for.cond43.preheader_crit_edge, %for.cond27.preheader.for.cond43.preheader_crit_edge
  %22 = ptrtoint ptr %csiphy_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %csiphy_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp45425 = icmp sgt i32 %23, 0
  br i1 %cmp45425, label %for.cond47.preheader.lr.ph, label %for.cond43.preheader.for.end79_crit_edge

for.cond43.preheader.for.end79_crit_edge:         ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end79

for.cond47.preheader.lr.ph:                       ; preds = %for.cond43.preheader
  %csiphy51 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 6
  %csid53 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 8
  br label %for.cond47.preheader

for.body29:                                       ; preds = %for.inc40.for.body29_crit_edge, %for.body29.lr.ph
  %i.2422 = phi i32 [ 0, %for.body29.lr.ph ], [ %inc41, %for.inc40.for.body29_crit_edge ]
  %24 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vfe, align 4
  %arrayidx30 = getelementptr %struct.vfe_device, ptr %25, i32 %i.2422
  %call32 = tail call i32 @msm_vfe_register_entities(ptr noundef %arrayidx30, ptr noundef %v4l2_dev18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end37, label %for.inc40

do.end37:                                         ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  %dev38 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 4
  %26 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev38, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.144, i32 noundef %i.2422, i32 noundef %call32) #14
  br label %err_reg_vfe

for.inc40:                                        ; preds = %for.body29
  %inc41 = add nuw nsw i32 %i.2422, 1
  %28 = ptrtoint ptr %vfe_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vfe_num, align 8
  %cmp28 = icmp slt i32 %inc41, %29
  br i1 %cmp28, label %for.inc40.for.body29_crit_edge, label %for.inc40.for.cond43.preheader_crit_edge

for.inc40.for.cond43.preheader_crit_edge:         ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond43.preheader

for.inc40.for.body29_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29

for.cond47.preheader:                             ; preds = %for.inc77.for.cond47.preheader_crit_edge, %for.cond47.preheader.lr.ph
  %i.3426 = phi i32 [ 0, %for.cond47.preheader.lr.ph ], [ %inc78, %for.inc77.for.cond47.preheader_crit_edge ]
  %30 = ptrtoint ptr %csid_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %csid_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp49423 = icmp sgt i32 %31, 0
  br i1 %cmp49423, label %for.cond47.preheader.for.body50_crit_edge, label %for.cond47.preheader.for.inc77_crit_edge

for.cond47.preheader.for.inc77_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc77

for.cond47.preheader.for.body50_crit_edge:        ; preds = %for.cond47.preheader
  br label %for.body50

for.body50:                                       ; preds = %for.inc74.for.body50_crit_edge, %for.cond47.preheader.for.body50_crit_edge
  %j.0424 = phi i32 [ %inc75, %for.inc74.for.body50_crit_edge ], [ 0, %for.cond47.preheader.for.body50_crit_edge ]
  %32 = ptrtoint ptr %csiphy51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %csiphy51, align 8
  %subdev = getelementptr %struct.csiphy_device, ptr %33, i32 %i.3426, i32 2
  %34 = ptrtoint ptr %csid53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %csid53, align 8
  %subdev55 = getelementptr %struct.csid_device, ptr %35, i32 %j.0424, i32 2
  %call57 = tail call i32 @media_create_pad_link(ptr noundef %subdev, i16 noundef zeroext 1, ptr noundef %subdev55, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end62, label %for.inc74

do.end62:                                         ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #12
  %dev63 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 4
  %36 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev63, align 8
  %38 = ptrtoint ptr %csiphy51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %csiphy51, align 8
  %name = getelementptr %struct.csiphy_device, ptr %39, i32 %i.3426, i32 2, i32 0, i32 1
  %40 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name, align 4
  %42 = ptrtoint ptr %csid53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %csid53, align 8
  %name72 = getelementptr %struct.csid_device, ptr %43, i32 %j.0424, i32 2, i32 0, i32 1
  %44 = ptrtoint ptr %name72 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name72, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.147, ptr noundef %41, ptr noundef %45, i32 noundef %call57) #14
  br label %err_link

for.inc74:                                        ; preds = %for.body50
  %inc75 = add nuw nsw i32 %j.0424, 1
  %46 = ptrtoint ptr %csid_num to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %csid_num, align 4
  %cmp49 = icmp slt i32 %inc75, %47
  br i1 %cmp49, label %for.inc74.for.body50_crit_edge, label %for.inc74.for.inc77_crit_edge

for.inc74.for.inc77_crit_edge:                    ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc77

for.inc74.for.body50_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body50

for.inc77:                                        ; preds = %for.inc74.for.inc77_crit_edge, %for.cond47.preheader.for.inc77_crit_edge
  %inc78 = add nuw nsw i32 %i.3426, 1
  %48 = ptrtoint ptr %csiphy_num to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %csiphy_num, align 4
  %cmp45 = icmp slt i32 %inc78, %49
  br i1 %cmp45, label %for.inc77.for.cond47.preheader_crit_edge, label %for.inc77.for.end79_crit_edge

for.inc77.for.end79_crit_edge:                    ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end79

for.inc77.for.cond47.preheader_crit_edge:         ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond47.preheader

for.end79:                                        ; preds = %for.inc77.for.end79_crit_edge, %for.cond43.preheader.for.end79_crit_edge
  %50 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ispif, align 4
  %tobool.not = icmp eq ptr %51, null
  %52 = ptrtoint ptr %csid_num to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %csid_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp177452 = icmp sgt i32 %53, 0
  br i1 %tobool.not, label %for.cond175.preheader, label %for.cond82.preheader

for.cond82.preheader:                             ; preds = %for.end79
  br i1 %cmp177452, label %for.cond86.preheader.lr.ph, label %for.cond82.preheader.for.cond123.preheader_crit_edge

for.cond82.preheader.for.cond123.preheader_crit_edge: ; preds = %for.cond82.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond123.preheader

for.cond86.preheader.lr.ph:                       ; preds = %for.cond82.preheader
  %csid90 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 8
  br label %for.cond86.preheader

for.cond175.preheader:                            ; preds = %for.end79
  br i1 %cmp177452, label %for.cond180.preheader.lr.ph, label %for.cond175.preheader.cleanup265_crit_edge

for.cond175.preheader.cleanup265_crit_edge:       ; preds = %for.cond175.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup265

for.cond180.preheader.lr.ph:                      ; preds = %for.cond175.preheader
  %vfe186 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 11
  %csid194 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 8
  br label %for.cond180.preheader

for.cond86.preheader:                             ; preds = %for.inc120.for.cond86.preheader_crit_edge, %for.cond86.preheader.lr.ph
  %i.4432 = phi i32 [ 0, %for.cond86.preheader.lr.ph ], [ %inc121, %for.inc120.for.cond86.preheader_crit_edge ]
  %54 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ispif, align 4
  %line_num428 = getelementptr inbounds %struct.ispif_device, ptr %55, i32 0, i32 13
  %56 = ptrtoint ptr %line_num428 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %line_num428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp88429.not = icmp eq i32 %57, 0
  br i1 %cmp88429.not, label %for.cond86.preheader.for.inc120_crit_edge, label %for.cond86.preheader.for.body89_crit_edge

for.cond86.preheader.for.body89_crit_edge:        ; preds = %for.cond86.preheader
  br label %for.body89

for.cond86.preheader.for.inc120_crit_edge:        ; preds = %for.cond86.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc120

for.cond123.preheader:                            ; preds = %for.inc120.for.cond123.preheader_crit_edge, %for.cond82.preheader.for.cond123.preheader_crit_edge
  %58 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ispif, align 4
  %line_num125441 = getelementptr inbounds %struct.ispif_device, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %line_num125441 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %line_num125441, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp126442.not = icmp eq i32 %61, 0
  br i1 %cmp126442.not, label %for.cond123.preheader.cleanup265_crit_edge, label %for.cond128.preheader.lr.ph

for.cond123.preheader.cleanup265_crit_edge:       ; preds = %for.cond123.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup265

for.cond128.preheader.lr.ph:                      ; preds = %for.cond123.preheader
  %vfe133 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 11
  br label %for.cond128.preheader

for.body89:                                       ; preds = %for.inc117.for.body89_crit_edge, %for.cond86.preheader.for.body89_crit_edge
  %62 = phi ptr [ %80, %for.inc117.for.body89_crit_edge ], [ %55, %for.cond86.preheader.for.body89_crit_edge ]
  %j.1430 = phi i32 [ %inc118, %for.inc117.for.body89_crit_edge ], [ 0, %for.cond86.preheader.for.body89_crit_edge ]
  %63 = ptrtoint ptr %csid90 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %csid90, align 8
  %subdev92 = getelementptr %struct.csid_device, ptr %64, i32 %i.4432, i32 2
  %line = getelementptr inbounds %struct.ispif_device, ptr %62, i32 0, i32 14
  %65 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %line, align 4
  %subdev96 = getelementptr %struct.ispif_line, ptr %66, i32 %j.1430, i32 5
  %call98 = tail call i32 @media_create_pad_link(ptr noundef %subdev92, i16 noundef zeroext 1, ptr noundef %subdev96, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %do.end103, label %for.inc117

do.end103:                                        ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #12
  %dev104 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 4
  %67 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev104, align 8
  %69 = ptrtoint ptr %csid90 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %csid90, align 8
  %name109 = getelementptr %struct.csid_device, ptr %70, i32 %i.4432, i32 2, i32 0, i32 1
  %71 = ptrtoint ptr %name109 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %name109, align 4
  %73 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ispif, align 4
  %line111 = getelementptr inbounds %struct.ispif_device, ptr %74, i32 0, i32 14
  %75 = ptrtoint ptr %line111 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %line111, align 4
  %name115 = getelementptr %struct.ispif_line, ptr %76, i32 %j.1430, i32 5, i32 0, i32 1
  %77 = ptrtoint ptr %name115 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name115, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.147, ptr noundef %72, ptr noundef %78, i32 noundef %call98) #14
  br label %err_link

for.inc117:                                       ; preds = %for.body89
  %inc118 = add nuw i32 %j.1430, 1
  %79 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ispif, align 4
  %line_num = getelementptr inbounds %struct.ispif_device, ptr %80, i32 0, i32 13
  %81 = ptrtoint ptr %line_num to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %line_num, align 4
  %cmp88 = icmp ult i32 %inc118, %82
  br i1 %cmp88, label %for.inc117.for.body89_crit_edge, label %for.inc117.for.inc120_crit_edge

for.inc117.for.inc120_crit_edge:                  ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc120

for.inc117.for.body89_crit_edge:                  ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body89

for.inc120:                                       ; preds = %for.inc117.for.inc120_crit_edge, %for.cond86.preheader.for.inc120_crit_edge
  %inc121 = add nuw nsw i32 %i.4432, 1
  %83 = ptrtoint ptr %csid_num to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %csid_num, align 4
  %cmp84 = icmp slt i32 %inc121, %84
  br i1 %cmp84, label %for.inc120.for.cond86.preheader_crit_edge, label %for.inc120.for.cond123.preheader_crit_edge

for.inc120.for.cond123.preheader_crit_edge:       ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond123.preheader

for.inc120.for.cond86.preheader_crit_edge:        ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond86.preheader

for.cond128.preheader:                            ; preds = %for.inc172.for.cond128.preheader_crit_edge, %for.cond128.preheader.lr.ph
  %i.5443 = phi i32 [ 0, %for.cond128.preheader.lr.ph ], [ %inc173, %for.inc172.for.cond128.preheader_crit_edge ]
  %85 = ptrtoint ptr %vfe_num to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %vfe_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp130438 = icmp sgt i32 %86, 0
  br i1 %cmp130438, label %for.cond128.preheader.for.cond132.preheader_crit_edge, label %for.cond128.preheader.for.inc172_crit_edge

for.cond128.preheader.for.inc172_crit_edge:       ; preds = %for.cond128.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc172

for.cond128.preheader.for.cond132.preheader_crit_edge: ; preds = %for.cond128.preheader
  br label %for.cond132.preheader

for.cond132.preheader:                            ; preds = %for.inc169.for.cond132.preheader_crit_edge, %for.cond128.preheader.for.cond132.preheader_crit_edge
  %k.0439 = phi i32 [ %inc170, %for.inc169.for.cond132.preheader_crit_edge ], [ 0, %for.cond128.preheader.for.cond132.preheader_crit_edge ]
  %87 = ptrtoint ptr %vfe133 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %vfe133, align 4
  %line_num135434 = getelementptr %struct.vfe_device, ptr %88, i32 %k.0439, i32 16
  %89 = ptrtoint ptr %line_num135434 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %line_num135434, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp136436.not = icmp eq i8 %90, 0
  br i1 %cmp136436.not, label %for.cond132.preheader.for.inc169_crit_edge, label %for.cond132.preheader.for.body138_crit_edge

for.cond132.preheader.for.body138_crit_edge:      ; preds = %for.cond132.preheader
  br label %for.body138

for.cond132.preheader.for.inc169_crit_edge:       ; preds = %for.cond132.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc169

for.cond132:                                      ; preds = %for.body138
  %inc167 = add nuw nsw i32 %j.2437, 1
  %91 = ptrtoint ptr %vfe133 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %vfe133, align 4
  %line_num135 = getelementptr %struct.vfe_device, ptr %92, i32 %k.0439, i32 16
  %93 = ptrtoint ptr %line_num135 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %line_num135, align 8
  %conv = zext i8 %94 to i32
  %cmp136 = icmp ult i32 %inc167, %conv
  br i1 %cmp136, label %for.cond132.for.body138_crit_edge, label %for.cond132.for.inc169_crit_edge

for.cond132.for.inc169_crit_edge:                 ; preds = %for.cond132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc169

for.cond132.for.body138_crit_edge:                ; preds = %for.cond132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body138

for.body138:                                      ; preds = %for.cond132.for.body138_crit_edge, %for.cond132.preheader.for.body138_crit_edge
  %95 = phi ptr [ %92, %for.cond132.for.body138_crit_edge ], [ %88, %for.cond132.preheader.for.body138_crit_edge ]
  %j.2437 = phi i32 [ %inc167, %for.cond132.for.body138_crit_edge ], [ 0, %for.cond132.preheader.for.body138_crit_edge ]
  %96 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ispif, align 4
  %line141 = getelementptr inbounds %struct.ispif_device, ptr %97, i32 0, i32 14
  %98 = ptrtoint ptr %line141 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %line141, align 4
  %subdev143 = getelementptr %struct.ispif_line, ptr %99, i32 %i.5443, i32 5
  %subdev149 = getelementptr %struct.vfe_device, ptr %95, i32 %k.0439, i32 15, i32 %j.2437, i32 1
  %call152 = tail call i32 @media_create_pad_link(ptr noundef %subdev143, i16 noundef zeroext 1, ptr noundef %subdev149, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %cmp153 = icmp slt i32 %call152, 0
  br i1 %cmp153, label %cleanup, label %for.cond132

cleanup:                                          ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #12
  %dev159 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 4
  %100 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev159, align 8
  %name161 = getelementptr inbounds %struct.media_entity, ptr %subdev143, i32 0, i32 1
  %102 = ptrtoint ptr %name161 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name161, align 4
  %name163 = getelementptr inbounds %struct.media_entity, ptr %subdev149, i32 0, i32 1
  %104 = ptrtoint ptr %name163 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %name163, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.147, ptr noundef %103, ptr noundef %105, i32 noundef %call152) #14
  br label %err_link

for.inc169:                                       ; preds = %for.cond132.for.inc169_crit_edge, %for.cond132.preheader.for.inc169_crit_edge
  %inc170 = add nuw nsw i32 %k.0439, 1
  %106 = ptrtoint ptr %vfe_num to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %vfe_num, align 8
  %cmp130 = icmp slt i32 %inc170, %107
  br i1 %cmp130, label %for.inc169.for.cond132.preheader_crit_edge, label %for.inc169.for.inc172_crit_edge

for.inc169.for.inc172_crit_edge:                  ; preds = %for.inc169
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc172

for.inc169.for.cond132.preheader_crit_edge:       ; preds = %for.inc169
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond132.preheader

for.inc172:                                       ; preds = %for.inc169.for.inc172_crit_edge, %for.cond128.preheader.for.inc172_crit_edge
  %inc173 = add nuw i32 %i.5443, 1
  %108 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ispif, align 4
  %line_num125 = getelementptr inbounds %struct.ispif_device, ptr %109, i32 0, i32 13
  %110 = ptrtoint ptr %line_num125 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %line_num125, align 4
  %cmp126 = icmp ult i32 %inc173, %111
  br i1 %cmp126, label %for.inc172.for.cond128.preheader_crit_edge, label %for.inc172.cleanup265_crit_edge

for.inc172.cleanup265_crit_edge:                  ; preds = %for.inc172
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup265

for.inc172.for.cond128.preheader_crit_edge:       ; preds = %for.inc172
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond128.preheader

for.cond180.preheader:                            ; preds = %for.inc228.for.cond180.preheader_crit_edge, %for.cond180.preheader.lr.ph
  %i.6453 = phi i32 [ 0, %for.cond180.preheader.lr.ph ], [ %inc229, %for.inc228.for.cond180.preheader_crit_edge ]
  %112 = ptrtoint ptr %vfe_num to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %vfe_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp182449 = icmp sgt i32 %113, 0
  br i1 %cmp182449, label %for.cond180.preheader.for.cond185.preheader_crit_edge, label %for.cond180.preheader.for.inc228_crit_edge

for.cond180.preheader.for.inc228_crit_edge:       ; preds = %for.cond180.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc228

for.cond180.preheader.for.cond185.preheader_crit_edge: ; preds = %for.cond180.preheader
  br label %for.cond185.preheader

for.cond185.preheader:                            ; preds = %for.inc225.for.cond185.preheader_crit_edge, %for.cond180.preheader.for.cond185.preheader_crit_edge
  %k.1450 = phi i32 [ %inc226, %for.inc225.for.cond185.preheader_crit_edge ], [ 0, %for.cond180.preheader.for.cond185.preheader_crit_edge ]
  %114 = ptrtoint ptr %vfe186 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %vfe186, align 4
  %line_num188445 = getelementptr %struct.vfe_device, ptr %115, i32 %k.1450, i32 16
  %116 = ptrtoint ptr %line_num188445 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %line_num188445, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp190447.not = icmp eq i8 %117, 0
  br i1 %cmp190447.not, label %for.cond185.preheader.for.inc225_crit_edge, label %for.cond185.preheader.for.body192_crit_edge

for.cond185.preheader.for.body192_crit_edge:      ; preds = %for.cond185.preheader
  br label %for.body192

for.cond185.preheader.for.inc225_crit_edge:       ; preds = %for.cond185.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc225

for.cond185:                                      ; preds = %for.body192
  %inc223 = add nuw nsw i32 %j.3448, 1
  %118 = ptrtoint ptr %vfe186 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %vfe186, align 4
  %line_num188 = getelementptr %struct.vfe_device, ptr %119, i32 %k.1450, i32 16
  %120 = ptrtoint ptr %line_num188 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %line_num188, align 8
  %conv189 = zext i8 %121 to i32
  %cmp190 = icmp ult i32 %inc223, %conv189
  br i1 %cmp190, label %for.cond185.for.body192_crit_edge, label %for.cond185.for.inc225_crit_edge

for.cond185.for.inc225_crit_edge:                 ; preds = %for.cond185
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc225

for.cond185.for.body192_crit_edge:                ; preds = %for.cond185
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body192

for.body192:                                      ; preds = %for.cond185.for.body192_crit_edge, %for.cond185.preheader.for.body192_crit_edge
  %122 = phi ptr [ %119, %for.cond185.for.body192_crit_edge ], [ %115, %for.cond185.preheader.for.body192_crit_edge ]
  %j.3448 = phi i32 [ %inc223, %for.cond185.for.body192_crit_edge ], [ 0, %for.cond185.preheader.for.body192_crit_edge ]
  %123 = ptrtoint ptr %csid194 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %csid194, align 8
  %subdev196 = getelementptr %struct.csid_device, ptr %124, i32 %i.6453, i32 2
  %subdev202 = getelementptr %struct.vfe_device, ptr %122, i32 %k.1450, i32 15, i32 %j.3448, i32 1
  %call205 = tail call i32 @media_create_pad_link(ptr noundef %subdev196, i16 noundef zeroext 1, ptr noundef %subdev202, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %cmp206 = icmp slt i32 %call205, 0
  br i1 %cmp206, label %cleanup218, label %for.cond185

cleanup218:                                       ; preds = %for.body192
  call void @__sanitizer_cov_trace_pc() #12
  %dev212 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 4
  %125 = ptrtoint ptr %dev212 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev212, align 8
  %name214 = getelementptr inbounds %struct.media_entity, ptr %subdev196, i32 0, i32 1
  %127 = ptrtoint ptr %name214 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %name214, align 4
  %name216 = getelementptr inbounds %struct.media_entity, ptr %subdev202, i32 0, i32 1
  %129 = ptrtoint ptr %name216 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %name216, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.147, ptr noundef %128, ptr noundef %130, i32 noundef %call205) #14
  br label %err_link

for.inc225:                                       ; preds = %for.cond185.for.inc225_crit_edge, %for.cond185.preheader.for.inc225_crit_edge
  %inc226 = add nuw nsw i32 %k.1450, 1
  %131 = ptrtoint ptr %vfe_num to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %vfe_num, align 8
  %cmp182 = icmp slt i32 %inc226, %132
  br i1 %cmp182, label %for.inc225.for.cond185.preheader_crit_edge, label %for.inc225.for.inc228_crit_edge

for.inc225.for.inc228_crit_edge:                  ; preds = %for.inc225
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc228

for.inc225.for.cond185.preheader_crit_edge:       ; preds = %for.inc225
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond185.preheader

for.inc228:                                       ; preds = %for.inc225.for.inc228_crit_edge, %for.cond180.preheader.for.inc228_crit_edge
  %inc229 = add nuw nsw i32 %i.6453, 1
  %133 = ptrtoint ptr %csid_num to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %csid_num, align 4
  %cmp177 = icmp slt i32 %inc229, %134
  br i1 %cmp177, label %for.inc228.for.cond180.preheader_crit_edge, label %for.inc228.cleanup265_crit_edge

for.inc228.cleanup265_crit_edge:                  ; preds = %for.inc228
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup265

for.inc228.for.cond180.preheader_crit_edge:       ; preds = %for.inc228
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond180.preheader

err_link:                                         ; preds = %cleanup218, %cleanup, %do.end103, %do.end62
  %ret.0 = phi i32 [ %call57, %do.end62 ], [ %call98, %do.end103 ], [ %call152, %cleanup ], [ %call205, %cleanup218 ]
  %135 = ptrtoint ptr %vfe_num to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %vfe_num, align 8
  br label %err_reg_vfe

err_reg_vfe:                                      ; preds = %err_link, %do.end37
  %i.7 = phi i32 [ %i.2422, %do.end37 ], [ %136, %err_link ]
  %ret.1 = phi i32 [ %call32, %do.end37 ], [ %ret.0, %err_link ]
  %i.8455 = add i32 %i.7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.8455)
  %cmp234456 = icmp sgt i32 %i.8455, -1
  br i1 %cmp234456, label %for.body236.lr.ph, label %err_reg_vfe.err_reg_ispif_crit_edge

err_reg_vfe.err_reg_ispif_crit_edge:              ; preds = %err_reg_vfe
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_reg_ispif

for.body236.lr.ph:                                ; preds = %err_reg_vfe
  %vfe237 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 11
  br label %for.body236

for.body236:                                      ; preds = %for.body236.for.body236_crit_edge, %for.body236.lr.ph
  %i.8457 = phi i32 [ %i.8455, %for.body236.lr.ph ], [ %i.8, %for.body236.for.body236_crit_edge ]
  %137 = ptrtoint ptr %vfe237 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %vfe237, align 4
  %arrayidx238 = getelementptr %struct.vfe_device, ptr %138, i32 %i.8457
  tail call void @msm_vfe_unregister_entities(ptr noundef %arrayidx238) #10
  %i.8 = add nsw i32 %i.8457, -1
  %cmp234 = icmp sgt i32 %i.8457, 0
  br i1 %cmp234, label %for.body236.for.body236_crit_edge, label %for.body236.err_reg_ispif_crit_edge

for.body236.err_reg_ispif_crit_edge:              ; preds = %for.body236
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_reg_ispif

for.body236.for.body236_crit_edge:                ; preds = %for.body236
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body236

err_reg_ispif:                                    ; preds = %for.body236.err_reg_ispif_crit_edge, %err_reg_vfe.err_reg_ispif_crit_edge, %do.end24
  %ret.2 = phi i32 [ %call19, %do.end24 ], [ %ret.1, %err_reg_vfe.err_reg_ispif_crit_edge ], [ %ret.1, %for.body236.err_reg_ispif_crit_edge ]
  %139 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ispif, align 4
  tail call void @msm_ispif_unregister_entities(ptr noundef %140) #10
  %141 = ptrtoint ptr %csid_num to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %csid_num, align 4
  br label %err_reg_csid

err_reg_csid:                                     ; preds = %err_reg_ispif, %do.end12
  %i.9 = phi i32 [ %i.1420, %do.end12 ], [ %142, %err_reg_ispif ]
  %ret.3 = phi i32 [ %call7, %do.end12 ], [ %ret.2, %err_reg_ispif ]
  %i.10458 = add i32 %i.9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.10458)
  %cmp246459 = icmp sgt i32 %i.10458, -1
  br i1 %cmp246459, label %for.body248.lr.ph, label %err_reg_csid.for.end253_crit_edge

err_reg_csid.for.end253_crit_edge:                ; preds = %err_reg_csid
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end253

for.body248.lr.ph:                                ; preds = %err_reg_csid
  %csid249 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 8
  br label %for.body248

for.body248:                                      ; preds = %for.body248.for.body248_crit_edge, %for.body248.lr.ph
  %i.10460 = phi i32 [ %i.10458, %for.body248.lr.ph ], [ %i.10, %for.body248.for.body248_crit_edge ]
  %143 = ptrtoint ptr %csid249 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %csid249, align 8
  %arrayidx250 = getelementptr %struct.csid_device, ptr %144, i32 %i.10460
  tail call void @msm_csid_unregister_entity(ptr noundef %arrayidx250) #10
  %i.10 = add nsw i32 %i.10460, -1
  %cmp246 = icmp sgt i32 %i.10460, 0
  br i1 %cmp246, label %for.body248.for.body248_crit_edge, label %for.body248.for.end253_crit_edge

for.body248.for.end253_crit_edge:                 ; preds = %for.body248
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end253

for.body248.for.body248_crit_edge:                ; preds = %for.body248
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body248

for.end253:                                       ; preds = %for.body248.for.end253_crit_edge, %err_reg_csid.for.end253_crit_edge
  %145 = ptrtoint ptr %csiphy_num to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %csiphy_num, align 4
  br label %err_reg_csiphy

err_reg_csiphy:                                   ; preds = %for.end253, %do.end
  %i.11 = phi i32 [ %i.0418, %do.end ], [ %146, %for.end253 ]
  %ret.4 = phi i32 [ %call, %do.end ], [ %ret.3, %for.end253 ]
  %i.12461 = add i32 %i.11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.12461)
  %cmp257462 = icmp sgt i32 %i.12461, -1
  br i1 %cmp257462, label %for.body259.lr.ph, label %err_reg_csiphy.cleanup265_crit_edge

err_reg_csiphy.cleanup265_crit_edge:              ; preds = %err_reg_csiphy
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup265

for.body259.lr.ph:                                ; preds = %err_reg_csiphy
  %csiphy260 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 6
  br label %for.body259

for.body259:                                      ; preds = %for.body259.for.body259_crit_edge, %for.body259.lr.ph
  %i.12463 = phi i32 [ %i.12461, %for.body259.lr.ph ], [ %i.12, %for.body259.for.body259_crit_edge ]
  %147 = ptrtoint ptr %csiphy260 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %csiphy260, align 8
  %arrayidx261 = getelementptr %struct.csiphy_device, ptr %148, i32 %i.12463
  tail call void @msm_csiphy_unregister_entity(ptr noundef %arrayidx261) #10
  %i.12 = add nsw i32 %i.12463, -1
  %cmp257 = icmp sgt i32 %i.12463, 0
  br i1 %cmp257, label %for.body259.for.body259_crit_edge, label %for.body259.cleanup265_crit_edge

for.body259.cleanup265_crit_edge:                 ; preds = %for.body259
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup265

for.body259.for.body259_crit_edge:                ; preds = %for.body259
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body259

cleanup265:                                       ; preds = %for.body259.cleanup265_crit_edge, %err_reg_csiphy.cleanup265_crit_edge, %for.inc228.cleanup265_crit_edge, %for.inc172.cleanup265_crit_edge, %for.cond123.preheader.cleanup265_crit_edge, %for.cond175.preheader.cleanup265_crit_edge
  %retval.0 = phi i32 [ %ret.4, %err_reg_csiphy.cleanup265_crit_edge ], [ 0, %for.cond175.preheader.cleanup265_crit_edge ], [ 0, %for.cond123.preheader.cleanup265_crit_edge ], [ %ret.4, %for.body259.cleanup265_crit_edge ], [ 0, %for.inc228.cleanup265_crit_edge ], [ 0, %for.inc172.cleanup265_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @camss_configure_pd(ptr nocapture noundef %camss) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %camss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %camss, align 8
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.camss_configure_pd, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %dev = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 4
  br label %for.body

for.cond:                                         ; preds = %if.end15
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %switch.load
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %switch.lookup
  %i.075 = phi i32 [ 0, %switch.lookup ], [ %inc, %for.cond.for.body_crit_edge ]
  %last_pm_domain.074 = phi i32 [ 0, %switch.lookup ], [ %i.075, %for.cond.for.body_crit_edge ]
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call = tail call ptr @dev_pm_domain_attach_by_id(ptr noundef %5, i32 noundef %i.075) #10
  %arrayidx = getelementptr %struct.camss, ptr %camss, i32 0, i32 13, i32 %i.075
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end15

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call to i32
  br label %fail_pm

if.end15:                                         ; preds = %for.body
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %call19 = tail call ptr @device_link_add(ptr noundef %9, ptr noundef %call, i32 noundef 13) #10
  %arrayidx20 = getelementptr %struct.camss, ptr %camss, i32 0, i32 14, i32 %i.075
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call19, ptr %arrayidx20, align 4
  %tobool.not = icmp eq ptr %call19, null
  br i1 %tobool.not, label %if.then23, label %for.cond

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %12, i1 noundef zeroext true) #10
  br label %fail_pm

fail_pm:                                          ; preds = %if.then23, %if.then11
  %ret.0 = phi i32 [ %7, %if.then11 ], [ -22, %if.then23 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_pm_domain.074)
  %cmp2876.not = icmp eq i32 %last_pm_domain.074, 0
  br i1 %cmp2876.not, label %fail_pm.cleanup_crit_edge, label %fail_pm.for.body29_crit_edge

fail_pm.for.body29_crit_edge:                     ; preds = %fail_pm
  br label %for.body29

fail_pm.cleanup_crit_edge:                        ; preds = %fail_pm
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %fail_pm.for.body29_crit_edge
  %i.177 = phi i32 [ %inc35, %for.body29.for.body29_crit_edge ], [ 0, %fail_pm.for.body29_crit_edge ]
  %arrayidx31 = getelementptr %struct.camss, ptr %camss, i32 0, i32 14, i32 %i.177
  %13 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx31, align 4
  tail call void @device_link_del(ptr noundef %14) #10
  %arrayidx33 = getelementptr %struct.camss, ptr %camss, i32 0, i32 13, i32 %i.177
  %15 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx33, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %16, i1 noundef zeroext true) #10
  %inc35 = add nuw nsw i32 %i.177, 1
  %exitcond86.not = icmp eq i32 %inc35, %last_pm_domain.074
  br i1 %exitcond86.not, label %for.body29.cleanup_crit_edge, label %for.body29.for.body29_crit_edge

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29

for.body29.cleanup_crit_edge:                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body29.cleanup_crit_edge, %fail_pm.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail_pm.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %for.body29.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @camss_unregister_entities(ptr nocapture noundef readonly %camss) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %csiphy_num = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 5
  %0 = ptrtoint ptr %csiphy_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %csiphy_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp29.not = icmp eq i32 %1, 0
  br i1 %cmp29.not, label %entry.for.cond1.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %entry
  %csiphy = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 6
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %csid_num = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 7
  %2 = ptrtoint ptr %csid_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %csid_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp231.not = icmp eq i32 %3, 0
  br i1 %cmp231.not, label %for.cond1.preheader.for.end7_crit_edge, label %for.body3.lr.ph

for.cond1.preheader.for.end7_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end7

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %csid = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 8
  br label %for.body3

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %csiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csiphy, align 8
  %arrayidx = getelementptr %struct.csiphy_device, ptr %5, i32 %i.030
  tail call void @msm_csiphy_unregister_entity(ptr noundef %arrayidx) #10
  %inc = add nuw i32 %i.030, 1
  %6 = ptrtoint ptr %csiphy_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %csiphy_num, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond1.preheader_crit_edge

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body3.lr.ph
  %i.132 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc6, %for.body3.for.body3_crit_edge ]
  %8 = ptrtoint ptr %csid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csid, align 8
  %arrayidx4 = getelementptr %struct.csid_device, ptr %9, i32 %i.132
  tail call void @msm_csid_unregister_entity(ptr noundef %arrayidx4) #10
  %inc6 = add nuw i32 %i.132, 1
  %10 = ptrtoint ptr %csid_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %csid_num, align 4
  %cmp2 = icmp ult i32 %inc6, %11
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.for.end7_crit_edge

for.body3.for.end7_crit_edge:                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end7

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3

for.end7:                                         ; preds = %for.body3.for.end7_crit_edge, %for.cond1.preheader.for.end7_crit_edge
  %ispif = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 9
  %12 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ispif, align 4
  tail call void @msm_ispif_unregister_entities(ptr noundef %13) #10
  %vfe_num = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 10
  %14 = ptrtoint ptr %vfe_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vfe_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp933.not = icmp eq i32 %15, 0
  br i1 %cmp933.not, label %for.end7.for.end14_crit_edge, label %for.body10.lr.ph

for.end7.for.end14_crit_edge:                     ; preds = %for.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end14

for.body10.lr.ph:                                 ; preds = %for.end7
  %vfe = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 11
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body10.lr.ph
  %i.234 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc13, %for.body10.for.body10_crit_edge ]
  %16 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vfe, align 4
  %arrayidx11 = getelementptr %struct.vfe_device, ptr %17, i32 %i.234
  tail call void @msm_vfe_unregister_entities(ptr noundef %arrayidx11) #10
  %inc13 = add nuw i32 %i.234, 1
  %18 = ptrtoint ptr %vfe_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vfe_num, align 8
  %cmp9 = icmp ult i32 %inc13, %19
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.end14_crit_edge

for.body10.for.end14_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end14

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10

for.end14:                                        ; preds = %for.body10.for.end14_crit_edge, %for.end7.for.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_csiphy_subdev_init(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_csid_subdev_init(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_ispif_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_vfe_subdev_init(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_pipeline_link_notify(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_csiphy_register_entity(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_csid_register_entity(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_ispif_register_entities(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_vfe_register_entities(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_vfe_unregister_entities(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_ispif_unregister_entities(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_csid_unregister_entity(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_csiphy_unregister_entity(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @camss_subdev_notifier_bound(ptr nocapture noundef readonly %async, ptr nocapture noundef writeonly %subdev, ptr noundef %asd) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.camss_async_subdev, ptr %asd, i32 0, i32 1
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %interface, align 4
  %csiphy4 = getelementptr i8, ptr %async, i32 668
  %2 = ptrtoint ptr %csiphy4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csiphy4, align 8
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.csiphy_device, ptr %3, i32 %idxprom
  %csi2 = getelementptr inbounds %struct.camss_async_subdev, ptr %asd, i32 0, i32 1, i32 1
  %csi26 = getelementptr %struct.csiphy_device, ptr %3, i32 %idxprom, i32 12, i32 2
  %4 = ptrtoint ptr %csi26 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %csi2, ptr %csi26, align 4
  %host_priv = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 12
  %5 = ptrtoint ptr %host_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %host_priv, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @camss_subdev_notifier_complete(ptr noundef %async) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev1 = getelementptr i8, ptr %async, i32 -128
  %subdevs = getelementptr i8, ptr %async, i32 -120
  %0 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn84 = load ptr, ptr %subdevs, align 4
  %cmp.not86 = icmp eq ptr %.pn84, %subdevs
  br i1 %cmp.not86, label %entry.for.end40_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end40

for.body:                                         ; preds = %for.inc34.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn87 = phi ptr [ %.pn, %for.inc34.for.body_crit_edge ], [ %.pn84, %entry.for.body_crit_edge ]
  %sd.088 = getelementptr i8, ptr %.pn87, i32 -80
  %host_priv = getelementptr i8, ptr %.pn87, i32 76
  %1 = ptrtoint ptr %host_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host_priv, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc34_crit_edge, label %if.then

for.body.for.inc34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc34

if.then:                                          ; preds = %for.body
  %subdev = getelementptr inbounds %struct.csiphy_device, ptr %2, i32 0, i32 2
  %num_pads = getelementptr i8, ptr %.pn87, i32 -48
  %3 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_pads, align 4
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp979.not = icmp eq i16 %4, 0
  br i1 %cmp979.not, label %if.then.for.end_crit_edge, label %for.body11.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body11.lr.ph:                                 ; preds = %if.then
  %pads = getelementptr i8, ptr %.pn87, i32 -36
  %5 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pads, align 4
  br label %for.body11

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.body11.lr.ph
  %i.080 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc, %for.inc.for.body11_crit_edge ]
  %flags = getelementptr %struct.media_pad, ptr %6, i32 %i.080, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %for.inc, label %for.body11.for.end_crit_edge

for.body11.for.end_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %for.body11
  %inc = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.end:                                          ; preds = %for.body11.for.end_crit_edge, %if.then.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.then.for.end_crit_edge ], [ %i.080, %for.body11.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %conv)
  %cmp16 = icmp eq i32 %i.0.lcssa, %conv
  br i1 %cmp16, label %for.end.do.end_crit_edge, label %if.end19

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge
  %dev = getelementptr i8, ptr %async, i32 660
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.155) #14
  br label %cleanup48

if.end19:                                         ; preds = %for.end
  %conv20 = trunc i32 %i.0.lcssa to i16
  %call = tail call i32 @media_create_pad_link(ptr noundef %sd.088, i16 noundef zeroext %conv20, ptr noundef %subdev, i16 noundef zeroext 0, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp21 = icmp slt i32 %call, 0
  br i1 %cmp21, label %do.end26, label %if.end19.for.inc34_crit_edge

if.end19.for.inc34_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc34

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %dev27 = getelementptr i8, ptr %async, i32 660
  %11 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev27, align 8
  %name = getelementptr i8, ptr %.pn87, i32 -64
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %name28 = getelementptr inbounds %struct.csiphy_device, ptr %2, i32 0, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.147, ptr noundef %14, ptr noundef %16, i32 noundef %call) #14
  br label %cleanup48

for.inc34:                                        ; preds = %if.end19.for.inc34_crit_edge, %for.body.for.inc34_crit_edge
  %17 = ptrtoint ptr %.pn87 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn87, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc34.for.end40_crit_edge, label %for.inc34.for.body_crit_edge

for.inc34.for.body_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc34.for.end40_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end40

for.end40:                                        ; preds = %for.inc34.for.end40_crit_edge, %entry.for.end40_crit_edge
  %call.i = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %v4l2_dev1, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp43 = icmp slt i32 %call.i, 0
  br i1 %cmp43, label %for.end40.cleanup48_crit_edge, label %if.end46

for.end40.cleanup48_crit_edge:                    ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup48

if.end46:                                         ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #12
  %media_dev = getelementptr i8, ptr %async, i32 52
  %call47 = tail call i32 @__media_device_register(ptr noundef %media_dev, ptr noundef null) #10
  br label %cleanup48

cleanup48:                                        ; preds = %if.end46, %for.end40.cleanup48_crit_edge, %do.end26, %do.end
  %retval.3 = phi i32 [ %call47, %if.end46 ], [ %call.i, %for.end40.cleanup48_crit_edge ], [ -22, %do.end ], [ %call, %do.end26 ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_id(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @camss_runtime_suspend(ptr nocapture noundef readnone %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @camss_runtime_resume(ptr nocapture noundef readnone %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

attributes #0 = { argmemonly inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !299, !300, !302, !303, !305, !307, !308, !309, !310, !312, !313, !315}
!llvm.module.flags = !{!317, !318, !319, !320, !321, !322, !323, !324}
!llvm.ident = !{!325}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 695, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @camss_enable_clocks._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @camss_enable_clocks._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_qcom_camss__299_1527_qcom_camss_driver_init6, !9, !"__initcall__kmod_qcom_camss__299_1527_qcom_camss_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1527, i32 1}
!10 = !{ptr @__exitcall_qcom_camss_driver_exit, !9, !"__exitcall_qcom_camss_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias300, !12, !"__UNIQUE_ID_alias300", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1529, i32 1}
!13 = !{ptr @__UNIQUE_ID_description301, !14, !"__UNIQUE_ID_description301", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1530, i32 1}
!15 = !{ptr @__UNIQUE_ID_author302, !16, !"__UNIQUE_ID_author302", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1531, i32 1}
!17 = !{ptr @__UNIQUE_ID_file303, !18, !"__UNIQUE_ID_file303", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1532, i32 1}
!19 = !{ptr @__UNIQUE_ID_license304, !18, !"__UNIQUE_ID_license304", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1521, i32 11}
!22 = !{ptr @qcom_camss_driver, !23, !"qcom_camss_driver", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1517, i32 31}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1306, i32 44}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1312, i32 9}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1318, i32 9}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1324, i32 9}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1381, i32 34}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1389, i32 3}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @camss_probe._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @camss_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1403, i32 4}
!41 = !{ptr @camss_probe._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @camss_probe._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1411, i32 4}
!45 = !{ptr @camss_probe._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @camss_probe._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1418, i32 4}
!49 = !{ptr @camss_probe._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @camss_probe._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1426, i32 3}
!53 = !{ptr @camss_probe._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @camss_probe._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 884, i32 4}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @camss_of_parse_ports._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @camss_of_parse_ports._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 956, i32 4}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @camss_init_subdevices._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @camss_init_subdevices._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 967, i32 4}
!67 = !{ptr @camss_init_subdevices._entry.29, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @camss_init_subdevices._entry_ptr.31, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 976, i32 3}
!71 = !{ptr @camss_init_subdevices._entry.32, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @camss_init_subdevices._entry_ptr.34, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 985, i32 4}
!75 = !{ptr @camss_init_subdevices._entry.35, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @camss_init_subdevices._entry_ptr.37, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 37, i32 14}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 37, i32 25}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 37, i32 38}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 37, i32 45}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 42, i32 12}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 42, i32 23}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 49, i32 45}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 54, i32 12}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 54, i32 23}
!95 = !{ptr @csiphy_res_8x16, !96, !"csiphy_res_8x16", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 33, i32 31}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 62, i32 18}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 63, i32 38}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 64, i32 7}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 64, i32 15}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 64, i32 27}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 64, i32 39}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 73, i32 12}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 80, i32 38}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 81, i32 7}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 81, i32 15}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 81, i32 27}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 81, i32 39}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 90, i32 12}
!123 = !{ptr @csid_res_8x16, !124, !"csid_res_8x16", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 59, i32 31}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 100, i32 23}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 100, i32 31}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 101, i32 11}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 101, i32 20}
!133 = !{ptr @ispif_res_8x16, !134, !"ispif_res_8x16", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 95, i32 37}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 111, i32 7}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 111, i32 18}
!139 = !{ptr @vfe_res_8x16, !140, !"vfe_res_8x16", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 106, i32 31}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 156, i32 45}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 161, i32 12}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 161, i32 23}
!147 = !{ptr @csiphy_res_8x96, !148, !"csiphy_res_8x96", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 128, i32 31}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 204, i32 38}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 205, i32 7}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 205, i32 15}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 205, i32 27}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 205, i32 39}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 214, i32 12}
!161 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 221, i32 38}
!163 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 222, i32 7}
!165 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 222, i32 15}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 222, i32 27}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 222, i32 39}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 231, i32 12}
!173 = !{ptr @csid_res_8x96, !174, !"csid_res_8x96", i1 false, i1 false}
!174 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 166, i32 31}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 243, i32 43}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 243, i32 51}
!179 = !{ptr @ispif_res_8x96, !180, !"ispif_res_8x96", i1 false, i1 false}
!180 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 236, i32 37}
!181 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 253, i32 7}
!183 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 253, i32 30}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 271, i32 7}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 271, i32 30}
!189 = !{ptr @vfe_res_8x96, !190, !"vfe_res_8x96", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 248, i32 31}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 291, i32 19}
!193 = !{ptr @csiphy_res_660, !194, !"csiphy_res_660", i1 false, i1 false}
!194 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 286, i32 31}
!195 = !{ptr @.str.97, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 333, i32 26}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 336, i32 7}
!199 = !{ptr @.str.99, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 356, i32 7}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 376, i32 7}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 396, i32 7}
!205 = !{ptr @csid_res_660, !206, !"csid_res_660", i1 false, i1 false}
!206 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 330, i32 31}
!207 = !{ptr @ispif_res_660, !208, !"ispif_res_660", i1 false, i1 false}
!208 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 412, i32 37}
!209 = !{ptr @.str.104, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 428, i32 14}
!211 = !{ptr @vfe_res_660, !212, !"vfe_res_660", i1 false, i1 false}
!212 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 424, i32 31}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 472, i32 14}
!215 = !{ptr @.str.107, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 472, i32 28}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 472, i32 39}
!219 = !{ptr @.str.109, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 473, i32 5}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 473, i32 17}
!223 = !{ptr @.str.111, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 474, i32 5}
!225 = !{ptr @.str.112, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 492, i32 5}
!227 = !{ptr @.str.113, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 510, i32 5}
!229 = !{ptr @.str.114, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 527, i32 32}
!231 = !{ptr @.str.115, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 528, i32 5}
!233 = !{ptr @.str.116, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 528, i32 26}
!235 = !{ptr @csiphy_res_845, !236, !"csiphy_res_845", i1 false, i1 false}
!236 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 468, i32 31}
!237 = !{ptr @.str.118, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 545, i32 18}
!239 = !{ptr @.str.119, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 547, i32 24}
!241 = !{ptr @.str.120, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 548, i32 5}
!243 = !{ptr @.str.121, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 549, i32 5}
!245 = !{ptr @.str.122, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 565, i32 18}
!247 = !{ptr @.str.123, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 567, i32 24}
!249 = !{ptr @.str.124, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 568, i32 5}
!251 = !{ptr @.str.125, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 569, i32 5}
!253 = !{ptr @.str.126, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 585, i32 18}
!255 = !{ptr @.str.127, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 587, i32 16}
!257 = !{ptr @.str.128, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 587, i32 28}
!259 = !{ptr @.str.129, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 588, i32 5}
!261 = !{ptr @.str.130, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 589, i32 5}
!263 = !{ptr @csid_res_845, !264, !"csid_res_845", i1 false, i1 false}
!264 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 542, i32 31}
!265 = !{ptr @.str.132, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 609, i32 24}
!267 = !{ptr @.str.133, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 629, i32 24}
!269 = !{ptr @vfe_res_845, !270, !"vfe_res_845", i1 false, i1 false}
!270 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 604, i32 31}
!271 = !{ptr @camss_media_ops, !272, !"camss_media_ops", i1 false, i1 false}
!272 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1239, i32 38}
!273 = !{ptr @.str.135, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1009, i32 4}
!275 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @camss_register_entities._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @camss_register_entities._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.138, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1020, i32 4}
!280 = !{ptr @camss_register_entities._entry.137, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @camss_register_entities._entry_ptr.139, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.141, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1030, i32 3}
!284 = !{ptr @camss_register_entities._entry.140, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @camss_register_entities._entry_ptr.142, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.144, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1039, i32 4}
!288 = !{ptr @camss_register_entities._entry.143, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @camss_register_entities._entry_ptr.145, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.147, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1055, i32 5}
!292 = !{ptr @camss_register_entities._entry.146, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @camss_register_entities._entry_ptr.148, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @camss_register_entities._entry.149, !295, !"_entry", i1 false, i1 false}
!295 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1075, i32 6}
!296 = !{ptr @camss_register_entities._entry_ptr.150, !295, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @camss_register_entities._entry.151, !298, !"_entry", i1 false, i1 false}
!298 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1097, i32 7}
!299 = !{ptr @camss_register_entities._entry_ptr.152, !298, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @camss_register_entities._entry.153, !301, !"_entry", i1 false, i1 false}
!301 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1118, i32 7}
!302 = !{ptr @camss_register_entities._entry_ptr.154, !301, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @camss_subdev_notifier_ops, !304, !"camss_subdev_notifier_ops", i1 false, i1 false}
!304 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1234, i32 52}
!305 = !{ptr @.str.155, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1210, i32 5}
!307 = !{ptr @.str.156, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @camss_subdev_notifier_complete._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @camss_subdev_notifier_complete._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @camss_subdev_notifier_complete._entry.157, !311, !"_entry", i1 false, i1 false}
!311 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1219, i32 5}
!312 = !{ptr @camss_subdev_notifier_complete._entry_ptr.158, !311, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @camss_dt_match, !314, !"camss_dt_match", i1 false, i1 false}
!314 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1491, i32 34}
!315 = !{ptr @camss_pm_ops, !316, !"camss_pm_ops", i1 false, i1 false}
!316 = !{!"../drivers/media/platform/qcom/camss/camss.c", i32 1511, i32 32}
!317 = !{i32 1, !"wchar_size", i32 2}
!318 = !{i32 1, !"min_enum_size", i32 4}
!319 = !{i32 8, !"branch-target-enforcement", i32 0}
!320 = !{i32 8, !"sign-return-address", i32 0}
!321 = !{i32 8, !"sign-return-address-all", i32 0}
!322 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!323 = !{i32 7, !"uwtable", i32 1}
!324 = !{i32 7, !"frame-pointer", i32 2}
!325 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!326 = !{i64 1178529, i64 1178556, i64 1178578, i64 1178606}
!327 = !{i64 1178937, i64 1178964, i64 1178997, i64 1179018, i64 1179045, i64 1179071}
!328 = !{!"branch_weights", i32 1, i32 2000}
!329 = !{i8 0, i8 2}
