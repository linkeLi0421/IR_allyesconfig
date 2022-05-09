; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos4-is/media-dev.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/media-dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exynos_media_pipeline_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.fimc_md = type { [2 x %struct.fimc_csis_info], [4 x %struct.fimc_sensor_info], i32, [2 x %struct.fimc_camclk_info], [2 x ptr], [3 x ptr], [4 x ptr], ptr, i8, ptr, %struct.media_device, %struct.v4l2_device, ptr, %struct.cam_clk_provider, %struct.v4l2_async_notifier, i8, %struct.spinlock, %struct.list_head, %struct.media_graph }
%struct.fimc_csis_info = type { ptr, i32 }
%struct.fimc_sensor_info = type { %struct.fimc_source_info, ptr, ptr, ptr }
%struct.fimc_source_info = type { i32, i32, i16, i16 }
%struct.fimc_camclk_info = type { ptr, i32, i32 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cam_clk_provider = type { [2 x ptr], %struct.clk_onecell_data, ptr, [2 x %struct.cam_clk], i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.cam_clk = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.fimc_dev = type { %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, [2 x ptr], ptr, %struct.wait_queue_head, ptr, %struct.fimc_m2m_device, %struct.fimc_vid_cap, i32 }
%struct.fimc_m2m_device = type { %struct.video_device, ptr, ptr, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.fimc_vid_cap = type { ptr, %struct.v4l2_subdev, %struct.exynos_video_entity, %struct.media_pad, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, %struct.fimc_source_info, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i8, i32, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.fimc_pipeline = type { %struct.exynos_media_pipeline, %struct.list_head, ptr, [5 x ptr] }
%struct.exynos_media_pipeline = type { %struct.media_pipeline, ptr }
%struct.fimc_lite = type { ptr, ptr, %struct.exynos_video_entity, ptr, %struct.v4l2_fh, %struct.v4l2_subdev, %struct.media_pad, [3 x %struct.media_pad], ptr, %struct.v4l2_ctrl_handler, ptr, i32, %struct.mutex, %struct.spinlock, ptr, ptr, %struct.wait_queue_head, [1 x i32], %struct.flite_frame, %struct.flite_frame, %struct.atomic_t, i32, i32, %struct.list_head, %struct.list_head, %struct.vb2_queue, i16, i32, i32, %struct.fimc_lite_events, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.flite_frame = type { i16, i16, %struct.v4l2_rect, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.fimc_lite_events = type { i32 }
%struct.fimc_is = type { ptr, ptr, ptr, %struct.fimc_is_firmware, %struct.fimc_is_memory, %struct.fimc_isp, [2 x %struct.fimc_is_sensor], %struct.fimc_is_setfile, %struct.v4l2_ctrl_handler, %struct.mutex, %struct.spinlock, [21 x ptr], ptr, ptr, i32, %struct.wait_queue_head, i8, i32, i32, %struct.i2h_cmd, %struct.h2i_cmd, %struct.is_fd_result_header, [4 x %struct.chain_config], i32, ptr, i32, ptr, %struct.is_af_info, ptr }
%struct.fimc_is_firmware = type { ptr, i32, ptr, i32, [32 x i8], [8 x i8], [40 x i8], i8 }
%struct.fimc_is_memory = type { i32, ptr, i32 }
%struct.fimc_isp = type { ptr, %struct.v4l2_subdev, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, ptr, %struct.fimc_isp_ctrls, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fimc_is_video }
%struct.fimc_isp_ctrls = type { %struct.v4l2_ctrl_handler, ptr, %struct.anon.102, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr, ptr }
%struct.fimc_is_video = type { %struct.exynos_video_entity, i32, %struct.media_pad, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i32, [4 x ptr], ptr, %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.fimc_is_sensor = type { ptr, i32, i8 }
%struct.fimc_is_setfile = type { ptr, i32, i32, i32, i32 }
%struct.i2h_cmd = type { i32, i32, i16, [12 x i32] }
%struct.h2i_cmd = type { i16, i32 }
%struct.is_fd_result_header = type { i32, i32, i32, i32, i32, i32 }
%struct.chain_config = type { %struct.global_param, %struct.sensor_param, %struct.isp_param, %struct.drc_param, %struct.fd_param, [2 x i32] }
%struct.global_param = type { %struct.param_global_shotmode }
%struct.param_global_shotmode = type { i32, i32, [13 x i32], i32 }
%struct.sensor_param = type { %struct.param_control, %struct.param_otf_output, %struct.param_sensor_framerate }
%struct.param_control = type { i32, i32, i32, i32, i32, [10 x i32], i32 }
%struct.param_otf_output = type { i32, i32, i32, i32, i32, i32, [9 x i32], i32 }
%struct.param_sensor_framerate = type { i32, [14 x i32], i32 }
%struct.isp_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_dma_input, %struct.param_isp_aa, %struct.param_isp_flash, %struct.param_isp_awb, %struct.param_isp_imageeffect, %struct.param_isp_iso, %struct.param_isp_adjust, %struct.param_isp_metering, %struct.param_isp_afc, %struct.param_otf_output, %struct.param_dma_output, %struct.param_dma_output }
%struct.param_otf_input = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.param_dma_input = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_isp_aa = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_isp_flash = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_awb = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_imageeffect = type { i32, [14 x i32], i32 }
%struct.param_isp_iso = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_adjust = type { i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.param_isp_metering = type { i32, i32, i32, i32, i32, [10 x i32], i32 }
%struct.param_isp_afc = type { i32, i32, [13 x i32], i32 }
%struct.param_dma_output = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32 }
%struct.drc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_otf_output }
%struct.fd_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_fd_config }
%struct.param_fd_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32 }
%struct.is_af_info = type { i16, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.85, %union.anon.86, ptr, i32, i8 }
%union.anon.85 = type { ptr }
%union.anon.86 = type { ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.104, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.104 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_async_subdev = type { i32, %union.anon.99, %struct.list_head, %struct.list_head }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, i16 }
%struct.media_entity_operations = type { ptr, ptr, ptr }

@fimc_md_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fimc_md_probe, ptr @fimc_md_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fimc_md_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_s5p_fimc__301_1598_fimc_md_init6 = internal global ptr @fimc_md_init, section ".initcall6.init", align 4
@__exitcall_fimc_md_exit = internal global ptr @fimc_md_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [60 x i8] c"s5p_fimc.author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [79 x i8] c"s5p_fimc.description=S5P FIMC camera host interface/video postprocessor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [57 x i8] c"s5p_fimc.file=drivers/media/platform/exynos4-is/s5p-fimc\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [21 x i8] c"s5p_fimc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version306 = internal constant [23 x i8] c"s5p_fimc.version=2.0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"s5p_fimc\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.0.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s5p-fimc-md\00", [20 x i8] zeroinitializer }, align 32
@fimc_md_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,fimc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@fimc_md_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&fmd->slock\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Samsung S5P FIMC\00", [47 x i8] zeroinitializer }, align 32
@fimc_md_ops = internal constant { %struct.media_device_ops, [44 x i8] } { %struct.media_device_ops { ptr @fimc_md_link_notify, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@fimc_md_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Failed to register v4l2_device: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fimc_md_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/exynos4-is/media-dev.c\00", [50 x i8] zeroinitializer }, align 32
@fimc_md_probe._entry_ptr = internal global ptr @fimc_md_probe._entry, section ".printk_index", align 4
@fimc_md_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.8, i32 1478, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get pinctrl: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fimc_md_probe._entry_ptr.13 = internal global ptr @fimc_md_probe._entry.9, section ".printk_index", align 4
@dev_attr_subdev_conf_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @subdev_conf_mode_show, ptr @subdev_conf_mode_store }, [36 x i8] zeroinitializer }, align 32
@fimc_md_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 1504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: clock provider registration failed\0A\00", [54 x i8] zeroinitializer }, align 32
@fimc_md_probe._entry_ptr.16 = internal global ptr @fimc_md_probe._entry.14, section ".printk_index", align 4
@subdev_notifier_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @subdev_notifier_bound, ptr @subdev_notifier_complete, ptr null }, [20 x i8] zeroinitializer }, align 32
@__fimc_pipeline_open._entry = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.8, i32 241, ptr null, ptr null }, align 1
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s(): No sensor subdev\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__fimc_pipeline_open\00", [43 x i8] zeroinitializer }, align 32
@__fimc_pipeline_open._entry_ptr = internal global ptr @__fimc_pipeline_open._entry, section ".printk_index", align 4
@fimc_pipeline_s_power.seq = internal constant { [2 x [4 x i8]], [24 x i8] } { [2 x [4 x i8]] [[4 x i8] c"\03\00\01\02", [4 x i8] c"\01\02\00\03"], [24 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@__fimc_pipeline_close._entry = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.19, ptr @.str.8, i32 266, ptr null, ptr null }, align 1
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__fimc_pipeline_close\00", [42 x i8] zeroinitializer }, align 32
@__fimc_pipeline_close._entry_ptr = internal global ptr @__fimc_pipeline_close._entry, section ".printk_index", align 4
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fimc-is\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_cam%u\00", [21 x i8] zeroinitializer }, align 32
@fimc_md_get_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.8, i32 1098, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get clock: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fimc_md_get_clocks\00", [45 x i8] zeroinitializer }, align 32
@fimc_md_get_clocks._entry_ptr = internal global ptr @fimc_md_get_clocks._entry, section ".printk_index", align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pxl_async%u\00", [20 x i8] zeroinitializer }, align 32
@fimc_md_get_clocks._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.8, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Failed to get clock: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@fimc_md_get_clocks._entry_ptr.27 = internal global ptr @fimc_md_get_clocks._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"csis\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fimc-lite\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fimc\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"samsung,lcd-wb\00", [17 x i8] zeroinitializer }, align 32
@fimc_md_register_platform_entity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.8, i32 729, ptr @.str.34, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"deferring %s device registration\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fimc_md_register_platform_entity\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fimc_md_register_platform_entity._entry_ptr = internal global ptr @fimc_md_register_platform_entity._entry, section ".printk_index", align 4
@fimc_md_register_platform_entity._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.8, i32 732, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s device registration failed (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@fimc_md_register_platform_entity._entry_ptr.37 = internal global ptr @fimc_md_register_platform_entity._entry.35, section ".printk_index", align 4
@register_fimc_entity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.8, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register FIMC.%d (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"register_fimc_entity\00", [43 x i8] zeroinitializer }, align 32
@register_fimc_entity._entry_ptr = internal global ptr @register_fimc_entity._entry, section ".printk_index", align 4
@fimc_pipeline_ops = internal constant { %struct.exynos_media_pipeline_ops, [44 x i8] } { %struct.exynos_media_pipeline_ops { ptr null, ptr null, ptr @__fimc_pipeline_open, ptr @__fimc_pipeline_close, ptr @__fimc_pipeline_s_stream }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__fimc_pipeline_s_stream.seq = internal unnamed_addr constant [2 x [5 x i8]] [[5 x i8] c"\04\00\03\01\02", [5 x i8] c"\01\02\04\00\03"], align 1
@register_fimc_lite_entity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.8, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed to register FIMC.LITE%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"register_fimc_lite_entity\00", [38 x i8] zeroinitializer }, align 32
@register_fimc_lite_entity._entry_ptr = internal global ptr @register_fimc_lite_entity._entry, section ".printk_index", align 4
@register_csis_entity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.8, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Failed to register MIPI-CSIS.%d (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"register_csis_entity\00", [43 x i8] zeroinitializer }, align 32
@register_csis_entity._entry_ptr = internal global ptr @register_csis_entity._entry, section ".printk_index", align 4
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@register_fimc_is_entity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.8, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Failed to register FIMC-ISP (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"register_fimc_is_entity\00", [40 x i8] zeroinitializer }, align 32
@register_fimc_is_entity._entry_ptr = internal global ptr @register_fimc_is_entity._entry, section ".printk_index", align 4
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parallel-ports\00", [17 x i8] zeroinitializer }, align 32
@fimc_md_parse_one_endpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.8, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: Remote device at %pOF not found\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fimc_md_parse_one_endpoint\00", [37 x i8] zeroinitializer }, align 32
@fimc_md_parse_one_endpoint._entry_ptr = internal global ptr @fimc_md_parse_one_endpoint._entry, section ".printk_index", align 4
@fimc_md_parse_one_endpoint._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.8, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Wrong port id (%u) at node %pOF\0A\00", [57 x i8] zeroinitializer }, align 32
@fimc_md_parse_one_endpoint._entry_ptr.53 = internal global ptr @fimc_md_parse_one_endpoint._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c-isp\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"subdev_conf_mode\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Sub-device API (sub-dev)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"V4L2 video node only API (vid-dev)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vid-dev\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sub-dev\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@cam_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @cam_clk_prepare, ptr @cam_clk_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@fimc_md_register_clk_provider._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.8, i32 1349, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register clock: %s (%ld)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fimc_md_register_clk_provider\00", [34 x i8] zeroinitializer }, align 32
@fimc_md_register_clk_provider._entry_ptr = internal global ptr @fimc_md_register_clk_provider._entry, section ".printk_index", align 4
@fimc_md_register_clk_provider._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.8, i32 1357, ptr @.str.65, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clk provider not registered\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fimc_md_register_clk_provider._entry_ptr.66 = internal global ptr @fimc_md_register_clk_provider._entry.63, section ".printk_index", align 4
@subdev_notifier_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.8, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: Registered sensor subdevice: %s (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"subdev_notifier_bound\00", [42 x i8] zeroinitializer }, align 32
@subdev_notifier_bound._entry_ptr = internal global ptr @subdev_notifier_bound._entry, section ".printk_index", align 4
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Wrong CSI channel id: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"MIPI-CSI interface specified but s5p-csis module is not loaded!\0A\00", [63 x i8] zeroinitializer }, align 32
@fimc_md_create_links._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.8, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: created link [%s] => [%s]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fimc_md_create_links\00", [43 x i8] zeroinitializer }, align 32
@fimc_md_create_links._entry_ptr = internal global ptr @fimc_md_create_links._entry, section ".printk_index", align 4
@fimc_md_create_links._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.8, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: Wrong bus_type: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@fimc_md_create_links._entry_ptr.75 = internal global ptr @fimc_md_create_links._entry.73, section ".printk_index", align 4
@__fimc_md_create_fimc_sink_links._entry = internal constant %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.8, i32 858, ptr null, ptr null }, align 1
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: created link [%s] %c> [%s]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"__fimc_md_create_fimc_sink_links\00", [63 x i8] zeroinitializer }, align 32
@__fimc_md_create_fimc_sink_links._entry_ptr = internal global ptr @__fimc_md_create_fimc_sink_links._entry, section ".printk_index", align 4
@__fimc_md_create_fimc_sink_links._entry.78 = internal constant %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.8, i32 878, ptr null, ptr null }, align 1
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: created link [%s] -> [%s]\0A\00", [63 x i8] zeroinitializer }, align 32
@__fimc_md_create_fimc_sink_links._entry_ptr.80 = internal global ptr @__fimc_md_create_fimc_sink_links._entry.78, section ".printk_index", align 4
@fimc_md_unregister_entities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.8, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: Unregistered all entities\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fimc_md_unregister_entities\00", [36 x i8] zeroinitializer }, align 32
@fimc_md_unregister_entities._entry_ptr = internal global ptr @fimc_md_unregister_entities._entry, section ".printk_index", align 4
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"s5p-csis\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.86 = internal global [8 x i64] [i64 6, i64 32, i64 256, i64 512, i64 2048, i64 4096, i64 8192, i64 16384]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"fimc_md_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1571, i32 31 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1604, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1576, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"fimc_md_of_match\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1565, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1445, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1449, i32 32 }
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"fimc_md_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1237, i32 38 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1466, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1478, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant [26 x i8] c"dev_attr_subdev_conf_mode\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1504, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [20 x i8] c"subdev_notifier_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1428, i32 52 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 241, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 159, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 266, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [49 x i8] c"../drivers/media/platform/exynos4-is/media-dev.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 182, i32 36 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1094, i32 40 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1098, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1116, i32 40 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1119, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 752, i32 29 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 756, i32 34 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 758, i32 34 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 759, i32 34 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 728, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 731, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 634, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [18 x i8] c"fimc_pipeline_ops\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 366, i32 47 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 604, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 660, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 569, i32 32 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 572, i32 27 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 680, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 541, i32 39 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 423, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 442, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 456, i32 26 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1281, i32 8 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1247, i32 23 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1249, i32 22 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1260, i32 19 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1262, i32 24 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1332, i32 6 }
@___asan_gen_.310 = private unnamed_addr constant [12 x i8] c"cam_clk_ops\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1303, i32 29 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1348, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1357, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1400, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 980, i32 8 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 985, i32 8 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 997, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1010, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 857, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 877, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 805, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.380 = private constant [49 x i8] c"../drivers/media/platform/exynos4-is/media-dev.c\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1584, i32 2 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__UNIQUE_ID_version306, ptr @__exitcall_fimc_md_exit, ptr @__fimc_md_create_fimc_sink_links._entry, ptr @__fimc_md_create_fimc_sink_links._entry.78, ptr @__fimc_md_create_fimc_sink_links._entry_ptr, ptr @__fimc_md_create_fimc_sink_links._entry_ptr.80, ptr @__fimc_pipeline_close._entry, ptr @__fimc_pipeline_close._entry_ptr, ptr @__fimc_pipeline_open._entry, ptr @__fimc_pipeline_open._entry_ptr, ptr @__initcall__kmod_s5p_fimc__301_1598_fimc_md_init6, ptr @__modver_attr, ptr @fimc_md_create_links._entry, ptr @fimc_md_create_links._entry.73, ptr @fimc_md_create_links._entry_ptr, ptr @fimc_md_create_links._entry_ptr.75, ptr @fimc_md_exit, ptr @fimc_md_get_clocks._entry, ptr @fimc_md_get_clocks._entry.25, ptr @fimc_md_get_clocks._entry_ptr, ptr @fimc_md_get_clocks._entry_ptr.27, ptr @fimc_md_parse_one_endpoint._entry, ptr @fimc_md_parse_one_endpoint._entry.51, ptr @fimc_md_parse_one_endpoint._entry_ptr, ptr @fimc_md_parse_one_endpoint._entry_ptr.53, ptr @fimc_md_probe._entry, ptr @fimc_md_probe._entry.14, ptr @fimc_md_probe._entry.9, ptr @fimc_md_probe._entry_ptr, ptr @fimc_md_probe._entry_ptr.13, ptr @fimc_md_probe._entry_ptr.16, ptr @fimc_md_register_clk_provider._entry, ptr @fimc_md_register_clk_provider._entry.63, ptr @fimc_md_register_clk_provider._entry_ptr, ptr @fimc_md_register_clk_provider._entry_ptr.66, ptr @fimc_md_register_platform_entity._entry, ptr @fimc_md_register_platform_entity._entry.35, ptr @fimc_md_register_platform_entity._entry_ptr, ptr @fimc_md_register_platform_entity._entry_ptr.37, ptr @fimc_md_unregister_entities._entry, ptr @fimc_md_unregister_entities._entry_ptr, ptr @register_csis_entity._entry, ptr @register_csis_entity._entry_ptr, ptr @register_fimc_entity._entry, ptr @register_fimc_entity._entry_ptr, ptr @register_fimc_is_entity._entry, ptr @register_fimc_is_entity._entry_ptr, ptr @register_fimc_lite_entity._entry, ptr @register_fimc_lite_entity._entry_ptr, ptr @subdev_notifier_bound._entry, ptr @subdev_notifier_bound._entry_ptr, ptr @fimc_md_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @fimc_md_of_match, ptr @fimc_md_probe.__key, ptr @.str.4, ptr @.str.5, ptr @fimc_md_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @dev_attr_subdev_conf_mode, ptr @.str.15, ptr @subdev_notifier_ops, ptr @.str.17, ptr @.str.18, ptr @fimc_pipeline_s_power.seq, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @fimc_pipeline_ops, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @cam_clk_ops, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_subdev_conf_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subdev_notifier_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_pipeline_s_power.seq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_get_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_get_clocks._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_register_platform_entity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_register_platform_entity._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_fimc_entity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_pipeline_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_fimc_lite_entity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_csis_entity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_fimc_is_entity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_parse_one_endpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_parse_one_endpoint._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_register_clk_provider._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_register_clk_provider._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subdev_notifier_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_create_links._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_create_links._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_md_unregister_entities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fimc_md_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @fimc_md_driver) #11
  tail call void @fimc_unregister_driver() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_unregister_driver() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_md_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.83) #11
  %call1 = tail call i32 @fimc_register_driver() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fimc_md_driver, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_md_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %reg.i.i.i.i = alloca i32, align 4
  %clk_name.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1232, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %slock = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.4, ptr noundef nonnull @fimc_md_probe.__key, i16 noundef signext 3) #11
  %pipelines = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 17
  %0 = ptrtoint ptr %pipelines to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %pipelines, ptr %pipelines, align 4
  %prev.i = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 17, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pipelines, ptr %prev.i, align 4
  %pdev3 = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 12
  %2 = ptrtoint ptr %pdev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pdev3, align 8
  %media_dev = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 10
  %model = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 10, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str.5, i32 noundef 32) #11
  %ops = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 10, i32 21
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @fimc_md_ops, ptr %ops, align 8
  %4 = ptrtoint ptr %media_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %media_dev, align 8
  %v4l2_dev8 = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 11
  %mdev = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %media_dev, ptr %mdev, align 4
  %notify = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 11, i32 5
  %6 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @fimc_sensor_notify, ptr %notify, align 4
  %name = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 11, i32 4
  %call11 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.3, i32 noundef 36) #11
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i138 = tail call ptr @of_get_child_by_name(ptr noundef %8, ptr noundef nonnull @.str.20) #11
  %tobool.not.i = icmp eq ptr %call.i138, null
  br i1 %tobool.not.i, label %do.body.fimc_md_is_isp_available.exit_crit_edge, label %cond.true.i

do.body.fimc_md_is_isp_available.exit_crit_edge:  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_is_isp_available.exit

cond.true.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call.i138) #11
  br label %fimc_md_is_isp_available.exit

fimc_md_is_isp_available.exit:                    ; preds = %cond.true.i, %do.body.fimc_md_is_isp_available.exit_crit_edge
  %cond.i = phi i1 [ %call1.i, %cond.true.i ], [ false, %do.body.fimc_md_is_isp_available.exit_crit_edge ]
  %use_isp = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 8
  %frombool = zext i1 %cond.i to i8
  %9 = ptrtoint ptr %use_isp to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %use_isp, align 4
  %user_subdev_api = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 15
  %10 = ptrtoint ptr %user_subdev_api to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %user_subdev_api, align 4
  tail call void @media_device_init(ptr noundef %media_dev) #11
  %call15 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef %v4l2_dev8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %do.end19, label %if.end23

do.end19:                                         ; preds = %fimc_md_is_isp_available.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %call15) #14
  br label %err_md

if.end23:                                         ; preds = %fimc_md_is_isp_available.exit
  %11 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev3, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_name.i) #11
  %arrayidx.i = getelementptr %struct.fimc_md, ptr %call.i, i32 0, i32 3, i32 0
  %13 = call ptr @memset(ptr %clk_name.i, i32 255, i32 32)
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.fimc_md, ptr %call.i, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %call6.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.21, i32 noundef 0) #11
  %call8.i = call ptr @clk_get(ptr noundef %dev1.i, ptr noundef nonnull %clk_name.i) #11
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end23.for.end17.i_crit_edge, label %if.end.i

if.end23.for.end17.i_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end17.i

if.end.i:                                         ; preds = %if.end23
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i, ptr %arrayidx.i, align 4
  %call6.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.21, i32 noundef 1) #11
  %call8.1.i = call ptr @clk_get(ptr noundef %dev1.i, ptr noundef nonnull %clk_name.i) #11
  %cmp.i.1.i = icmp ugt ptr %call8.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.end.i.for.end17.i_crit_edge, label %if.end.1.i

if.end.i.for.end17.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end17.i

if.end.1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.1.i, ptr %arrayidx.1.i, align 4
  br label %if.end19.i

for.end17.i:                                      ; preds = %if.end.i.for.end17.i_crit_edge, %if.end23.for.end17.i_crit_edge
  %call8.lcssa.i = phi ptr [ %call8.i, %if.end23.for.end17.i_crit_edge ], [ %call8.1.i, %if.end.i.for.end17.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %clk_name.i) #14
  %18 = ptrtoint ptr %call8.lcssa.i to i32
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.i.i = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %for.end17.i.while.cond.backedge.i.i_crit_edge, label %if.end.i.i

for.end17.i.while.cond.backedge.i.i_crit_edge:    ; preds = %for.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.i.i

if.end.i.i:                                       ; preds = %for.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_put(ptr noundef %20) #11
  %21 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  br label %while.cond.backedge.i.i

while.cond.backedge.i.i:                          ; preds = %if.end.i.i, %for.end17.i.while.cond.backedge.i.i_crit_edge
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.1.i.i = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i.i, label %while.cond.backedge.i.i.while.cond.backedge.1.i.i_crit_edge, label %if.end.1.i.i

while.cond.backedge.i.i.while.cond.backedge.1.i.i_crit_edge: ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.1.i.i

if.end.1.i.i:                                     ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_put(ptr noundef %23) #11
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  br label %while.cond.backedge.1.i.i

while.cond.backedge.1.i.i:                        ; preds = %if.end.1.i.i, %while.cond.backedge.i.i.while.cond.backedge.1.i.i_crit_edge
  %arrayidx9.i.i = getelementptr %struct.fimc_md, ptr %call.i, i32 0, i32 4, i32 0
  %25 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx9.i.i, align 4
  %cmp.i31.i.i = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31.i.i, label %while.cond.backedge.1.i.i.for.inc.i.i_crit_edge, label %if.end12.i.i

while.cond.backedge.1.i.i.for.inc.i.i_crit_edge:  ; preds = %while.cond.backedge.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end12.i.i:                                     ; preds = %while.cond.backedge.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_put(ptr noundef %26) #11
  %27 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx9.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end12.i.i, %while.cond.backedge.1.i.i.for.inc.i.i_crit_edge
  %arrayidx9.1.i.i = getelementptr %struct.fimc_md, ptr %call.i, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %arrayidx9.1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx9.1.i.i, align 4
  %cmp.i31.1.i.i = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31.1.i.i, label %for.inc.i.i.if.end19.i_crit_edge, label %if.end12.1.i.i

for.inc.i.i.if.end19.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.end12.1.i.i:                                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_put(ptr noundef %29) #11
  %30 = ptrtoint ptr %arrayidx9.1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx9.1.i.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end12.1.i.i, %for.inc.i.i.if.end19.i_crit_edge, %if.end.1.i
  %ret.0100.i = phi i32 [ %18, %for.inc.i.i.if.end19.i_crit_edge ], [ %18, %if.end12.1.i.i ], [ 0, %if.end.1.i ]
  %31 = ptrtoint ptr %use_isp to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %use_isp, align 4, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool20.not.i = icmp eq i8 %32, 0
  br i1 %tobool20.not.i, label %if.end19.i.if.end27_crit_edge, label %if.end22.i

if.end19.i.if.end27_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.end22.i:                                       ; preds = %if.end19.i
  %wbclk.i = getelementptr %struct.fimc_md, ptr %call.i, i32 0, i32 4
  %33 = ptrtoint ptr %wbclk.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -22 to ptr), ptr %wbclk.i, align 4
  %call29.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.24, i32 noundef 1) #11
  %call31.i = call ptr @clk_get(ptr noundef %dev1.i, ptr noundef nonnull %clk_name.i) #11
  %cmp.i81.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81.i, label %do.end36.i, label %if.end41.i

do.end36.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name, ptr noundef nonnull %clk_name.i) #14
  %34 = ptrtoint ptr %call31.i to i32
  br label %for.end46.i

if.end41.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx43.i = getelementptr %struct.fimc_md, ptr %call.i, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call31.i, ptr %arrayidx43.i, align 4
  br label %for.end46.i

for.end46.i:                                      ; preds = %if.end41.i, %do.end36.i
  %ret.1.i = phi i32 [ %34, %do.end36.i ], [ %ret.0100.i, %if.end41.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool47.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool47.not.i, label %for.end46.i.if.end27_crit_edge, label %if.then48.i

for.end46.i.if.end27_crit_edge:                   ; preds = %for.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then48.i:                                      ; preds = %for.end46.i
  %36 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.i83.i = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i83.i, label %if.then48.i.while.cond.backedge.i87.i_crit_edge, label %if.end.i84.i

if.then48.i.while.cond.backedge.i87.i_crit_edge:  ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.i87.i

if.end.i84.i:                                     ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_put(ptr noundef %37) #11
  %38 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  br label %while.cond.backedge.i87.i

while.cond.backedge.i87.i:                        ; preds = %if.end.i84.i, %if.then48.i.while.cond.backedge.i87.i_crit_edge
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.1.i86.i = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i86.i, label %while.cond.backedge.i87.i.while.cond.backedge.1.i91.i_crit_edge, label %if.end.1.i88.i

while.cond.backedge.i87.i.while.cond.backedge.1.i91.i_crit_edge: ; preds = %while.cond.backedge.i87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.1.i91.i

if.end.1.i88.i:                                   ; preds = %while.cond.backedge.i87.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_put(ptr noundef %40) #11
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  br label %while.cond.backedge.1.i91.i

while.cond.backedge.1.i91.i:                      ; preds = %if.end.1.i88.i, %while.cond.backedge.i87.i.while.cond.backedge.1.i91.i_crit_edge
  %42 = ptrtoint ptr %wbclk.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wbclk.i, align 4
  %cmp.i31.i90.i = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31.i90.i, label %while.cond.backedge.1.i91.i.for.inc.i95.i_crit_edge, label %if.end12.i92.i

while.cond.backedge.1.i91.i.for.inc.i95.i_crit_edge: ; preds = %while.cond.backedge.1.i91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i95.i

if.end12.i92.i:                                   ; preds = %while.cond.backedge.1.i91.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_put(ptr noundef %43) #11
  %44 = ptrtoint ptr %wbclk.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 -22 to ptr), ptr %wbclk.i, align 4
  br label %for.inc.i95.i

