; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c_pt.bc'
source_filename = "../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.rkisp1_match_data = type { ptr, i32, ptr, i32, i32 }
%struct.rkisp1_isr_data = type { ptr, ptr }
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
%struct.rkisp1_device = type { ptr, ptr, i32, [8 x %struct.clk_bulk_data], %struct.v4l2_device, %struct.media_device, %struct.v4l2_async_notifier, ptr, %struct.rkisp1_isp, [2 x %struct.rkisp1_resizer], [2 x %struct.rkisp1_capture], %struct.rkisp1_stats, %struct.rkisp1_params, %struct.media_pipeline, %struct.mutex, %struct.rkisp1_debug }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rkisp1_isp = type { %struct.v4l2_subdev, [4 x %struct.media_pad], [4 x %struct.v4l2_subdev_pad_config], ptr, ptr, %struct.mutex, i8, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.rkisp1_resizer = type { %struct.v4l2_subdev, i32, ptr, [2 x %struct.media_pad], [2 x %struct.v4l2_subdev_pad_config], ptr, i32, %struct.mutex }
%struct.rkisp1_capture = type { %struct.rkisp1_vdev_node, ptr, i32, ptr, ptr, i8, i8, %struct.wait_queue_head, i32, %struct.anon.101, %struct.anon.102 }
%struct.rkisp1_vdev_node = type { %struct.vb2_queue, %struct.mutex, %struct.video_device, %struct.media_pad }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.anon.101 = type { %struct.spinlock, %struct.list_head, %struct.rkisp1_dummy_buffer, ptr, ptr }
%struct.rkisp1_dummy_buffer = type { ptr, i32, i32 }
%struct.anon.102 = type { ptr, ptr, %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.rkisp1_stats = type { %struct.rkisp1_vdev_node, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.v4l2_format }
%struct.v4l2_format = type { i32, %union.anon.104 }
%union.anon.104 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.rkisp1_params = type { %struct.rkisp1_vdev_node, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.v4l2_format, i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.rkisp1_debug = type { ptr, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32] }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.106, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.106 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.rkisp1_sensor_async = type { %struct.v4l2_async_subdev, i32, i32, i32, ptr, ptr, ptr }
%struct.v4l2_async_subdev = type { i32, %union.anon.99, %struct.list_head, %struct.list_head }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, i16 }

@__initcall__kmod_rockchip_isp1__302_611_rkisp1_drv_init6 = internal global ptr @rkisp1_drv_init, section ".initcall6.init", align 4
@rkisp1_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rkisp1_probe, ptr @rkisp1_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rkisp1_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rkisp1_drv_exit = internal global ptr @rkisp1_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description303 = internal constant [56 x i8] c"rockchip_isp1.description=Rockchip ISP1 platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [72 x i8] c"rockchip_isp1.file=drivers/media/platform/rockchip/rkisp1/rockchip-isp1\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [35 x i8] c"rockchip_isp1.license=Dual MIT/GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rkisp1\00", [25 x i8] zeroinitializer }, align 32
@rkisp1_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-cif-isp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @px30_isp_match_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-cif-isp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_isp_match_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rkisp1_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_runtime_suspend, ptr @rkisp1_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rkisp1_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&rkisp1->stream_lock\00", [43 x i8] zeroinitializer }, align 32
@rkisp1_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 527, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request irq failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rkisp1_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rkisp1_probe._entry_ptr = internal global ptr @rkisp1_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"platform:rkisp1\00", [16 x i8] zeroinitializer }, align 32
@rkisp1_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 559, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register media device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rkisp1_probe._entry_ptr.10 = internal global ptr @rkisp1_probe._entry.8, section ".printk_index", align 4
@rkisp1_entities_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 376, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to register subdev notifier(%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rkisp1_entities_register\00", [39 x i8] zeroinitializer }, align 32
@rkisp1_entities_register._entry_ptr = internal global ptr @rkisp1_entities_register._entry, section ".printk_index", align 4
@rkisp1_subdev_notifier.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rockchip_isp1\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rkisp1_subdev_notifier\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"registered ep id %d with %d lanes\0A\00", [61 x i8] zeroinitializer }, align 32
@rkisp1_subdev_notifier.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.4, ptr @.str.16, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no remote subdevice found\0A\00", [37 x i8] zeroinitializer }, align 32
@rkisp1_subdev_notifier_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @rkisp1_subdev_notifier_bound, ptr @rkisp1_subdev_notifier_complete, ptr @rkisp1_subdev_notifier_unbind }, [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dphy\00", [27 x i8] zeroinitializer }, align 32
@rkisp1_subdev_notifier_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get the MIPI D-PHY\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rkisp1_subdev_notifier_bound\00", [35 x i8] zeroinitializer }, align 32
@rkisp1_subdev_notifier_bound._entry_ptr = internal global ptr @rkisp1_subdev_notifier_bound._entry, section ".printk_index", align 4
@rkisp1_subdev_notifier_complete.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rkisp1_subdev_notifier_complete\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Async subdev notifier completed\0A\00", [63 x i8] zeroinitializer }, align 32
@rkisp1_create_links._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to find src pad for %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rkisp1_create_links\00", [44 x i8] zeroinitializer }, align 32
@rkisp1_create_links._entry_ptr = internal global ptr @rkisp1_create_links._entry, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"data_loss\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"outform_size_err\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"img_stabilization_size_error\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"inform_size_error\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"irq_delay\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mipi_error\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stats_error\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mp_stop_timeout\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sp_stop_timeout\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mp_frame_drop\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sp_frame_drop\00", [18 x i8] zeroinitializer }, align 32
@px30_isp_match_data = internal constant { %struct.rkisp1_match_data, [44 x i8] } { %struct.rkisp1_match_data { ptr @px30_isp_clks, i32 4, ptr @px30_isp_isrs, i32 3, i32 12 }, [44 x i8] zeroinitializer }, align 32
@rk3399_isp_match_data = internal constant { %struct.rkisp1_match_data, [44 x i8] } { %struct.rkisp1_match_data { ptr @rk3399_isp_clks, i32 3, ptr @rk3399_isp_isrs, i32 1, i32 10 }, [44 x i8] zeroinitializer }, align 32
@px30_isp_clks = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], [16 x i8] zeroinitializer }, align 32
@px30_isp_isrs = internal constant { [3 x %struct.rkisp1_isr_data], [40 x i8] } { [3 x %struct.rkisp1_isr_data] [%struct.rkisp1_isr_data { ptr @.str.35, ptr @rkisp1_isp_isr }, %struct.rkisp1_isr_data { ptr @.str.39, ptr @rkisp1_capture_isr }, %struct.rkisp1_isr_data { ptr @.str.40, ptr @rkisp1_mipi_isr }], [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isp\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mi\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mipi\00", [27 x i8] zeroinitializer }, align 32
@rk3399_isp_clks = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37], [20 x i8] zeroinitializer }, align 32
@rk3399_isp_isrs = internal constant { [1 x %struct.rkisp1_isr_data], [24 x i8] } { [1 x %struct.rkisp1_isr_data] [%struct.rkisp1_isr_data { ptr null, ptr @rkisp1_isr }], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"rkisp1_drv\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 601, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 603, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"rkisp1_of_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 448, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"rkisp1_pm_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 339, i32 32 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 511, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 527, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 545, i32 38 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 559, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 375, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 287, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 302, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"rkisp1_subdev_notifier_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 244, i32 52 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 203, i32 42 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 206, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 239, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 140, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 466, i32 23 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 468, i32 23 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 470, i32 23 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 473, i32 23 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 475, i32 23 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 477, i32 23 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 479, i32 23 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 481, i32 23 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 483, i32 23 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 485, i32 23 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 487, i32 23 }
@___asan_gen_.170 = private unnamed_addr constant [20 x i8] c"px30_isp_match_data\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 422, i32 39 }
@___asan_gen_.173 = private unnamed_addr constant [22 x i8] c"rk3399_isp_match_data\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 440, i32 39 }
@___asan_gen_.176 = private unnamed_addr constant [14 x i8] c"px30_isp_clks\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 409, i32 27 }
@___asan_gen_.179 = private unnamed_addr constant [14 x i8] c"px30_isp_isrs\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 416, i32 37 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 410, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 411, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 412, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 413, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 418, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 419, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant [16 x i8] c"rk3399_isp_clks\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 430, i32 27 }
@___asan_gen_.203 = private unnamed_addr constant [16 x i8] c"rk3399_isp_isrs\00", align 1
@___asan_gen_.204 = private constant [55 x i8] c"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 436, i32 37 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_rkisp1_drv_exit, ptr @__initcall__kmod_rockchip_isp1__302_611_rkisp1_drv_init6, ptr @rkisp1_create_links._entry, ptr @rkisp1_create_links._entry_ptr, ptr @rkisp1_drv_exit, ptr @rkisp1_entities_register._entry, ptr @rkisp1_entities_register._entry_ptr, ptr @rkisp1_probe._entry, ptr @rkisp1_probe._entry.8, ptr @rkisp1_probe._entry_ptr, ptr @rkisp1_probe._entry_ptr.10, ptr @rkisp1_subdev_notifier_bound._entry, ptr @rkisp1_subdev_notifier_bound._entry_ptr, ptr @rkisp1_drv, ptr @.str, ptr @rkisp1_of_match, ptr @rkisp1_pm_ops, ptr @rkisp1_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @rkisp1_subdev_notifier_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @px30_isp_match_data, ptr @rk3399_isp_match_data, ptr @px30_isp_clks, ptr @px30_isp_isrs, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @rk3399_isp_clks, ptr @rk3399_isp_isrs], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_entities_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_subdev_notifier_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_subdev_notifier_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_create_links._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_isp_match_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_isp_match_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_isp_clks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_isp_isrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_isp_clks to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_isp_isrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rkisp1_drv, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rkisp1_drv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12176, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %dev7 = getelementptr inbounds %struct.rkisp1_device, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev7, align 4
  %stream_lock = getelementptr inbounds %struct.rkisp1_device, ptr %call.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %stream_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rkisp1_probe.__key) #5
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end6
  %isr_size = getelementptr inbounds %struct.rkisp1_match_data, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %isr_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %isr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp166.not = icmp eq i32 %4, 0
  br i1 %cmp166.not, label %for.cond.preheader.for.cond34.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond34.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond34.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %isrs = getelementptr inbounds %struct.rkisp1_match_data, ptr %call, i32 0, i32 2
  br label %for.body

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call8 to i32
  br label %cleanup

