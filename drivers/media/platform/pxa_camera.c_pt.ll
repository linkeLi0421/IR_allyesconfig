; ModuleID = '/llk/IR_all_yes/drivers/media/platform/pxa_camera.c_pt.bc'
source_filename = "../drivers/media/platform/pxa_camera.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pxa_mbus_pixelfmt = type { ptr, i32, i32, i32, i32, i8 }
%struct.pxa_mbus_lookup = type { i32, %struct.pxa_mbus_pixelfmt }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.121, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.121 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pxa_camera_dev = type { %struct.v4l2_device, %struct.video_device, %struct.v4l2_async_notifier, %struct.vb2_queue, ptr, ptr, ptr, %struct.v4l2_pix_format, ptr, i32, ptr, i32, [3 x ptr], ptr, ptr, i32, i32, i32, i32, i16, %struct.list_head, %struct.spinlock, %struct.mutex, i32, ptr, %struct.tasklet_struct, [5 x i32] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.97, i32, i32 }
%union.anon.97 = type { i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.120, i32 }
%union.anon.120 = type { ptr }
%struct.pxacamera_platform_data = type { i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.pxa_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, i32, [3 x ptr], [3 x i32], [3 x ptr], [3 x i32], [3 x i32], i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.117, i16, i16, i16, [10 x i16] }
%union.anon.117 = type { i16 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pxa_camera_format_xlate = type { i32, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_state = type { ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.89 }
%union.anon.89 = type { i32, [28 x i8] }

@__initcall__kmod_pxa_camera__326_2464_pxa_camera_driver_init6 = internal global ptr @pxa_camera_driver_init, section ".initcall6.init", align 4
@pxa_camera_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pxa_camera_probe, ptr @pxa_camera_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pxa_camera_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxa_camera_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pxa_camera_driver_exit = internal global ptr @pxa_camera_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description327 = internal constant [44 x i8] c"pxa_camera.description=PXA27x Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author328 = internal constant [64 x i8] c"pxa_camera.author=Guennadi Liakhovetski <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file329 = internal constant [50 x i8] c"pxa_camera.file=drivers/media/platform/pxa_camera\00", section ".modinfo", align 1
@__UNIQUE_ID_license330 = internal constant [23 x i8] c"pxa_camera.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version331 = internal constant [25 x i8] c"pxa_camera.version=0.0.6\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxa_camera\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.6\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias332 = internal constant [40 x i8] c"pxa_camera.alias=platform:pxa27x-camera\00", section ".modinfo", align 1
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxa27x-camera\00", [18 x i8] zeroinitializer }, align 32
@pxa_camera_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa270-qci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pxa_camera_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pxa_camera_suspend, ptr @pxa_camera_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pxa_camera_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2283, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not allocate pcdev\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pxa_camera_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/platform/pxa_camera.c\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxa_camera_probe._entry_ptr = internal global ptr @pxa_camera_probe._entry, section ".printk_index", align 4
@pxa_camera_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 2319, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"WARNING! Platform hasn't set available data widths, using default 10 bit\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pxa_camera_probe._entry_ptr.12 = internal global ptr @pxa_camera_probe._entry.9, section ".printk_index", align 4
@pxa_camera_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 2330, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"mclk == 0! Please, fix your platform data. Using default 20MHz\0A\00", [32 x i8] zeroinitializer }, align 32
@pxa_camera_probe._entry_ptr.15 = internal global ptr @pxa_camera_probe._entry.13, section ".printk_index", align 4
@pxa_camera_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&pcdev->lock\00", [19 x i8] zeroinitializer }, align 32
@pxa_camera_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pcdev->mlock\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CI_Y\00", [27 x i8] zeroinitializer }, align 32
@pxa_camera_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 2353, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't request DMA for Y\0A\00", [39 x i8] zeroinitializer }, align 32
@pxa_camera_probe._entry_ptr.22 = internal global ptr @pxa_camera_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CI_U\00", [27 x i8] zeroinitializer }, align 32
@pxa_camera_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.6, i32 2359, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't request DMA for U\0A\00", [39 x i8] zeroinitializer }, align 32
@pxa_camera_probe._entry_ptr.26 = internal global ptr @pxa_camera_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CI_V\00", [27 x i8] zeroinitializer }, align 32
@pxa_camera_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.5, ptr @.str.6, i32 2366, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't request DMA for V\0A\00", [39 x i8] zeroinitializer }, align 32
@pxa_camera_probe._entry_ptr.30 = internal global ptr @pxa_camera_probe._entry.28, section ".printk_index", align 4
@pxa_camera_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.5, ptr @.str.6, i32 2376, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dma slave config failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pxa_camera_probe._entry_ptr.33 = internal global ptr @pxa_camera_probe._entry.31, section ".printk_index", align 4
@pxa_camera_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.5, ptr @.str.6, i32 2385, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Camera interrupt register failed\0A\00", [62 x i8] zeroinitializer }, align 32
@pxa_camera_probe._entry_ptr.36 = internal global ptr @pxa_camera_probe._entry.34, section ".printk_index", align 4
@pxa_camera_sensor_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @pxa_camera_sensor_bound, ptr null, ptr @pxa_camera_sensor_unbind }, [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@pxa_camera_pdata_from_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.6, i32 2211, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not find endpoint\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pxa_camera_pdata_from_dt\00", [39 x i8] zeroinitializer }, align 32
@pxa_camera_pdata_from_dt._entry_ptr = internal global ptr @pxa_camera_pdata_from_dt._entry, section ".printk_index", align 4
@pxa_camera_pdata_from_dt._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.6, i32 2217, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not parse endpoint\0A\00", [38 x i8] zeroinitializer }, align 32
@pxa_camera_pdata_from_dt._entry_ptr.42 = internal global ptr @pxa_camera_pdata_from_dt._entry.40, section ".printk_index", align 4
@mclk_get_divisor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.6, i32 1089, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Limiting master clock to %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mclk_get_divisor\00", [47 x i8] zeroinitializer }, align 32
@mclk_get_divisor._entry_ptr = internal global ptr @mclk_get_divisor._entry, section ".printk_index", align 4
@mclk_get_divisor.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.6, ptr @.str.45, i8 1, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"LCD clock %luHz, target freq %luHz, divisor %u\0A\00", [48 x i8] zeroinitializer }, align 32
@pxa_camera_irq.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.6, ptr @.str.47, i8 1, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pxa_camera_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Camera interrupt status 0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@pxa_camera_eof.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.48, ptr @.str.6, ptr @.str.49, i8 1, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pxa_camera_eof\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Camera interrupt status 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@pxa_dma_start_channels.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.6, ptr @.str.51, i8 0, i8 -37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pxa_dma_start_channels\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s (channel=%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@pxac_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @pxac_vb2_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @pxac_vb2_init, ptr @pxac_vb2_prepare, ptr null, ptr @pxac_vb2_cleanup, ptr @pxac_vb2_start_streaming, ptr @pxac_vb2_stop_streaming, ptr @pxac_vb2_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@pxa_camera_init_videobuf2.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.6, ptr @.str.53, i8 1, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pxa_camera_init_videobuf2\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vb2_queue_init(vq=%p): %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pxac_vb2_queue_setup.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.6, ptr @.str.55, i8 1, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pxac_vb2_queue_setup\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(vq=%p nbufs=%d num_planes=%d size=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@pxac_vb2_init.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.6, ptr @.str.57, i8 1, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxac_vb2_init\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(nb_channels=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@pxa_buffer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.6, i32 1333, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sg_split failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pxa_buffer_init\00", [16 x i8] zeroinitializer }, align 32
@pxa_buffer_init._entry_ptr = internal global ptr @pxa_buffer_init._entry, section ".printk_index", align 4
@pxa_init_dma_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.6, i32 830, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dmaengine_prep_slave_sg failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pxa_init_dma_channel\00", [43 x i8] zeroinitializer }, align 32
@pxa_init_dma_channel._entry_ptr = internal global ptr @pxa_init_dma_channel._entry, section ".printk_index", align 4
@pxa_init_dma_channel.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str.6, ptr @.str.62, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s (vb=%p) dma_tx=%p\0A\00", [42 x i8] zeroinitializer }, align 32
@pxa_camera_dma_irq.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.63, ptr @.str.6, ptr @.str.64, i8 0, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pxa_camera_dma_irq\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"camera dma irq, cisr=0x%x dma=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@pxa_camera_dma_irq.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.63, ptr @.str.6, ptr @.str.65, i8 1, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FIFO overrun! CISR: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@pxa_camera_stop_capture.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.6, ptr @.str.67, i8 0, i8 -22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pxa_camera_stop_capture\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@pxa_dma_stop_channels.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.6, ptr @.str.51, i8 0, i8 -34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pxa_dma_stop_channels\00", [42 x i8] zeroinitializer }, align 32
@pxa_dma_add_tail_buf.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.69, ptr @.str.6, ptr @.str.70, i8 0, i8 -31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pxa_dma_add_tail_buf\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s (channel=%d) : submit vb=%p cookie=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@pxa_camera_start_capture.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.6, ptr @.str.67, i8 0, i8 -27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pxa_camera_start_capture\00", [39 x i8] zeroinitializer }, align 32
@pxa_camera_wakeup.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.72, ptr @.str.6, ptr @.str.73, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pxa_camera_wakeup\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s dequeued buffer (buf=0x%p)\0A\00", [33 x i8] zeroinitializer }, align 32
@pxa_camera_check_link_miss.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.6, ptr @.str.75, i8 0, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pxa_camera_check_link_miss\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s : top queued buffer=%p, is_dma_stopped=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@pxac_vb2_prepare.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.76, ptr @.str.6, ptr @.str.77, i8 1, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pxac_vb2_prepare\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s (vb=%p) nb_channels=%d size=%lu\0A\00", [60 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@pxac_vb2_cleanup.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.79, ptr @.str.6, ptr @.str.80, i8 1, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pxac_vb2_cleanup\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s(vb=%p)\0A\00", [21 x i8] zeroinitializer }, align 32
@pxac_vb2_start_streaming.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.6, ptr @.str.82, i8 1, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pxac_vb2_start_streaming\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(count=%d) active=%p\0A\00", [40 x i8] zeroinitializer }, align 32
@pxac_vb2_stop_streaming.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.83, ptr @.str.6, ptr @.str.84, i8 1, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pxac_vb2_stop_streaming\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s active=%p\0A\00", [18 x i8] zeroinitializer }, align 32
@pxac_vb2_queue.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.6, ptr @.str.86, i8 1, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pxac_vb2_queue\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(vb=%p) nb_channels=%d size=%lu active=%p\0A\00", [51 x i8] zeroinitializer }, align 32
@pxa_camera_sensor_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.6, i32 2059, ptr @.str.89, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): trying to bind a device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pxa_camera_sensor_bound\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pxa_camera_sensor_bound._entry_ptr = internal global ptr @pxa_camera_sensor_bound._entry, section ".printk_index", align 4
@pxa_camera_videodev_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @pxa_camera_fops, i32 67108865, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"pxa-camera\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @pxa_camera_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@pxa_camera_sensor_bound._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.88, ptr @.str.6, i32 2073, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"building formats failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pxa_camera_sensor_bound._entry_ptr.92 = internal global ptr @pxa_camera_sensor_bound._entry.90, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@pxa_camera_sensor_bound._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.88, ptr @.str.6, i32 2100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s(): colorspace=0x%x pixfmt=0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@pxa_camera_sensor_bound._entry_ptr.95 = internal global ptr @pxa_camera_sensor_bound._entry.93, section ".printk_index", align 4
@pxa_camera_sensor_bound._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.88, ptr @.str.6, i32 2108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: register video device failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@pxa_camera_sensor_bound._entry_ptr.98 = internal global ptr @pxa_camera_sensor_bound._entry.96, section ".printk_index", align 4
@pxa_camera_sensor_bound._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.88, ptr @.str.6, i32 2113, ptr @.str.89, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PXA Camera driver attached to camera %s\0A\00", [55 x i8] zeroinitializer }, align 32
@pxa_camera_sensor_bound._entry_ptr.101 = internal global ptr @pxa_camera_sensor_bound._entry.99, section ".printk_index", align 4
@pxa_camera_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @pxac_fops_camera_open, ptr @pxac_fops_camera_release }, [60 x i8] zeroinitializer }, align 32
@pxa_camera_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @pxac_vidioc_querycap, ptr @pxac_vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxac_vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxac_vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxac_vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @pxac_vidioc_enum_input, ptr @pxac_vidioc_g_input, ptr @pxac_vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxac_vidioc_g_register, ptr @pxac_vidioc_s_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"platform:pxa-camera\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PXA_Camera\00", [21 x i8] zeroinitializer }, align 32
@pxac_vidioc_g_fmt_vid_cap.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.104, ptr @.str.6, ptr @.str.105, i8 1, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pxac_vidioc_g_fmt_vid_cap\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"current_fmt->fourcc: 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@pxac_vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.6, ptr @.str.107, i8 1, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pxac_vidioc_s_fmt_vid_cap\00", [38 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s_fmt_vid_cap(pix=%dx%d:%x)\0A\00", [35 x i8] zeroinitializer }, align 32
@pxac_vidioc_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.6, i32 1889, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to configure for format %x\0A\00", [61 x i8] zeroinitializer }, align 32
@pxac_vidioc_s_fmt_vid_cap._entry_ptr = internal global ptr @pxac_vidioc_s_fmt_vid_cap._entry, section ".printk_index", align 4
@pxac_vidioc_s_fmt_vid_cap._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.106, ptr @.str.6, i32 1893, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Camera driver produced an unsupported frame %dx%d\0A\00", [45 x i8] zeroinitializer }, align 32
@pxac_vidioc_s_fmt_vid_cap._entry_ptr.111 = internal global ptr @pxac_vidioc_s_fmt_vid_cap._entry.109, section ".printk_index", align 4
@pxa_camera_set_bus_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.6, i32 1547, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported bus width %u\00", [39 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pxa_camera_set_bus_param\00", [39 x i8] zeroinitializer }, align 32
@pxa_camera_set_bus_param._entry_ptr = internal global ptr @pxa_camera_set_bus_param._entry, section ".printk_index", align 4
@pxa_camera_set_bus_param._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.6, i32 1580, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to call set_mbus_config: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@pxa_camera_set_bus_param._entry_ptr.116 = internal global ptr @pxa_camera_set_bus_param._entry.114, section ".printk_index", align 4
@pxa_camera_set_bus_param._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.6, i32 1597, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unsupported mbus configuration: bus mastering\0A\00", [49 x i8] zeroinitializer }, align 32
@pxa_camera_set_bus_param._entry_ptr.119 = internal global ptr @pxa_camera_set_bus_param._entry.117, section ".printk_index", align 4
@pxa_camera_set_bus_param._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.113, ptr @.str.6, i32 1603, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unsupported mbus configuration: DATA_ACTIVE_LOW\0A\00", [47 x i8] zeroinitializer }, align 32
@pxa_camera_set_bus_param._entry_ptr.122 = internal global ptr @pxa_camera_set_bus_param._entry.120, section ".printk_index", align 4
@pxac_vidioc_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.6, i32 1807, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Format %x not found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pxac_vidioc_try_fmt_vid_cap\00", [36 x i8] zeroinitializer }, align 32
@pxac_vidioc_try_fmt_vid_cap._entry_ptr = internal global ptr @pxac_vidioc_try_fmt_vid_cap._entry, section ".printk_index", align 4
@pxac_vidioc_try_fmt_vid_cap._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.6, i32 1837, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Field type %d unsupported.\0A\00", [36 x i8] zeroinitializer }, align 32
@pxac_vidioc_try_fmt_vid_cap._entry_ptr.127 = internal global ptr @pxac_vidioc_try_fmt_vid_cap._entry.125, section ".printk_index", align 4
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Camera\00", [25 x i8] zeroinitializer }, align 32
@pxa_camera_get_formats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.6, i32 1654, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid format code #%u: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pxa_camera_get_formats\00", [41 x i8] zeroinitializer }, align 32
@pxa_camera_get_formats._entry_ptr = internal global ptr @pxa_camera_get_formats._entry, section ".printk_index", align 4
@pxa_camera_formats = internal constant { [1 x %struct.pxa_mbus_pixelfmt], [40 x i8] } { [1 x %struct.pxa_mbus_pixelfmt] [%struct.pxa_mbus_pixelfmt { ptr @.str.162, i32 1345466932, i32 1, i32 0, i32 1, i8 8 }], [40 x i8] zeroinitializer }, align 32
@pxa_camera_get_formats.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.130, ptr @.str.6, ptr @.str.131, i8 1, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Providing format %s using code %d\0A\00", [61 x i8] zeroinitializer }, align 32
@pxa_camera_get_formats.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.130, ptr @.str.6, ptr @.str.132, i8 1, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Providing format %s packed\0A\00", [36 x i8] zeroinitializer }, align 32
@pxa_camera_get_formats.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.130, ptr @.str.6, ptr @.str.133, i8 1, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Providing format %s in pass-through mode\0A\00", [54 x i8] zeroinitializer }, align 32
@mbus_fmt = internal constant { [30 x %struct.pxa_mbus_lookup], [216 x i8] } { [30 x %struct.pxa_mbus_lookup] [%struct.pxa_mbus_lookup { i32 8200, %struct.pxa_mbus_pixelfmt { ptr @.str.134, i32 1448695129, i32 1, i32 0, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 8201, %struct.pxa_mbus_pixelfmt { ptr @.str.135, i32 1431918169, i32 1, i32 0, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 8198, %struct.pxa_mbus_pixelfmt { ptr @.str.136, i32 1498831189, i32 1, i32 0, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 8199, %struct.pxa_mbus_pixelfmt { ptr @.str.137, i32 1498765654, i32 1, i32 0, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 4100, %struct.pxa_mbus_pixelfmt { ptr @.str.138, i32 1329743698, i32 1, i32 0, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 4099, %struct.pxa_mbus_pixelfmt { ptr @.str.139, i32 1363298130, i32 1, i32 1, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 4104, %struct.pxa_mbus_pixelfmt { ptr @.str.140, i32 1346520914, i32 1, i32 0, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 4103, %struct.pxa_mbus_pixelfmt { ptr @.str.141, i32 1380075346, i32 1, i32 1, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 12289, %struct.pxa_mbus_pixelfmt { ptr @.str.142, i32 825770306, i32 0, i32 0, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 12307, %struct.pxa_mbus_pixelfmt { ptr @.str.143, i32 1196573255, i32 0, i32 0, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 12290, %struct.pxa_mbus_pixelfmt { ptr @.str.144, i32 1195528775, i32 0, i32 0, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 12308, %struct.pxa_mbus_pixelfmt { ptr @.str.145, i32 1111967570, i32 0, i32 0, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 12295, %struct.pxa_mbus_pixelfmt { ptr @.str.146, i32 808535874, i32 2, i32 0, i32 0, i8 10 } }, %struct.pxa_mbus_lookup { i32 8193, %struct.pxa_mbus_pixelfmt { ptr @.str.147, i32 1497715271, i32 0, i32 0, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 8202, %struct.pxa_mbus_pixelfmt { ptr @.str.148, i32 540029273, i32 2, i32 0, i32 0, i8 10 } }, %struct.pxa_mbus_lookup { i32 12292, %struct.pxa_mbus_pixelfmt { ptr @.str.146, i32 808535874, i32 1, i32 0, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 12291, %struct.pxa_mbus_pixelfmt { ptr @.str.146, i32 808535874, i32 1, i32 1, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 4097, %struct.pxa_mbus_pixelfmt { ptr @.str.149, i32 875836498, i32 1, i32 1, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 8207, %struct.pxa_mbus_pixelfmt { ptr @.str.150, i32 1498831189, i32 2, i32 0, i32 0, i8 16 } }, %struct.pxa_mbus_lookup { i32 8208, %struct.pxa_mbus_pixelfmt { ptr @.str.151, i32 1498765654, i32 2, i32 0, i32 0, i8 16 } }, %struct.pxa_mbus_lookup { i32 8209, %struct.pxa_mbus_pixelfmt { ptr @.str.152, i32 1448695129, i32 2, i32 0, i32 0, i8 16 } }, %struct.pxa_mbus_lookup { i32 8210, %struct.pxa_mbus_pixelfmt { ptr @.str.153, i32 1431918169, i32 2, i32 0, i32 0, i8 16 } }, %struct.pxa_mbus_lookup { i32 12297, %struct.pxa_mbus_pixelfmt { ptr @.str.154, i32 808535106, i32 0, i32 0, i32 0, i8 8 } }, %struct.pxa_mbus_lookup { i32 12302, %struct.pxa_mbus_pixelfmt { ptr @.str.155, i32 808534599, i32 2, i32 0, i32 0, i8 10 } }, %struct.pxa_mbus_lookup { i32 12298, %struct.pxa_mbus_pixelfmt { ptr @.str.156, i32 808534338, i32 2, i32 0, i32 0, i8 10 } }, %struct.pxa_mbus_lookup { i32 12303, %struct.pxa_mbus_pixelfmt { ptr @.str.157, i32 808535890, i32 2, i32 0, i32 0, i8 10 } }, %struct.pxa_mbus_lookup { i32 12296, %struct.pxa_mbus_pixelfmt { ptr @.str.158, i32 842090306, i32 2, i32 0, i32 0, i8 12 } }, %struct.pxa_mbus_lookup { i32 12304, %struct.pxa_mbus_pixelfmt { ptr @.str.159, i32 842089031, i32 2, i32 0, i32 0, i8 12 } }, %struct.pxa_mbus_lookup { i32 12305, %struct.pxa_mbus_pixelfmt { ptr @.str.160, i32 842088770, i32 2, i32 0, i32 0, i8 12 } }, %struct.pxa_mbus_lookup { i32 12306, %struct.pxa_mbus_pixelfmt { ptr @.str.161, i32 842090322, i32 2, i32 0, i32 0, i8 12 } }], [216 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"YUYV\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"YVYU\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UYVY\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VYUY\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RGB555\00", [25 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RGB555X\00", [24 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RGB565\00", [25 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RGB565X\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bayer 8 BGGR\00", [19 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bayer 8 GBRG\00", [19 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bayer 8 GRBG\00", [19 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bayer 8 RGGB\00", [19 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bayer 10 BGGR\00", [18 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Grey\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Grey 10bit\00", [21 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RGB444\00", [25 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UYVY 16bit\00", [21 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VYUY 16bit\00", [21 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"YUYV 16bit\00", [21 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"YVYU 16bit\00", [21 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bayer 10 BGGR DPCM 8\00", [43 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bayer 10 GBRG\00", [18 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bayer 10 GRBG\00", [18 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bayer 10 RGGB\00", [18 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bayer 12 BGGR\00", [18 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bayer 12 GBRG\00", [18 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bayer 12 GRBG\00", [18 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bayer 12 RGGB\00", [18 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Planar YUV422 16 bit\00", [43 x i8] zeroinitializer }, align 32
@pxac_sensor_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.6, i32 1950, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to put subdevice in %s mode: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pxac_sensor_set_power\00", [42 x i8] zeroinitializer }, align 32
@pxac_sensor_set_power._entry_ptr = internal global ptr @pxac_sensor_set_power._entry, section ".printk_index", align 4
@.str.165 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"normal operation\00", [47 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power saving\00", [19 x i8] zeroinitializer }, align 32
@pxa_camera_sensor_unbind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.6, i32 2132, ptr @.str.89, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"PXA Camera driver detached from camera %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pxa_camera_sensor_unbind\00", [39 x i8] zeroinitializer }, align 32
@pxa_camera_sensor_unbind._entry_ptr = internal global ptr @pxa_camera_sensor_unbind._entry, section ".printk_index", align 4
@pxa_camera_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.6, i32 2438, ptr @.str.89, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PXA Camera driver unloaded\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pxa_camera_remove\00", [46 x i8] zeroinitializer }, align 32
@pxa_camera_remove._entry_ptr = internal global ptr @pxa_camera_remove._entry, section ".printk_index", align 4
@switch.table.pxa_camera_probe = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 4, i32 2, i32 2, i32 8, i32 16, i32 32], [36 x i8] zeroinitializer }, align 32
@switch.table.pxa_buffer_init = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @pxa_camera_dma_irq_y, ptr @pxa_camera_dma_irq_u, ptr @pxa_camera_dma_irq_v], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.173 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.179 = internal global [9 x i64] [i64 7, i64 32, i64 1329743698, i64 1345466932, i64 1346520914, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.180 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.181 = internal global [8 x i64] [i64 6, i64 32, i64 4100, i64 4104, i64 8198, i64 8199, i64 8200, i64 8201]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@___asan_gen_.184 = private unnamed_addr constant [18 x i8] c"pxa_camera_driver\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2454, i32 31 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2469, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2456, i32 11 }
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c"pxa_camera_of_match\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2448, i32 34 }
@___asan_gen_.202 = private unnamed_addr constant [14 x i8] c"pxa_camera_pm\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2443, i32 32 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2283, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2319, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2329, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2337, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2338, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2351, i32 53 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2353, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2357, i32 53 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2359, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2364, i32 53 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2366, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2375, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2385, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant [22 x i8] c"pxa_camera_sensor_ops\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2148, i32 52 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2202, i32 37 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2211, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2217, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1088, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1099, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1177, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1155, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 877, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant [13 x i8] c"pxac_vb2_ops\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1498, i32 29 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1528, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1444, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1429, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1332, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 829, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 850, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1010, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1056, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 937, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 888, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 901, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 919, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 953, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 989, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1398, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1163, i32 7 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1354, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1475, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1490, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1364, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2058, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [29 x i8] c"pxa_camera_videodev_template\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2035, i32 34 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2072, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2099, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2108, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2111, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant [16 x i8] c"pxa_camera_fops\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1997, i32 42 }
@___asan_gen_.496 = private unnamed_addr constant [21 x i8] c"pxa_camera_ioctl_ops\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2007, i32 36 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1907, i32 25 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 695, i32 49 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1783, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1867, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1887, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1891, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1546, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1579, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1596, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1602, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1807, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1836, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1920, i32 19 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1653, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant [19 x i8] c"pxa_camera_formats\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1613, i32 39 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1665, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1676, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1684, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant [9 x i8] c"mbus_fmt\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 254, i32 37 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 259, i32 13 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 269, i32 13 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 279, i32 13 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 289, i32 13 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 299, i32 13 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 309, i32 13 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 319, i32 13 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 329, i32 13 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 339, i32 13 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 349, i32 13 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 359, i32 13 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 369, i32 13 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 379, i32 13 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 389, i32 13 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 399, i32 13 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 429, i32 13 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 439, i32 13 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 449, i32 13 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 459, i32 13 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 469, i32 13 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 479, i32 13 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 489, i32 13 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 499, i32 13 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 509, i32 13 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 519, i32 13 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 529, i32 13 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 539, i32 13 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 549, i32 13 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1616, i32 13 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1948, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2130, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.715 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.716 = private constant [39 x i8] c"../drivers/media/platform/pxa_camera.c\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2438, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant [30 x i8] c"switch.table.pxa_camera_probe\00", align 1
@___asan_gen_.719 = private unnamed_addr constant [29 x i8] c"switch.table.pxa_buffer_init\00", align 1
@llvm.compiler.used = appending global [220 x ptr] [ptr @__UNIQUE_ID_alias332, ptr @__UNIQUE_ID_author328, ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_file329, ptr @__UNIQUE_ID_license330, ptr @__UNIQUE_ID_version331, ptr @__exitcall_pxa_camera_driver_exit, ptr @__initcall__kmod_pxa_camera__326_2464_pxa_camera_driver_init6, ptr @__modver_attr, ptr @mclk_get_divisor._entry, ptr @mclk_get_divisor._entry_ptr, ptr @pxa_buffer_init._entry, ptr @pxa_buffer_init._entry_ptr, ptr @pxa_camera_driver_exit, ptr @pxa_camera_get_formats._entry, ptr @pxa_camera_get_formats._entry_ptr, ptr @pxa_camera_pdata_from_dt._entry, ptr @pxa_camera_pdata_from_dt._entry.40, ptr @pxa_camera_pdata_from_dt._entry_ptr, ptr @pxa_camera_pdata_from_dt._entry_ptr.42, ptr @pxa_camera_probe._entry, ptr @pxa_camera_probe._entry.13, ptr @pxa_camera_probe._entry.20, ptr @pxa_camera_probe._entry.24, ptr @pxa_camera_probe._entry.28, ptr @pxa_camera_probe._entry.31, ptr @pxa_camera_probe._entry.34, ptr @pxa_camera_probe._entry.9, ptr @pxa_camera_probe._entry_ptr, ptr @pxa_camera_probe._entry_ptr.12, ptr @pxa_camera_probe._entry_ptr.15, ptr @pxa_camera_probe._entry_ptr.22, ptr @pxa_camera_probe._entry_ptr.26, ptr @pxa_camera_probe._entry_ptr.30, ptr @pxa_camera_probe._entry_ptr.33, ptr @pxa_camera_probe._entry_ptr.36, ptr @pxa_camera_remove._entry, ptr @pxa_camera_remove._entry_ptr, ptr @pxa_camera_sensor_bound._entry, ptr @pxa_camera_sensor_bound._entry.90, ptr @pxa_camera_sensor_bound._entry.93, ptr @pxa_camera_sensor_bound._entry.96, ptr @pxa_camera_sensor_bound._entry.99, ptr @pxa_camera_sensor_bound._entry_ptr, ptr @pxa_camera_sensor_bound._entry_ptr.101, ptr @pxa_camera_sensor_bound._entry_ptr.92, ptr @pxa_camera_sensor_bound._entry_ptr.95, ptr @pxa_camera_sensor_bound._entry_ptr.98, ptr @pxa_camera_sensor_unbind._entry, ptr @pxa_camera_sensor_unbind._entry_ptr, ptr @pxa_camera_set_bus_param._entry, ptr @pxa_camera_set_bus_param._entry.114, ptr @pxa_camera_set_bus_param._entry.117, ptr @pxa_camera_set_bus_param._entry.120, ptr @pxa_camera_set_bus_param._entry_ptr, ptr @pxa_camera_set_bus_param._entry_ptr.116, ptr @pxa_camera_set_bus_param._entry_ptr.119, ptr @pxa_camera_set_bus_param._entry_ptr.122, ptr @pxa_init_dma_channel._entry, ptr @pxa_init_dma_channel._entry_ptr, ptr @pxac_sensor_set_power._entry, ptr @pxac_sensor_set_power._entry_ptr, ptr @pxac_vidioc_s_fmt_vid_cap._entry, ptr @pxac_vidioc_s_fmt_vid_cap._entry.109, ptr @pxac_vidioc_s_fmt_vid_cap._entry_ptr, ptr @pxac_vidioc_s_fmt_vid_cap._entry_ptr.111, ptr @pxac_vidioc_try_fmt_vid_cap._entry, ptr @pxac_vidioc_try_fmt_vid_cap._entry.125, ptr @pxac_vidioc_try_fmt_vid_cap._entry_ptr, ptr @pxac_vidioc_try_fmt_vid_cap._entry_ptr.127, ptr @pxa_camera_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pxa_camera_of_match, ptr @pxa_camera_pm, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @pxa_camera_probe.__key, ptr @.str.16, ptr @pxa_camera_probe.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @pxa_camera_sensor_ops, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @pxac_vb2_ops, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @pxa_camera_videodev_template, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @pxa_camera_fops, ptr @pxa_camera_ioctl_ops, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @pxa_camera_formats, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @mbus_fmt, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @switch.table.pxa_camera_probe, ptr @switch.table.pxa_buffer_init], section "llvm.metadata"
@0 = internal global [180 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_sensor_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_pdata_from_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_pdata_from_dt._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mclk_get_divisor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxac_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_buffer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_init_dma_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_sensor_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_videodev_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_sensor_bound._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_sensor_bound._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_sensor_bound._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_sensor_bound._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxac_vidioc_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxac_vidioc_s_fmt_vid_cap._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_set_bus_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_set_bus_param._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_set_bus_param._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_set_bus_param._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxac_vidioc_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxac_vidioc_try_fmt_vid_cap._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_get_formats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_formats to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbus_fmt to i32), i32 840, i32 1056, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxac_sensor_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_sensor_unbind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_camera_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pxa_camera_probe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pxa_buffer_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_camera_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pxa_camera_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pxa_camera_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @pxa_camera_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_camera_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mclk_rate.i = alloca i32, align 4
  %ep.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  %config = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config) #9
  %0 = getelementptr inbounds i8, ptr %config, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 44)
  %2 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %config, align 4
  %3 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], ptr, i32 }, ptr %config, i32 0, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %3, align 4
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2352, i32 noundef 3520) #9
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %notifier = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 2
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #9
  %res15 = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 14
  %7 = ptrtoint ptr %res15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %res15, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data, align 8
  %pdata = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 13
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pdata, align 8
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end14
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %9, align 4
  %platform_flags = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 15
  %13 = ptrtoint ptr %platform_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %platform_flags, align 8
  %mclk_10khz = getelementptr inbounds %struct.pxacamera_platform_data, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %mclk_10khz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mclk_10khz, align 4
  %mul = mul i32 %15, 10000
  %mclk = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 17
  %16 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %mclk, align 8
  %sensor_i2c_adapter_id = getelementptr inbounds %struct.pxacamera_platform_data, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %sensor_i2c_adapter_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sensor_i2c_adapter_id, align 4
  %sensor_i2c_address = getelementptr inbounds %struct.pxacamera_platform_data, ptr %9, i32 0, i32 3
  %19 = ptrtoint ptr %sensor_i2c_address to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sensor_i2c_address, align 4
  %conv = trunc i32 %20 to i16
  %call25 = tail call ptr @__v4l2_async_nf_add_i2c(ptr noundef %notifier, i32 noundef %18, i16 noundef zeroext %conv, i32 noundef 28) #9
  %cmp.i301 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i301, label %if.then27, label %if.then19.if.end41_crit_edge

if.then19.if.end41_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then27:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %call25 to i32
  br label %if.end37

if.else:                                          ; preds = %if.end14
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %tobool31.not = icmp eq ptr %23, null
  br i1 %tobool31.not, label %if.else.cleanup_crit_edge, label %if.then32

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mclk_rate.i) #9
  %24 = ptrtoint ptr %mclk_rate.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %mclk_rate.i, align 4, !annotation !367
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ep.i) #9
  %27 = call ptr @memset(ptr %ep.i, i32 0, i32 64)
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull @.str.37, ptr noundef nonnull %mclk_rate.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.then32.if.end.i_crit_edge

if.then32.if.end.i_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %platform_flags.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 15
  %28 = ptrtoint ptr %platform_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %platform_flags.i, align 8
  %or.i = or i32 %29, 128
  store i32 %or.i, ptr %platform_flags.i, align 8
  %30 = ptrtoint ptr %mclk_rate.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mclk_rate.i, align 4
  %mclk.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 17
  %32 = ptrtoint ptr %mclk.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %mclk.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then32.if.end.i_crit_edge
  %call1.i = call ptr @of_graph_get_next_endpoint(ptr noundef %26, ptr noundef null) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %do.end.i, label %cond.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #12
  br label %pxa_camera_pdata_from_dt.exit

cond.end.i:                                       ; preds = %if.end.i
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call1.i, i32 0, i32 3
  %call6.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i, ptr noundef nonnull %ep.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end12.i, label %do.end11.i

do.end11.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #12
  br label %out.i

if.end12.i:                                       ; preds = %cond.end.i
  %bus.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep.i, i32 0, i32 2
  %bus_width.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep.i, i32 0, i32 2, i32 0, i32 1
  %33 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bus_width.i, align 4
  %switch.tableidx = add i8 %34, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %35 = icmp ult i8 %switch.tableidx, 7
  br i1 %35, label %switch.hole_check, label %if.end12.i.sw.epilog.i_crit_edge

if.end12.i.sw.epilog.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

switch.hole_check:                                ; preds = %if.end12.i
  %switch.shifted = lshr i8 115, %switch.tableidx
  %36 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %switch.lobit.not = icmp eq i8 %36, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %37 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.pxa_camera_probe, i32 0, i32 %37
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load i32, ptr %switch.gep, align 4
  %platform_flags13.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 15
  %39 = ptrtoint ptr %platform_flags13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %platform_flags13.i, align 8
  %or26.i = or i32 %40, %switch.load
  store i32 %or26.i, ptr %platform_flags13.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %switch.hole_check.sw.epilog.i_crit_edge, %if.end12.i.sw.epilog.i_crit_edge
  %41 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bus.i, align 4
  %and.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %sw.epilog.i.if.end33.i_crit_edge, label %if.then30.i

sw.epilog.i.if.end33.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then30.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %platform_flags31.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 15
  %43 = ptrtoint ptr %platform_flags31.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %platform_flags31.i, align 8
  %or32.i = or i32 %44, 1
  store i32 %or32.i, ptr %platform_flags31.i, align 8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %sw.epilog.i.if.end33.i_crit_edge
  %and37.i = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end33.i.if.end42.i_crit_edge, label %if.then39.i

if.end33.i.if.end42.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then39.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %platform_flags40.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 15
  %45 = ptrtoint ptr %platform_flags40.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %platform_flags40.i, align 8
  %or41.i = or i32 %46, 512
  store i32 %or41.i, ptr %platform_flags40.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then39.i, %if.end33.i.if.end42.i_crit_edge
  %and46.i = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end42.i.if.end51.i_crit_edge, label %if.then48.i

if.end42.i.if.end51.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then48.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %platform_flags49.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 15
  %47 = ptrtoint ptr %platform_flags49.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %platform_flags49.i, align 8
  %or50.i = or i32 %48, 1024
  store i32 %or50.i, ptr %platform_flags49.i, align 8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then48.i, %if.end42.i.if.end51.i_crit_edge
  %and55.i = and i32 %42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.end51.i.if.end60.i_crit_edge, label %if.then57.i

if.end51.i.if.end60.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i

if.then57.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %platform_flags58.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 15
  %49 = ptrtoint ptr %platform_flags58.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %platform_flags58.i, align 8
  %or59.i = or i32 %50, 320
  store i32 %or59.i, ptr %platform_flags58.i, align 8
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then57.i, %if.end51.i.if.end60.i_crit_edge
  %and64.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.end60.i.if.end69.i_crit_edge, label %if.then66.i

if.end60.i.if.end69.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.then66.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  %platform_flags67.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 15
  %51 = ptrtoint ptr %platform_flags67.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %platform_flags67.i, align 8
  %or68.i = or i32 %52, 64
  store i32 %or68.i, ptr %platform_flags67.i, align 8
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then66.i, %if.end60.i.if.end69.i_crit_edge
  %call78.i = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier, ptr noundef %fwnode.i, i32 noundef 28) #9
  %cmp.i.i = icmp ugt ptr %call78.i, inttoptr (i32 -4096 to ptr)
  %53 = ptrtoint ptr %call78.i to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %53, i32 0
  br label %out.i

out.i:                                            ; preds = %if.end69.i, %do.end11.i
  %err.0.i = phi i32 [ %call6.i, %do.end11.i ], [ %spec.select.i, %if.end69.i ]
  call void @of_node_put(ptr noundef nonnull %call1.i) #9
  br label %pxa_camera_pdata_from_dt.exit

pxa_camera_pdata_from_dt.exit:                    ; preds = %out.i, %do.end.i
  %retval.0.i = phi i32 [ %err.0.i, %out.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mclk_rate.i) #9
  br label %if.end37

if.end37:                                         ; preds = %pxa_camera_pdata_from_dt.exit, %if.then27
  %err.1 = phi i32 [ %retval.0.i, %pxa_camera_pdata_from_dt.exit ], [ %21, %if.then27 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp38 = icmp slt i32 %err.1, 0
  br i1 %cmp38, label %if.end37.cleanup_crit_edge, label %if.end37.if.end41_crit_edge

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %if.end37.if.end41_crit_edge, %if.then19.if.end41_crit_edge
  %platform_flags42 = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 15
  %54 = ptrtoint ptr %platform_flags42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %platform_flags42, align 8
  %and = and i32 %55, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %do.end47, label %if.end41.if.end50_crit_edge

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  %56 = ptrtoint ptr %platform_flags42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %platform_flags42, align 8
  %or = or i32 %57, 32
  store i32 %or, ptr %platform_flags42, align 8
  br label %if.end50

if.end50:                                         ; preds = %do.end47, %if.end41.if.end50_crit_edge
  %58 = ptrtoint ptr %platform_flags42 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %platform_flags42, align 8
  %and52 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.if.end55_crit_edge, label %if.then54

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %width_flags = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 19
  %60 = ptrtoint ptr %width_flags to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 128, ptr %width_flags, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end50.if.end55_crit_edge
  %61 = ptrtoint ptr %platform_flags42 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %platform_flags42, align 8
  %and57 = and i32 %62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end55.if.end64_crit_edge, label %if.then59

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %width_flags60 = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 19
  %63 = ptrtoint ptr %width_flags60 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %width_flags60, align 8
  %65 = or i16 %64, 256
  store i16 %65, ptr %width_flags60, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end55.if.end64_crit_edge
  %66 = ptrtoint ptr %platform_flags42 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %platform_flags42, align 8
  %and66 = and i32 %67, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end64.if.end73_crit_edge, label %if.then68

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %width_flags69 = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 19
  %68 = ptrtoint ptr %width_flags69 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %width_flags69, align 8
  %70 = or i16 %69, 512
  store i16 %70, ptr %width_flags69, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %if.end64.if.end73_crit_edge
  %mclk74 = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 17
  %71 = ptrtoint ptr %mclk74 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mclk74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool75.not = icmp eq i32 %72, 0
  br i1 %tobool75.not, label %do.end79, label %if.end73.if.end82_crit_edge

if.end73.if.end82_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

do.end79:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14) #12
  %73 = ptrtoint ptr %mclk74 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 20000000, ptr %mclk74, align 8
  br label %if.end82

if.end82:                                         ; preds = %do.end79, %if.end73.if.end82_crit_edge
  %74 = ptrtoint ptr %mclk74 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mclk74, align 8
  %76 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clk, align 4
  %call.i302 = call i32 @clk_get_rate(ptr noundef %77) #9
  %ciclk.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 16
  %78 = ptrtoint ptr %ciclk.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call.i302, ptr %ciclk.i, align 4
  %div239.i = lshr i32 %call.i302, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %div239.i)
  %cmp.i303 = icmp ugt i32 %75, %div239.i
  br i1 %cmp.i303, label %if.then.i304, label %if.end82.if.end.i308_crit_edge

if.end82.if.end.i308_crit_edge:                   ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i308

if.then.i304:                                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %div239.i) #12
  br label %if.end.i308

if.end.i308:                                      ; preds = %if.then.i304, %if.end82.if.end.i308_crit_edge
  %mclk.0.i = phi i32 [ %div239.i, %if.then.i304 ], [ %75, %if.end82.if.end.i308_crit_edge ]
  %mul.i = shl i32 %mclk.0.i, 1
  %add.i = add i32 %call.i302, -1
  %sub.i = add i32 %add.i, %mul.i
  %div5.i = udiv i32 %sub.i, %mul.i
  %sub6.i = add i32 %div5.i, -1
  %79 = ptrtoint ptr %platform_flags42 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %platform_flags42, align 8
  %and.i306 = and i32 %80, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i306)
  %tobool.not.i307 = icmp eq i32 %and.i306, 0
  br i1 %tobool.not.i307, label %if.end.i308.do.body13.i_crit_edge, label %if.then7.i

if.end.i308.do.body13.i_crit_edge:                ; preds = %if.end.i308
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13.i

if.then7.i:                                       ; preds = %if.end.i308
  call void @__sanitizer_cov_trace_pc() #11
  %mul9.i = shl i32 %div5.i, 1
  %div10.i = udiv i32 %call.i302, %mul9.i
  %81 = ptrtoint ptr %mclk74 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div10.i, ptr %mclk74, align 8
  br label %do.body13.i

do.body13.i:                                      ; preds = %if.then7.i, %if.end.i308.do.body13.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mclk_get_divisor.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_probe, %if.then18.i)) #9
          to label %mclk_get_divisor.exit [label %if.then18.i], !srcloc !368

if.then18.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mclk_get_divisor.__UNIQUE_ID_ddebug308, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %call.i302, i32 noundef %mclk.0.i, i32 noundef %sub6.i) #9
  br label %mclk_get_divisor.exit

mclk_get_divisor.exit:                            ; preds = %if.then18.i, %do.body13.i
  %mclk_divisor = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 18
  %82 = ptrtoint ptr %mclk_divisor to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub6.i, ptr %mclk_divisor, align 4
  %capture = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 20
  %83 = ptrtoint ptr %capture to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %capture, ptr %capture, align 4
  %prev.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 20, i32 1
  %84 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %capture, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 21
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @pxa_camera_probe.__key, i16 noundef signext 3) #9
  %mlock = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 22
  call void @__mutex_init(ptr noundef %mlock, ptr noundef nonnull @.str.18, ptr noundef nonnull @pxa_camera_probe.__key.17) #9
  %call92 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call) #9
  %cmp.i309 = icmp ugt ptr %call92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i309, label %if.then94, label %if.end96

if.then94:                                        ; preds = %mclk_get_divisor.exit
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %call92 to i32
  br label %cleanup

if.end96:                                         ; preds = %mclk_get_divisor.exit
  %irq97 = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 9
  %86 = ptrtoint ptr %irq97 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call1, ptr %irq97, align 8
  %base98 = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 10
  %87 = ptrtoint ptr %base98 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call92, ptr %base98, align 4
  %call100 = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  %dma_chans = getelementptr %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 12
  %88 = ptrtoint ptr %dma_chans to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call100, ptr %dma_chans, align 4
  %cmp.i310 = icmp ugt ptr %call100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i310, label %do.end107, label %if.end112

do.end107:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #12
  %89 = ptrtoint ptr %dma_chans to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dma_chans, align 4
  %91 = ptrtoint ptr %90 to i32
  br label %cleanup

if.end112:                                        ; preds = %if.end96
  %call114 = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  %arrayidx116 = getelementptr %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 12, i32 1
  %92 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call114, ptr %arrayidx116, align 4
  %cmp.i311 = icmp ugt ptr %call114, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i311, label %do.end123, label %if.end128

do.end123:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #12
  %93 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx116, align 4
  %95 = ptrtoint ptr %94 to i32
  br label %exit_free_dma_y

if.end128:                                        ; preds = %if.end112
  %call130 = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  %arrayidx132 = getelementptr %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 12, i32 2
  %96 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call130, ptr %arrayidx132, align 4
  %cmp.i312 = icmp ugt ptr %call130, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i312, label %do.end139, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end128
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 1
  %97 = ptrtoint ptr %res15 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %res15, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %add149 = add i32 %100, 40
  %101 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %add149, ptr %src_addr, align 4
  %102 = ptrtoint ptr %dma_chans to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dma_chans, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %105, i32 0, i32 44
  %106 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i313 = icmp eq ptr %107, null
  br i1 %tobool.not.i313, label %for.cond.preheader.do.end158_crit_edge, label %dmaengine_slave_config.exit

for.cond.preheader.do.end158_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end158

do.end139:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #12
  %108 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx132, align 4
  %110 = ptrtoint ptr %109 to i32
  br label %exit_free_dma_u

for.cond:                                         ; preds = %dmaengine_slave_config.exit
  %111 = ptrtoint ptr %res15 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %res15, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %add149.1 = add i32 %114, 48
  %115 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add149.1, ptr %src_addr, align 4
  %116 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx116, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %device_config.i.1 = getelementptr inbounds %struct.dma_device, ptr %119, i32 0, i32 44
  %120 = ptrtoint ptr %device_config.i.1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %device_config.i.1, align 4
  %tobool.not.i313.1 = icmp eq ptr %121, null
  br i1 %tobool.not.i313.1, label %for.cond.do.end158_crit_edge, label %dmaengine_slave_config.exit.1

for.cond.do.end158_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end158

dmaengine_slave_config.exit.1:                    ; preds = %for.cond
  %call.i314.1 = call i32 %121(ptr noundef %117, ptr noundef nonnull %config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i314.1)
  %cmp153.1 = icmp slt i32 %call.i314.1, 0
  br i1 %cmp153.1, label %dmaengine_slave_config.exit.1.do.end158_crit_edge, label %for.cond.1

dmaengine_slave_config.exit.1.do.end158_crit_edge: ; preds = %dmaengine_slave_config.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end158

for.cond.1:                                       ; preds = %dmaengine_slave_config.exit.1
  %122 = ptrtoint ptr %res15 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %res15, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %add149.2 = add i32 %125, 56
  %126 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add149.2, ptr %src_addr, align 4
  %127 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx132, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %device_config.i.2 = getelementptr inbounds %struct.dma_device, ptr %130, i32 0, i32 44
  %131 = ptrtoint ptr %device_config.i.2 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %device_config.i.2, align 4
  %tobool.not.i313.2 = icmp eq ptr %132, null
  br i1 %tobool.not.i313.2, label %for.cond.1.do.end158_crit_edge, label %dmaengine_slave_config.exit.2

for.cond.1.do.end158_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end158

dmaengine_slave_config.exit.2:                    ; preds = %for.cond.1
  %call.i314.2 = call i32 %132(ptr noundef %128, ptr noundef nonnull %config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i314.2)
  %cmp153.2 = icmp slt i32 %call.i314.2, 0
  br i1 %cmp153.2, label %dmaengine_slave_config.exit.2.do.end158_crit_edge, label %for.cond.2

dmaengine_slave_config.exit.2.do.end158_crit_edge: ; preds = %dmaengine_slave_config.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end158

for.cond.2:                                       ; preds = %dmaengine_slave_config.exit.2
  %133 = ptrtoint ptr %irq97 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %irq97, align 8
  %call.i317 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %134, ptr noundef nonnull @pxa_camera_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i317)
  %tobool164.not = icmp eq i32 %call.i317, 0
  br i1 %tobool164.not, label %if.end170, label %do.end168

dmaengine_slave_config.exit:                      ; preds = %for.cond.preheader
  %call.i314 = call i32 %107(ptr noundef %103, ptr noundef nonnull %config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i314)
  %cmp153 = icmp slt i32 %call.i314, 0
  br i1 %cmp153, label %dmaengine_slave_config.exit.do.end158_crit_edge, label %for.cond

dmaengine_slave_config.exit.do.end158_crit_edge:  ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end158

do.end158:                                        ; preds = %dmaengine_slave_config.exit.do.end158_crit_edge, %dmaengine_slave_config.exit.2.do.end158_crit_edge, %for.cond.1.do.end158_crit_edge, %dmaengine_slave_config.exit.1.do.end158_crit_edge, %for.cond.do.end158_crit_edge, %for.cond.preheader.do.end158_crit_edge
  %retval.0.i316327 = phi i32 [ %call.i314, %dmaengine_slave_config.exit.do.end158_crit_edge ], [ -38, %for.cond.preheader.do.end158_crit_edge ], [ -38, %for.cond.do.end158_crit_edge ], [ %call.i314.1, %dmaengine_slave_config.exit.1.do.end158_crit_edge ], [ -38, %for.cond.1.do.end158_crit_edge ], [ %call.i314.2, %dmaengine_slave_config.exit.2.do.end158_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i316327) #12
  br label %exit_free_dma

do.end168:                                        ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #12
  br label %exit_free_dma

if.end170:                                        ; preds = %for.cond.2
  %task_eof = getelementptr inbounds %struct.pxa_camera_dev, ptr %call.i, i32 0, i32 25
  call void @tasklet_setup(ptr noundef %task_eof, ptr noundef nonnull @pxa_camera_eof) #9
  %135 = ptrtoint ptr %base98 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base98, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 1023) #9, !srcloc !369
  %137 = ptrtoint ptr %platform_flags42 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %platform_flags42, align 8
  %and.i319 = shl i32 %138, 17
  %139 = and i32 %and.i319, 8388608
  %and2.i = shl i32 %138, 12
  %140 = and i32 %and2.i, 524288
  %and8.i = shl i32 %138, 14
  %141 = and i32 %and8.i, 4194304
  %142 = and i32 %and2.i, 2097152
  %and20.i = shl i32 %138, 10
  %143 = and i32 %and20.i, 1048576
  %144 = ptrtoint ptr %mclk_divisor to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %mclk_divisor, align 4
  %146 = or i32 %139, %145
  %147 = or i32 %146, %140
  %148 = or i32 %147, %141
  %149 = or i32 %148, %142
  %or25.i = or i32 %149, %143
  %150 = ptrtoint ptr %base98 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base98, align 4
  %add.ptr27.i = getelementptr i8, ptr %151, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %or25.i) #9, !srcloc !369
  %152 = ptrtoint ptr %platform_flags42 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %platform_flags42, align 8
  %and29.i = and i32 %153, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.else.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  %154 = ptrtoint ptr %mclk74 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %mclk74, align 8
  %156 = ptrtoint ptr %ciclk.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ciclk.i, align 4
  %div.i.i = udiv i32 %157, %155
  %add.i.i = add i32 %div.i.i, 1
  %158 = ptrtoint ptr %base98 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base98, align 4
  %add.ptr.i.i = getelementptr i8, ptr %159, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %add.i.i) #9, !srcloc !369
  br label %if.end32.i

if.else.i:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  %160 = ptrtoint ptr %ciclk.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ciclk.i, align 4
  %div.i51.i = udiv i32 %161, 13000000
  %add.i52.i = add nuw nsw i32 %div.i51.i, 1
  %162 = ptrtoint ptr %base98 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %base98, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %163, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 %add.i52.i) #9, !srcloc !369
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else.i, %if.then31.i
  %164 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %clk, align 4
  %call.i.i = call i32 @clk_prepare(ptr noundef %165) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end32.i.pxa_camera_activate.exit_crit_edge

if.end32.i.pxa_camera_activate.exit_crit_edge:    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_camera_activate.exit

if.end.i.i:                                       ; preds = %if.end32.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %165) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.pxa_camera_activate.exit_crit_edge, label %if.then3.i.i

if.end.i.i.pxa_camera_activate.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_camera_activate.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %165) #9
  br label %pxa_camera_activate.exit

pxa_camera_activate.exit:                         ; preds = %if.then3.i.i, %if.end.i.i.pxa_camera_activate.exit_crit_edge, %if.end32.i.pxa_camera_activate.exit_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %166 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call172 = call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end175, label %pxa_camera_activate.exit.exit_deactivate_crit_edge

pxa_camera_activate.exit.exit_deactivate_crit_edge: ; preds = %pxa_camera_activate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_deactivate

if.end175:                                        ; preds = %pxa_camera_activate.exit
  %call176 = call fastcc i32 @pxa_camera_init_videobuf2(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end179, label %if.end175.exit_notifier_cleanup_crit_edge

if.end175.exit_notifier_cleanup_crit_edge:        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_notifier_cleanup

if.end179:                                        ; preds = %if.end175
  %167 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @pxa_camera_sensor_ops, ptr %notifier, align 8
  %call183 = call i32 @v4l2_async_nf_register(ptr noundef nonnull %call.i, ptr noundef %notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end179.cleanup_crit_edge, label %if.end179.exit_notifier_cleanup_crit_edge

if.end179.exit_notifier_cleanup_crit_edge:        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_notifier_cleanup

if.end179.cleanup_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

exit_notifier_cleanup:                            ; preds = %if.end179.exit_notifier_cleanup_crit_edge, %if.end175.exit_notifier_cleanup_crit_edge
  %err.2 = phi i32 [ %call176, %if.end175.exit_notifier_cleanup_crit_edge ], [ %call183, %if.end179.exit_notifier_cleanup_crit_edge ]
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #9
  call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #9
  br label %exit_deactivate

exit_deactivate:                                  ; preds = %exit_notifier_cleanup, %pxa_camera_activate.exit.exit_deactivate_crit_edge
  %err.3 = phi i32 [ %call172, %pxa_camera_activate.exit.exit_deactivate_crit_edge ], [ %err.2, %exit_notifier_cleanup ]
  %168 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %169) #9
  call void @clk_unprepare(ptr noundef %169) #9
  call void @tasklet_kill(ptr noundef %task_eof) #9
  br label %exit_free_dma

exit_free_dma:                                    ; preds = %exit_deactivate, %do.end168, %do.end158
  %err.4 = phi i32 [ %retval.0.i316327, %do.end158 ], [ %call.i317, %do.end168 ], [ %err.3, %exit_deactivate ]
  %170 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx132, align 4
  call void @dma_release_channel(ptr noundef %171) #9
  br label %exit_free_dma_u

exit_free_dma_u:                                  ; preds = %exit_free_dma, %do.end139
  %err.5 = phi i32 [ %110, %do.end139 ], [ %err.4, %exit_free_dma ]
  %172 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx116, align 4
  call void @dma_release_channel(ptr noundef %173) #9
  br label %exit_free_dma_y

exit_free_dma_y:                                  ; preds = %exit_free_dma_u, %do.end123
  %err.6 = phi i32 [ %95, %do.end123 ], [ %err.5, %exit_free_dma_u ]
  %174 = ptrtoint ptr %dma_chans to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dma_chans, align 4
  call void @dma_release_channel(ptr noundef %175) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_free_dma_y, %if.end179.cleanup_crit_edge, %do.end107, %if.then94, %if.end37.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then11 ], [ %85, %if.then94 ], [ %91, %do.end107 ], [ %err.6, %exit_free_dma_y ], [ -12, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ], [ %err.1, %if.end37.cleanup_crit_edge ], [ 0, %if.end179.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_camera_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %task_eof = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 25
  tail call void @tasklet_kill(ptr noundef %task_eof) #9
  %dma_chans = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %dma_chans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_chans, align 4
  tail call void @dma_release_channel(ptr noundef %5) #9
  %arrayidx2 = getelementptr %struct.pxa_camera_dev, ptr %1, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  tail call void @dma_release_channel(ptr noundef %7) #9
  %arrayidx4 = getelementptr %struct.pxa_camera_dev, ptr %1, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  tail call void @dma_release_channel(ptr noundef %9) #9
  %notifier = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 2
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #9
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #9
  tail call void @v4l2_device_unregister(ptr noundef %1) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.169) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_i2c(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_camera_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.pxa_camera_dev, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !370
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_irq.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_irq, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !368

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_irq.__UNIQUE_ID_ddebug310, ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef %2) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool5.not = icmp eq i32 %2, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %2) #9, !srcloc !369
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.then11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !370
  %or = or i32 %9, 2
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %or) #9, !srcloc !369
  %state.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %data, i32 0, i32 25, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %task_eof = getelementptr inbounds %struct.pxa_camera_dev, ptr %data, i32 0, i32 25
  tail call void @__tasklet_schedule(ptr noundef %task_eof) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 1, %if.end7.cleanup_crit_edge ], [ 1, %if.then11.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_camera_eof(ptr nocapture noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -2308
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_eof.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_eof, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !368

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %base = getelementptr i8, ptr %t, i32 -200
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !370
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_eof.__UNIQUE_ID_ddebug309, ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef %4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %base7 = getelementptr i8, ptr %t, i32 -200
  %5 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base7, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !370
  %or = or i32 %7, 8
  %8 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base7, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %or) #9, !srcloc !369
  %capture = getelementptr i8, ptr %t, i32 -152
  %10 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %capture, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 -736
  %active = getelementptr i8, ptr %t, i32 -4
  %12 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr14, ptr %active, align 8
  %active_dma.i = getelementptr i8, ptr %11, i32 80
  %nb_planes.i = getelementptr i8, ptr %11, i32 12
  %13 = ptrtoint ptr %nb_planes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nb_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i = icmp eq i32 %14, 3
  %spec.store.select.i = select i1 %cmp.i, i32 7, i32 1
  %15 = ptrtoint ptr %active_dma.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.store.select.i, ptr %active_dma.i, align 8
  %channels.i = getelementptr i8, ptr %t, i32 -196
  %16 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10.i = icmp sgt i32 %17, 0
  br i1 %cmp10.i, label %do.end.do.body.i_crit_edge, label %do.end.pxa_dma_start_channels.exit_crit_edge

do.end.pxa_dma_start_channels.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_dma_start_channels.exit

do.end.do.body.i_crit_edge:                       ; preds = %do.end
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.end.do.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %do.end.i.do.body.i_crit_edge ], [ 0, %do.end.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_dma_start_channels.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_eof, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !368

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_dma_start_channels.__UNIQUE_ID_ddebug299, ptr noundef %19, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef %i.011.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.pxa_camera_dev, ptr %add.ptr, i32 0, i32 12, i32 %i.011.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 50
  %24 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %25(ptr noundef %21) #9
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %26 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channels.i, align 8
  %cmp.i24 = icmp slt i32 %inc.i, %27
  br i1 %cmp.i24, label %do.end.i.do.body.i_crit_edge, label %do.end.i.pxa_dma_start_channels.exit_crit_edge

do.end.i.pxa_dma_start_channels.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_dma_start_channels.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

pxa_dma_start_channels.exit:                      ; preds = %do.end.i.pxa_dma_start_channels.exit_crit_edge, %do.end.pxa_dma_start_channels.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pxa_camera_init_videobuf2(ptr noundef %pcdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vb2_vq = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 3
  %0 = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 3, i32 3
  %1 = call ptr @memset(ptr %0, i32 0, i32 500)
  %2 = ptrtoint ptr %vb2_vq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %vb2_vq, align 4
  %io_modes = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 19, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 3, i32 10
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pcdev, ptr %drv_priv, align 4
  %timestamp_flags = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 3, i32 13
  %5 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8192, ptr %timestamp_flags, align 4
  %buf_struct_size = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 824, ptr %buf_struct_size, align 4
  %7 = ptrtoint ptr %pcdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcdev, align 8
  %dev1 = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %dev1, align 4
  %ops = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 3, i32 7
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pxac_vb2_ops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops, align 4
  %mlock = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 22
  %lock = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mlock, ptr %lock, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %vb2_vq) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_init_videobuf2.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_init_videobuf2, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !368

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %pcdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_init_videobuf2.__UNIQUE_ID_ddebug320, ptr noundef %14, ptr noundef nonnull @.str.53, ptr noundef %vb2_vq, i32 noundef %call) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxac_vb2_queue_setup(ptr noundef %vq, ptr nocapture noundef %nbufs, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 5
  %2 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sizeimage, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxac_vb2_queue_setup.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxac_vb2_queue_setup, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !368

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbufs, align 4
  %8 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxac_vb2_queue_setup.__UNIQUE_ID_ddebug317, ptr noundef %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, ptr noundef %vq, i32 noundef %7, i32 noundef %9, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %3)
  %cmp = icmp ult i32 %13, %3
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %14 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %num_planes, align 4
  %channels = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channels, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end7.cleanup_crit_edge [
    i32 1, label %if.end7.sw.bb_crit_edge
    i32 3, label %if.end7.sw.bb_crit_edge24
  ]

if.end7.sw.bb_crit_edge24:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end7.sw.bb_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end7.sw.bb_crit_edge, %if.end7.sw.bb_crit_edge24
  %18 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %3, ptr %sizes, align 4
  %19 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not = icmp eq i32 %20, 0
  br i1 %tobool9.not, label %if.then10, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %nbufs to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %nbufs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %sw.bb.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ %cond, %if.then6 ], [ -22, %if.end7.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxac_vb2_init(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxac_vb2_init.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxac_vb2_init, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !368

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %channels = getelementptr inbounds %struct.pxa_camera_dev, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxac_vb2_init.__UNIQUE_ID_ddebug316, ptr noundef %5, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = tail call fastcc i32 @pxa_buffer_init(ptr noundef %3, ptr noundef %vb)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxac_vb2_prepare(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %channels = getelementptr inbounds %struct.pxa_camera_dev, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channels, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge59
  ]

entry.sw.bb_crit_edge59:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge59
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %7 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %sw.bb.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

sw.bb.vb2_set_plane_payload.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %sw.bb
  %sizeimage = getelementptr inbounds %struct.pxa_camera_dev, ptr %3, i32 0, i32 7, i32 5
  %9 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizeimage, align 4
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp1.i = icmp ult i32 %12, %10
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !371

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.78, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %14, %if.then38.i ], [ %10, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %15 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %sw.bb.vb2_set_plane_payload.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxac_vb2_prepare.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxac_vb2_prepare, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !368

if.then:                                          ; preds = %vb2_set_plane_payload.exit
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channels, align 8
  %20 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i54 = icmp eq i32 %21, 0
  br i1 %cmp.not.i54, label %if.then.vb2_get_plane_payload.exit_crit_edge, label %if.then.i56

if.then.vb2_get_plane_payload.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_get_plane_payload.exit

if.then.i56:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %bytesused.i55 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %22 = ptrtoint ptr %bytesused.i55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytesused.i55, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i56, %if.then.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i57 = phi i32 [ %23, %if.then.i56 ], [ 0, %if.then.vb2_get_plane_payload.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxac_vb2_prepare.__UNIQUE_ID_ddebug315, ptr noundef %17, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.76, ptr noundef %vb, i32 noundef %19, i32 noundef %retval.0.i57) #9
  br label %do.end

do.end:                                           ; preds = %vb2_get_plane_payload.exit, %vb2_set_plane_payload.exit
  %current_fmt = getelementptr inbounds %struct.pxa_camera_dev, ptr %3, i32 0, i32 6
  %24 = ptrtoint ptr %current_fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %current_fmt, align 8
  %tobool8.not = icmp eq ptr %25, null
  br i1 %tobool8.not, label %do.end26, label %do.end.if.end32_crit_edge, !prof !372

do.end.if.end32_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.end26:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1402, i32 noundef 9, ptr noundef null) #9
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %do.end.if.end32_crit_edge
  %inwork = getelementptr inbounds %struct.pxa_buffer, ptr %vb, i32 0, i32 9
  %26 = ptrtoint ptr %inwork to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %inwork, align 4
  %active_dma.i = getelementptr inbounds %struct.pxa_buffer, ptr %vb, i32 0, i32 10
  %nb_planes.i = getelementptr inbounds %struct.pxa_buffer, ptr %vb, i32 0, i32 3
  %27 = ptrtoint ptr %nb_planes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nb_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp.i = icmp eq i32 %28, 3
  %spec.store.select.i = select i1 %cmp.i, i32 7, i32 1
  %29 = ptrtoint ptr %active_dma.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.store.select.i, ptr %active_dma.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxac_vb2_cleanup(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxac_vb2_cleanup.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxac_vb2_cleanup, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !368

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxac_vb2_cleanup.__UNIQUE_ID_ddebug313, ptr noundef %5, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, ptr noundef %vb) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @pxa_buffer_cleanup(ptr noundef %vb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxac_vb2_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxac_vb2_start_streaming.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxac_vb2_start_streaming, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !368

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %active = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxac_vb2_start_streaming.__UNIQUE_ID_ddebug318, ptr noundef %3, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, i32 noundef %count, ptr noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %buf_sequence = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %buf_sequence to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %buf_sequence, align 4
  %active5 = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %active5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %active5, align 8
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.then7, label %do.end.if.end8_crit_edge

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_start_capture.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxac_vb2_start_streaming, %if.then.i)) #9
          to label %pxa_camera_start_capture.exit [label %if.then.i], !srcloc !368

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_start_capture.__UNIQUE_ID_ddebug302, ptr noundef %10, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.71) #9
  br label %pxa_camera_start_capture.exit