for.inc.i95.i:                                    ; preds = %if.end12.i92.i, %while.cond.backedge.1.i91.i.for.inc.i95.i_crit_edge
  %arrayidx9.1.i93.i = getelementptr %struct.fimc_md, ptr %call.i, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %arrayidx9.1.i93.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx9.1.i93.i, align 4
  %cmp.i31.1.i94.i = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31.1.i94.i, label %for.inc.i95.i.fimc_md_get_clocks.exit_crit_edge, label %if.end12.1.i96.i

for.inc.i95.i.fimc_md_get_clocks.exit_crit_edge:  ; preds = %for.inc.i95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_get_clocks.exit

if.end12.1.i96.i:                                 ; preds = %for.inc.i95.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_put(ptr noundef %46) #11
  %47 = ptrtoint ptr %arrayidx9.1.i93.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx9.1.i93.i, align 4
  br label %fimc_md_get_clocks.exit

fimc_md_get_clocks.exit:                          ; preds = %if.end12.1.i96.i, %for.inc.i95.i.fimc_md_get_clocks.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #11
  br label %err_v4l2dev

if.end27:                                         ; preds = %for.end46.i.if.end27_crit_edge, %if.end19.i.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #11
  %call28 = call ptr @devm_pinctrl_get(ptr noundef %dev1) #11
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end38

if.then30:                                        ; preds = %if.end27
  %cmp32.not = icmp eq ptr %call28, inttoptr (i32 517 to ptr)
  br i1 %cmp32.not, label %if.then30.err_clk_crit_edge, label %do.end36

if.then30.err_clk_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_clk

do.end36:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %call28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %48) #14
  br label %err_clk

if.end38:                                         ; preds = %if.end27
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %subdev_notifier = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 14
  call void @v4l2_async_nf_init(ptr noundef %subdev_notifier) #11
  %50 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %of_node, align 8
  %call.i139 = call ptr @of_get_next_available_child(ptr noundef %51, ptr noundef null) #11
  %cmp.not88.i = icmp eq ptr %call.i139, null
  br i1 %cmp.not88.i, label %if.end38.if.end43_crit_edge, label %for.body.lr.ph.i

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

for.body.lr.ph.i:                                 ; preds = %if.end38
  %fimc_is.i.i.i = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 7
  %pmf.i.i.i = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ret.092.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.2.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %node.089.i = phi ptr [ %call.i139, %for.body.lr.ph.i ], [ %call25.i, %for.inc.i.for.body.i_crit_edge ]
  %call1.i140 = call ptr @of_find_device_by_node(ptr noundef nonnull %node.089.i) #11
  %tobool.not.i141 = icmp eq ptr %call1.i140, null
  br i1 %tobool.not.i141, label %for.body.i.for.inc.i_crit_edge, label %if.end.i142

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i142:                                      ; preds = %for.body.i
  %call2.i = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %node.089.i, ptr noundef nonnull @.str.28) #11
  br i1 %call2.i, label %if.end.i142.if.then18.i_crit_edge, label %if.else.i

if.end.i142.if.then18.i_crit_edge:                ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.else.i:                                        ; preds = %if.end.i142
  %call4.i = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %node.089.i, ptr noundef nonnull @.str.20) #11
  br i1 %call4.i, label %if.else.i.if.then18.i_crit_edge, label %if.else6.i

if.else.i.if.then18.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.else6.i:                                       ; preds = %if.else.i
  %call7.i = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %node.089.i, ptr noundef nonnull @.str.29) #11
  br i1 %call7.i, label %if.else6.i.if.then18.i_crit_edge, label %if.else9.i

if.else6.i.if.then18.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.else9.i:                                       ; preds = %if.else6.i
  %call10.i = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %node.089.i, ptr noundef nonnull @.str.30) #11
  br i1 %call10.i, label %if.end16.i, label %if.else9.i.if.end20.i_crit_edge

if.else9.i.if.end20.i_crit_edge:                  ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.end16.i:                                       ; preds = %if.else9.i
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %node.089.i, ptr noundef nonnull @.str.31, ptr noundef null) #11
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end16.i.if.then18.i_crit_edge, label %if.end16.i.if.end20.i_crit_edge

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.end16.i.if.then18.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.then18.i:                                      ; preds = %if.end16.i.if.then18.i_crit_edge, %if.else6.i.if.then18.i_crit_edge, %if.else.i.if.then18.i_crit_edge, %if.end.i142.if.then18.i_crit_edge
  %plat_entity.045.i = phi i32 [ 4, %if.end16.i.if.then18.i_crit_edge ], [ 2, %if.else6.i.if.then18.i_crit_edge ], [ 3, %if.else.i.if.then18.i_crit_edge ], [ 1, %if.end.i142.if.then18.i_crit_edge ]
  %mutex.i.i.i = getelementptr inbounds %struct.platform_device, ptr %call1.i140, i32 0, i32 3, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #11
  %driver.i.i = getelementptr inbounds %struct.platform_device, ptr %call1.i140, i32 0, i32 3, i32 6
  %52 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i, label %if.then18.i.dev_unlock.thread.i.i_crit_edge, label %lor.lhs.false.i.i

if.then18.i.dev_unlock.thread.i.i_crit_edge:      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_unlock.thread.i.i

lor.lhs.false.i.i:                                ; preds = %if.then18.i
  %owner.i.i = getelementptr inbounds %struct.device_driver, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %owner.i.i, align 4
  %call.i42.i = call zeroext i1 @try_module_get(ptr noundef %55) #11
  br i1 %call.i42.i, label %if.end.i.i143, label %lor.lhs.false.i.i.dev_unlock.thread.i.i_crit_edge

lor.lhs.false.i.i.dev_unlock.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_unlock.thread.i.i

if.end.i.i143:                                    ; preds = %lor.lhs.false.i.i
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %call1.i140, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %57, null
  br i1 %tobool4.not.i.i, label %if.end.i.i143.dev_unlock.i.i_crit_edge, label %if.then5.i.i

if.end.i.i143.dev_unlock.i.i_crit_edge:           ; preds = %if.end.i.i143
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_unlock.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i143
  %58 = zext i32 %plat_entity.045.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %plat_entity.045.i, label %if.then5.i.i.dev_unlock.i.i_crit_edge [
    i32 4, label %sw.bb.i.i
    i32 2, label %sw.bb7.i.i
    i32 1, label %sw.bb9.i.i
    i32 3, label %sw.bb11.i.i
  ]

if.then5.i.i.dev_unlock.i.i_crit_edge:            ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_unlock.i.i

sw.bb.i.i:                                        ; preds = %if.then5.i.i
  %id.i.i.i = getelementptr inbounds %struct.fimc_dev, ptr %57, i32 0, i32 7
  %59 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp.i.i.i144 = icmp sgt i32 %60, 3
  br i1 %cmp.i.i.i144, label %sw.bb.i.i.do.end.i.i.i_crit_edge, label %lor.rhs.i.i.i

sw.bb.i.i.do.end.i.i.i_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

lor.rhs.i.i.i:                                    ; preds = %sw.bb.i.i
  %arrayidx.i.i.i = getelementptr %struct.fimc_md, ptr %call.i, i32 0, i32 6, i32 %60
  %61 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i.i, label %if.end24.i.i.i, label %lor.rhs.i.i.i.do.end.i.i.i_crit_edge, !prof !202

lor.rhs.i.i.i.do.end.i.i.i_crit_edge:             ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %lor.rhs.i.i.i.do.end.i.i.i_crit_edge, %sw.bb.i.i.do.end.i.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 615, i32 noundef 9, ptr noundef null) #11
  br label %dev_unlock.i.i

if.end24.i.i.i:                                   ; preds = %lor.rhs.i.i.i
  %grp_id.i.i.i = getelementptr inbounds %struct.fimc_dev, ptr %57, i32 0, i32 13, i32 1, i32 10
  %63 = ptrtoint ptr %grp_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4096, ptr %grp_id.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 180) #15
  %tobool.not.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end24.i.i.i.dev_unlock.i.i_crit_edge, label %if.end.i.i.i.i

if.end24.i.i.i.dev_unlock.i.i_crit_edge:          ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_unlock.i.i

if.end.i.i.i.i:                                   ; preds = %if.end24.i.i.i
  %list.i.i.i.i = getelementptr inbounds %struct.fimc_pipeline, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i.i.i, ptr noundef %66, ptr noundef %pipelines) #11
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.i.i.i.i.if.end27.i.i.i_crit_edge

if.end.i.i.i.i.if.end27.i.i.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %list.i.i.i.i, ptr %prev.i, align 4
  %68 = ptrtoint ptr %list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %pipelines, ptr %list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.fimc_pipeline, ptr %call7.i.i.i.i.i.i, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i.i.i.i.i, align 8
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %list.i.i.i.i, ptr %66, align 4
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end.i.i.i.i.if.end27.i.i.i_crit_edge
  %ops.i.i.i.i = getelementptr inbounds %struct.exynos_media_pipeline, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @fimc_pipeline_ops, ptr %ops.i.i.i.i, align 8
  %subdev.i.i.i = getelementptr inbounds %struct.fimc_dev, ptr %57, i32 0, i32 13, i32 1
  %host_priv.i.i.i.i = getelementptr inbounds %struct.fimc_dev, ptr %57, i32 0, i32 13, i32 1, i32 12
  %72 = ptrtoint ptr %host_priv.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i.i.i.i.i, ptr %host_priv.i.i.i.i, align 4
  %call28.i.i.i = call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev8, ptr noundef %subdev.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i.i)
  %tobool29.not.i.i.i = icmp eq i32 %call28.i.i.i, 0
  br i1 %tobool29.not.i.i.i, label %if.then30.i.i.i, label %do.end45.i.i.i

if.then30.i.i.i:                                  ; preds = %if.end27.i.i.i
  %73 = ptrtoint ptr %pmf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pmf.i.i.i, align 8
  %tobool31.not.i.i.i = icmp eq ptr %74, null
  br i1 %tobool31.not.i.i.i, label %land.lhs.true.i.i.i, label %if.then30.i.i.i.if.end36.i.i.i_crit_edge

if.then30.i.i.i.if.end36.i.i.i_crit_edge:         ; preds = %if.then30.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then30.i.i.i
  %pdev.i.i.i = getelementptr inbounds %struct.fimc_dev, ptr %57, i32 0, i32 2
  %75 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev.i.i.i, align 8
  %tobool32.not.i.i.i = icmp eq ptr %76, null
  br i1 %tobool32.not.i.i.i, label %land.lhs.true.i.i.i.if.end36.i.i.i_crit_edge, label %if.then33.i.i.i

land.lhs.true.i.i.i.if.end36.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i.i.i

if.then33.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i.i = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %pmf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %dev.i.i.i, ptr %pmf.i.i.i, align 8
  br label %if.end36.i.i.i

if.end36.i.i.i:                                   ; preds = %if.then33.i.i.i, %land.lhs.true.i.i.i.if.end36.i.i.i_crit_edge, %if.then30.i.i.i.if.end36.i.i.i_crit_edge
  %78 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %id.i.i.i, align 4
  %arrayidx39.i.i.i = getelementptr %struct.fimc_md, ptr %call.i, i32 0, i32 6, i32 %79
  %80 = ptrtoint ptr %arrayidx39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %57, ptr %arrayidx39.i.i.i, align 4
  %81 = ptrtoint ptr %user_subdev_api to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %user_subdev_api, align 4, !range !201
  %user_subdev_api42.i.i.i = getelementptr inbounds %struct.fimc_dev, ptr %57, i32 0, i32 13, i32 17
  %83 = ptrtoint ptr %user_subdev_api42.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %user_subdev_api42.i.i.i, align 4
  br label %dev_unlock.i.i

do.end45.i.i.i:                                   ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %id.i.i.i, align 4
  %call49.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name, i32 noundef %85, i32 noundef %call28.i.i.i) #14
  br label %dev_unlock.i.i

sw.bb7.i.i:                                       ; preds = %if.then5.i.i
  %index.i.i.i = getelementptr inbounds %struct.fimc_lite, ptr %57, i32 0, i32 11
  %86 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %index.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %87)
  %cmp.i50.i.i = icmp sgt i32 %87, 2
  br i1 %cmp.i50.i.i, label %sw.bb7.i.i.do.end.i54.i.i_crit_edge, label %lor.rhs.i53.i.i

sw.bb7.i.i.do.end.i54.i.i_crit_edge:              ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i54.i.i

lor.rhs.i53.i.i:                                  ; preds = %sw.bb7.i.i
  %arrayidx.i51.i.i = getelementptr %struct.fimc_md, ptr %call.i, i32 0, i32 5, i32 %87
  %88 = ptrtoint ptr %arrayidx.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i51.i.i, align 4
  %tobool.not.i52.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i52.i.i, label %if.end24.i58.i.i, label %lor.rhs.i53.i.i.do.end.i54.i.i_crit_edge, !prof !202

lor.rhs.i53.i.i.do.end.i54.i.i_crit_edge:         ; preds = %lor.rhs.i53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i54.i.i

do.end.i54.i.i:                                   ; preds = %lor.rhs.i53.i.i.do.end.i54.i.i_crit_edge, %sw.bb7.i.i.do.end.i54.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 588, i32 noundef 9, ptr noundef null) #11
  br label %dev_unlock.i.i

if.end24.i58.i.i:                                 ; preds = %lor.rhs.i53.i.i
  %grp_id.i55.i.i = getelementptr inbounds %struct.fimc_lite, ptr %57, i32 0, i32 5, i32 10
  %90 = ptrtoint ptr %grp_id.i55.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 8192, ptr %grp_id.i55.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %91 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i56.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %91, i32 noundef 3520, i32 noundef 180) #15
  %tobool.not.i.i57.i.i = icmp eq ptr %call7.i.i.i.i56.i.i, null
  br i1 %tobool.not.i.i57.i.i, label %if.end24.i58.i.i.dev_unlock.i.i_crit_edge, label %if.end.i.i63.i.i

if.end24.i58.i.i.dev_unlock.i.i_crit_edge:        ; preds = %if.end24.i58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_unlock.i.i

if.end.i.i63.i.i:                                 ; preds = %if.end24.i58.i.i
  %list.i.i59.i.i = getelementptr inbounds %struct.fimc_pipeline, ptr %call7.i.i.i.i56.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i62.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i59.i.i, ptr noundef %93, ptr noundef %pipelines) #11
  br i1 %call.i.i.i.i62.i.i, label %if.end.i.i.i.i65.i.i, label %if.end.i.i63.i.i.if.end27.i72.i.i_crit_edge

if.end.i.i63.i.i.if.end27.i72.i.i_crit_edge:      ; preds = %if.end.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i72.i.i

if.end.i.i.i.i65.i.i:                             ; preds = %if.end.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %list.i.i59.i.i, ptr %prev.i, align 4
  %95 = ptrtoint ptr %list.i.i59.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %pipelines, ptr %list.i.i59.i.i, align 4
  %prev3.i.i.i.i64.i.i = getelementptr inbounds %struct.fimc_pipeline, ptr %call7.i.i.i.i56.i.i, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %prev3.i.i.i.i64.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev3.i.i.i.i64.i.i, align 8
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %list.i.i59.i.i, ptr %93, align 4
  br label %if.end27.i72.i.i

if.end27.i72.i.i:                                 ; preds = %if.end.i.i.i.i65.i.i, %if.end.i.i63.i.i.if.end27.i72.i.i_crit_edge
  %ops.i.i66.i.i = getelementptr inbounds %struct.exynos_media_pipeline, ptr %call7.i.i.i.i56.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %ops.i.i66.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @fimc_pipeline_ops, ptr %ops.i.i66.i.i, align 8
  %subdev.i67.i.i = getelementptr inbounds %struct.fimc_lite, ptr %57, i32 0, i32 5
  %host_priv.i.i68.i.i = getelementptr inbounds %struct.fimc_lite, ptr %57, i32 0, i32 5, i32 12
  %99 = ptrtoint ptr %host_priv.i.i68.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call7.i.i.i.i56.i.i, ptr %host_priv.i.i68.i.i, align 4
  %call28.i70.i.i = call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev8, ptr noundef %subdev.i67.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i70.i.i)
  %tobool29.not.i71.i.i = icmp eq i32 %call28.i70.i.i, 0
  %100 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %index.i.i.i, align 8
  br i1 %tobool29.not.i71.i.i, label %if.then30.i73.i.i, label %do.end36.i.i.i

if.then30.i73.i.i:                                ; preds = %if.end27.i72.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx33.i.i.i = getelementptr %struct.fimc_md, ptr %call.i, i32 0, i32 5, i32 %101
  %102 = ptrtoint ptr %arrayidx33.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %57, ptr %arrayidx33.i.i.i, align 4
  br label %dev_unlock.i.i

do.end36.i.i.i:                                   ; preds = %if.end27.i72.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call40.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name, i32 noundef %101) #14
  br label %dev_unlock.i.i

sw.bb9.i.i:                                       ; preds = %if.then5.i.i
  %of_node.i.i.i = getelementptr inbounds %struct.platform_device, ptr %call1.i140, i32 0, i32 3, i32 27
  %103 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %of_node.i.i.i, align 8
  %tobool.not.i76.i.i = icmp eq ptr %104, null
  br i1 %tobool.not.i76.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i

cond.true.i.i.i:                                  ; preds = %sw.bb9.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i.i) #11
  %105 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %reg.i.i.i.i, align 4
  %call.i.i.i.i = call ptr @of_get_child_by_name(ptr noundef nonnull %104, ptr noundef nonnull @.str.44) #11
  %tobool.not.i.i77.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i77.i.i, label %cond.true.i.i.i.__of_get_csis_id.exit.i.i.i_crit_edge, label %if.end.i.i79.i.i

cond.true.i.i.i.__of_get_csis_id.exit.i.i.i_crit_edge: ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__of_get_csis_id.exit.i.i.i

if.end.i.i79.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i78.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i.i.i.i, ptr noundef nonnull @.str.45, ptr noundef nonnull %reg.i.i.i.i, i32 noundef 1, i32 noundef 0) #11
  call void @of_node_put(ptr noundef nonnull %call.i.i.i.i) #11
  %106 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %reg.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %107, -3
  br label %__of_get_csis_id.exit.i.i.i

__of_get_csis_id.exit.i.i.i:                      ; preds = %if.end.i.i79.i.i, %cond.true.i.i.i.__of_get_csis_id.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end.i.i79.i.i ], [ -22, %cond.true.i.i.i.__of_get_csis_id.exit.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i.i) #11
  br label %cond.end4.i.i.i

cond.false.i.i.i:                                 ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %id1.i.i.i = getelementptr inbounds %struct.platform_device, ptr %call1.i140, i32 0, i32 1
  %108 = ptrtoint ptr %id1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %id1.i.i.i, align 4
  %110 = call i32 @llvm.smax.i32(i32 %109, i32 0) #11
  br label %cond.end4.i.i.i

cond.end4.i.i.i:                                  ; preds = %cond.false.i.i.i, %__of_get_csis_id.exit.i.i.i
  %cond5.i.i.i = phi i32 [ %retval.0.i.i.i.i, %__of_get_csis_id.exit.i.i.i ], [ %110, %cond.false.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond5.i.i.i)
  %111 = icmp ugt i32 %cond5.i.i.i, 1
  br i1 %111, label %do.end.i80.i.i, label %if.end30.i.i.i, !prof !203

do.end.i80.i.i:                                   ; preds = %cond.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 649, i32 noundef 9, ptr noundef null) #11
  br label %dev_unlock.i.i

if.end30.i.i.i:                                   ; preds = %cond.end4.i.i.i
  %arrayidx.i81.i.i = getelementptr [2 x %struct.fimc_csis_info], ptr %call.i, i32 0, i32 %cond5.i.i.i
  %112 = ptrtoint ptr %arrayidx.i81.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i81.i.i, align 8
  %tobool33.not.i.i.i = icmp eq ptr %113, null
  br i1 %tobool33.not.i.i.i, label %if.end65.i.i.i, label %do.end49.i.i.i, !prof !202

do.end49.i.i.i:                                   ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 652, i32 noundef 9, ptr noundef null) #11
  br label %dev_unlock.i.i

if.end65.i.i.i:                                   ; preds = %if.end30.i.i.i
  %grp_id.i82.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %57, i32 0, i32 10
  %114 = ptrtoint ptr %grp_id.i82.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2048, ptr %grp_id.i82.i.i, align 4
  %call66.i.i.i = call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev8, ptr noundef nonnull %57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i.i.i)
  %tobool67.not.i.i.i = icmp eq i32 %call66.i.i.i, 0
  br i1 %tobool67.not.i.i.i, label %if.then68.i.i.i, label %do.end74.i.i.i

if.then68.i.i.i:                                  ; preds = %if.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %arrayidx.i81.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %57, ptr %arrayidx.i81.i.i, align 8
  br label %dev_unlock.i.i

do.end74.i.i.i:                                   ; preds = %if.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call77.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name, i32 noundef %cond5.i.i.i, i32 noundef %call66.i.i.i) #14
  br label %dev_unlock.i.i

sw.bb11.i.i:                                      ; preds = %if.then5.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %116 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i86.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %116, i32 noundef 3520, i32 noundef 180) #15
  %tobool.not.i.i87.i.i = icmp eq ptr %call7.i.i.i.i86.i.i, null
  br i1 %tobool.not.i.i87.i.i, label %sw.bb11.i.i.dev_unlock.i.i_crit_edge, label %if.end.i.i92.i.i

sw.bb11.i.i.dev_unlock.i.i_crit_edge:             ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_unlock.i.i

if.end.i.i92.i.i:                                 ; preds = %sw.bb11.i.i
  %list.i.i88.i.i = getelementptr inbounds %struct.fimc_pipeline, ptr %call7.i.i.i.i86.i.i, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i91.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i88.i.i, ptr noundef %118, ptr noundef %pipelines) #11
  br i1 %call.i.i.i.i91.i.i, label %if.end.i.i.i.i94.i.i, label %if.end.i.i92.i.i.if.end.i.i.i_crit_edge

if.end.i.i92.i.i.if.end.i.i.i_crit_edge:          ; preds = %if.end.i.i92.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.end.i.i.i.i94.i.i:                             ; preds = %if.end.i.i92.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %list.i.i88.i.i, ptr %prev.i, align 4
  %120 = ptrtoint ptr %list.i.i88.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %pipelines, ptr %list.i.i88.i.i, align 4
  %prev3.i.i.i.i93.i.i = getelementptr inbounds %struct.fimc_pipeline, ptr %call7.i.i.i.i86.i.i, i32 0, i32 1, i32 1
  %121 = ptrtoint ptr %prev3.i.i.i.i93.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %prev3.i.i.i.i93.i.i, align 8
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %list.i.i88.i.i, ptr %118, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i.i.i94.i.i, %if.end.i.i92.i.i.if.end.i.i.i_crit_edge
  %ops.i.i95.i.i = getelementptr inbounds %struct.exynos_media_pipeline, ptr %call7.i.i.i.i86.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %ops.i.i95.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @fimc_pipeline_ops, ptr %ops.i.i95.i.i, align 8
  %subdev.i96.i.i = getelementptr inbounds %struct.fimc_is, ptr %57, i32 0, i32 5, i32 1
  %host_priv.i.i97.i.i = getelementptr inbounds %struct.fimc_is, ptr %57, i32 0, i32 5, i32 1, i32 12
  %124 = ptrtoint ptr %host_priv.i.i97.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call7.i.i.i.i86.i.i, ptr %host_priv.i.i97.i.i, align 4
  %call1.i.i.i = call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev8, ptr noundef %subdev.i96.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end6.i.i.i, label %do.end.i100.i.i

do.end.i100.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name, i32 noundef %call1.i.i.i) #14
  br label %dev_unlock.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %125 = ptrtoint ptr %fimc_is.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %57, ptr %fimc_is.i.i.i, align 8
  br label %dev_unlock.i.i

dev_unlock.thread.i.i:                            ; preds = %lor.lhs.false.i.i.dev_unlock.thread.i.i_crit_edge, %if.then18.i.dev_unlock.thread.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i.i.i) #11
  br label %do.end.i.i

dev_unlock.i.i:                                   ; preds = %if.end6.i.i.i, %do.end.i100.i.i, %sw.bb11.i.i.dev_unlock.i.i_crit_edge, %do.end74.i.i.i, %if.then68.i.i.i, %do.end49.i.i.i, %do.end.i80.i.i, %do.end36.i.i.i, %if.then30.i73.i.i, %if.end24.i58.i.i.dev_unlock.i.i_crit_edge, %do.end.i54.i.i, %do.end45.i.i.i, %if.end36.i.i.i, %if.end24.i.i.i.dev_unlock.i.i_crit_edge, %do.end.i.i.i, %if.then5.i.i.dev_unlock.i.i_crit_edge, %if.end.i.i143.dev_unlock.i.i_crit_edge
  %ret.0.i.i = phi i32 [ -517, %if.end.i.i143.dev_unlock.i.i_crit_edge ], [ -19, %if.then5.i.i.dev_unlock.i.i_crit_edge ], [ -16, %do.end.i.i.i ], [ %call28.i.i.i, %do.end45.i.i.i ], [ 0, %if.end36.i.i.i ], [ -12, %if.end24.i.i.i.dev_unlock.i.i_crit_edge ], [ -16, %do.end.i54.i.i ], [ %call28.i70.i.i, %do.end36.i.i.i ], [ 0, %if.then30.i73.i.i ], [ -12, %if.end24.i58.i.i.dev_unlock.i.i_crit_edge ], [ -2, %do.end.i80.i.i ], [ -16, %do.end49.i.i.i ], [ %call66.i.i.i, %do.end74.i.i.i ], [ 0, %if.then68.i.i.i ], [ %call1.i.i.i, %do.end.i100.i.i ], [ 0, %if.end6.i.i.i ], [ -12, %sw.bb11.i.i.dev_unlock.i.i_crit_edge ]
  %126 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %driver.i.i, align 4
  %owner15.i.i = getelementptr inbounds %struct.device_driver, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %owner15.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %owner15.i.i, align 4
  call void @module_put(ptr noundef %129) #11
  call void @mutex_unlock(ptr noundef %mutex.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %ret.0.i.i)
  %cmp.i.i145 = icmp eq i32 %ret.0.i.i, -517
  br i1 %cmp.i.i145, label %dev_unlock.i.i.do.end.i.i_crit_edge, label %if.else.i.i

dev_unlock.i.i.do.end.i.i_crit_edge:              ; preds = %dev_unlock.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %dev_unlock.i.i.do.end.i.i_crit_edge, %dev_unlock.thread.i.i
  %130 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pdev3, align 8
  %dev18.i.i = getelementptr inbounds %struct.platform_device, ptr %131, i32 0, i32 3
  %init_name.i.i.i = getelementptr inbounds %struct.platform_device, ptr %call1.i140, i32 0, i32 3, i32 3
  %132 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i103.i.i = icmp eq ptr %133, null
  br i1 %tobool.not.i103.i.i, label %if.end.i104.i.i, label %do.end.i.i.dev_name.exit.i.i_crit_edge

do.end.i.i.dev_name.exit.i.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i104.i.i:                                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev1.i82.i = getelementptr inbounds %struct.platform_device, ptr %call1.i140, i32 0, i32 3
  %134 = ptrtoint ptr %dev1.i82.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev1.i82.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i104.i.i, %do.end.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i105.i.i = phi ptr [ %135, %if.end.i104.i.i ], [ %133, %do.end.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18.i.i, ptr noundef nonnull @.str.32, ptr noundef %retval.0.i105.i.i) #14
  br label %if.end20.thread.i

if.else.i.i:                                      ; preds = %dev_unlock.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp20.i.i = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp20.i.i, label %do.end24.i.i, label %if.end20.thread53.i

if.end20.thread53.i:                              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev55.i = getelementptr inbounds %struct.platform_device, ptr %call1.i140, i32 0, i32 3
  call void @put_device(ptr noundef %dev55.i) #11
  br label %for.inc.i

do.end24.i.i:                                     ; preds = %if.else.i.i
  %136 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pdev3, align 8
  %dev26.i.i = getelementptr inbounds %struct.platform_device, ptr %137, i32 0, i32 3
  %init_name.i106.i.i = getelementptr inbounds %struct.platform_device, ptr %call1.i140, i32 0, i32 3, i32 3
  %138 = ptrtoint ptr %init_name.i106.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %init_name.i106.i.i, align 8
  %tobool.not.i107.i.i = icmp eq ptr %139, null
  br i1 %tobool.not.i107.i.i, label %if.end.i108.i.i, label %do.end24.i.i.dev_name.exit110.i.i_crit_edge