for.cond:                                         ; preds = %if.end23
  %inc = add nuw i32 %i.0167, 1
  %6 = ptrtoint ptr %isr_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %isr_size, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.cond34.preheader_crit_edge

for.cond.for.cond34.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond34.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond34.preheader:                             ; preds = %for.cond.for.cond34.preheader_crit_edge, %for.cond.preheader.for.cond34.preheader_crit_edge
  %clk_size = getelementptr inbounds %struct.rkisp1_match_data, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %clk_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp35168.not = icmp eq i32 %9, 0
  br i1 %cmp35168.not, label %for.cond34.preheader.for.end42_crit_edge, label %for.cond34.preheader.for.body36_crit_edge

for.cond34.preheader.for.body36_crit_edge:        ; preds = %for.cond34.preheader
  br label %for.body36

for.cond34.preheader.for.end42_crit_edge:         ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end42

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0167 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %10 = ptrtoint ptr %isrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %isrs, align 4
  %arrayidx = getelementptr %struct.rkisp1_isr_data, ptr %11, i32 %i.0167
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %13, null
  br i1 %tobool15.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull %13) #5
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0167) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call19, %cond.true ], [ %call20, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp21 = icmp slt i32 %cond, 0
  br i1 %cmp21, label %cond.end.cleanup_crit_edge, label %if.end23

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %cond.end
  %14 = ptrtoint ptr %isrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %isrs, align 4
  %isr = getelementptr %struct.rkisp1_isr_data, ptr %15, i32 %i.0167, i32 1
  %16 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %isr, align 4
  %call26 = tail call ptr @dev_driver_string(ptr noundef %dev1) #5
  %call.i164 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %cond, ptr noundef %17, ptr noundef null, i32 noundef 128, ptr noundef %call26, ptr noundef %dev1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool28.not = icmp eq i32 %call.i164, 0
  br i1 %tobool28.not, label %for.cond, label %do.end32

do.end32:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call.i164) #8
  br label %cleanup

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %for.cond34.preheader.for.body36_crit_edge
  %i.1169 = phi i32 [ %inc41, %for.body36.for.body36_crit_edge ], [ 0, %for.cond34.preheader.for.body36_crit_edge ]
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  %arrayidx37 = getelementptr ptr, ptr %19, i32 %i.1169
  %20 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx37, align 4
  %arrayidx39 = getelementptr %struct.rkisp1_device, ptr %call.i, i32 0, i32 3, i32 %i.1169
  %22 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %arrayidx39, align 4
  %inc41 = add nuw i32 %i.1169, 1
  %23 = ptrtoint ptr %clk_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_size, align 4
  %cmp35 = icmp ult i32 %inc41, %24
  br i1 %cmp35, label %for.body36.for.body36_crit_edge, label %for.body36.for.end42_crit_edge