pxa_camera_start_capture.exit:                    ; preds = %if.then.i, %if.then7
  %base.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !370
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %13) #9, !srcloc !369
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !370
  %or.i = and i32 %18, -268435459
  %and.i = or i32 %or.i, 268435456
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %and.i) #9, !srcloc !369
  br label %if.end8

if.end8:                                          ; preds = %pxa_camera_start_capture.exit, %do.end.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxac_vb2_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxac_vb2_stop_streaming.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxac_vb2_stop_streaming, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !368

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %active = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxac_vb2_stop_streaming.__UNIQUE_ID_ddebug319, ptr noundef %3, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, ptr noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @pxa_camera_stop_capture(ptr noundef %1)
  %capture = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %capture, align 4
  %cmp.not30 = icmp eq ptr %7, %capture
  br i1 %cmp.not30, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn.in31 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %7, %do.end.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in31, i32 -736
  %8 = ptrtoint ptr %.pn.in31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn.in31, align 8
  tail call fastcc void @pxa_camera_wakeup(ptr noundef %1, ptr noundef %buf.0)
  %cmp.not = icmp eq ptr %.pn, %capture
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxac_vb2_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxac_vb2_queue.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxac_vb2_queue, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !368

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %channels = getelementptr inbounds %struct.pxa_camera_dev, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels, align 8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %8 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.then.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