do.end24.i.i.dev_name.exit110.i.i_crit_edge:      ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit110.i.i

if.end.i108.i.i:                                  ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev1.i.le.i = getelementptr inbounds %struct.platform_device, ptr %call1.i140, i32 0, i32 3
  %140 = ptrtoint ptr %dev1.i.le.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev1.i.le.i, align 4
  br label %dev_name.exit110.i.i

dev_name.exit110.i.i:                             ; preds = %if.end.i108.i.i, %do.end24.i.i.dev_name.exit110.i.i_crit_edge
  %retval.0.i109.i.i = phi ptr [ %141, %if.end.i108.i.i ], [ %139, %do.end24.i.i.dev_name.exit110.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i.i, ptr noundef nonnull @.str.36, ptr noundef %retval.0.i109.i.i, i32 noundef %ret.0.i.i) #14
  br label %if.end20.thread.i

if.end20.thread.i:                                ; preds = %dev_name.exit110.i.i, %dev_name.exit.i.i
  %ret.1.ph.i = phi i32 [ -517, %dev_name.exit.i.i ], [ %ret.0.i.i, %dev_name.exit110.i.i ]
  %dev50.i = getelementptr inbounds %struct.platform_device, ptr %call1.i140, i32 0, i32 3
  call void @put_device(ptr noundef %dev50.i) #11
  br label %fimc_md_register_platform_entities.exit.thread169

if.end20.i:                                       ; preds = %if.end16.i.if.end20.i_crit_edge, %if.else9.i.if.end20.i_crit_edge
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %call1.i140, i32 0, i32 3
  call void @put_device(ptr noundef %dev.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.092.i)
  %cmp21.i = icmp slt i32 %ret.092.i, 0
  br i1 %cmp21.i, label %if.end20.i.fimc_md_register_platform_entities.exit.thread169_crit_edge, label %if.end20.i.for.inc.i_crit_edge

if.end20.i.for.inc.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end20.i.fimc_md_register_platform_entities.exit.thread169_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_register_platform_entities.exit.thread169

fimc_md_register_platform_entities.exit.thread169: ; preds = %if.end20.i.fimc_md_register_platform_entities.exit.thread169_crit_edge, %if.end20.thread.i
  %ret.152.i = phi i32 [ %ret.1.ph.i, %if.end20.thread.i ], [ %ret.092.i, %if.end20.i.fimc_md_register_platform_entities.exit.thread169_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %node.089.i) #11
  br label %err_clk

for.inc.i:                                        ; preds = %if.end20.i.for.inc.i_crit_edge, %if.end20.thread53.i, %for.body.i.for.inc.i_crit_edge
  %ret.2.ph.i = phi i32 [ %ret.0.i.i, %if.end20.thread53.i ], [ %ret.092.i, %if.end20.i.for.inc.i_crit_edge ], [ %ret.092.i, %for.body.i.for.inc.i_crit_edge ]
  %call25.i = call ptr @of_get_next_available_child(ptr noundef %51, ptr noundef nonnull %node.089.i) #11
  %cmp.not.i = icmp eq ptr %call25.i, null
  br i1 %cmp.not.i, label %fimc_md_register_platform_entities.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

fimc_md_register_platform_entities.exit:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.ph.i)
  %tobool41.not = icmp eq i32 %ret.2.ph.i, 0
  br i1 %tobool41.not, label %fimc_md_register_platform_entities.exit.if.end43_crit_edge, label %fimc_md_register_platform_entities.exit.err_clk_crit_edge

fimc_md_register_platform_entities.exit.err_clk_crit_edge: ; preds = %fimc_md_register_platform_entities.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_clk

fimc_md_register_platform_entities.exit.if.end43_crit_edge: ; preds = %fimc_md_register_platform_entities.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end43:                                         ; preds = %fimc_md_register_platform_entities.exit.if.end43_crit_edge, %if.end38.if.end43_crit_edge
  %142 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev3, align 8
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %143, i32 0, i32 3, i32 27
  %144 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %of_node.i, align 8
  %pmf.i = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 9
  %146 = ptrtoint ptr %pmf.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pmf.i, align 8
  %tobool.not.i147 = icmp eq ptr %147, null
  br i1 %tobool.not.i147, label %if.end43.err_m_ent_crit_edge, label %if.end.i150

if.end43.err_m_ent_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_m_ent

if.end.i150:                                      ; preds = %if.end43
  %call.i.i148 = call i32 @__pm_runtime_resume(ptr noundef nonnull %147, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i148)
  %cmp.i.i149 = icmp slt i32 %call.i.i148, 0
  br i1 %cmp.i.i149, label %if.then.i.i, label %if.end3.i

if.then.i.i:                                      ; preds = %if.end.i150
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %147, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !204
  call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #11
  %148 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #11, !srcloc !205
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %148, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.err_m_ent_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.err_m_ent_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_m_ent

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !206
  br label %err_m_ent

if.end3.i:                                        ; preds = %if.end.i150
  %num_sensors.i = getelementptr inbounds %struct.fimc_md, ptr %call.i, i32 0, i32 2
  %149 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %num_sensors.i, align 8
  %call4.i151 = call ptr @of_get_next_available_child(ptr noundef %145, ptr noundef null) #11
  %cmp5.not79.i = icmp eq ptr %call4.i151, null
  br i1 %cmp5.not79.i, label %if.end3.i.for.end.i_crit_edge, label %if.end3.i.for.body.i153_crit_edge

if.end3.i.for.body.i153_crit_edge:                ; preds = %if.end3.i
  br label %for.body.i153

if.end3.i.for.end.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i153:                                    ; preds = %for.inc.i154.for.body.i153_crit_edge, %if.end3.i.for.body.i153_crit_edge
  %node.080.i = phi ptr [ %call17.i, %for.inc.i154.for.body.i153_crit_edge ], [ %call4.i151, %if.end3.i.for.body.i153_crit_edge ]
  %call6.i152 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %node.080.i, ptr noundef nonnull @.str.28) #11
  br i1 %call6.i152, label %if.end8.i, label %for.body.i153.for.inc.i154_crit_edge

for.body.i153.for.inc.i154_crit_edge:             ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i154

if.end8.i:                                        ; preds = %for.body.i153
  %call9.i = call ptr @of_get_next_child(ptr noundef nonnull %node.080.i, ptr noundef null) #11
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end8.i.for.inc.i154_crit_edge, label %if.end12.i

if.end8.i.for.inc.i154_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i154

if.end12.i:                                       ; preds = %if.end8.i
  %call13.i = call fastcc i32 @fimc_md_parse_port_node(ptr noundef %call.i, ptr noundef nonnull %call9.i) #11
  call void @of_node_put(ptr noundef nonnull %call9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end12.i.cleanup35.i_crit_edge, label %if.end12.i.for.inc.i154_crit_edge

if.end12.i.for.inc.i154_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i154

if.end12.i.cleanup35.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35.i

for.inc.i154:                                     ; preds = %if.end12.i.for.inc.i154_crit_edge, %if.end8.i.for.inc.i154_crit_edge, %for.body.i153.for.inc.i154_crit_edge
  %call17.i = call ptr @of_get_next_available_child(ptr noundef %145, ptr noundef nonnull %node.080.i) #11
  %cmp5.not.i = icmp eq ptr %call17.i, null
  br i1 %cmp5.not.i, label %for.inc.i154.for.end.i_crit_edge, label %for.inc.i154.for.body.i153_crit_edge

for.inc.i154.for.body.i153_crit_edge:             ; preds = %for.inc.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i153

for.inc.i154.for.end.i_crit_edge:                 ; preds = %for.inc.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i154.for.end.i_crit_edge, %if.end3.i.for.end.i_crit_edge
  %call18.i = call ptr @of_get_child_by_name(ptr noundef %145, ptr noundef nonnull @.str.48) #11
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %for.end.i.if.end47_crit_edge, label %if.end21.i

for.end.i.if.end47_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.end21.i:                                       ; preds = %for.end.i
  %call22.i = call ptr @of_get_next_child(ptr noundef nonnull %call18.i, ptr noundef null) #11
  %cmp24.not82.i = icmp eq ptr %call22.i, null
  br i1 %cmp24.not82.i, label %if.end21.i.for.end32.i_crit_edge, label %if.end21.i.for.body25.i_crit_edge

if.end21.i.for.body25.i_crit_edge:                ; preds = %if.end21.i
  br label %for.body25.i

if.end21.i.for.end32.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end32.i

for.body25.i:                                     ; preds = %for.inc30.i.for.body25.i_crit_edge, %if.end21.i.for.body25.i_crit_edge
  %node.183.i = phi ptr [ %call31.i155, %for.inc30.i.for.body25.i_crit_edge ], [ %call22.i, %if.end21.i.for.body25.i_crit_edge ]
  %call26.i = call fastcc i32 @fimc_md_parse_port_node(ptr noundef %call.i, ptr noundef nonnull %node.183.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %for.body25.i.cleanup35.i_crit_edge, label %for.inc30.i

for.body25.i.cleanup35.i_crit_edge:               ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35.i

for.inc30.i:                                      ; preds = %for.body25.i
  %call31.i155 = call ptr @of_get_next_child(ptr noundef nonnull %call18.i, ptr noundef nonnull %node.183.i) #11
  %cmp24.not.i = icmp eq ptr %call31.i155, null
  br i1 %cmp24.not.i, label %for.inc30.i.for.end32.i_crit_edge, label %for.inc30.i.for.body25.i_crit_edge

for.inc30.i.for.body25.i_crit_edge:               ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body25.i

for.inc30.i.for.end32.i_crit_edge:                ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end32.i

for.end32.i:                                      ; preds = %for.inc30.i.for.end32.i_crit_edge, %if.end21.i.for.end32.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %call18.i) #11
  br label %if.end47

cleanup35.i:                                      ; preds = %for.body25.i.cleanup35.i_crit_edge, %if.end12.i.cleanup35.i_crit_edge
  %node.080.lcssa.sink.i = phi ptr [ %node.183.i, %for.body25.i.cleanup35.i_crit_edge ], [ %node.080.i, %if.end12.i.cleanup35.i_crit_edge ]
  %ports.0.i = phi ptr [ %call18.i, %for.body25.i.cleanup35.i_crit_edge ], [ null, %if.end12.i.cleanup35.i_crit_edge ]
  %ret.2.i = phi i32 [ %call26.i, %for.body25.i.cleanup35.i_crit_edge ], [ %call13.i, %if.end12.i.cleanup35.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %node.080.lcssa.sink.i) #11
  call void @of_node_put(ptr noundef %ports.0.i) #11
  call void @v4l2_async_nf_cleanup(ptr noundef %subdev_notifier) #11
  %150 = ptrtoint ptr %pmf.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pmf.i, align 8
  %call.i71.i = call i32 @__pm_runtime_idle(ptr noundef %151, i32 noundef 5) #11
  br label %err_m_ent

if.end47:                                         ; preds = %for.end32.i, %for.end.i.if.end47_crit_edge
  %152 = ptrtoint ptr %pmf.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pmf.i, align 8
  %call.i70.i = call i32 @__pm_runtime_idle(ptr noundef %153, i32 noundef 5) #11
  %call49 = call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_subdev_conf_mode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end47.err_cleanup_crit_edge

if.end47.err_cleanup_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_cleanup

if.end52:                                         ; preds = %if.end47
  %call53 = call fastcc i32 @fimc_md_register_clk_provider(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.end58, label %if.end63

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name) #14
  br label %err_attr

if.end63:                                         ; preds = %if.end52
  %154 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %num_sensors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp64 = icmp sgt i32 %155, 0
  br i1 %cmp64, label %if.then65, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then65:                                        ; preds = %if.end63
  %156 = ptrtoint ptr %subdev_notifier to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @subdev_notifier_ops, ptr %subdev_notifier, align 4
  %157 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %num_sensors.i, align 8
  %call71 = call i32 @v4l2_async_nf_register(ptr noundef %v4l2_dev8, ptr noundef %subdev_notifier) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then65.cleanup_crit_edge, label %err_clk_p

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_clk_p:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @fimc_md_unregister_clk_provider(ptr noundef nonnull %call.i)
  br label %err_attr

err_attr:                                         ; preds = %err_clk_p, %do.end58
  %ret.0 = phi i32 [ %call53, %do.end58 ], [ %call71, %err_clk_p ]
  call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_subdev_conf_mode) #11
  br label %err_cleanup

err_cleanup:                                      ; preds = %err_attr, %if.end47.err_cleanup_crit_edge
  %ret.1 = phi i32 [ %call49, %if.end47.err_cleanup_crit_edge ], [ %ret.0, %err_attr ]
  call void @v4l2_async_nf_cleanup(ptr noundef %subdev_notifier) #11
  br label %err_m_ent

err_m_ent:                                        ; preds = %err_cleanup, %cleanup35.i, %do.end11.i.i.i.i.i.i, %if.then.i.i.err_m_ent_crit_edge, %if.end43.err_m_ent_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_cleanup ], [ %call.i.i148, %do.end11.i.i.i.i.i.i ], [ %call.i.i148, %if.then.i.i.err_m_ent_crit_edge ], [ -6, %if.end43.err_m_ent_crit_edge ], [ %ret.2.i, %cleanup35.i ]
  call fastcc void @fimc_md_unregister_entities(ptr noundef nonnull %call.i)
  br label %err_clk

err_clk:                                          ; preds = %err_m_ent, %fimc_md_register_platform_entities.exit.err_clk_crit_edge, %fimc_md_register_platform_entities.exit.thread169, %do.end36, %if.then30.err_clk_crit_edge
  %ret.3 = phi i32 [ %48, %do.end36 ], [ 517, %if.then30.err_clk_crit_edge ], [ %ret.2.ph.i, %fimc_md_register_platform_entities.exit.err_clk_crit_edge ], [ %ret.2, %err_m_ent ], [ %ret.152.i, %fimc_md_register_platform_entities.exit.thread169 ]
  %158 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.i158 = icmp ugt ptr %159, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i158, label %err_clk.while.cond.backedge.i_crit_edge, label %if.end.i159

err_clk.while.cond.backedge.i_crit_edge:          ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.i

if.end.i159:                                      ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_put(ptr noundef %159) #11
  %160 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i159, %err_clk.while.cond.backedge.i_crit_edge
  %161 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.1.i161 = icmp ugt ptr %162, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i161, label %while.cond.backedge.i.while.cond.backedge.1.i_crit_edge, label %if.end.1.i162

while.cond.backedge.i.while.cond.backedge.1.i_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.1.i

if.end.1.i162:                                    ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_put(ptr noundef %162) #11
  %163 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  br label %while.cond.backedge.1.i

while.cond.backedge.1.i:                          ; preds = %if.end.1.i162, %while.cond.backedge.i.while.cond.backedge.1.i_crit_edge
  %arrayidx9.i = getelementptr %struct.fimc_md, ptr %call.i, i32 0, i32 4, i32 0
  %164 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx9.i, align 4
  %cmp.i31.i = icmp ugt ptr %165, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31.i, label %while.cond.backedge.1.i.for.inc.i164_crit_edge, label %if.end12.i163

while.cond.backedge.1.i.for.inc.i164_crit_edge:   ; preds = %while.cond.backedge.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i164

if.end12.i163:                                    ; preds = %while.cond.backedge.1.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_put(ptr noundef %165) #11
  %166 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx9.i, align 4
  br label %for.inc.i164

for.inc.i164:                                     ; preds = %if.end12.i163, %while.cond.backedge.1.i.for.inc.i164_crit_edge
  %arrayidx9.1.i = getelementptr %struct.fimc_md, ptr %call.i, i32 0, i32 4, i32 1
  %167 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx9.1.i, align 4
  %cmp.i31.1.i = icmp ugt ptr %168, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31.1.i, label %for.inc.i164.err_v4l2dev_crit_edge, label %if.end12.1.i

for.inc.i164.err_v4l2dev_crit_edge:               ; preds = %for.inc.i164
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_v4l2dev

if.end12.1.i:                                     ; preds = %for.inc.i164
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_put(ptr noundef %168) #11
  %169 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx9.1.i, align 4
  br label %err_v4l2dev

err_v4l2dev:                                      ; preds = %if.end12.1.i, %for.inc.i164.err_v4l2dev_crit_edge, %fimc_md_get_clocks.exit
  %ret.4 = phi i32 [ %ret.1.i, %fimc_md_get_clocks.exit ], [ %ret.3, %for.inc.i164.err_v4l2dev_crit_edge ], [ %ret.3, %if.end12.1.i ]
  call void @v4l2_device_unregister(ptr noundef %v4l2_dev8) #11
  br label %err_md

err_md:                                           ; preds = %err_v4l2dev, %do.end19
  %ret.5 = phi i32 [ %call15, %do.end19 ], [ %ret.4, %err_v4l2dev ]
  call void @media_device_cleanup(ptr noundef %media_dev) #11
  br label %cleanup

cleanup:                                          ; preds = %err_md, %if.then65.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.5, %err_md ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then65.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_md_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_provider.i = getelementptr inbounds %struct.fimc_md, ptr %1, i32 0, i32 13
  %of_node.i = getelementptr inbounds %struct.fimc_md, ptr %1, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @of_clk_del_provider(ptr noundef nonnull %3) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %num_clocks.i = getelementptr inbounds %struct.fimc_md, ptr %1, i32 0, i32 13, i32 4
  %4 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.not.i = icmp eq i32 %5, 0
  br i1 %cmp7.not.i, label %if.end.i.fimc_md_unregister_clk_provider.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.fimc_md_unregister_clk_provider.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_unregister_clk_provider.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x ptr], ptr %clk_provider.i, i32 0, i32 %i.08.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_unregister(ptr noundef %7) #11
  %inc.i = add nuw i32 %i.08.i, 1
  %8 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_clocks.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.fimc_md_unregister_clk_provider.exit_crit_edge

for.body.i.fimc_md_unregister_clk_provider.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_unregister_clk_provider.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

fimc_md_unregister_clk_provider.exit:             ; preds = %for.body.i.fimc_md_unregister_clk_provider.exit_crit_edge, %if.end.i.fimc_md_unregister_clk_provider.exit_crit_edge
  %subdev_notifier = getelementptr inbounds %struct.fimc_md, ptr %1, i32 0, i32 14
  tail call void @v4l2_async_nf_unregister(ptr noundef %subdev_notifier) #11
  tail call void @v4l2_async_nf_cleanup(ptr noundef %subdev_notifier) #11
  %v4l2_dev = getelementptr inbounds %struct.fimc_md, ptr %1, i32 0, i32 11
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_subdev_conf_mode) #11
  tail call fastcc void @fimc_md_unregister_entities(ptr noundef nonnull %1)
  %pipelines.i = getelementptr inbounds %struct.fimc_md, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %pipelines.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %pipelines.i, align 4
  %cmp.i.not4.i = icmp eq ptr %11, %pipelines.i
  br i1 %cmp.i.not4.i, label %fimc_md_unregister_clk_provider.exit.fimc_md_pipelines_free.exit_crit_edge, label %fimc_md_unregister_clk_provider.exit.while.body.i_crit_edge

fimc_md_unregister_clk_provider.exit.while.body.i_crit_edge: ; preds = %fimc_md_unregister_clk_provider.exit
  br label %while.body.i

fimc_md_unregister_clk_provider.exit.fimc_md_pipelines_free.exit_crit_edge: ; preds = %fimc_md_unregister_clk_provider.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_pipelines_free.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %fimc_md_unregister_clk_provider.exit.while.body.i_crit_edge
  %12 = phi ptr [ %22, %list_del.exit.i.while.body.i_crit_edge ], [ %11, %fimc_md_unregister_clk_provider.exit.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %12, i32 -148
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.i) #11
  %21 = ptrtoint ptr %pipelines.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %pipelines.i, align 4
  %cmp.i.not.i = icmp eq ptr %22, %pipelines.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.fimc_md_pipelines_free.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

list_del.exit.i.fimc_md_pipelines_free.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_pipelines_free.exit

fimc_md_pipelines_free.exit:                      ; preds = %list_del.exit.i.fimc_md_pipelines_free.exit_crit_edge, %fimc_md_unregister_clk_provider.exit.fimc_md_pipelines_free.exit_crit_edge
  %media_dev = getelementptr inbounds %struct.fimc_md, ptr %1, i32 0, i32 10
  tail call void @media_device_unregister(ptr noundef %media_dev) #11
  tail call void @media_device_cleanup(ptr noundef %media_dev) #11
  %arrayidx.i13 = getelementptr %struct.fimc_md, ptr %1, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i13, align 4
  %cmp.i.i = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %fimc_md_pipelines_free.exit.while.cond.backedge.i_crit_edge, label %if.end.i14

fimc_md_pipelines_free.exit.while.cond.backedge.i_crit_edge: ; preds = %fimc_md_pipelines_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.i

if.end.i14:                                       ; preds = %fimc_md_pipelines_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_put(ptr noundef %24) #11
  %25 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i13, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i14, %fimc_md_pipelines_free.exit.while.cond.backedge.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.fimc_md, ptr %1, i32 0, i32 3, i32 0
  %26 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %while.cond.backedge.i.while.cond.backedge.1.i_crit_edge, label %if.end.1.i

while.cond.backedge.i.while.cond.backedge.1.i_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.1.i

if.end.1.i:                                       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_put(ptr noundef %27) #11
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  br label %while.cond.backedge.1.i

while.cond.backedge.1.i:                          ; preds = %if.end.1.i, %while.cond.backedge.i.while.cond.backedge.1.i_crit_edge
  %arrayidx9.i = getelementptr %struct.fimc_md, ptr %1, i32 0, i32 4, i32 0
  %29 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx9.i, align 4
  %cmp.i31.i = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31.i, label %while.cond.backedge.1.i.for.inc.i_crit_edge, label %if.end12.i

while.cond.backedge.1.i.for.inc.i_crit_edge:      ; preds = %while.cond.backedge.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end12.i:                                       ; preds = %while.cond.backedge.1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_put(ptr noundef %30) #11
  %31 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx9.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %while.cond.backedge.1.i.for.inc.i_crit_edge
  %arrayidx9.1.i = getelementptr %struct.fimc_md, ptr %1, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx9.1.i, align 4
  %cmp.i31.1.i = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31.1.i, label %for.inc.i.cleanup_crit_edge, label %if.end12.1.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_put(ptr noundef %33) #11
  %34 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx9.1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12.1.i, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_sensor_notify(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_md_register_clk_provider(ptr noundef %fmd) unnamed_addr #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %p_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_provider = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 13
  %pdev = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 12
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %num_clocks = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 13, i32 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #11
  %2 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_name) #11
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %4, ptr noundef nonnull @.str.60, ptr noundef nonnull %init, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %entry.cleanup.thread85_crit_edge, label %if.end

entry.cleanup.thread85_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread85

cleanup.thread85:                                 ; preds = %for.inc.cleanup.thread85_crit_edge, %entry.cleanup.thread85_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_name) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #11
  %5 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %num_clocks, align 4
  br label %for.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 13, i32 3, i32 0
  %arrayidx5 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %call6 = call ptr @__clk_get_name(ptr noundef %7) #11
  %8 = ptrtoint ptr %p_name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %p_name, align 4
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %p_name, ptr %parent_names, align 4
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %num_parents, align 4
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cam_clk_ops, ptr %ops, align 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %flags, align 4
  %init7 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 13, i32 3, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %init7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %init, ptr %init7, align 4
  %fmd8 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 13, i32 3, i32 0, i32 1
  %14 = ptrtoint ptr %fmd8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fmd, ptr %fmd8, align 4
  %call10 = call ptr @clk_register(ptr noundef null, ptr noundef %arrayidx) #11
  %15 = ptrtoint ptr %clk_provider to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call10, ptr %clk_provider, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %call10.lcssa = phi ptr [ %call10, %if.end.cleanup_crit_edge ], [ %call10.1, %if.end.1.cleanup_crit_edge ]
  %i.088.lcssa89 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end.1.cleanup_crit_edge ]
  %arrayidx11.le = getelementptr [2 x ptr], ptr %clk_provider, i32 0, i32 %i.088.lcssa89
  %16 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init, align 4
  %18 = ptrtoint ptr %call10.lcssa to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.61, ptr noundef %17, i32 noundef %18) #14
  %19 = ptrtoint ptr %arrayidx11.le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11.le, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_name) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #11
  br label %err

for.inc:                                          ; preds = %if.end
  %22 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_clocks, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %num_clocks, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_name) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #11
  %24 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_name) #11
  %25 = ptrtoint ptr %p_name to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %p_name, align 4, !annotation !207
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call.i.1 = call i32 @of_property_read_string_helper(ptr noundef %27, ptr noundef nonnull @.str.60, ptr noundef nonnull %init, i32 noundef 1, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp3.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp3.1, label %for.inc.cleanup.thread85_crit_edge, label %if.end.1

for.inc.cleanup.thread85_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread85

if.end.1:                                         ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 13, i32 3, i32 1
  %arrayidx5.1 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx5.1, align 4
  %call6.1 = call ptr @__clk_get_name(ptr noundef %29) #11
  %30 = ptrtoint ptr %p_name to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call6.1, ptr %p_name, align 4
  %31 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %p_name, ptr %parent_names, align 4
  %32 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %num_parents, align 4
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @cam_clk_ops, ptr %ops, align 4
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %flags, align 4
  %init7.1 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 13, i32 3, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %init7.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %init, ptr %init7.1, align 4
  %fmd8.1 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 13, i32 3, i32 1, i32 1
  %36 = ptrtoint ptr %fmd8.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %fmd, ptr %fmd8.1, align 4
  %call10.1 = call ptr @clk_register(ptr noundef null, ptr noundef %arrayidx.1) #11
  %arrayidx11.1 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 13, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call10.1, ptr %arrayidx11.1, align 4
  %cmp.i.1 = icmp ugt ptr %call10.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end.1.cleanup_crit_edge, label %for.inc.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.1:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_clocks, align 4
  %inc.1 = add i32 %39, 1
  store i32 %inc.1, ptr %num_clocks, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_name) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #11
  br label %for.end

for.end:                                          ; preds = %for.inc.1, %cleanup.thread85
  %40 = phi i32 [ %inc.1, %for.inc.1 ], [ %.pr, %cleanup.thread85 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp28 = icmp eq i32 %40, 0
  br i1 %cmp28, label %do.end32, label %if.end33

do.end32:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.64) #14
  br label %cleanup46

if.end33:                                         ; preds = %for.end
  %clk_data = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 13, i32 1
  %41 = ptrtoint ptr %clk_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %clk_provider, ptr %clk_data, align 4
  %clk_num = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 13, i32 1, i32 1
  %42 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %clk_num, align 4
  %43 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node, align 8
  %of_node39 = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 13, i32 2
  %45 = ptrtoint ptr %of_node39 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %of_node39, align 4
  %46 = load ptr, ptr %of_node, align 8
  %call42 = call i32 @of_clk_add_provider(ptr noundef %46, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %clk_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.end33.cleanup46_crit_edge, label %if.end33.err_crit_edge

if.end33.err_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end33.cleanup46_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup46

err:                                              ; preds = %if.end33.err_crit_edge, %cleanup
  %ret.1 = phi i32 [ %21, %cleanup ], [ %call42, %if.end33.err_crit_edge ]
  %of_node.i = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 13, i32 2
  %47 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node.i, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %err.if.end.i_crit_edge, label %if.then.i

err.if.end.i_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_clk_del_provider(ptr noundef nonnull %48) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %err.if.end.i_crit_edge
  %49 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp7.not.i = icmp eq i32 %50, 0
  br i1 %cmp7.not.i, label %if.end.i.cleanup46_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup46_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup46

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x ptr], ptr %clk_provider, i32 0, i32 %i.08.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  call void @clk_unregister(ptr noundef %52) #11
  %inc.i = add nuw i32 %i.08.i, 1
  %53 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_clocks, align 4
  %cmp.i82 = icmp ult i32 %inc.i, %54
  br i1 %cmp.i82, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup46_crit_edge

for.body.i.cleanup46_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup46

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

cleanup46:                                        ; preds = %for.body.i.cleanup46_crit_edge, %if.end.i.cleanup46_crit_edge, %if.end33.cleanup46_crit_edge, %do.end32
  %retval.0 = phi i32 [ 0, %do.end32 ], [ 0, %if.end33.cleanup46_crit_edge ], [ %ret.1, %if.end.i.cleanup46_crit_edge ], [ %ret.1, %for.body.i.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fimc_md_unregister_clk_provider(ptr nocapture noundef readonly %fmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_provider = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 13
  %of_node = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @of_clk_del_provider(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_clocks = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 13, i32 4
  %2 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr %clk_provider, i32 0, i32 %i.08
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_unregister(ptr noundef %5) #11
  %inc = add nuw i32 %i.08, 1
  %6 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_clocks, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fimc_md_unregister_entities(ptr noundef %fmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 6, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %subdev = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev) #11
  %pipe = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 1
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pipe, align 8
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %cmp1.1 = icmp eq ptr %5, null
  br i1 %cmp1.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  %subdev.1 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev.1) #11
  %pipe.1 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 2, i32 1
  %6 = ptrtoint ptr %pipe.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pipe.1, align 8
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx.1, align 4
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %arrayidx.2 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %cmp1.2 = icmp eq ptr %9, null
  br i1 %cmp1.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #13
  %subdev.2 = getelementptr inbounds %struct.fimc_dev, ptr %9, i32 0, i32 13, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev.2) #11
  %pipe.2 = getelementptr inbounds %struct.fimc_dev, ptr %9, i32 0, i32 13, i32 2, i32 1
  %10 = ptrtoint ptr %pipe.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pipe.2, align 8
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.2, align 4
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %cleanup.1.cleanup.2_crit_edge
  %arrayidx.3 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  %cmp1.3 = icmp eq ptr %13, null
  br i1 %cmp1.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #13
  %subdev.3 = getelementptr inbounds %struct.fimc_dev, ptr %13, i32 0, i32 13, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev.3) #11
  %pipe.3 = getelementptr inbounds %struct.fimc_dev, ptr %13, i32 0, i32 13, i32 2, i32 1
  %14 = ptrtoint ptr %pipe.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pipe.3, align 8
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx.3, align 4
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end.3, %cleanup.2.cleanup.3_crit_edge
  %arrayidx9 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 5, i32 0
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx9, align 4
  %cmp10 = icmp eq ptr %17, null
  br i1 %cmp10, label %cleanup.3.cleanup18_crit_edge, label %if.end12