for.body36.for.end42_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end42

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body36

for.end42:                                        ; preds = %for.body36.for.end42_crit_edge, %for.cond34.preheader.for.end42_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond34.preheader.for.end42_crit_edge ], [ %24, %for.body36.for.end42_crit_edge ]
  %clks44 = getelementptr inbounds %struct.rkisp1_device, ptr %call.i, i32 0, i32 3
  %call45 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef %.lcssa, ptr noundef %clks44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %for.end42.cleanup_crit_edge

for.end42.cleanup_crit_edge:                      ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end48:                                         ; preds = %for.end42
  %25 = ptrtoint ptr %clk_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clk_size, align 4
  %clk_size50 = getelementptr inbounds %struct.rkisp1_device, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %clk_size50 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %clk_size50, align 8
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %isp_ver = getelementptr inbounds %struct.rkisp1_match_data, ptr %call, i32 0, i32 4
  %28 = ptrtoint ptr %isp_ver to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %isp_ver, align 4
  %media_dev = getelementptr inbounds %struct.rkisp1_device, ptr %call.i, i32 0, i32 5
  %hw_revision = getelementptr inbounds %struct.rkisp1_device, ptr %call.i, i32 0, i32 5, i32 6
  %30 = ptrtoint ptr %hw_revision to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %hw_revision, align 8
  %model = getelementptr inbounds %struct.rkisp1_device, ptr %call.i, i32 0, i32 5, i32 2
  %call54 = tail call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str, i32 noundef 32) #5
  %31 = ptrtoint ptr %media_dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev1, ptr %media_dev, align 8
  %bus_info = getelementptr inbounds %struct.rkisp1_device, ptr %call.i, i32 0, i32 5, i32 5
  %call60 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.7, i32 noundef 32) #5
  tail call void @media_device_init(ptr noundef %media_dev) #5
  %v4l2_dev62 = getelementptr inbounds %struct.rkisp1_device, ptr %call.i, i32 0, i32 4
  %mdev = getelementptr inbounds %struct.rkisp1_device, ptr %call.i, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %media_dev, ptr %mdev, align 4
  %name64 = getelementptr inbounds %struct.rkisp1_device, ptr %call.i, i32 0, i32 4, i32 4
  %call66 = tail call i32 @strscpy(ptr noundef %name64, ptr noundef nonnull @.str, i32 noundef 36) #5
  %33 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev7, align 4
  %call69 = tail call i32 @v4l2_device_register(ptr noundef %34, ptr noundef %v4l2_dev62) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end72:                                         ; preds = %if.end48
  %call74 = tail call i32 @__media_device_register(ptr noundef %media_dev, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end80, label %do.end79

do.end79:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %call74) #8
  br label %err_unreg_v4l2_dev