if.then.vb2_get_plane_payload.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %10 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %if.then.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i15 = phi i32 [ %11, %if.then.i ], [ 0, %if.then.vb2_get_plane_payload.exit_crit_edge ]
  %active = getelementptr inbounds %struct.pxa_camera_dev, ptr %3, i32 0, i32 24
  %12 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %active, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxac_vb2_queue.__UNIQUE_ID_ddebug314, ptr noundef %5, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, ptr noundef %vb, i32 noundef %7, i32 noundef %retval.0.i15, ptr noundef %13) #9
  br label %do.end

do.end:                                           ; preds = %vb2_get_plane_payload.exit, %entry
  %queue = getelementptr inbounds %struct.pxa_buffer, ptr %vb, i32 0, i32 1
  %capture = getelementptr inbounds %struct.pxa_camera_dev, ptr %3, i32 0, i32 20
  %prev.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %3, i32 0, i32 20, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %15, ptr noundef %capture) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add_tail.exit_crit_edge

do.end.list_add_tail.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %queue, ptr %prev.i, align 4
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %capture, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.pxa_buffer, ptr %vb, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %queue, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end.list_add_tail.exit_crit_edge
  %channels.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp19.i = icmp sgt i32 %21, 0
  br i1 %cmp19.i, label %list_add_tail.exit.for.body.i_crit_edge, label %list_add_tail.exit.pxa_dma_add_tail_buf.exit_crit_edge

list_add_tail.exit.pxa_dma_add_tail_buf.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_dma_add_tail_buf.exit

list_add_tail.exit.for.body.i_crit_edge:          ; preds = %list_add_tail.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %list_add_tail.exit.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %list_add_tail.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pxa_buffer, ptr %vb, i32 0, i32 4, i32 %i.020.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i.i16 = tail call i32 %25(ptr noundef %23) #9
  %arrayidx1.i = getelementptr %struct.pxa_buffer, ptr %vb, i32 0, i32 5, i32 %i.020.i
  %26 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i.i16, ptr %arrayidx1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_dma_add_tail_buf.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxac_vb2_queue, %if.then.i17)) #9
          to label %for.inc.i [label %if.then.i17], !srcloc !368

if.then.i17:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 8
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_dma_add_tail_buf.__UNIQUE_ID_ddebug301, ptr noundef %28, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef %i.020.i, ptr noundef %vb, i32 noundef %32) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i17, %for.body.i
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %33 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channels.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %34
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.pxa_dma_add_tail_buf.exit_crit_edge

for.inc.i.pxa_dma_add_tail_buf.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_dma_add_tail_buf.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

pxa_dma_add_tail_buf.exit:                        ; preds = %for.inc.i.pxa_dma_add_tail_buf.exit_crit_edge, %list_add_tail.exit.pxa_dma_add_tail_buf.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pxa_buffer_init(ptr noundef %pcdev, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %buf, i32 noundef 0) #9
  %channels = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 11
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channels, align 8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 4
  %2 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %entry.vb2_plane_size.exit_crit_edge, label %if.then.i

entry.vb2_plane_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 4
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %entry.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %5, %if.then.i ], [ 0, %entry.vb2_plane_size.exit_crit_edge ]
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %1, label %vb2_plane_size.exit.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
  ]

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %plane_sizes = getelementptr inbounds %struct.pxa_buffer, ptr %buf, i32 0, i32 8
  %7 = ptrtoint ptr %plane_sizes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i, ptr %plane_sizes, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %div61 = lshr i32 %retval.0.i, 1
  %plane_sizes3 = getelementptr inbounds %struct.pxa_buffer, ptr %buf, i32 0, i32 8
  %8 = ptrtoint ptr %plane_sizes3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div61, ptr %plane_sizes3, align 8
  %div562 = lshr i32 %retval.0.i, 2
  %arrayidx7 = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div562, ptr %arrayidx7, align 4
  %arrayidx10 = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div562, ptr %arrayidx10, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %nb_planes = getelementptr inbounds %struct.pxa_buffer, ptr %buf, i32 0, i32 3
  %11 = ptrtoint ptr %nb_planes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %1, ptr %nb_planes, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nents, align 4
  %plane_sizes11 = getelementptr inbounds %struct.pxa_buffer, ptr %buf, i32 0, i32 8
  %sg = getelementptr inbounds %struct.pxa_buffer, ptr %buf, i32 0, i32 6
  %sg_len = getelementptr inbounds %struct.pxa_buffer, ptr %buf, i32 0, i32 7
  %call14 = tail call i32 @sg_split(ptr noundef %13, i32 noundef %15, i32 noundef 0, i32 noundef %1, ptr noundef %plane_sizes11, ptr noundef %sg, ptr noundef %sg_len, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %do.end, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %pcdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.58, i32 noundef %call14) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %i.068 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %arrayidx18 = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 6, i32 %i.068
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 7, i32 %i.068
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx20, align 4
  %arrayidx.i = getelementptr %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 12, i32 %i.068
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %for.body.do.end.i_crit_edge, label %lor.lhs.false.i.i

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false.i.i:                                ; preds = %for.body
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool1.not.i.i = icmp eq ptr %25, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.do.end.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 39
  %26 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.do.end.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.do.end.i_crit_edge:            ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i.i = tail call ptr %27(ptr noundef nonnull %23, ptr noundef %19, i32 noundef %21, i32 noundef 2, i32 noundef 65, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %dmaengine_prep_slave_sg.exit.i.do.end.i_crit_edge, label %if.end.i

dmaengine_prep_slave_sg.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %dmaengine_prep_slave_sg.exit.i.do.end.i_crit_edge, %lor.lhs.false2.i.i.do.end.i_crit_edge, %lor.lhs.false.i.i.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  %28 = ptrtoint ptr %pcdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.60) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_init_dma_channel.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_buffer_init, %if.then12.i)) #9
          to label %if.then22 [label %if.then12.i], !srcloc !368

if.end.i:                                         ; preds = %dmaengine_prep_slave_sg.exit.i
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pcdev, ptr %callback_param.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.068)
  %31 = icmp ult i32 %i.068, 3
  br i1 %31, label %switch.lookup, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.pxa_buffer_init, i32 0, i32 %i.068
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %callback5.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %callback5.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %switch.load, ptr %callback5.i, align 4
  br label %for.inc

if.then12.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %pcdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_init_dma_channel.__UNIQUE_ID_ddebug298, ptr noundef %35, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, ptr noundef %buf, ptr noundef null) #9
  br label %if.then22

if.then22:                                        ; preds = %if.then12.i, %do.end.i
  tail call fastcc void @pxa_buffer_cleanup(ptr noundef %buf)
  br label %cleanup