cleanup.3.cleanup18_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

if.end12:                                         ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #13
  %subdev13 = getelementptr inbounds %struct.fimc_lite, ptr %17, i32 0, i32 5
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev13) #11
  %pipe15 = getelementptr inbounds %struct.fimc_lite, ptr %17, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %pipe15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %pipe15, align 8
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx9, align 4
  br label %cleanup18

cleanup18:                                        ; preds = %if.end12, %cleanup.3.cleanup18_crit_edge
  %arrayidx9.1 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx9.1, align 4
  %cmp10.1 = icmp eq ptr %21, null
  br i1 %cmp10.1, label %cleanup18.cleanup18.1_crit_edge, label %if.end12.1

cleanup18.cleanup18.1_crit_edge:                  ; preds = %cleanup18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18.1

if.end12.1:                                       ; preds = %cleanup18
  call void @__sanitizer_cov_trace_pc() #13
  %subdev13.1 = getelementptr inbounds %struct.fimc_lite, ptr %21, i32 0, i32 5
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev13.1) #11
  %pipe15.1 = getelementptr inbounds %struct.fimc_lite, ptr %21, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %pipe15.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pipe15.1, align 8
  %23 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx9.1, align 4
  br label %cleanup18.1

cleanup18.1:                                      ; preds = %if.end12.1, %cleanup18.cleanup18.1_crit_edge
  %arrayidx9.2 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx9.2, align 4
  %cmp10.2 = icmp eq ptr %25, null
  br i1 %cmp10.2, label %cleanup18.1.cleanup18.2_crit_edge, label %if.end12.2

cleanup18.1.cleanup18.2_crit_edge:                ; preds = %cleanup18.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18.2

if.end12.2:                                       ; preds = %cleanup18.1
  call void @__sanitizer_cov_trace_pc() #13
  %subdev13.2 = getelementptr inbounds %struct.fimc_lite, ptr %25, i32 0, i32 5
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev13.2) #11
  %pipe15.2 = getelementptr inbounds %struct.fimc_lite, ptr %25, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %pipe15.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %pipe15.2, align 8
  %27 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx9.2, align 4
  br label %cleanup18.2

cleanup18.2:                                      ; preds = %if.end12.2, %cleanup18.1.cleanup18.2_crit_edge
  %28 = ptrtoint ptr %fmd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fmd, align 8
  %cmp28 = icmp eq ptr %29, null
  br i1 %cmp28, label %cleanup18.2.for.inc37_crit_edge, label %if.end30

cleanup18.2.for.inc37_crit_edge:                  ; preds = %cleanup18.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc37

if.end30:                                         ; preds = %cleanup18.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @v4l2_device_unregister_subdev(ptr noundef nonnull %29) #11
  %30 = ptrtoint ptr %fmd to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %fmd, align 8
  br label %for.inc37

for.inc37:                                        ; preds = %if.end30, %cleanup18.2.for.inc37_crit_edge
  %arrayidx27.1 = getelementptr [2 x %struct.fimc_csis_info], ptr %fmd, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx27.1, align 8
  %cmp28.1 = icmp eq ptr %32, null
  br i1 %cmp28.1, label %for.inc37.for.inc37.1_crit_edge, label %if.end30.1

for.inc37.for.inc37.1_crit_edge:                  ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc37.1

if.end30.1:                                       ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @v4l2_device_unregister_subdev(ptr noundef nonnull %32) #11
  %33 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx27.1, align 8
  br label %for.inc37.1

for.inc37.1:                                      ; preds = %if.end30.1, %for.inc37.for.inc37.1_crit_edge
  %fimc_is = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 7
  %34 = ptrtoint ptr %fimc_is to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fimc_is, align 8
  %tobool.not = icmp eq ptr %35, null
  br i1 %tobool.not, label %for.inc37.1.do.end_crit_edge, label %if.then40

for.inc37.1.do.end_crit_edge:                     ; preds = %for.inc37.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then40:                                        ; preds = %for.inc37.1
  call void @__sanitizer_cov_trace_pc() #13
  %subdev42 = getelementptr inbounds %struct.fimc_is, ptr %35, i32 0, i32 5, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev42) #11
  br label %do.end

do.end:                                           ; preds = %if.then40, %for.inc37.1.do.end_crit_edge
  %name = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 11, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_md_link_notify(ptr nocapture noundef readonly %link, i32 noundef %flags, i32 noundef %notification) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %link_setup_graph = getelementptr i8, ptr %1, i32 900
  %2 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %entity = getelementptr inbounds %struct.media_pad, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entity, align 4
  %7 = zext i32 %notification to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %notification, label %entry.if.end17.thread_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then9
  ]

entry.if.end17.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.thread

if.then:                                          ; preds = %entry
  %call = tail call i32 @media_graph_walk_init(ptr noundef %link_setup_graph, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end17.thread_crit_edge

if.end.if.end17.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.thread

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call fastcc i32 @__fimc_md_modify_pipelines(ptr noundef %6, i1 noundef zeroext false, ptr noundef %link_setup_graph)
  br label %if.end17

if.then9:                                         ; preds = %entry
  %flags10 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 5
  %8 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags10, align 4
  %and11 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then9.if.end15_crit_edge, label %if.then13

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call fastcc i32 @__fimc_md_modify_pipelines(ptr noundef %6, i1 noundef zeroext true, ptr noundef %link_setup_graph)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then9.if.end15_crit_edge
  %ret.0 = phi i32 [ %call14, %if.then13 ], [ 0, %if.then9.if.end15_crit_edge ]
  tail call void @media_graph_walk_cleanup(ptr noundef %link_setup_graph) #11
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.then5
  %ret.1 = phi i32 [ %call6, %if.then5 ], [ %ret.0, %if.end15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool18.not = icmp eq i32 %ret.1, 0
  br i1 %tobool18.not, label %if.end17.if.end17.thread_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17.if.end17.thread_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.thread

if.end17.thread:                                  ; preds = %if.end17.if.end17.thread_crit_edge, %if.end.if.end17.thread_crit_edge, %entry.if.end17.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end17.thread, %if.end17.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end17.thread ], [ -32, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_graph_walk_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__fimc_md_modify_pipelines(ptr noundef %entity, i1 noundef zeroext %enable, ptr noundef %graph) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @media_graph_walk_start(ptr noundef %graph, ptr noundef %entity) #11
  %call39 = tail call ptr @media_graph_walk_next(ptr noundef %graph) #11
  %tobool.not40 = icmp eq ptr %call39, null
  br i1 %tobool.not40, label %entry.cleanup_crit_edge, label %entry.is_media_entity_v4l2_video_device.exit_crit_edge

entry.is_media_entity_v4l2_video_device.exit_crit_edge: ; preds = %entry
  br label %is_media_entity_v4l2_video_device.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

is_media_entity_v4l2_video_device.exit:           ; preds = %while.cond.backedge.is_media_entity_v4l2_video_device.exit_crit_edge, %entry.is_media_entity_v4l2_video_device.exit_crit_edge
  %call41 = phi ptr [ %call, %while.cond.backedge.is_media_entity_v4l2_video_device.exit_crit_edge ], [ %call39, %entry.is_media_entity_v4l2_video_device.exit_crit_edge ]
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %call41, i32 0, i32 2
  %0 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  br i1 %cmp.i, label %if.end, label %is_media_entity_v4l2_video_device.exit.while.cond.backedge_crit_edge

is_media_entity_v4l2_video_device.exit.while.cond.backedge_crit_edge: ; preds = %is_media_entity_v4l2_video_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end.while.cond.backedge_crit_edge, %is_media_entity_v4l2_video_device.exit.while.cond.backedge_crit_edge
  %call = tail call ptr @media_graph_walk_next(ptr noundef %graph) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.is_media_entity_v4l2_video_device.exit_crit_edge

while.cond.backedge.is_media_entity_v4l2_video_device.exit_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_media_entity_v4l2_video_device.exit

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %is_media_entity_v4l2_video_device.exit
  %call3 = tail call fastcc i32 @__fimc_md_modify_pipeline(ptr noundef nonnull %call41, i1 noundef zeroext %enable)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %err, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

err:                                              ; preds = %if.end
  tail call void @media_graph_walk_start(ptr noundef %graph, ptr noundef %entity) #11
  %lnot = xor i1 %enable, true
  %call742 = tail call ptr @media_graph_walk_next(ptr noundef %graph) #11
  %tobool8.not43 = icmp eq ptr %call742, null
  br i1 %tobool8.not43, label %err.cleanup_crit_edge, label %err.is_media_entity_v4l2_video_device.exit36_crit_edge

err.is_media_entity_v4l2_video_device.exit36_crit_edge: ; preds = %err
  br label %is_media_entity_v4l2_video_device.exit36

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

is_media_entity_v4l2_video_device.exit36:         ; preds = %while.cond6.backedge.is_media_entity_v4l2_video_device.exit36_crit_edge, %err.is_media_entity_v4l2_video_device.exit36_crit_edge
  %call744 = phi ptr [ %call7, %while.cond6.backedge.is_media_entity_v4l2_video_device.exit36_crit_edge ], [ %call742, %err.is_media_entity_v4l2_video_device.exit36_crit_edge ]
  %obj_type.i33 = getelementptr inbounds %struct.media_entity, ptr %call744, i32 0, i32 2
  %2 = ptrtoint ptr %obj_type.i33 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj_type.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i34 = icmp eq i32 %3, 1
  br i1 %cmp.i34, label %if.end12, label %is_media_entity_v4l2_video_device.exit36.while.cond6.backedge_crit_edge

is_media_entity_v4l2_video_device.exit36.while.cond6.backedge_crit_edge: ; preds = %is_media_entity_v4l2_video_device.exit36
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond6.backedge

while.cond6.backedge:                             ; preds = %if.end12.while.cond6.backedge_crit_edge, %is_media_entity_v4l2_video_device.exit36.while.cond6.backedge_crit_edge
  %call7 = tail call ptr @media_graph_walk_next(ptr noundef %graph) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %while.cond6.backedge.cleanup_crit_edge, label %while.cond6.backedge.is_media_entity_v4l2_video_device.exit36_crit_edge

while.cond6.backedge.is_media_entity_v4l2_video_device.exit36_crit_edge: ; preds = %while.cond6.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_media_entity_v4l2_video_device.exit36

while.cond6.backedge.cleanup_crit_edge:           ; preds = %while.cond6.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %is_media_entity_v4l2_video_device.exit36
  %call14 = tail call fastcc i32 @__fimc_md_modify_pipeline(ptr noundef nonnull %call744, i1 noundef zeroext %lnot)
  %cmp15 = icmp eq ptr %call744, %call41
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end12.while.cond6.backedge_crit_edge

if.end12.while.cond6.backedge_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond6.backedge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %while.cond6.backedge.cleanup_crit_edge, %err.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %err.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call3, %while.cond6.backedge.cleanup_crit_edge ], [ %call3, %if.end12.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_graph_walk_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__fimc_md_modify_pipeline(ptr noundef readonly %entity, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %use_count = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 13
  %0 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pipe = getelementptr inbounds %struct.exynos_video_entity, ptr %entity, i32 0, i32 1
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe, align 8
  br i1 %enable, label %if.then9.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %subdevs = getelementptr inbounds %struct.fimc_pipeline, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subdevs, align 4
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9.critedge:                                ; preds = %if.end
  %6 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entity, align 4
  %cmp.i.i = icmp eq ptr %7, null
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 -192
  %spec.select.i.i = select i1 %cmp.i.i, ptr null, ptr %add.ptr.i.i
  %cmp.i = icmp eq ptr %3, null
  %cmp1.i = icmp eq ptr %entity, null
  %spec.select.i = or i1 %cmp1.i, %cmp.i
  br i1 %spec.select.i, label %do.end.i, label %if.end23.i, !prof !203

do.end.i:                                         ; preds = %if.then9.critedge
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 233, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end23.i:                                       ; preds = %if.then9.critedge
  tail call fastcc void @fimc_pipeline_prepare(ptr noundef nonnull %3, ptr noundef nonnull %entity) #11
  %subdevs.i = getelementptr inbounds %struct.fimc_pipeline, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subdevs.i, align 4
  %cmp27.i = icmp eq ptr %9, null
  br i1 %cmp27.i, label %do.end31.i, label %if.end34.i

do.end31.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #14
  br label %cleanup

if.end34.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %call35.i = tail call fastcc i32 @__fimc_pipeline_enable(ptr noundef nonnull %3, ptr noundef %spec.select.i.i) #11
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i34, label %if.end.i

do.end.i34:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19) #14
  br label %if.then18

if.end.i:                                         ; preds = %if.else
  %call2.i = tail call fastcc i32 @fimc_pipeline_s_power(ptr noundef nonnull %3, i1 noundef zeroext false) #11
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %cmp.i.i35 = icmp eq ptr %11, null
  %add.ptr.i.i36 = getelementptr i8, ptr %11, i32 -192
  %spec.select.i.i37 = select i1 %cmp.i.i35, ptr null, ptr %add.ptr.i.i36
  %arrayidx4.i = getelementptr %struct.fimc_md, ptr %spec.select.i.i37, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4.i, align 4
  %cmp.i27.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27.i, label %if.end.i.if.end12.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx7.i = getelementptr %struct.fimc_pipeline, ptr %3, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx7.i, align 4
  %tobool8.not.i = icmp eq ptr %15, null
  br i1 %tobool8.not.i, label %land.lhs.true.i.if.end12.i_crit_edge, label %if.then9.i

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_disable(ptr noundef %13) #11
  tail call void @clk_unprepare(ptr noundef %13) #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %land.lhs.true.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %16 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %call2.i, label %if.end12.i.cleanup_crit_edge [
    i32 -6, label %if.end12.i.if.then18_crit_edge
    i32 0, label %if.end12.i.if.then18_crit_edge46
  ]

if.end12.i.if.then18_crit_edge46:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.end12.i.if.then18_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18:                                        ; preds = %if.end12.i.if.then18_crit_edge, %if.end12.i.if.then18_crit_edge46, %do.end.i34
  %17 = call ptr @memset(ptr %subdevs, i32 0, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end12.i.cleanup_crit_edge, %if.end34.i, %do.end31.i, %do.end.i, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then18 ], [ %call35.i, %if.end34.i ], [ 0, %do.end31.i ], [ -22, %do.end.i ], [ %call2.i, %if.end12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__fimc_pipeline_open(ptr noundef %ep, ptr noundef readonly %me, i1 noundef zeroext %prepare) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %me, align 4
  %cmp.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -192
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %add.ptr.i
  %cmp = icmp eq ptr %ep, null
  %cmp1 = icmp eq ptr %me, null
  %spec.select = or i1 %cmp, %cmp1
  br i1 %spec.select, label %do.end, label %if.end23, !prof !203

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 233, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end23:                                         ; preds = %entry
  br i1 %prepare, label %if.then25, label %if.end23.if.end26_crit_edge

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @fimc_pipeline_prepare(ptr noundef nonnull %ep, ptr noundef nonnull %me)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  %subdevs = getelementptr inbounds %struct.fimc_pipeline, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdevs, align 4
  %cmp27 = icmp eq ptr %3, null
  br i1 %cmp27, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #14
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = tail call fastcc i32 @__fimc_pipeline_enable(ptr noundef nonnull %ep, ptr noundef %spec.select.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end31, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end31 ], [ %call35, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__fimc_pipeline_close(ptr noundef readonly %ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %cond.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

cond.end:                                         ; preds = %entry
  %subdevs = getelementptr inbounds %struct.fimc_pipeline, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subdevs, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %cond.end.do.end_crit_edge, label %if.end

cond.end.do.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %cond.end.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19) #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %call2 = tail call fastcc i32 @fimc_pipeline_s_power(ptr noundef nonnull %ep, i1 noundef zeroext false)
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.i = icmp eq ptr %3, null
  %add.ptr.i = getelementptr i8, ptr %3, i32 -192
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %add.ptr.i
  %arrayidx4 = getelementptr %struct.fimc_md, ptr %spec.select.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %cmp.i27 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %arrayidx7 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %land.lhs.true.if.end12_crit_edge, label %if.then9

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call2)
  %cmp13 = icmp eq i32 %call2, -6
  %spec.select = select i1 %cmp13, i32 0, i32 %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %spec.select, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fimc_pipeline_prepare(ptr nocapture noundef %p, ptr nocapture noundef readonly %me) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %me, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -192
  %uglygep = getelementptr i8, ptr %p, i32 160
  %2 = call ptr @memset(ptr %uglygep, i32 0, i32 20)
  %cmp.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %add.ptr.i
  %arrayidx34 = getelementptr %struct.fimc_pipeline, ptr %p, i32 0, i32 3, i32 3
  %arrayidx31 = getelementptr %struct.fimc_pipeline, ptr %p, i32 0, i32 3, i32 4
  %arrayidx28 = getelementptr %struct.fimc_pipeline, ptr %p, i32 0, i32 3, i32 2
  %arrayidx25 = getelementptr %struct.fimc_pipeline, ptr %p, i32 0, i32 3, i32 1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.while.cond_crit_edge, %entry
  %sensor.0 = phi ptr [ %sensor.2, %sw.epilog.while.cond_crit_edge ], [ null, %entry ]
  %me.addr.0 = phi ptr [ %12, %sw.epilog.while.cond_crit_edge ], [ %me, %entry ]
  %num_pads = getelementptr inbounds %struct.media_entity, ptr %me.addr.0, i32 0, i32 5
  %3 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_pads, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp2100.not = icmp eq i16 %4, 0
  br i1 %cmp2100.not, label %while.cond.while.end_crit_edge, label %for.body4.lr.ph

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

for.body4.lr.ph:                                  ; preds = %while.cond
  %pads = getelementptr inbounds %struct.media_entity, ptr %me.addr.0, i32 0, i32 9
  br label %for.body4

for.body4:                                        ; preds = %for.inc10.for.body4_crit_edge, %for.body4.lr.ph
  %i.1101 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc11, %for.inc10.for.body4_crit_edge ]
  %5 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pads, align 4
  %flags = getelementptr %struct.media_pad, ptr %6, i32 %i.1101, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body4.for.inc10_crit_edge, label %cleanup

for.body4.for.inc10_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc10

cleanup:                                          ; preds = %for.body4
  %arrayidx5 = getelementptr %struct.media_pad, ptr %6, i32 %i.1101
  %call6 = tail call ptr @media_entity_remote_pad(ptr noundef %arrayidx5) #11
  %tobool7.not.not = icmp eq ptr %call6, null
  br i1 %tobool7.not.not, label %cleanup.for.inc10_crit_edge, label %lor.lhs.false

cleanup.for.inc10_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc10

for.inc10:                                        ; preds = %cleanup.for.inc10_crit_edge, %for.body4.for.inc10_crit_edge
  %inc11 = add nuw nsw i32 %i.1101, 1
  %9 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_pads, align 4
  %conv = zext i16 %10 to i32
  %cmp2 = icmp ult i32 %inc11, %conv
  br i1 %cmp2, label %for.inc10.for.body4_crit_edge, label %for.inc10.while.end_crit_edge

for.inc10.while.end_crit_edge:                    ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

for.inc10.for.body4_crit_edge:                    ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4

lor.lhs.false:                                    ; preds = %cleanup
  %entity = getelementptr inbounds %struct.media_pad, ptr %call6, i32 0, i32 1
  %11 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entity, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %lor.lhs.false.while.end_crit_edge, label %is_media_entity_v4l2_subdev.exit

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

is_media_entity_v4l2_subdev.exit:                 ; preds = %lor.lhs.false
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i85 = icmp eq i32 %14, 2
  br i1 %cmp.i85, label %if.end16, label %is_media_entity_v4l2_subdev.exit.while.end_crit_edge

is_media_entity_v4l2_subdev.exit.while.end_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end16:                                         ; preds = %is_media_entity_v4l2_subdev.exit
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %12, i32 0, i32 10
  %15 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %grp_id, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %16, label %if.end16.sw.epilog_crit_edge [
    i32 256, label %sw.bb
    i32 512, label %if.end16.sw.epilog.sink.split_crit_edge
    i32 2048, label %sw.bb23
    i32 8192, label %sw.bb26
    i32 4096, label %sw.bb29
    i32 16384, label %sw.bb32
  ]

if.end16.sw.epilog.sink.split_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb23:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb26:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb29:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb32:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb32, %sw.bb29, %sw.bb26, %sw.bb23, %sw.bb, %if.end16.sw.epilog.sink.split_crit_edge
  %arrayidx34.sink = phi ptr [ %arrayidx34, %sw.bb32 ], [ %arrayidx31, %sw.bb29 ], [ %arrayidx28, %sw.bb26 ], [ %arrayidx25, %sw.bb23 ], [ %uglygep, %if.end16.sw.epilog.sink.split_crit_edge ], [ %uglygep, %sw.bb ]
  %sensor.2.ph = phi ptr [ %sensor.0, %sw.bb32 ], [ %sensor.0, %sw.bb29 ], [ %sensor.0, %sw.bb26 ], [ %sensor.0, %sw.bb23 ], [ %sensor.0, %if.end16.sw.epilog.sink.split_crit_edge ], [ %12, %sw.bb ]
  %18 = ptrtoint ptr %arrayidx34.sink to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %arrayidx34.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end16.sw.epilog_crit_edge
  %sensor.2 = phi ptr [ %sensor.0, %if.end16.sw.epilog_crit_edge ], [ %sensor.2.ph, %sw.epilog.sink.split ]
  %num_pads36 = getelementptr inbounds %struct.media_entity, ptr %12, i32 0, i32 5
  %19 = ptrtoint ptr %num_pads36 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_pads36, align 4
  %cmp38 = icmp eq i16 %20, 1
  br i1 %cmp38, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.cond_crit_edge

sw.epilog.while.cond_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %is_media_entity_v4l2_subdev.exit.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge, %for.inc10.while.end_crit_edge, %while.cond.while.end_crit_edge
  %sensor.3.ph = phi ptr [ %sensor.0, %for.inc10.while.end_crit_edge ], [ %sensor.0, %while.cond.while.end_crit_edge ], [ %sensor.2, %sw.epilog.while.end_crit_edge ], [ %sensor.0, %lor.lhs.false.while.end_crit_edge ], [ %sensor.0, %is_media_entity_v4l2_subdev.exit.while.end_crit_edge ]
  %tobool45.not = icmp eq ptr %sensor.3.ph, null
  br i1 %tobool45.not, label %while.end.if.end52_crit_edge, label %land.lhs.true

while.end.if.end52_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true:                                    ; preds = %while.end
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx31, align 4
  %tobool48.not = icmp eq ptr %22, null
  br i1 %tobool48.not, label %land.lhs.true.if.end52_crit_edge, label %if.then49

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then49:                                        ; preds = %land.lhs.true
  %host_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sensor.3.ph, i32 0, i32 12
  %23 = ptrtoint ptr %host_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host_priv.i.i, align 4
  %tobool.not.i86 = icmp eq ptr %24, null
  br i1 %tobool.not.i86, label %if.then49.if.end52_crit_edge, label %lor.lhs.false.i

if.then49.if.end52_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

lor.lhs.false.i:                                  ; preds = %if.then49
  %cmp.i87 = icmp eq ptr %spec.select.i, null
  br i1 %cmp.i87, label %do.end.i, label %if.end22.i, !prof !203

do.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 49, i32 noundef 9, ptr noundef null) #11
  br label %if.end52

if.end22.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %slock.i = getelementptr inbounds %struct.fimc_md, ptr %spec.select.i, i32 0, i32 16
  %call29.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #11
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 11
  %25 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i, align 4
  %host.i = getelementptr inbounds %struct.fimc_sensor_info, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %host.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %host.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call29.i) #11
  br label %if.end52

if.end52:                                         ; preds = %if.end22.i, %do.end.i, %if.then49.if.end52_crit_edge, %land.lhs.true.if.end52_crit_edge, %while.end.if.end52_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__fimc_pipeline_enable(ptr nocapture noundef readonly %ep, ptr nocapture noundef readonly %fmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %arrayidx1 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6_crit_edge, label %if.then3.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %1) #11
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.then.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end6_crit_edge

clk_prepare_enable.exit.if.end6_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %clk_prepare_enable.exit.if.end6_crit_edge, %if.end.i.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call7 = tail call fastcc i32 @fimc_pipeline_s_power(ptr noundef %ep, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp.i31 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %if.end10.cleanup_crit_edge, label %land.lhs.true14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true14:                                  ; preds = %if.end10
  %arrayidx16 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %7, null
  br i1 %tobool17.not, label %land.lhs.true14.cleanup_crit_edge, label %if.then18

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %land.lhs.true14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %call7, %if.then18 ], [ %call7, %land.lhs.true14.cleanup_crit_edge ], [ %call7, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_pipeline_s_power(ptr nocapture noundef readonly %p, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %subdevs = getelementptr inbounds %struct.fimc_pipeline, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subdevs, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup30_crit_edge, label %for.cond.preheader

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup30

for.cond.preheader:                               ; preds = %entry
  %idxprom = zext i1 %on to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.080 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx3 = getelementptr [2 x [4 x i8]], ptr @fimc_pipeline_s_power.seq, i32 0, i32 %idxprom, i32 %i.080
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %3 to i32
  %arrayidx5 = getelementptr %struct.fimc_pipeline, ptr %p, i32 0, i32 3, i32 %conv
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %use_count1.i = getelementptr inbounds %struct.media_entity, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %use_count1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %use_count1.i, align 4
  br i1 %on, label %land.lhs.true.i, label %land.lhs.true5.critedge.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %inc.i = add i32 %7, 1
  %8 = ptrtoint ptr %use_count1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i, ptr %use_count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.i = icmp sgt i32 %7, 0
  br i1 %cmp2.i, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true.i.if.else13.i_crit_edge

land.lhs.true.i.if.else13.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true5.critedge.i:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.i = icmp eq i32 %7, 0
  br i1 %cmp6.i, label %land.lhs.true5.critedge.i.for.inc_crit_edge, label %lor.lhs.false.i

land.lhs.true5.critedge.i.for.inc_crit_edge:      ; preds = %land.lhs.true5.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %land.lhs.true5.critedge.i
  %dec.i = add i32 %7, -1
  %9 = ptrtoint ptr %use_count1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec.i, ptr %use_count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp7.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp7.i, label %lor.lhs.false.i.for.inc_crit_edge, label %lor.lhs.false.i.if.else13.i_crit_edge

lor.lhs.false.i.if.else13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13.i

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else13.i:                                      ; preds = %lor.lhs.false.i.if.else13.i_crit_edge, %land.lhs.true.i.if.else13.i_crit_edge
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool14.not.i = icmp eq ptr %13, null
  br i1 %tobool14.not.i, label %if.else13.i.for.inc_crit_edge, label %land.lhs.true15.i

if.else13.i.for.inc_crit_edge:                    ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true15.i:                                ; preds = %if.else13.i
  %s_power.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %s_power.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_power.i, align 4
  %tobool18.not.i = icmp eq ptr %15, null
  br i1 %tobool18.not.i, label %land.lhs.true15.i.for.inc_crit_edge, label %if.else20.i

land.lhs.true15.i.for.inc_crit_edge:              ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else20.i:                                      ; preds = %land.lhs.true15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %16 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool21.not.i = icmp eq ptr %16, null
  br i1 %tobool21.not.i, label %if.else20.i.if.else27.i_crit_edge, label %land.lhs.true22.i

if.else20.i.if.else27.i_crit_edge:                ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else27.i

land.lhs.true22.i:                                ; preds = %if.else20.i
  %s_power23.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %s_power23.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_power23.i, align 4
  %tobool24.not.i = icmp eq ptr %18, null
  br i1 %tobool24.not.i, label %land.lhs.true22.i.if.else27.i_crit_edge, label %land.lhs.true22.i.if.end34.i_crit_edge

land.lhs.true22.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

land.lhs.true22.i.if.else27.i_crit_edge:          ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else27.i

if.else27.i:                                      ; preds = %land.lhs.true22.i.if.else27.i_crit_edge, %if.else20.i.if.else27.i_crit_edge
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else27.i, %land.lhs.true22.i.if.end34.i_crit_edge
  %.sink.i = phi ptr [ %15, %if.else27.i ], [ %18, %land.lhs.true22.i.if.end34.i_crit_edge ]
  %call31.i = tail call i32 %.sink.i(ptr noundef nonnull %5, i32 noundef %idxprom) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call31.i)
  %cmp35.not.i = icmp eq i32 %call31.i, -515
  br i1 %cmp35.not.i, label %if.end34.i.for.inc_crit_edge, label %__subdev_set_power.exit

if.end34.i.for.inc_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

__subdev_set_power.exit:                          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call31.i)
  %cmp8 = icmp sgt i32 %call31.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call31.i)
  %cmp10.not = icmp eq i32 %call31.i, -6
  %or.cond = or i1 %cmp8, %cmp10.not
  br i1 %or.cond, label %__subdev_set_power.exit.for.inc_crit_edge, label %for.body17.lr.ph