if.end80:                                         ; preds = %if.end72
  %call81 = tail call fastcc i32 @rkisp1_entities_register(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %err_unreg_media_dev

if.end84:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @rkisp1_debug_init(ptr noundef nonnull %call.i)
  br label %cleanup

err_unreg_media_dev:                              ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @media_device_unregister(ptr noundef %media_dev) #5
  br label %err_unreg_v4l2_dev

err_unreg_v4l2_dev:                               ; preds = %err_unreg_media_dev, %do.end79
  %ret.0 = phi i32 [ %call74, %do.end79 ], [ %call81, %err_unreg_media_dev ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev62) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %err_unreg_v4l2_dev, %if.end84, %if.end48.cleanup_crit_edge, %for.end42.cleanup_crit_edge, %do.end32, %cond.end.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then11 ], [ %call.i164, %do.end32 ], [ %ret.0, %err_unreg_v4l2_dev ], [ 0, %if.end84 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call45, %for.end42.cleanup_crit_edge ], [ %call69, %if.end48.cleanup_crit_edge ], [ %cond, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %notifier = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 6
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #5
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #5
  tail call void @rkisp1_params_unregister(ptr noundef %1) #5
  tail call void @rkisp1_stats_unregister(ptr noundef %1) #5
  tail call void @rkisp1_capture_devs_unregister(ptr noundef %1) #5
  tail call void @rkisp1_resizer_devs_unregister(ptr noundef %1) #5
  tail call void @rkisp1_isp_unregister(ptr noundef %1) #5
  %media_dev = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 5
  tail call void @media_device_unregister(ptr noundef %media_dev) #5
  %v4l2_dev = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 4
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  %debug = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug, align 4
  tail call void @debugfs_remove(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rkisp1_entities_register(ptr noundef %rkisp1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rkisp1_isp_register(ptr noundef %rkisp1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rkisp1_resizer_devs_register(ptr noundef %rkisp1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_unreg_isp_subdev_crit_edge

if.end.err_unreg_isp_subdev_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unreg_isp_subdev

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @rkisp1_capture_devs_register(ptr noundef %rkisp1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_unreg_resizer_devs_crit_edge

if.end4.err_unreg_resizer_devs_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unreg_resizer_devs

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @rkisp1_stats_register(ptr noundef %rkisp1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.err_unreg_capture_devs_crit_edge

if.end8.err_unreg_capture_devs_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unreg_capture_devs

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @rkisp1_params_register(ptr noundef %rkisp1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.err_unreg_stats_crit_edge

if.end12.err_unreg_stats_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unreg_stats

if.end16:                                         ; preds = %if.end12
  %call17 = tail call fastcc i32 @rkisp1_subdev_notifier(ptr noundef %rkisp1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %do.end

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %call17) #8
  tail call void @rkisp1_params_unregister(ptr noundef %rkisp1) #5
  br label %err_unreg_stats

err_unreg_stats:                                  ; preds = %do.end, %if.end12.err_unreg_stats_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end12.err_unreg_stats_crit_edge ], [ %call17, %do.end ]
  tail call void @rkisp1_stats_unregister(ptr noundef %rkisp1) #5
  br label %err_unreg_capture_devs

err_unreg_capture_devs:                           ; preds = %err_unreg_stats, %if.end8.err_unreg_capture_devs_crit_edge
  %ret.1 = phi i32 [ %call9, %if.end8.err_unreg_capture_devs_crit_edge ], [ %ret.0, %err_unreg_stats ]
  tail call void @rkisp1_capture_devs_unregister(ptr noundef %rkisp1) #5
  br label %err_unreg_resizer_devs

err_unreg_resizer_devs:                           ; preds = %err_unreg_capture_devs, %if.end4.err_unreg_resizer_devs_crit_edge
  %ret.2 = phi i32 [ %call5, %if.end4.err_unreg_resizer_devs_crit_edge ], [ %ret.1, %err_unreg_capture_devs ]
  tail call void @rkisp1_resizer_devs_unregister(ptr noundef %rkisp1) #5
  br label %err_unreg_isp_subdev

err_unreg_isp_subdev:                             ; preds = %err_unreg_resizer_devs, %if.end.err_unreg_isp_subdev_crit_edge
  %ret.3 = phi i32 [ %call1, %if.end.err_unreg_isp_subdev_crit_edge ], [ %ret.2, %err_unreg_resizer_devs ]
  tail call void @rkisp1_isp_unregister(ptr noundef %rkisp1) #5
  br label %cleanup

cleanup:                                          ; preds = %err_unreg_isp_subdev, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_unreg_isp_subdev ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkisp1_debug_init(ptr noundef %rkisp1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %debug1 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 15
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef null) #5
  %6 = ptrtoint ptr %debug1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %debug1, align 4
  %data_loss = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 15, i32 1
  tail call void @debugfs_create_ulong(ptr noundef nonnull @.str.24, i16 noundef zeroext 292, ptr noundef %call2, ptr noundef %data_loss) #5
  %7 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %debug1, align 4
  %outform_size_error = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 15, i32 2
  tail call void @debugfs_create_ulong(ptr noundef nonnull @.str.25, i16 noundef zeroext 292, ptr noundef %8, ptr noundef %outform_size_error) #5
  %9 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debug1, align 4
  %img_stabilization_size_error = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 15, i32 3
  tail call void @debugfs_create_ulong(ptr noundef nonnull @.str.26, i16 noundef zeroext 292, ptr noundef %10, ptr noundef %img_stabilization_size_error) #5
  %11 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debug1, align 4
  %inform_size_error = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 15, i32 4
  tail call void @debugfs_create_ulong(ptr noundef nonnull @.str.27, i16 noundef zeroext 292, ptr noundef %12, ptr noundef %inform_size_error) #5
  %13 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debug1, align 4
  %irq_delay = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 15, i32 5
  tail call void @debugfs_create_ulong(ptr noundef nonnull @.str.28, i16 noundef zeroext 292, ptr noundef %14, ptr noundef %irq_delay) #5
  %15 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %debug1, align 4
  %mipi_error = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 15, i32 6
  tail call void @debugfs_create_ulong(ptr noundef nonnull @.str.29, i16 noundef zeroext 292, ptr noundef %16, ptr noundef %mipi_error) #5
  %17 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %debug1, align 4
  %stats_error = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 15, i32 7
  tail call void @debugfs_create_ulong(ptr noundef nonnull @.str.30, i16 noundef zeroext 292, ptr noundef %18, ptr noundef %stats_error) #5
  %19 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %debug1, align 4
  %stop_timeout = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 15, i32 8
  tail call void @debugfs_create_ulong(ptr noundef nonnull @.str.31, i16 noundef zeroext 292, ptr noundef %20, ptr noundef %stop_timeout) #5
  %21 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %debug1, align 4
  %arrayidx13 = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 15, i32 8, i32 1
  tail call void @debugfs_create_ulong(ptr noundef nonnull @.str.32, i16 noundef zeroext 292, ptr noundef %22, ptr noundef %arrayidx13) #5
  %23 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %debug1, align 4
  %frame_drop = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 15, i32 9
  tail call void @debugfs_create_ulong(ptr noundef nonnull @.str.33, i16 noundef zeroext 292, ptr noundef %24, ptr noundef %frame_drop) #5
  %25 = ptrtoint ptr %debug1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %debug1, align 4
  %arrayidx18 = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 15, i32 9, i32 1
  tail call void @debugfs_create_ulong(ptr noundef nonnull @.str.34, i16 noundef zeroext 292, ptr noundef %26, ptr noundef %arrayidx18) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rkisp1_isp_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rkisp1_resizer_devs_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rkisp1_capture_devs_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rkisp1_stats_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rkisp1_params_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rkisp1_subdev_notifier(ptr noundef %rkisp1) unnamed_addr #2 align 64 {
entry:
  %vep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %notifier = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 6
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #5
  %0 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %vep, i32 0, i32 1
  %dev = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vep) #5
  %1 = call ptr @memset(ptr %vep, i32 0, i32 64)
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %0, align 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call95 = call ptr @dev_fwnode(ptr noundef %4) #5
  %call196 = call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call95, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  %tobool.not97 = icmp eq ptr %call196, null
  br i1 %tobool.not97, label %while.end.thread, label %if.end.lr.ph

while.end.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep) #5
  br label %do.body27

if.end.lr.ph:                                     ; preds = %entry
  %mipi_csi2 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2
  %num_data_lanes = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2, i32 3
  %id = getelementptr inbounds %struct.fwnode_endpoint, ptr %vep, i32 0, i32 1
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.lr.ph
  %call198 = phi ptr [ %call196, %if.end.lr.ph ], [ %call1, %cleanup.if.end_crit_edge ]
  %call2 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call198, ptr noundef nonnull %vep) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier, ptr noundef nonnull %call198, i32 noundef 52) #5
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call6 to i32
  br label %cleanup.thread

if.end10:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 4
  %mbus_type = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %call6, i32 0, i32 2
  %8 = ptrtoint ptr %mbus_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mbus_type, align 4
  %9 = ptrtoint ptr %mipi_csi2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mipi_csi2, align 4
  %mbus_flags = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %call6, i32 0, i32 3
  %11 = ptrtoint ptr %mbus_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mbus_flags, align 4
  %12 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_data_lanes, align 1
  %conv = zext i8 %13 to i32
  %lanes = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %call6, i32 0, i32 1
  %14 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %lanes, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rkisp1_subdev_notifier.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rkisp1_subdev_notifier, %if.then17)) #5
          to label %cleanup [label %if.then17], !srcloc !119

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %19 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lanes, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rkisp1_subdev_notifier.__UNIQUE_ID_ddebug300, ptr noundef %16, ptr noundef nonnull @.str.15, i32 noundef %18, i32 noundef %20) #5
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then8, %if.end.cleanup.thread_crit_edge
  %ret.0 = phi i32 [ %5, %if.then8 ], [ %call2, %if.end.cleanup.thread_crit_edge ]
  call void @fwnode_handle_put(ptr noundef nonnull %call198) #5
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep) #5
  br label %cleanup49