for.inc:                                          ; preds = %switch.lookup, %if.end.i.for.inc_crit_edge
  %arrayidx6.i = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 4, i32 %i.068
  %36 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i, ptr %arrayidx6.i, align 4
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %queue = getelementptr inbounds %struct.pxa_buffer, ptr %buf, i32 0, i32 1
  %37 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.pxa_buffer, ptr %buf, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %queue, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then22, %do.end, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %do.end ], [ -12, %if.then22 ], [ 0, %for.end ], [ -22, %vb2_plane_size.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_split(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pxa_buffer_cleanup(ptr nocapture noundef %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %for.body.dmaengine_desc_free.exit_crit_edge, label %if.end.i

for.body.dmaengine_desc_free.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_desc_free.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_free.i, align 4
  %call1.i = tail call i32 %5(ptr noundef nonnull %1) #9
  br label %dmaengine_desc_free.exit

dmaengine_desc_free.exit:                         ; preds = %if.end.i, %for.body.dmaengine_desc_free.exit_crit_edge
  %arrayidx3 = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 6, i32 0
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  tail call void @kfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx3, align 4
  %arrayidx8 = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 7, i32 0
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 8, i32 0
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx9, align 4
  %arrayidx.1 = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %13, null
  br i1 %tobool.not.1, label %dmaengine_desc_free.exit.for.end_crit_edge, label %for.body.1

dmaengine_desc_free.exit.for.end_crit_edge:       ; preds = %dmaengine_desc_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.1:                                       ; preds = %dmaengine_desc_free.exit
  %flags.i.i.1 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i.1, align 4
  %and.i.i.1 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.1)
  %cmp.i.not.i.1 = icmp eq i32 %and.i.i.1, 0
  br i1 %cmp.i.not.i.1, label %for.body.1.dmaengine_desc_free.exit.1_crit_edge, label %if.end.i.1

for.body.1.dmaengine_desc_free.exit.1_crit_edge:  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_desc_free.exit.1

if.end.i.1:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  %desc_free.i.1 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %desc_free.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc_free.i.1, align 4
  %call1.i.1 = tail call i32 %17(ptr noundef nonnull %13) #9
  br label %dmaengine_desc_free.exit.1

dmaengine_desc_free.exit.1:                       ; preds = %if.end.i.1, %for.body.1.dmaengine_desc_free.exit.1_crit_edge
  %arrayidx3.1 = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx3.1, align 4
  tail call void @kfree(ptr noundef %19) #9
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.1, align 4
  %21 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx3.1, align 4
  %arrayidx8.1 = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx8.1, align 4
  %arrayidx9.1 = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx9.1, align 4
  %arrayidx.2 = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %25, null
  br i1 %tobool.not.2, label %dmaengine_desc_free.exit.1.for.end_crit_edge, label %for.body.2

dmaengine_desc_free.exit.1.for.end_crit_edge:     ; preds = %dmaengine_desc_free.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.2:                                       ; preds = %dmaengine_desc_free.exit.1
  %flags.i.i.2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i.i.2, align 4
  %and.i.i.2 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.2)
  %cmp.i.not.i.2 = icmp eq i32 %and.i.i.2, 0
  br i1 %cmp.i.not.i.2, label %for.body.2.dmaengine_desc_free.exit.2_crit_edge, label %if.end.i.2

for.body.2.dmaengine_desc_free.exit.2_crit_edge:  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_desc_free.exit.2

if.end.i.2:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %desc_free.i.2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %25, i32 0, i32 5
  %28 = ptrtoint ptr %desc_free.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc_free.i.2, align 4
  %call1.i.2 = tail call i32 %29(ptr noundef nonnull %25) #9
  br label %dmaengine_desc_free.exit.2

dmaengine_desc_free.exit.2:                       ; preds = %if.end.i.2, %for.body.2.dmaengine_desc_free.exit.2_crit_edge
  %arrayidx3.2 = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 6, i32 2
  %30 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx3.2, align 4
  tail call void @kfree(ptr noundef %31) #9
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx.2, align 4
  %33 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx3.2, align 4
  %arrayidx8.2 = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 7, i32 2
  %34 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx8.2, align 4
  %arrayidx9.2 = getelementptr %struct.pxa_buffer, ptr %buf, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx9.2, align 4
  br label %for.end

for.end:                                          ; preds = %dmaengine_desc_free.exit.2, %dmaengine_desc_free.exit.1.for.end_crit_edge, %dmaengine_desc_free.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %nb_planes = getelementptr inbounds %struct.pxa_buffer, ptr %buf, i32 0, i32 3
  %36 = ptrtoint ptr %nb_planes to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %nb_planes, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_camera_dma_irq_y(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pxa_camera_dma_irq(ptr noundef %data, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_camera_dma_irq_u(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pxa_camera_dma_irq(ptr noundef %data, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_camera_dma_irq_v(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pxa_camera_dma_irq(ptr noundef %data, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pxa_camera_dma_irq(ptr noundef %pcdev, i32 noundef %act_dma) unnamed_addr #2 align 64 {
entry:
  %state.i = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 21
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %base = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 10
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !370
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_dma_irq.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_dma_irq, %if.then)) #9
          to label %do.end13 [label %if.then], !srcloc !368

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %pcdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_dma_irq.__UNIQUE_ID_ddebug306, ptr noundef %4, ptr noundef nonnull @.str.64, i32 noundef %2, i32 noundef %act_dma) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then, %entry
  %channels = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 11
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp14 = icmp eq i32 %6, 3
  %spec.select = select i1 %cmp14, i32 7, i32 1
  %active = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 24
  %7 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %active, align 8
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %do.end13.out_crit_edge, label %if.end20

do.end13.out_crit_edge:                           ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end20:                                         ; preds = %do.end13
  %inwork = getelementptr inbounds %struct.pxa_buffer, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %inwork to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inwork, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool22.not = icmp eq i32 %10, 0
  br i1 %tobool22.not, label %lor.rhs, label %if.end20.do.end40_crit_edge

if.end20.do.end40_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

lor.rhs:                                          ; preds = %if.end20
  %queue = getelementptr inbounds %struct.pxa_buffer, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %queue, align 4
  %cmp.i = icmp eq ptr %12, %queue
  br i1 %cmp.i, label %lor.rhs.do.end40_crit_edge, label %lor.rhs.if.end46_crit_edge, !prof !372

lor.rhs.if.end46_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

lor.rhs.do.end40_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

do.end40:                                         ; preds = %lor.rhs.do.end40_crit_edge, %if.end20.do.end40_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1032, i32 noundef 9, ptr noundef null) #9
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %lor.rhs.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %act_dma)
  %switch.selectcmp = icmp eq i32 %act_dma, 4
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %act_dma)
  %switch.selectcmp136 = icmp eq i32 %act_dma, 2
  %switch.select137 = select i1 %switch.selectcmp136, i32 1, i32 %switch.select
  %capture = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 20
  %prev = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 20, i32 1
  %13 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev, align 4
  %arrayidx = getelementptr %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 12, i32 %switch.select137
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %cookie = getelementptr i8, ptr %14, i32 28
  %arrayidx57 = getelementptr [3 x i32], ptr %cookie, i32 0, i32 %switch.select137
  %17 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx57, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state.i) #9
  %19 = call ptr @memset(ptr %state.i, i32 255, i32 16)
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %16, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 49
  %22 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %23(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %state.i) #9
  %24 = getelementptr inbounds %struct.dma_tx_state, ptr %state.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state.i) #9
  %and = and i32 %spec.select, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp60.not = icmp eq i32 %call.i, 0
  %or.cond = select i1 %tobool59.not, i1 true, i1 %cmp60.not
  br i1 %or.cond, label %if.end95, label %do.body63

do.body63:                                        ; preds = %if.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_dma_irq.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_dma_irq, %if.then75)) #9
          to label %do.end79 [label %if.then75], !srcloc !368

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %pcdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcdev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_dma_irq.__UNIQUE_ID_ddebug307, ptr noundef %28, ptr noundef nonnull @.str.65, i32 noundef %2) #9
  br label %do.end79

do.end79:                                         ; preds = %if.then75, %do.body63
  call fastcc void @pxa_camera_stop_capture(ptr noundef %pcdev)
  %29 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn148 = load ptr, ptr %capture, align 4
  %cmp86.not149 = icmp eq ptr %.pn148, %capture
  br i1 %cmp86.not149, label %do.end79.for.end_crit_edge, label %do.end79.for.body_crit_edge

do.end79.for.body_crit_edge:                      ; preds = %do.end79
  br label %for.body

do.end79.for.end_crit_edge:                       ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %pxa_dma_add_tail_buf.exit.for.body_crit_edge, %do.end79.for.body_crit_edge
  %.pn150 = phi ptr [ %.pn, %pxa_dma_add_tail_buf.exit.for.body_crit_edge ], [ %.pn148, %do.end79.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn150, i32 -736
  %30 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp19.i = icmp sgt i32 %31, 0
  br i1 %cmp19.i, label %for.body.for.body.i_crit_edge, label %for.body.pxa_dma_add_tail_buf.exit_crit_edge

for.body.pxa_dma_add_tail_buf.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_dma_add_tail_buf.exit

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pxa_buffer, ptr %buf.0, i32 0, i32 4, i32 %i.020.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i.i = call i32 %35(ptr noundef %33) #9
  %arrayidx1.i = getelementptr %struct.pxa_buffer, ptr %buf.0, i32 0, i32 5, i32 %i.020.i
  %36 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i.i, ptr %arrayidx1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_dma_add_tail_buf.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_dma_irq, %if.then.i)) #9
          to label %for.inc.i [label %if.then.i], !srcloc !368

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %pcdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcdev, align 8
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_dma_add_tail_buf.__UNIQUE_ID_ddebug301, ptr noundef %38, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef %i.020.i, ptr noundef %buf.0, i32 noundef %42) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %43 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %channels, align 8
  %cmp.i141 = icmp slt i32 %inc.i, %44
  br i1 %cmp.i141, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.pxa_dma_add_tail_buf.exit_crit_edge

for.inc.i.pxa_dma_add_tail_buf.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_dma_add_tail_buf.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

pxa_dma_add_tail_buf.exit:                        ; preds = %for.inc.i.pxa_dma_add_tail_buf.exit_crit_edge, %for.body.pxa_dma_add_tail_buf.exit_crit_edge
  %45 = ptrtoint ptr %.pn150 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn = load ptr, ptr %.pn150, align 4
  %cmp86.not = icmp eq ptr %.pn, %capture
  br i1 %cmp86.not, label %pxa_dma_add_tail_buf.exit.for.end_crit_edge, label %pxa_dma_add_tail_buf.exit.for.body_crit_edge

pxa_dma_add_tail_buf.exit.for.body_crit_edge:     ; preds = %pxa_dma_add_tail_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

pxa_dma_add_tail_buf.exit.for.end_crit_edge:      ; preds = %pxa_dma_add_tail_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %pxa_dma_add_tail_buf.exit.for.end_crit_edge, %do.end79.for.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_start_capture.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_dma_irq, %if.then.i142)) #9
          to label %pxa_camera_start_capture.exit [label %if.then.i142], !srcloc !368

if.then.i142:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %pcdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcdev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_start_capture.__UNIQUE_ID_ddebug302, ptr noundef %47, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.71) #9
  br label %pxa_camera_start_capture.exit

pxa_camera_start_capture.exit:                    ; preds = %if.then.i142, %for.end
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 20
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !370
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr6.i = getelementptr i8, ptr %52, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %50) #9, !srcloc !369
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9, !srcloc !370
  %or.i = and i32 %55, -268435459
  %and.i = or i32 %or.i, 268435456
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %and.i) #9, !srcloc !369
  br label %out

if.end95:                                         ; preds = %if.end46
  %neg = xor i32 %act_dma, -1
  %active_dma = getelementptr inbounds %struct.pxa_buffer, ptr %8, i32 0, i32 10
  %58 = ptrtoint ptr %active_dma to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %active_dma, align 8
  %and96 = and i32 %59, %neg
  store i32 %and96, ptr %active_dma, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool98.not = icmp eq i32 %and96, 0
  br i1 %tobool98.not, label %if.then99, label %if.end95.out_crit_edge

if.end95.out_crit_edge:                           ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then99:                                        ; preds = %if.end95
  call fastcc void @pxa_camera_wakeup(ptr noundef %pcdev, ptr noundef nonnull %8)
  %60 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %26)
  %cmp.i143 = icmp ne i32 %61, %26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_check_link_miss.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_dma_irq, %if.then.i145)) #9
          to label %do.end.i [label %if.then.i145], !srcloc !368

if.then.i145:                                     ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %pcdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcdev, align 8
  %64 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %active, align 8
  %conv.i144 = zext i1 %cmp.i143 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_check_link_miss.__UNIQUE_ID_ddebug305, ptr noundef %63, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, ptr noundef %65, i32 noundef %conv.i144) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i145, %if.then99
  %66 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %active, align 8
  %tobool7.not.i = icmp ne ptr %67, null
  %68 = and i1 %cmp.i143, %tobool7.not.i
  br i1 %68, label %if.then10.i, label %do.end.i.out_crit_edge

do.end.i.out_crit_edge:                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then10.i:                                      ; preds = %do.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_start_capture.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_dma_irq, %if.then.i.i)) #9
          to label %pxa_camera_start_capture.exit.i [label %if.then.i.i], !srcloc !368

if.then.i.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %pcdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pcdev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_start_capture.__UNIQUE_ID_ddebug302, ptr noundef %70, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.71) #9
  br label %pxa_camera_start_capture.exit.i

pxa_camera_start_capture.exit.i:                  ; preds = %if.then.i.i, %if.then10.i
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %72, i32 20
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !370
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %75, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %73) #9, !srcloc !369
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #9, !srcloc !370
  %or.i.i = and i32 %78, -268435459
  %and.i.i = or i32 %or.i.i, 268435456
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %and.i.i) #9, !srcloc !369
  br label %out

out:                                              ; preds = %pxa_camera_start_capture.exit.i, %do.end.i.out_crit_edge, %if.end95.out_crit_edge, %pxa_camera_start_capture.exit, %do.end13.out_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pxa_camera_stop_capture(ptr nocapture noundef %pcdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %channels.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 11
  %0 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.i = icmp sgt i32 %1, 0
  br i1 %cmp11.i, label %entry.do.body.i_crit_edge, label %entry.pxa_dma_stop_channels.exit_crit_edge

entry.pxa_dma_stop_channels.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_dma_stop_channels.exit

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

do.body.i:                                        ; preds = %dmaengine_terminate_all.exit.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %dmaengine_terminate_all.exit.i.do.body.i_crit_edge ], [ 0, %entry.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_dma_stop_channels.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_stop_capture, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !368

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %pcdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_dma_stop_channels.__UNIQUE_ID_ddebug300, ptr noundef %3, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.68, i32 noundef %i.012.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 12, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %do.end.i.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i.i

do.end.i.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_all.exit.i

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %9(ptr noundef %5) #9
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i.i, %do.end.i.dmaengine_terminate_all.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %10 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channels.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %11
  br i1 %cmp.i, label %dmaengine_terminate_all.exit.i.do.body.i_crit_edge, label %dmaengine_terminate_all.exit.i.pxa_dma_stop_channels.exit_crit_edge

dmaengine_terminate_all.exit.i.pxa_dma_stop_channels.exit_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_dma_stop_channels.exit

dmaengine_terminate_all.exit.i.do.body.i_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

pxa_dma_stop_channels.exit:                       ; preds = %dmaengine_terminate_all.exit.i.pxa_dma_stop_channels.exit_crit_edge, %entry.pxa_dma_stop_channels.exit_crit_edge
  %base = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 10
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !370
  %and = and i32 %14, -268435457
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %and) #9, !srcloc !369
  %active = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 24
  %17 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %active, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_stop_capture.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_stop_capture, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !368

if.then:                                          ; preds = %pxa_dma_stop_channels.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %pcdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_stop_capture.__UNIQUE_ID_ddebug303, ptr noundef %19, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %pxa_dma_stop_channels.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pxa_camera_wakeup(ptr noundef %pcdev, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.pxa_buffer, ptr %buf, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.pxa_buffer, ptr %buf, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i3.i = getelementptr inbounds %struct.pxa_buffer, ptr %buf, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue, ptr %prev.i3.i, align 4
  %call.i = tail call i64 @ktime_get() #9
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 5
  %8 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i, ptr %timestamp, align 8
  %buf_sequence = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 23
  %9 = ptrtoint ptr %buf_sequence to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_sequence, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %buf_sequence, align 4
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 4
  %11 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sequence, align 8
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 2
  %12 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %field, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf, i32 noundef 5) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_wakeup.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_wakeup, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !368

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %pcdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_wakeup.__UNIQUE_ID_ddebug304, ptr noundef %14, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, ptr noundef %buf) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %list_del_init.exit
  %capture = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 20
  %15 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %capture, align 4
  %cmp.i.not = icmp eq ptr %16, %capture
  br i1 %cmp.i.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pxa_camera_stop_capture(ptr noundef %pcdev)
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr14 = getelementptr i8, ptr %16, i32 -736
  %active = getelementptr inbounds %struct.pxa_camera_dev, ptr %pcdev, i32 0, i32 24
  %17 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr14, ptr %active, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_camera_sensor_bound(ptr nocapture noundef readonly %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  %code.i.i = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev1 = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 1
  %0 = ptrtoint ptr %v4l2_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev1, align 4
  %vdev2 = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 1
  %current_pix = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #9
  %2 = getelementptr inbounds i8, ptr %format, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %format, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88) #12
  %mlock = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #9
  %7 = call ptr @memcpy(ptr %vdev2, ptr @pxa_camera_videodev_template, i32 1352)
  %v4l2_dev5 = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 1, i32 7
  %lock = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 1, i32 26
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mlock, ptr %lock, align 8
  %sensor = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %subdev, ptr %sensor, align 8
  %vb2_vq = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 3
  %queue = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 1, i32 10
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vb2_vq, ptr %queue, align 8
  %11 = ptrtoint ptr %v4l2_dev5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %v4l2_dev5, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 8
  %12 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_handler, align 4
  %ctrl_handler12 = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 1, i32 9
  %14 = ptrtoint ptr %ctrl_handler12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %ctrl_handler12, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 1, i32 5, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %code.i.i) #9
  %16 = call ptr @memset(ptr %code.i.i, i32 0, i32 48)
  %17 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %17, align 4
  %tobool.not.i.i = icmp eq ptr %subdev, null
  %ops.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 6
  %index.i.i = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code.i.i, i32 0, i32 1
  br i1 %tobool.not.i.i, label %entry.pxa_camera_build_formats.exit.thread215_crit_edge, label %if.else.i.preheader.i

entry.pxa_camera_build_formats.exit.thread215_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_camera_build_formats.exit.thread215

if.else.i.preheader.i:                            ; preds = %entry
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %pad.i12.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %pad.i12.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pad.i12.i, align 4
  %tobool1.not.i13.i = icmp eq ptr %22, null
  br i1 %tobool1.not.i13.i, label %if.else.i.preheader.i.pxa_camera_build_formats.exit.thread215_crit_edge, label %if.else.i.preheader.i.land.lhs.true.i.i_crit_edge

if.else.i.preheader.i.land.lhs.true.i.i_crit_edge: ; preds = %if.else.i.preheader.i
  br label %land.lhs.true.i.i

if.else.i.preheader.i.pxa_camera_build_formats.exit.thread215_crit_edge: ; preds = %if.else.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_camera_build_formats.exit.thread215

land.lhs.true.i.i:                                ; preds = %while.body.i.i.land.lhs.true.i.i_crit_edge, %if.else.i.preheader.i.land.lhs.true.i.i_crit_edge
  %23 = phi ptr [ %34, %while.body.i.i.land.lhs.true.i.i_crit_edge ], [ %22, %if.else.i.preheader.i.land.lhs.true.i.i_crit_edge ]
  %raw_fmts.026.i14.i = phi i32 [ %inc.i.i, %while.body.i.i.land.lhs.true.i.i_crit_edge ], [ 0, %if.else.i.preheader.i.land.lhs.true.i.i_crit_edge ]
  %enum_mbus_code.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %enum_mbus_code.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %enum_mbus_code.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %25, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.for.cond.preheader.i.i_crit_edge, label %if.else6.i.i

land.lhs.true.i.i.for.cond.preheader.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i.i

if.else6.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool7.not.i.i = icmp eq ptr %26, null
  br i1 %tobool7.not.i.i, label %if.else6.i.i.if.else13.i.i_crit_edge, label %land.lhs.true8.i.i

if.else6.i.i.if.else13.i.i_crit_edge:             ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i.i

land.lhs.true8.i.i:                               ; preds = %if.else6.i.i
  %enum_mbus_code9.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %enum_mbus_code9.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %enum_mbus_code9.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %28, null
  br i1 %tobool10.not.i.i, label %land.lhs.true8.i.i.if.else13.i.i_crit_edge, label %land.lhs.true8.i.i.if.end19.i.i_crit_edge

land.lhs.true8.i.i.if.end19.i.i_crit_edge:        ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i.i

land.lhs.true8.i.i.if.else13.i.i_crit_edge:       ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i.i