__subdev_set_power.exit.for.inc_crit_edge:        ; preds = %__subdev_set_power.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body17.lr.ph:                                 ; preds = %__subdev_set_power.exit
  %lnot = xor i1 %on, true
  %lnot.ext = zext i1 %lnot to i32
  br label %for.body17

for.inc:                                          ; preds = %__subdev_set_power.exit.for.inc_crit_edge, %if.end34.i.for.inc_crit_edge, %land.lhs.true15.i.for.inc_crit_edge, %if.else13.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %land.lhs.true5.critedge.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup30

for.body17:                                       ; preds = %__subdev_set_power.exit73.for.body17_crit_edge, %for.body17.lr.ph
  %i.183 = phi i32 [ %i.080, %for.body17.lr.ph ], [ %dec, %__subdev_set_power.exit73.for.body17_crit_edge ]
  %arrayidx22 = getelementptr [2 x [4 x i8]], ptr @fimc_pipeline_s_power.seq, i32 0, i32 %idxprom, i32 %i.183
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %20 to i32
  %arrayidx25 = getelementptr %struct.fimc_pipeline, ptr %p, i32 0, i32 3, i32 %conv23
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx25, align 4
  %cmp.i44 = icmp eq ptr %22, null
  br i1 %cmp.i44, label %for.body17.__subdev_set_power.exit73_crit_edge, label %if.end.i46

for.body17.__subdev_set_power.exit73_crit_edge:   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %__subdev_set_power.exit73

if.end.i46:                                       ; preds = %for.body17
  %use_count1.i45 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %use_count1.i45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %use_count1.i45, align 4
  br i1 %on, label %land.lhs.true5.critedge.i51, label %land.lhs.true.i49

land.lhs.true.i49:                                ; preds = %if.end.i46
  %inc.i47 = add i32 %24, 1
  %25 = ptrtoint ptr %use_count1.i45 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %inc.i47, ptr %use_count1.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp2.i48 = icmp sgt i32 %24, 0
  br i1 %cmp2.i48, label %land.lhs.true.i49.__subdev_set_power.exit73_crit_edge, label %land.lhs.true.i49.if.else13.i57_crit_edge

land.lhs.true.i49.if.else13.i57_crit_edge:        ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13.i57

land.lhs.true.i49.__subdev_set_power.exit73_crit_edge: ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %__subdev_set_power.exit73

land.lhs.true5.critedge.i51:                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp6.i50 = icmp eq i32 %24, 0
  br i1 %cmp6.i50, label %land.lhs.true5.critedge.i51.__subdev_set_power.exit73_crit_edge, label %lor.lhs.false.i54

land.lhs.true5.critedge.i51.__subdev_set_power.exit73_crit_edge: ; preds = %land.lhs.true5.critedge.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %__subdev_set_power.exit73

lor.lhs.false.i54:                                ; preds = %land.lhs.true5.critedge.i51
  %dec.i52 = add i32 %24, -1
  %26 = ptrtoint ptr %use_count1.i45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %dec.i52, ptr %use_count1.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i52)
  %cmp7.i53 = icmp sgt i32 %dec.i52, 0
  br i1 %cmp7.i53, label %lor.lhs.false.i54.__subdev_set_power.exit73_crit_edge, label %lor.lhs.false.i54.if.else13.i57_crit_edge

lor.lhs.false.i54.if.else13.i57_crit_edge:        ; preds = %lor.lhs.false.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13.i57

lor.lhs.false.i54.__subdev_set_power.exit73_crit_edge: ; preds = %lor.lhs.false.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %__subdev_set_power.exit73

if.else13.i57:                                    ; preds = %lor.lhs.false.i54.if.else13.i57_crit_edge, %land.lhs.true.i49.if.else13.i57_crit_edge
  %ops.i55 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %27 = ptrtoint ptr %ops.i55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i55, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool14.not.i56 = icmp eq ptr %30, null
  br i1 %tobool14.not.i56, label %if.else13.i57.__subdev_set_power.exit73_crit_edge, label %land.lhs.true15.i60

if.else13.i57.__subdev_set_power.exit73_crit_edge: ; preds = %if.else13.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %__subdev_set_power.exit73

land.lhs.true15.i60:                              ; preds = %if.else13.i57
  %s_power.i58 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %s_power.i58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_power.i58, align 4
  %tobool18.not.i59 = icmp eq ptr %32, null
  br i1 %tobool18.not.i59, label %land.lhs.true15.i60.__subdev_set_power.exit73_crit_edge, label %if.else20.i62

land.lhs.true15.i60.__subdev_set_power.exit73_crit_edge: ; preds = %land.lhs.true15.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %__subdev_set_power.exit73

if.else20.i62:                                    ; preds = %land.lhs.true15.i60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %33 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool21.not.i61 = icmp eq ptr %33, null
  br i1 %tobool21.not.i61, label %if.else20.i62.if.else27.i66_crit_edge, label %land.lhs.true22.i65

if.else20.i62.if.else27.i66_crit_edge:            ; preds = %if.else20.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else27.i66

land.lhs.true22.i65:                              ; preds = %if.else20.i62
  %s_power23.i63 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %s_power23.i63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_power23.i63, align 4
  %tobool24.not.i64 = icmp eq ptr %35, null
  br i1 %tobool24.not.i64, label %land.lhs.true22.i65.if.else27.i66_crit_edge, label %land.lhs.true22.i65.if.end34.i70_crit_edge

land.lhs.true22.i65.if.end34.i70_crit_edge:       ; preds = %land.lhs.true22.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i70

land.lhs.true22.i65.if.else27.i66_crit_edge:      ; preds = %land.lhs.true22.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else27.i66

if.else27.i66:                                    ; preds = %land.lhs.true22.i65.if.else27.i66_crit_edge, %if.else20.i62.if.else27.i66_crit_edge
  br label %if.end34.i70

if.end34.i70:                                     ; preds = %if.else27.i66, %land.lhs.true22.i65.if.end34.i70_crit_edge
  %.sink.i67 = phi ptr [ %32, %if.else27.i66 ], [ %35, %land.lhs.true22.i65.if.end34.i70_crit_edge ]
  %call31.i68 = tail call i32 %.sink.i67(ptr noundef nonnull %22, i32 noundef %lnot.ext) #11
  br label %__subdev_set_power.exit73

__subdev_set_power.exit73:                        ; preds = %if.end34.i70, %land.lhs.true15.i60.__subdev_set_power.exit73_crit_edge, %if.else13.i57.__subdev_set_power.exit73_crit_edge, %lor.lhs.false.i54.__subdev_set_power.exit73_crit_edge, %land.lhs.true5.critedge.i51.__subdev_set_power.exit73_crit_edge, %land.lhs.true.i49.__subdev_set_power.exit73_crit_edge, %for.body17.__subdev_set_power.exit73_crit_edge
  %dec = add nsw i32 %i.183, -1
  %cmp15 = icmp sgt i32 %i.183, 0
  br i1 %cmp15, label %__subdev_set_power.exit73.for.body17_crit_edge, label %__subdev_set_power.exit73.cleanup30_crit_edge

__subdev_set_power.exit73.cleanup30_crit_edge:    ; preds = %__subdev_set_power.exit73
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup30

__subdev_set_power.exit73.for.body17_crit_edge:   ; preds = %__subdev_set_power.exit73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17

cleanup30:                                        ; preds = %__subdev_set_power.exit73.cleanup30_crit_edge, %for.inc.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup30_crit_edge ], [ %call31.i, %__subdev_set_power.exit73.cleanup30_crit_edge ], [ 0, %for.inc.cleanup30_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__fimc_pipeline_s_stream(ptr nocapture noundef %ep, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %subdevs = getelementptr inbounds %struct.fimc_pipeline, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subdevs, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %entry.if.end42_crit_edge

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then:                                          ; preds = %entry
  %arrayidx2 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end:                                           ; preds = %if.then
  %arrayidx5 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end.cleanup143_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end.cleanup143_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %sd.0200 = phi ptr [ %5, %if.end.if.end8_crit_edge ], [ %3, %if.then.if.end8_crit_edge ]
  %6 = ptrtoint ptr %sd.0200 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd.0200, align 4
  %cmp.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -192
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %add.ptr.i
  %user_subdev_api = getelementptr inbounds %struct.fimc_md, ptr %spec.select.i, i32 0, i32 15
  %8 = ptrtoint ptr %user_subdev_api to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %user_subdev_api, align 4, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %if.end8.cleanup143_crit_edge, label %if.end11

if.end8.cleanup143_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

if.end11:                                         ; preds = %if.end8
  %arrayidx13 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.else, label %if.end11.if.end28_crit_edge

if.end11.if.end28_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.else:                                          ; preds = %if.end11
  %arrayidx17 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %if.else20, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.else20:                                        ; preds = %if.else
  %arrayidx22 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %15, null
  br i1 %tobool23.not, label %if.else20.cleanup143_crit_edge, label %if.else20.if.end28_crit_edge

if.else20.if.end28_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.else20.cleanup143_crit_edge:                   ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

if.end28:                                         ; preds = %if.else20.if.end28_crit_edge, %if.else.if.end28_crit_edge, %if.end11.if.end28_crit_edge
  %sd_id.0 = phi i32 [ 4, %if.end11.if.end28_crit_edge ], [ 3, %if.else.if.end28_crit_edge ], [ 2, %if.else20.if.end28_crit_edge ]
  %arrayidx30 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 %sd_id.0
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx30, align 4
  tail call fastcc void @fimc_pipeline_prepare(ptr noundef %ep, ptr noundef %17)
  %18 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %subdevs, align 4
  %cmp34 = icmp eq ptr %19, null
  br i1 %cmp34, label %if.end28.cleanup143_crit_edge, label %cleanup

if.end28.cleanup143_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

cleanup:                                          ; preds = %if.end28
  %call37 = tail call fastcc i32 @__fimc_pipeline_enable(ptr noundef %ep, ptr noundef %spec.select.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %cleanup.cleanup143_crit_edge, label %cleanup.if.end42_crit_edge

cleanup.if.end42_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

cleanup.cleanup143_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

if.end42:                                         ; preds = %cleanup.if.end42_crit_edge, %entry.if.end42_crit_edge
  %idxprom = zext i1 %on to i32
  %arrayidx46 = getelementptr [2 x [5 x i8]], ptr @__fimc_pipeline_s_stream.seq, i32 0, i32 %idxprom, i32 0
  %20 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx46, align 1
  %conv = zext i8 %21 to i32
  %arrayidx48 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 %conv
  %22 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx48, align 4
  %tobool49.not = icmp eq ptr %23, null
  br i1 %tobool49.not, label %if.end42.for.inc_crit_edge, label %if.else51

if.end42.for.inc_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else51:                                        ; preds = %if.end42
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %video, align 4
  %tobool52.not = icmp eq ptr %27, null
  br i1 %tobool52.not, label %if.else51.for.inc_crit_edge, label %land.lhs.true

if.else51.for.inc_crit_edge:                      ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %if.else51
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_stream, align 4
  %tobool55.not = icmp eq ptr %29, null
  br i1 %tobool55.not, label %land.lhs.true.for.inc_crit_edge, label %if.else57

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else57:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool58.not = icmp eq ptr %30, null
  br i1 %tobool58.not, label %if.else57.if.else67_crit_edge, label %land.lhs.true59

if.else57.if.else67_crit_edge:                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else67

land.lhs.true59:                                  ; preds = %if.else57
  %s_stream60 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %s_stream60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_stream60, align 4
  %tobool61.not = icmp eq ptr %32, null
  br i1 %tobool61.not, label %land.lhs.true59.if.else67_crit_edge, label %land.lhs.true59.if.end76_crit_edge

land.lhs.true59.if.end76_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

land.lhs.true59.if.else67_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else67

if.else67:                                        ; preds = %land.lhs.true59.if.else67_crit_edge, %if.else57.if.else67_crit_edge
  br label %if.end76

if.end76:                                         ; preds = %if.else67, %land.lhs.true59.if.end76_crit_edge
  %.sink = phi ptr [ %29, %if.else67 ], [ %32, %land.lhs.true59.if.end76_crit_edge ]
  %call73 = tail call i32 %.sink(ptr noundef nonnull %23, i32 noundef %idxprom) #11
  %__result.0.fr = freeze i32 %call73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0.fr)
  %cmp78 = icmp sgt i32 %__result.0.fr, -1
  br i1 %cmp78, label %if.end76.for.inc_crit_edge, label %switch.early.test

if.end76.for.inc_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

switch.early.test:                                ; preds = %if.end76
  %33 = zext i32 %__result.0.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %__result.0.fr, label %switch.early.test.for.body96.lr.ph_crit_edge [
    i32 -19, label %switch.early.test.for.inc_crit_edge
    i32 -515, label %switch.early.test.for.inc_crit_edge222
  ]

switch.early.test.for.inc_crit_edge222:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

switch.early.test.for.inc_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

switch.early.test.for.body96.lr.ph_crit_edge:     ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body96.lr.ph

for.inc:                                          ; preds = %switch.early.test.for.inc_crit_edge, %switch.early.test.for.inc_crit_edge222, %if.end76.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.else51.for.inc_crit_edge, %if.end42.for.inc_crit_edge
  %arrayidx46.1 = getelementptr [2 x [5 x i8]], ptr @__fimc_pipeline_s_stream.seq, i32 0, i32 %idxprom, i32 1
  %34 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx46.1, align 1
  %conv.1 = zext i8 %35 to i32
  %arrayidx48.1 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 %conv.1
  %36 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx48.1, align 4
  %tobool49.not.1 = icmp eq ptr %37, null
  br i1 %tobool49.not.1, label %for.inc.for.inc.1_crit_edge, label %if.else51.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.else51.1:                                      ; preds = %for.inc
  %ops.1 = getelementptr inbounds %struct.v4l2_subdev, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.1, align 4
  %video.1 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %video.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %video.1, align 4
  %tobool52.not.1 = icmp eq ptr %41, null
  br i1 %tobool52.not.1, label %if.else51.1.for.inc.1_crit_edge, label %land.lhs.true.1

if.else51.1.for.inc.1_crit_edge:                  ; preds = %if.else51.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %if.else51.1
  %s_stream.1 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %s_stream.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_stream.1, align 4
  %tobool55.not.1 = icmp eq ptr %43, null
  br i1 %tobool55.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.else57.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.else57.1:                                      ; preds = %land.lhs.true.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool58.not.1 = icmp eq ptr %44, null
  br i1 %tobool58.not.1, label %if.else57.1.if.else67.1_crit_edge, label %land.lhs.true59.1

if.else57.1.if.else67.1_crit_edge:                ; preds = %if.else57.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else67.1

land.lhs.true59.1:                                ; preds = %if.else57.1
  %s_stream60.1 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %s_stream60.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_stream60.1, align 4
  %tobool61.not.1 = icmp eq ptr %46, null
  br i1 %tobool61.not.1, label %land.lhs.true59.1.if.else67.1_crit_edge, label %land.lhs.true59.1.if.end76.1_crit_edge

land.lhs.true59.1.if.end76.1_crit_edge:           ; preds = %land.lhs.true59.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76.1

land.lhs.true59.1.if.else67.1_crit_edge:          ; preds = %land.lhs.true59.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else67.1

if.else67.1:                                      ; preds = %land.lhs.true59.1.if.else67.1_crit_edge, %if.else57.1.if.else67.1_crit_edge
  br label %if.end76.1

if.end76.1:                                       ; preds = %if.else67.1, %land.lhs.true59.1.if.end76.1_crit_edge
  %.sink.1 = phi ptr [ %43, %if.else67.1 ], [ %46, %land.lhs.true59.1.if.end76.1_crit_edge ]
  %call73.1 = tail call i32 %.sink.1(ptr noundef nonnull %37, i32 noundef %idxprom) #11
  %__result.0.fr.1 = freeze i32 %call73.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0.fr.1)
  %cmp78.1 = icmp sgt i32 %__result.0.fr.1, -1
  br i1 %cmp78.1, label %if.end76.1.for.inc.1_crit_edge, label %switch.early.test.1

if.end76.1.for.inc.1_crit_edge:                   ; preds = %if.end76.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

switch.early.test.1:                              ; preds = %if.end76.1
  %47 = zext i32 %__result.0.fr.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %__result.0.fr.1, label %switch.early.test.1.for.body96.lr.ph_crit_edge [
    i32 -19, label %switch.early.test.1.for.inc.1_crit_edge
    i32 -515, label %switch.early.test.1.for.inc.1_crit_edge223
  ]

switch.early.test.1.for.inc.1_crit_edge223:       ; preds = %switch.early.test.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

switch.early.test.1.for.inc.1_crit_edge:          ; preds = %switch.early.test.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

switch.early.test.1.for.body96.lr.ph_crit_edge:   ; preds = %switch.early.test.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body96.lr.ph

for.inc.1:                                        ; preds = %switch.early.test.1.for.inc.1_crit_edge, %switch.early.test.1.for.inc.1_crit_edge223, %if.end76.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %if.else51.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx46.2 = getelementptr [2 x [5 x i8]], ptr @__fimc_pipeline_s_stream.seq, i32 0, i32 %idxprom, i32 2
  %48 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx46.2, align 1
  %conv.2 = zext i8 %49 to i32
  %arrayidx48.2 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 %conv.2
  %50 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx48.2, align 4
  %tobool49.not.2 = icmp eq ptr %51, null
  br i1 %tobool49.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.else51.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.else51.2:                                      ; preds = %for.inc.1
  %ops.2 = getelementptr inbounds %struct.v4l2_subdev, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %ops.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.2, align 4
  %video.2 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %video.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %video.2, align 4
  %tobool52.not.2 = icmp eq ptr %55, null
  br i1 %tobool52.not.2, label %if.else51.2.for.inc.2_crit_edge, label %land.lhs.true.2

if.else51.2.for.inc.2_crit_edge:                  ; preds = %if.else51.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %if.else51.2
  %s_stream.2 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %s_stream.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_stream.2, align 4
  %tobool55.not.2 = icmp eq ptr %57, null
  br i1 %tobool55.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %if.else57.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.else57.2:                                      ; preds = %land.lhs.true.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool58.not.2 = icmp eq ptr %58, null
  br i1 %tobool58.not.2, label %if.else57.2.if.else67.2_crit_edge, label %land.lhs.true59.2

if.else57.2.if.else67.2_crit_edge:                ; preds = %if.else57.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else67.2

land.lhs.true59.2:                                ; preds = %if.else57.2
  %s_stream60.2 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %58, i32 0, i32 10
  %59 = ptrtoint ptr %s_stream60.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_stream60.2, align 4
  %tobool61.not.2 = icmp eq ptr %60, null
  br i1 %tobool61.not.2, label %land.lhs.true59.2.if.else67.2_crit_edge, label %land.lhs.true59.2.if.end76.2_crit_edge

land.lhs.true59.2.if.end76.2_crit_edge:           ; preds = %land.lhs.true59.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76.2

land.lhs.true59.2.if.else67.2_crit_edge:          ; preds = %land.lhs.true59.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else67.2

if.else67.2:                                      ; preds = %land.lhs.true59.2.if.else67.2_crit_edge, %if.else57.2.if.else67.2_crit_edge
  br label %if.end76.2

if.end76.2:                                       ; preds = %if.else67.2, %land.lhs.true59.2.if.end76.2_crit_edge
  %.sink.2 = phi ptr [ %57, %if.else67.2 ], [ %60, %land.lhs.true59.2.if.end76.2_crit_edge ]
  %call73.2 = tail call i32 %.sink.2(ptr noundef nonnull %51, i32 noundef %idxprom) #11
  %__result.0.fr.2 = freeze i32 %call73.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0.fr.2)
  %cmp78.2 = icmp sgt i32 %__result.0.fr.2, -1
  br i1 %cmp78.2, label %if.end76.2.for.inc.2_crit_edge, label %switch.early.test.2

if.end76.2.for.inc.2_crit_edge:                   ; preds = %if.end76.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

switch.early.test.2:                              ; preds = %if.end76.2
  %61 = zext i32 %__result.0.fr.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %__result.0.fr.2, label %switch.early.test.2.for.body96.lr.ph_crit_edge [
    i32 -19, label %switch.early.test.2.for.inc.2_crit_edge
    i32 -515, label %switch.early.test.2.for.inc.2_crit_edge224
  ]

switch.early.test.2.for.inc.2_crit_edge224:       ; preds = %switch.early.test.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

switch.early.test.2.for.inc.2_crit_edge:          ; preds = %switch.early.test.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

switch.early.test.2.for.body96.lr.ph_crit_edge:   ; preds = %switch.early.test.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body96.lr.ph

for.inc.2:                                        ; preds = %switch.early.test.2.for.inc.2_crit_edge, %switch.early.test.2.for.inc.2_crit_edge224, %if.end76.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %if.else51.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx46.3 = getelementptr [2 x [5 x i8]], ptr @__fimc_pipeline_s_stream.seq, i32 0, i32 %idxprom, i32 3
  %62 = ptrtoint ptr %arrayidx46.3 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx46.3, align 1
  %conv.3 = zext i8 %63 to i32
  %arrayidx48.3 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 %conv.3
  %64 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx48.3, align 4
  %tobool49.not.3 = icmp eq ptr %65, null
  br i1 %tobool49.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.else51.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.else51.3:                                      ; preds = %for.inc.2
  %ops.3 = getelementptr inbounds %struct.v4l2_subdev, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %ops.3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.3, align 4
  %video.3 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %video.3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %video.3, align 4
  %tobool52.not.3 = icmp eq ptr %69, null
  br i1 %tobool52.not.3, label %if.else51.3.for.inc.3_crit_edge, label %land.lhs.true.3

if.else51.3.for.inc.3_crit_edge:                  ; preds = %if.else51.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %if.else51.3
  %s_stream.3 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %69, i32 0, i32 10
  %70 = ptrtoint ptr %s_stream.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_stream.3, align 4
  %tobool55.not.3 = icmp eq ptr %71, null
  br i1 %tobool55.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %if.else57.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.else57.3:                                      ; preds = %land.lhs.true.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool58.not.3 = icmp eq ptr %72, null
  br i1 %tobool58.not.3, label %if.else57.3.if.else67.3_crit_edge, label %land.lhs.true59.3

if.else57.3.if.else67.3_crit_edge:                ; preds = %if.else57.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else67.3

land.lhs.true59.3:                                ; preds = %if.else57.3
  %s_stream60.3 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %s_stream60.3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_stream60.3, align 4
  %tobool61.not.3 = icmp eq ptr %74, null
  br i1 %tobool61.not.3, label %land.lhs.true59.3.if.else67.3_crit_edge, label %land.lhs.true59.3.if.end76.3_crit_edge

land.lhs.true59.3.if.end76.3_crit_edge:           ; preds = %land.lhs.true59.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76.3

land.lhs.true59.3.if.else67.3_crit_edge:          ; preds = %land.lhs.true59.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else67.3

if.else67.3:                                      ; preds = %land.lhs.true59.3.if.else67.3_crit_edge, %if.else57.3.if.else67.3_crit_edge
  br label %if.end76.3

if.end76.3:                                       ; preds = %if.else67.3, %land.lhs.true59.3.if.end76.3_crit_edge
  %.sink.3 = phi ptr [ %71, %if.else67.3 ], [ %74, %land.lhs.true59.3.if.end76.3_crit_edge ]
  %call73.3 = tail call i32 %.sink.3(ptr noundef nonnull %65, i32 noundef %idxprom) #11
  %__result.0.fr.3 = freeze i32 %call73.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0.fr.3)
  %cmp78.3 = icmp sgt i32 %__result.0.fr.3, -1
  br i1 %cmp78.3, label %if.end76.3.for.inc.3_crit_edge, label %switch.early.test.3

if.end76.3.for.inc.3_crit_edge:                   ; preds = %if.end76.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

switch.early.test.3:                              ; preds = %if.end76.3
  %75 = zext i32 %__result.0.fr.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %__result.0.fr.3, label %switch.early.test.3.for.body96.lr.ph_crit_edge [
    i32 -19, label %switch.early.test.3.for.inc.3_crit_edge
    i32 -515, label %switch.early.test.3.for.inc.3_crit_edge225
  ]

switch.early.test.3.for.inc.3_crit_edge225:       ; preds = %switch.early.test.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

switch.early.test.3.for.inc.3_crit_edge:          ; preds = %switch.early.test.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

switch.early.test.3.for.body96.lr.ph_crit_edge:   ; preds = %switch.early.test.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body96.lr.ph

for.inc.3:                                        ; preds = %switch.early.test.3.for.inc.3_crit_edge, %switch.early.test.3.for.inc.3_crit_edge225, %if.end76.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %if.else51.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx46.4 = getelementptr [2 x [5 x i8]], ptr @__fimc_pipeline_s_stream.seq, i32 0, i32 %idxprom, i32 4
  %76 = ptrtoint ptr %arrayidx46.4 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx46.4, align 1
  %conv.4 = zext i8 %77 to i32
  %arrayidx48.4 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 %conv.4
  %78 = ptrtoint ptr %arrayidx48.4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx48.4, align 4
  %tobool49.not.4 = icmp eq ptr %79, null
  br i1 %tobool49.not.4, label %for.inc.3.cleanup143_crit_edge, label %if.else51.4

for.inc.3.cleanup143_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

if.else51.4:                                      ; preds = %for.inc.3
  %ops.4 = getelementptr inbounds %struct.v4l2_subdev, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %ops.4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops.4, align 4
  %video.4 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %video.4 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %video.4, align 4
  %tobool52.not.4 = icmp eq ptr %83, null
  br i1 %tobool52.not.4, label %if.else51.4.cleanup143_crit_edge, label %land.lhs.true.4

if.else51.4.cleanup143_crit_edge:                 ; preds = %if.else51.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

land.lhs.true.4:                                  ; preds = %if.else51.4
  %s_stream.4 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %83, i32 0, i32 10
  %84 = ptrtoint ptr %s_stream.4 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_stream.4, align 4
  %tobool55.not.4 = icmp eq ptr %85, null
  br i1 %tobool55.not.4, label %land.lhs.true.4.cleanup143_crit_edge, label %if.else57.4

land.lhs.true.4.cleanup143_crit_edge:             ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

if.else57.4:                                      ; preds = %land.lhs.true.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool58.not.4 = icmp eq ptr %86, null
  br i1 %tobool58.not.4, label %if.else57.4.if.else67.4_crit_edge, label %land.lhs.true59.4

if.else57.4.if.else67.4_crit_edge:                ; preds = %if.else57.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else67.4

land.lhs.true59.4:                                ; preds = %if.else57.4
  %s_stream60.4 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %86, i32 0, i32 10
  %87 = ptrtoint ptr %s_stream60.4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %s_stream60.4, align 4
  %tobool61.not.4 = icmp eq ptr %88, null
  br i1 %tobool61.not.4, label %land.lhs.true59.4.if.else67.4_crit_edge, label %land.lhs.true59.4.if.end76.4_crit_edge

land.lhs.true59.4.if.end76.4_crit_edge:           ; preds = %land.lhs.true59.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76.4

land.lhs.true59.4.if.else67.4_crit_edge:          ; preds = %land.lhs.true59.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else67.4

if.else67.4:                                      ; preds = %land.lhs.true59.4.if.else67.4_crit_edge, %if.else57.4.if.else67.4_crit_edge
  br label %if.end76.4

if.end76.4:                                       ; preds = %if.else67.4, %land.lhs.true59.4.if.end76.4_crit_edge
  %.sink.4 = phi ptr [ %85, %if.else67.4 ], [ %88, %land.lhs.true59.4.if.end76.4_crit_edge ]
  %call73.4 = tail call i32 %.sink.4(ptr noundef nonnull %79, i32 noundef %idxprom) #11
  %__result.0.fr.4 = freeze i32 %call73.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0.fr.4)
  %cmp78.4 = icmp sgt i32 %__result.0.fr.4, -1
  br i1 %cmp78.4, label %if.end76.4.cleanup143_crit_edge, label %switch.early.test.4

if.end76.4.cleanup143_crit_edge:                  ; preds = %if.end76.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

switch.early.test.4:                              ; preds = %if.end76.4
  %89 = zext i32 %__result.0.fr.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %__result.0.fr.4, label %switch.early.test.4.for.body96.lr.ph_crit_edge [
    i32 -19, label %switch.early.test.4.cleanup143_crit_edge
    i32 -515, label %switch.early.test.4.cleanup143_crit_edge226
  ]

switch.early.test.4.cleanup143_crit_edge226:      ; preds = %switch.early.test.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

switch.early.test.4.cleanup143_crit_edge:         ; preds = %switch.early.test.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

switch.early.test.4.for.body96.lr.ph_crit_edge:   ; preds = %switch.early.test.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body96.lr.ph