cleanup:                                          ; preds = %if.then17, %if.end10
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %add = add i32 %22, 1
  call void @fwnode_handle_put(ptr noundef nonnull %call198) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vep) #5
  %23 = call ptr @memset(ptr %vep, i32 0, i32 64)
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %0, align 4
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %call = call ptr @dev_fwnode(ptr noundef %26) #5
  %call1 = call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call, i32 noundef 0, i32 noundef %add, i32 noundef 1) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.end, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

while.end:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %phi.cmp = icmp eq i32 %add, 0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep) #5
  br i1 %phi.cmp, label %while.end.do.body27_crit_edge, label %while.end.if.end44_crit_edge

while.end.if.end44_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

while.end.do.body27_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body27

do.body27:                                        ; preds = %while.end.do.body27_crit_edge, %while.end.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rkisp1_subdev_notifier.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rkisp1_subdev_notifier, %if.then39)) #5
          to label %if.end44 [label %if.then39], !srcloc !119

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rkisp1_subdev_notifier.__UNIQUE_ID_ddebug301, ptr noundef %28, ptr noundef nonnull @.str.16) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %do.body27, %while.end.if.end44_crit_edge
  %29 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @rkisp1_subdev_notifier_ops, ptr %notifier, align 4
  %v4l2_dev = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 4
  %call45 = call i32 @v4l2_async_nf_register(ptr noundef %v4l2_dev, ptr noundef %notifier) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.cleanup49_crit_edge, label %if.then47