if.else13.i.i:                                    ; preds = %land.lhs.true8.i.i.if.else13.i.i_crit_edge, %if.else6.i.i.if.else13.i.i_crit_edge
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.else13.i.i, %land.lhs.true8.i.i.if.end19.i.i_crit_edge
  %.sink.i.i = phi ptr [ %25, %if.else13.i.i ], [ %28, %land.lhs.true8.i.i.if.end19.i.i_crit_edge ]
  %call17.i.i = call i32 %.sink.i.i(ptr noundef nonnull %subdev, ptr noundef null, ptr noundef nonnull %code.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool20.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool20.not.i.i, label %while.body.i.i, label %if.end19.i.i.for.cond.preheader.i.i_crit_edge

if.end19.i.i.for.cond.preheader.i.i_crit_edge:    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %while.body.i.i.for.cond.preheader.i.i_crit_edge, %if.end19.i.i.for.cond.preheader.i.i_crit_edge, %land.lhs.true.i.i.for.cond.preheader.i.i_crit_edge
  %raw_fmts.026.i.lcssa.i = phi i32 [ %inc.i.i, %while.body.i.i.for.cond.preheader.i.i_crit_edge ], [ %raw_fmts.026.i14.i, %land.lhs.true.i.i.for.cond.preheader.i.i_crit_edge ], [ %raw_fmts.026.i14.i, %if.end19.i.i.for.cond.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raw_fmts.026.i.lcssa.i)
  %cmp5.not.i.i = icmp eq i32 %raw_fmts.026.i.lcssa.i, 0
  br i1 %cmp5.not.i.i, label %for.cond.preheader.i.i.pxa_camera_build_formats.exit.thread215_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.pxa_camera_build_formats.exit.thread215_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_camera_build_formats.exit.thread215

while.body.i.i:                                   ; preds = %if.end19.i.i
  %inc.i.i = add i32 %raw_fmts.026.i14.i, 1
  %29 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index.i.i, align 4
  %inc21.i.i = add i32 %30, 1
  store i32 %inc21.i.i, ptr %index.i.i, align 4
  %31 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i.i, align 4
  %pad.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %pad.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pad.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %34, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.for.cond.preheader.i.i_crit_edge, label %while.body.i.i.land.lhs.true.i.i_crit_edge

while.body.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

while.body.i.i.for.cond.preheader.i.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i.i

for.body.i.i:                                     ; preds = %if.end26.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %fmts.07.i.i = phi i32 [ %add.i.i, %if.end26.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i.06.i.i = phi i32 [ %inc27.i.i, %if.end26.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %call22.i.i = call fastcc i32 @pxa_camera_get_formats(ptr noundef %1, i32 noundef %i.06.i.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp slt i32 %call22.i.i, 0
  br i1 %cmp23.i.i, label %if.then24.i.i, label %if.end26.i.i

if.then24.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = inttoptr i32 %call22.i.i to ptr
  br label %pxa_mbus_build_fmts_xlate.exit.i

if.end26.i.i:                                     ; preds = %for.body.i.i
  %add.i.i = add i32 %call22.i.i, %fmts.07.i.i
  %inc27.i.i = add nuw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc27.i.i, %raw_fmts.026.i.lcssa.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end26.i.i.for.body.i.i_crit_edge

if.end26.i.i.for.body.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool28.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %tobool28.not.i.i, label %for.end.i.i.pxa_camera_build_formats.exit.thread215_crit_edge, label %if.end31.i.i

for.end.i.i.pxa_camera_build_formats.exit.thread215_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_camera_build_formats.exit.thread215

if.end31.i.i:                                     ; preds = %for.end.i.i
  %add32.i.i = add i32 %add.i.i, 1
  %36 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add32.i.i, i32 8) #9
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %if.end31.i.i.pxa_camera_build_formats.exit.thread215_crit_edge, label %if.end7.i.i.i.i, !prof !372

if.end31.i.i.pxa_camera_build_formats.exit.thread215_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_camera_build_formats.exit.thread215

if.end7.i.i.i.i:                                  ; preds = %if.end31.i.i
  %38 = extractvalue { i32, i1 } %36, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 3520) #13
  %tobool34.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool34.not.i.i, label %if.end7.i.i.i.i.pxa_camera_build_formats.exit.thread215_crit_edge, label %if.end7.i.i.i.i.for.body40.i.i_crit_edge

if.end7.i.i.i.i.for.body40.i.i_crit_edge:         ; preds = %if.end7.i.i.i.i
  br label %for.body40.i.i

if.end7.i.i.i.i.pxa_camera_build_formats.exit.thread215_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_camera_build_formats.exit.thread215

for.body40.i.i:                                   ; preds = %if.end44.i.i.for.body40.i.i_crit_edge, %if.end7.i.i.i.i.for.body40.i.i_crit_edge
  %fmts.110.i.i = phi i32 [ %add45.i.i, %if.end44.i.i.for.body40.i.i_crit_edge ], [ 0, %if.end7.i.i.i.i.for.body40.i.i_crit_edge ]
  %i.19.i.i = phi i32 [ %inc47.i.i, %if.end44.i.i.for.body40.i.i_crit_edge ], [ 0, %if.end7.i.i.i.i.for.body40.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.pxa_camera_format_xlate, ptr %call8.i.i.i.i, i32 %fmts.110.i.i
  %call41.i.i = call fastcc i32 @pxa_camera_get_formats(ptr noundef %1, i32 noundef %i.19.i.i, ptr noundef %add.ptr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %cmp42.i.i = icmp slt i32 %call41.i.i, 0
  br i1 %cmp42.i.i, label %egfmt.i.i, label %if.end44.i.i

if.end44.i.i:                                     ; preds = %for.body40.i.i
  %add45.i.i = add i32 %call41.i.i, %fmts.110.i.i
  %inc47.i.i = add nuw i32 %i.19.i.i, 1
  %exitcond14.not.i.i = icmp eq i32 %inc47.i.i, %raw_fmts.026.i.lcssa.i
  br i1 %exitcond14.not.i.i, label %for.end48.i.i, label %if.end44.i.i.for.body40.i.i_crit_edge

if.end44.i.i.for.body40.i.i_crit_edge:            ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body40.i.i

for.end48.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.pxa_camera_format_xlate, ptr %call8.i.i.i.i, i32 %add45.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx.i.i, align 8
  br label %pxa_mbus_build_fmts_xlate.exit.i

egfmt.i.i:                                        ; preds = %for.body40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i) #9
  %40 = inttoptr i32 %call41.i.i to ptr
  br label %pxa_mbus_build_fmts_xlate.exit.i

pxa_camera_build_formats.exit.thread215:          ; preds = %if.end7.i.i.i.i.pxa_camera_build_formats.exit.thread215_crit_edge, %if.end31.i.i.pxa_camera_build_formats.exit.thread215_crit_edge, %for.end.i.i.pxa_camera_build_formats.exit.thread215_crit_edge, %for.cond.preheader.i.i.pxa_camera_build_formats.exit.thread215_crit_edge, %if.else.i.preheader.i.pxa_camera_build_formats.exit.thread215_crit_edge, %entry.pxa_camera_build_formats.exit.thread215_crit_edge
  %retval.0.i.ph.i = phi ptr [ inttoptr (i32 -6 to ptr), %entry.pxa_camera_build_formats.exit.thread215_crit_edge ], [ inttoptr (i32 -6 to ptr), %for.cond.preheader.i.i.pxa_camera_build_formats.exit.thread215_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end31.i.i.pxa_camera_build_formats.exit.thread215_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.i.i.i.i.pxa_camera_build_formats.exit.thread215_crit_edge ], [ inttoptr (i32 -6 to ptr), %for.end.i.i.pxa_camera_build_formats.exit.thread215_crit_edge ], [ inttoptr (i32 -6 to ptr), %if.else.i.preheader.i.pxa_camera_build_formats.exit.thread215_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %code.i.i) #9
  br label %do.end17

pxa_mbus_build_fmts_xlate.exit.i:                 ; preds = %egfmt.i.i, %for.end48.i.i, %if.then24.i.i
  %retval.0.i.i = phi ptr [ %35, %if.then24.i.i ], [ %40, %egfmt.i.i ], [ %call8.i.i.i.i, %for.end48.i.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %code.i.i) #9
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %pxa_mbus_build_fmts_xlate.exit.i.do.end17_crit_edge, label %pxa_camera_build_formats.exit.thread

pxa_mbus_build_fmts_xlate.exit.i.do.end17_crit_edge: ; preds = %pxa_mbus_build_fmts_xlate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

pxa_camera_build_formats.exit.thread:             ; preds = %pxa_mbus_build_fmts_xlate.exit.i
  %user_formats.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 5
  %41 = ptrtoint ptr %user_formats.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %retval.0.i.i, ptr %user_formats.i, align 4
  %current_fmt = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 6
  %42 = ptrtoint ptr %current_fmt to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %retval.0.i.i, ptr %current_fmt, align 8
  %field = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 3
  %43 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %field, align 4
  %44 = ptrtoint ptr %current_pix to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 640, ptr %current_pix, align 4
  %height = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 480, ptr %height, align 4
  %host_fmt = getelementptr inbounds %struct.pxa_camera_format_xlate, ptr %retval.0.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %host_fmt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host_fmt, align 4
  %layout.i = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %layout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.not.i = icmp eq i32 %49, 0
  br i1 %cmp.not.i, label %if.end.i154, label %if.then.i153

do.end17:                                         ; preds = %pxa_mbus_build_fmts_xlate.exit.i.do.end17_crit_edge, %pxa_camera_build_formats.exit.thread215
  %retval.0.i9.i218 = phi ptr [ %retval.0.i.ph.i, %pxa_camera_build_formats.exit.thread215 ], [ %retval.0.i.i, %pxa_mbus_build_fmts_xlate.exit.i.do.end17_crit_edge ]
  %50 = ptrtoint ptr %retval.0.i9.i218 to i32
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.91, i32 noundef %50) #12
  br label %out

if.then.i153:                                     ; preds = %pxa_camera_build_formats.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %bits_per_sample.i = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %47, i32 0, i32 5
  %53 = ptrtoint ptr %bits_per_sample.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bits_per_sample.i, align 4
  %conv.i = zext i8 %54 to i32
  %div13.i = mul nuw nsw i32 %conv.i, 80
  br label %pxa_mbus_bytes_per_line.exit

if.end.i154:                                      ; preds = %pxa_camera_build_formats.exit.thread
  %packing.i = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %47, i32 0, i32 2
  %55 = ptrtoint ptr %packing.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %packing.i, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %56, label %if.end.i154.pxa_mbus_bytes_per_line.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.end.i154.sw.bb5.i_crit_edge
    i32 2, label %if.end.i154.sw.bb5.i_crit_edge227
  ]

if.end.i154.sw.bb5.i_crit_edge227:                ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

if.end.i154.sw.bb5.i_crit_edge:                   ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

if.end.i154.pxa_mbus_bytes_per_line.exit_crit_edge: ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_mbus_bytes_per_line.exit

sw.bb.i:                                          ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #11
  %bits_per_sample1.i = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %47, i32 0, i32 5
  %58 = ptrtoint ptr %bits_per_sample1.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bits_per_sample1.i, align 4
  %conv2.i = zext i8 %59 to i32
  %div412.i = mul nuw nsw i32 %conv2.i, 80
  br label %pxa_mbus_bytes_per_line.exit

sw.bb5.i:                                         ; preds = %if.end.i154.sw.bb5.i_crit_edge, %if.end.i154.sw.bb5.i_crit_edge227
  br label %pxa_mbus_bytes_per_line.exit

pxa_mbus_bytes_per_line.exit:                     ; preds = %sw.bb5.i, %sw.bb.i, %if.end.i154.pxa_mbus_bytes_per_line.exit_crit_edge, %if.then.i153
  %retval.0.i155 = phi i32 [ %div13.i, %if.then.i153 ], [ 1280, %sw.bb5.i ], [ %div412.i, %sw.bb.i ], [ -22, %if.end.i154.pxa_mbus_bytes_per_line.exit_crit_edge ]
  %bytesperline = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 4
  %60 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i155, ptr %bytesperline, align 4
  %61 = ptrtoint ptr %host_fmt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %host_fmt, align 4
  %layout.i156 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %layout.i156 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %layout.i156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i = icmp eq i32 %64, 0
  br i1 %cmp.i, label %if.then.i158, label %if.end.i160

if.then.i158:                                     ; preds = %pxa_mbus_bytes_per_line.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i157 = mul nsw i32 %retval.0.i155, 480
  br label %pxa_mbus_image_size.exit

if.end.i160:                                      ; preds = %pxa_mbus_bytes_per_line.exit
  call void @__sanitizer_cov_trace_pc() #11
  %packing.i159 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %62, i32 0, i32 2
  %65 = ptrtoint ptr %packing.i159 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %packing.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cond.i = icmp eq i32 %66, 1
  %mul2.i = mul nsw i32 %retval.0.i155, 960
  %spec.select = select i1 %cond.i, i32 %mul2.i, i32 -22
  br label %pxa_mbus_image_size.exit

pxa_mbus_image_size.exit:                         ; preds = %if.end.i160, %if.then.i158
  %retval.0.i162 = phi i32 [ %mul.i157, %if.then.i158 ], [ %spec.select, %if.end.i160 ]
  %sizeimage = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 5
  %67 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %retval.0.i162, ptr %sizeimage, align 4
  %68 = ptrtoint ptr %host_fmt to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %host_fmt, align 4
  %fourcc = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 2
  %72 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %pixelformat, align 4
  %73 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %retval.0.i.i, align 4
  %75 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 640, ptr %format3, align 4
  %76 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %height, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %78 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %height2.i, align 4
  %79 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %field, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %81 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 6
  %82 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %84 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %colorspace4.i, align 4
  %85 = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 9
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %conv.i163 = trunc i32 %87 to i16
  %88 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i163, ptr %88, align 4
  %quantization.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 10
  %90 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %91 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %92 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 11
  %93 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %94 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %95 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %96 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %74, ptr %code9.i, align 4
  %97 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sensor, align 8
  %tobool.not.i = icmp eq ptr %98, null
  br i1 %tobool.not.i, label %pxa_mbus_image_size.exit.pxac_sensor_set_power.exit_crit_edge, label %if.else.i

pxa_mbus_image_size.exit.pxac_sensor_set_power.exit_crit_edge: ; preds = %pxa_mbus_image_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxac_sensor_set_power.exit

if.else.i:                                        ; preds = %pxa_mbus_image_size.exit
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %tobool1.not.i = icmp eq ptr %102, null
  br i1 %tobool1.not.i, label %if.else.i.if.end33_crit_edge, label %land.lhs.true.i

if.else.i.if.end33_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_power.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %102, i32 0, i32 10
  %103 = ptrtoint ptr %s_power.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %s_power.i, align 4
  %tobool4.not.i = icmp eq ptr %104, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end33_crit_edge, label %if.else6.i

land.lhs.true.i.if.end33_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %105 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool7.not.i = icmp eq ptr %105, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %s_power9.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %105, i32 0, i32 10
  %106 = ptrtoint ptr %s_power9.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_power9.i, align 4
  %tobool10.not.i = icmp eq ptr %107, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.i_crit_edge

land.lhs.true8.i.if.end19.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.i_crit_edge
  %.sink.i = phi ptr [ %104, %if.else13.i ], [ %107, %land.lhs.true8.i.if.end19.i_crit_edge ]
  %call17.i = call i32 %.sink.i(ptr noundef nonnull %98, i32 noundef 1) #9
  %108 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %call17.i, label %if.end19.i.pxac_sensor_set_power.exit_crit_edge [
    i32 -515, label %if.end19.i.if.end33_crit_edge
    i32 0, label %if.end19.i.if.end33_crit_edge228
  ]

if.end19.i.if.end33_crit_edge228:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end19.i.if.end33_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end19.i.pxac_sensor_set_power.exit_crit_edge:  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxac_sensor_set_power.exit

pxac_sensor_set_power.exit:                       ; preds = %if.end19.i.pxac_sensor_set_power.exit_crit_edge, %pxa_mbus_image_size.exit.pxac_sensor_set_power.exit_crit_edge
  %109 = phi i32 [ -19, %pxa_mbus_image_size.exit.pxac_sensor_set_power.exit_crit_edge ], [ %call17.i, %if.end19.i.pxac_sensor_set_power.exit_crit_edge ]
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.165, i32 noundef %109) #12
  br label %out

if.end33:                                         ; preds = %if.end19.i.if.end33_crit_edge, %if.end19.i.if.end33_crit_edge228, %land.lhs.true.i.if.end33_crit_edge, %if.else.i.if.end33_crit_edge
  %112 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sensor, align 8
  %tobool35.not = icmp eq ptr %113, null
  br i1 %tobool35.not, label %if.end33.do.end.i199_crit_edge, label %if.else

if.end33.do.end.i199_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i199

if.else:                                          ; preds = %if.end33
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %113, i32 0, i32 6
  %114 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %115, i32 0, i32 7
  %116 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pad, align 4
  %tobool37.not = icmp eq ptr %117, null
  br i1 %tobool37.not, label %if.else.out_sensor_poweroff_crit_edge, label %land.lhs.true

if.else.out_sensor_poweroff_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sensor_poweroff

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %set_fmt, align 4
  %tobool40.not = icmp eq ptr %119, null
  br i1 %tobool40.not, label %land.lhs.true.out_sensor_poweroff_crit_edge, label %if.else42

land.lhs.true.out_sensor_poweroff_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sensor_poweroff

if.else42:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool43.not = icmp eq ptr %120, null
  br i1 %tobool43.not, label %if.else42.if.else50_crit_edge, label %land.lhs.true44

if.else42.if.else50_crit_edge:                    ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else50

land.lhs.true44:                                  ; preds = %if.else42
  %set_fmt45 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %set_fmt45 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %set_fmt45, align 4
  %tobool46.not = icmp eq ptr %122, null
  br i1 %tobool46.not, label %land.lhs.true44.if.else50_crit_edge, label %land.lhs.true44.if.end57_crit_edge

land.lhs.true44.if.end57_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

land.lhs.true44.if.else50_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else50

if.else50:                                        ; preds = %land.lhs.true44.if.else50_crit_edge, %if.else42.if.else50_crit_edge
  br label %if.end57

if.end57:                                         ; preds = %if.else50, %land.lhs.true44.if.end57_crit_edge
  %.sink = phi ptr [ %119, %if.else50 ], [ %122, %land.lhs.true44.if.end57_crit_edge ]
  %call54 = call i32 %.sink(ptr noundef nonnull %113, ptr noundef null, ptr noundef nonnull %format) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool58.not = icmp eq i32 %call54, 0
  br i1 %tobool58.not, label %if.end60, label %if.end57.out_sensor_poweroff_crit_edge

if.end57.out_sensor_poweroff_crit_edge:           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sensor_poweroff

if.end60:                                         ; preds = %if.end57
  %123 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %format3, align 4
  %125 = ptrtoint ptr %current_pix to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %current_pix, align 4
  %126 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %height2.i, align 4
  %128 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %height, align 4
  %129 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %field3.i, align 4
  %131 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %field, align 4
  %132 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %colorspace4.i, align 4
  %134 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %colorspace.i, align 4
  %135 = ptrtoint ptr %88 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %88, align 4
  %conv.i171 = zext i16 %136 to i32
  %137 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %conv.i171, ptr %85, align 4
  %138 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %quantization6.i, align 2
  %conv5.i173 = zext i16 %139 to i32
  %140 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %conv5.i173, ptr %quantization.i, align 4
  %141 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %xfer_func8.i, align 4
  %conv7.i176 = zext i16 %142 to i32
  %143 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv7.i176, ptr %xfer_func.i, align 4
  %144 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pixelformat, align 4
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.88, i32 noundef %133, i32 noundef %145) #12
  %146 = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 3, i32 3
  %147 = call ptr @memset(ptr %146, i32 0, i32 500)
  %148 = ptrtoint ptr %vb2_vq to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 1, ptr %vb2_vq, align 4
  %io_modes.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 3, i32 1
  %149 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 19, ptr %io_modes.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 3, i32 10
  %150 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %1, ptr %drv_priv.i, align 4
  %timestamp_flags.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 3, i32 13
  %151 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 8192, ptr %timestamp_flags.i, align 4
  %buf_struct_size.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 3, i32 12
  %152 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 824, ptr %buf_struct_size.i, align 4
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %1, align 8
  %dev1.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 3, i32 2
  %155 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %154, ptr %dev1.i, align 4
  %ops.i178 = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 3, i32 7
  %156 = ptrtoint ptr %ops.i178 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @pxac_vb2_ops, ptr %ops.i178, align 4
  %mem_ops.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 3, i32 8
  %157 = ptrtoint ptr %mem_ops.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops.i, align 4
  %lock.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 3, i32 5
  %158 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %mlock, ptr %lock.i, align 4
  %call.i = call i32 @vb2_queue_init(ptr noundef %vb2_vq) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_init_videobuf2.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_sensor_bound, %if.then.i179)) #9
          to label %pxa_camera_init_videobuf2.exit [label %if.then.i179], !srcloc !368

if.then.i179:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_init_videobuf2.__UNIQUE_ID_ddebug320, ptr noundef %160, ptr noundef nonnull @.str.53, ptr noundef %vb2_vq, i32 noundef %call.i) #9
  br label %pxa_camera_init_videobuf2.exit

pxa_camera_init_videobuf2.exit:                   ; preds = %if.then.i179, %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool68.not = icmp eq i32 %call.i, 0
  br i1 %tobool68.not, label %if.end70, label %pxa_camera_init_videobuf2.exit.out_sensor_poweroff_crit_edge

pxa_camera_init_videobuf2.exit.out_sensor_poweroff_crit_edge: ; preds = %pxa_camera_init_videobuf2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sensor_poweroff

if.end70:                                         ; preds = %pxa_camera_init_videobuf2.exit
  %fops.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 1, i32 3
  %161 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %fops.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  %call.i181 = call i32 @__video_register_device(ptr noundef %vdev2, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %164) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %tobool73.not = icmp eq i32 %call.i181, 0
  br i1 %tobool73.not, label %do.end84, label %out_sensor_poweroff.thread

out_sensor_poweroff.thread:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name, i32 noundef %call.i181) #12
  %165 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %sensor, align 8
  br label %do.end.i199

do.end84:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 8
  %name86 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %167, ptr noundef nonnull @.str.100, ptr noundef %name86) #12
  br label %out_sensor_poweroff

out_sensor_poweroff:                              ; preds = %do.end84, %pxa_camera_init_videobuf2.exit.out_sensor_poweroff_crit_edge, %if.end57.out_sensor_poweroff_crit_edge, %land.lhs.true.out_sensor_poweroff_crit_edge, %if.else.out_sensor_poweroff_crit_edge
  %168 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %168)
  %.pr.pr = load ptr, ptr %sensor, align 8
  %tobool.not.i183 = icmp eq ptr %.pr.pr, null
  br i1 %tobool.not.i183, label %out_sensor_poweroff.do.end.i199_crit_edge, label %if.else.i186

out_sensor_poweroff.do.end.i199_crit_edge:        ; preds = %out_sensor_poweroff
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i199

if.else.i186:                                     ; preds = %out_sensor_poweroff
  %ops.i184 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr.pr, i32 0, i32 6
  %169 = ptrtoint ptr %ops.i184 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ops.i184, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %tobool1.not.i185 = icmp eq ptr %172, null
  br i1 %tobool1.not.i185, label %if.else.i186.out_crit_edge, label %land.lhs.true.i189

if.else.i186.out_crit_edge:                       ; preds = %if.else.i186
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true.i189:                               ; preds = %if.else.i186
  %s_power.i187 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %172, i32 0, i32 10
  %173 = ptrtoint ptr %s_power.i187 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %s_power.i187, align 4
  %tobool4.not.i188 = icmp eq ptr %174, null
  br i1 %tobool4.not.i188, label %land.lhs.true.i189.out_crit_edge, label %if.else6.i191

land.lhs.true.i189.out_crit_edge:                 ; preds = %land.lhs.true.i189
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else6.i191:                                    ; preds = %land.lhs.true.i189
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %175 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool7.not.i190 = icmp eq ptr %175, null
  br i1 %tobool7.not.i190, label %if.else6.i191.if.else13.i195_crit_edge, label %land.lhs.true8.i194

if.else6.i191.if.else13.i195_crit_edge:           ; preds = %if.else6.i191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i195

land.lhs.true8.i194:                              ; preds = %if.else6.i191
  %s_power9.i192 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %175, i32 0, i32 10
  %176 = ptrtoint ptr %s_power9.i192 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %s_power9.i192, align 4
  %tobool10.not.i193 = icmp eq ptr %177, null
  br i1 %tobool10.not.i193, label %land.lhs.true8.i194.if.else13.i195_crit_edge, label %land.lhs.true8.i194.if.end19.i198_crit_edge

land.lhs.true8.i194.if.end19.i198_crit_edge:      ; preds = %land.lhs.true8.i194
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i198

land.lhs.true8.i194.if.else13.i195_crit_edge:     ; preds = %land.lhs.true8.i194
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i195

if.else13.i195:                                   ; preds = %land.lhs.true8.i194.if.else13.i195_crit_edge, %if.else6.i191.if.else13.i195_crit_edge
  br label %if.end19.i198

if.end19.i198:                                    ; preds = %if.else13.i195, %land.lhs.true8.i194.if.end19.i198_crit_edge
  %.sink.i196 = phi ptr [ %174, %if.else13.i195 ], [ %177, %land.lhs.true8.i194.if.end19.i198_crit_edge ]
  %call17.i197 = call i32 %.sink.i196(ptr noundef nonnull %.pr.pr, i32 noundef 0) #9
  %178 = zext i32 %call17.i197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %call17.i197, label %if.end19.i198.do.end.i199_crit_edge [
    i32 -515, label %if.end19.i198.out_crit_edge
    i32 0, label %if.end19.i198.out_crit_edge229
  ]

if.end19.i198.out_crit_edge229:                   ; preds = %if.end19.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end19.i198.out_crit_edge:                      ; preds = %if.end19.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end19.i198.do.end.i199_crit_edge:              ; preds = %if.end19.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i199

do.end.i199:                                      ; preds = %if.end19.i198.do.end.i199_crit_edge, %out_sensor_poweroff.do.end.i199_crit_edge, %out_sensor_poweroff.thread, %if.end33.do.end.i199_crit_edge
  %179 = phi i32 [ -19, %out_sensor_poweroff.do.end.i199_crit_edge ], [ %call17.i197, %if.end19.i198.do.end.i199_crit_edge ], [ -19, %out_sensor_poweroff.thread ], [ -19, %if.end33.do.end.i199_crit_edge ]
  %180 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %181, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.166, i32 noundef %179) #12
  br label %out

out:                                              ; preds = %do.end.i199, %if.end19.i198.out_crit_edge, %if.end19.i198.out_crit_edge229, %land.lhs.true.i189.out_crit_edge, %if.else.i186.out_crit_edge, %pxac_sensor_set_power.exit, %do.end17
  %err.0 = phi i32 [ %50, %do.end17 ], [ %109, %pxac_sensor_set_power.exit ], [ %179, %do.end.i199 ], [ 0, %if.end19.i198.out_crit_edge ], [ 0, %land.lhs.true.i189.out_crit_edge ], [ 0, %if.else.i186.out_crit_edge ], [ 0, %if.end19.i198.out_crit_edge229 ]
  call void @mutex_unlock(ptr noundef %mlock) #9
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_camera_sensor_unbind(ptr nocapture noundef readonly %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 1
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %mlock = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.167, ptr noundef %name) #12
  %base = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1023) #9, !srcloc !369
  %channels.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11.i = icmp sgt i32 %7, 0
  br i1 %cmp11.i, label %entry.do.body.i_crit_edge, label %entry.pxa_dma_stop_channels.exit_crit_edge

entry.pxa_dma_stop_channels.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_dma_stop_channels.exit

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