for.body96.lr.ph:                                 ; preds = %switch.early.test.4.for.body96.lr.ph_crit_edge, %switch.early.test.3.for.body96.lr.ph_crit_edge, %switch.early.test.2.for.body96.lr.ph_crit_edge, %switch.early.test.1.for.body96.lr.ph_crit_edge, %switch.early.test.for.body96.lr.ph_crit_edge
  %cmp94 = phi i1 [ true, %switch.early.test.4.for.body96.lr.ph_crit_edge ], [ true, %switch.early.test.3.for.body96.lr.ph_crit_edge ], [ true, %switch.early.test.2.for.body96.lr.ph_crit_edge ], [ true, %switch.early.test.1.for.body96.lr.ph_crit_edge ], [ false, %switch.early.test.for.body96.lr.ph_crit_edge ]
  %cmp94.1 = phi i1 [ true, %switch.early.test.4.for.body96.lr.ph_crit_edge ], [ true, %switch.early.test.3.for.body96.lr.ph_crit_edge ], [ true, %switch.early.test.2.for.body96.lr.ph_crit_edge ], [ false, %switch.early.test.1.for.body96.lr.ph_crit_edge ], [ false, %switch.early.test.for.body96.lr.ph_crit_edge ]
  %cmp94.2 = phi i1 [ true, %switch.early.test.4.for.body96.lr.ph_crit_edge ], [ true, %switch.early.test.3.for.body96.lr.ph_crit_edge ], [ false, %switch.early.test.2.for.body96.lr.ph_crit_edge ], [ false, %switch.early.test.1.for.body96.lr.ph_crit_edge ], [ false, %switch.early.test.for.body96.lr.ph_crit_edge ]
  %cmp94.3 = phi i1 [ true, %switch.early.test.4.for.body96.lr.ph_crit_edge ], [ false, %switch.early.test.3.for.body96.lr.ph_crit_edge ], [ false, %switch.early.test.2.for.body96.lr.ph_crit_edge ], [ false, %switch.early.test.1.for.body96.lr.ph_crit_edge ], [ false, %switch.early.test.for.body96.lr.ph_crit_edge ]
  %i.0209.lcssa = phi i32 [ 4, %switch.early.test.4.for.body96.lr.ph_crit_edge ], [ 3, %switch.early.test.3.for.body96.lr.ph_crit_edge ], [ 2, %switch.early.test.2.for.body96.lr.ph_crit_edge ], [ 1, %switch.early.test.1.for.body96.lr.ph_crit_edge ], [ 0, %switch.early.test.for.body96.lr.ph_crit_edge ]
  %__result.0.fr.lcssa = phi i32 [ %__result.0.fr.4, %switch.early.test.4.for.body96.lr.ph_crit_edge ], [ %__result.0.fr.3, %switch.early.test.3.for.body96.lr.ph_crit_edge ], [ %__result.0.fr.2, %switch.early.test.2.for.body96.lr.ph_crit_edge ], [ %__result.0.fr.1, %switch.early.test.1.for.body96.lr.ph_crit_edge ], [ %__result.0.fr, %switch.early.test.for.body96.lr.ph_crit_edge ]
  %lnot = xor i1 %on, true
  %call92 = tail call fastcc i32 @fimc_pipeline_s_power(ptr noundef %ep, i1 noundef zeroext %lnot)
  %lnot.ext = zext i1 %lnot to i32
  %arrayidx101 = getelementptr [2 x [5 x i8]], ptr @__fimc_pipeline_s_stream.seq, i32 0, i32 %idxprom, i32 %i.0209.lcssa
  %90 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %91 to i32
  %arrayidx105 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 %conv102
  %92 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx105, align 4
  %tobool107.not = icmp eq ptr %93, null
  br i1 %tobool107.not, label %for.body96.lr.ph.if.end139_crit_edge, label %if.else109

for.body96.lr.ph.if.end139_crit_edge:             ; preds = %for.body96.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.else109:                                       ; preds = %for.body96.lr.ph
  %ops110 = getelementptr inbounds %struct.v4l2_subdev, ptr %93, i32 0, i32 6
  %94 = ptrtoint ptr %ops110 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops110, align 4
  %video111 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %video111 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %video111, align 4
  %tobool112.not = icmp eq ptr %97, null
  br i1 %tobool112.not, label %if.else109.if.end139_crit_edge, label %land.lhs.true113

if.else109.if.end139_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

land.lhs.true113:                                 ; preds = %if.else109
  %s_stream116 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %97, i32 0, i32 10
  %98 = ptrtoint ptr %s_stream116 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_stream116, align 4
  %tobool117.not = icmp eq ptr %99, null
  br i1 %tobool117.not, label %land.lhs.true113.if.end139_crit_edge, label %if.else119

land.lhs.true113.if.end139_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.else119:                                       ; preds = %land.lhs.true113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool120.not = icmp eq ptr %100, null
  br i1 %tobool120.not, label %if.else119.if.else129_crit_edge, label %land.lhs.true121

if.else119.if.else129_crit_edge:                  ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else129

land.lhs.true121:                                 ; preds = %if.else119
  %s_stream122 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %100, i32 0, i32 10
  %101 = ptrtoint ptr %s_stream122 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_stream122, align 4
  %tobool123.not = icmp eq ptr %102, null
  br i1 %tobool123.not, label %land.lhs.true121.if.else129_crit_edge, label %land.lhs.true121.if.end139.sink.split_crit_edge

land.lhs.true121.if.end139.sink.split_crit_edge:  ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.sink.split

land.lhs.true121.if.else129_crit_edge:            ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else129

if.else129:                                       ; preds = %land.lhs.true121.if.else129_crit_edge, %if.else119.if.else129_crit_edge
  br label %if.end139.sink.split

if.end139.sink.split:                             ; preds = %if.else129, %land.lhs.true121.if.end139.sink.split_crit_edge
  %.sink217 = phi ptr [ %99, %if.else129 ], [ %102, %land.lhs.true121.if.end139.sink.split_crit_edge ]
  %call136 = tail call i32 %.sink217(ptr noundef nonnull %93, i32 noundef %lnot.ext) #11
  br label %if.end139

if.end139:                                        ; preds = %if.end139.sink.split, %land.lhs.true113.if.end139_crit_edge, %if.else109.if.end139_crit_edge, %for.body96.lr.ph.if.end139_crit_edge
  br i1 %cmp94, label %for.body96.1, label %if.end139.cleanup143_crit_edge

if.end139.cleanup143_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

for.body96.1:                                     ; preds = %if.end139
  %dec = add nsw i32 %i.0209.lcssa, -1
  %arrayidx101.1 = getelementptr [2 x [5 x i8]], ptr @__fimc_pipeline_s_stream.seq, i32 0, i32 %idxprom, i32 %dec
  %103 = ptrtoint ptr %arrayidx101.1 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx101.1, align 1
  %conv102.1 = zext i8 %104 to i32
  %arrayidx105.1 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 %conv102.1
  %105 = ptrtoint ptr %arrayidx105.1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx105.1, align 4
  %tobool107.not.1 = icmp eq ptr %106, null
  br i1 %tobool107.not.1, label %for.body96.1.if.end139.1_crit_edge, label %if.else109.1

for.body96.1.if.end139.1_crit_edge:               ; preds = %for.body96.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.1

if.else109.1:                                     ; preds = %for.body96.1
  %ops110.1 = getelementptr inbounds %struct.v4l2_subdev, ptr %106, i32 0, i32 6
  %107 = ptrtoint ptr %ops110.1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops110.1, align 4
  %video111.1 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %video111.1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %video111.1, align 4
  %tobool112.not.1 = icmp eq ptr %110, null
  br i1 %tobool112.not.1, label %if.else109.1.if.end139.1_crit_edge, label %land.lhs.true113.1

if.else109.1.if.end139.1_crit_edge:               ; preds = %if.else109.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.1

land.lhs.true113.1:                               ; preds = %if.else109.1
  %s_stream116.1 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %110, i32 0, i32 10
  %111 = ptrtoint ptr %s_stream116.1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %s_stream116.1, align 4
  %tobool117.not.1 = icmp eq ptr %112, null
  br i1 %tobool117.not.1, label %land.lhs.true113.1.if.end139.1_crit_edge, label %if.else119.1

land.lhs.true113.1.if.end139.1_crit_edge:         ; preds = %land.lhs.true113.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.1

if.else119.1:                                     ; preds = %land.lhs.true113.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool120.not.1 = icmp eq ptr %113, null
  br i1 %tobool120.not.1, label %if.else119.1.if.else129.1_crit_edge, label %land.lhs.true121.1

if.else119.1.if.else129.1_crit_edge:              ; preds = %if.else119.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else129.1

land.lhs.true121.1:                               ; preds = %if.else119.1
  %s_stream122.1 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %113, i32 0, i32 10
  %114 = ptrtoint ptr %s_stream122.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_stream122.1, align 4
  %tobool123.not.1 = icmp eq ptr %115, null
  br i1 %tobool123.not.1, label %land.lhs.true121.1.if.else129.1_crit_edge, label %land.lhs.true121.1.if.end139.sink.split.1_crit_edge

land.lhs.true121.1.if.end139.sink.split.1_crit_edge: ; preds = %land.lhs.true121.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.sink.split.1

land.lhs.true121.1.if.else129.1_crit_edge:        ; preds = %land.lhs.true121.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else129.1

if.else129.1:                                     ; preds = %land.lhs.true121.1.if.else129.1_crit_edge, %if.else119.1.if.else129.1_crit_edge
  br label %if.end139.sink.split.1

if.end139.sink.split.1:                           ; preds = %if.else129.1, %land.lhs.true121.1.if.end139.sink.split.1_crit_edge
  %.sink217.1 = phi ptr [ %112, %if.else129.1 ], [ %115, %land.lhs.true121.1.if.end139.sink.split.1_crit_edge ]
  %call136.1 = tail call i32 %.sink217.1(ptr noundef nonnull %106, i32 noundef %lnot.ext) #11
  br label %if.end139.1

if.end139.1:                                      ; preds = %if.end139.sink.split.1, %land.lhs.true113.1.if.end139.1_crit_edge, %if.else109.1.if.end139.1_crit_edge, %for.body96.1.if.end139.1_crit_edge
  br i1 %cmp94.1, label %for.body96.2, label %if.end139.1.cleanup143_crit_edge

if.end139.1.cleanup143_crit_edge:                 ; preds = %if.end139.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

for.body96.2:                                     ; preds = %if.end139.1
  %dec.1 = add nsw i32 %i.0209.lcssa, -2
  %arrayidx101.2 = getelementptr [2 x [5 x i8]], ptr @__fimc_pipeline_s_stream.seq, i32 0, i32 %idxprom, i32 %dec.1
  %116 = ptrtoint ptr %arrayidx101.2 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx101.2, align 1
  %conv102.2 = zext i8 %117 to i32
  %arrayidx105.2 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 %conv102.2
  %118 = ptrtoint ptr %arrayidx105.2 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx105.2, align 4
  %tobool107.not.2 = icmp eq ptr %119, null
  br i1 %tobool107.not.2, label %for.body96.2.if.end139.2_crit_edge, label %if.else109.2

for.body96.2.if.end139.2_crit_edge:               ; preds = %for.body96.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.2

if.else109.2:                                     ; preds = %for.body96.2
  %ops110.2 = getelementptr inbounds %struct.v4l2_subdev, ptr %119, i32 0, i32 6
  %120 = ptrtoint ptr %ops110.2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops110.2, align 4
  %video111.2 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %video111.2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %video111.2, align 4
  %tobool112.not.2 = icmp eq ptr %123, null
  br i1 %tobool112.not.2, label %if.else109.2.if.end139.2_crit_edge, label %land.lhs.true113.2

if.else109.2.if.end139.2_crit_edge:               ; preds = %if.else109.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.2

land.lhs.true113.2:                               ; preds = %if.else109.2
  %s_stream116.2 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %123, i32 0, i32 10
  %124 = ptrtoint ptr %s_stream116.2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %s_stream116.2, align 4
  %tobool117.not.2 = icmp eq ptr %125, null
  br i1 %tobool117.not.2, label %land.lhs.true113.2.if.end139.2_crit_edge, label %if.else119.2

land.lhs.true113.2.if.end139.2_crit_edge:         ; preds = %land.lhs.true113.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.2

if.else119.2:                                     ; preds = %land.lhs.true113.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool120.not.2 = icmp eq ptr %126, null
  br i1 %tobool120.not.2, label %if.else119.2.if.else129.2_crit_edge, label %land.lhs.true121.2

if.else119.2.if.else129.2_crit_edge:              ; preds = %if.else119.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else129.2

land.lhs.true121.2:                               ; preds = %if.else119.2
  %s_stream122.2 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %126, i32 0, i32 10
  %127 = ptrtoint ptr %s_stream122.2 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %s_stream122.2, align 4
  %tobool123.not.2 = icmp eq ptr %128, null
  br i1 %tobool123.not.2, label %land.lhs.true121.2.if.else129.2_crit_edge, label %land.lhs.true121.2.if.end139.sink.split.2_crit_edge

land.lhs.true121.2.if.end139.sink.split.2_crit_edge: ; preds = %land.lhs.true121.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.sink.split.2

land.lhs.true121.2.if.else129.2_crit_edge:        ; preds = %land.lhs.true121.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else129.2

if.else129.2:                                     ; preds = %land.lhs.true121.2.if.else129.2_crit_edge, %if.else119.2.if.else129.2_crit_edge
  br label %if.end139.sink.split.2

if.end139.sink.split.2:                           ; preds = %if.else129.2, %land.lhs.true121.2.if.end139.sink.split.2_crit_edge
  %.sink217.2 = phi ptr [ %125, %if.else129.2 ], [ %128, %land.lhs.true121.2.if.end139.sink.split.2_crit_edge ]
  %call136.2 = tail call i32 %.sink217.2(ptr noundef nonnull %119, i32 noundef %lnot.ext) #11
  br label %if.end139.2

if.end139.2:                                      ; preds = %if.end139.sink.split.2, %land.lhs.true113.2.if.end139.2_crit_edge, %if.else109.2.if.end139.2_crit_edge, %for.body96.2.if.end139.2_crit_edge
  br i1 %cmp94.2, label %for.body96.3, label %if.end139.2.cleanup143_crit_edge

if.end139.2.cleanup143_crit_edge:                 ; preds = %if.end139.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

for.body96.3:                                     ; preds = %if.end139.2
  %dec.2 = add nsw i32 %i.0209.lcssa, -3
  %arrayidx101.3 = getelementptr [2 x [5 x i8]], ptr @__fimc_pipeline_s_stream.seq, i32 0, i32 %idxprom, i32 %dec.2
  %129 = ptrtoint ptr %arrayidx101.3 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx101.3, align 1
  %conv102.3 = zext i8 %130 to i32
  %arrayidx105.3 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 %conv102.3
  %131 = ptrtoint ptr %arrayidx105.3 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx105.3, align 4
  %tobool107.not.3 = icmp eq ptr %132, null
  br i1 %tobool107.not.3, label %for.body96.3.if.end139.3_crit_edge, label %if.else109.3

for.body96.3.if.end139.3_crit_edge:               ; preds = %for.body96.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.3

if.else109.3:                                     ; preds = %for.body96.3
  %ops110.3 = getelementptr inbounds %struct.v4l2_subdev, ptr %132, i32 0, i32 6
  %133 = ptrtoint ptr %ops110.3 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ops110.3, align 4
  %video111.3 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %video111.3 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %video111.3, align 4
  %tobool112.not.3 = icmp eq ptr %136, null
  br i1 %tobool112.not.3, label %if.else109.3.if.end139.3_crit_edge, label %land.lhs.true113.3

if.else109.3.if.end139.3_crit_edge:               ; preds = %if.else109.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.3

land.lhs.true113.3:                               ; preds = %if.else109.3
  %s_stream116.3 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %136, i32 0, i32 10
  %137 = ptrtoint ptr %s_stream116.3 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %s_stream116.3, align 4
  %tobool117.not.3 = icmp eq ptr %138, null
  br i1 %tobool117.not.3, label %land.lhs.true113.3.if.end139.3_crit_edge, label %if.else119.3

land.lhs.true113.3.if.end139.3_crit_edge:         ; preds = %land.lhs.true113.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.3

if.else119.3:                                     ; preds = %land.lhs.true113.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool120.not.3 = icmp eq ptr %139, null
  br i1 %tobool120.not.3, label %if.else119.3.if.else129.3_crit_edge, label %land.lhs.true121.3

if.else119.3.if.else129.3_crit_edge:              ; preds = %if.else119.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else129.3

land.lhs.true121.3:                               ; preds = %if.else119.3
  %s_stream122.3 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %139, i32 0, i32 10
  %140 = ptrtoint ptr %s_stream122.3 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %s_stream122.3, align 4
  %tobool123.not.3 = icmp eq ptr %141, null
  br i1 %tobool123.not.3, label %land.lhs.true121.3.if.else129.3_crit_edge, label %land.lhs.true121.3.if.end139.sink.split.3_crit_edge

land.lhs.true121.3.if.end139.sink.split.3_crit_edge: ; preds = %land.lhs.true121.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.sink.split.3

land.lhs.true121.3.if.else129.3_crit_edge:        ; preds = %land.lhs.true121.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else129.3

if.else129.3:                                     ; preds = %land.lhs.true121.3.if.else129.3_crit_edge, %if.else119.3.if.else129.3_crit_edge
  br label %if.end139.sink.split.3

if.end139.sink.split.3:                           ; preds = %if.else129.3, %land.lhs.true121.3.if.end139.sink.split.3_crit_edge
  %.sink217.3 = phi ptr [ %138, %if.else129.3 ], [ %141, %land.lhs.true121.3.if.end139.sink.split.3_crit_edge ]
  %call136.3 = tail call i32 %.sink217.3(ptr noundef nonnull %132, i32 noundef %lnot.ext) #11
  br label %if.end139.3

if.end139.3:                                      ; preds = %if.end139.sink.split.3, %land.lhs.true113.3.if.end139.3_crit_edge, %if.else109.3.if.end139.3_crit_edge, %for.body96.3.if.end139.3_crit_edge
  br i1 %cmp94.3, label %for.body96.4, label %if.end139.3.cleanup143_crit_edge

if.end139.3.cleanup143_crit_edge:                 ; preds = %if.end139.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

for.body96.4:                                     ; preds = %if.end139.3
  %dec.3 = add nsw i32 %i.0209.lcssa, -4
  %arrayidx101.4 = getelementptr [2 x [5 x i8]], ptr @__fimc_pipeline_s_stream.seq, i32 0, i32 %idxprom, i32 %dec.3
  %142 = ptrtoint ptr %arrayidx101.4 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx101.4, align 1
  %conv102.4 = zext i8 %143 to i32
  %arrayidx105.4 = getelementptr %struct.fimc_pipeline, ptr %ep, i32 0, i32 3, i32 %conv102.4
  %144 = ptrtoint ptr %arrayidx105.4 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx105.4, align 4
  %tobool107.not.4 = icmp eq ptr %145, null
  br i1 %tobool107.not.4, label %for.body96.4.cleanup143_crit_edge, label %if.else109.4

for.body96.4.cleanup143_crit_edge:                ; preds = %for.body96.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

if.else109.4:                                     ; preds = %for.body96.4
  %ops110.4 = getelementptr inbounds %struct.v4l2_subdev, ptr %145, i32 0, i32 6
  %146 = ptrtoint ptr %ops110.4 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ops110.4, align 4
  %video111.4 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %video111.4 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %video111.4, align 4
  %tobool112.not.4 = icmp eq ptr %149, null
  br i1 %tobool112.not.4, label %if.else109.4.cleanup143_crit_edge, label %land.lhs.true113.4

if.else109.4.cleanup143_crit_edge:                ; preds = %if.else109.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

land.lhs.true113.4:                               ; preds = %if.else109.4
  %s_stream116.4 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %149, i32 0, i32 10
  %150 = ptrtoint ptr %s_stream116.4 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %s_stream116.4, align 4
  %tobool117.not.4 = icmp eq ptr %151, null
  br i1 %tobool117.not.4, label %land.lhs.true113.4.cleanup143_crit_edge, label %if.else119.4

land.lhs.true113.4.cleanup143_crit_edge:          ; preds = %land.lhs.true113.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup143

if.else119.4:                                     ; preds = %land.lhs.true113.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool120.not.4 = icmp eq ptr %152, null
  br i1 %tobool120.not.4, label %if.else119.4.if.else129.4_crit_edge, label %land.lhs.true121.4

if.else119.4.if.else129.4_crit_edge:              ; preds = %if.else119.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else129.4

land.lhs.true121.4:                               ; preds = %if.else119.4
  %s_stream122.4 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %152, i32 0, i32 10
  %153 = ptrtoint ptr %s_stream122.4 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %s_stream122.4, align 4
  %tobool123.not.4 = icmp eq ptr %154, null
  br i1 %tobool123.not.4, label %land.lhs.true121.4.if.else129.4_crit_edge, label %land.lhs.true121.4.if.end139.sink.split.4_crit_edge

land.lhs.true121.4.if.end139.sink.split.4_crit_edge: ; preds = %land.lhs.true121.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.sink.split.4

land.lhs.true121.4.if.else129.4_crit_edge:        ; preds = %land.lhs.true121.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else129.4

if.else129.4:                                     ; preds = %land.lhs.true121.4.if.else129.4_crit_edge, %if.else119.4.if.else129.4_crit_edge
  br label %if.end139.sink.split.4

if.end139.sink.split.4:                           ; preds = %if.else129.4, %land.lhs.true121.4.if.end139.sink.split.4_crit_edge
  %.sink217.4 = phi ptr [ %151, %if.else129.4 ], [ %154, %land.lhs.true121.4.if.end139.sink.split.4_crit_edge ]
  %call136.4 = tail call i32 %.sink217.4(ptr noundef nonnull %145, i32 noundef %lnot.ext) #11
  br label %cleanup143

cleanup143:                                       ; preds = %if.end139.sink.split.4, %land.lhs.true113.4.cleanup143_crit_edge, %if.else109.4.cleanup143_crit_edge, %for.body96.4.cleanup143_crit_edge, %if.end139.3.cleanup143_crit_edge, %if.end139.2.cleanup143_crit_edge, %if.end139.1.cleanup143_crit_edge, %if.end139.cleanup143_crit_edge, %switch.early.test.4.cleanup143_crit_edge, %switch.early.test.4.cleanup143_crit_edge226, %if.end76.4.cleanup143_crit_edge, %land.lhs.true.4.cleanup143_crit_edge, %if.else51.4.cleanup143_crit_edge, %for.inc.3.cleanup143_crit_edge, %cleanup.cleanup143_crit_edge, %if.end28.cleanup143_crit_edge, %if.else20.cleanup143_crit_edge, %if.end8.cleanup143_crit_edge, %if.end.cleanup143_crit_edge
  %retval.2 = phi i32 [ %call37, %cleanup.cleanup143_crit_edge ], [ -19, %if.end.cleanup143_crit_edge ], [ -19, %if.end8.cleanup143_crit_edge ], [ -19, %if.else20.cleanup143_crit_edge ], [ -19, %if.end28.cleanup143_crit_edge ], [ 0, %switch.early.test.4.cleanup143_crit_edge ], [ 0, %switch.early.test.4.cleanup143_crit_edge226 ], [ 0, %if.end76.4.cleanup143_crit_edge ], [ 0, %land.lhs.true.4.cleanup143_crit_edge ], [ 0, %if.else51.4.cleanup143_crit_edge ], [ 0, %for.inc.3.cleanup143_crit_edge ], [ %__result.0.fr.lcssa, %for.body96.4.cleanup143_crit_edge ], [ %__result.0.fr.lcssa, %if.else109.4.cleanup143_crit_edge ], [ %__result.0.fr.lcssa, %land.lhs.true113.4.cleanup143_crit_edge ], [ %__result.0.fr.lcssa, %if.end139.sink.split.4 ], [ %__result.0.fr.lcssa, %if.end139.3.cleanup143_crit_edge ], [ %__result.0.fr.lcssa, %if.end139.2.cleanup143_crit_edge ], [ %__result.0.fr.lcssa, %if.end139.1.cleanup143_crit_edge ], [ %__result.0.fr.lcssa, %if.end139.cleanup143_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_md_parse_port_node(ptr noundef %fmd, ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %endpoint.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_next_child(ptr noundef %port, ptr noundef null) #11
  %cmp.not24 = icmp eq ptr %call, null
  br i1 %cmp.not24, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %num_sensors.i = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 2
  %bus_type.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %endpoint.i, i32 0, i32 1
  %bus.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %endpoint.i, i32 0, i32 2
  %name75.i = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 11, i32 4
  %subdev_notifier.i = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ep.025 = phi ptr [ %call, %for.body.lr.ph ], [ %call3, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_sensors.i, align 8
  %arrayidx.i = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 1, i32 %1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %endpoint.i) #11
  %2 = call ptr @memset(ptr %endpoint.i, i32 0, i32 64)
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %ep.025, i32 0, i32 3
  %call.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i, ptr noundef nonnull %endpoint.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_node_put(ptr noundef nonnull %ep.025) #11
  br label %fimc_md_parse_one_endpoint.exit

if.end.i:                                         ; preds = %for.body
  %3 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %endpoint.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  br i1 %cmp.i, label %if.end.i.fimc_md_parse_one_endpoint.exit.thread.sink.split_crit_edge, label %lor.lhs.false.critedge.i, !prof !203

if.end.i.fimc_md_parse_one_endpoint.exit.thread.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_parse_one_endpoint.exit.thread.sink.split

lor.lhs.false.critedge.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp25.i = icmp sgt i32 %1, 3
  br i1 %cmp25.i, label %lor.lhs.false.critedge.i.fimc_md_parse_one_endpoint.exit.thread_crit_edge, label %if.end27.i

lor.lhs.false.critedge.i.fimc_md_parse_one_endpoint.exit.thread_crit_edge: ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_parse_one_endpoint.exit.thread

if.end27.i:                                       ; preds = %lor.lhs.false.critedge.i
  %5 = trunc i32 %4 to i16
  %6 = and i16 %5, 1
  %conv.i = xor i16 %6, 1
  %mux_id.i = getelementptr inbounds %struct.fimc_source_info, ptr %arrayidx.i, i32 0, i32 3
  %7 = ptrtoint ptr %mux_id.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %mux_id.i, align 2
  %call30.i = call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %ep.025) #11
  %cmp31.i = icmp eq ptr %call30.i, null
  br i1 %cmp31.i, label %do.end36.i, label %if.end39.i

do.end36.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name75.i, ptr noundef nonnull %ep.025) #14
  call void @of_node_put(ptr noundef nonnull %ep.025) #11
  br label %fimc_md_parse_one_endpoint.exit.thread14

if.end39.i:                                       ; preds = %if.end27.i
  %8 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %endpoint.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %9, label %do.end72.i [
    i32 1, label %if.end39.i.if.then49.i_crit_edge
    i32 2, label %if.end39.i.if.then49.i_crit_edge57
    i32 3, label %if.end39.i.if.then67.i_crit_edge
    i32 4, label %if.end39.i.if.then67.i_crit_edge58
  ]

if.end39.i.if.then67.i_crit_edge58:               ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

if.end39.i.if.then67.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

if.end39.i.if.then49.i_crit_edge57:               ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49.i

if.end39.i.if.then49.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49.i

if.then49.i:                                      ; preds = %if.end39.i.if.then49.i_crit_edge, %if.end39.i.if.then49.i_crit_edge57
  %11 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp50.i = icmp eq i32 %12, 1
  %spec.select184.i = select i1 %cmp50.i, i32 1, i32 2
  %13 = getelementptr inbounds %struct.fimc_source_info, ptr %arrayidx.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select184.i, ptr %13, align 4
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bus.i, align 4
  %conv55.i = trunc i32 %16 to i16
  %flags56.i = getelementptr inbounds %struct.fimc_source_info, ptr %arrayidx.i, i32 0, i32 2
  %17 = ptrtoint ptr %flags56.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv55.i, ptr %flags56.i, align 4
  br label %if.end81.i

if.then67.i:                                      ; preds = %if.end39.i.if.then67.i_crit_edge, %if.end39.i.if.then67.i_crit_edge58
  %sensor_bus_type68.i = getelementptr inbounds %struct.fimc_source_info, ptr %arrayidx.i, i32 0, i32 1
  %18 = ptrtoint ptr %sensor_bus_type68.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %sensor_bus_type68.i, align 4
  br label %if.end81.i

do.end72.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %call79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name75.i, i32 noundef %9, ptr noundef nonnull %call30.i) #14
  br label %if.end81.i

if.end81.i:                                       ; preds = %do.end72.i, %if.then67.i, %if.then49.i
  %call82.i = call ptr @of_get_parent(ptr noundef nonnull %call30.i) #11
  call void @of_node_put(ptr noundef nonnull %call30.i) #11
  %call83.i = call zeroext i1 @of_node_name_eq(ptr noundef %call82.i, ptr noundef nonnull @.str.54) #11
  br i1 %call83.i, label %if.end81.i.if.end88.i_crit_edge, label %if.else85.i

if.end81.i.if.end88.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88.i