if.end44.cleanup49_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #5
  br label %cleanup49

cleanup49:                                        ; preds = %if.then47, %if.end44.cleanup49_crit_edge, %cleanup.thread
  %retval.2 = phi i32 [ %call45, %if.then47 ], [ 0, %if.end44.cleanup49_crit_edge ], [ %ret.0, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkisp1_params_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkisp1_stats_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkisp1_capture_devs_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkisp1_resizer_devs_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkisp1_isp_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_endpoint_by_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_subdev_notifier_bound(ptr nocapture noundef readonly %notifier, ptr noundef %sd, ptr nocapture noundef %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 8
  %0 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_handler, align 4
  %call = tail call ptr @v4l2_ctrl_find(ptr noundef %1, i32 noundef 10422530) #5
  %pixel_rate_ctrl = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %asd, i32 0, i32 5
  %2 = ptrtoint ptr %pixel_rate_ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %pixel_rate_ctrl, align 4
  %sd4 = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %asd, i32 0, i32 4
  %3 = ptrtoint ptr %sd4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sd, ptr %sd4, align 4
  %dev = getelementptr i8, ptr %notifier, i32 -812
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call5 = tail call ptr @devm_phy_get(ptr noundef %5, ptr noundef nonnull @.str.17) #5
  %dphy = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %asd, i32 0, i32 6
  %6 = ptrtoint ptr %dphy to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %dphy, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %call5, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.18) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %dphy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dphy, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 @phy_init(ptr noundef %call5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %11, %if.end ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_subdev_notifier_complete(ptr noundef %notifier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %subdevs.i = getelementptr i8, ptr %notifier, i32 -732
  %0 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn122.i = load ptr, ptr %subdevs.i, align 4
  %cmp.not124.i = icmp eq ptr %.pn122.i, %subdevs.i
  br i1 %cmp.not124.i, label %entry.for.cond27.preheader.i_crit_edge, label %for.body.lr.ph.i

entry.for.cond27.preheader.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond27.preheader.i

for.body.lr.ph.i:                                 ; preds = %entry
  %isp.i = getelementptr i8, ptr %notifier, i32 52
  %resizer_devs.i = getelementptr i8, ptr %notifier, i32 804
  %arrayidx9.i = getelementptr i8, ptr %notifier, i32 1332
  br label %for.body.i

for.cond27.preheader.i:                           ; preds = %for.inc.i.for.cond27.preheader.i_crit_edge, %entry.for.cond27.preheader.i_crit_edge
  %isp31.i = getelementptr i8, ptr %notifier, i32 52
  %arrayidx35.i = getelementptr i8, ptr %notifier, i32 804
  %call38.i = tail call i32 @media_create_pad_link(ptr noundef %isp31.i, i16 noundef zeroext 2, ptr noundef %arrayidx35.i, i16 noundef zeroext 0, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %for.cond27.preheader.i.cleanup_crit_edge

for.cond27.preheader.i.cleanup_crit_edge:         ; preds = %for.cond27.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn126.i = phi ptr [ %.pn122.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %flags.0125.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %flags.1.i, %for.inc.i.for.body.i_crit_edge ]
  %sd.0127.i = getelementptr i8, ptr %.pn126.i, i32 -80
  %cmp4.i = icmp eq ptr %sd.0127.i, %isp.i
  %cmp6.i = icmp eq ptr %sd.0127.i, %resizer_devs.i
  %or.cond.i = or i1 %cmp4.i, %cmp6.i
  %cmp11.i = icmp eq ptr %sd.0127.i, %arrayidx9.i
  %or.cond117.i = or i1 %cmp11.i, %or.cond.i
  br i1 %or.cond117.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %fwnode.i = getelementptr i8, ptr %.pn126.i, i32 88
  %1 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fwnode.i, align 4
  %call.i = tail call i32 @media_entity_get_fwnode_pad(ptr noundef %sd.0127.i, ptr noundef %2, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12.i = icmp slt i32 %call.i, 0
  br i1 %cmp12.i, label %do.end.i, label %if.end14.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr i8, ptr %notifier, i32 -812
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %name.i = getelementptr i8, ptr %.pn126.i, i32 36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.22, ptr noundef %name.i) #8
  br label %cleanup

if.end14.i:                                       ; preds = %if.end.i
  %conv.i = trunc i32 %call.i to i16
  %call19.i = tail call i32 @media_create_pad_link(ptr noundef %sd.0127.i, i16 noundef zeroext %conv.i, ptr noundef %isp.i, i16 noundef zeroext 0, i32 noundef %flags.0125.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool.not.i, label %if.end14.i.for.inc.i_crit_edge, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %flags.1.i = phi i32 [ %flags.0125.i, %for.body.i.for.inc.i_crit_edge ], [ 0, %if.end14.i.for.inc.i_crit_edge ]
  %5 = ptrtoint ptr %.pn126.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn126.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp.not.i, label %for.inc.i.for.cond27.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.cond27.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond27.preheader.i

for.cond27.i:                                     ; preds = %if.end41.i
  %arrayidx35.1.i = getelementptr i8, ptr %notifier, i32 1332
  %call38.1.i = tail call i32 @media_create_pad_link(ptr noundef %isp31.i, i16 noundef zeroext 2, ptr noundef %arrayidx35.1.i, i16 noundef zeroext 0, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.1.i)
  %tobool39.not.1.i = icmp eq i32 %call38.1.i, 0
  br i1 %tobool39.not.1.i, label %if.end41.1.i, label %for.cond27.i.cleanup_crit_edge

for.cond27.i.cleanup_crit_edge:                   ; preds = %for.cond27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41.1.i:                                     ; preds = %for.cond27.i
  %vdev.1.i = getelementptr i8, ptr %notifier, i32 4816
  %call44.1.i = tail call i32 @media_create_pad_link(ptr noundef %arrayidx35.1.i, i16 noundef zeroext 1, ptr noundef %vdev.1.i, i16 noundef zeroext 0, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.1.i)
  %tobool45.not.1.i = icmp eq i32 %call44.1.i, 0
  br i1 %tobool45.not.1.i, label %for.cond27.1.i, label %if.end41.1.i.cleanup_crit_edge

if.end41.1.i.cleanup_crit_edge:                   ; preds = %if.end41.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond27.1.i:                                   ; preds = %if.end41.1.i
  %vdev51.i = getelementptr i8, ptr %notifier, i32 9416
  %call56.i = tail call i32 @media_create_pad_link(ptr noundef %vdev51.i, i16 noundef zeroext 0, ptr noundef %isp31.i, i16 noundef zeroext 1, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %rkisp1_create_links.exit, label %for.cond27.1.i.cleanup_crit_edge

for.cond27.1.i.cleanup_crit_edge:                 ; preds = %for.cond27.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41.i:                                       ; preds = %for.cond27.preheader.i
  %vdev.i = getelementptr i8, ptr %notifier, i32 2472
  %call44.i = tail call i32 @media_create_pad_link(ptr noundef %arrayidx35.i, i16 noundef zeroext 1, ptr noundef %vdev.i, i16 noundef zeroext 0, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %for.cond27.i, label %if.end41.i.cleanup_crit_edge

if.end41.i.cleanup_crit_edge:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rkisp1_create_links.exit:                         ; preds = %for.cond27.1.i
  %vdev64.i = getelementptr i8, ptr %notifier, i32 7160
  %call66.i = tail call i32 @media_create_pad_link(ptr noundef %isp31.i, i16 noundef zeroext 3, ptr noundef %vdev64.i, i16 noundef zeroext 0, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool.not = icmp eq i32 %call66.i, 0
  br i1 %tobool.not, label %if.end, label %rkisp1_create_links.exit.cleanup_crit_edge

rkisp1_create_links.exit.cleanup_crit_edge:       ; preds = %rkisp1_create_links.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %rkisp1_create_links.exit
  %v4l2_dev = getelementptr i8, ptr %notifier, i32 -740
  %call.i19 = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %v4l2_dev, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool2.not = icmp eq i32 %call.i19, 0
  br i1 %tobool2.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rkisp1_subdev_notifier_complete.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rkisp1_subdev_notifier_complete, %if.then10)) #5
          to label %cleanup [label %if.then10], !srcloc !119

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr i8, ptr %notifier, i32 -812
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rkisp1_subdev_notifier_complete.__UNIQUE_ID_ddebug299, ptr noundef %7, ptr noundef nonnull @.str.21) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.body, %if.end.cleanup_crit_edge, %rkisp1_create_links.exit.cleanup_crit_edge, %if.end41.i.cleanup_crit_edge, %for.cond27.1.i.cleanup_crit_edge, %if.end41.1.i.cleanup_crit_edge, %for.cond27.i.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %do.end.i, %for.cond27.preheader.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call66.i, %rkisp1_create_links.exit.cleanup_crit_edge ], [ %call.i19, %if.end.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %do.body ], [ %call44.1.i, %if.end41.1.i.cleanup_crit_edge ], [ %call38.1.i, %for.cond27.i.cleanup_crit_edge ], [ %call44.i, %if.end41.i.cleanup_crit_edge ], [ %call38.i, %for.cond27.preheader.i.cleanup_crit_edge ], [ %call56.i, %for.cond27.1.i.cleanup_crit_edge ], [ %call.i, %do.end.i ], [ %call19.i, %if.end14.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_subdev_notifier_unbind(ptr nocapture noundef readnone %notifier, ptr nocapture noundef readnone %sd, ptr nocapture noundef readonly %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dphy = getelementptr inbounds %struct.rkisp1_sensor_async, ptr %asd, i32 0, i32 6
  %0 = ptrtoint ptr %dphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dphy, align 4
  %call = tail call i32 @phy_exit(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_get_fwnode_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_ulong(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rkisp1_isp_isr(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rkisp1_capture_isr(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rkisp1_mipi_isr(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_isr(i32 noundef %irq, ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rkisp1_capture_isr(i32 noundef %irq, ptr noundef %ctx) #5
  %call1 = tail call i32 @rkisp1_isp_isr(i32 noundef %irq, ptr noundef %ctx) #5
  %call2 = tail call i32 @rkisp1_mipi_isr(i32 noundef %irq, ptr noundef %ctx) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_size = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_size, align 8
  %clks = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 3
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %clks) #5
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %clks) #5
  %call1 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_size = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_size, align 8
  %clks = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %3, ptr noundef %clks) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %3, ptr noundef %clks) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %clks) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_rockchip_isp1__302_611_rkisp1_drv_init6, !1, !"__initcall__kmod_rockchip_isp1__302_611_rkisp1_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 611, i32 1}
!2 = !{ptr @__exitcall_rkisp1_drv_exit, !1, !"__exitcall_rkisp1_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description303, !4, !"__UNIQUE_ID_description303", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 612, i32 1}
!5 = !{ptr @__UNIQUE_ID_file304, !6, !"__UNIQUE_ID_file304", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 613, i32 1}
!7 = !{ptr @__UNIQUE_ID_license305, !6, !"__UNIQUE_ID_license305", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 603, i32 11}
!10 = !{ptr @rkisp1_drv, !11, !"rkisp1_drv", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 601, i32 31}
!12 = !{ptr @rkisp1_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 511, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 527, i32 4}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rkisp1_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @rkisp1_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 545, i32 38}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 559, i32 3}
!27 = !{ptr @rkisp1_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rkisp1_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 375, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rkisp1_entities_register._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @rkisp1_entities_register._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 287, i32 3}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rkisp1_subdev_notifier.__UNIQUE_ID_ddebug300, !35, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 302, i32 3}
!41 = !{ptr @rkisp1_subdev_notifier.__UNIQUE_ID_ddebug301, !40, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!42 = !{ptr @rkisp1_subdev_notifier_ops, !43, !"rkisp1_subdev_notifier_ops", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 244, i32 52}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 203, i32 42}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 206, i32 4}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rkisp1_subdev_notifier_bound._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @rkisp1_subdev_notifier_bound._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 239, i32 2}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rkisp1_subdev_notifier_complete.__UNIQUE_ID_ddebug299, !52, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 140, i32 4}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rkisp1_create_links._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @rkisp1_create_links._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 466, i32 23}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 468, i32 23}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 470, i32 23}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 473, i32 23}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 475, i32 23}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 477, i32 23}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 479, i32 23}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 481, i32 23}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 483, i32 23}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 485, i32 23}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 487, i32 23}
!82 = !{ptr @rkisp1_of_match, !83, !"rkisp1_of_match", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 448, i32 34}
!84 = !{ptr @px30_isp_match_data, !85, !"px30_isp_match_data", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 422, i32 39}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 410, i32 2}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 411, i32 2}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 412, i32 2}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 413, i32 2}
!94 = !{ptr @px30_isp_clks, !95, !"px30_isp_clks", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 409, i32 27}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 418, i32 4}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 419, i32 4}
!100 = !{ptr @px30_isp_isrs, !101, !"px30_isp_isrs", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 416, i32 37}
!102 = !{ptr @rk3399_isp_match_data, !103, !"rk3399_isp_match_data", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 440, i32 39}
!104 = !{ptr @rk3399_isp_clks, !105, !"rk3399_isp_clks", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 430, i32 27}
!106 = !{ptr @rk3399_isp_isrs, !107, !"rk3399_isp_isrs", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 436, i32 37}
!108 = !{ptr @rkisp1_pm_ops, !109, !"rkisp1_pm_ops", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c", i32 339, i32 32}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i64 2148737540, i64 2148737545, i64 2148737558, i64 2148737602, i64 2148737636, i64 2148737657}