do.body.i:                                        ; preds = %dmaengine_terminate_all.exit.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %dmaengine_terminate_all.exit.i.do.body.i_crit_edge ], [ 0, %entry.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_dma_stop_channels.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_sensor_unbind, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !368

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_dma_stop_channels.__UNIQUE_ID_ddebug300, ptr noundef %9, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.68, i32 noundef %i.012.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.pxa_camera_dev, ptr %1, i32 0, i32 12, i32 %i.012.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 47
  %14 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %do.end.i.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i.i

do.end.i.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_all.exit.i

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %15(ptr noundef %11) #9
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i.i, %do.end.i.dmaengine_terminate_all.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %16 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channels.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %17
  br i1 %cmp.i, label %dmaengine_terminate_all.exit.i.do.body.i_crit_edge, label %dmaengine_terminate_all.exit.i.pxa_dma_stop_channels.exit_crit_edge

dmaengine_terminate_all.exit.i.pxa_dma_stop_channels.exit_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_dma_stop_channels.exit

dmaengine_terminate_all.exit.i.do.body.i_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

pxa_dma_stop_channels.exit:                       ; preds = %dmaengine_terminate_all.exit.i.pxa_dma_stop_channels.exit_crit_edge, %entry.pxa_dma_stop_channels.exit_crit_edge
  %user_formats.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %user_formats.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_formats.i, align 4
  tail call void @kfree(ptr noundef %19) #9
  %vdev = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %vdev) #9
  %sensor = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %sensor, align 8
  tail call void @mutex_unlock(ptr noundef %mlock) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxac_fops_camera_open(ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %mlock = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #9
  %call1 = tail call i32 @v4l2_fh_open(ptr noundef %filp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i18 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not = icmp eq i32 %call.i18, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %if.end
  %sensor.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end4.if.then7_crit_edge, label %if.else.i

if.end4.if.then7_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.else.i:                                        ; preds = %if.end4
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.else.i.out_crit_edge, label %land.lhs.true.i

if.else.i.out_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_power.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_power.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_power.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.out_crit_edge, label %if.else6.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %12 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool7.not.i = icmp eq ptr %12, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %s_power9.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_power9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_power9.i, align 4
  %tobool10.not.i = icmp eq ptr %14, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.i_crit_edge

land.lhs.true8.i.if.end19.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.i_crit_edge
  %.sink.i = phi ptr [ %11, %if.else13.i ], [ %14, %land.lhs.true8.i.if.end19.i_crit_edge ]
  %call17.i = tail call i32 %.sink.i(ptr noundef nonnull %5, i32 noundef 1) #9
  %15 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %call17.i, label %if.end19.i.if.then7_crit_edge [
    i32 -515, label %if.end19.i.out_crit_edge
    i32 0, label %if.end19.i.out_crit_edge20
  ]

if.end19.i.out_crit_edge20:                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end19.i.out_crit_edge:                         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end19.i.if.then7_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %if.end19.i.if.then7_crit_edge, %if.end4.if.then7_crit_edge
  %16 = phi i32 [ -19, %if.end4.if.then7_crit_edge ], [ %call17.i, %if.end19.i.if.then7_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.165, i32 noundef %16) #12
  %call8 = tail call i32 @v4l2_fh_release(ptr noundef %filp) #9
  br label %out

out:                                              ; preds = %if.then7, %if.end19.i.out_crit_edge, %if.end19.i.out_crit_edge20, %land.lhs.true.i.out_crit_edge, %if.else.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ %16, %if.then7 ], [ %call1, %if.end.out_crit_edge ], [ 0, %if.end19.i.out_crit_edge ], [ 0, %if.end19.i.out_crit_edge20 ], [ 0, %land.lhs.true.i.out_crit_edge ], [ 0, %if.else.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mlock) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxac_fops_camera_release(ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %mlock = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #9
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i10 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not = icmp eq i32 %call.i10, 0
  %call2 = tail call i32 @_vb2_fop_release(ptr noundef %filp, ptr noundef null) #9
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %sensor.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.do.end.i_crit_edge, label %if.else.i

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.else.i:                                        ; preds = %if.then
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.else.i.if.end_crit_edge, label %land.lhs.true.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_power.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_power.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_power.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.else6.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %12 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool7.not.i = icmp eq ptr %12, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %s_power9.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_power9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_power9.i, align 4
  %tobool10.not.i = icmp eq ptr %14, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.i_crit_edge

land.lhs.true8.i.if.end19.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.i_crit_edge
  %.sink.i = phi ptr [ %11, %if.else13.i ], [ %14, %land.lhs.true8.i.if.end19.i_crit_edge ]
  %call17.i = tail call i32 %.sink.i(ptr noundef nonnull %5, i32 noundef 0) #9
  %15 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %call17.i, label %if.end19.i.do.end.i_crit_edge [
    i32 -515, label %if.end19.i.if.end_crit_edge
    i32 0, label %if.end19.i.if.end_crit_edge11
  ]

if.end19.i.if.end_crit_edge11:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end19.i.if.end_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end19.i.do.end.i_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.end19.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %16 = phi i32 [ -19, %if.then.do.end.i_crit_edge ], [ %call17.i, %if.end19.i.do.end.i_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.166, i32 noundef %16) #12
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.end19.i.if.end_crit_edge, %if.end19.i.if.end_crit_edge11, %land.lhs.true.i.if.end_crit_edge, %if.else.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.if.end_crit_edge ], [ %16, %do.end.i ], [ 0, %if.end19.i.if.end_crit_edge ], [ 0, %land.lhs.true.i.if.end_crit_edge ], [ 0, %if.else.i.if.end_crit_edge ], [ 0, %if.end19.i.if.end_crit_edge11 ]
  tail call void @mutex_unlock(ptr noundef %mlock) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxac_vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.102, i32 noundef 32) #9
  %call2 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.3, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.103, i32 noundef 32) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxac_vidioc_enum_fmt_vid_cap(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %user_formats = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %user_formats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_formats, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %idx.0 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.cond_crit_edge ]
  %arrayidx = getelementptr %struct.pxa_camera_format_xlate, ptr %3, i32 %idx.0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %tobool.not = icmp eq i32 %5, 0
  %inc = add i32 %idx.0, 1
  br i1 %tobool.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %idx.0)
  %cmp.not = icmp ult i32 %7, %idx.0
  br i1 %cmp.not, label %if.end, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %host_fmt = getelementptr %struct.pxa_camera_format_xlate, ptr %3, i32 %7, i32 1
  %8 = ptrtoint ptr %host_fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_fmt, align 4
  %fourcc = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxac_vidioc_g_fmt_vid_cap(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %current_pix = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %current_pix to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_pix, align 4
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height3, align 4
  %bytesperline = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 4
  %8 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytesperline, align 4
  %bytesperline5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %bytesperline5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bytesperline5, align 4
  %sizeimage = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 5
  %11 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizeimage, align 4
  %sizeimage7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %13 = ptrtoint ptr %sizeimage7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sizeimage7, align 4
  %field = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %field, align 4
  %field9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %field9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %field9, align 4
  %current_fmt = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %current_fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %current_fmt, align 8
  %host_fmt = getelementptr inbounds %struct.pxa_camera_format_xlate, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %host_fmt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host_fmt, align 4
  %fourcc = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %pixelformat, align 4
  %colorspace = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 6
  %24 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %colorspace, align 4
  %colorspace11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %26 = ptrtoint ptr %colorspace11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %colorspace11, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxac_vidioc_g_fmt_vid_cap.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxac_vidioc_g_fmt_vid_cap, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !368

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %29 = ptrtoint ptr %current_fmt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %current_fmt, align 8
  %host_fmt17 = getelementptr inbounds %struct.pxa_camera_format_xlate, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %host_fmt17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %host_fmt17, align 4
  %fourcc18 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %fourcc18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fourcc18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxac_vidioc_g_fmt_vid_cap.__UNIQUE_ID_ddebug324, ptr noundef %28, ptr noundef nonnull @.str.105, i32 noundef %34) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxac_vidioc_s_fmt_vid_cap(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  %y_skip_top.i.i = alloca i32, align 4
  %cfg.i = alloca %struct.v4l2_mbus_config, align 8
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #9
  %2 = getelementptr inbounds i8, ptr %format, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %format, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxac_vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxac_vidioc_s_fmt_vid_cap, %if.then)) #9
          to label %do.body6 [label %if.then], !srcloc !368

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pixelformat, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxac_vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug325, ptr noundef %6, ptr noundef nonnull @.str.107, i32 noundef %8, i32 noundef %10, i32 noundef %12) #9
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 21
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %active = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 24
  %13 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %active, align 8
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %lor.rhs, label %if.then19.critedge

lor.rhs:                                          ; preds = %do.body6
  %num_buffers.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 3, i32 21
  %15 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.not = icmp eq i32 %16, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #9
  br i1 %cmp.i.not, label %if.end20, label %lor.rhs.cleanup_crit_edge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19.critedge:                               ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #9
  br label %cleanup

if.end20:                                         ; preds = %lor.rhs
  %call21 = tail call i32 @pxac_vidioc_try_fmt_vid_cap(ptr noundef %filp, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %user_formats = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %user_formats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %user_formats, align 4
  %pixelformat25 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %pixelformat25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pixelformat25, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not8.i = icmp eq i32 %22, 0
  br i1 %tobool.not8.i, label %if.end24.pxa_mbus_xlate_by_fourcc.exit_crit_edge, label %for.body.i.preheader

if.end24.pxa_mbus_xlate_by_fourcc.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_mbus_xlate_by_fourcc.exit

for.body.i.preheader:                             ; preds = %if.end24
  %host_fmt.i127 = getelementptr %struct.pxa_camera_format_xlate, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %host_fmt.i127 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host_fmt.i127, align 4
  %fourcc2.i128 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %fourcc2.i128 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fourcc2.i128, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %20)
  %cmp.i116129 = icmp eq i32 %26, %20
  br i1 %cmp.i116129, label %for.body.i.preheader.pxa_mbus_xlate_by_fourcc.exit_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.pxa_mbus_xlate_by_fourcc.exit_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_mbus_xlate_by_fourcc.exit

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.09.i130 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add i32 %i.09.i130, 1
  %arrayidx.i = getelementptr %struct.pxa_camera_format_xlate, ptr %18, i32 %inc.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %for.cond.i.pxa_mbus_xlate_by_fourcc.exit_crit_edge, label %for.body.i

for.cond.i.pxa_mbus_xlate_by_fourcc.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_mbus_xlate_by_fourcc.exit

for.body.i:                                       ; preds = %for.cond.i
  %host_fmt.i = getelementptr %struct.pxa_camera_format_xlate, ptr %18, i32 %inc.i, i32 1
  %29 = ptrtoint ptr %host_fmt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host_fmt.i, align 4
  %fourcc2.i = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %fourcc2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fourcc2.i, align 4
  %cmp.i116 = icmp eq i32 %32, %20
  br i1 %cmp.i116, label %for.body.i.pxa_mbus_xlate_by_fourcc.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.pxa_mbus_xlate_by_fourcc.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_mbus_xlate_by_fourcc.exit

pxa_mbus_xlate_by_fourcc.exit:                    ; preds = %for.body.i.pxa_mbus_xlate_by_fourcc.exit_crit_edge, %for.cond.i.pxa_mbus_xlate_by_fourcc.exit_crit_edge, %for.body.i.preheader.pxa_mbus_xlate_by_fourcc.exit_crit_edge, %if.end24.pxa_mbus_xlate_by_fourcc.exit_crit_edge
  %retval.0.i117 = phi ptr [ null, %if.end24.pxa_mbus_xlate_by_fourcc.exit_crit_edge ], [ %18, %for.body.i.preheader.pxa_mbus_xlate_by_fourcc.exit_crit_edge ], [ %arrayidx.i, %for.body.i.pxa_mbus_xlate_by_fourcc.exit_crit_edge ], [ null, %for.cond.i.pxa_mbus_xlate_by_fourcc.exit_crit_edge ]
  %format27 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %33 = ptrtoint ptr %retval.0.i117 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %retval.0.i117, align 4
  %35 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fmt, align 4
  %37 = ptrtoint ptr %format27 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %format27, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %41 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %44 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %46 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %colorspace4.i, align 4
  %47 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %conv.i = trunc i32 %49 to i16
  %50 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i, ptr %50, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %53 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %54 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %55 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %56 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %57 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %58 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %34, ptr %code9.i, align 4
  %sensor = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sensor, align 8
  %tobool28.not = icmp eq ptr %60, null
  br i1 %tobool28.not, label %pxa_mbus_xlate_by_fourcc.exit.do.end57_crit_edge, label %if.else

pxa_mbus_xlate_by_fourcc.exit.do.end57_crit_edge: ; preds = %pxa_mbus_xlate_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

if.else:                                          ; preds = %pxa_mbus_xlate_by_fourcc.exit
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pad, align 4
  %tobool30.not = icmp eq ptr %64, null
  br i1 %tobool30.not, label %if.else.do.end57_crit_edge, label %land.lhs.true

if.else.do.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %set_fmt, align 4
  %tobool33.not = icmp eq ptr %66, null
  br i1 %tobool33.not, label %land.lhs.true.do.end57_crit_edge, label %if.else35

land.lhs.true.do.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

if.else35:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool36.not = icmp eq ptr %67, null
  br i1 %tobool36.not, label %if.else35.if.else43_crit_edge, label %land.lhs.true37

if.else35.if.else43_crit_edge:                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else43

land.lhs.true37:                                  ; preds = %if.else35
  %set_fmt38 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %set_fmt38 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_fmt38, align 4
  %tobool39.not = icmp eq ptr %69, null
  br i1 %tobool39.not, label %land.lhs.true37.if.else43_crit_edge, label %land.lhs.true37.if.end50_crit_edge

land.lhs.true37.if.end50_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

land.lhs.true37.if.else43_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else43

if.else43:                                        ; preds = %land.lhs.true37.if.else43_crit_edge, %if.else35.if.else43_crit_edge
  br label %if.end50

if.end50:                                         ; preds = %if.else43, %land.lhs.true37.if.end50_crit_edge
  %.sink = phi ptr [ %66, %if.else43 ], [ %69, %land.lhs.true37.if.end50_crit_edge ]
  %call47 = call i32 %.sink(ptr noundef nonnull %60, ptr noundef null, ptr noundef nonnull %format) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp52 = icmp slt i32 %call47, 0
  br i1 %cmp52, label %if.end50.do.end57_crit_edge, label %if.else60

if.end50.do.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

do.end57:                                         ; preds = %if.end50.do.end57_crit_edge, %land.lhs.true.do.end57_crit_edge, %if.else.do.end57_crit_edge, %pxa_mbus_xlate_by_fourcc.exit.do.end57_crit_edge
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %72 = ptrtoint ptr %pixelformat25 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pixelformat25, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.108, i32 noundef %73) #12
  br label %if.end73

if.else60:                                        ; preds = %if.end50
  %74 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fmt, align 4
  %76 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %height.i, align 4
  %78 = add i32 %77, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2017, i32 %78)
  %79 = icmp ult i32 %78, 2017
  %80 = add i32 %75, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 2001, i32 %80)
  %81 = icmp ult i32 %80, 2001
  %and.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool64.not126 = icmp eq i32 %and.i, 0
  %not. = and i1 %81, %79
  %tobool64.not = select i1 %not., i1 %tobool64.not126, i1 false
  br i1 %tobool64.not, label %if.else60.if.end73_crit_edge, label %do.end68

if.else60.if.end73_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

do.end68:                                         ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.110, i32 noundef %75, i32 noundef %77) #12
  br label %cleanup

if.end73:                                         ; preds = %if.else60.if.end73_crit_edge, %do.end57
  %current_fmt = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 6
  %84 = ptrtoint ptr %current_fmt to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %retval.0.i117, ptr %current_fmt, align 8
  %current_pix = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7
  %85 = call ptr @memcpy(ptr %current_pix, ptr %fmt, i32 48)
  %host_fmt.i118 = getelementptr inbounds %struct.pxa_camera_format_xlate, ptr %retval.0.i117, i32 0, i32 1
  %86 = ptrtoint ptr %host_fmt.i118 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %host_fmt.i118, align 4
  %bits_per_sample.i = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %bits_per_sample.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bits_per_sample.i, align 4
  %conv.i119 = zext i8 %89 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg.i) #9
  %90 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 4294967296, ptr %cfg.i, align 8
  %91 = ptrtoint ptr %host_fmt.i118 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %host_fmt.i118, align 4
  %fourcc.i = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %fourcc.i, align 4
  %sub.i = add nsw i32 %conv.i119, -1
  %shl.i = shl nuw i32 1, %sub.i
  %width_flags.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 19
  %95 = ptrtoint ptr %width_flags.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %width_flags.i, align 8
  %conv3.i = zext i16 %96 to i32
  %and.i120 = and i32 %shl.i, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120)
  %tobool.not.i121 = icmp eq i32 %and.i120, 0
  br i1 %tobool.not.i121, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.112, i32 noundef %conv.i119) #12
  br label %pxa_camera_set_bus_param.exit

if.end.i:                                         ; preds = %if.end73
  %channels.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 11
  %99 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %channels.i, align 8
  %platform_flags.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 15
  %100 = ptrtoint ptr %platform_flags.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %platform_flags.i, align 8
  %and4.i = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %..i = select i1 %tobool5.not.i, i32 2, i32 1
  %and10.i = and i32 %101, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %and18.i = and i32 %101, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %mbus_config.2.v.i = select i1 %tobool19.not.i, i32 32, i32 16
  %and26.i = and i32 %101, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %mbus_config.3.v.i = select i1 %tobool27.not.i, i32 128, i32 64
  %mbus_config.1.i = select i1 %tobool11.not.i, i32 264, i32 260
  %mbus_config.2.i = or i32 %mbus_config.1.i, %..i
  %mbus_config.3.i = or i32 %mbus_config.2.i, %mbus_config.2.v.i
  %or33.i = or i32 %mbus_config.3.i, %mbus_config.3.v.i
  %flags.i = getelementptr inbounds %struct.v4l2_mbus_config, ptr %cfg.i, i32 0, i32 1
  %102 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or33.i, ptr %flags.i, align 4
  %103 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sensor, align 8
  %tobool34.not.i = icmp eq ptr %104, null
  br i1 %tobool34.not.i, label %if.end.i.if.end57.i_crit_edge, label %if.else36.i

if.end.i.if.end57.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.else36.i:                                      ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %104, i32 0, i32 6
  %105 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %106, i32 0, i32 7
  %107 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pad.i, align 4
  %tobool37.not.i = icmp eq ptr %108, null
  br i1 %tobool37.not.i, label %if.else36.i.if.end67.i_crit_edge, label %land.lhs.true.i

if.else36.i.if.end67.i_crit_edge:                 ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

land.lhs.true.i:                                  ; preds = %if.else36.i
  %set_mbus_config.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %108, i32 0, i32 16
  %109 = ptrtoint ptr %set_mbus_config.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %set_mbus_config.i, align 4
  %tobool40.not.i = icmp eq ptr %110, null
  br i1 %tobool40.not.i, label %land.lhs.true.i.if.end67.i_crit_edge, label %if.else42.i

land.lhs.true.i.if.end67.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

if.else42.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool43.not.i = icmp eq ptr %111, null
  br i1 %tobool43.not.i, label %if.else42.i.if.else50.i_crit_edge, label %land.lhs.true44.i

if.else42.i.if.else50.i_crit_edge:                ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else50.i

land.lhs.true44.i:                                ; preds = %if.else42.i
  %set_mbus_config45.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %111, i32 0, i32 16
  %112 = ptrtoint ptr %set_mbus_config45.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %set_mbus_config45.i, align 4
  %tobool46.not.i = icmp eq ptr %113, null
  br i1 %tobool46.not.i, label %land.lhs.true44.i.if.else50.i_crit_edge, label %land.lhs.true44.i.if.end57.sink.split.i_crit_edge

land.lhs.true44.i.if.end57.sink.split.i_crit_edge: ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.sink.split.i

land.lhs.true44.i.if.else50.i_crit_edge:          ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else50.i

if.else50.i:                                      ; preds = %land.lhs.true44.i.if.else50.i_crit_edge, %if.else42.i.if.else50.i_crit_edge
  br label %if.end57.sink.split.i

if.end57.sink.split.i:                            ; preds = %if.else50.i, %land.lhs.true44.i.if.end57.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %110, %if.else50.i ], [ %113, %land.lhs.true44.i.if.end57.sink.split.i_crit_edge ]
  %call54.i = call i32 %.sink.i(ptr noundef nonnull %104, i32 noundef 0, ptr noundef nonnull %cfg.i) #9
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.end57.sink.split.i, %if.end.i.if.end57.i_crit_edge
  %__result.0.i = phi i32 [ -19, %if.end.i.if.end57.i_crit_edge ], [ %call54.i, %if.end57.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0.i)
  %cmp.i122 = icmp sgt i32 %__result.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__result.0.i)
  %cmp60.not.i = icmp eq i32 %__result.0.i, -515
  %or.cond.i = or i1 %cmp.i122, %cmp60.not.i
  br i1 %or.cond.i, label %if.end57.i.if.end67.i_crit_edge, label %do.end65.i

if.end57.i.if.end67.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

do.end65.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.115, i32 noundef %__result.0.i) #12
  br label %pxa_camera_set_bus_param.exit

if.end67.i:                                       ; preds = %if.end57.i.if.end67.i_crit_edge, %land.lhs.true.i.if.end67.i_crit_edge, %if.else36.i.if.end67.i_crit_edge
  %116 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %or33.i)
  %cmp69.not.i = icmp eq i32 %117, %or33.i
  br i1 %cmp69.not.i, label %if.end67.i.if.end92.i_crit_edge, label %if.then71.i

if.end67.i.if.end92.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i

if.then71.i:                                      ; preds = %if.end67.i
  %.masked.i = and i32 %117, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %..i, i32 %.masked.i)
  %cmp75.not.i = icmp eq i32 %..i, %.masked.i
  br i1 %cmp75.not.i, label %if.end82.i, label %do.end80.i

do.end80.i:                                       ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.118) #12
  br label %pxa_camera_set_bus_param.exit

if.end82.i:                                       ; preds = %if.then71.i
  %and84.i = and i32 %117, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %if.end82.i.if.end92.i_crit_edge, label %do.end89.i

if.end82.i.if.end92.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i

do.end89.i:                                       ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.121) #12
  br label %pxa_camera_set_bus_param.exit

if.end92.i:                                       ; preds = %if.end82.i.if.end92.i_crit_edge, %if.end67.i.if.end92.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y_skip_top.i.i) #9
  %122 = ptrtoint ptr %y_skip_top.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %y_skip_top.i.i, align 4, !annotation !367
  %123 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %sensor, align 8
  %tobool.not.i.i = icmp eq ptr %124, null
  br i1 %tobool.not.i.i, label %if.end92.i.if.then21.i.i_crit_edge, label %if.else.i.i

if.end92.i.if.then21.i.i_crit_edge:               ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i.i

if.else.i.i:                                      ; preds = %if.end92.i
  %ops.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %124, i32 0, i32 6
  %125 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops.i.i, align 4
  %sensor1.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %126, i32 0, i32 6
  %127 = ptrtoint ptr %sensor1.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %sensor1.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %128, null
  br i1 %tobool2.not.i.i, label %if.else.i.i.if.then21.i.i_crit_edge, label %land.lhs.true.i.i

if.else.i.i.if.then21.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %tobool5.not.i.i = icmp eq ptr %130, null
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.if.then21.i.i_crit_edge, label %if.else7.i.i

land.lhs.true.i.i.if.then21.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i.i

if.else7.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 6) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 6), align 4
  %tobool8.not.i.i = icmp eq ptr %131, null
  br i1 %tobool8.not.i.i, label %if.else7.i.i.if.else14.i.i_crit_edge, label %land.lhs.true9.i.i

if.else7.i.i.if.else14.i.i_crit_edge:             ; preds = %if.else7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else14.i.i

land.lhs.true9.i.i:                               ; preds = %if.else7.i.i
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %tobool11.not.i.i = icmp eq ptr %133, null
  br i1 %tobool11.not.i.i, label %land.lhs.true9.i.i.if.else14.i.i_crit_edge, label %land.lhs.true9.i.i.if.end20.i.i_crit_edge

land.lhs.true9.i.i.if.end20.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

land.lhs.true9.i.i.if.else14.i.i_crit_edge:       ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else14.i.i

if.else14.i.i:                                    ; preds = %land.lhs.true9.i.i.if.else14.i.i_crit_edge, %if.else7.i.i.if.else14.i.i_crit_edge
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else14.i.i, %land.lhs.true9.i.i.if.end20.i.i_crit_edge
  %.sink.i.i = phi ptr [ %130, %if.else14.i.i ], [ %133, %land.lhs.true9.i.i.if.end20.i.i_crit_edge ]
  %call18.i.i = call i32 %.sink.i.i(ptr noundef nonnull %124, ptr noundef nonnull %y_skip_top.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp.i.i, label %if.end20.i.i.if.then21.i.i_crit_edge, label %if.end20.i.i.if.end22.i.i_crit_edge

if.end20.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.end20.i.i.if.then21.i.i_crit_edge:             ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.end20.i.i.if.then21.i.i_crit_edge, %land.lhs.true.i.i.if.then21.i.i_crit_edge, %if.else.i.i.if.then21.i.i_crit_edge, %if.end92.i.if.then21.i.i_crit_edge
  %134 = ptrtoint ptr %y_skip_top.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %y_skip_top.i.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then21.i.i, %if.end20.i.i.if.end22.i.i_crit_edge
  %135 = ptrtoint ptr %current_fmt to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %current_fmt, align 8
  %host_fmt.i.i = getelementptr inbounds %struct.pxa_camera_format_xlate, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %host_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %host_fmt.i.i, align 4
  %bits_per_sample.i.i = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %138, i32 0, i32 5
  %139 = ptrtoint ptr %bits_per_sample.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %bits_per_sample.i.i, align 4
  %141 = zext i8 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.178)
  switch i8 %140, label %sw.bb24.i.i [
    i8 10, label %if.end22.i.i.sw.epilog.i.i_crit_edge
    i8 9, label %sw.bb23.i.i
  ]

if.end22.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb23.i.i:                                      ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb24.i.i:                                      ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb24.i.i, %sw.bb23.i.i, %if.end22.i.i.sw.epilog.i.i_crit_edge
  %bpp.0.i.i = phi i32 [ 0, %sw.bb24.i.i ], [ 32, %sw.bb23.i.i ], [ 64, %if.end22.i.i.sw.epilog.i.i_crit_edge ]
  %dw.0.i.i = phi i32 [ 2, %sw.bb24.i.i ], [ 3, %sw.bb23.i.i ], [ 4, %if.end22.i.i.sw.epilog.i.i_crit_edge ]
  %142 = ptrtoint ptr %platform_flags.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %platform_flags.i, align 8
  %base.i.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 10
  %144 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i.i, align 4
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #9, !srcloc !370
  %and50.i.i = and i32 %146, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i.i)
  %tobool51.not.i.i = icmp eq i32 %and50.i.i, 0
  br i1 %tobool51.not.i.i, label %sw.epilog.i.i.if.end56.i.i_crit_edge, label %if.then52.i.i

sw.epilog.i.i.if.end56.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i.i

if.then52.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and53.i.i = and i32 %146, -268435457
  %147 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %and53.i.i) #9, !srcloc !369
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.then52.i.i, %sw.epilog.i.i.if.end56.i.i_crit_edge
  %149 = ptrtoint ptr %current_pix to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %current_pix, align 4
  %sub.i.i = shl i32 %150, 15
  %shl.i.i = add i32 %sub.i.i, 67076096
  %and57.i.i = and i32 %shl.i.i, 67076096
  %or58.i.i = or i32 %dw.0.i.i, %bpp.0.i.i
  %or59.i.i = or i32 %or58.i.i, %and57.i.i
  %151 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %94, label %if.end56.i.i.pxa_camera_setup_cicr.exit.i_crit_edge [
    i32 1345466932, label %sw.bb60.i.i
    i32 1498831189, label %if.end56.i.i.sw.bb62.i.i_crit_edge
    i32 1498765654, label %if.end56.i.i.sw.bb62.i.i_crit_edge132
    i32 1448695129, label %if.end56.i.i.sw.bb62.i.i_crit_edge133
    i32 1431918169, label %if.end56.i.i.sw.bb62.i.i_crit_edge134
    i32 1329743698, label %sw.bb64.i.i
    i32 1346520914, label %sw.bb66.i.i
  ]

if.end56.i.i.sw.bb62.i.i_crit_edge134:            ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb62.i.i

if.end56.i.i.sw.bb62.i.i_crit_edge133:            ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb62.i.i