if.else85.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  %sensor_bus_type86.i = getelementptr inbounds %struct.fimc_source_info, ptr %arrayidx.i, i32 0, i32 1
  %19 = ptrtoint ptr %sensor_bus_type86.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sensor_bus_type86.i, align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.else85.i, %if.end81.i.if.end88.i_crit_edge
  %storemerge.i = phi i32 [ %20, %if.else85.i ], [ 5, %if.end81.i.if.end88.i_crit_edge ]
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge.i, ptr %arrayidx.i, align 4
  call void @of_node_put(ptr noundef %call82.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp90.i = icmp ugt i32 %1, 3
  br i1 %cmp90.i, label %if.end88.i.fimc_md_parse_one_endpoint.exit.thread.sink.split_crit_edge, label %if.end123.i, !prof !203

if.end88.i.fimc_md_parse_one_endpoint.exit.thread.sink.split_crit_edge: ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_parse_one_endpoint.exit.thread.sink.split

if.end123.i:                                      ; preds = %if.end88.i
  %call132.i = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %subdev_notifier.i, ptr noundef %fwnode.i, i32 noundef 28) #11
  call void @of_node_put(ptr noundef nonnull %ep.025) #11
  %cmp.i.i = icmp ugt ptr %call132.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then134.i, label %if.end136.i

if.then134.i:                                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %call132.i to i32
  br label %fimc_md_parse_one_endpoint.exit

if.end136.i:                                      ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #13
  %asd139.i = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 1, i32 %1, i32 1
  %23 = ptrtoint ptr %asd139.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call132.i, ptr %asd139.i, align 4
  %24 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_sensors.i, align 8
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %num_sensors.i, align 8
  br label %fimc_md_parse_one_endpoint.exit.thread14

fimc_md_parse_one_endpoint.exit.thread.sink.split: ; preds = %if.end88.i.fimc_md_parse_one_endpoint.exit.thread.sink.split_crit_edge, %if.end.i.fimc_md_parse_one_endpoint.exit.thread.sink.split_crit_edge
  %.sink = phi i32 [ 414, %if.end.i.fimc_md_parse_one_endpoint.exit.thread.sink.split_crit_edge ], [ 462, %if.end88.i.fimc_md_parse_one_endpoint.exit.thread.sink.split_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #11
  br label %fimc_md_parse_one_endpoint.exit.thread

fimc_md_parse_one_endpoint.exit.thread:           ; preds = %fimc_md_parse_one_endpoint.exit.thread.sink.split, %lor.lhs.false.critedge.i.fimc_md_parse_one_endpoint.exit.thread_crit_edge
  call void @of_node_put(ptr noundef nonnull %ep.025) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %endpoint.i) #11
  br label %if.then

fimc_md_parse_one_endpoint.exit.thread14:         ; preds = %if.end136.i, %do.end36.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %endpoint.i) #11
  br label %for.inc

fimc_md_parse_one_endpoint.exit:                  ; preds = %if.then134.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %22, %if.then134.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %endpoint.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %fimc_md_parse_one_endpoint.exit.if.then_crit_edge, label %fimc_md_parse_one_endpoint.exit.for.inc_crit_edge

fimc_md_parse_one_endpoint.exit.for.inc_crit_edge: ; preds = %fimc_md_parse_one_endpoint.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

fimc_md_parse_one_endpoint.exit.if.then_crit_edge: ; preds = %fimc_md_parse_one_endpoint.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %fimc_md_parse_one_endpoint.exit.if.then_crit_edge, %fimc_md_parse_one_endpoint.exit.thread
  %retval.0.i12 = phi i32 [ -22, %fimc_md_parse_one_endpoint.exit.thread ], [ %retval.0.i, %fimc_md_parse_one_endpoint.exit.if.then_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %ep.025) #11
  br label %cleanup

for.inc:                                          ; preds = %fimc_md_parse_one_endpoint.exit.for.inc_crit_edge, %fimc_md_parse_one_endpoint.exit.thread14
  %call3 = call ptr @of_get_next_child(ptr noundef %port, ptr noundef nonnull %ep.025) #11
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i12, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_conf_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %user_subdev_api = getelementptr inbounds %struct.fimc_md, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %user_subdev_api to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %user_subdev_api, align 4, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %.str.57..str.56 = select i1 %tobool.not, ptr @.str.57, ptr @.str.56
  %call2 = tail call i32 @strscpy(ptr noundef %buf, ptr noundef nonnull %.str.57..str.56, i32 noundef 4096) #11
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_conf_mode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %count) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(9) @.str.58) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.else

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(9) @.str.59) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else.if.end6_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %entry.if.end6_crit_edge
  %2 = xor i1 %tobool.not, true
  %user_subdev_api = getelementptr inbounds %struct.fimc_md, ptr %1, i32 0, i32 15
  %frombool = zext i1 %2 to i8
  %3 = ptrtoint ptr %user_subdev_api to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %user_subdev_api, align 4
  %arrayidx = getelementptr %struct.fimc_md, ptr %1, i32 0, i32 6, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end6.for.inc_crit_edge, label %if.then9

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %user_subdev_api13 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 17
  %6 = ptrtoint ptr %user_subdev_api13 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %user_subdev_api13, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.end6.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.fimc_md, ptr %1, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  %tobool8.not.1 = icmp eq ptr %8, null
  br i1 %tobool8.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then9.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then9.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %user_subdev_api13.1 = getelementptr inbounds %struct.fimc_dev, ptr %8, i32 0, i32 13, i32 17
  %9 = ptrtoint ptr %user_subdev_api13.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %user_subdev_api13.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then9.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.fimc_md, ptr %1, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  %tobool8.not.2 = icmp eq ptr %11, null
  br i1 %tobool8.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then9.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then9.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %user_subdev_api13.2 = getelementptr inbounds %struct.fimc_dev, ptr %11, i32 0, i32 13, i32 17
  %12 = ptrtoint ptr %user_subdev_api13.2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %user_subdev_api13.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then9.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.fimc_md, ptr %1, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.3, align 4
  %tobool8.not.3 = icmp eq ptr %14, null
  br i1 %tobool8.not.3, label %for.inc.2.cleanup_crit_edge, label %if.then9.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  %user_subdev_api13.3 = getelementptr inbounds %struct.fimc_dev, ptr %14, i32 0, i32 13, i32 17
  %15 = ptrtoint ptr %user_subdev_api13.3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %user_subdev_api13.3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9.3, %for.inc.2.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret i32 %count
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cam_clk_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmd = getelementptr inbounds %struct.cam_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %fmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmd, align 4
  %pmf = getelementptr inbounds %struct.fimc_md, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pmf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmf, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %3, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !204
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !205
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !206
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cam_clk_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmd = getelementptr inbounds %struct.cam_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %fmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmd, align 4
  %pmf = getelementptr inbounds %struct.fimc_md, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pmf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmf, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %3, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_notifier_bound(ptr noundef %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 14
  %asd1 = getelementptr i8, ptr %notifier, i32 -960
  %0 = ptrtoint ptr %asd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asd1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr i8, ptr %notifier, i32 -972
  %match = getelementptr inbounds %struct.v4l2_async_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %match, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool5.not = icmp eq ptr %7, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 3
  %spec.select = select i1 %tobool5.not, ptr null, ptr %fwnode
  %cmp6 = icmp eq ptr %3, %spec.select
  %spec.select45 = select i1 %cmp6, ptr %arrayidx, ptr null
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %entry.for.inc_crit_edge
  %si.1 = phi ptr [ null, %entry.for.inc_crit_edge ], [ %spec.select45, %land.lhs.true ]
  %asd1.1 = getelementptr i8, ptr %notifier, i32 -936
  %8 = ptrtoint ptr %asd1.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asd1.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.1 = getelementptr i8, ptr %notifier, i32 -948
  %match.1 = getelementptr inbounds %struct.v4l2_async_subdev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %match.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %match.1, align 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %of_node.1 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %of_node.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node.1, align 8
  %tobool5.not.1 = icmp eq ptr %15, null
  %fwnode.1 = getelementptr inbounds %struct.device_node, ptr %15, i32 0, i32 3
  %spec.select.1 = select i1 %tobool5.not.1, ptr null, ptr %fwnode.1
  %cmp6.1 = icmp eq ptr %11, %spec.select.1
  %spec.select45.1 = select i1 %cmp6.1, ptr %arrayidx.1, ptr %si.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1, %for.inc.for.inc.1_crit_edge
  %si.1.1 = phi ptr [ %si.1, %for.inc.for.inc.1_crit_edge ], [ %spec.select45.1, %land.lhs.true.1 ]
  %asd1.2 = getelementptr i8, ptr %notifier, i32 -912
  %16 = ptrtoint ptr %asd1.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asd1.2, align 4
  %tobool.not.2 = icmp eq ptr %17, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.2 = getelementptr i8, ptr %notifier, i32 -924
  %match.2 = getelementptr inbounds %struct.v4l2_async_subdev, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %match.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %match.2, align 4
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %of_node.2 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %of_node.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.2, align 8
  %tobool5.not.2 = icmp eq ptr %23, null
  %fwnode.2 = getelementptr inbounds %struct.device_node, ptr %23, i32 0, i32 3
  %spec.select.2 = select i1 %tobool5.not.2, ptr null, ptr %fwnode.2
  %cmp6.2 = icmp eq ptr %19, %spec.select.2
  %spec.select45.2 = select i1 %cmp6.2, ptr %arrayidx.2, ptr %si.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2, %for.inc.1.for.inc.2_crit_edge
  %si.1.2 = phi ptr [ %si.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %spec.select45.2, %land.lhs.true.2 ]
  %asd1.3 = getelementptr i8, ptr %notifier, i32 -888
  %24 = ptrtoint ptr %asd1.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asd1.3, align 4
  %tobool.not.3 = icmp eq ptr %25, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.3 = getelementptr i8, ptr %notifier, i32 -900
  %match.3 = getelementptr inbounds %struct.v4l2_async_subdev, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %match.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %match.3, align 4
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %of_node.3 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %of_node.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node.3, align 8
  %tobool5.not.3 = icmp eq ptr %31, null
  %fwnode.3 = getelementptr inbounds %struct.device_node, ptr %31, i32 0, i32 3
  %spec.select.3 = select i1 %tobool5.not.3, ptr null, ptr %fwnode.3
  %cmp6.3 = icmp eq ptr %27, %spec.select.3
  %spec.select45.3 = select i1 %cmp6.3, ptr %arrayidx.3, ptr %si.1.2
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3, %for.inc.2.for.inc.3_crit_edge
  %si.1.3 = phi ptr [ %si.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %spec.select45.3, %land.lhs.true.3 ]
  %cmp9 = icmp eq ptr %si.1.3, null
  br i1 %cmp9, label %for.inc.3.cleanup_crit_edge, label %if.end11

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 12
  %32 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %si.1.3, ptr %host_priv.i, align 4
  %33 = ptrtoint ptr %si.1.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %si.1.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %34)
  %cmp13 = icmp eq i32 %34, 5
  %spec.select49 = select i1 %cmp13, i32 512, i32 256
  %35 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 10
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select49, ptr %35, align 4
  %subdev17 = getelementptr inbounds %struct.fimc_sensor_info, ptr %si.1.3, i32 0, i32 2
  %37 = ptrtoint ptr %subdev17 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %subdev, ptr %subdev17, align 4
  %name = getelementptr i8, ptr %notifier, i32 -128
  %name19 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  %num_sensors = getelementptr i8, ptr %notifier, i32 -876
  %38 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_sensors, align 8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name, ptr noundef %name19, i32 noundef %39) #14
  %40 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_sensors, align 8
  %inc23 = add i32 %41, 1
  store i32 %inc23, ptr %num_sensors, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %for.inc.3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %for.inc.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_notifier_complete(ptr noundef %notifier) #2 align 64 {
entry:
  %csi_sensors.i = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %notifier, i32 -988
  %media_dev = getelementptr i8, ptr %notifier, i32 -796
  %graph_mutex = getelementptr i8, ptr %notifier, i32 -536
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %csi_sensors.i) #11
  %0 = ptrtoint ptr %csi_sensors.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %csi_sensors.i, align 8
  %num_sensors.i = getelementptr i8, ptr %notifier, i32 -876
  %1 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_sensors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp273.i = icmp sgt i32 %2, 0
  br i1 %cmp273.i, label %for.body.lr.ph.i, label %entry.for.cond111.preheader.i_crit_edge

entry.for.cond111.preheader.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond111.preheader.i

for.body.lr.ph.i:                                 ; preds = %entry
  %name.i = getelementptr i8, ptr %notifier, i32 -128
  br label %for.body.i

for.cond111.preheader.i:                          ; preds = %for.inc.i.for.cond111.preheader.i_crit_edge, %entry.for.cond111.preheader.i_crit_edge
  %fimc_id.0.lcssa.i = phi i32 [ 0, %entry.for.cond111.preheader.i_crit_edge ], [ %fimc_id.1.i, %for.inc.i.for.cond111.preheader.i_crit_edge ]
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %cmp118.i = icmp eq ptr %4, null
  br i1 %cmp118.i, label %for.cond111.preheader.i.for.inc130.i_crit_edge, label %if.end121.i

for.cond111.preheader.i.for.inc130.i_crit_edge:   ; preds = %for.cond111.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc130.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fimc_id.0275.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %fimc_id.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0274.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc110.i, %for.inc.i.for.body.i_crit_edge ]
  %subdev.i = getelementptr %struct.fimc_md, ptr %add.ptr.i, i32 0, i32 1, i32 %i.0274.i, i32 2
  %5 = ptrtoint ptr %subdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subdev.i, align 8
  %cmp2.i = icmp eq ptr %6, null
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %host_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %host_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_priv.i.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end7.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end7.i:                                        ; preds = %if.end.i
  %sensor_bus_type.i = getelementptr inbounds %struct.fimc_source_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %sensor_bus_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sensor_bus_type.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %10, label %do.end98.i [
    i32 3, label %sw.bb.i
    i32 1, label %if.end7.i.if.end108.i_crit_edge
    i32 2, label %if.end7.i.if.end108.i_crit_edge61
  ]

if.end7.i.if.end108.i_crit_edge61:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108.i

if.end7.i.if.end108.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108.i

sw.bb.i:                                          ; preds = %if.end7.i
  %mux_id.i = getelementptr inbounds %struct.fimc_source_info, ptr %8, i32 0, i32 3
  %12 = ptrtoint ptr %mux_id.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mux_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp8.i = icmp ugt i16 %13, 1
  %conv.i = zext i16 %13 to i32
  br i1 %cmp8.i, label %do.end.i, label %if.end35.i, !prof !203

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.le = zext i16 %13 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 981, i32 noundef 9, ptr noundef nonnull @.str.69, i32 noundef %conv.i.le) #11
  br label %fimc_md_create_links.exit.thread

if.end35.i:                                       ; preds = %sw.bb.i
  %arrayidx38.i = getelementptr [2 x %struct.fimc_csis_info], ptr %add.ptr.i, i32 0, i32 %conv.i
  %14 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx38.i, align 8
  %cmp40.i = icmp eq ptr %15, null
  br i1 %cmp40.i, label %do.end57.i, label %if.end73.i, !prof !203

do.end57.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 986, i32 noundef 9, ptr noundef nonnull @.str.70) #11
  br label %fimc_md_create_links.exit.thread

if.end73.i:                                       ; preds = %if.end35.i
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %6, i32 0, i32 5
  %16 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_pads.i, align 4
  %sub.i = add i16 %17, -1
  %call78.i = tail call i32 @media_create_pad_link(ptr noundef nonnull %6, i16 noundef zeroext %sub.i, ptr noundef nonnull %15, i16 noundef zeroext 0, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %sw.epilog.thread.i, label %if.end73.i.fimc_md_create_links.exit_crit_edge

if.end73.i.fimc_md_create_links.exit_crit_edge:   ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_create_links.exit

sw.epilog.thread.i:                               ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  %name87.i = getelementptr inbounds %struct.media_entity, ptr %6, i32 0, i32 1
  %18 = ptrtoint ptr %name87.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name87.i, align 4
  %name89.i = getelementptr inbounds %struct.media_entity, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %name89.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name89.i, align 4
  %call90.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name.i, ptr noundef %19, ptr noundef %21) #14
  %22 = ptrtoint ptr %mux_id.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mux_id.i, align 2
  %idxprom92.i = zext i16 %23 to i32
  %arrayidx93.i = getelementptr [2 x ptr], ptr %csi_sensors.i, i32 0, i32 %idxprom92.i
  %24 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %6, ptr %arrayidx93.i, align 4
  br label %for.inc.i

do.end98.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %call104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name.i, i32 noundef %10) #14
  br label %fimc_md_create_links.exit.thread

if.end108.i:                                      ; preds = %if.end7.i.if.end108.i_crit_edge, %if.end7.i.if.end108.i_crit_edge61
  %inc.i = add i32 %fimc_id.0275.i, 1
  %shl.i = shl nuw i32 1, %fimc_id.0275.i
  tail call fastcc void @__fimc_md_create_fimc_sink_links(ptr noundef %add.ptr.i, ptr noundef nonnull %6, ptr noundef nonnull %6, i32 noundef 0, i32 noundef %shl.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end108.i, %sw.epilog.thread.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %fimc_id.1.i = phi i32 [ %fimc_id.0275.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end108.i ], [ %fimc_id.0275.i, %if.end.i.for.inc.i_crit_edge ], [ %fimc_id.0275.i, %sw.epilog.thread.i ]
  %inc110.i = add nuw nsw i32 %i.0274.i, 1
  %25 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_sensors.i, align 8
  %cmp.i = icmp slt i32 %inc110.i, %26
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond111.preheader.i_crit_edge

for.inc.i.for.cond111.preheader.i_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond111.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end121.i:                                      ; preds = %for.cond111.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %csi_sensors.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csi_sensors.i, align 8
  %inc127.i = add i32 %fimc_id.0.lcssa.i, 1
  %shl128.i = shl nuw i32 1, %fimc_id.0.lcssa.i
  tail call fastcc void @__fimc_md_create_fimc_sink_links(ptr noundef %add.ptr.i, ptr noundef nonnull %4, ptr noundef %28, i32 noundef 1, i32 noundef %shl128.i) #11
  br label %for.inc130.i

for.inc130.i:                                     ; preds = %if.end121.i, %for.cond111.preheader.i.for.inc130.i_crit_edge
  %fimc_id.3.i = phi i32 [ %fimc_id.0.lcssa.i, %for.cond111.preheader.i.for.inc130.i_crit_edge ], [ %inc127.i, %if.end121.i ]
  %arrayidx116.1.i = getelementptr i8, ptr %notifier, i32 -980
  %29 = ptrtoint ptr %arrayidx116.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx116.1.i, align 8
  %cmp118.1.i = icmp eq ptr %30, null
  br i1 %cmp118.1.i, label %for.inc130.i.for.body136.i.preheader_crit_edge, label %if.end121.1.i

for.inc130.i.for.body136.i.preheader_crit_edge:   ; preds = %for.inc130.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body136.i.preheader

if.end121.1.i:                                    ; preds = %for.inc130.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx126.1.i = getelementptr inbounds [2 x ptr], ptr %csi_sensors.i, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx126.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx126.1.i, align 4
  %shl128.1.i = shl nuw i32 1, %fimc_id.3.i
  tail call fastcc void @__fimc_md_create_fimc_sink_links(ptr noundef %add.ptr.i, ptr noundef nonnull %30, ptr noundef %32, i32 noundef 1, i32 noundef %shl128.1.i) #11
  br label %for.body136.i.preheader

for.body136.i.preheader:                          ; preds = %if.end121.1.i, %for.inc130.i.for.body136.i.preheader_crit_edge
  br label %for.body136.i

for.body136.i:                                    ; preds = %for.body136.backedge.i, %for.body136.i.preheader
  %i.2278.i = phi i32 [ %i.2278.be.i, %for.body136.backedge.i ], [ 0, %for.body136.i.preheader ]
  %arrayidx137.i = getelementptr %struct.fimc_md, ptr %add.ptr.i, i32 0, i32 6, i32 %i.2278.i
  %33 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx137.i, align 4
  %tobool138.not.i = icmp eq ptr %34, null
  br i1 %tobool138.not.i, label %for.inc153.i, label %if.end140.i

if.end140.i:                                      ; preds = %for.body136.i
  %subdev143.i = getelementptr inbounds %struct.fimc_dev, ptr %34, i32 0, i32 13, i32 1
  %ve.i = getelementptr inbounds %struct.fimc_dev, ptr %34, i32 0, i32 13, i32 2
  %call149.i = tail call i32 @media_create_pad_link(ptr noundef %subdev143.i, i16 noundef zeroext 2, ptr noundef %ve.i, i16 noundef zeroext 0, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i)
  %tobool150.not.i = icmp eq i32 %call149.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.2278.i)
  %cmp134.i = icmp ult i32 %i.2278.i, 3
  %or.cond.i = select i1 %tobool150.not.i, i1 %cmp134.i, i1 false
  br i1 %or.cond.i, label %if.end140.i.for.body136.backedge.i_crit_edge, label %if.end140.i.for.end155.i_crit_edge

if.end140.i.for.end155.i_crit_edge:               ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end155.i

if.end140.i.for.body136.backedge.i_crit_edge:     ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body136.backedge.i

for.inc153.i:                                     ; preds = %for.body136.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.2278.i)
  %cmp134.old.i = icmp ult i32 %i.2278.i, 3
  br i1 %cmp134.old.i, label %for.inc153.i.for.body136.backedge.i_crit_edge, label %for.inc153.i.for.end155.i_crit_edge

for.inc153.i.for.end155.i_crit_edge:              ; preds = %for.inc153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end155.i

for.inc153.i.for.body136.backedge.i_crit_edge:    ; preds = %for.inc153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body136.backedge.i

for.body136.backedge.i:                           ; preds = %for.inc153.i.for.body136.backedge.i_crit_edge, %if.end140.i.for.body136.backedge.i_crit_edge
  %i.2278.be.i = add nuw nsw i32 %i.2278.i, 1
  br label %for.body136.i