if.end56.i.i.sw.bb62.i.i_crit_edge132:            ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb62.i.i

if.end56.i.i.sw.bb62.i.i_crit_edge:               ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb62.i.i

if.end56.i.i.pxa_camera_setup_cicr.exit.i_crit_edge: ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_camera_setup_cicr.exit.i

sw.bb60.i.i:                                      ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 3, ptr %channels.i, align 8
  %or61.i.i = or i32 %or59.i.i, 1024
  br label %sw.bb62.i.i

sw.bb62.i.i:                                      ; preds = %sw.bb60.i.i, %if.end56.i.i.sw.bb62.i.i_crit_edge, %if.end56.i.i.sw.bb62.i.i_crit_edge132, %if.end56.i.i.sw.bb62.i.i_crit_edge133, %if.end56.i.i.sw.bb62.i.i_crit_edge134
  %cicr1.0.i.i = phi i32 [ %or59.i.i, %if.end56.i.i.sw.bb62.i.i_crit_edge ], [ %or59.i.i, %if.end56.i.i.sw.bb62.i.i_crit_edge132 ], [ %or59.i.i, %if.end56.i.i.sw.bb62.i.i_crit_edge133 ], [ %or59.i.i, %if.end56.i.i.sw.bb62.i.i_crit_edge134 ], [ %or61.i.i, %sw.bb60.i.i ]
  %or63.i.i = or i32 %cicr1.0.i.i, 16
  br label %pxa_camera_setup_cicr.exit.i

sw.bb64.i.i:                                      ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or65.i.i = or i32 %or59.i.i, -1073741688
  br label %pxa_camera_setup_cicr.exit.i

sw.bb66.i.i:                                      ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or67.i.i = or i32 %or59.i.i, 264
  br label %pxa_camera_setup_cicr.exit.i

pxa_camera_setup_cicr.exit.i:                     ; preds = %sw.bb66.i.i, %sw.bb64.i.i, %sw.bb62.i.i, %if.end56.i.i.pxa_camera_setup_cicr.exit.i_crit_edge
  %cicr1.1.i.i = phi i32 [ %or59.i.i, %if.end56.i.i.pxa_camera_setup_cicr.exit.i_crit_edge ], [ %or67.i.i, %sw.bb66.i.i ], [ %or65.i.i, %sw.bb64.i.i ], [ %or63.i.i, %sw.bb62.i.i ]
  %and39.i.i = shl i32 %117, 18
  %153 = and i32 %and39.i.i, 2097152
  %and34.i.i = shl i32 %117, 15
  %154 = and i32 %and34.i.i, 4194304
  %and29.i.i = shl i32 %143, 12
  %155 = and i32 %and29.i.i, 524288
  %and.i.i = shl i32 %143, 17
  %156 = and i32 %and.i.i, 8388608
  %157 = and i32 %and34.i.i, 1048576
  %height.i.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 7, i32 1
  %158 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %height.i.i, align 4
  %160 = ptrtoint ptr %y_skip_top.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %y_skip_top.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %161)
  %cmp74.i.i = icmp ugt i32 %161, 255
  %phi.bo.i.i = shl i32 %161, 24
  %cond.i.i = select i1 %cmp74.i.i, i32 -16777216, i32 %phi.bo.i.i
  %sub70.i.i = add i32 %159, 2047
  %and72.i.i = and i32 %sub70.i.i, 2047
  %or78.i.i = or i32 %cond.i.i, %and72.i.i
  %mclk_divisor.i.i = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 18
  %162 = ptrtoint ptr %mclk_divisor.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %mclk_divisor.i.i, align 4
  %164 = or i32 %153, %154
  %165 = or i32 %164, %157
  %166 = or i32 %165, %156
  %167 = or i32 %166, %155
  %or79.i.i = or i32 %167, %163
  %168 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base.i.i, align 4
  %add.ptr81.i.i = getelementptr i8, ptr %169, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i, i32 %cicr1.1.i.i) #9, !srcloc !369
  %170 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %base.i.i, align 4
  %add.ptr83.i.i = getelementptr i8, ptr %171, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.i.i, i32 0) #9, !srcloc !369
  %172 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %base.i.i, align 4
  %add.ptr85.i.i = getelementptr i8, ptr %173, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i.i, i32 %or78.i.i) #9, !srcloc !369
  %174 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %base.i.i, align 4
  %add.ptr87.i.i = getelementptr i8, ptr %175, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.i.i, i32 %or79.i.i) #9, !srcloc !369
  %176 = ptrtoint ptr %platform_flags.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %platform_flags.i, align 8
  %and90.i.i = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i.i)
  %tobool91.not.i.i = icmp eq i32 %and90.i.i, 0
  %cond92.i.i = select i1 %tobool91.not.i.i, i32 553648128, i32 0
  %or93.i.i = or i32 %and50.i.i, %cond92.i.i
  %or94.i.i = or i32 %or93.i.i, -2147482625
  %178 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %or94.i.i) #9, !srcloc !369
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y_skip_top.i.i) #9
  br label %pxa_camera_set_bus_param.exit

pxa_camera_set_bus_param.exit:                    ; preds = %pxa_camera_setup_cicr.exit.i, %do.end89.i, %do.end80.i, %do.end65.i, %do.end.i
  %retval.1.i = phi i32 [ %__result.0.i, %do.end65.i ], [ 0, %pxa_camera_setup_cicr.exit.i ], [ -22, %do.end.i ], [ -22, %do.end89.i ], [ -22, %do.end80.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg.i) #9
  br label %cleanup

cleanup:                                          ; preds = %pxa_camera_set_bus_param.exit, %do.end68, %if.end20.cleanup_crit_edge, %if.then19.critedge, %lor.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.1.i, %pxa_camera_set_bus_param.exit ], [ -22, %do.end68 ], [ -16, %if.then19.critedge ], [ -16, %lor.rhs.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxac_vidioc_try_fmt_vid_cap(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  %pad_cfg = alloca %struct.v4l2_subdev_pad_config, align 4
  %pad_state = alloca %struct.v4l2_subdev_state, align 4
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %pad_cfg) #9
  %2 = call ptr @memset(ptr %pad_cfg, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad_state) #9
  %3 = ptrtoint ptr %pad_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pad_cfg, ptr %pad_state, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #9
  %4 = call ptr @memset(ptr %format, i32 0, i32 88)
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixelformat, align 4
  %user_formats = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %user_formats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user_formats, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not8.i = icmp eq i32 %10, 0
  br i1 %tobool.not8.i, label %entry.do.end_crit_edge, label %for.body.i.preheader

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i.preheader:                             ; preds = %entry
  %host_fmt.i128 = getelementptr %struct.pxa_camera_format_xlate, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %host_fmt.i128 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host_fmt.i128, align 4
  %fourcc2.i129 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %fourcc2.i129 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fourcc2.i129, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %6)
  %cmp.i130 = icmp eq i32 %14, %6
  br i1 %cmp.i130, label %for.body.i.preheader.pxa_mbus_xlate_by_fourcc.exit_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.pxa_mbus_xlate_by_fourcc.exit_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_mbus_xlate_by_fourcc.exit

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.09.i131 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add i32 %i.09.i131, 1
  %arrayidx.i = getelementptr %struct.pxa_camera_format_xlate, ptr %8, i32 %inc.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %host_fmt.i = getelementptr %struct.pxa_camera_format_xlate, ptr %8, i32 %inc.i, i32 1
  %17 = ptrtoint ptr %host_fmt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host_fmt.i, align 4
  %fourcc2.i = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %fourcc2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fourcc2.i, align 4
  %cmp.i = icmp eq i32 %20, %6
  br i1 %cmp.i, label %for.body.i.pxa_mbus_xlate_by_fourcc.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.pxa_mbus_xlate_by_fourcc.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_mbus_xlate_by_fourcc.exit

pxa_mbus_xlate_by_fourcc.exit:                    ; preds = %for.body.i.pxa_mbus_xlate_by_fourcc.exit_crit_edge, %for.body.i.preheader.pxa_mbus_xlate_by_fourcc.exit_crit_edge
  %arrayidx10.i.lcssa = phi ptr [ %8, %for.body.i.preheader.pxa_mbus_xlate_by_fourcc.exit_crit_edge ], [ %arrayidx.i, %for.body.i.pxa_mbus_xlate_by_fourcc.exit_crit_edge ]
  %tobool.not = icmp eq ptr %arrayidx10.i.lcssa, null
  br i1 %tobool.not, label %pxa_mbus_xlate_by_fourcc.exit.do.end_crit_edge, label %if.end

pxa_mbus_xlate_by_fourcc.exit.do.end_crit_edge:   ; preds = %pxa_mbus_xlate_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %pxa_mbus_xlate_by_fourcc.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.123, i32 noundef %6) #12
  br label %cleanup

if.end:                                           ; preds = %pxa_mbus_xlate_by_fourcc.exit
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1345466932, i32 %6)
  %cmp = icmp eq i32 %6, 1345466932
  %cond = select i1 %cmp, i32 4, i32 0
  call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 48, i32 noundef 2048, i32 noundef 1, ptr noundef %height, i32 noundef 32, i32 noundef 2048, i32 noundef 0, i32 noundef %cond) #9
  %23 = ptrtoint ptr %arrayidx10.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx10.i.lcssa, align 4
  %25 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fmt, align 4
  %27 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %format1, align 4
  %28 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %34 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %colorspace4.i, align 4
  %37 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %conv.i = trunc i32 %39 to i16
  %40 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i, ptr %40, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %43 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %44 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %45 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %46 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %47 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %24, ptr %code9.i, align 4
  %sensor = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 4
  %49 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sensor, align 8
  %tobool4.not = icmp eq ptr %50, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pad, align 4
  %tobool6.not = icmp eq ptr %54, null
  br i1 %tobool6.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_fmt, align 4
  %tobool9.not = icmp eq ptr %56, null
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %if.else11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool12.not = icmp eq ptr %57, null
  br i1 %tobool12.not, label %if.else11.if.else19_crit_edge, label %land.lhs.true13

if.else11.if.else19_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else19

land.lhs.true13:                                  ; preds = %if.else11
  %set_fmt14 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %set_fmt14 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_fmt14, align 4
  %tobool15.not = icmp eq ptr %59, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else19_crit_edge, label %land.lhs.true13.if.end26_crit_edge

land.lhs.true13.if.end26_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.lhs.true13.if.else19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true13.if.else19_crit_edge, %if.else11.if.else19_crit_edge
  br label %if.end26

if.end26:                                         ; preds = %if.else19, %land.lhs.true13.if.end26_crit_edge
  %.sink = phi ptr [ %56, %if.else19 ], [ %59, %land.lhs.true13.if.end26_crit_edge ]
  %call23 = call i32 %.sink(ptr noundef nonnull %50, ptr noundef nonnull %pad_state, ptr noundef nonnull %format) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp27 = icmp slt i32 %call23, 0
  br i1 %cmp27, label %if.end26.cleanup_crit_edge, label %if.end29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %60 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %format1, align 4
  %62 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %fmt, align 4
  %63 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %height2.i, align 4
  %65 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %height, align 4
  %66 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %field3.i, align 4
  %68 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %field.i, align 4
  %69 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %colorspace4.i, align 4
  %71 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %colorspace.i, align 4
  %72 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %40, align 4
  %conv.i98 = zext i16 %73 to i32
  %74 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv.i98, ptr %37, align 4
  %75 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %quantization6.i, align 2
  %conv5.i100 = zext i16 %76 to i32
  %77 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv5.i100, ptr %quantization.i, align 4
  %78 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %xfer_func8.i, align 4
  %conv7.i103 = zext i16 %79 to i32
  %80 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv7.i103, ptr %xfer_func.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %switch = icmp ult i32 %67, 2
  br i1 %switch, label %sw.bb, label %do.end33

sw.bb:                                            ; preds = %if.end29
  %81 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %field.i, align 4
  %host_fmt = getelementptr inbounds %struct.pxa_camera_format_xlate, ptr %arrayidx10.i.lcssa, i32 0, i32 1
  %82 = ptrtoint ptr %host_fmt to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %host_fmt, align 4
  %layout.i = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %layout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.not.i = icmp eq i32 %85, 0
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.if.end40.sink.split_crit_edge

sw.bb.if.end40.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.sink.split

if.end.i:                                         ; preds = %sw.bb
  %packing.i = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %83, i32 0, i32 2
  %86 = ptrtoint ptr %packing.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %packing.i, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %87, label %if.end.i.cleanup_crit_edge [
    i32 0, label %if.end.i.if.end40.sink.split_crit_edge
    i32 1, label %if.end.i.pxa_mbus_bytes_per_line.exit_crit_edge
    i32 2, label %if.end.i.pxa_mbus_bytes_per_line.exit_crit_edge138
  ]

if.end.i.pxa_mbus_bytes_per_line.exit_crit_edge138: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_mbus_bytes_per_line.exit

if.end.i.pxa_mbus_bytes_per_line.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxa_mbus_bytes_per_line.exit

if.end.i.if.end40.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.sink.split

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

pxa_mbus_bytes_per_line.exit:                     ; preds = %if.end.i.pxa_mbus_bytes_per_line.exit_crit_edge, %if.end.i.pxa_mbus_bytes_per_line.exit_crit_edge138
  %mul6.i = shl i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul6.i)
  %cmp38 = icmp slt i32 %mul6.i, 0
  br i1 %cmp38, label %pxa_mbus_bytes_per_line.exit.cleanup_crit_edge, label %pxa_mbus_bytes_per_line.exit.if.end40_crit_edge

pxa_mbus_bytes_per_line.exit.if.end40_crit_edge:  ; preds = %pxa_mbus_bytes_per_line.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

pxa_mbus_bytes_per_line.exit.cleanup_crit_edge:   ; preds = %pxa_mbus_bytes_per_line.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.126, i32 noundef %67) #12
  br label %cleanup

if.end40.sink.split:                              ; preds = %if.end.i.if.end40.sink.split_crit_edge, %sw.bb.if.end40.sink.split_crit_edge
  %bits_per_sample1.i = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %83, i32 0, i32 5
  %91 = ptrtoint ptr %bits_per_sample1.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bits_per_sample1.i, align 4
  %conv2.i = zext i8 %92 to i32
  %mul3.i = mul i32 %61, %conv2.i
  %div412.i = lshr i32 %mul3.i, 3
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %pxa_mbus_bytes_per_line.exit.if.end40_crit_edge
  %retval.0.i106121 = phi i32 [ %mul6.i, %pxa_mbus_bytes_per_line.exit.if.end40_crit_edge ], [ %div412.i, %if.end40.sink.split ]
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %93 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %retval.0.i106121, ptr %bytesperline, align 4
  %94 = ptrtoint ptr %host_fmt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %host_fmt, align 4
  %96 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %height, align 4
  %layout.i107 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %95, i32 0, i32 4
  %98 = ptrtoint ptr %layout.i107 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %layout.i107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i108 = icmp eq i32 %99, 0
  br i1 %cmp.i108, label %if.then.i110, label %if.end.i112

if.then.i110:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i109 = mul i32 %97, %retval.0.i106121
  br label %pxa_mbus_image_size.exit

if.end.i112:                                      ; preds = %if.end40
  %packing.i111 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, ptr %95, i32 0, i32 2
  %100 = ptrtoint ptr %packing.i111 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %packing.i111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cond.i = icmp eq i32 %101, 1
  br i1 %cond.i, label %sw.bb.i113, label %if.end.i112.cleanup_crit_edge

if.end.i112.cleanup_crit_edge:                    ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i113:                                       ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #11
  %mul1.i = mul i32 %97, %retval.0.i106121
  %mul2.i = shl i32 %mul1.i, 1
  br label %pxa_mbus_image_size.exit

pxa_mbus_image_size.exit:                         ; preds = %sw.bb.i113, %if.then.i110
  %retval.0.i114 = phi i32 [ %mul.i109, %if.then.i110 ], [ %mul2.i, %sw.bb.i113 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i114)
  %cmp45 = icmp slt i32 %retval.0.i114, 0
  br i1 %cmp45, label %pxa_mbus_image_size.exit.cleanup_crit_edge, label %if.end47

pxa_mbus_image_size.exit.cleanup_crit_edge:       ; preds = %pxa_mbus_image_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %pxa_mbus_image_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %102 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %retval.0.i114, ptr %sizeimage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %pxa_mbus_image_size.exit.cleanup_crit_edge, %if.end.i112.cleanup_crit_edge, %do.end33, %pxa_mbus_bytes_per_line.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end33 ], [ 0, %if.end47 ], [ -22, %do.end ], [ %call23, %if.end26.cleanup_crit_edge ], [ %mul6.i, %pxa_mbus_bytes_per_line.exit.cleanup_crit_edge ], [ %retval.0.i114, %pxa_mbus_image_size.exit.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.i112.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad_state) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %pad_cfg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxac_vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.128, i32 noundef 32) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pxac_vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pxac_vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp.not = icmp eq i32 %i, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxac_vidioc_g_register(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 56, i64 %1)
  %cmp = icmp ugt i64 %1, 56
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %base = getelementptr inbounds %struct.pxa_camera_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %idx.ext = trunc i64 %1 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %idx.ext
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !370
  %conv = zext i32 %6 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %7 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %conv, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 4, ptr %size, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxac_vidioc_s_register(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 56, i64 %3)
  %cmp = icmp ugt i64 %3, 56
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp2.not = icmp eq i32 %5, 4
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %6 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %val, align 1
  %conv = trunc i64 %7 to i32
  %base = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %idx.ext = trunc i64 %3 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %idx.ext
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv) #9, !srcloc !369
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -34, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pxa_camera_get_formats(ptr nocapture noundef readonly %v4l2_dev, i32 noundef %idx, ptr noundef writeonly %xlate) #2 align 64 {
entry:
  %code = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %code) #9
  %0 = call ptr @memset(ptr %code, i32 0, i32 48)
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %idx, ptr %index, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %2 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %which, align 4
  %sensor = getelementptr inbounds %struct.pxa_camera_dev, ptr %v4l2_dev, i32 0, i32 4
  %3 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sensor, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pad, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_mbus_code = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %enum_mbus_code to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enum_mbus_code, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.else7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.else7.if.else15_crit_edge, label %land.lhs.true9

if.else7.if.else15_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else15

land.lhs.true9:                                   ; preds = %if.else7
  %enum_mbus_code10 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %enum_mbus_code10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enum_mbus_code10, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else15_crit_edge, label %land.lhs.true9.if.end21_crit_edge

land.lhs.true9.if.end21_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true9.if.else15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true9.if.else15_crit_edge, %if.else7.if.else15_crit_edge
  br label %if.end21

if.end21:                                         ; preds = %if.else15, %land.lhs.true9.if.end21_crit_edge
  %.sink = phi ptr [ %10, %if.else15 ], [ %13, %land.lhs.true9.if.end21_crit_edge ]
  %call19 = call i32 %.sink(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %code) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end21.cleanup_crit_edge, label %if.end23

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end21
  %code24 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %14 = ptrtoint ptr %code24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %code24, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end23
  %i.02.i.i = phi i32 [ 0, %if.end23 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.pxa_mbus_lookup, ptr @mbus_fmt, i32 %i.02.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp2.i.i = icmp eq i32 %17, %15
  br i1 %cmp2.i.i, label %pxa_mbus_get_fmtdesc.exit, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 30
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

pxa_mbus_get_fmtdesc.exit:                        ; preds = %for.body.i.i
  %fmt.i.i = getelementptr %struct.pxa_mbus_lookup, ptr @mbus_fmt, i32 %i.02.i.i, i32 1
  %tobool26.not = icmp eq ptr %fmt.i.i, null
  br i1 %tobool26.not, label %pxa_mbus_get_fmtdesc.exit.do.end_crit_edge, label %if.end30

pxa_mbus_get_fmtdesc.exit.do.end_crit_edge:       ; preds = %pxa_mbus_get_fmtdesc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %pxa_mbus_get_fmtdesc.exit.do.end_crit_edge, %for.inc.i.i.do.end_crit_edge
  %18 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %v4l2_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.129, i32 noundef %idx, i32 noundef %15) #12
  br label %cleanup

if.end30:                                         ; preds = %pxa_mbus_get_fmtdesc.exit
  %20 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %15, label %sw.default [
    i32 8198, label %sw.bb
    i32 8199, label %if.end30.sw.bb49_crit_edge
    i32 8200, label %if.end30.sw.bb49_crit_edge162
    i32 8201, label %if.end30.sw.bb49_crit_edge163
    i32 4104, label %if.end30.sw.bb49_crit_edge164
    i32 4100, label %if.end30.sw.bb49_crit_edge165
  ]

if.end30.sw.bb49_crit_edge165:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49

if.end30.sw.bb49_crit_edge164:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49

if.end30.sw.bb49_crit_edge163:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49

if.end30.sw.bb49_crit_edge162:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49

if.end30.sw.bb49_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49

sw.bb:                                            ; preds = %if.end30
  %tobool32.not = icmp eq ptr %xlate, null
  br i1 %tobool32.not, label %sw.bb.sw.epilog.thread_crit_edge, label %if.then33

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

if.then33:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %host_fmt = getelementptr inbounds %struct.pxa_camera_format_xlate, ptr %xlate, i32 0, i32 1
  %21 = ptrtoint ptr %host_fmt to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pxa_camera_formats, ptr %host_fmt, align 4
  %22 = ptrtoint ptr %xlate to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8198, ptr %xlate, align 4
  %incdec.ptr = getelementptr %struct.pxa_camera_format_xlate, ptr %xlate, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_get_formats.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_get_formats, %if.then42)) #9
          to label %sw.bb49 [label %if.then42], !srcloc !368

if.then42:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %v4l2_dev, align 8
  %25 = ptrtoint ptr %code24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %code24, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_get_formats.__UNIQUE_ID_ddebug321, ptr noundef %24, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.162, i32 noundef %26) #9
  br label %sw.bb49

sw.bb49:                                          ; preds = %if.then42, %if.then33, %if.end30.sw.bb49_crit_edge, %if.end30.sw.bb49_crit_edge162, %if.end30.sw.bb49_crit_edge163, %if.end30.sw.bb49_crit_edge164, %if.end30.sw.bb49_crit_edge165
  %formats.0 = phi i32 [ 0, %if.end30.sw.bb49_crit_edge ], [ 0, %if.end30.sw.bb49_crit_edge162 ], [ 0, %if.end30.sw.bb49_crit_edge163 ], [ 0, %if.end30.sw.bb49_crit_edge164 ], [ 0, %if.end30.sw.bb49_crit_edge165 ], [ 1, %if.then42 ], [ 1, %if.then33 ]
  %xlate.addr.0 = phi ptr [ %xlate, %if.end30.sw.bb49_crit_edge ], [ %xlate, %if.end30.sw.bb49_crit_edge162 ], [ %xlate, %if.end30.sw.bb49_crit_edge163 ], [ %xlate, %if.end30.sw.bb49_crit_edge164 ], [ %xlate, %if.end30.sw.bb49_crit_edge165 ], [ %incdec.ptr, %if.then42 ], [ %incdec.ptr, %if.then33 ]
  %tobool50.not = icmp eq ptr %xlate.addr.0, null
  br i1 %tobool50.not, label %sw.bb49.sw.epilog.thread_crit_edge, label %do.body52

sw.bb49.sw.epilog.thread_crit_edge:               ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

do.body52:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_get_formats.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_get_formats, %if.then64)) #9
          to label %if.then96 [label %if.then64], !srcloc !368

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %v4l2_dev, align 8
  %29 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fmt.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_get_formats.__UNIQUE_ID_ddebug322, ptr noundef %28, ptr noundef nonnull @.str.132, ptr noundef %30) #9
  br label %if.then96

sw.default:                                       ; preds = %if.end30
  %packing.i = getelementptr %struct.pxa_mbus_lookup, ptr @mbus_fmt, i32 %i.02.i.i, i32 1, i32 2
  %31 = ptrtoint ptr %packing.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %packing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i = icmp eq i32 %32, 0
  br i1 %cmp.i, label %sw.default.if.end72_crit_edge, label %lor.lhs.false.i

sw.default.if.end72_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

lor.lhs.false.i:                                  ; preds = %sw.default
  %bits_per_sample.i = getelementptr %struct.pxa_mbus_lookup, ptr @mbus_fmt, i32 %i.02.i.i, i32 1, i32 5
  %33 = ptrtoint ptr %bits_per_sample.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bits_per_sample.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %34)
  %cmp1.i = icmp eq i8 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp4.i = icmp eq i32 %32, 1
  %or.cond.i = select i1 %cmp1.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end72_crit_edge, label %pxa_camera_packing_supported.exit

lor.lhs.false.i.if.end72_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

pxa_camera_packing_supported.exit:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %34)
  %cmp8.i = icmp ugt i8 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp11.i = icmp eq i32 %32, 2
  %spec.select.i = select i1 %cmp8.i, i1 %cmp11.i, i1 false
  br i1 %spec.select.i, label %pxa_camera_packing_supported.exit.if.end72_crit_edge, label %pxa_camera_packing_supported.exit.cleanup_crit_edge

pxa_camera_packing_supported.exit.cleanup_crit_edge: ; preds = %pxa_camera_packing_supported.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

pxa_camera_packing_supported.exit.if.end72_crit_edge: ; preds = %pxa_camera_packing_supported.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end72:                                         ; preds = %pxa_camera_packing_supported.exit.if.end72_crit_edge, %lor.lhs.false.i.if.end72_crit_edge, %sw.default.if.end72_crit_edge
  %tobool73.not = icmp eq ptr %xlate, null
  br i1 %tobool73.not, label %if.end72.sw.epilog.thread_crit_edge, label %do.body75

if.end72.sw.epilog.thread_crit_edge:              ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

do.body75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_get_formats.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_get_formats, %if.then87)) #9
          to label %if.then96 [label %if.then87], !srcloc !368

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %v4l2_dev, align 8
  %37 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fmt.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_get_formats.__UNIQUE_ID_ddebug323, ptr noundef %36, ptr noundef nonnull @.str.133, ptr noundef %38) #9
  br label %if.then96

sw.epilog.thread:                                 ; preds = %if.end72.sw.epilog.thread_crit_edge, %sw.bb49.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge
  %formats.1.ph = phi i32 [ %formats.0, %sw.bb49.sw.epilog.thread_crit_edge ], [ 0, %if.end72.sw.epilog.thread_crit_edge ], [ 1, %sw.bb.sw.epilog.thread_crit_edge ]
  %inc94154 = add nuw nsw i32 %formats.1.ph, 1
  br label %cleanup

if.then96:                                        ; preds = %if.then87, %do.body75, %if.then64, %do.body52
  %formats.1 = phi i32 [ 0, %if.then87 ], [ %formats.0, %if.then64 ], [ %formats.0, %do.body52 ], [ 0, %do.body75 ]
  %xlate.addr.1 = phi ptr [ %xlate, %if.then87 ], [ %xlate.addr.0, %if.then64 ], [ %xlate.addr.0, %do.body52 ], [ %xlate, %do.body75 ]
  %inc94 = add nuw nsw i32 %formats.1, 1
  %host_fmt97 = getelementptr inbounds %struct.pxa_camera_format_xlate, ptr %xlate.addr.1, i32 0, i32 1
  %39 = ptrtoint ptr %host_fmt97 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %fmt.i.i, ptr %host_fmt97, align 4
  %40 = ptrtoint ptr %code24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %code24, align 4
  %42 = ptrtoint ptr %xlate.addr.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %xlate.addr.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %sw.epilog.thread, %pxa_camera_packing_supported.exit.cleanup_crit_edge, %do.end, %if.end21.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %pxa_camera_packing_supported.exit.cleanup_crit_edge ], [ %inc94, %if.then96 ], [ %inc94154, %sw.epilog.thread ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %code) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_camera_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !370
  %save_cicr = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %save_cicr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %save_cicr, align 4
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !370
  %arrayidx7 = getelementptr %struct.pxa_camera_dev, ptr %1, i32 0, i32 26, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx7, align 4
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #9, !srcloc !370
  %arrayidx13 = getelementptr %struct.pxa_camera_dev, ptr %1, i32 0, i32 26, i32 2
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx13, align 4
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #9, !srcloc !370
  %arrayidx19 = getelementptr %struct.pxa_camera_dev, ptr %1, i32 0, i32 26, i32 3
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx19, align 4
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr21 = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9, !srcloc !370
  %arrayidx25 = getelementptr %struct.pxa_camera_dev, ptr %1, i32 0, i32 26, i32 4
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx25, align 4
  %sensor = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sensor, align 8
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.i:                                        ; preds = %entry
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i, label %if.else.i.if.end_crit_edge, label %land.lhs.true.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_power.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %s_power.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_power.i, align 4
  %tobool4.not.i = icmp eq ptr %29, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.else6.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %30 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool7.not.i = icmp eq ptr %30, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %s_power9.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %s_power9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_power9.i, align 4
  %tobool10.not.i = icmp eq ptr %32, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.i_crit_edge

land.lhs.true8.i.if.end19.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.i_crit_edge
  %.sink.i = phi ptr [ %29, %if.else13.i ], [ %32, %land.lhs.true8.i.if.end19.i_crit_edge ]
  %call17.i = tail call i32 %.sink.i(ptr noundef nonnull %23, i32 noundef 0) #9
  %33 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %call17.i, label %do.end.i [
    i32 -515, label %if.end19.i.if.end_crit_edge
    i32 0, label %if.end19.i.if.end_crit_edge42
  ]

if.end19.i.if.end_crit_edge42:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end19.i.if.end_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end.i:                                         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.166, i32 noundef %call17.i) #12
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.end19.i.if.end_crit_edge, %if.end19.i.if.end_crit_edge42, %land.lhs.true.i.if.end_crit_edge, %if.else.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %call17.i, %do.end.i ], [ 0, %if.end19.i.if.end_crit_edge ], [ 0, %land.lhs.true.i.if.end_crit_edge ], [ 0, %if.else.i.if.end_crit_edge ], [ 0, %if.end19.i.if.end_crit_edge42 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_camera_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %save_cicr = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %save_cicr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %save_cicr, align 4
  %and = and i32 %3, -268435457
  %base = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %and) #9, !srcloc !369
  %arrayidx3 = getelementptr %struct.pxa_camera_dev, ptr %1, i32 0, i32 26, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %7) #9, !srcloc !369
  %arrayidx8 = getelementptr %struct.pxa_camera_dev, ptr %1, i32 0, i32 26, i32 2
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %11) #9, !srcloc !369
  %arrayidx13 = getelementptr %struct.pxa_camera_dev, ptr %1, i32 0, i32 26, i32 3
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx13, align 4
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %15) #9, !srcloc !369
  %arrayidx18 = getelementptr %struct.pxa_camera_dev, ptr %1, i32 0, i32 26, i32 4
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18, align 4
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %19) #9, !srcloc !369
  %sensor = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sensor, align 8
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %entry.land.lhs.true_crit_edge, label %if.else.i

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.else.i:                                        ; preds = %entry
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i, label %if.else.i.land.lhs.true_crit_edge, label %land.lhs.true.i

if.else.i.land.lhs.true_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_power.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %s_power.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_power.i, align 4
  %tobool4.not.i = icmp eq ptr %29, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.land.lhs.true_crit_edge, label %if.else6.i

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %30 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool7.not.i = icmp eq ptr %30, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %s_power9.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %s_power9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_power9.i, align 4
  %tobool10.not.i = icmp eq ptr %32, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.i_crit_edge

land.lhs.true8.i.if.end19.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.i_crit_edge
  %.sink.i = phi ptr [ %29, %if.else13.i ], [ %32, %land.lhs.true8.i.if.end19.i_crit_edge ]
  %call17.i = tail call i32 %.sink.i(ptr noundef nonnull %23, i32 noundef 1) #9
  %33 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %call17.i, label %if.end [
    i32 -515, label %if.end19.i.land.lhs.true_crit_edge
    i32 0, label %if.end19.i.land.lhs.true_crit_edge49
  ]

if.end19.i.land.lhs.true_crit_edge49:             ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end19.i.land.lhs.true_crit_edge:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end:                                           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.165, i32 noundef %call17.i) #12
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end19.i.land.lhs.true_crit_edge, %if.end19.i.land.lhs.true_crit_edge49, %land.lhs.true.i.land.lhs.true_crit_edge, %if.else.i.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %active = getelementptr inbounds %struct.pxa_camera_dev, ptr %1, i32 0, i32 24
  %36 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %active, align 8
  %tobool23.not = icmp eq ptr %37, null
  br i1 %tobool23.not, label %land.lhs.true.if.end25_crit_edge, label %if.then24

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_camera_start_capture.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_camera_resume, %if.then.i)) #9
          to label %pxa_camera_start_capture.exit [label %if.then.i], !srcloc !368

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_camera_start_capture.__UNIQUE_ID_ddebug302, ptr noundef %39, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.71) #9
  br label %pxa_camera_start_capture.exit

pxa_camera_start_capture.exit:                    ; preds = %if.then.i, %if.then24
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 20
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !370
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add.ptr6.i = getelementptr i8, ptr %44, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %42) #9, !srcloc !369
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #9, !srcloc !370
  %or.i = and i32 %47, -268435459
  %and.i = or i32 %or.i, 268435456
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %and.i) #9, !srcloc !369
  br label %if.end25

if.end25:                                         ; preds = %pxa_camera_start_capture.exit, %land.lhs.true.if.end25_crit_edge, %if.end
  %ret.047 = phi i32 [ 0, %pxa_camera_start_capture.exit ], [ 0, %land.lhs.true.if.end25_crit_edge ], [ %call17.i, %if.end ]
  ret i32 %ret.047
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !49, !50, !51, !53, !55, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !138, !139, !140, !142, !143, !145, !146, !147, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !185, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !209, !211, !213, !215, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !258, !259, !261, !263, !264, !265, !266, !268, !269, !271, !272, !274, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !340, !341, !342, !343, !344, !346, !347, !348, !349, !351, !352, !353, !354, !356}
!llvm.module.flags = !{!358, !359, !360, !361, !362, !363, !364, !365}
!llvm.ident = !{!366}

!0 = !{ptr @__initcall__kmod_pxa_camera__326_2464_pxa_camera_driver_init6, !1, !"__initcall__kmod_pxa_camera__326_2464_pxa_camera_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/pxa_camera.c", i32 2464, i32 1}
!2 = !{ptr @__exitcall_pxa_camera_driver_exit, !1, !"__exitcall_pxa_camera_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description327, !4, !"__UNIQUE_ID_description327", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/pxa_camera.c", i32 2466, i32 1}
!5 = !{ptr @__UNIQUE_ID_author328, !6, !"__UNIQUE_ID_author328", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/pxa_camera.c", i32 2467, i32 1}
!7 = !{ptr @__UNIQUE_ID_file329, !8, !"__UNIQUE_ID_file329", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/pxa_camera.c", i32 2468, i32 1}
!9 = !{ptr @__UNIQUE_ID_license330, !8, !"__UNIQUE_ID_license330", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version331, !11, !"__UNIQUE_ID_version331", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/pxa_camera.c", i32 2469, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias332, !17, !"__UNIQUE_ID_alias332", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/pxa_camera.c", i32 2470, i32 1}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/pxa_camera.c", i32 2456, i32 11}
!20 = !{ptr @pxa_camera_driver, !21, !"pxa_camera_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/pxa_camera.c", i32 2454, i32 31}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/pxa_camera.c", i32 2283, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pxa_camera_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @pxa_camera_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/pxa_camera.c", i32 2319, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pxa_camera_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @pxa_camera_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/pxa_camera.c", i32 2329, i32 3}
!37 = !{ptr @pxa_camera_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @pxa_camera_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @pxa_camera_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/pxa_camera.c", i32 2337, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pxa_camera_probe.__key.17, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/pxa_camera.c", i32 2338, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/pxa_camera.c", i32 2351, i32 53}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/pxa_camera.c", i32 2353, i32 3}
!49 = !{ptr @pxa_camera_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pxa_camera_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/pxa_camera.c", i32 2357, i32 53}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/pxa_camera.c", i32 2359, i32 3}
!55 = !{ptr @pxa_camera_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @pxa_camera_probe._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/pxa_camera.c", i32 2364, i32 53}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/pxa_camera.c", i32 2366, i32 3}
!61 = !{ptr @pxa_camera_probe._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @pxa_camera_probe._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/pxa_camera.c", i32 2375, i32 4}
!65 = !{ptr @pxa_camera_probe._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @pxa_camera_probe._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/pxa_camera.c", i32 2385, i32 3}
!69 = !{ptr @pxa_camera_probe._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @pxa_camera_probe._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/pxa_camera.c", i32 2202, i32 37}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/pxa_camera.c", i32 2211, i32 3}
!75 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @pxa_camera_pdata_from_dt._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @pxa_camera_pdata_from_dt._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/pxa_camera.c", i32 2217, i32 3}
!80 = !{ptr @pxa_camera_pdata_from_dt._entry.40, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @pxa_camera_pdata_from_dt._entry_ptr.42, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/pxa_camera.c", i32 1088, i32 3}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mclk_get_divisor._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @mclk_get_divisor._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/pxa_camera.c", i32 1099, i32 2}
!89 = !{ptr @mclk_get_divisor.__UNIQUE_ID_ddebug308, !88, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/pxa_camera.c", i32 1177, i32 2}
!92 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @pxa_camera_irq.__UNIQUE_ID_ddebug310, !91, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/pxa_camera.c", i32 1155, i32 2}
!96 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @pxa_camera_eof.__UNIQUE_ID_ddebug309, !95, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/pxa_camera.c", i32 877, i32 3}
!100 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @pxa_dma_start_channels.__UNIQUE_ID_ddebug299, !99, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/pxa_camera.c", i32 1528, i32 2}
!104 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @pxa_camera_init_videobuf2.__UNIQUE_ID_ddebug320, !103, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!106 = !{ptr @pxac_vb2_ops, !107, !"pxac_vb2_ops", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/pxa_camera.c", i32 1498, i32 29}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/pxa_camera.c", i32 1444, i32 2}
!110 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @pxac_vb2_queue_setup.__UNIQUE_ID_ddebug317, !109, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/pxa_camera.c", i32 1429, i32 2}
!114 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @pxac_vb2_init.__UNIQUE_ID_ddebug316, !113, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/pxa_camera.c", i32 1332, i32 3}
!118 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @pxa_buffer_init._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @pxa_buffer_init._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/pxa_camera.c", i32 829, i32 3}
!123 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @pxa_init_dma_channel._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @pxa_init_dma_channel._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/platform/pxa_camera.c", i32 850, i32 2}
!128 = !{ptr @pxa_init_dma_channel.__UNIQUE_ID_ddebug298, !127, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/pxa_camera.c", i32 1010, i32 2}
!131 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @pxa_camera_dma_irq.__UNIQUE_ID_ddebug306, !130, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/pxa_camera.c", i32 1056, i32 3}
!135 = !{ptr @pxa_camera_dma_irq.__UNIQUE_ID_ddebug307, !134, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/pxa_camera.c", i32 937, i32 2}
!138 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @pxa_camera_stop_capture.__UNIQUE_ID_ddebug303, !137, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/pxa_camera.c", i32 888, i32 3}
!142 = !{ptr @pxa_dma_stop_channels.__UNIQUE_ID_ddebug300, !141, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/pxa_camera.c", i32 901, i32 3}
!145 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @pxa_dma_add_tail_buf.__UNIQUE_ID_ddebug301, !144, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/pxa_camera.c", i32 919, i32 2}
!149 = !{ptr @pxa_camera_start_capture.__UNIQUE_ID_ddebug302, !148, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/platform/pxa_camera.c", i32 953, i32 2}
!152 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @pxa_camera_wakeup.__UNIQUE_ID_ddebug304, !151, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/platform/pxa_camera.c", i32 989, i32 2}
!156 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @pxa_camera_check_link_miss.__UNIQUE_ID_ddebug305, !155, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/platform/pxa_camera.c", i32 1398, i32 2}
!160 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @pxac_vb2_prepare.__UNIQUE_ID_ddebug315, !159, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!162 = distinct !{null, !163, !"__already_done", i1 false, i1 false}
!163 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!164 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/pxa_camera.c", i32 1354, i32 2}
!167 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @pxac_vb2_cleanup.__UNIQUE_ID_ddebug313, !166, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/pxa_camera.c", i32 1475, i32 2}
!171 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @pxac_vb2_start_streaming.__UNIQUE_ID_ddebug318, !170, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/platform/pxa_camera.c", i32 1490, i32 2}
!175 = !{ptr @.str.84, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @pxac_vb2_stop_streaming.__UNIQUE_ID_ddebug319, !174, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/platform/pxa_camera.c", i32 1364, i32 2}
!179 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @pxac_vb2_queue.__UNIQUE_ID_ddebug314, !178, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!181 = !{ptr @pxa_camera_sensor_ops, !182, !"pxa_camera_sensor_ops", i1 false, i1 false}
!182 = !{!"../drivers/media/platform/pxa_camera.c", i32 2148, i32 52}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/platform/pxa_camera.c", i32 2058, i32 2}
!185 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.89, !184, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @pxa_camera_sensor_bound._entry, !184, !"_entry", i1 false, i1 false}
!188 = !{ptr @pxa_camera_sensor_bound._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/pxa_camera.c", i32 2072, i32 3}
!191 = !{ptr @pxa_camera_sensor_bound._entry.90, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @pxa_camera_sensor_bound._entry_ptr.92, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/platform/pxa_camera.c", i32 2099, i32 2}
!195 = !{ptr @pxa_camera_sensor_bound._entry.93, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @pxa_camera_sensor_bound._entry_ptr.95, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.97, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/platform/pxa_camera.c", i32 2108, i32 3}
!199 = !{ptr @pxa_camera_sensor_bound._entry.96, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @pxa_camera_sensor_bound._entry_ptr.98, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/platform/pxa_camera.c", i32 2111, i32 3}
!203 = !{ptr @pxa_camera_sensor_bound._entry.99, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @pxa_camera_sensor_bound._entry_ptr.101, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @pxa_camera_videodev_template, !206, !"pxa_camera_videodev_template", i1 false, i1 false}
!206 = !{!"../drivers/media/platform/pxa_camera.c", i32 2035, i32 34}
!207 = !{ptr @pxa_camera_fops, !208, !"pxa_camera_fops", i1 false, i1 false}
!208 = !{!"../drivers/media/platform/pxa_camera.c", i32 1997, i32 42}
!209 = !{ptr @pxa_camera_ioctl_ops, !210, !"pxa_camera_ioctl_ops", i1 false, i1 false}
!210 = !{!"../drivers/media/platform/pxa_camera.c", i32 2007, i32 36}
!211 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/platform/pxa_camera.c", i32 1907, i32 25}
!213 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/platform/pxa_camera.c", i32 695, i32 49}
!215 = distinct !{null, !216, !"pxa_cam_driver_description", i1 false, i1 false}
!216 = !{!"../drivers/media/platform/pxa_camera.c", i32 695, i32 20}
!217 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/platform/pxa_camera.c", i32 1783, i32 2}
!219 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @pxac_vidioc_g_fmt_vid_cap.__UNIQUE_ID_ddebug324, !218, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/platform/pxa_camera.c", i32 1867, i32 2}
!223 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @pxac_vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug325, !222, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!225 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/platform/pxa_camera.c", i32 1887, i32 3}
!227 = !{ptr @pxac_vidioc_s_fmt_vid_cap._entry, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @pxac_vidioc_s_fmt_vid_cap._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.110, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/platform/pxa_camera.c", i32 1891, i32 3}
!231 = !{ptr @pxac_vidioc_s_fmt_vid_cap._entry.109, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @pxac_vidioc_s_fmt_vid_cap._entry_ptr.111, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.112, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/platform/pxa_camera.c", i32 1546, i32 3}
!235 = !{ptr @.str.113, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @pxa_camera_set_bus_param._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @pxa_camera_set_bus_param._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.115, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/platform/pxa_camera.c", i32 1579, i32 3}
!240 = !{ptr @pxa_camera_set_bus_param._entry.114, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @pxa_camera_set_bus_param._entry_ptr.116, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.118, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/platform/pxa_camera.c", i32 1596, i32 4}
!244 = !{ptr @pxa_camera_set_bus_param._entry.117, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @pxa_camera_set_bus_param._entry_ptr.119, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.121, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/platform/pxa_camera.c", i32 1602, i32 4}
!248 = !{ptr @pxa_camera_set_bus_param._entry.120, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @pxa_camera_set_bus_param._entry_ptr.122, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.123, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/platform/pxa_camera.c", i32 1807, i32 3}
!252 = !{ptr @.str.124, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @pxac_vidioc_try_fmt_vid_cap._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @pxac_vidioc_try_fmt_vid_cap._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.126, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/platform/pxa_camera.c", i32 1836, i32 3}
!257 = !{ptr @pxac_vidioc_try_fmt_vid_cap._entry.125, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @pxac_vidioc_try_fmt_vid_cap._entry_ptr.127, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.128, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/platform/pxa_camera.c", i32 1920, i32 19}
!261 = !{ptr @.str.129, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/platform/pxa_camera.c", i32 1653, i32 3}
!263 = !{ptr @.str.130, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @pxa_camera_get_formats._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @pxa_camera_get_formats._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.131, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/platform/pxa_camera.c", i32 1665, i32 4}
!268 = !{ptr @pxa_camera_get_formats.__UNIQUE_ID_ddebug321, !267, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!269 = !{ptr @.str.132, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/platform/pxa_camera.c", i32 1676, i32 4}
!271 = !{ptr @pxa_camera_get_formats.__UNIQUE_ID_ddebug322, !270, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!272 = !{ptr @.str.133, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/platform/pxa_camera.c", i32 1684, i32 4}
!274 = !{ptr @pxa_camera_get_formats.__UNIQUE_ID_ddebug323, !273, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!275 = !{ptr @.str.134, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/platform/pxa_camera.c", i32 259, i32 13}
!277 = !{ptr @.str.135, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/platform/pxa_camera.c", i32 269, i32 13}
!279 = !{ptr @.str.136, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/platform/pxa_camera.c", i32 279, i32 13}
!281 = !{ptr @.str.137, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/platform/pxa_camera.c", i32 289, i32 13}
!283 = !{ptr @.str.138, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/platform/pxa_camera.c", i32 299, i32 13}
!285 = !{ptr @.str.139, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/platform/pxa_camera.c", i32 309, i32 13}
!287 = !{ptr @.str.140, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/platform/pxa_camera.c", i32 319, i32 13}
!289 = !{ptr @.str.141, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/platform/pxa_camera.c", i32 329, i32 13}
!291 = !{ptr @.str.142, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/platform/pxa_camera.c", i32 339, i32 13}
!293 = !{ptr @.str.143, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/platform/pxa_camera.c", i32 349, i32 13}
!295 = !{ptr @.str.144, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/platform/pxa_camera.c", i32 359, i32 13}
!297 = !{ptr @.str.145, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/platform/pxa_camera.c", i32 369, i32 13}
!299 = !{ptr @.str.146, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/platform/pxa_camera.c", i32 379, i32 13}
!301 = !{ptr @.str.147, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/media/platform/pxa_camera.c", i32 389, i32 13}
!303 = !{ptr @.str.148, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/platform/pxa_camera.c", i32 399, i32 13}
!305 = !{ptr @.str.149, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/media/platform/pxa_camera.c", i32 429, i32 13}
!307 = !{ptr @.str.150, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/platform/pxa_camera.c", i32 439, i32 13}
!309 = !{ptr @.str.151, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/media/platform/pxa_camera.c", i32 449, i32 13}
!311 = !{ptr @.str.152, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/platform/pxa_camera.c", i32 459, i32 13}
!313 = !{ptr @.str.153, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/media/platform/pxa_camera.c", i32 469, i32 13}
!315 = !{ptr @.str.154, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/platform/pxa_camera.c", i32 479, i32 13}
!317 = !{ptr @.str.155, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/platform/pxa_camera.c", i32 489, i32 13}
!319 = !{ptr @.str.156, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/platform/pxa_camera.c", i32 499, i32 13}
!321 = !{ptr @.str.157, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/platform/pxa_camera.c", i32 509, i32 13}
!323 = !{ptr @.str.158, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/platform/pxa_camera.c", i32 519, i32 13}
!325 = !{ptr @.str.159, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/media/platform/pxa_camera.c", i32 529, i32 13}
!327 = !{ptr @.str.160, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/platform/pxa_camera.c", i32 539, i32 13}
!329 = !{ptr @.str.161, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/platform/pxa_camera.c", i32 549, i32 13}
!331 = !{ptr @mbus_fmt, !332, !"mbus_fmt", i1 false, i1 false}
!332 = !{!"../drivers/media/platform/pxa_camera.c", i32 254, i32 37}
!333 = !{ptr @.str.162, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/media/platform/pxa_camera.c", i32 1616, i32 13}
!335 = !{ptr @pxa_camera_formats, !336, !"pxa_camera_formats", i1 false, i1 false}
!336 = !{!"../drivers/media/platform/pxa_camera.c", i32 1613, i32 39}
!337 = !{ptr @.str.163, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/platform/pxa_camera.c", i32 1948, i32 3}
!339 = !{ptr @.str.164, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @pxac_sensor_set_power._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @pxac_sensor_set_power._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.165, !338, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.166, !338, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @.str.167, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/media/platform/pxa_camera.c", i32 2130, i32 2}
!346 = !{ptr @.str.168, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @pxa_camera_sensor_unbind._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @pxa_camera_sensor_unbind._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.169, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/platform/pxa_camera.c", i32 2438, i32 2}
!351 = !{ptr @.str.170, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @pxa_camera_remove._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @pxa_camera_remove._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @pxa_camera_of_match, !355, !"pxa_camera_of_match", i1 false, i1 false}
!355 = !{!"../drivers/media/platform/pxa_camera.c", i32 2448, i32 34}
!356 = !{ptr @pxa_camera_pm, !357, !"pxa_camera_pm", i1 false, i1 false}
!357 = !{!"../drivers/media/platform/pxa_camera.c", i32 2443, i32 32}
!358 = !{i32 1, !"wchar_size", i32 2}
!359 = !{i32 1, !"min_enum_size", i32 4}
!360 = !{i32 8, !"branch-target-enforcement", i32 0}
!361 = !{i32 8, !"sign-return-address", i32 0}
!362 = !{i32 8, !"sign-return-address-all", i32 0}
!363 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!364 = !{i32 7, !"uwtable", i32 1}
!365 = !{i32 7, !"frame-pointer", i32 2}
!366 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!367 = !{!"auto-init"}
!368 = !{i64 2149018345, i64 2149018350, i64 2149018363, i64 2149018407, i64 2149018441, i64 2149018462}
!369 = !{i64 4100578}
!370 = !{i64 4100996}
!371 = !{!"branch_weights", i32 2000, i32 1}
!372 = !{!"branch_weights", i32 1, i32 2000}