for.end155.i:                                     ; preds = %for.inc153.i.for.end155.i_crit_edge, %if.end140.i.for.end155.i_crit_edge
  %fimc_is.i.i = getelementptr i8, ptr %notifier, i32 -812
  %arrayidx.i.i = getelementptr i8, ptr %notifier, i32 -840
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp1.i.i = icmp eq ptr %36, null
  br i1 %cmp1.i.i, label %for.end155.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.end155.i.for.inc.i.i_crit_edge:               ; preds = %for.end155.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.end155.i
  %subdev.i.i = getelementptr inbounds %struct.fimc_lite, ptr %36, i32 0, i32 5
  %ve.i.i = getelementptr inbounds %struct.fimc_lite, ptr %36, i32 0, i32 2
  %call.i.i = tail call i32 @media_create_pad_link(ptr noundef %subdev.i.i, i16 noundef zeroext 1, ptr noundef %ve.i.i, i16 noundef zeroext 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %cleanup.i.i, label %if.end.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge

if.end.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fimc_md_create_flite_source_links.exit.i

cleanup.i.i:                                      ; preds = %if.end.i.i
  %37 = ptrtoint ptr %fimc_is.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fimc_is.i.i, align 8
  %subdev5.i.i = getelementptr inbounds %struct.fimc_is, ptr %38, i32 0, i32 5, i32 1
  %call7.i.i = tail call i32 @media_create_pad_link(ptr noundef %subdev.i.i, i16 noundef zeroext 2, ptr noundef %subdev5.i.i, i16 noundef zeroext 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.not.i.i, label %cleanup.i.i.for.inc.i.i_crit_edge, label %cleanup.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge

cleanup.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fimc_md_create_flite_source_links.exit.i

cleanup.i.i.for.inc.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %cleanup.i.i.for.inc.i.i_crit_edge, %for.end155.i.for.inc.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr i8, ptr %notifier, i32 -836
  %39 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.1.i.i, align 4
  %cmp1.1.i.i = icmp eq ptr %40, null
  br i1 %cmp1.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.end.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i.i

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  %subdev.1.i.i = getelementptr inbounds %struct.fimc_lite, ptr %40, i32 0, i32 5
  %ve.1.i.i = getelementptr inbounds %struct.fimc_lite, ptr %40, i32 0, i32 2
  %call.1.i.i = tail call i32 @media_create_pad_link(ptr noundef %subdev.1.i.i, i16 noundef zeroext 1, ptr noundef %ve.1.i.i, i16 noundef zeroext 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %cleanup.1.i.i, label %if.end.1.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge

if.end.1.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge: ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fimc_md_create_flite_source_links.exit.i

cleanup.1.i.i:                                    ; preds = %if.end.1.i.i
  %41 = ptrtoint ptr %fimc_is.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fimc_is.i.i, align 8
  %subdev5.1.i.i = getelementptr inbounds %struct.fimc_is, ptr %42, i32 0, i32 5, i32 1
  %call7.1.i.i = tail call i32 @media_create_pad_link(ptr noundef %subdev.1.i.i, i16 noundef zeroext 2, ptr noundef %subdev5.1.i.i, i16 noundef zeroext 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1.i.i)
  %tobool8.not.not.1.i.i = icmp eq i32 %call7.1.i.i, 0
  br i1 %tobool8.not.not.1.i.i, label %cleanup.1.i.i.for.inc.1.i.i_crit_edge, label %cleanup.1.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge

cleanup.1.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge: ; preds = %cleanup.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fimc_md_create_flite_source_links.exit.i

cleanup.1.i.i.for.inc.1.i.i_crit_edge:            ; preds = %cleanup.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %cleanup.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %arrayidx.2.i.i = getelementptr i8, ptr %notifier, i32 -832
  %43 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.2.i.i, align 4
  %cmp1.2.i.i = icmp eq ptr %44, null
  br i1 %cmp1.2.i.i, label %for.inc.1.i.i.if.end160.i_crit_edge, label %if.end.2.i.i

for.inc.1.i.i.if.end160.i_crit_edge:              ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160.i

if.end.2.i.i:                                     ; preds = %for.inc.1.i.i
  %subdev.2.i.i = getelementptr inbounds %struct.fimc_lite, ptr %44, i32 0, i32 5
  %ve.2.i.i = getelementptr inbounds %struct.fimc_lite, ptr %44, i32 0, i32 2
  %call.2.i.i = tail call i32 @media_create_pad_link(ptr noundef %subdev.2.i.i, i16 noundef zeroext 1, ptr noundef %ve.2.i.i, i16 noundef zeroext 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %cleanup.2.i.i, label %if.end.2.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge

if.end.2.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge: ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fimc_md_create_flite_source_links.exit.i

cleanup.2.i.i:                                    ; preds = %if.end.2.i.i
  %45 = ptrtoint ptr %fimc_is.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fimc_is.i.i, align 8
  %subdev5.2.i.i = getelementptr inbounds %struct.fimc_is, ptr %46, i32 0, i32 5, i32 1
  %call7.2.i.i = tail call i32 @media_create_pad_link(ptr noundef %subdev.2.i.i, i16 noundef zeroext 2, ptr noundef %subdev5.2.i.i, i16 noundef zeroext 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2.i.i)
  %tobool8.not.not.2.i.i = icmp eq i32 %call7.2.i.i, 0
  br i1 %tobool8.not.not.2.i.i, label %cleanup.2.i.i.if.end160.i_crit_edge, label %cleanup.2.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge

cleanup.2.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge: ; preds = %cleanup.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fimc_md_create_flite_source_links.exit.i

cleanup.2.i.i.if.end160.i_crit_edge:              ; preds = %cleanup.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160.i

__fimc_md_create_flite_source_links.exit.i:       ; preds = %cleanup.2.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge, %if.end.2.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge, %cleanup.1.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge, %if.end.1.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge, %cleanup.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge, %if.end.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge
  %ret.2.i.i = phi i32 [ %call7.i.i, %cleanup.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge ], [ %call.i.i, %if.end.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge ], [ %call.1.i.i, %if.end.1.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge ], [ %call7.1.i.i, %cleanup.1.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge ], [ %call.2.i.i, %if.end.2.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge ], [ %call7.2.i.i, %cleanup.2.i.i.__fimc_md_create_flite_source_links.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i.i)
  %cmp157.i = icmp slt i32 %ret.2.i.i, 0
  br i1 %cmp157.i, label %__fimc_md_create_flite_source_links.exit.i.fimc_md_create_links.exit.thread_crit_edge, label %__fimc_md_create_flite_source_links.exit.i.if.end160.i_crit_edge

__fimc_md_create_flite_source_links.exit.i.if.end160.i_crit_edge: ; preds = %__fimc_md_create_flite_source_links.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160.i

__fimc_md_create_flite_source_links.exit.i.fimc_md_create_links.exit.thread_crit_edge: ; preds = %__fimc_md_create_flite_source_links.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_create_links.exit.thread

if.end160.i:                                      ; preds = %__fimc_md_create_flite_source_links.exit.i.if.end160.i_crit_edge, %cleanup.2.i.i.if.end160.i_crit_edge, %for.inc.1.i.i.if.end160.i_crit_edge
  %use_isp.i = getelementptr i8, ptr %notifier, i32 -808
  %47 = ptrtoint ptr %use_isp.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %use_isp.i, align 4, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool161.not.i = icmp eq i8 %48, 0
  br i1 %tobool161.not.i, label %if.end160.i.fimc_md_create_links.exit.thread21_crit_edge, label %if.then162.i

if.end160.i.fimc_md_create_links.exit.thread21_crit_edge: ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_create_links.exit.thread21

if.then162.i:                                     ; preds = %if.end160.i
  %49 = ptrtoint ptr %fimc_is.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fimc_is.i.i, align 8
  %subdev.i237.i = getelementptr inbounds %struct.fimc_is, ptr %50, i32 0, i32 5, i32 1
  %arrayidx.i238.i = getelementptr i8, ptr %notifier, i32 -828
  %51 = ptrtoint ptr %arrayidx.i238.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i238.i, align 4
  %cmp2.i.i = icmp eq ptr %52, null
  br i1 %cmp2.i.i, label %if.then162.i.for.inc.i244.i_crit_edge, label %if.end.i242.i

if.then162.i.for.inc.i244.i_crit_edge:            ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i244.i

if.end.i242.i:                                    ; preds = %if.then162.i
  %subdev5.i239.i = getelementptr inbounds %struct.fimc_dev, ptr %52, i32 0, i32 13, i32 1
  %call.i240.i = tail call i32 @media_create_pad_link(ptr noundef %subdev.i237.i, i16 noundef zeroext 1, ptr noundef %subdev5.i239.i, i16 noundef zeroext 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240.i)
  %tobool.not.i241.i = icmp eq i32 %call.i240.i, 0
  br i1 %tobool.not.i241.i, label %if.end.i242.i.for.inc.i244.i_crit_edge, label %if.end.i242.i.fimc_md_create_links.exit_crit_edge

if.end.i242.i.fimc_md_create_links.exit_crit_edge: ; preds = %if.end.i242.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_create_links.exit

if.end.i242.i.for.inc.i244.i_crit_edge:           ; preds = %if.end.i242.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i244.i

for.inc.i244.i:                                   ; preds = %if.end.i242.i.for.inc.i244.i_crit_edge, %if.then162.i.for.inc.i244.i_crit_edge
  %arrayidx.1.i243.i = getelementptr i8, ptr %notifier, i32 -824
  %53 = ptrtoint ptr %arrayidx.1.i243.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.1.i243.i, align 4
  %cmp2.1.i.i = icmp eq ptr %54, null
  br i1 %cmp2.1.i.i, label %for.inc.i244.i.for.inc.1.i250.i_crit_edge, label %if.end.1.i248.i

for.inc.i244.i.for.inc.1.i250.i_crit_edge:        ; preds = %for.inc.i244.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i250.i

if.end.1.i248.i:                                  ; preds = %for.inc.i244.i
  %subdev5.1.i245.i = getelementptr inbounds %struct.fimc_dev, ptr %54, i32 0, i32 13, i32 1
  %call.1.i246.i = tail call i32 @media_create_pad_link(ptr noundef %subdev.i237.i, i16 noundef zeroext 1, ptr noundef %subdev5.1.i245.i, i16 noundef zeroext 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i246.i)
  %tobool.not.1.i247.i = icmp eq i32 %call.1.i246.i, 0
  br i1 %tobool.not.1.i247.i, label %if.end.1.i248.i.for.inc.1.i250.i_crit_edge, label %if.end.1.i248.i.fimc_md_create_links.exit_crit_edge

if.end.1.i248.i.fimc_md_create_links.exit_crit_edge: ; preds = %if.end.1.i248.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_create_links.exit

if.end.1.i248.i.for.inc.1.i250.i_crit_edge:       ; preds = %if.end.1.i248.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i250.i

for.inc.1.i250.i:                                 ; preds = %if.end.1.i248.i.for.inc.1.i250.i_crit_edge, %for.inc.i244.i.for.inc.1.i250.i_crit_edge
  %arrayidx.2.i249.i = getelementptr i8, ptr %notifier, i32 -820
  %55 = ptrtoint ptr %arrayidx.2.i249.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.2.i249.i, align 4
  %cmp2.2.i.i = icmp eq ptr %56, null
  br i1 %cmp2.2.i.i, label %for.inc.1.i250.i.for.inc.2.i255.i_crit_edge, label %if.end.2.i254.i

for.inc.1.i250.i.for.inc.2.i255.i_crit_edge:      ; preds = %for.inc.1.i250.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i255.i

if.end.2.i254.i:                                  ; preds = %for.inc.1.i250.i
  %subdev5.2.i251.i = getelementptr inbounds %struct.fimc_dev, ptr %56, i32 0, i32 13, i32 1
  %call.2.i252.i = tail call i32 @media_create_pad_link(ptr noundef %subdev.i237.i, i16 noundef zeroext 1, ptr noundef %subdev5.2.i251.i, i16 noundef zeroext 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i252.i)
  %tobool.not.2.i253.i = icmp eq i32 %call.2.i252.i, 0
  br i1 %tobool.not.2.i253.i, label %if.end.2.i254.i.for.inc.2.i255.i_crit_edge, label %if.end.2.i254.i.fimc_md_create_links.exit_crit_edge

if.end.2.i254.i.fimc_md_create_links.exit_crit_edge: ; preds = %if.end.2.i254.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_create_links.exit

if.end.2.i254.i.for.inc.2.i255.i_crit_edge:       ; preds = %if.end.2.i254.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i255.i

for.inc.2.i255.i:                                 ; preds = %if.end.2.i254.i.for.inc.2.i255.i_crit_edge, %for.inc.1.i250.i.for.inc.2.i255.i_crit_edge
  %arrayidx.3.i.i = getelementptr i8, ptr %notifier, i32 -816
  %57 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.3.i.i, align 4
  %cmp2.3.i.i = icmp eq ptr %58, null
  br i1 %cmp2.3.i.i, label %for.inc.2.i255.i.for.inc.3.i.i_crit_edge, label %if.end.3.i.i

for.inc.2.i255.i.for.inc.3.i.i_crit_edge:         ; preds = %for.inc.2.i255.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i.i

if.end.3.i.i:                                     ; preds = %for.inc.2.i255.i
  %subdev5.3.i.i = getelementptr inbounds %struct.fimc_dev, ptr %58, i32 0, i32 13, i32 1
  %call.3.i.i = tail call i32 @media_create_pad_link(ptr noundef %subdev.i237.i, i16 noundef zeroext 1, ptr noundef %subdev5.3.i.i, i16 noundef zeroext 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %call.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %if.end.3.i.i.for.inc.3.i.i_crit_edge, label %if.end.3.i.i.fimc_md_create_links.exit_crit_edge

if.end.3.i.i.fimc_md_create_links.exit_crit_edge: ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_create_links.exit

if.end.3.i.i.for.inc.3.i.i_crit_edge:             ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.end.3.i.i.for.inc.3.i.i_crit_edge, %for.inc.2.i255.i.for.inc.3.i.i_crit_edge
  %num_pads.i.i = getelementptr inbounds %struct.fimc_is, ptr %50, i32 0, i32 5, i32 12, i32 0, i32 0, i32 0, i32 5
  %59 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp10.i.i = icmp eq i16 %60, 0
  br i1 %cmp10.i.i, label %for.inc.3.i.i.fimc_md_create_links.exit.thread21_crit_edge, label %if.end13.i.i

for.inc.3.i.i.fimc_md_create_links.exit.thread21_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_md_create_links.exit.thread21

if.end13.i.i:                                     ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %video_capture.i.i = getelementptr inbounds %struct.fimc_is, ptr %50, i32 0, i32 5, i32 12
  %call14.i.i = tail call i32 @media_create_pad_link(ptr noundef %subdev.i237.i, i16 noundef zeroext 2, ptr noundef %video_capture.i.i, i16 noundef zeroext 0, i32 noundef 0) #11
  br label %fimc_md_create_links.exit

fimc_md_create_links.exit.thread:                 ; preds = %__fimc_md_create_flite_source_links.exit.i.fimc_md_create_links.exit.thread_crit_edge, %do.end98.i, %do.end57.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %ret.2.i.i, %__fimc_md_create_flite_source_links.exit.i.fimc_md_create_links.exit.thread_crit_edge ], [ -22, %do.end57.i ], [ -22, %do.end.i ], [ -22, %do.end98.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %csi_sensors.i) #11
  br label %unlock.thread

fimc_md_create_links.exit.thread21:               ; preds = %for.inc.3.i.i.fimc_md_create_links.exit.thread21_crit_edge, %if.end160.i.fimc_md_create_links.exit.thread21_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %csi_sensors.i) #11
  br label %unlock

fimc_md_create_links.exit:                        ; preds = %if.end13.i.i, %if.end.3.i.i.fimc_md_create_links.exit_crit_edge, %if.end.2.i254.i.fimc_md_create_links.exit_crit_edge, %if.end.1.i248.i.fimc_md_create_links.exit_crit_edge, %if.end.i242.i.fimc_md_create_links.exit_crit_edge, %if.end73.i.fimc_md_create_links.exit_crit_edge
  %retval.0.i = phi i32 [ %call14.i.i, %if.end13.i.i ], [ %call.i240.i, %if.end.i242.i.fimc_md_create_links.exit_crit_edge ], [ %call.1.i246.i, %if.end.1.i248.i.fimc_md_create_links.exit_crit_edge ], [ %call.2.i252.i, %if.end.2.i254.i.fimc_md_create_links.exit_crit_edge ], [ %call.3.i.i, %if.end.3.i.i.fimc_md_create_links.exit_crit_edge ], [ %call78.i, %if.end73.i.fimc_md_create_links.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %csi_sensors.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %fimc_md_create_links.exit.unlock.thread_crit_edge, label %fimc_md_create_links.exit.unlock_crit_edge

fimc_md_create_links.exit.unlock_crit_edge:       ; preds = %fimc_md_create_links.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

fimc_md_create_links.exit.unlock.thread_crit_edge: ; preds = %fimc_md_create_links.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.thread

unlock.thread:                                    ; preds = %fimc_md_create_links.exit.unlock.thread_crit_edge, %fimc_md_create_links.exit.thread
  %ret.0.ph = phi i32 [ %retval.0.i.ph, %fimc_md_create_links.exit.thread ], [ %retval.0.i, %fimc_md_create_links.exit.unlock.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %graph_mutex) #11
  br label %cleanup

unlock:                                           ; preds = %fimc_md_create_links.exit.unlock_crit_edge, %fimc_md_create_links.exit.thread21
  %v4l2_dev = getelementptr i8, ptr %notifier, i32 -188
  %call.i = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %v4l2_dev, i1 noundef zeroext false) #11
  tail call void @mutex_unlock(ptr noundef %graph_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %unlock.cleanup_crit_edge, label %if.end7

unlock.cleanup_crit_edge:                         ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 @__media_device_register(ptr noundef %media_dev, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %unlock.cleanup_crit_edge, %unlock.thread
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ %call.i, %unlock.cleanup_crit_edge ], [ %ret.0.ph, %unlock.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__fimc_md_create_fimc_sink_links(ptr noundef %fmd, ptr noundef %source, ptr noundef readonly %sensor, i32 noundef %pad, i32 noundef %link_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sensor, null
  br i1 %tobool.not, label %entry.for.body.lr.ph_crit_edge, label %if.then

entry.for.body.lr.ph_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

if.then:                                          ; preds = %entry
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sensor, i32 0, i32 12
  %0 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_priv.i, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.for.body.lr.ph_crit_edge, label %if.end3

if.then.for.body.lr.ph_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

if.end3:                                          ; preds = %if.then
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.not = icmp eq i32 %3, 5
  br i1 %cmp.not, label %if.end3.for.end_crit_edge, label %if.end3.for.body.lr.ph_crit_edge

if.end3.for.body.lr.ph_crit_edge:                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = trunc i32 %pad to i16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end3.for.body.lr.ph_crit_edge, %if.then.for.body.lr.ph_crit_edge, %entry.for.body.lr.ph_crit_edge
  %conv = trunc i32 %pad to i16
  %pads28 = getelementptr inbounds %struct.media_entity, ptr %source, i32 0, i32 9
  %name = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 11, i32 4
  %name35 = getelementptr inbounds %struct.media_entity, ptr %source, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 6, i32 %i.07
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %variant = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %7, align 4
  %9 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  br i1 %tobool11.not, label %if.end8.for.inc_crit_edge, label %if.end13

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end13:                                         ; preds = %if.end8
  %shl = shl nuw nsw i32 1, %i.07
  %and = and i32 %shl, %link_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %not.tobool14.not = xor i1 %tobool14.not, true
  %cond = zext i1 %not.tobool14.not to i32
  %subdev = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 1
  %call17 = tail call i32 @media_create_pad_link(ptr noundef %source, i16 noundef zeroext %conv, ptr noundef %subdev, i16 noundef zeroext 0, i32 noundef %cond) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %ops = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 1, i32 0, i32 11
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tobool21.not = icmp eq ptr %11, null
  br i1 %tobool21.not, label %if.end20.for.end_crit_edge, label %land.lhs.true22

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true22:                                  ; preds = %if.end20
  %link_setup = getelementptr inbounds %struct.media_entity_operations, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %link_setup to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_setup, align 4
  %tobool24.not = icmp eq ptr %13, null
  br i1 %tobool24.not, label %land.lhs.true22.for.end_crit_edge, label %cond.end

land.lhs.true22.for.end_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cond.end:                                         ; preds = %land.lhs.true22
  %pads = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 1, i32 0, i32 9
  %14 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pads, align 4
  %16 = ptrtoint ptr %pads28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pads28, align 4
  %arrayidx29 = getelementptr %struct.media_pad, ptr %17, i32 %pad
  %call30 = tail call i32 %13(ptr noundef %subdev, ptr noundef %15, ptr noundef %arrayidx29, i32 noundef %cond) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool32.not = icmp eq i32 %call30, 0
  br i1 %tobool32.not, label %do.end, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %name35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name35, align 4
  %cond37 = select i1 %tobool14.not, i32 45, i32 61
  %name38 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %name38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name38, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name, ptr noundef %19, i32 noundef %cond37, ptr noundef %21) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge, %land.lhs.true22.for.end_crit_edge, %if.end20.for.end_crit_edge, %if.end3.for.end_crit_edge
  %conv52.pre-phi = phi i16 [ %.pre, %if.end3.for.end_crit_edge ], [ %conv, %if.end20.for.end_crit_edge ], [ %conv, %land.lhs.true22.for.end_crit_edge ], [ %conv, %for.inc.for.end_crit_edge ], [ %conv, %cond.end.for.end_crit_edge ]
  %pads68 = getelementptr inbounds %struct.media_entity, ptr %source, i32 0, i32 9
  %name82 = getelementptr inbounds %struct.fimc_md, ptr %fmd, i32 0, i32 11, i32 4
  %name84 = getelementptr inbounds %struct.media_entity, ptr %source, i32 0, i32 1
  %arrayidx44 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 5, i32 0
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx44, align 4
  %tobool45.not = icmp eq ptr %23, null
  br i1 %tobool45.not, label %for.end.for.inc87_crit_edge, label %if.end47

for.end.for.inc87_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc87

if.end47:                                         ; preds = %for.end
  %subdev50 = getelementptr inbounds %struct.fimc_lite, ptr %23, i32 0, i32 5
  %call53 = tail call i32 @media_create_pad_link(ptr noundef %source, i16 noundef zeroext %conv52.pre-phi, ptr noundef %subdev50, i16 noundef zeroext 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end56:                                         ; preds = %if.end47
  %ops57 = getelementptr inbounds %struct.fimc_lite, ptr %23, i32 0, i32 5, i32 0, i32 11
  %24 = ptrtoint ptr %ops57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops57, align 4
  %tobool58.not = icmp eq ptr %25, null
  br i1 %tobool58.not, label %if.end56.cleanup_crit_edge, label %land.lhs.true59

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true59:                                  ; preds = %if.end56
  %link_setup61 = getelementptr inbounds %struct.media_entity_operations, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %link_setup61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link_setup61, align 4
  %tobool62.not = icmp eq ptr %27, null
  br i1 %tobool62.not, label %land.lhs.true59.cleanup_crit_edge, label %cond.end72

land.lhs.true59.cleanup_crit_edge:                ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.end72:                                       ; preds = %land.lhs.true59
  %pads66 = getelementptr inbounds %struct.fimc_lite, ptr %23, i32 0, i32 5, i32 0, i32 9
  %28 = ptrtoint ptr %pads66 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pads66, align 4
  %30 = ptrtoint ptr %pads68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pads68, align 4
  %arrayidx69 = getelementptr %struct.media_pad, ptr %31, i32 %pad
  %call70 = tail call i32 %27(ptr noundef %subdev50, ptr noundef %29, ptr noundef %arrayidx69, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool74.not = icmp eq i32 %call70, 0
  br i1 %tobool74.not, label %do.end79, label %cond.end72.cleanup_crit_edge

cond.end72.cleanup_crit_edge:                     ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end79:                                         ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %name84 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name84, align 4
  %name85 = getelementptr inbounds %struct.fimc_lite, ptr %23, i32 0, i32 5, i32 0, i32 1
  %34 = ptrtoint ptr %name85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name85, align 4
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name82, ptr noundef %33, ptr noundef %35) #14
  br label %for.inc87

for.inc87:                                        ; preds = %do.end79, %for.end.for.inc87_crit_edge
  %arrayidx44.1 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx44.1, align 4
  %tobool45.not.1 = icmp eq ptr %37, null
  br i1 %tobool45.not.1, label %for.inc87.for.inc87.1_crit_edge, label %if.end47.1

for.inc87.for.inc87.1_crit_edge:                  ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc87.1

if.end47.1:                                       ; preds = %for.inc87
  %subdev50.1 = getelementptr inbounds %struct.fimc_lite, ptr %37, i32 0, i32 5
  %call53.1 = tail call i32 @media_create_pad_link(ptr noundef %source, i16 noundef zeroext %conv52.pre-phi, ptr noundef %subdev50.1, i16 noundef zeroext 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.1)
  %tobool54.not.1 = icmp eq i32 %call53.1, 0
  br i1 %tobool54.not.1, label %if.end56.1, label %if.end47.1.cleanup_crit_edge

if.end47.1.cleanup_crit_edge:                     ; preds = %if.end47.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end56.1:                                       ; preds = %if.end47.1
  %ops57.1 = getelementptr inbounds %struct.fimc_lite, ptr %37, i32 0, i32 5, i32 0, i32 11
  %38 = ptrtoint ptr %ops57.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops57.1, align 4
  %tobool58.not.1 = icmp eq ptr %39, null
  br i1 %tobool58.not.1, label %if.end56.1.cleanup_crit_edge, label %land.lhs.true59.1

if.end56.1.cleanup_crit_edge:                     ; preds = %if.end56.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true59.1:                                ; preds = %if.end56.1
  %link_setup61.1 = getelementptr inbounds %struct.media_entity_operations, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %link_setup61.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %link_setup61.1, align 4
  %tobool62.not.1 = icmp eq ptr %41, null
  br i1 %tobool62.not.1, label %land.lhs.true59.1.cleanup_crit_edge, label %cond.end72.1

land.lhs.true59.1.cleanup_crit_edge:              ; preds = %land.lhs.true59.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.end72.1:                                     ; preds = %land.lhs.true59.1
  %pads66.1 = getelementptr inbounds %struct.fimc_lite, ptr %37, i32 0, i32 5, i32 0, i32 9
  %42 = ptrtoint ptr %pads66.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pads66.1, align 4
  %44 = ptrtoint ptr %pads68 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pads68, align 4
  %arrayidx69.1 = getelementptr %struct.media_pad, ptr %45, i32 %pad
  %call70.1 = tail call i32 %41(ptr noundef %subdev50.1, ptr noundef %43, ptr noundef %arrayidx69.1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.1)
  %tobool74.not.1 = icmp eq i32 %call70.1, 0
  br i1 %tobool74.not.1, label %do.end79.1, label %cond.end72.1.cleanup_crit_edge

cond.end72.1.cleanup_crit_edge:                   ; preds = %cond.end72.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end79.1:                                       ; preds = %cond.end72.1
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %name84 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name84, align 4
  %name85.1 = getelementptr inbounds %struct.fimc_lite, ptr %37, i32 0, i32 5, i32 0, i32 1
  %48 = ptrtoint ptr %name85.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name85.1, align 4
  %call86.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name82, ptr noundef %47, ptr noundef %49) #14
  br label %for.inc87.1

for.inc87.1:                                      ; preds = %do.end79.1, %for.inc87.for.inc87.1_crit_edge
  %arrayidx44.2 = getelementptr %struct.fimc_md, ptr %fmd, i32 0, i32 5, i32 2
  %50 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx44.2, align 4
  %tobool45.not.2 = icmp eq ptr %51, null
  br i1 %tobool45.not.2, label %for.inc87.1.cleanup_crit_edge, label %if.end47.2

for.inc87.1.cleanup_crit_edge:                    ; preds = %for.inc87.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end47.2:                                       ; preds = %for.inc87.1
  %subdev50.2 = getelementptr inbounds %struct.fimc_lite, ptr %51, i32 0, i32 5
  %call53.2 = tail call i32 @media_create_pad_link(ptr noundef %source, i16 noundef zeroext %conv52.pre-phi, ptr noundef %subdev50.2, i16 noundef zeroext 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.2)
  %tobool54.not.2 = icmp eq i32 %call53.2, 0
  br i1 %tobool54.not.2, label %if.end56.2, label %if.end47.2.cleanup_crit_edge

if.end47.2.cleanup_crit_edge:                     ; preds = %if.end47.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end56.2:                                       ; preds = %if.end47.2
  %ops57.2 = getelementptr inbounds %struct.fimc_lite, ptr %51, i32 0, i32 5, i32 0, i32 11
  %52 = ptrtoint ptr %ops57.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops57.2, align 4
  %tobool58.not.2 = icmp eq ptr %53, null
  br i1 %tobool58.not.2, label %if.end56.2.cleanup_crit_edge, label %land.lhs.true59.2

if.end56.2.cleanup_crit_edge:                     ; preds = %if.end56.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true59.2:                                ; preds = %if.end56.2
  %link_setup61.2 = getelementptr inbounds %struct.media_entity_operations, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %link_setup61.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %link_setup61.2, align 4
  %tobool62.not.2 = icmp eq ptr %55, null
  br i1 %tobool62.not.2, label %land.lhs.true59.2.cleanup_crit_edge, label %cond.end72.2

land.lhs.true59.2.cleanup_crit_edge:              ; preds = %land.lhs.true59.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.end72.2:                                     ; preds = %land.lhs.true59.2
  %pads66.2 = getelementptr inbounds %struct.fimc_lite, ptr %51, i32 0, i32 5, i32 0, i32 9
  %56 = ptrtoint ptr %pads66.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pads66.2, align 4
  %58 = ptrtoint ptr %pads68 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pads68, align 4
  %arrayidx69.2 = getelementptr %struct.media_pad, ptr %59, i32 %pad
  %call70.2 = tail call i32 %55(ptr noundef %subdev50.2, ptr noundef %57, ptr noundef %arrayidx69.2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.2)
  %tobool74.not.2 = icmp eq i32 %call70.2, 0
  br i1 %tobool74.not.2, label %do.end79.2, label %cond.end72.2.cleanup_crit_edge

cond.end72.2.cleanup_crit_edge:                   ; preds = %cond.end72.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end79.2:                                       ; preds = %cond.end72.2
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %name84 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name84, align 4
  %name85.2 = getelementptr inbounds %struct.fimc_lite, ptr %51, i32 0, i32 5, i32 0, i32 1
  %62 = ptrtoint ptr %name85.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name85.2, align 4
  %call86.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name82, ptr noundef %61, ptr noundef %63) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end79.2, %cond.end72.2.cleanup_crit_edge, %land.lhs.true59.2.cleanup_crit_edge, %if.end56.2.cleanup_crit_edge, %if.end47.2.cleanup_crit_edge, %for.inc87.1.cleanup_crit_edge, %cond.end72.1.cleanup_crit_edge, %land.lhs.true59.1.cleanup_crit_edge, %if.end56.1.cleanup_crit_edge, %if.end47.1.cleanup_crit_edge, %cond.end72.cleanup_crit_edge, %land.lhs.true59.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_register_driver() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !68, !69, !70, !72, !74, !76, !78, !80, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !111, !113, !114, !115, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !131, !132, !134, !136, !138, !140, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !156, !158, !159, !160, !161, !163, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @__initcall__kmod_s5p_fimc__301_1598_fimc_md_init6, !1, !"__initcall__kmod_s5p_fimc__301_1598_fimc_md_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1598, i32 1}
!2 = !{ptr @__exitcall_fimc_md_exit, !3, !"__exitcall_fimc_md_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1599, i32 1}
!4 = !{ptr @__UNIQUE_ID_author302, !5, !"__UNIQUE_ID_author302", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1601, i32 1}
!6 = !{ptr @__UNIQUE_ID_description303, !7, !"__UNIQUE_ID_description303", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1602, i32 1}
!8 = !{ptr @__UNIQUE_ID_file304, !9, !"__UNIQUE_ID_file304", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1603, i32 1}
!10 = !{ptr @__UNIQUE_ID_license305, !9, !"__UNIQUE_ID_license305", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_version306, !12, !"__UNIQUE_ID_version306", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1604, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1576, i32 12}
!19 = !{ptr @fimc_md_driver, !20, !"fimc_md_driver", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1571, i32 31}
!21 = !{ptr @fimc_md_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1445, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1449, i32 32}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1466, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @fimc_md_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @fimc_md_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1478, i32 4}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @fimc_md_probe._entry.9, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @fimc_md_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1504, i32 3}
!40 = !{ptr @fimc_md_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @fimc_md_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @fimc_md_ops, !43, !"fimc_md_ops", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1237, i32 38}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 241, i32 3}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__fimc_pipeline_open._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @__fimc_pipeline_open._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @fimc_pipeline_s_power.seq, !50, !"seq", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 159, i32 18}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 266, i32 3}
!53 = !{ptr @__fimc_pipeline_close._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @__fimc_pipeline_close._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/exynos4-is/media-dev.h", i32 182, i32 36}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1094, i32 40}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1098, i32 4}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @fimc_md_get_clocks._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @fimc_md_get_clocks._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1116, i32 40}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1119, i32 4}
!68 = !{ptr @fimc_md_get_clocks._entry.25, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @fimc_md_get_clocks._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 752, i32 29}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 756, i32 34}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 758, i32 34}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 759, i32 34}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 728, i32 3}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @fimc_md_register_platform_entity._entry, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @fimc_md_register_platform_entity._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 731, i32 3}
!86 = !{ptr @fimc_md_register_platform_entity._entry.35, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @fimc_md_register_platform_entity._entry_ptr.37, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 634, i32 3}
!90 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @register_fimc_entity._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @register_fimc_entity._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @fimc_pipeline_ops, !94, !"fimc_pipeline_ops", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 366, i32 47}
!95 = !{ptr @__fimc_pipeline_s_stream.seq, !96, !"seq", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 288, i32 18}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 604, i32 3}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @register_fimc_lite_entity._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @register_fimc_lite_entity._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 660, i32 3}
!104 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @register_csis_entity._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @register_csis_entity._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 569, i32 32}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 572, i32 27}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 680, i32 3}
!113 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @register_fimc_is_entity._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @register_fimc_is_entity._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 541, i32 39}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 423, i32 3}
!120 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @fimc_md_parse_one_endpoint._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @fimc_md_parse_one_endpoint._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 442, i32 3}
!125 = !{ptr @fimc_md_parse_one_endpoint._entry.51, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @fimc_md_parse_one_endpoint._entry_ptr.53, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 456, i32 26}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1281, i32 8}
!131 = !{ptr @dev_attr_subdev_conf_mode, !130, !"dev_attr_subdev_conf_mode", i1 false, i1 false}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1247, i32 23}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1249, i32 22}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1260, i32 19}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1262, i32 24}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1332, i32 6}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1348, i32 4}
!144 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @fimc_md_register_clk_provider._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @fimc_md_register_clk_provider._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1357, i32 3}
!149 = !{ptr @.str.65, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @fimc_md_register_clk_provider._entry.63, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @fimc_md_register_clk_provider._entry_ptr.66, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @cam_clk_ops, !153, !"cam_clk_ops", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1303, i32 29}
!154 = !{ptr @subdev_notifier_ops, !155, !"subdev_notifier_ops", i1 false, i1 false}
!155 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1428, i32 52}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1400, i32 2}
!158 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @subdev_notifier_bound._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @subdev_notifier_bound._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 980, i32 8}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 985, i32 8}
!165 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 997, i32 4}
!167 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @fimc_md_create_links._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @fimc_md_create_links._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1010, i32 4}
!172 = !{ptr @fimc_md_create_links._entry.73, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @fimc_md_create_links._entry_ptr.75, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 857, i32 3}
!176 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @__fimc_md_create_fimc_sink_links._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @__fimc_md_create_fimc_sink_links._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 877, i32 3}
!181 = !{ptr @__fimc_md_create_fimc_sink_links._entry.78, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @__fimc_md_create_fimc_sink_links._entry_ptr.80, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 805, i32 2}
!185 = !{ptr @.str.82, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @fimc_md_unregister_entities._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @fimc_md_unregister_entities._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @fimc_md_of_match, !189, !"fimc_md_of_match", i1 false, i1 false}
!189 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1565, i32 34}
!190 = !{ptr @.str.83, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/platform/exynos4-is/media-dev.c", i32 1584, i32 2}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{i8 0, i8 2}
!202 = !{!"branch_weights", i32 2000, i32 1}
!203 = !{!"branch_weights", i32 1, i32 2000}
!204 = !{i64 2148394628}
!205 = !{i64 881228, i64 881253, i64 881275, i64 881291, i64 881303, i64 881323, i64 881347, i64 881363, i64 881375}
!206 = !{i64 2148394816}
!207 = !{!"auto-init"}
