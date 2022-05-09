; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rcar-vin/rcar-core.c_pt.bc'
source_filename = "../drivers/media/platform/rcar-vin/rcar-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rvin_info = type { i32, i8, i8, i8, i32, i32, ptr }
%struct.rvin_group_route = type { i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.rvin_dev = type { ptr, ptr, ptr, %struct.video_device, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.v4l2_async_notifier, %struct.rvin_parallel_entity, ptr, i32, %struct.media_pad, %struct.mutex, %struct.vb2_queue, ptr, i32, %struct.spinlock, [3 x %struct.anon.102], %struct.list_head, i32, i32, i8, i32, i32, %struct.v4l2_pix_format, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i64, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rvin_parallel_entity = type { ptr, ptr, i32, %struct.v4l2_fwnode_bus_parallel, i32, i32 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.anon.102 = type { ptr, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.103, i32, i32 }
%union.anon.103 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.rvin_group = type { %struct.kref, %struct.media_device, %struct.mutex, i32, %struct.v4l2_async_notifier, [32 x ptr], ptr, [4 x %struct.anon.101] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.anon.101 = type { ptr, ptr }
%struct.v4l2_async_subdev = type { i32, %union.anon.96, %struct.list_head, %struct.list_head }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { i32, i16 }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.105, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.105 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.85, %union.anon.86, ptr, i32, i8 }
%union.anon.85 = type { ptr }
%union.anon.86 = type { ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_rcar_vin__311_1629_rcar_vin_driver_init6 = internal global ptr @rcar_vin_driver_init, section ".initcall6.init", align 4
@rcar_vin_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_vin_probe, ptr @rcar_vin_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rvin_of_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_vin_driver_exit = internal global ptr @rcar_vin_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author312 = internal constant [66 x i8] c"rcar_vin.author=Niklas S\C3\B6derlund <niklas.soderlund@ragnatech.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_description313 = internal constant [58 x i8] c"rcar_vin.description=Renesas R-Car VIN camera host driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [55 x i8] c"rcar_vin.file=drivers/media/platform/rcar-vin/rcar-vin\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [21 x i8] c"rcar_vin.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rcar-vin\00", [23 x i8] zeroinitializer }, align 32
@rvin_of_id_table = internal constant { [17 x %struct.of_device_id], [860 x i8] } { [17 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a774a1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a7796 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a774b1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a77965 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a774c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a77990 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a774e1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a774e1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a7778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_m1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_h1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-vin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a7795 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a7796 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a77961\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a7796 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a77965\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a77965 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a77970\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a77970 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a77980\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a77980 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a77990 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a77995\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a77995 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a779a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a779a0 }, %struct.of_device_id zeroinitializer], [860 x i8] zeroinitializer }, align 32
@rvin_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rvin_suspend, ptr @rvin_resume, ptr @rvin_suspend, ptr @rvin_resume, ptr @rvin_suspend, ptr @rvin_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@r8a7795es1 = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.1, ptr null, ptr @.str.2, ptr @rcar_info_r8a7795es1, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.*\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7795\00", [24 x i8] zeroinitializer }, align 32
@rcar_info_r8a7795es1 = internal constant { %struct.rvin_info, [44 x i8] } { %struct.rvin_info { i32 3, i8 1, i8 0, i8 0, i32 4096, i32 4096, ptr @rcar_info_r8a7795es1_routes }, [44 x i8] zeroinitializer }, align 32
@rcar_info_r8a7795es1_routes = internal constant { [43 x %struct.rvin_group_route], [176 x i8] } { [43 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 0, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 0, i32 18 }, %struct.rvin_group_route { i32 1, i32 0, i32 0, i32 36 }, %struct.rvin_group_route { i32 0, i32 0, i32 1, i32 1 }, %struct.rvin_group_route { i32 1, i32 0, i32 1, i32 2 }, %struct.rvin_group_route { i32 2, i32 0, i32 1, i32 4 }, %struct.rvin_group_route { i32 2, i32 1, i32 1, i32 8 }, %struct.rvin_group_route { i32 0, i32 1, i32 1, i32 16 }, %struct.rvin_group_route { i32 1, i32 1, i32 1, i32 32 }, %struct.rvin_group_route { i32 1, i32 0, i32 2, i32 1 }, %struct.rvin_group_route { i32 2, i32 0, i32 2, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 2, i32 4 }, %struct.rvin_group_route { i32 2, i32 2, i32 2, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 2, i32 16 }, %struct.rvin_group_route { i32 1, i32 2, i32 2, i32 32 }, %struct.rvin_group_route { i32 2, i32 1, i32 3, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 3, i32 2 }, %struct.rvin_group_route { i32 1, i32 1, i32 3, i32 4 }, %struct.rvin_group_route { i32 2, i32 3, i32 3, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 3, i32 16 }, %struct.rvin_group_route { i32 1, i32 3, i32 3, i32 32 }, %struct.rvin_group_route { i32 3, i32 0, i32 4, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 4, i32 18 }, %struct.rvin_group_route { i32 1, i32 0, i32 4, i32 36 }, %struct.rvin_group_route { i32 0, i32 0, i32 5, i32 1 }, %struct.rvin_group_route { i32 1, i32 0, i32 5, i32 2 }, %struct.rvin_group_route { i32 3, i32 0, i32 5, i32 4 }, %struct.rvin_group_route { i32 3, i32 1, i32 5, i32 8 }, %struct.rvin_group_route { i32 0, i32 1, i32 5, i32 16 }, %struct.rvin_group_route { i32 1, i32 1, i32 5, i32 32 }, %struct.rvin_group_route { i32 1, i32 0, i32 6, i32 1 }, %struct.rvin_group_route { i32 3, i32 0, i32 6, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 6, i32 4 }, %struct.rvin_group_route { i32 3, i32 2, i32 6, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 6, i32 16 }, %struct.rvin_group_route { i32 1, i32 2, i32 6, i32 32 }, %struct.rvin_group_route { i32 3, i32 1, i32 7, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 7, i32 2 }, %struct.rvin_group_route { i32 1, i32 1, i32 7, i32 4 }, %struct.rvin_group_route { i32 3, i32 3, i32 7, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 7, i32 16 }, %struct.rvin_group_route { i32 1, i32 3, i32 7, i32 32 }, %struct.rvin_group_route zeroinitializer], [176 x i8] zeroinitializer }, align 32
@rvin_create_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcar_core:448:(&vin->ctrl_handler)->_lock\00", [54 x i8] zeroinitializer }, align 32
@rvin_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @rvin_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"renesas,id\00", [21 x i8] zeroinitializer }, align 32
@rvin_group_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 133, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%pOF: No renesas,id property found\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rvin_group_get\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/platform/rcar-vin/rcar-core.c\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rvin_group_get._entry_ptr = internal global ptr @rvin_group_get._entry, section ".printk_index", align 4
@rvin_group_get._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 139, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%pOF: Invalid renesas,id '%u'\0A\00", [33 x i8] zeroinitializer }, align 32
@rvin_group_get._entry_ptr.12 = internal global ptr @rvin_group_get._entry.10, section ".printk_index", align 4
@rvin_group_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rvin_group_lock, i64 52), ptr getelementptr (i8, ptr @rvin_group_lock, i64 52) }, ptr @rvin_group_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@rvin_group_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rvin_group_get._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 158, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to initialize group\0A\00", [36 x i8] zeroinitializer }, align 32
@rvin_group_get._entry_ptr.15 = internal global ptr @rvin_group_get._entry.13, section ".printk_index", align 4
@rvin_group_get._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.7, i32 172, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Duplicate renesas,id property value %u\0A\00", [56 x i8] zeroinitializer }, align 32
@rvin_group_get._entry_ptr.18 = internal global ptr @rvin_group_get._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rvin_group_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rvin_group_lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rvin_group_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&group->lock\00", [19 x i8] zeroinitializer }, align 32
@rvin_group_init.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.7, ptr @.str.24, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rcar_vin\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rvin_group_init\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"found %u enabled VIN's in DT\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@rvin_isp_setup_links._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.7, i32 1038, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error adding link from %s to %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rvin_isp_setup_links\00", [43 x i8] zeroinitializer }, align 32
@rvin_isp_setup_links._entry_ptr = internal global ptr @rvin_isp_setup_links._entry, section ".printk_index", align 4
@rvin_group_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @rvin_group_notify_bound, ptr @rvin_group_notify_complete, ptr @rvin_group_notify_unbind }, [20 x i8] zeroinitializer }, align 32
@rvin_group_notifier_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.7, i32 408, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Notifier registration failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rvin_group_notifier_init\00", [39 x i8] zeroinitializer }, align 32
@rvin_group_notifier_init._entry_ptr = internal global ptr @rvin_group_notifier_init._entry, section ".printk_index", align 4
@rvin_group_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.7, i32 328, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to parse %pOF\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rvin_group_parse_of\00", [44 x i8] zeroinitializer }, align 32
@rvin_group_parse_of._entry_ptr = internal global ptr @rvin_group_parse_of._entry, section ".printk_index", align 4
@rvin_group_parse_of.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.31, ptr @.str.7, ptr @.str.32, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Add group OF device %pOF to slot %u\0A\00", [59 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@rvin_group_notify_bound.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.33, ptr @.str.7, ptr @.str.34, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rvin_group_notify_bound\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bound %s to slot %u\0A\00", [43 x i8] zeroinitializer }, align 32
@rvin_group_notify_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.7, i32 239, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register subdev nodes\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rvin_group_notify_complete\00", [37 x i8] zeroinitializer }, align 32
@rvin_group_notify_complete._entry_ptr = internal global ptr @rvin_group_notify_complete._entry, section ".printk_index", align 4
@rvin_group_notify_unbind.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.37, ptr @.str.7, ptr @.str.38, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rvin_group_notify_unbind\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unbind %s from slot %u\0A\00", [40 x i8] zeroinitializer }, align 32
@rvin_csi2_media_ops = internal constant { %struct.media_device_ops, [44 x i8] } { %struct.media_device_ops { ptr @rvin_csi2_link_notify, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rvin_csi2_setup_links._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.39, ptr @.str.7, i32 945, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rvin_csi2_setup_links\00", [42 x i8] zeroinitializer }, align 32
@rvin_csi2_setup_links._entry_ptr = internal global ptr @rvin_csi2_setup_links._entry, section ".printk_index", align 4
@rvin_csi2_link_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.7, i32 876, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Subdevice %s not registered to any VIN\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rvin_csi2_link_notify\00", [42 x i8] zeroinitializer }, align 32
@rvin_csi2_link_notify._entry_ptr = internal global ptr @rvin_csi2_link_notify._entry, section ".printk_index", align 4
@rvin_csi2_link_notify.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.41, ptr @.str.7, ptr @.str.42, i8 0, i8 -36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Try link change mask: 0x%x new: 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@rvin_csi2_get_mask.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.43, ptr @.str.7, ptr @.str.44, i8 0, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rvin_csi2_get_mask\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Adding route: vin: %d csi: %d channel: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rvin_parallel_init.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.45, ptr @.str.7, ptr @.str.46, i8 0, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rvin_parallel_init\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Found parallel subdevice %pOF\0A\00", [33 x i8] zeroinitializer }, align 32
@rvin_parallel_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @rvin_parallel_notify_bound, ptr @rvin_parallel_notify_complete, ptr @rvin_parallel_notify_unbind }, [20 x i8] zeroinitializer }, align 32
@rvin_parallel_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.45, ptr @.str.7, i32 734, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@rvin_parallel_init._entry_ptr = internal global ptr @rvin_parallel_init._entry, section ".printk_index", align 4
@rvin_parallel_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.47, ptr @.str.7, i32 673, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rvin_parallel_parse_of\00", [41 x i8] zeroinitializer }, align 32
@rvin_parallel_parse_of._entry_ptr = internal global ptr @rvin_parallel_parse_of._entry, section ".printk_index", align 4
@rvin_parallel_parse_of.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.47, ptr @.str.7, ptr @.str.48, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Found %s media bus\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PARALLEL\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BT656\00", [26 x i8] zeroinitializer }, align 32
@rvin_parallel_parse_of._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.7, i32 688, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown media bus type\0A\00", [40 x i8] zeroinitializer }, align 32
@rvin_parallel_parse_of._entry_ptr.53 = internal global ptr @rvin_parallel_parse_of._entry.51, section ".printk_index", align 4
@rvin_parallel_parse_of.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.47, ptr @.str.7, ptr @.str.54, i8 0, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Add parallel OF device %pOF\0A\00", [35 x i8] zeroinitializer }, align 32
@rvin_parallel_notify_bound.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.55, ptr @.str.7, ptr @.str.56, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rvin_parallel_notify_bound\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bound subdev %s source pad: %u sink pad: %u\0A\00", [51 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@rvin_parallel_subdevice_attach.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.57, ptr @.str.7, ptr @.str.58, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rvin_parallel_subdevice_attach\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Found media bus format for %s: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rvin_parallel_subdevice_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.7, i32 546, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unsupported media bus format for %s\0A\00", [59 x i8] zeroinitializer }, align 32
@rvin_parallel_subdevice_attach._entry_ptr = internal global ptr @rvin_parallel_subdevice_attach._entry, section ".printk_index", align 4
@rvin_parallel_notify_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.60, ptr @.str.7, i32 589, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rvin_parallel_notify_complete\00", [34 x i8] zeroinitializer }, align 32
@rvin_parallel_notify_complete._entry_ptr = internal global ptr @rvin_parallel_notify_complete._entry, section ".printk_index", align 4
@rvin_parallel_notify_complete._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.7, i32 610, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error adding link from %s to %s: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rvin_parallel_notify_complete._entry_ptr.63 = internal global ptr @rvin_parallel_notify_complete._entry.61, section ".printk_index", align 4
@rvin_parallel_notify_unbind.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.64, ptr @.str.7, ptr @.str.65, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rvin_parallel_notify_unbind\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unbind parallel subdev %s\0A\00", [37 x i8] zeroinitializer }, align 32
@rcar_info_r8a7796 = internal constant { %struct.rvin_info, [44 x i8] } { %struct.rvin_info { i32 3, i8 1, i8 0, i8 1, i32 4096, i32 4096, ptr @rcar_info_r8a7796_routes }, [44 x i8] zeroinitializer }, align 32
@rcar_info_r8a77965 = internal constant { %struct.rvin_info, [44 x i8] } { %struct.rvin_info { i32 3, i8 1, i8 0, i8 1, i32 4096, i32 4096, ptr @rcar_info_r8a77965_routes }, [44 x i8] zeroinitializer }, align 32
@rcar_info_r8a77990 = internal constant { %struct.rvin_info, [44 x i8] } { %struct.rvin_info { i32 3, i8 1, i8 0, i8 1, i32 4096, i32 4096, ptr @rcar_info_r8a77990_routes }, [44 x i8] zeroinitializer }, align 32
@rcar_info_r8a774e1 = internal constant { %struct.rvin_info, [44 x i8] } { %struct.rvin_info { i32 3, i8 1, i8 0, i8 0, i32 4096, i32 4096, ptr @rcar_info_r8a774e1_routes }, [44 x i8] zeroinitializer }, align 32
@rcar_info_m1 = internal constant { %struct.rvin_info, [44 x i8] } { %struct.rvin_info { i32 1, i8 0, i8 0, i8 0, i32 2048, i32 2048, ptr null }, [44 x i8] zeroinitializer }, align 32
@rcar_info_h1 = internal constant { %struct.rvin_info, [44 x i8] } { %struct.rvin_info { i32 0, i8 0, i8 0, i8 0, i32 2048, i32 2048, ptr null }, [44 x i8] zeroinitializer }, align 32
@rcar_info_gen2 = internal constant { %struct.rvin_info, [44 x i8] } { %struct.rvin_info { i32 2, i8 0, i8 0, i8 0, i32 2048, i32 2048, ptr null }, [44 x i8] zeroinitializer }, align 32
@rcar_info_r8a7795 = internal constant { %struct.rvin_info, [44 x i8] } { %struct.rvin_info { i32 3, i8 1, i8 0, i8 1, i32 4096, i32 4096, ptr @rcar_info_r8a7795_routes }, [44 x i8] zeroinitializer }, align 32
@rcar_info_r8a77970 = internal constant { %struct.rvin_info, [44 x i8] } { %struct.rvin_info { i32 3, i8 1, i8 0, i8 0, i32 4096, i32 4096, ptr @rcar_info_r8a77970_routes }, [44 x i8] zeroinitializer }, align 32
@rcar_info_r8a77980 = internal constant { %struct.rvin_info, [44 x i8] } { %struct.rvin_info { i32 3, i8 1, i8 0, i8 1, i32 4096, i32 4096, ptr @rcar_info_r8a77980_routes }, [44 x i8] zeroinitializer }, align 32
@rcar_info_r8a77995 = internal constant { %struct.rvin_info, [44 x i8] } { %struct.rvin_info { i32 3, i8 1, i8 0, i8 1, i32 4096, i32 4096, ptr @rcar_info_r8a77995_routes }, [44 x i8] zeroinitializer }, align 32
@rcar_info_r8a779a0 = internal constant { %struct.rvin_info, [44 x i8] } { %struct.rvin_info { i32 3, i8 1, i8 1, i8 1, i32 4096, i32 4096, ptr null }, [44 x i8] zeroinitializer }, align 32
@rcar_info_r8a7796_routes = internal constant { [29 x %struct.rvin_group_route], [112 x i8] } { [29 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 0, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 0, i32 18 }, %struct.rvin_group_route { i32 0, i32 0, i32 1, i32 1 }, %struct.rvin_group_route { i32 2, i32 0, i32 1, i32 4 }, %struct.rvin_group_route { i32 2, i32 1, i32 1, i32 8 }, %struct.rvin_group_route { i32 0, i32 1, i32 1, i32 16 }, %struct.rvin_group_route { i32 2, i32 0, i32 2, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 2, i32 4 }, %struct.rvin_group_route { i32 2, i32 2, i32 2, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 2, i32 16 }, %struct.rvin_group_route { i32 2, i32 1, i32 3, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 3, i32 2 }, %struct.rvin_group_route { i32 2, i32 3, i32 3, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 3, i32 16 }, %struct.rvin_group_route { i32 2, i32 0, i32 4, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 4, i32 18 }, %struct.rvin_group_route { i32 0, i32 0, i32 5, i32 1 }, %struct.rvin_group_route { i32 2, i32 0, i32 5, i32 4 }, %struct.rvin_group_route { i32 2, i32 1, i32 5, i32 8 }, %struct.rvin_group_route { i32 0, i32 1, i32 5, i32 16 }, %struct.rvin_group_route { i32 2, i32 0, i32 6, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 6, i32 4 }, %struct.rvin_group_route { i32 2, i32 2, i32 6, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 6, i32 16 }, %struct.rvin_group_route { i32 2, i32 1, i32 7, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 7, i32 2 }, %struct.rvin_group_route { i32 2, i32 3, i32 7, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 7, i32 16 }, %struct.rvin_group_route zeroinitializer], [112 x i8] zeroinitializer }, align 32
@rcar_info_r8a77965_routes = internal constant { [33 x %struct.rvin_group_route], [144 x i8] } { [33 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 0, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 0, i32 18 }, %struct.rvin_group_route { i32 2, i32 1, i32 0, i32 4 }, %struct.rvin_group_route { i32 0, i32 0, i32 1, i32 1 }, %struct.rvin_group_route { i32 2, i32 1, i32 1, i32 10 }, %struct.rvin_group_route { i32 2, i32 0, i32 1, i32 4 }, %struct.rvin_group_route { i32 0, i32 1, i32 1, i32 16 }, %struct.rvin_group_route { i32 0, i32 1, i32 2, i32 1 }, %struct.rvin_group_route { i32 2, i32 0, i32 2, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 2, i32 4 }, %struct.rvin_group_route { i32 2, i32 2, i32 2, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 2, i32 16 }, %struct.rvin_group_route { i32 2, i32 1, i32 3, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 3, i32 6 }, %struct.rvin_group_route { i32 2, i32 3, i32 3, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 3, i32 16 }, %struct.rvin_group_route { i32 2, i32 0, i32 4, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 4, i32 18 }, %struct.rvin_group_route { i32 2, i32 1, i32 4, i32 4 }, %struct.rvin_group_route { i32 0, i32 0, i32 5, i32 1 }, %struct.rvin_group_route { i32 2, i32 1, i32 5, i32 10 }, %struct.rvin_group_route { i32 2, i32 0, i32 5, i32 4 }, %struct.rvin_group_route { i32 0, i32 1, i32 5, i32 16 }, %struct.rvin_group_route { i32 0, i32 1, i32 6, i32 1 }, %struct.rvin_group_route { i32 2, i32 0, i32 6, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 6, i32 4 }, %struct.rvin_group_route { i32 2, i32 2, i32 6, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 6, i32 16 }, %struct.rvin_group_route { i32 2, i32 1, i32 7, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 7, i32 6 }, %struct.rvin_group_route { i32 2, i32 3, i32 7, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 7, i32 16 }, %struct.rvin_group_route zeroinitializer], [144 x i8] zeroinitializer }, align 32
@rcar_info_r8a77990_routes = internal constant { [5 x %struct.rvin_group_route], [48 x i8] } { [5 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 4, i32 9 }, %struct.rvin_group_route { i32 2, i32 0, i32 5, i32 4 }, %struct.rvin_group_route { i32 2, i32 1, i32 4, i32 4 }, %struct.rvin_group_route { i32 2, i32 1, i32 5, i32 10 }, %struct.rvin_group_route zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rcar_info_r8a774e1_routes = internal constant { [25 x %struct.rvin_group_route], [112 x i8] } { [25 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 0, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 0, i32 18 }, %struct.rvin_group_route { i32 2, i32 1, i32 0, i32 4 }, %struct.rvin_group_route { i32 0, i32 0, i32 1, i32 1 }, %struct.rvin_group_route { i32 2, i32 1, i32 1, i32 10 }, %struct.rvin_group_route { i32 2, i32 0, i32 1, i32 4 }, %struct.rvin_group_route { i32 0, i32 1, i32 1, i32 16 }, %struct.rvin_group_route { i32 0, i32 1, i32 2, i32 1 }, %struct.rvin_group_route { i32 2, i32 0, i32 2, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 2, i32 4 }, %struct.rvin_group_route { i32 2, i32 2, i32 2, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 2, i32 16 }, %struct.rvin_group_route { i32 2, i32 1, i32 3, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 3, i32 6 }, %struct.rvin_group_route { i32 2, i32 3, i32 3, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 3, i32 16 }, %struct.rvin_group_route { i32 0, i32 0, i32 4, i32 18 }, %struct.rvin_group_route { i32 0, i32 0, i32 5, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 5, i32 16 }, %struct.rvin_group_route { i32 0, i32 1, i32 6, i32 1 }, %struct.rvin_group_route { i32 0, i32 0, i32 6, i32 4 }, %struct.rvin_group_route { i32 0, i32 2, i32 6, i32 16 }, %struct.rvin_group_route { i32 0, i32 1, i32 7, i32 6 }, %struct.rvin_group_route { i32 0, i32 3, i32 7, i32 16 }, %struct.rvin_group_route zeroinitializer], [112 x i8] zeroinitializer }, align 32
@rcar_info_r8a7795_routes = internal constant { [33 x %struct.rvin_group_route], [144 x i8] } { [33 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 0, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 0, i32 18 }, %struct.rvin_group_route { i32 2, i32 1, i32 0, i32 4 }, %struct.rvin_group_route { i32 0, i32 0, i32 1, i32 1 }, %struct.rvin_group_route { i32 2, i32 1, i32 1, i32 10 }, %struct.rvin_group_route { i32 2, i32 0, i32 1, i32 4 }, %struct.rvin_group_route { i32 0, i32 1, i32 1, i32 16 }, %struct.rvin_group_route { i32 0, i32 1, i32 2, i32 1 }, %struct.rvin_group_route { i32 2, i32 0, i32 2, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 2, i32 4 }, %struct.rvin_group_route { i32 2, i32 2, i32 2, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 2, i32 16 }, %struct.rvin_group_route { i32 2, i32 1, i32 3, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 3, i32 6 }, %struct.rvin_group_route { i32 2, i32 3, i32 3, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 3, i32 16 }, %struct.rvin_group_route { i32 3, i32 0, i32 4, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 4, i32 18 }, %struct.rvin_group_route { i32 3, i32 1, i32 4, i32 4 }, %struct.rvin_group_route { i32 0, i32 0, i32 5, i32 1 }, %struct.rvin_group_route { i32 3, i32 1, i32 5, i32 10 }, %struct.rvin_group_route { i32 3, i32 0, i32 5, i32 4 }, %struct.rvin_group_route { i32 0, i32 1, i32 5, i32 16 }, %struct.rvin_group_route { i32 0, i32 1, i32 6, i32 1 }, %struct.rvin_group_route { i32 3, i32 0, i32 6, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 6, i32 4 }, %struct.rvin_group_route { i32 3, i32 2, i32 6, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 6, i32 16 }, %struct.rvin_group_route { i32 3, i32 1, i32 7, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 7, i32 6 }, %struct.rvin_group_route { i32 3, i32 3, i32 7, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 7, i32 16 }, %struct.rvin_group_route zeroinitializer], [144 x i8] zeroinitializer }, align 32
@rcar_info_r8a77970_routes = internal constant { [8 x %struct.rvin_group_route], [32 x i8] } { [8 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 0, i32 9 }, %struct.rvin_group_route { i32 2, i32 0, i32 1, i32 4 }, %struct.rvin_group_route { i32 2, i32 1, i32 1, i32 8 }, %struct.rvin_group_route { i32 2, i32 0, i32 2, i32 2 }, %struct.rvin_group_route { i32 2, i32 2, i32 2, i32 8 }, %struct.rvin_group_route { i32 2, i32 1, i32 3, i32 1 }, %struct.rvin_group_route { i32 2, i32 3, i32 3, i32 8 }, %struct.rvin_group_route zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rcar_info_r8a77980_routes = internal constant { [17 x %struct.rvin_group_route], [80 x i8] } { [17 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 0, i32 9 }, %struct.rvin_group_route { i32 2, i32 1, i32 0, i32 4 }, %struct.rvin_group_route { i32 2, i32 0, i32 1, i32 4 }, %struct.rvin_group_route { i32 2, i32 1, i32 1, i32 10 }, %struct.rvin_group_route { i32 2, i32 0, i32 2, i32 2 }, %struct.rvin_group_route { i32 2, i32 2, i32 2, i32 8 }, %struct.rvin_group_route { i32 2, i32 1, i32 3, i32 1 }, %struct.rvin_group_route { i32 2, i32 3, i32 3, i32 8 }, %struct.rvin_group_route { i32 3, i32 0, i32 4, i32 9 }, %struct.rvin_group_route { i32 3, i32 1, i32 4, i32 4 }, %struct.rvin_group_route { i32 3, i32 0, i32 5, i32 4 }, %struct.rvin_group_route { i32 3, i32 1, i32 5, i32 10 }, %struct.rvin_group_route { i32 3, i32 0, i32 6, i32 2 }, %struct.rvin_group_route { i32 3, i32 2, i32 6, i32 8 }, %struct.rvin_group_route { i32 3, i32 1, i32 7, i32 1 }, %struct.rvin_group_route { i32 3, i32 3, i32 7, i32 8 }, %struct.rvin_group_route zeroinitializer], [80 x i8] zeroinitializer }, align 32
@rcar_info_r8a77995_routes = internal constant { [1 x %struct.rvin_group_route], [16 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.66 = internal global [7 x i64] [i64 5, i64 32, i64 4106, i64 8198, i64 8207, i64 8209, i64 8216]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 4294966781, i64 4294967277]
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"rcar_vin_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1618, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1620, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"rvin_of_id_table\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1465, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"rvin_pm_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1616, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"r8a7795es1\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1534, i32 42 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1536, i32 36 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1536, i32 13 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"rcar_info_r8a7795es1\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1284, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant [28 x i8] c"rcar_info_r8a7795es1_routes\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1238, i32 38 }
@___asan_gen_.95 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 448, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"rvin_ctrl_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 434, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 130, i32 48 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 132, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 138, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [16 x i8] c"rvin_group_lock\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"rvin_group_data\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 61, i32 27 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 158, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 172, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 60, i32 8 }
@___asan_gen_.155 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 77, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 85, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 97, i32 51 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1037, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant [22 x i8] c"rvin_group_notify_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 304, i32 52 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 408, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 328, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 342, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 295, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 239, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 273, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c"rvin_csi2_media_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 903, i32 38 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 944, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 875, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 883, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 757, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 728, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [25 x i8] c"rvin_parallel_notify_ops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 650, i32 52 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 734, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 673, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 681, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 688, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 702, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 643, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 536, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 545, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 589, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 609, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 621, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [18 x i8] c"rcar_info_r8a7796\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1324, i32 31 }
@___asan_gen_.329 = private unnamed_addr constant [19 x i8] c"rcar_info_r8a77965\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1369, i32 31 }
@___asan_gen_.332 = private unnamed_addr constant [19 x i8] c"rcar_info_r8a77990\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1434, i32 31 }
@___asan_gen_.335 = private unnamed_addr constant [19 x i8] c"rcar_info_r8a774e1\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1185, i32 31 }
@___asan_gen_.338 = private unnamed_addr constant [13 x i8] c"rcar_info_m1\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1143, i32 31 }
@___asan_gen_.341 = private unnamed_addr constant [13 x i8] c"rcar_info_h1\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1136, i32 31 }
@___asan_gen_.344 = private unnamed_addr constant [15 x i8] c"rcar_info_gen2\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1150, i32 31 }
@___asan_gen_.347 = private unnamed_addr constant [18 x i8] c"rcar_info_r8a7795\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1229, i32 31 }
@___asan_gen_.350 = private unnamed_addr constant [19 x i8] c"rcar_info_r8a77970\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1389, i32 31 }
@___asan_gen_.353 = private unnamed_addr constant [19 x i8] c"rcar_info_r8a77980\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1417, i32 31 }
@___asan_gen_.356 = private unnamed_addr constant [19 x i8] c"rcar_info_r8a77995\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1447, i32 31 }
@___asan_gen_.359 = private unnamed_addr constant [19 x i8] c"rcar_info_r8a779a0\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1456, i32 31 }
@___asan_gen_.362 = private unnamed_addr constant [25 x i8] c"rcar_info_r8a7796_routes\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1292, i32 38 }
@___asan_gen_.365 = private unnamed_addr constant [26 x i8] c"rcar_info_r8a77965_routes\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1333, i32 38 }
@___asan_gen_.368 = private unnamed_addr constant [26 x i8] c"rcar_info_r8a77990_routes\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1426, i32 38 }
@___asan_gen_.371 = private unnamed_addr constant [26 x i8] c"rcar_info_r8a774e1_routes\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1157, i32 38 }
@___asan_gen_.374 = private unnamed_addr constant [25 x i8] c"rcar_info_r8a7795_routes\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1193, i32 38 }
@___asan_gen_.377 = private unnamed_addr constant [26 x i8] c"rcar_info_r8a77970_routes\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1378, i32 38 }
@___asan_gen_.380 = private unnamed_addr constant [26 x i8] c"rcar_info_r8a77980_routes\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1397, i32 38 }
@___asan_gen_.383 = private unnamed_addr constant [26 x i8] c"rcar_info_r8a77995_routes\00", align 1
@___asan_gen_.384 = private constant [47 x i8] c"../drivers/media/platform/rcar-vin/rcar-core.c\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1443, i32 38 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__exitcall_rcar_vin_driver_exit, ptr @__initcall__kmod_rcar_vin__311_1629_rcar_vin_driver_init6, ptr @rcar_vin_driver_exit, ptr @rvin_csi2_link_notify._entry, ptr @rvin_csi2_link_notify._entry_ptr, ptr @rvin_csi2_setup_links._entry, ptr @rvin_csi2_setup_links._entry_ptr, ptr @rvin_group_get._entry, ptr @rvin_group_get._entry.10, ptr @rvin_group_get._entry.13, ptr @rvin_group_get._entry.16, ptr @rvin_group_get._entry_ptr, ptr @rvin_group_get._entry_ptr.12, ptr @rvin_group_get._entry_ptr.15, ptr @rvin_group_get._entry_ptr.18, ptr @rvin_group_notifier_init._entry, ptr @rvin_group_notifier_init._entry_ptr, ptr @rvin_group_notify_complete._entry, ptr @rvin_group_notify_complete._entry_ptr, ptr @rvin_group_parse_of._entry, ptr @rvin_group_parse_of._entry_ptr, ptr @rvin_isp_setup_links._entry, ptr @rvin_isp_setup_links._entry_ptr, ptr @rvin_parallel_init._entry, ptr @rvin_parallel_init._entry_ptr, ptr @rvin_parallel_notify_complete._entry, ptr @rvin_parallel_notify_complete._entry.61, ptr @rvin_parallel_notify_complete._entry_ptr, ptr @rvin_parallel_notify_complete._entry_ptr.63, ptr @rvin_parallel_parse_of._entry, ptr @rvin_parallel_parse_of._entry.51, ptr @rvin_parallel_parse_of._entry_ptr, ptr @rvin_parallel_parse_of._entry_ptr.53, ptr @rvin_parallel_subdevice_attach._entry, ptr @rvin_parallel_subdevice_attach._entry_ptr, ptr @rcar_vin_driver, ptr @.str, ptr @rvin_of_id_table, ptr @rvin_pm_ops, ptr @r8a7795es1, ptr @.str.1, ptr @.str.2, ptr @rcar_info_r8a7795es1, ptr @rcar_info_r8a7795es1_routes, ptr @rvin_create_controls._key, ptr @.str.3, ptr @rvin_ctrl_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @rvin_group_lock, ptr @rvin_group_data, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @rvin_group_init.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @rvin_group_notify_ops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @rvin_csi2_media_ops, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @rvin_parallel_notify_ops, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @rcar_info_r8a7796, ptr @rcar_info_r8a77965, ptr @rcar_info_r8a77990, ptr @rcar_info_r8a774e1, ptr @rcar_info_m1, ptr @rcar_info_h1, ptr @rcar_info_gen2, ptr @rcar_info_r8a7795, ptr @rcar_info_r8a77970, ptr @rcar_info_r8a77980, ptr @rcar_info_r8a77995, ptr @rcar_info_r8a779a0, ptr @rcar_info_r8a7796_routes, ptr @rcar_info_r8a77965_routes, ptr @rcar_info_r8a77990_routes, ptr @rcar_info_r8a774e1_routes, ptr @rcar_info_r8a7795_routes, ptr @rcar_info_r8a77970_routes, ptr @rcar_info_r8a77980_routes, ptr @rcar_info_r8a77995_routes], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_vin_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_of_id_table to i32), i32 3332, i32 4192, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a7795es1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a7795es1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a7795es1_routes to i32), i32 688, i32 864, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_create_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_group_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_group_get._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_group_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_group_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_group_get._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_group_get._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_group_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_isp_setup_links._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_group_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_group_notifier_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_group_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_group_notify_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_csi2_media_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_csi2_setup_links._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_csi2_link_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_parallel_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_parallel_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_parallel_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_parallel_parse_of._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_parallel_subdevice_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_parallel_notify_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_parallel_notify_complete._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a7796 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a77965 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a77990 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a774e1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_m1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_h1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_gen2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a7795 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a77970 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a77980 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a77995 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a779a0 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a7796_routes to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a77965_routes to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a77990_routes to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a774e1_routes to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a7795_routes to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a77970_routes to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a77980_routes to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_info_r8a77995_routes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_vin_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_vin_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_vin_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_vin_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_vin_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2632, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 8
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %info = getelementptr inbounds %struct.rvin_dev, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %info, align 8
  %alpha = getelementptr inbounds %struct.rvin_dev, ptr %call.i, i32 0, i32 28
  %2 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 255, ptr %alpha, align 8
  %call5 = tail call ptr @soc_device_match(ptr noundef nonnull @r8a7795es1) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.soc_device_attribute, ptr %call5, i32 0, i32 5
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %info, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.rvin_dev, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call17 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end16.cleanup_crit_edge, label %if.end19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %call20 = tail call i32 @rvin_dma_register(ptr noundef nonnull %call.i, i32 noundef %call17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 8
  %use_isp = getelementptr inbounds %struct.rvin_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %use_isp to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %use_isp, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool25.not = icmp eq i8 %12, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end23
  %pad.i = getelementptr inbounds %struct.rvin_dev, ptr %call.i, i32 0, i32 10
  %flags.i = getelementptr inbounds %struct.rvin_dev, ptr %call.i, i32 0, i32 10, i32 4
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %flags.i, align 4
  %vdev.i = getelementptr inbounds %struct.rvin_dev, ptr %call.i, i32 0, i32 3
  %call.i72 = tail call i32 @media_entity_pads_init(ptr noundef %vdev.i, i16 noundef zeroext 1, ptr noundef %pad.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then26.if.then37_crit_edge

if.then26.if.then37_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

if.end.i:                                         ; preds = %if.then26
  %ctrl_handler.i.i = getelementptr inbounds %struct.rvin_dev, ptr %call.i, i32 0, i32 5
  %call.i.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i.i, i32 noundef 16, ptr noundef nonnull @rvin_create_controls._key, ptr noundef nonnull @.str.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.if.then37_crit_edge, label %if.end.i.i

if.end.i.if.then37_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

if.end.i.i:                                       ; preds = %if.end.i
  %call2.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i.i, ptr noundef nonnull @rvin_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 255) #9
  %error.i.i = getelementptr inbounds %struct.rvin_dev, ptr %call.i, i32 0, i32 5, i32 9
  %14 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %rvin_create_controls.exit.thread29.i, label %rvin_create_controls.exit.i

rvin_create_controls.exit.thread29.i:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_handler18.i32.i = getelementptr inbounds %struct.rvin_dev, ptr %call.i, i32 0, i32 3, i32 9
  %16 = ptrtoint ptr %ctrl_handler18.i32.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ctrl_handler.i.i, ptr %ctrl_handler18.i32.i, align 4
  br label %if.end4.i

rvin_create_controls.exit.i:                      ; preds = %if.end.i.i
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i.i) #9
  %ctrl_handler18.i.i = getelementptr inbounds %struct.rvin_dev, ptr %call.i, i32 0, i32 3, i32 9
  %17 = ptrtoint ptr %ctrl_handler18.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %ctrl_handler18.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i73 = icmp slt i32 %15, 0
  br i1 %cmp.i73, label %rvin_create_controls.exit.i.if.then37_crit_edge, label %rvin_create_controls.exit.i.if.end4.i_crit_edge

rvin_create_controls.exit.i.if.end4.i_crit_edge:  ; preds = %rvin_create_controls.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

rvin_create_controls.exit.i.if.then37_crit_edge:  ; preds = %rvin_create_controls.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

if.end4.i:                                        ; preds = %rvin_create_controls.exit.i.if.end4.i_crit_edge, %rvin_create_controls.exit.thread29.i
  %call5.i = tail call fastcc i32 @rvin_group_get(ptr noundef nonnull %call.i, ptr noundef nonnull @rvin_isp_setup_links, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.err_controls.i_crit_edge

if.end4.i.err_controls.i_crit_edge:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_controls.i

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = tail call fastcc i32 @rvin_group_notifier_init(ptr noundef nonnull %call.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end38_crit_edge, label %err_group.i

if.end8.i.if.end38_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

err_group.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rvin_group_put(ptr noundef nonnull %call.i) #9
  br label %err_controls.i

err_controls.i:                                   ; preds = %err_group.i, %if.end4.i.err_controls.i_crit_edge
  %ret.0.i = phi i32 [ %call5.i, %if.end4.i.err_controls.i_crit_edge ], [ %call9.i, %err_group.i ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i.i) #9
  %ctrl_handler1.i.i = getelementptr inbounds %struct.rvin_dev, ptr %call.i, i32 0, i32 3, i32 9
  %18 = ptrtoint ptr %ctrl_handler1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ctrl_handler1.i.i, align 4
  br label %if.then37

if.else:                                          ; preds = %if.end23
  %use_mc = getelementptr inbounds %struct.rvin_info, ptr %10, i32 0, i32 1
  %19 = ptrtoint ptr %use_mc to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %use_mc, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool29.not = icmp eq i8 %20, 0
  br i1 %tobool29.not, label %if.else32, label %if.then30

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call fastcc i32 @rvin_csi2_init(ptr noundef nonnull %call.i)
  br label %if.end35

if.else32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = tail call fastcc i32 @rvin_parallel_init(ptr noundef nonnull %call.i)
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.then30
  %ret.0 = phi i32 [ %call31, %if.then30 ], [ %call33, %if.else32 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool36.not = icmp eq i32 %ret.0, 0
  br i1 %tobool36.not, label %if.end35.if.end38_crit_edge, label %if.end35.if.then37_crit_edge

if.end35.if.then37_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then37:                                        ; preds = %if.end35.if.then37_crit_edge, %err_controls.i, %rvin_create_controls.exit.i.if.then37_crit_edge, %if.end.i.if.then37_crit_edge, %if.then26.if.then37_crit_edge
  %ret.076 = phi i32 [ %ret.0, %if.end35.if.then37_crit_edge ], [ %call.i.i, %if.end.i.if.then37_crit_edge ], [ %15, %rvin_create_controls.exit.i.if.then37_crit_edge ], [ %call.i72, %if.then26.if.then37_crit_edge ], [ %ret.0.i, %err_controls.i ]
  tail call void @rvin_dma_unregister(ptr noundef nonnull %call.i) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end35.if.end38_crit_edge, %if.end8.i.if.end38_crit_edge
  %ignore_children.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %21 = ptrtoint ptr %ignore_children.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i = load i16, ptr %ignore_children.i, align 4
  %bf.set.i = or i16 %bf.load.i, 128
  store i16 %bf.set.i, ptr %ignore_children.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then37, %if.end19.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then13 ], [ %ret.076, %if.then37 ], [ 0, %if.end38 ], [ -12, %entry.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_vin_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  tail call void @rvin_v4l2_unregister(ptr noundef %1) #9
  %info = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %use_isp = getelementptr inbounds %struct.rvin_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %use_isp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_isp, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %v4l2_dev.i.i = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 4
  %group.i.i = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %group.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group.i.i, align 4
  %v4l2_dev1.i.i = getelementptr inbounds %struct.rvin_group, ptr %7, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %v4l2_dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %v4l2_dev1.i.i, align 4
  %cmp.i.i = icmp eq ptr %v4l2_dev.i.i, %9
  br i1 %cmp.i.i, label %if.then.if.end5.sink.split.sink.split_crit_edge, label %if.then.if.end5.sink.split_crit_edge

if.then.if.end5.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.sink.split

if.then.if.end5.sink.split.sink.split_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.sink.split.sink.split

if.else:                                          ; preds = %entry
  %use_mc = getelementptr inbounds %struct.rvin_info, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %use_mc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %use_mc, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  %notifier.i = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 6
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier.i) #9
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i) #9
  br i1 %tobool2.not, label %if.else.if.end5_crit_edge, label %if.then3

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.else
  %v4l2_dev.i.i14 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 4
  %group.i.i15 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %group.i.i15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group.i.i15, align 4
  %v4l2_dev1.i.i16 = getelementptr inbounds %struct.rvin_group, ptr %13, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %v4l2_dev1.i.i16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %v4l2_dev1.i.i16, align 4
  %cmp.i.i17 = icmp eq ptr %v4l2_dev.i.i14, %15
  br i1 %cmp.i.i17, label %if.then3.if.end5.sink.split.sink.split_crit_edge, label %if.then3.if.end5.sink.split_crit_edge

if.then3.if.end5.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.sink.split

if.then3.if.end5.sink.split.sink.split_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.sink.split.sink.split

if.end5.sink.split.sink.split:                    ; preds = %if.then3.if.end5.sink.split.sink.split_crit_edge, %if.then.if.end5.sink.split.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.then.if.end5.sink.split.sink.split_crit_edge ], [ %13, %if.then3.if.end5.sink.split.sink.split_crit_edge ]
  %group.i.i15.sink = phi ptr [ %group.i.i, %if.then.if.end5.sink.split.sink.split_crit_edge ], [ %group.i.i15, %if.then3.if.end5.sink.split.sink.split_crit_edge ]
  %notifier.i4.i = getelementptr inbounds %struct.rvin_group, ptr %.sink, i32 0, i32 4
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier.i4.i) #9
  %16 = ptrtoint ptr %group.i.i15.sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %group.i.i15.sink, align 4
  %notifier5.i.i18 = getelementptr inbounds %struct.rvin_group, ptr %17, i32 0, i32 4
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier5.i.i18) #9
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.end5.sink.split.sink.split, %if.then3.if.end5.sink.split_crit_edge, %if.then.if.end5.sink.split_crit_edge
  tail call fastcc void @rvin_group_put(ptr noundef %1) #9
  %ctrl_handler.i.i20 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 5
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i.i20) #9
  %ctrl_handler1.i.i21 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 3, i32 9
  %18 = ptrtoint ptr %ctrl_handler1.i.i21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ctrl_handler1.i.i21, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %if.else.if.end5_crit_edge
  tail call void @rvin_dma_unregister(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rvin_dma_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rvin_csi2_init(ptr noundef %vin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 10
  %flags = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 10, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %flags, align 4
  %vdev = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3
  %call = tail call i32 @media_entity_pads_init(ptr noundef %vdev, i16 noundef zeroext 1, ptr noundef %pad) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl_handler.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 5
  %call.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 16, ptr noundef nonnull @rvin_create_controls._key, ptr noundef nonnull @.str.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @rvin_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 255) #9
  %error.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 5, i32 9
  %1 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %rvin_create_controls.exit.thread38, label %rvin_create_controls.exit

rvin_create_controls.exit.thread38:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_handler18.i41 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 9
  %3 = ptrtoint ptr %ctrl_handler18.i41 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctrl_handler.i, ptr %ctrl_handler18.i41, align 4
  br label %if.end4

rvin_create_controls.exit:                        ; preds = %if.end.i
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #9
  %ctrl_handler18.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 9
  %4 = ptrtoint ptr %ctrl_handler18.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ctrl_handler18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %rvin_create_controls.exit.cleanup_crit_edge, label %rvin_create_controls.exit.if.end4_crit_edge

rvin_create_controls.exit.if.end4_crit_edge:      ; preds = %rvin_create_controls.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

rvin_create_controls.exit.cleanup_crit_edge:      ; preds = %rvin_create_controls.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %rvin_create_controls.exit.if.end4_crit_edge, %rvin_create_controls.exit.thread38
  %call5 = tail call fastcc i32 @rvin_group_get(ptr noundef %vin, ptr noundef nonnull @rvin_csi2_setup_links, ptr noundef nonnull @rvin_csi2_media_ops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_controls_crit_edge

if.end4.err_controls_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_controls

if.end8:                                          ; preds = %if.end4
  %call9 = tail call fastcc i32 @rvin_parallel_init(ptr noundef %vin)
  %5 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call9, label %if.end8.err_group_crit_edge [
    i32 0, label %if.end8.if.end13_crit_edge
    i32 -19, label %if.end8.if.end13_crit_edge43
  ]

if.end8.if.end13_crit_edge43:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end8.err_group_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_group

if.end13:                                         ; preds = %if.end8.if.end13_crit_edge, %if.end8.if.end13_crit_edge43
  %call14 = tail call fastcc i32 @rvin_group_notifier_init(ptr noundef %vin, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %err_parallel

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_parallel:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %notifier.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 6
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier.i) #9
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i) #9
  br label %err_group

err_group:                                        ; preds = %err_parallel, %if.end8.err_group_crit_edge
  %ret.0 = phi i32 [ %call14, %err_parallel ], [ %call9, %if.end8.err_group_crit_edge ]
  tail call fastcc void @rvin_group_put(ptr noundef %vin)
  br label %err_controls

err_controls:                                     ; preds = %err_group, %if.end4.err_controls_crit_edge
  %ret.1 = phi i32 [ %call5, %if.end4.err_controls_crit_edge ], [ %ret.0, %err_group ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #9
  %ctrl_handler1.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 9
  %6 = ptrtoint ptr %ctrl_handler1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ctrl_handler1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_controls, %if.end13.cleanup_crit_edge, %rvin_create_controls.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_controls ], [ %call, %entry.cleanup_crit_edge ], [ %2, %rvin_create_controls.exit.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rvin_parallel_init(ptr noundef %vin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %notifier = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 6
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #9
  %call = tail call fastcc i32 @rvin_parallel_parse_of(ptr noundef %vin)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %parallel = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7
  %0 = ptrtoint ptr %parallel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parallel, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_parallel_init.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_parallel_init, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !221

if.then8:                                         ; preds = %do.body
  %2 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vin, align 8
  %4 = ptrtoint ptr %parallel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parallel, align 8
  %match = getelementptr inbounds %struct.v4l2_async_subdev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %match, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  %cmp.i.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then8.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

if.then8.is_of_node.exit.thread_crit_edge:        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_of_node.exit.thread

is_of_node.exit:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %9, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %7, i32 -12
  %spec.select = select i1 %cmp.i, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %if.then8.is_of_node.exit.thread_crit_edge
  %10 = phi ptr [ null, %if.then8.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_parallel_init.__UNIQUE_ID_ddebug308, ptr noundef %3, ptr noundef nonnull @.str.46, ptr noundef %10) #9
  br label %do.end

do.end:                                           ; preds = %is_of_node.exit.thread, %do.body
  %11 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rvin_parallel_notify_ops, ptr %notifier, align 8
  %v4l2_dev = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 4
  %call17 = tail call i32 @v4l2_async_nf_register(ptr noundef %v4l2_dev, ptr noundef %notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %do.end21, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vin, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.28) #12
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %do.end21 ], [ %call, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rvin_dma_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rvin_group_get(ptr noundef %vin, ptr noundef %link_setup, ptr noundef %ops) unnamed_addr #2 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #9
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !222
  %1 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vin, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vin, align 8
  %of_node3 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node3, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef %8) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %10)
  %cmp = icmp ugt i32 %10, 31
  br i1 %cmp, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vin, align 8
  %of_node10 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %of_node10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node10, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef %14, i32 noundef %10) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef nonnull @rvin_group_lock, i32 noundef 0) #9
  %15 = load ptr, ptr @rvin_group_data, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #9
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #9, !srcloc !223
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then13.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !224

if.then13.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then13
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end27_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !225

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end27_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then13.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then13.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef %.sink.i.i.i.i) #9
  br label %if.end27

if.else:                                          ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 928) #13
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %err_group, label %if.end17

if.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rvin_group_init(ptr noundef nonnull %call7.i.i, ptr noundef %vin, ptr noundef %link_setup, ptr noundef %ops)
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #9
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %call7.i.i, align 8
  store ptr %call7.i.i, ptr @rvin_group_data, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end17, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end27_crit_edge
  %group.0 = phi ptr [ %call7.i.i, %if.end17 ], [ %15, %if.else.i.i.i.i.if.end27_crit_edge ], [ %15, %if.end15.sink.split.i.i.i.i ]
  call void @mutex_unlock(ptr noundef nonnull @rvin_group_lock) #9
  %lock = getelementptr inbounds %struct.rvin_group, ptr %group.0, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.rvin_group, ptr %group.0, i32 0, i32 5, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %tobool29.not = icmp eq ptr %23, null
  br i1 %tobool29.not, label %if.end38, label %do.end33

do.end33:                                         ; preds = %if.end27
  %24 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vin, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.17, i32 noundef %21) #12
  call void @mutex_unlock(ptr noundef %lock) #9
  %call.i.i.i.i.i.i74 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %group.0, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !226
  call void @llvm.prefetch.p0(ptr nonnull %group.0, i32 1, i32 3, i32 1) #9
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %group.0, ptr nonnull %group.0, i32 1, ptr nonnull elementtype(i32) %group.0) #9, !srcloc !227
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i75 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i75, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !225

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef nonnull %group.0, i32 noundef 3) #9
  br label %cleanup

if.then.i:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !228
  call void @mutex_lock_nested(ptr noundef nonnull @rvin_group_lock, i32 noundef 0) #9
  store ptr null, ptr @rvin_group_data, align 4
  %mdev.i.i.i = getelementptr inbounds %struct.rvin_group, ptr %group.0, i32 0, i32 1
  call void @media_device_cleanup(ptr noundef %mdev.i.i.i) #9
  call void @mutex_destroy(ptr noundef %lock) #9
  call void @kfree(ptr noundef nonnull %group.0) #9
  call void @mutex_unlock(ptr noundef nonnull @rvin_group_lock) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %vin, ptr %arrayidx, align 4
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  %id41 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 9
  %30 = ptrtoint ptr %id41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %id41, align 8
  %group42 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 8
  %31 = ptrtoint ptr %group42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %group.0, ptr %group42, align 4
  %mdev = getelementptr inbounds %struct.rvin_group, ptr %group.0, i32 0, i32 1
  %mdev43 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %mdev43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %mdev, ptr %mdev43, align 4
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

err_group:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef nonnull @rvin_group_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %err_group, %if.end38, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ 0, %if.end38 ], [ -12, %err_group ], [ -22, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -22, %if.then10.i.i.i.i ], [ -22, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_isp_setup_links(ptr nocapture noundef readonly %vin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %group = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 8
  %0 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group, align 4
  %lock = getelementptr inbounds %struct.rvin_group, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %ret.065 = phi i32 [ -22, %entry ], [ %ret.1.ph, %for.inc.for.body_crit_edge ]
  %i.063 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %rem = and i32 %i.063, 7
  %add = add nuw nsw i32 %rem, 1
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group, align 4
  %arrayidx = getelementptr %struct.rvin_group, ptr %3, i32 0, i32 5, i32 %i.063
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %div55 = lshr i32 %i.063, 3
  %subdev = getelementptr %struct.rvin_group, ptr %3, i32 0, i32 7, i32 %div55, i32 1
  %6 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subdev, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end.for.inc_crit_edge, label %if.end7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end7:                                          ; preds = %if.end
  %pads = getelementptr inbounds %struct.media_entity, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pads, align 4
  %arrayidx12 = getelementptr %struct.media_pad, ptr %9, i32 %add
  %pads17 = getelementptr inbounds %struct.rvin_dev, ptr %5, i32 0, i32 3, i32 0, i32 9
  %10 = ptrtoint ptr %pads17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pads17, align 4
  %call = tail call ptr @media_entity_find_link(ptr noundef %arrayidx12, ptr noundef %11) #9
  %tobool19.not = icmp eq ptr %call, null
  br i1 %tobool19.not, label %if.end21, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end21:                                         ; preds = %if.end7
  %vdev = getelementptr inbounds %struct.rvin_dev, ptr %5, i32 0, i32 3
  %conv = trunc i32 %add to i16
  %call22 = tail call i32 @media_create_pad_link(ptr noundef nonnull %7, i16 noundef zeroext %conv, ptr noundef %vdev, i16 noundef zeroext 0, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.for.inc_crit_edge, label %cleanup

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vin, align 8
  %name = getelementptr inbounds %struct.media_entity, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %name25 = getelementptr inbounds %struct.rvin_dev, ptr %5, i32 0, i32 3, i32 0, i32 1
  %16 = ptrtoint ptr %name25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.26, ptr noundef %15, ptr noundef %17) #12
  br label %for.end

for.inc:                                          ; preds = %if.end21.for.inc_crit_edge, %if.end7.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1.ph = phi i32 [ 0, %if.end21.for.inc_crit_edge ], [ %ret.065, %if.end7.for.inc_crit_edge ], [ %ret.065, %if.end.for.inc_crit_edge ], [ %ret.065, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup
  %ret.2 = phi i32 [ %call22, %cleanup ], [ %ret.1.ph, %for.inc.for.end_crit_edge ]
  %18 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %group, align 4
  %lock33 = getelementptr inbounds %struct.rvin_group, ptr %19, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock33) #9
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rvin_group_notifier_init(ptr noundef %vin, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %group = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 8
  %0 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group, align 4
  %lock = getelementptr inbounds %struct.rvin_group, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc3, %for.body.for.body_crit_edge ]
  %vin_mask.02 = phi i32 [ 0, %entry ], [ %vin_mask.1, %for.body.for.body_crit_edge ]
  %count.01 = phi i32 [ 0, %entry ], [ %count.1, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rvin_group, ptr %3, i32 0, i32 5, i32 %i.03
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  %shl = shl nuw i32 1, %i.03
  %not.tobool.not = xor i1 %tobool.not, true
  %inc = zext i1 %not.tobool.not to i32
  %count.1 = add i32 %count.01, %inc
  %or = select i1 %tobool.not, i32 0, i32 %shl
  %vin_mask.1 = or i32 %or, %vin_mask.02
  %inc3 = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc3, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %6 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group, align 4
  %count5 = getelementptr inbounds %struct.rvin_group, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %count5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %count.1)
  %cmp6.not = icmp eq i32 %9, %count.1
  %lock12 = getelementptr inbounds %struct.rvin_group, ptr %7, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock12) #9
  br i1 %cmp6.not, label %if.end10, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %for.end
  %10 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %group, align 4
  %notifier = getelementptr inbounds %struct.rvin_group, ptr %11, i32 0, i32 4
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #9
  br label %for.body16

for.body16:                                       ; preds = %for.inc38.for.body16_crit_edge, %if.end10
  %i.15 = phi i32 [ 0, %if.end10 ], [ %inc39, %for.inc38.for.body16_crit_edge ]
  %shl17 = shl nuw i32 1, %i.15
  %and = and i32 %shl17, %vin_mask.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %for.body16.for.inc38_crit_edge, label %for.body23.preheader

for.body16.for.inc38_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38

for.body23.preheader:                             ; preds = %for.body16
  %12 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group, align 4
  %arrayidx25 = getelementptr %struct.rvin_group, ptr %13, i32 0, i32 7, i32 0
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %if.end28, label %for.body23.preheader.for.inc35_crit_edge

for.body23.preheader.for.inc35_crit_edge:         ; preds = %for.body23.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc35

if.end28:                                         ; preds = %for.body23.preheader
  %arrayidx31 = getelementptr %struct.rvin_group, ptr %13, i32 0, i32 5, i32 %i.15
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx31, align 4
  %call = tail call fastcc i32 @rvin_group_parse_of(ptr noundef %17, i32 noundef %port, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool32.not = icmp eq i32 %call, 0
  br i1 %tobool32.not, label %if.end28.for.inc35_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28.for.inc35_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc35

for.inc35:                                        ; preds = %if.end28.for.inc35_crit_edge, %for.body23.preheader.for.inc35_crit_edge
  %18 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %group, align 4
  %arrayidx25.1 = getelementptr %struct.rvin_group, ptr %19, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx25.1, align 4
  %tobool26.not.1 = icmp eq ptr %21, null
  br i1 %tobool26.not.1, label %if.end28.1, label %for.inc35.for.inc35.1_crit_edge

for.inc35.for.inc35.1_crit_edge:                  ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc35.1

if.end28.1:                                       ; preds = %for.inc35
  %arrayidx31.1 = getelementptr %struct.rvin_group, ptr %19, i32 0, i32 5, i32 %i.15
  %22 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx31.1, align 4
  %call.1 = tail call fastcc i32 @rvin_group_parse_of(ptr noundef %23, i32 noundef %port, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool32.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool32.not.1, label %if.end28.1.for.inc35.1_crit_edge, label %if.end28.1.cleanup_crit_edge

if.end28.1.cleanup_crit_edge:                     ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28.1.for.inc35.1_crit_edge:                 ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc35.1

for.inc35.1:                                      ; preds = %if.end28.1.for.inc35.1_crit_edge, %for.inc35.for.inc35.1_crit_edge
  %24 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %group, align 4
  %arrayidx25.2 = getelementptr %struct.rvin_group, ptr %25, i32 0, i32 7, i32 2
  %26 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx25.2, align 4
  %tobool26.not.2 = icmp eq ptr %27, null
  br i1 %tobool26.not.2, label %if.end28.2, label %for.inc35.1.for.inc35.2_crit_edge

for.inc35.1.for.inc35.2_crit_edge:                ; preds = %for.inc35.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc35.2

if.end28.2:                                       ; preds = %for.inc35.1
  %arrayidx31.2 = getelementptr %struct.rvin_group, ptr %25, i32 0, i32 5, i32 %i.15
  %28 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx31.2, align 4
  %call.2 = tail call fastcc i32 @rvin_group_parse_of(ptr noundef %29, i32 noundef %port, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool32.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool32.not.2, label %if.end28.2.for.inc35.2_crit_edge, label %if.end28.2.cleanup_crit_edge

if.end28.2.cleanup_crit_edge:                     ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28.2.for.inc35.2_crit_edge:                 ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc35.2

for.inc35.2:                                      ; preds = %if.end28.2.for.inc35.2_crit_edge, %for.inc35.1.for.inc35.2_crit_edge
  %30 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %group, align 4
  %arrayidx25.3 = getelementptr %struct.rvin_group, ptr %31, i32 0, i32 7, i32 3
  %32 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx25.3, align 4
  %tobool26.not.3 = icmp eq ptr %33, null
  br i1 %tobool26.not.3, label %if.end28.3, label %for.inc35.2.for.inc38_crit_edge

for.inc35.2.for.inc38_crit_edge:                  ; preds = %for.inc35.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38

if.end28.3:                                       ; preds = %for.inc35.2
  %arrayidx31.3 = getelementptr %struct.rvin_group, ptr %31, i32 0, i32 5, i32 %i.15
  %34 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx31.3, align 4
  %call.3 = tail call fastcc i32 @rvin_group_parse_of(ptr noundef %35, i32 noundef %port, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool32.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool32.not.3, label %if.end28.3.for.inc38_crit_edge, label %if.end28.3.cleanup_crit_edge

if.end28.3.cleanup_crit_edge:                     ; preds = %if.end28.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28.3.for.inc38_crit_edge:                   ; preds = %if.end28.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38

for.inc38:                                        ; preds = %if.end28.3.for.inc38_crit_edge, %for.inc35.2.for.inc38_crit_edge, %for.body16.for.inc38_crit_edge
  %inc39 = add nuw nsw i32 %i.15, 1
  %exitcond8.not = icmp eq i32 %inc39, 32
  br i1 %exitcond8.not, label %for.end40, label %for.inc38.for.body16_crit_edge

for.inc38.for.body16_crit_edge:                   ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16

for.end40:                                        ; preds = %for.inc38
  %36 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %group, align 4
  %asd_list = getelementptr inbounds %struct.rvin_group, ptr %37, i32 0, i32 4, i32 4
  %38 = ptrtoint ptr %asd_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %asd_list, align 4
  %cmp.i.not = icmp eq ptr %39, %asd_list
  br i1 %cmp.i.not, label %for.end40.cleanup_crit_edge, label %if.end46

for.end40.cleanup_crit_edge:                      ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46:                                         ; preds = %for.end40
  %notifier48 = getelementptr inbounds %struct.rvin_group, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %notifier48 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @rvin_group_notify_ops, ptr %notifier48, align 8
  %v4l2_dev = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 4
  %41 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %group, align 4
  %notifier50 = getelementptr inbounds %struct.rvin_group, ptr %42, i32 0, i32 4
  %call51 = tail call i32 @v4l2_async_nf_register(ptr noundef %v4l2_dev, ptr noundef %notifier50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.end, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vin, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.28) #12
  %45 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %group, align 4
  %notifier55 = getelementptr inbounds %struct.rvin_group, ptr %46, i32 0, i32 4
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier55) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end46.cleanup_crit_edge, %for.end40.cleanup_crit_edge, %if.end28.3.cleanup_crit_edge, %if.end28.2.cleanup_crit_edge, %if.end28.1.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %do.end ], [ 0, %for.end40.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %call.3, %if.end28.3.cleanup_crit_edge ], [ %call.2, %if.end28.2.cleanup_crit_edge ], [ %call.1, %if.end28.1.cleanup_crit_edge ], [ %call, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rvin_group_put(ptr noundef %vin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %group1 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 8
  %0 = ptrtoint ptr %group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group1, align 4
  %lock = getelementptr inbounds %struct.rvin_group, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %2 = ptrtoint ptr %group1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %group1, align 4
  %mdev = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %mdev, align 4
  %id = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 9
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %arrayidx = getelementptr %struct.rvin_group, ptr %1, i32 0, i32 5, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %7, %vin
  br i1 %cmp.not, label %if.end24.critedge, label %do.end, !prof !225

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 201, i32 noundef 9, ptr noundef null) #9
  br label %out

if.end24.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  br label %out

out:                                              ; preds = %if.end24.critedge, %do.end
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !226
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #9, !srcloc !227
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !225

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void @mutex_lock_nested(ptr noundef nonnull @rvin_group_lock, i32 noundef 0) #9
  store ptr null, ptr @rvin_group_data, align 4
  %mdev.i.i.i = getelementptr inbounds %struct.rvin_group, ptr %1, i32 0, i32 1
  tail call void @media_device_cleanup(ptr noundef %mdev.i.i.i) #9
  tail call void @mutex_destroy(ptr noundef %lock) #9
  tail call void @kfree(ptr noundef %1) #9
  tail call void @mutex_unlock(ptr noundef nonnull @rvin_group_lock) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963817, i32 %1)
  %cond = icmp eq i32 %1, 9963817
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -1496
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  tail call void @rvin_set_alpha(ptr noundef %add.ptr, i32 noundef %5) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rvin_set_alpha(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rvin_group_init(ptr noundef %group, ptr nocapture noundef readonly %vin, ptr noundef %link_setup, ptr noundef %ops) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rvin_group, ptr %group, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @rvin_group_init.__key) #9
  %count = getelementptr inbounds %struct.rvin_group, ptr %group, i32 0, i32 3
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %count, align 4
  %1 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vin, align 8
  %driver = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_match_table, align 4
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef %6, ptr noundef null) #9
  %tobool.not4 = icmp eq ptr %call.i, null
  br i1 %tobool.not4, label %entry.do.body8_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.05 = phi ptr [ %call.i1, %for.inc.for.body_crit_edge ], [ %call.i, %entry.for.body_crit_edge ]
  %call2 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %np.05) #9
  br i1 %call2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vin, align 8
  %driver5 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %driver5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver5, align 4
  %of_match_table6 = getelementptr inbounds %struct.device_driver, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %of_match_table6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_match_table6, align 4
  %call.i1 = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.05, ptr noundef %14, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call.i1, null
  br i1 %tobool.not, label %for.inc.do.body8_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body8_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

do.body8:                                         ; preds = %for.inc.do.body8_crit_edge, %entry.do.body8_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_group_init.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_group_init, %if.then13)) #9
          to label %do.end18 [label %if.then13], !srcloc !221

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vin, align 8
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_group_init.__UNIQUE_ID_ddebug299, ptr noundef %16, ptr noundef nonnull @.str.24, i32 noundef %18) #9
  br label %do.end18

do.end18:                                         ; preds = %if.then13, %do.body8
  %mdev1 = getelementptr inbounds %struct.rvin_group, ptr %group, i32 0, i32 1
  %link_setup19 = getelementptr inbounds %struct.rvin_group, ptr %group, i32 0, i32 6
  %19 = ptrtoint ptr %link_setup19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %link_setup, ptr %link_setup19, align 8
  %20 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vin, align 8
  %22 = ptrtoint ptr %mdev1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %mdev1, align 8
  %ops22 = getelementptr inbounds %struct.rvin_group, ptr %group, i32 0, i32 1, i32 21
  %23 = ptrtoint ptr %ops22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ops, ptr %ops22, align 8
  %24 = load ptr, ptr %vin, align 8
  %driver24 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %driver24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver24, align 4
  %of_match_table25 = getelementptr inbounds %struct.device_driver, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %of_match_table25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_match_table25, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 27
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %call27 = tail call ptr @of_match_node(ptr noundef %28, ptr noundef %30) #9
  %driver_name = getelementptr inbounds %struct.rvin_group, ptr %group, i32 0, i32 1, i32 3
  %call28 = tail call i32 @strscpy(ptr noundef %driver_name, ptr noundef nonnull @.str.22, i32 noundef 32) #9
  %model = getelementptr inbounds %struct.rvin_group, ptr %group, i32 0, i32 1, i32 2
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %call27, i32 0, i32 2
  %call31 = tail call i32 @strscpy(ptr noundef %model, ptr noundef %compatible, i32 noundef 32) #9
  %31 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdev1, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end18.dev_name.exit_crit_edge

do.end18.dev_name.exit_crit_edge:                 ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end18.dev_name.exit_crit_edge
  %retval.0.i2 = phi ptr [ %36, %if.end.i ], [ %34, %do.end18.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.rvin_group, ptr %group, i32 0, i32 1, i32 5
  %call35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.25, ptr noundef %retval.0.i2)
  tail call void @media_device_init(ptr noundef %mdev1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_find_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rvin_group_parse_of(ptr nocapture noundef readonly %vin, i32 noundef %port, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  %vep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vep) #9
  %0 = call ptr @memset(ptr %vep, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %vep, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  %3 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vin, align 8
  %call = tail call ptr @dev_fwnode(ptr noundef %4) #9
  %call1 = tail call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call, i32 noundef %port, i32 noundef %id, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @fwnode_graph_get_remote_endpoint(ptr noundef nonnull %call1) #9
  %call3 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call1, ptr noundef nonnull %vep) #9
  call void @fwnode_handle_put(ptr noundef nonnull %call1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  %5 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vin, align 8
  %tobool.not.i.i = icmp eq ptr %call2, null
  %cmp.i.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %do.end.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

do.end.is_of_node.exit.thread_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_of_node.exit.thread

is_of_node.exit:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %call2, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %8, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %call2, i32 -12
  %spec.select = select i1 %cmp.i, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %do.end.is_of_node.exit.thread_crit_edge
  %9 = phi ptr [ null, %do.end.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.30, ptr noundef %9) #12
  br label %out

if.end9:                                          ; preds = %if.end
  %group = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 8
  %10 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %group, align 4
  %notifier = getelementptr inbounds %struct.rvin_group, ptr %11, i32 0, i32 4
  %call10 = call ptr @__v4l2_async_nf_add_fwnode(ptr noundef %notifier, ptr noundef %call2, i32 noundef 28) #9
  %cmp.i61 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call10 to i32
  br label %out

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %group, align 4
  %id16 = getelementptr inbounds %struct.fwnode_endpoint, ptr %vep, i32 0, i32 1
  %15 = ptrtoint ptr %id16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id16, align 4
  %arrayidx = getelementptr %struct.rvin_group, ptr %14, i32 0, i32 7, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call10, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_group_parse_of.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_group_parse_of, %if.then24)) #9
          to label %out [label %if.then24], !srcloc !221

if.then24:                                        ; preds = %if.end14
  %18 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vin, align 8
  %tobool.not.i.i62 = icmp eq ptr %call2, null
  %cmp.i.i63 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i64 = or i1 %tobool.not.i.i62, %cmp.i.i63
  br i1 %spec.select.i.i64, label %if.then24.is_of_node.exit68.thread_crit_edge, label %is_of_node.exit68

if.then24.is_of_node.exit68.thread_crit_edge:     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_of_node.exit68.thread

is_of_node.exit68:                                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i65 = getelementptr inbounds %struct.fwnode_handle, ptr %call2, i32 0, i32 1
  %20 = ptrtoint ptr %ops.i65 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i65, align 4
  %cmp.i66 = icmp eq ptr %21, @of_fwnode_ops
  %add.ptr32 = getelementptr i8, ptr %call2, i32 -12
  %spec.select72 = select i1 %cmp.i66, ptr %add.ptr32, ptr null
  br label %is_of_node.exit68.thread

is_of_node.exit68.thread:                         ; preds = %is_of_node.exit68, %if.then24.is_of_node.exit68.thread_crit_edge
  %22 = phi ptr [ null, %if.then24.is_of_node.exit68.thread_crit_edge ], [ %spec.select72, %is_of_node.exit68 ]
  %23 = ptrtoint ptr %id16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id16, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_group_parse_of.__UNIQUE_ID_ddebug302, ptr noundef %19, ptr noundef nonnull @.str.32, ptr noundef %22, i32 noundef %24) #9
  br label %out

out:                                              ; preds = %is_of_node.exit68.thread, %if.end14, %if.then12, %is_of_node.exit.thread
  %ret.0 = phi i32 [ -22, %is_of_node.exit.thread ], [ %12, %if.then12 ], [ 0, %is_of_node.exit68.thread ], [ 0, %if.end14 ]
  call void @fwnode_handle_put(ptr noundef %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_endpoint_by_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_group_notify_bound(ptr nocapture noundef readonly %notifier, ptr noundef %subdev, ptr noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 1
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -1368
  %group = getelementptr i8, ptr %1, i32 388
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group, align 4
  %lock = getelementptr inbounds %struct.rvin_group, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %4 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group, align 4
  %arrayidx = getelementptr %struct.rvin_group, ptr %5, i32 0, i32 7, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp3.not = icmp eq ptr %7, %asd
  br i1 %cmp3.not, label %entry.if.end_crit_edge, label %for.inc

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.inc.2.if.end_crit_edge, %for.inc.1.if.end_crit_edge, %for.inc.if.end_crit_edge, %entry.if.end_crit_edge
  %i.026.lcssa = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %for.inc.if.end_crit_edge ], [ 2, %for.inc.1.if.end_crit_edge ], [ 3, %for.inc.2.if.end_crit_edge ]
  %subdev7 = getelementptr %struct.rvin_group, ptr %5, i32 0, i32 7, i32 %i.026.lcssa, i32 1
  %8 = ptrtoint ptr %subdev7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %subdev, ptr %subdev7, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_group_notify_bound.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_group_notify_bound, %if.then11)) #9
          to label %for.end [label %if.then11], !srcloc !221

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_group_notify_bound.__UNIQUE_ID_ddebug301, ptr noundef %10, ptr noundef nonnull @.str.34, ptr noundef %name, i32 noundef %i.026.lcssa) #9
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.rvin_group, ptr %5, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1, align 4
  %cmp3.not.1 = icmp eq ptr %12, %asd
  br i1 %cmp3.not.1, label %for.inc.if.end_crit_edge, label %for.inc.1

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.rvin_group, ptr %5, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.2, align 4
  %cmp3.not.2 = icmp eq ptr %14, %asd
  br i1 %cmp3.not.2, label %for.inc.1.if.end_crit_edge, label %for.inc.2

for.inc.1.if.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.rvin_group, ptr %5, i32 0, i32 7, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.3, align 4
  %cmp3.not.3 = icmp eq ptr %16, %asd
  br i1 %cmp3.not.3, label %for.inc.2.if.end_crit_edge, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.2.if.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.end:                                          ; preds = %for.inc.2.for.end_crit_edge, %if.then11, %if.end
  %17 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %group, align 4
  %lock14 = getelementptr inbounds %struct.rvin_group, ptr %18, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock14) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_group_notify_complete(ptr nocapture noundef readonly %notifier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 1
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -1368
  %group = getelementptr i8, ptr %1, i32 388
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group, align 4
  %mdev = getelementptr inbounds %struct.rvin_group, ptr %3, i32 0, i32 1
  %call = tail call i32 @__media_device_register(ptr noundef %mdev, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %1, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end.for.body_crit_edge, label %do.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.35) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group, align 4
  %arrayidx = getelementptr %struct.rvin_group, ptr %7, i32 0, i32 5, i32 %i.043
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.rvin_dev, ptr %9, i32 0, i32 3, i32 17
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool13.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true
  %call18 = tail call i32 @rvin_v4l2_register(ptr noundef nonnull %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then14.for.inc_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.then14.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group, align 4
  %link_setup = getelementptr inbounds %struct.rvin_group, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %link_setup to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link_setup, align 8
  %call24 = tail call i32 %15(ptr noundef %add.ptr) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then14.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call24, %for.end ], [ %call, %entry.cleanup_crit_edge ], [ %call18, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rvin_group_notify_unbind(ptr nocapture noundef readonly %notifier, ptr noundef %subdev, ptr noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 1
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %group = getelementptr i8, ptr %1, i32 388
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.048 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group, align 4
  %arrayidx = getelementptr %struct.rvin_group, ptr %3, i32 0, i32 5, i32 %i.048
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rvin_v4l2_unregister(ptr noundef nonnull %5) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %add.ptr = getelementptr i8, ptr %1, i32 -1368
  %6 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group, align 4
  %lock = getelementptr inbounds %struct.rvin_group, ptr %7, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %8 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %group, align 4
  %arrayidx10 = getelementptr %struct.rvin_group, ptr %9, i32 0, i32 7, i32 0
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx10, align 4
  %cmp12.not = icmp eq ptr %11, %asd
  br i1 %cmp12.not, label %for.end.if.end14_crit_edge, label %for.inc25

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %for.inc25.2.if.end14_crit_edge, %for.inc25.1.if.end14_crit_edge, %for.inc25.if.end14_crit_edge, %for.end.if.end14_crit_edge
  %i.149.lcssa = phi i32 [ 0, %for.end.if.end14_crit_edge ], [ 1, %for.inc25.if.end14_crit_edge ], [ 2, %for.inc25.1.if.end14_crit_edge ], [ 3, %for.inc25.2.if.end14_crit_edge ]
  %subdev18 = getelementptr %struct.rvin_group, ptr %9, i32 0, i32 7, i32 %i.149.lcssa, i32 1
  %12 = ptrtoint ptr %subdev18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %subdev18, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_group_notify_unbind.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_group_notify_unbind, %if.then23)) #9
          to label %for.end27 [label %if.then23], !srcloc !221

if.then23:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_group_notify_unbind.__UNIQUE_ID_ddebug300, ptr noundef %14, ptr noundef nonnull @.str.38, ptr noundef %name, i32 noundef %i.149.lcssa) #9
  br label %for.end27

for.inc25:                                        ; preds = %for.end
  %arrayidx10.1 = getelementptr %struct.rvin_group, ptr %9, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx10.1, align 4
  %cmp12.not.1 = icmp eq ptr %16, %asd
  br i1 %cmp12.not.1, label %for.inc25.if.end14_crit_edge, label %for.inc25.1

for.inc25.if.end14_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc25.1:                                      ; preds = %for.inc25
  %arrayidx10.2 = getelementptr %struct.rvin_group, ptr %9, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx10.2, align 4
  %cmp12.not.2 = icmp eq ptr %18, %asd
  br i1 %cmp12.not.2, label %for.inc25.1.if.end14_crit_edge, label %for.inc25.2

for.inc25.1.if.end14_crit_edge:                   ; preds = %for.inc25.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc25.2:                                      ; preds = %for.inc25.1
  %arrayidx10.3 = getelementptr %struct.rvin_group, ptr %9, i32 0, i32 7, i32 3
  %19 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx10.3, align 4
  %cmp12.not.3 = icmp eq ptr %20, %asd
  br i1 %cmp12.not.3, label %for.inc25.2.if.end14_crit_edge, label %for.inc25.2.for.end27_crit_edge

for.inc25.2.for.end27_crit_edge:                  ; preds = %for.inc25.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end27

for.inc25.2.if.end14_crit_edge:                   ; preds = %for.inc25.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.end27:                                        ; preds = %for.inc25.2.for.end27_crit_edge, %if.then23, %if.end14
  %21 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %group, align 4
  %lock29 = getelementptr inbounds %struct.rvin_group, ptr %22, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock29) #9
  %23 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %group, align 4
  %mdev = getelementptr inbounds %struct.rvin_group, ptr %24, i32 0, i32 1
  tail call void @media_device_unregister(ptr noundef %mdev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rvin_v4l2_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rvin_v4l2_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_csi2_setup_links(ptr nocapture noundef readonly %vin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %group = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 8
  %0 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group, align 4
  %lock = getelementptr inbounds %struct.rvin_group, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %info = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %routes = getelementptr inbounds %struct.rvin_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %routes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %routes, align 4
  %mask75 = getelementptr inbounds %struct.rvin_group_route, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mask75 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not76 = icmp eq i32 %7, 0
  br i1 %tobool.not76, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ret.079 = phi i32 [ %ret.1.ph, %for.inc.for.body_crit_edge ], [ -22, %entry.for.body_crit_edge ]
  %route.077 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %8 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %group, align 4
  %vin3 = getelementptr inbounds %struct.rvin_group_route, ptr %route.077, i32 0, i32 2
  %10 = ptrtoint ptr %vin3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vin3, align 4
  %arrayidx = getelementptr %struct.rvin_group, ptr %9, i32 0, i32 5, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp = icmp ult i32 %11, 4
  %cond = select i1 %cmp, i32 0, i32 4
  %arrayidx8 = getelementptr %struct.rvin_group, ptr %9, i32 0, i32 5, i32 %cond
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %if.end.for.inc_crit_edge, label %if.end11

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end11:                                         ; preds = %if.end
  %16 = ptrtoint ptr %route.077 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %route.077, align 4
  %subdev = getelementptr %struct.rvin_group, ptr %9, i32 0, i32 7, i32 %17, i32 1
  %18 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %subdev, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %if.end11.for.inc_crit_edge, label %if.end16

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end16:                                         ; preds = %if.end11
  %channel = getelementptr inbounds %struct.rvin_group_route, ptr %route.077, i32 0, i32 1
  %20 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel, align 4
  %add = add i32 %21, 1
  %pads = getelementptr inbounds %struct.media_entity, ptr %19, i32 0, i32 9
  %22 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pads, align 4
  %arrayidx22 = getelementptr %struct.media_pad, ptr %23, i32 %add
  %pads28 = getelementptr inbounds %struct.rvin_dev, ptr %13, i32 0, i32 3, i32 0, i32 9
  %24 = ptrtoint ptr %pads28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pads28, align 4
  %call = tail call ptr @media_entity_find_link(ptr noundef %arrayidx22, ptr noundef %25) #9
  %tobool30.not = icmp eq ptr %call, null
  br i1 %tobool30.not, label %if.end32, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end32:                                         ; preds = %if.end16
  %vdev = getelementptr inbounds %struct.rvin_dev, ptr %13, i32 0, i32 3
  %conv = trunc i32 %add to i16
  %call33 = tail call i32 @media_create_pad_link(ptr noundef nonnull %19, i16 noundef zeroext %conv, ptr noundef %vdev, i16 noundef zeroext 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end32.for.inc_crit_edge, label %cleanup

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vin, align 8
  %name = getelementptr inbounds %struct.media_entity, ptr %19, i32 0, i32 1
  %28 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name, align 4
  %name36 = getelementptr inbounds %struct.rvin_dev, ptr %13, i32 0, i32 3, i32 0, i32 1
  %30 = ptrtoint ptr %name36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.26, ptr noundef %29, ptr noundef %31) #12
  br label %for.end

for.inc:                                          ; preds = %if.end32.for.inc_crit_edge, %if.end16.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1.ph = phi i32 [ 0, %if.end32.for.inc_crit_edge ], [ %ret.079, %if.end16.for.inc_crit_edge ], [ %ret.079, %if.end11.for.inc_crit_edge ], [ %ret.079, %if.end.for.inc_crit_edge ], [ %ret.079, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.rvin_group_route, ptr %route.077, i32 1
  %mask = getelementptr %struct.rvin_group_route, ptr %route.077, i32 1, i32 3
  %32 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask, align 4
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %entry.for.end_crit_edge
  %ret.2 = phi i32 [ %call33, %cleanup ], [ -22, %entry.for.end_crit_edge ], [ %ret.1.ph, %for.inc.for.end_crit_edge ]
  %34 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %group, align 4
  %lock43 = getelementptr inbounds %struct.rvin_group, ptr %35, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock43) #9
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_csi2_link_notify(ptr noundef %link, i32 noundef %flags, i32 noundef %notification) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %call = tail call i32 @v4l2_pipeline_link_notify(ptr noundef %link, i32 noundef %flags, i32 noundef %notification) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup154_crit_edge

entry.cleanup154_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup154

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup154_crit_edge, label %lor.lhs.false

if.end.cleanup154_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup154

lor.lhs.false:                                    ; preds = %if.end
  %2 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %entity2 = getelementptr inbounds %struct.media_pad, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %entity2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entity2, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup154_crit_edge, label %is_media_entity_v4l2_video_device.exit

lor.lhs.false.cleanup154_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup154

is_media_entity_v4l2_video_device.exit:           ; preds = %lor.lhs.false
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp eq i32 %8, 1
  br i1 %cmp.i, label %if.end5, label %is_media_entity_v4l2_video_device.exit.cleanup154_crit_edge

is_media_entity_v4l2_video_device.exit.cleanup154_crit_edge: ; preds = %is_media_entity_v4l2_video_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup154

if.end5:                                          ; preds = %is_media_entity_v4l2_video_device.exit
  %entities = getelementptr inbounds %struct.media_device, ptr %1, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end5
  %.pn.in = phi ptr [ %entities, %if.end5 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %entities
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %stream_count = getelementptr i8, ptr %.pn, i32 52
  %10 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream_count, align 4
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup154_crit_edge

for.body.cleanup154_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup154

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %lock = getelementptr i8, ptr %1, i32 608
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %entity23 = getelementptr inbounds %struct.media_pad, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %entity23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entity23, align 4
  %add.ptr28 = getelementptr i8, ptr %15, i32 -16
  %id = getelementptr i8, ptr %15, i32 1744
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp29 = icmp ult i32 %17, 4
  %cond = select i1 %cmp29, i32 0, i32 4
  %vin30 = getelementptr i8, ptr %1, i32 752
  %arrayidx = getelementptr [32 x ptr], ptr %vin30, i32 0, i32 %cond
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool31.not = icmp eq ptr %19, null
  br i1 %tobool31.not, label %do.end, label %for.cond59.preheader, !prof !224

for.cond59.preheader:                             ; preds = %for.end
  %subdev.i = getelementptr i8, ptr %1, i32 888
  %subdev.1.i = getelementptr i8, ptr %1, i32 896
  %subdev.2.i = getelementptr i8, ptr %1, i32 904
  %subdev.3.i = getelementptr i8, ptr %1, i32 912
  %20 = or i32 %cond, 3
  br label %for.body61

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 829, i32 noundef 9, ptr noundef null) #9
  br label %out

for.body61:                                       ; preds = %for.inc83.for.body61_crit_edge, %for.cond59.preheader
  %i.0274 = phi i32 [ %cond, %for.cond59.preheader ], [ %inc, %for.inc83.for.body61_crit_edge ]
  %mask.0273 = phi i32 [ -1, %for.cond59.preheader ], [ %mask.1, %for.inc83.for.body61_crit_edge ]
  %arrayidx63 = getelementptr [32 x ptr], ptr %vin30, i32 0, i32 %i.0274
  %21 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx63, align 4
  %tobool64.not = icmp eq ptr %22, null
  br i1 %tobool64.not, label %for.body61.for.inc83_crit_edge, label %if.end66

for.body61.for.inc83_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc83

if.end66:                                         ; preds = %for.body61
  %pads = getelementptr inbounds %struct.rvin_dev, ptr %22, i32 0, i32 3, i32 0, i32 9
  %23 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pads, align 4
  %call72 = tail call ptr @media_entity_remote_pad(ptr noundef %24) #9
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %if.end66.for.inc83_crit_edge, label %if.end75

if.end66.for.inc83_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc83

if.end75:                                         ; preds = %if.end66
  %entity76 = getelementptr inbounds %struct.media_pad, ptr %call72, i32 0, i32 1
  %25 = ptrtoint ptr %entity76 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %entity76, align 4
  %27 = ptrtoint ptr %subdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %subdev.i, align 4
  %cmp2.i = icmp eq ptr %28, %26
  br i1 %cmp2.i, label %if.end75.rvin_group_entity_to_remote_id.exit_crit_edge, label %for.inc.i

if.end75.rvin_group_entity_to_remote_id.exit_crit_edge: ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %rvin_group_entity_to_remote_id.exit

for.inc.i:                                        ; preds = %if.end75
  %29 = ptrtoint ptr %subdev.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %subdev.1.i, align 4
  %cmp2.1.i = icmp eq ptr %30, %26
  br i1 %cmp2.1.i, label %for.inc.i.rvin_group_entity_to_remote_id.exit_crit_edge, label %for.inc.1.i

for.inc.i.rvin_group_entity_to_remote_id.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rvin_group_entity_to_remote_id.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %31 = ptrtoint ptr %subdev.2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %subdev.2.i, align 4
  %cmp2.2.i = icmp eq ptr %32, %26
  br i1 %cmp2.2.i, label %for.inc.1.i.rvin_group_entity_to_remote_id.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.rvin_group_entity_to_remote_id.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rvin_group_entity_to_remote_id.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %subdev.3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %subdev.3.i, align 4
  %cmp2.3.i = icmp eq ptr %34, %26
  %spec.select.i = select i1 %cmp2.3.i, i32 3, i32 -19
  br label %rvin_group_entity_to_remote_id.exit

rvin_group_entity_to_remote_id.exit:              ; preds = %for.inc.2.i, %for.inc.1.i.rvin_group_entity_to_remote_id.exit_crit_edge, %for.inc.i.rvin_group_entity_to_remote_id.exit_crit_edge, %if.end75.rvin_group_entity_to_remote_id.exit_crit_edge
  %retval.0.i222 = phi i32 [ 0, %if.end75.rvin_group_entity_to_remote_id.exit_crit_edge ], [ 1, %for.inc.i.rvin_group_entity_to_remote_id.exit_crit_edge ], [ 2, %for.inc.1.i.rvin_group_entity_to_remote_id.exit_crit_edge ], [ %spec.select.i, %for.inc.2.i ]
  %35 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx63, align 4
  %info.i = getelementptr inbounds %struct.rvin_dev, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info.i, align 8
  %routes.i = getelementptr inbounds %struct.rvin_info, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %routes.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %routes.i, align 4
  %mask129.i = getelementptr inbounds %struct.rvin_group_route, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %mask129.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mask129.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not30.i = icmp eq i32 %42, 0
  br i1 %tobool.not30.i, label %rvin_group_entity_to_remote_id.exit.rvin_csi2_get_mask.exit_crit_edge, label %for.body.lr.ph.i

rvin_group_entity_to_remote_id.exit.rvin_csi2_get_mask.exit_crit_edge: ; preds = %rvin_group_entity_to_remote_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rvin_csi2_get_mask.exit

for.body.lr.ph.i:                                 ; preds = %rvin_group_entity_to_remote_id.exit
  %index = getelementptr inbounds %struct.media_pad, ptr %call72, i32 0, i32 2
  %43 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %index, align 4
  %id.i = getelementptr inbounds %struct.rvin_dev, ptr %36, i32 0, i32 9
  %45 = add i16 %44, 255
  %46 = and i16 %45, 255
  %conv.i = zext i16 %46 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i225.for.body.i_crit_edge, %for.body.lr.ph.i
  %mask135.i = phi ptr [ %mask129.i, %for.body.lr.ph.i ], [ %mask1.i, %for.inc.i225.for.body.i_crit_edge ]
  %route.032.i = phi ptr [ %40, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i225.for.body.i_crit_edge ]
  %mask.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %mask.1.i, %for.inc.i225.for.body.i_crit_edge ]
  %vin2.i = getelementptr inbounds %struct.rvin_group_route, ptr %route.032.i, i32 0, i32 2
  %47 = ptrtoint ptr %vin2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vin2.i, align 4
  %49 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp.i223 = icmp eq i32 %48, %50
  br i1 %cmp.i223, label %land.lhs.true.i, label %for.body.i.for.inc.i225_crit_edge

for.body.i.for.inc.i225_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i225

land.lhs.true.i:                                  ; preds = %for.body.i
  %51 = ptrtoint ptr %route.032.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %route.032.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %retval.0.i222)
  %cmp3.i = icmp eq i32 %52, %retval.0.i222
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.for.inc.i225_crit_edge

land.lhs.true.i.for.inc.i225_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i225

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %channel5.i = getelementptr inbounds %struct.rvin_group_route, ptr %route.032.i, i32 0, i32 1
  %53 = ptrtoint ptr %channel5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %channel5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv.i)
  %cmp6.i = icmp eq i32 %54, %conv.i
  br i1 %cmp6.i, label %do.body.i, label %land.lhs.true4.i.for.inc.i225_crit_edge

land.lhs.true4.i.for.inc.i225_crit_edge:          ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i225

do.body.i:                                        ; preds = %land.lhs.true4.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_csi2_get_mask.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_csi2_link_notify, %if.then11.i)) #9
          to label %do.end.i [label %if.then11.i], !srcloc !221

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %36, align 8
  %57 = ptrtoint ptr %vin2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vin2.i, align 4
  %59 = ptrtoint ptr %route.032.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %route.032.i, align 4
  %61 = ptrtoint ptr %channel5.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %channel5.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_csi2_get_mask.__UNIQUE_ID_ddebug309, ptr noundef %56, ptr noundef nonnull @.str.44, i32 noundef %58, i32 noundef %60, i32 noundef %62) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then11.i, %do.body.i
  %63 = ptrtoint ptr %mask135.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mask135.i, align 4
  %or.i = or i32 %64, %mask.031.i
  br label %for.inc.i225

for.inc.i225:                                     ; preds = %do.end.i, %land.lhs.true4.i.for.inc.i225_crit_edge, %land.lhs.true.i.for.inc.i225_crit_edge, %for.body.i.for.inc.i225_crit_edge
  %mask.1.i = phi i32 [ %or.i, %do.end.i ], [ %mask.031.i, %land.lhs.true4.i.for.inc.i225_crit_edge ], [ %mask.031.i, %land.lhs.true.i.for.inc.i225_crit_edge ], [ %mask.031.i, %for.body.i.for.inc.i225_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.rvin_group_route, ptr %route.032.i, i32 1
  %mask1.i = getelementptr %struct.rvin_group_route, ptr %route.032.i, i32 1, i32 3
  %65 = ptrtoint ptr %mask1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mask1.i, align 4
  %tobool.not.i224 = icmp eq i32 %66, 0
  br i1 %tobool.not.i224, label %for.inc.i225.rvin_csi2_get_mask.exit_crit_edge, label %for.inc.i225.for.body.i_crit_edge

for.inc.i225.for.body.i_crit_edge:                ; preds = %for.inc.i225
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i225.rvin_csi2_get_mask.exit_crit_edge:   ; preds = %for.inc.i225
  call void @__sanitizer_cov_trace_pc() #11
  br label %rvin_csi2_get_mask.exit

rvin_csi2_get_mask.exit:                          ; preds = %for.inc.i225.rvin_csi2_get_mask.exit_crit_edge, %rvin_group_entity_to_remote_id.exit.rvin_csi2_get_mask.exit_crit_edge
  %mask.0.lcssa.i = phi i32 [ 0, %rvin_group_entity_to_remote_id.exit.rvin_csi2_get_mask.exit_crit_edge ], [ %mask.1.i, %for.inc.i225.rvin_csi2_get_mask.exit_crit_edge ]
  %and82 = and i32 %mask.0.lcssa.i, %mask.0273
  br label %for.inc83

for.inc83:                                        ; preds = %rvin_csi2_get_mask.exit, %if.end66.for.inc83_crit_edge, %for.body61.for.inc83_crit_edge
  %mask.1 = phi i32 [ %and82, %rvin_csi2_get_mask.exit ], [ %mask.0273, %if.end66.for.inc83_crit_edge ], [ %mask.0273, %for.body61.for.inc83_crit_edge ]
  %inc = add nuw nsw i32 %i.0274, 1
  %exitcond.not = icmp eq i32 %i.0274, %20
  br i1 %exitcond.not, label %for.end84, label %for.inc83.for.body61_crit_edge

for.inc83.for.body61_crit_edge:                   ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body61

for.end84:                                        ; preds = %for.inc83
  %67 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 2
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %entity85 = getelementptr inbounds %struct.media_pad, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %entity85 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %entity85, align 4
  %72 = ptrtoint ptr %subdev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %subdev.i, align 4
  %cmp2.i227 = icmp eq ptr %73, %71
  br i1 %cmp2.i227, label %for.end84.if.end119_crit_edge, label %for.inc.i230

for.end84.if.end119_crit_edge:                    ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

for.inc.i230:                                     ; preds = %for.end84
  %74 = ptrtoint ptr %subdev.1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %subdev.1.i, align 4
  %cmp2.1.i229 = icmp eq ptr %75, %71
  br i1 %cmp2.1.i229, label %for.inc.i230.if.end119_crit_edge, label %for.inc.1.i233

for.inc.i230.if.end119_crit_edge:                 ; preds = %for.inc.i230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

for.inc.1.i233:                                   ; preds = %for.inc.i230
  %76 = ptrtoint ptr %subdev.2.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %subdev.2.i, align 4
  %cmp2.2.i232 = icmp eq ptr %77, %71
  br i1 %cmp2.2.i232, label %for.inc.1.i233.if.end119_crit_edge, label %for.inc.2.i237

for.inc.1.i233.if.end119_crit_edge:               ; preds = %for.inc.1.i233
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

for.inc.2.i237:                                   ; preds = %for.inc.1.i233
  %78 = ptrtoint ptr %subdev.3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %subdev.3.i, align 4
  %cmp2.3.i235 = icmp eq ptr %79, %71
  br i1 %cmp2.3.i235, label %for.inc.2.i237.if.end119_crit_edge, label %for.inc.2.i237.for.body100_crit_edge

for.inc.2.i237.for.body100_crit_edge:             ; preds = %for.inc.2.i237
  br label %for.body100

for.inc.2.i237.if.end119_crit_edge:               ; preds = %for.inc.2.i237
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

for.body100:                                      ; preds = %for.inc112.for.body100_crit_edge, %for.inc.2.i237.for.body100_crit_edge
  %i.1275 = phi i32 [ %inc113, %for.inc112.for.body100_crit_edge ], [ 0, %for.inc.2.i237.for.body100_crit_edge ]
  %arrayidx102 = getelementptr [32 x ptr], ptr %vin30, i32 0, i32 %i.1275
  %80 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx102, align 4
  %tobool103.not = icmp eq ptr %81, null
  br i1 %tobool103.not, label %for.body100.for.inc112_crit_edge, label %land.lhs.true

for.body100.for.inc112_crit_edge:                 ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc112

land.lhs.true:                                    ; preds = %for.body100
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %81, i32 0, i32 7, i32 1
  %82 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %subdev, align 4
  %cmp106 = icmp eq ptr %83, %71
  br i1 %cmp106, label %if.then108, label %land.lhs.true.for.inc112_crit_edge

land.lhs.true.for.inc112_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc112

if.then108:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %is_csi = getelementptr inbounds %struct.rvin_dev, ptr %81, i32 0, i32 20
  %84 = ptrtoint ptr %is_csi to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %is_csi, align 8
  br label %out

for.inc112:                                       ; preds = %land.lhs.true.for.inc112_crit_edge, %for.body100.for.inc112_crit_edge
  %inc113 = add nuw nsw i32 %i.1275, 1
  %exitcond277.not = icmp eq i32 %inc113, 32
  br i1 %exitcond277.not, label %do.end117, label %for.inc112.for.body100_crit_edge

for.inc112.for.body100_crit_edge:                 ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body100

do.end117:                                        ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr28, align 8
  %name = getelementptr inbounds %struct.media_entity, ptr %71, i32 0, i32 1
  %87 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.40, ptr noundef %88) #12
  br label %out

if.end119:                                        ; preds = %for.inc.2.i237.if.end119_crit_edge, %for.inc.1.i233.if.end119_crit_edge, %for.inc.i230.if.end119_crit_edge, %for.end84.if.end119_crit_edge
  %retval.0.i238.ph = phi i32 [ 2, %for.inc.1.i233.if.end119_crit_edge ], [ 1, %for.inc.i230.if.end119_crit_edge ], [ 0, %for.end84.if.end119_crit_edge ], [ 3, %for.inc.2.i237.if.end119_crit_edge ]
  %info.i240 = getelementptr i8, ptr %15, i32 -8
  %89 = ptrtoint ptr %info.i240 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %info.i240, align 8
  %routes.i241 = getelementptr inbounds %struct.rvin_info, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %routes.i241 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %routes.i241, align 4
  %mask129.i242 = getelementptr inbounds %struct.rvin_group_route, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %mask129.i242 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mask129.i242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not30.i243 = icmp eq i32 %94, 0
  br i1 %tobool.not30.i243, label %if.end119.rvin_csi2_get_mask.exit268_crit_edge, label %for.body.lr.ph.i246

if.end119.rvin_csi2_get_mask.exit268_crit_edge:   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %rvin_csi2_get_mask.exit268

for.body.lr.ph.i246:                              ; preds = %if.end119
  %index120 = getelementptr inbounds %struct.media_pad, ptr %69, i32 0, i32 2
  %95 = ptrtoint ptr %index120 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %index120, align 4
  %97 = add i16 %96, 255
  %98 = and i16 %97, 255
  %conv.i245 = zext i16 %98 to i32
  br label %for.body.i252

for.body.i252:                                    ; preds = %for.inc.i266.for.body.i252_crit_edge, %for.body.lr.ph.i246
  %mask135.i247 = phi ptr [ %mask129.i242, %for.body.lr.ph.i246 ], [ %mask1.i264, %for.inc.i266.for.body.i252_crit_edge ]
  %route.032.i248 = phi ptr [ %92, %for.body.lr.ph.i246 ], [ %incdec.ptr.i263, %for.inc.i266.for.body.i252_crit_edge ]
  %mask.031.i249 = phi i32 [ 0, %for.body.lr.ph.i246 ], [ %mask.1.i262, %for.inc.i266.for.body.i252_crit_edge ]
  %vin2.i250 = getelementptr inbounds %struct.rvin_group_route, ptr %route.032.i248, i32 0, i32 2
  %99 = ptrtoint ptr %vin2.i250 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %vin2.i250, align 4
  %101 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp.i251 = icmp eq i32 %100, %102
  br i1 %cmp.i251, label %land.lhs.true.i254, label %for.body.i252.for.inc.i266_crit_edge

for.body.i252.for.inc.i266_crit_edge:             ; preds = %for.body.i252
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i266

land.lhs.true.i254:                               ; preds = %for.body.i252
  %103 = ptrtoint ptr %route.032.i248 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %route.032.i248, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %retval.0.i238.ph)
  %cmp3.i253 = icmp eq i32 %104, %retval.0.i238.ph
  br i1 %cmp3.i253, label %land.lhs.true4.i257, label %land.lhs.true.i254.for.inc.i266_crit_edge

land.lhs.true.i254.for.inc.i266_crit_edge:        ; preds = %land.lhs.true.i254
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i266

land.lhs.true4.i257:                              ; preds = %land.lhs.true.i254
  %channel5.i255 = getelementptr inbounds %struct.rvin_group_route, ptr %route.032.i248, i32 0, i32 1
  %105 = ptrtoint ptr %channel5.i255 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %channel5.i255, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %conv.i245)
  %cmp6.i256 = icmp eq i32 %106, %conv.i245
  br i1 %cmp6.i256, label %do.body.i258, label %land.lhs.true4.i257.for.inc.i266_crit_edge

land.lhs.true4.i257.for.inc.i266_crit_edge:       ; preds = %land.lhs.true4.i257
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i266

do.body.i258:                                     ; preds = %land.lhs.true4.i257
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_csi2_get_mask.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_csi2_link_notify, %if.then11.i259)) #9
          to label %do.end.i261 [label %if.then11.i259], !srcloc !221

if.then11.i259:                                   ; preds = %do.body.i258
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr28, align 8
  %109 = ptrtoint ptr %vin2.i250 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %vin2.i250, align 4
  %111 = ptrtoint ptr %route.032.i248 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %route.032.i248, align 4
  %113 = ptrtoint ptr %channel5.i255 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %channel5.i255, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_csi2_get_mask.__UNIQUE_ID_ddebug309, ptr noundef %108, ptr noundef nonnull @.str.44, i32 noundef %110, i32 noundef %112, i32 noundef %114) #9
  br label %do.end.i261

do.end.i261:                                      ; preds = %if.then11.i259, %do.body.i258
  %115 = ptrtoint ptr %mask135.i247 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %mask135.i247, align 4
  %or.i260 = or i32 %116, %mask.031.i249
  br label %for.inc.i266

for.inc.i266:                                     ; preds = %do.end.i261, %land.lhs.true4.i257.for.inc.i266_crit_edge, %land.lhs.true.i254.for.inc.i266_crit_edge, %for.body.i252.for.inc.i266_crit_edge
  %mask.1.i262 = phi i32 [ %or.i260, %do.end.i261 ], [ %mask.031.i249, %land.lhs.true4.i257.for.inc.i266_crit_edge ], [ %mask.031.i249, %land.lhs.true.i254.for.inc.i266_crit_edge ], [ %mask.031.i249, %for.body.i252.for.inc.i266_crit_edge ]
  %incdec.ptr.i263 = getelementptr %struct.rvin_group_route, ptr %route.032.i248, i32 1
  %mask1.i264 = getelementptr %struct.rvin_group_route, ptr %route.032.i248, i32 1, i32 3
  %117 = ptrtoint ptr %mask1.i264 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mask1.i264, align 4
  %tobool.not.i265 = icmp eq i32 %118, 0
  br i1 %tobool.not.i265, label %for.inc.i266.rvin_csi2_get_mask.exit268_crit_edge, label %for.inc.i266.for.body.i252_crit_edge

for.inc.i266.for.body.i252_crit_edge:             ; preds = %for.inc.i266
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i252

for.inc.i266.rvin_csi2_get_mask.exit268_crit_edge: ; preds = %for.inc.i266
  call void @__sanitizer_cov_trace_pc() #11
  br label %rvin_csi2_get_mask.exit268

rvin_csi2_get_mask.exit268:                       ; preds = %for.inc.i266.rvin_csi2_get_mask.exit268_crit_edge, %if.end119.rvin_csi2_get_mask.exit268_crit_edge
  %mask.0.lcssa.i267 = phi i32 [ 0, %if.end119.rvin_csi2_get_mask.exit268_crit_edge ], [ %mask.1.i262, %for.inc.i266.rvin_csi2_get_mask.exit268_crit_edge ]
  %and125 = and i32 %mask.0.lcssa.i267, %mask.1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_csi2_link_notify.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_csi2_link_notify, %if.then136)) #9
          to label %do.end140 [label %if.then136], !srcloc !221

if.then136:                                       ; preds = %rvin_csi2_get_mask.exit268
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr28, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_csi2_link_notify.__UNIQUE_ID_ddebug310, ptr noundef %120, ptr noundef nonnull @.str.42, i32 noundef %mask.1, i32 noundef %and125) #9
  br label %do.end140

do.end140:                                        ; preds = %if.then136, %rvin_csi2_get_mask.exit268
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool141.not = icmp eq i32 %and125, 0
  br i1 %tobool141.not, label %do.end140.out_crit_edge, label %if.end143

do.end140.out_crit_edge:                          ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end143:                                        ; preds = %do.end140
  %121 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx, align 4
  %123 = tail call i32 @llvm.cttz.i32(i32 %and125, i1 true) #9, !range !229
  %conv147 = trunc i32 %123 to i8
  %call148 = tail call i32 @rvin_set_channel_routing(ptr noundef %122, i8 noundef zeroext %conv147) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %if.end143.out_crit_edge

if.end143.out_crit_edge:                          ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end151:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  %is_csi152 = getelementptr i8, ptr %15, i32 2488
  %124 = ptrtoint ptr %is_csi152 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %is_csi152, align 8
  br label %out

out:                                              ; preds = %if.end151, %if.end143.out_crit_edge, %do.end140.out_crit_edge, %do.end117, %if.then108, %do.end
  %ret.1 = phi i32 [ -19, %do.end ], [ %call148, %if.end143.out_crit_edge ], [ 0, %if.end151 ], [ 0, %if.then108 ], [ -19, %do.end117 ], [ -31, %do.end140.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup154

cleanup154:                                       ; preds = %out, %for.body.cleanup154_crit_edge, %is_media_entity_v4l2_video_device.exit.cleanup154_crit_edge, %lor.lhs.false.cleanup154_crit_edge, %if.end.cleanup154_crit_edge, %entry.cleanup154_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ %call, %entry.cleanup154_crit_edge ], [ 0, %is_media_entity_v4l2_video_device.exit.cleanup154_crit_edge ], [ 0, %if.end.cleanup154_crit_edge ], [ 0, %lor.lhs.false.cleanup154_crit_edge ], [ -16, %for.body.cleanup154_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_pipeline_link_notify(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rvin_set_channel_routing(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rvin_parallel_parse_of(ptr noundef %vin) unnamed_addr #2 align 64 {
entry:
  %vep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vep) #9
  %0 = call ptr @memset(ptr %vep, i32 0, i32 64)
  %1 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vin, align 8
  %call = tail call ptr @dev_fwnode(ptr noundef %2) #9
  %call1 = tail call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @fwnode_graph_get_remote_endpoint(ptr noundef nonnull %call1) #9
  %call3 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call1, ptr noundef nonnull %vep) #9
  call void @fwnode_handle_put(ptr noundef nonnull %call1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  %3 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vin, align 8
  %tobool.not.i.i = icmp eq ptr %call2, null
  %cmp.i.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %do.end.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

do.end.is_of_node.exit.thread_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_of_node.exit.thread

is_of_node.exit:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %call2, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %6, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %call2, i32 -12
  %spec.select = select i1 %cmp.i, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %do.end.is_of_node.exit.thread_crit_edge
  %7 = phi ptr [ null, %do.end.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.30, ptr noundef %7) #12
  br label %out

if.end9:                                          ; preds = %if.end
  %bus_type = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 1
  %8 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_type, align 4
  %.off = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %do.body10, label %do.end29

do.body10:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_parallel_parse_of.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_parallel_parse_of, %if.then16)) #9
          to label %do.end22 [label %if.then16], !srcloc !221

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vin, align 8
  %12 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  %cond19 = select i1 %cmp, ptr @.str.49, ptr @.str.50
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_parallel_parse_of.__UNIQUE_ID_ddebug306, ptr noundef %11, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond19) #9
  br label %do.end22

do.end22:                                         ; preds = %if.then16, %do.body10
  %14 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bus_type, align 4
  %mbus_type = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %mbus_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mbus_type, align 8
  %bus = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 3
  %bus25 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2
  %17 = ptrtoint ptr %bus25 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %bus25, align 4
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %bus, align 4
  %notifier = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 6
  %call31 = call ptr @__v4l2_async_nf_add_fwnode(ptr noundef %notifier, ptr noundef %call2, i32 noundef 28) #9
  %cmp.i92 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then33, label %if.end35

do.end29:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vin, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.52) #12
  br label %out

if.then33:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call31 to i32
  br label %out

if.end35:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #11
  %parallel = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7
  %23 = ptrtoint ptr %parallel to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call31, ptr %parallel, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_parallel_parse_of.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_parallel_parse_of, %if.then50)) #9
          to label %out [label %if.then50], !srcloc !221

if.then50:                                        ; preds = %if.end35
  %24 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vin, align 8
  %tobool.not.i.i93 = icmp eq ptr %call2, null
  %cmp.i.i94 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i95 = or i1 %tobool.not.i.i93, %cmp.i.i94
  br i1 %spec.select.i.i95, label %if.then50.is_of_node.exit99.thread_crit_edge, label %is_of_node.exit99

if.then50.is_of_node.exit99.thread_crit_edge:     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_of_node.exit99.thread

is_of_node.exit99:                                ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i96 = getelementptr inbounds %struct.fwnode_handle, ptr %call2, i32 0, i32 1
  %26 = ptrtoint ptr %ops.i96 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i96, align 4
  %cmp.i97 = icmp eq ptr %27, @of_fwnode_ops
  %add.ptr58 = getelementptr i8, ptr %call2, i32 -12
  %spec.select104 = select i1 %cmp.i97, ptr %add.ptr58, ptr null
  br label %is_of_node.exit99.thread

is_of_node.exit99.thread:                         ; preds = %is_of_node.exit99, %if.then50.is_of_node.exit99.thread_crit_edge
  %28 = phi ptr [ null, %if.then50.is_of_node.exit99.thread_crit_edge ], [ %spec.select104, %is_of_node.exit99 ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_parallel_parse_of.__UNIQUE_ID_ddebug307, ptr noundef %25, ptr noundef nonnull @.str.54, ptr noundef %28) #9
  br label %out

out:                                              ; preds = %is_of_node.exit99.thread, %if.end35, %if.then33, %do.end29, %is_of_node.exit.thread
  %ret.0 = phi i32 [ -22, %is_of_node.exit.thread ], [ -22, %do.end29 ], [ %22, %if.then33 ], [ 0, %is_of_node.exit99.thread ], [ 0, %if.end35 ]
  call void @fwnode_handle_put(ptr noundef %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_parallel_notify_bound(ptr nocapture noundef readonly %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 1
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -1368
  %lock = getelementptr i8, ptr %1, i32 428
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %call = tail call fastcc i32 @rvin_parallel_subdevice_attach(ptr noundef %add.ptr, ptr noundef %subdev)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 12
  %2 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %host_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_parallel_notify_bound.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_parallel_notify_bound, %if.then7)) #9
          to label %cleanup [label %if.then7], !srcloc !221

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  %source_pad = getelementptr i8, ptr %1, i32 380
  %5 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %source_pad, align 4
  %sink_pad = getelementptr i8, ptr %1, i32 384
  %7 = ptrtoint ptr %sink_pad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sink_pad, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_parallel_notify_bound.__UNIQUE_ID_ddebug305, ptr noundef %4, ptr noundef nonnull @.str.56, ptr noundef %name, i32 noundef %6, i32 noundef %8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_parallel_notify_complete(ptr nocapture noundef readonly %notifier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 1
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -1368
  %call.i = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %1, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.35) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vdev = getelementptr i8, ptr %1, i32 -1352
  %flags.i = getelementptr i8, ptr %1, i32 -112
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @rvin_v4l2_register(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then3.cleanup_crit_edge, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %info = getelementptr i8, ptr %1, i32 -1360
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 8
  %use_mc = getelementptr inbounds %struct.rvin_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %use_mc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_mc, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %subdev = getelementptr i8, ptr %1, i32 364
  %10 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %subdev, align 4
  %source_pad = getelementptr i8, ptr %1, i32 380
  %12 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %source_pad, align 4
  %conv = trunc i32 %13 to i16
  %sink_pad = getelementptr i8, ptr %1, i32 384
  %14 = ptrtoint ptr %sink_pad to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sink_pad, align 8
  %conv16 = trunc i32 %15 to i16
  %call17 = tail call i32 @media_create_pad_link(ptr noundef %11, i16 noundef zeroext %conv, ptr noundef %vdev, i16 noundef zeroext %conv16, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end11.cleanup_crit_edge, label %do.end22

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.media_entity, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %name24 = getelementptr i8, ptr %1, i32 -1336
  %20 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.62, ptr noundef %19, ptr noundef %21, i32 noundef %call17) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call4, %if.then3.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %call17, %do.end22 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rvin_parallel_notify_unbind(ptr nocapture noundef readonly %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 1
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -1368
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_parallel_notify_unbind.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_parallel_notify_unbind, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !221

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_parallel_notify_unbind.__UNIQUE_ID_ddebug304, ptr noundef %3, ptr noundef nonnull @.str.65, ptr noundef %name) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %1, i32 428
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  tail call void @rvin_v4l2_unregister(ptr noundef %add.ptr) #9
  %subdev.i = getelementptr i8, ptr %1, i32 364
  %4 = ptrtoint ptr %subdev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %subdev.i, align 4
  %info.i = getelementptr i8, ptr %1, i32 -1360
  %5 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info.i, align 8
  %use_mc.i = getelementptr inbounds %struct.rvin_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %use_mc.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_mc.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end.rvin_parallel_subdevice_detach.exit_crit_edge

do.end.rvin_parallel_subdevice_detach.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rvin_parallel_subdevice_detach.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_handler.i.i = getelementptr i8, ptr %1, i32 128
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i.i) #9
  %ctrl_handler1.i.i = getelementptr i8, ptr %1, i32 -172
  %9 = ptrtoint ptr %ctrl_handler1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ctrl_handler1.i.i, align 4
  br label %rvin_parallel_subdevice_detach.exit

rvin_parallel_subdevice_detach.exit:              ; preds = %if.then.i, %do.end.rvin_parallel_subdevice_detach.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rvin_parallel_subdevice_attach(ptr noundef %vin, ptr noundef %subdev) unnamed_addr #2 align 64 {
entry:
  %code = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %code) #9
  %0 = getelementptr inbounds i8, ptr %code, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %2, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp.i = icmp ult i16 %5, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %for.cond.preheader.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.preheader.i:                             ; preds = %entry
  %pads.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 9
  %conv4.i = zext i16 %5 to i32
  %6 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pads.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %pad.015.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %flags.i = getelementptr %struct.media_pad, ptr %7, i32 %pad.015.i, i32 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %pad.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv4.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i207.ph = phi i32 [ 0, %entry.if.end_crit_edge ], [ %pad.015.i, %for.body.i.if.end_crit_edge ]
  %source_pad = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 4
  %10 = ptrtoint ptr %source_pad to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i207.ph, ptr %source_pad, align 4
  %11 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %cmp.i209 = icmp ult i16 %12, 2
  br i1 %cmp.i209, label %if.end.rvin_find_pad.exit222_crit_edge, label %for.cond.preheader.i212

if.end.rvin_find_pad.exit222_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rvin_find_pad.exit222

for.cond.preheader.i212:                          ; preds = %if.end
  %pads.i210 = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 9
  %conv4.i211 = zext i16 %12 to i32
  %13 = ptrtoint ptr %pads.i210 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pads.i210, align 4
  br label %for.body.i217

for.body.i217:                                    ; preds = %for.inc.i220.for.body.i217_crit_edge, %for.cond.preheader.i212
  %pad.015.i213 = phi i32 [ 0, %for.cond.preheader.i212 ], [ %inc.i218, %for.inc.i220.for.body.i217_crit_edge ]
  %flags.i214 = getelementptr %struct.media_pad, ptr %14, i32 %pad.015.i213, i32 4
  %15 = ptrtoint ptr %flags.i214 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i214, align 4
  %and.i215 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i215)
  %tobool.not.i216 = icmp eq i32 %and.i215, 0
  br i1 %tobool.not.i216, label %for.inc.i220, label %for.body.i217.rvin_find_pad.exit222_crit_edge

for.body.i217.rvin_find_pad.exit222_crit_edge:    ; preds = %for.body.i217
  call void @__sanitizer_cov_trace_pc() #11
  br label %rvin_find_pad.exit222

for.inc.i220:                                     ; preds = %for.body.i217
  %inc.i218 = add nuw nsw i32 %pad.015.i213, 1
  %exitcond.not.i219 = icmp eq i32 %inc.i218, %conv4.i211
  br i1 %exitcond.not.i219, label %for.inc.i220.rvin_find_pad.exit222_crit_edge, label %for.inc.i220.for.body.i217_crit_edge

for.inc.i220.for.body.i217_crit_edge:             ; preds = %for.inc.i220
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i217

for.inc.i220.rvin_find_pad.exit222_crit_edge:     ; preds = %for.inc.i220
  call void @__sanitizer_cov_trace_pc() #11
  br label %rvin_find_pad.exit222

rvin_find_pad.exit222:                            ; preds = %for.inc.i220.rvin_find_pad.exit222_crit_edge, %for.body.i217.rvin_find_pad.exit222_crit_edge, %if.end.rvin_find_pad.exit222_crit_edge
  %17 = phi i32 [ 0, %if.end.rvin_find_pad.exit222_crit_edge ], [ 0, %for.inc.i220.rvin_find_pad.exit222_crit_edge ], [ %pad.015.i213, %for.body.i217.rvin_find_pad.exit222_crit_edge ]
  %sink_pad = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 5
  %18 = ptrtoint ptr %sink_pad to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sink_pad, align 8
  %info = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 2
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info, align 8
  %use_mc = getelementptr inbounds %struct.rvin_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %use_mc to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %use_mc, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %rvin_find_pad.exit222
  call void @__sanitizer_cov_trace_pc() #11
  %subdev6 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %subdev6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %subdev, ptr %subdev6, align 4
  br label %cleanup

if.end7:                                          ; preds = %rvin_find_pad.exit222
  %mbus_code = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 22
  %24 = ptrtoint ptr %mbus_code to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %mbus_code, align 8
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %25 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %index, align 4
  %26 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i207.ph, ptr %code, align 4
  %tobool12.not = icmp eq ptr %subdev, null
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 6
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  br i1 %tobool12.not, label %if.end7.do.end55_crit_edge, label %if.end7.land.rhs_crit_edge

if.end7.land.rhs_crit_edge:                       ; preds = %if.end7
  br label %land.rhs

if.end7.do.end55_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

land.rhs:                                         ; preds = %sw.epilog.land.rhs_crit_edge, %if.end7.land.rhs_crit_edge
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 4
  %pad14 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %pad14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pad14, align 4
  %tobool15.not = icmp eq ptr %30, null
  br i1 %tobool15.not, label %land.rhs.while.end_crit_edge, label %land.lhs.true

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.lhs.true:                                    ; preds = %land.rhs
  %enum_mbus_code = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %enum_mbus_code to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %enum_mbus_code, align 4
  %tobool18.not = icmp eq ptr %32, null
  br i1 %tobool18.not, label %land.lhs.true.while.end_crit_edge, label %if.else20

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.else20:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool21.not = icmp eq ptr %33, null
  br i1 %tobool21.not, label %if.else20.if.else28_crit_edge, label %land.lhs.true22

if.else20.if.else28_crit_edge:                    ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else28

land.lhs.true22:                                  ; preds = %if.else20
  %enum_mbus_code23 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %enum_mbus_code23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %enum_mbus_code23, align 4
  %tobool24.not = icmp eq ptr %35, null
  br i1 %tobool24.not, label %land.lhs.true22.if.else28_crit_edge, label %land.lhs.true22.if.end35_crit_edge

land.lhs.true22.if.end35_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true22.if.else28_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else28

if.else28:                                        ; preds = %land.lhs.true22.if.else28_crit_edge, %if.else20.if.else28_crit_edge
  br label %if.end35

if.end35:                                         ; preds = %if.else28, %land.lhs.true22.if.end35_crit_edge
  %.sink = phi ptr [ %32, %if.else28 ], [ %35, %land.lhs.true22.if.end35_crit_edge ]
  %call32 = call i32 %.sink(ptr noundef nonnull %subdev, ptr noundef null, ptr noundef nonnull %code) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool36.not = icmp eq i32 %call32, 0
  br i1 %tobool36.not, label %while.body, label %if.end35.while.end_crit_edge

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end35
  %36 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %index, align 4
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %0, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %39, label %while.body.sw.epilog_crit_edge [
    i32 8209, label %while.body.sw.bb_crit_edge
    i32 8207, label %while.body.sw.bb_crit_edge289
    i32 8198, label %while.body.sw.bb_crit_edge290
    i32 8216, label %while.body.sw.bb_crit_edge291
    i32 4106, label %while.body.sw.bb_crit_edge292
  ]

while.body.sw.bb_crit_edge292:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

while.body.sw.bb_crit_edge291:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

while.body.sw.bb_crit_edge290:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

while.body.sw.bb_crit_edge289:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

while.body.sw.bb_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body.sw.bb_crit_edge, %while.body.sw.bb_crit_edge289, %while.body.sw.bb_crit_edge290, %while.body.sw.bb_crit_edge291, %while.body.sw.bb_crit_edge292
  %41 = ptrtoint ptr %mbus_code to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %mbus_code, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_parallel_subdevice_attach.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_parallel_subdevice_attach, %if.then47)) #9
          to label %sw.epilog [label %if.then47], !srcloc !221

if.then47:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vin, align 8
  %44 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mbus_code, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_parallel_subdevice_attach.__UNIQUE_ID_ddebug303, ptr noundef %43, ptr noundef nonnull @.str.58, ptr noundef %name, i32 noundef %45) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then47, %sw.bb, %while.body.sw.epilog_crit_edge
  %46 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load i32, ptr %mbus_code, align 8
  %tobool11.not = icmp eq i32 %.pr, 0
  br i1 %tobool11.not, label %sw.epilog.land.rhs_crit_edge, label %sw.epilog.if.else64_crit_edge

sw.epilog.if.else64_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else64

sw.epilog.land.rhs_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.end:                                        ; preds = %if.end35.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %47 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr277 = load i32, ptr %mbus_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr277)
  %tobool51.not = icmp eq i32 %.pr277, 0
  br i1 %tobool51.not, label %while.end.do.end55_crit_edge, label %while.end.if.else64_crit_edge

while.end.if.else64_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else64

while.end.do.end55_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

do.end55:                                         ; preds = %while.end.do.end55_crit_edge, %if.end7.do.end55_crit_edge
  %48 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vin, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.59, ptr noundef %name) #12
  br label %cleanup

if.else64:                                        ; preds = %while.end.if.else64_crit_edge, %sw.epilog.if.else64_crit_edge
  %50 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %video, align 4
  %tobool66.not = icmp eq ptr %53, null
  br i1 %tobool66.not, label %if.else64.if.else102_crit_edge, label %land.lhs.true67

if.else64.if.else102_crit_edge:                   ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102

land.lhs.true67:                                  ; preds = %if.else64
  %g_tvnorms = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %g_tvnorms to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %g_tvnorms, align 4
  %tobool70.not = icmp eq ptr %55, null
  br i1 %tobool70.not, label %land.lhs.true67.if.else102_crit_edge, label %if.else72

land.lhs.true67.if.else102_crit_edge:             ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102

if.else72:                                        ; preds = %land.lhs.true67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool73.not = icmp eq ptr %56, null
  br i1 %tobool73.not, label %if.else72.if.else80_crit_edge, label %land.lhs.true74

if.else72.if.else80_crit_edge:                    ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else80

land.lhs.true74:                                  ; preds = %if.else72
  %g_tvnorms75 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %56, i32 0, i32 7
  %57 = ptrtoint ptr %g_tvnorms75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %g_tvnorms75, align 4
  %tobool76.not = icmp eq ptr %58, null
  br i1 %tobool76.not, label %land.lhs.true74.if.else80_crit_edge, label %land.lhs.true74.if.end89_crit_edge

land.lhs.true74.if.end89_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

land.lhs.true74.if.else80_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else80

if.else80:                                        ; preds = %land.lhs.true74.if.else80_crit_edge, %if.else72.if.else80_crit_edge
  br label %if.end89

if.end89:                                         ; preds = %if.else80, %land.lhs.true74.if.end89_crit_edge
  %.sink281 = phi ptr [ %55, %if.else80 ], [ %58, %land.lhs.true74.if.end89_crit_edge ]
  %tvnorms85 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 22
  %call86 = call i32 %.sink281(ptr noundef nonnull %subdev, ptr noundef %tvnorms85) #9
  %__result61.0.fr = freeze i32 %call86
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result61.0.fr)
  %cmp91 = icmp sgt i32 %__result61.0.fr, -1
  br i1 %cmp91, label %if.end89.if.else102_crit_edge, label %switch.early.test

if.end89.if.else102_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102

switch.early.test:                                ; preds = %if.end89
  %59 = zext i32 %__result61.0.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %__result61.0.fr, label %switch.early.test.cleanup_crit_edge [
    i32 -19, label %switch.early.test.if.else102_crit_edge
    i32 -515, label %switch.early.test.if.else102_crit_edge293
  ]

switch.early.test.if.else102_crit_edge293:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102

switch.early.test.if.else102_crit_edge:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else102:                                       ; preds = %switch.early.test.if.else102_crit_edge, %switch.early.test.if.else102_crit_edge293, %if.end89.if.else102_crit_edge, %land.lhs.true67.if.else102_crit_edge, %if.else64.if.else102_crit_edge
  %std271.sink = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 27
  %60 = ptrtoint ptr %std271.sink to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %std271.sink, align 8
  %61 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops, align 4
  %video104 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %video104 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %video104, align 4
  %tobool105.not = icmp eq ptr %64, null
  br i1 %tobool105.not, label %if.else102.if.end134_crit_edge, label %land.lhs.true106

if.else102.if.end134_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

land.lhs.true106:                                 ; preds = %if.else102
  %g_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %g_std to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %g_std, align 4
  %tobool109.not = icmp eq ptr %66, null
  br i1 %tobool109.not, label %land.lhs.true106.if.end134_crit_edge, label %if.else111

land.lhs.true106.if.end134_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.else111:                                       ; preds = %land.lhs.true106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool112.not = icmp eq ptr %67, null
  br i1 %tobool112.not, label %if.else111.if.else120_crit_edge, label %land.lhs.true113

if.else111.if.else120_crit_edge:                  ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else120

land.lhs.true113:                                 ; preds = %if.else111
  %g_std114 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %g_std114 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %g_std114, align 4
  %tobool115.not = icmp eq ptr %69, null
  br i1 %tobool115.not, label %land.lhs.true113.if.else120_crit_edge, label %land.lhs.true113.if.end128_crit_edge

land.lhs.true113.if.end128_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

land.lhs.true113.if.else120_crit_edge:            ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else120

if.else120:                                       ; preds = %land.lhs.true113.if.else120_crit_edge, %if.else111.if.else120_crit_edge
  br label %if.end128

if.end128:                                        ; preds = %if.else120, %land.lhs.true113.if.end128_crit_edge
  %.sink285 = phi ptr [ %66, %if.else120 ], [ %69, %land.lhs.true113.if.end128_crit_edge ]
  %call125 = call i32 %.sink285(ptr noundef nonnull %subdev, ptr noundef %std271.sink) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call125)
  %cmp130 = icmp sgt i32 %call125, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call125)
  %cmp132.not = icmp eq i32 %call125, -515
  %or.cond206 = or i1 %cmp130, %cmp132.not
  br i1 %or.cond206, label %if.end128.if.end134_crit_edge, label %if.end128.cleanup_crit_edge

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end128.if.end134_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.end134:                                        ; preds = %if.end128.if.end134_crit_edge, %land.lhs.true106.if.end134_crit_edge, %if.else102.if.end134_crit_edge
  %ctrl_handler.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 5
  %call.i = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 16, ptr noundef nonnull @rvin_create_controls._key, ptr noundef nonnull @.str.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i223 = icmp slt i32 %call.i, 0
  br i1 %cmp.i223, label %if.end134.cleanup_crit_edge, label %if.end.i

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end134
  %call2.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @rvin_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 255) #9
  %error.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 5, i32 9
  %70 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i224 = icmp eq i32 %71, 0
  br i1 %tobool.not.i224, label %if.then9.i, label %rvin_create_controls.exit

if.then9.i:                                       ; preds = %if.end.i
  %ctrl_handler11.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 8
  %72 = ptrtoint ptr %ctrl_handler11.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctrl_handler11.i, align 4
  %call12.i = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_handler.i, ptr noundef %73, ptr noundef null, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %rvin_create_controls.exit.thread251, label %rvin_create_controls.exit.thread246

rvin_create_controls.exit.thread251:              ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #9
  %ctrl_handler18.i253 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 9
  %74 = ptrtoint ptr %ctrl_handler18.i253 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %ctrl_handler18.i253, align 4
  br label %cleanup

rvin_create_controls.exit.thread246:              ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_handler18.i249 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 9
  %75 = ptrtoint ptr %ctrl_handler18.i249 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %ctrl_handler.i, ptr %ctrl_handler18.i249, align 4
  br label %if.end138

rvin_create_controls.exit:                        ; preds = %if.end.i
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #9
  %ctrl_handler18.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 9
  %76 = ptrtoint ptr %ctrl_handler18.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %ctrl_handler18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp136 = icmp slt i32 %71, 0
  br i1 %cmp136, label %rvin_create_controls.exit.cleanup_crit_edge, label %rvin_create_controls.exit.if.end138_crit_edge

rvin_create_controls.exit.if.end138_crit_edge:    ; preds = %rvin_create_controls.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

rvin_create_controls.exit.cleanup_crit_edge:      ; preds = %rvin_create_controls.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end138:                                        ; preds = %rvin_create_controls.exit.if.end138_crit_edge, %rvin_create_controls.exit.thread246
  %subdev140 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 1
  %77 = ptrtoint ptr %subdev140 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %subdev, ptr %subdev140, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end138, %rvin_create_controls.exit.cleanup_crit_edge, %rvin_create_controls.exit.thread251, %if.end134.cleanup_crit_edge, %if.end128.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge, %do.end55, %if.then4, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.end138 ], [ -22, %do.end55 ], [ %__result61.0.fr, %switch.early.test.cleanup_crit_edge ], [ %call125, %if.end128.cleanup_crit_edge ], [ %71, %rvin_create_controls.exit.cleanup_crit_edge ], [ %call12.i, %rvin_create_controls.exit.thread251 ], [ %call.i, %if.end134.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %code) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rvin_stop_streaming(ptr noundef %1) #9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.not = icmp eq i32 %3, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup38_crit_edge

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %use_mc = getelementptr inbounds %struct.rvin_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %use_mc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_mc, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.if.end36_crit_edge, label %if.then1

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then1:                                         ; preds = %if.end
  %id = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp2 = icmp ult i32 %9, 4
  %cond = select i1 %cmp2, i32 0, i32 4
  %group = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %group, align 4
  %arrayidx = getelementptr %struct.rvin_group, ptr %11, i32 0, i32 5, i32 %cond
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %cleanup.thread, label %cleanup, !prof !224

cleanup.thread:                                   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1121, i32 noundef 9, ptr noundef null) #9
  br label %cleanup38

cleanup:                                          ; preds = %if.then1
  %chsel = getelementptr inbounds %struct.rvin_dev, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %chsel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chsel, align 4
  %conv = trunc i32 %15 to i8
  %call30 = tail call i32 @rvin_set_channel_routing(ptr noundef nonnull %13, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup.if.end36_crit_edge, label %cleanup.cleanup38_crit_edge

cleanup.cleanup38_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

cleanup.if.end36_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end36:                                         ; preds = %cleanup.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %call37 = tail call i32 @rvin_start_streaming(ptr noundef %1) #9
  br label %cleanup38

cleanup38:                                        ; preds = %if.end36, %cleanup.cleanup38_crit_edge, %cleanup.thread, %entry.cleanup38_crit_edge
  %retval.1 = phi i32 [ %call37, %if.end36 ], [ %call30, %cleanup.cleanup38_crit_edge ], [ 0, %entry.cleanup38_crit_edge ], [ -19, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rvin_stop_streaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rvin_start_streaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !108, !109, !110, !111, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209}
!llvm.module.flags = !{!211, !212, !213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !{ptr @__initcall__kmod_rcar_vin__311_1629_rcar_vin_driver_init6, !1, !"__initcall__kmod_rcar_vin__311_1629_rcar_vin_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1629, i32 1}
!2 = !{ptr @__exitcall_rcar_vin_driver_exit, !1, !"__exitcall_rcar_vin_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author312, !4, !"__UNIQUE_ID_author312", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1631, i32 1}
!5 = !{ptr @__UNIQUE_ID_description313, !6, !"__UNIQUE_ID_description313", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1632, i32 1}
!7 = !{ptr @__UNIQUE_ID_file314, !8, !"__UNIQUE_ID_file314", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1633, i32 1}
!9 = !{ptr @__UNIQUE_ID_license315, !8, !"__UNIQUE_ID_license315", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1620, i32 11}
!12 = !{ptr @rcar_vin_driver, !13, !"rcar_vin_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1618, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1536, i32 36}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1536, i32 13}
!18 = !{ptr @r8a7795es1, !19, !"r8a7795es1", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1534, i32 42}
!20 = !{ptr @rcar_info_r8a7795es1, !21, !"rcar_info_r8a7795es1", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1284, i32 31}
!22 = !{ptr @rcar_info_r8a7795es1_routes, !23, !"rcar_info_r8a7795es1_routes", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1238, i32 38}
!24 = !{ptr @rvin_create_controls._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 448, i32 8}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rvin_ctrl_ops, !28, !"rvin_ctrl_ops", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 434, i32 35}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 130, i32 48}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 132, i32 3}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rvin_group_get._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @rvin_group_get._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 138, i32 3}
!41 = !{ptr @rvin_group_get._entry.10, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @rvin_group_get._entry_ptr.12, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 158, i32 4}
!45 = !{ptr @rvin_group_get._entry.13, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rvin_group_get._entry_ptr.15, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 172, i32 3}
!49 = !{ptr @rvin_group_get._entry.16, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @rvin_group_get._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 60, i32 8}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rvin_group_lock, !52, !"rvin_group_lock", i1 false, i1 false}
!55 = !{ptr @rvin_group_data, !56, !"rvin_group_data", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 61, i32 27}
!57 = !{ptr @rvin_group_init.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 77, i32 2}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 85, i32 2}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rvin_group_init.__UNIQUE_ID_ddebug299, !61, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 97, i32 51}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1037, i32 4}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @rvin_isp_setup_links._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @rvin_isp_setup_links._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 408, i32 3}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @rvin_group_notifier_init._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @rvin_group_notifier_init._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 328, i32 3}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @rvin_group_parse_of._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @rvin_group_parse_of._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 342, i32 2}
!84 = !{ptr @rvin_group_parse_of.__UNIQUE_ID_ddebug302, !83, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!85 = !{ptr @rvin_group_notify_ops, !86, !"rvin_group_notify_ops", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 304, i32 52}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 295, i32 3}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @rvin_group_notify_bound.__UNIQUE_ID_ddebug301, !88, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 239, i32 3}
!93 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rvin_group_notify_complete._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @rvin_group_notify_complete._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 273, i32 3}
!98 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @rvin_group_notify_unbind.__UNIQUE_ID_ddebug300, !97, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 944, i32 4}
!102 = !{ptr @rvin_csi2_setup_links._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @rvin_csi2_setup_links._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @rvin_csi2_media_ops, !105, !"rvin_csi2_media_ops", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 903, i32 38}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 875, i32 3}
!108 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @rvin_csi2_link_notify._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @rvin_csi2_link_notify._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 883, i32 2}
!113 = !{ptr @rvin_csi2_link_notify.__UNIQUE_ID_ddebug310, !112, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 757, i32 4}
!116 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @rvin_csi2_get_mask.__UNIQUE_ID_ddebug309, !115, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 728, i32 2}
!120 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @rvin_parallel_init.__UNIQUE_ID_ddebug308, !119, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!122 = !{ptr @rvin_parallel_init._entry, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 734, i32 3}
!124 = !{ptr @rvin_parallel_init._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 673, i32 3}
!127 = !{ptr @rvin_parallel_parse_of._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @rvin_parallel_parse_of._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 681, i32 3}
!131 = !{ptr @rvin_parallel_parse_of.__UNIQUE_ID_ddebug306, !130, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!132 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 688, i32 3}
!136 = !{ptr @rvin_parallel_parse_of._entry.51, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @rvin_parallel_parse_of._entry_ptr.53, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 702, i32 2}
!140 = !{ptr @rvin_parallel_parse_of.__UNIQUE_ID_ddebug307, !139, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!141 = !{ptr @rvin_parallel_notify_ops, !142, !"rvin_parallel_notify_ops", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 650, i32 52}
!143 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 643, i32 2}
!145 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @rvin_parallel_notify_bound.__UNIQUE_ID_ddebug305, !144, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 536, i32 4}
!149 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @rvin_parallel_subdevice_attach.__UNIQUE_ID_ddebug303, !148, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!151 = !{ptr @.str.59, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 545, i32 3}
!153 = !{ptr @rvin_parallel_subdevice_attach._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @rvin_parallel_subdevice_attach._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.60, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 589, i32 3}
!157 = !{ptr @rvin_parallel_notify_complete._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @rvin_parallel_notify_complete._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.62, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 609, i32 3}
!161 = !{ptr @rvin_parallel_notify_complete._entry.61, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @rvin_parallel_notify_complete._entry_ptr.63, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 621, i32 2}
!165 = !{ptr @.str.65, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @rvin_parallel_notify_unbind.__UNIQUE_ID_ddebug304, !164, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!167 = !{ptr @rvin_of_id_table, !168, !"rvin_of_id_table", i1 false, i1 false}
!168 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1465, i32 34}
!169 = !{ptr @rcar_info_r8a7796, !170, !"rcar_info_r8a7796", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1324, i32 31}
!171 = !{ptr @rcar_info_r8a7796_routes, !172, !"rcar_info_r8a7796_routes", i1 false, i1 false}
!172 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1292, i32 38}
!173 = !{ptr @rcar_info_r8a77965, !174, !"rcar_info_r8a77965", i1 false, i1 false}
!174 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1369, i32 31}
!175 = !{ptr @rcar_info_r8a77965_routes, !176, !"rcar_info_r8a77965_routes", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1333, i32 38}
!177 = !{ptr @rcar_info_r8a77990, !178, !"rcar_info_r8a77990", i1 false, i1 false}
!178 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1434, i32 31}
!179 = !{ptr @rcar_info_r8a77990_routes, !180, !"rcar_info_r8a77990_routes", i1 false, i1 false}
!180 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1426, i32 38}
!181 = !{ptr @rcar_info_r8a774e1, !182, !"rcar_info_r8a774e1", i1 false, i1 false}
!182 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1185, i32 31}
!183 = !{ptr @rcar_info_r8a774e1_routes, !184, !"rcar_info_r8a774e1_routes", i1 false, i1 false}
!184 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1157, i32 38}
!185 = !{ptr @rcar_info_m1, !186, !"rcar_info_m1", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1143, i32 31}
!187 = !{ptr @rcar_info_h1, !188, !"rcar_info_h1", i1 false, i1 false}
!188 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1136, i32 31}
!189 = !{ptr @rcar_info_gen2, !190, !"rcar_info_gen2", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1150, i32 31}
!191 = !{ptr @rcar_info_r8a7795, !192, !"rcar_info_r8a7795", i1 false, i1 false}
!192 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1229, i32 31}
!193 = !{ptr @rcar_info_r8a7795_routes, !194, !"rcar_info_r8a7795_routes", i1 false, i1 false}
!194 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1193, i32 38}
!195 = !{ptr @rcar_info_r8a77970, !196, !"rcar_info_r8a77970", i1 false, i1 false}
!196 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1389, i32 31}
!197 = !{ptr @rcar_info_r8a77970_routes, !198, !"rcar_info_r8a77970_routes", i1 false, i1 false}
!198 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1378, i32 38}
!199 = !{ptr @rcar_info_r8a77980, !200, !"rcar_info_r8a77980", i1 false, i1 false}
!200 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1417, i32 31}
!201 = !{ptr @rcar_info_r8a77980_routes, !202, !"rcar_info_r8a77980_routes", i1 false, i1 false}
!202 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1397, i32 38}
!203 = !{ptr @rcar_info_r8a77995, !204, !"rcar_info_r8a77995", i1 false, i1 false}
!204 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1447, i32 31}
!205 = !{ptr @rcar_info_r8a77995_routes, !206, !"rcar_info_r8a77995_routes", i1 false, i1 false}
!206 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1443, i32 38}
!207 = !{ptr @rcar_info_r8a779a0, !208, !"rcar_info_r8a779a0", i1 false, i1 false}
!208 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1456, i32 31}
!209 = !{ptr @rvin_pm_ops, !210, !"rvin_pm_ops", i1 false, i1 false}
!210 = !{!"../drivers/media/platform/rcar-vin/rcar-core.c", i32 1616, i32 8}
!211 = !{i32 1, !"wchar_size", i32 2}
!212 = !{i32 1, !"min_enum_size", i32 4}
!213 = !{i32 8, !"branch-target-enforcement", i32 0}
!214 = !{i32 8, !"sign-return-address", i32 0}
!215 = !{i32 8, !"sign-return-address-all", i32 0}
!216 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!217 = !{i32 7, !"uwtable", i32 1}
!218 = !{i32 7, !"frame-pointer", i32 2}
!219 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!220 = !{i8 0, i8 2}
!221 = !{i64 2148997859, i64 2148997864, i64 2148997877, i64 2148997921, i64 2148997955, i64 2148997976}
!222 = !{!"auto-init"}
!223 = !{i64 2148386012, i64 2148386044, i64 2148386073, i64 2148386107, i64 2148386138, i64 2148386161}
!224 = !{!"branch_weights", i32 1, i32 2000}
!225 = !{!"branch_weights", i32 2000, i32 1}
!226 = !{i64 2148474037}
!227 = !{i64 2148388477, i64 2148388509, i64 2148388538, i64 2148388572, i64 2148388603, i64 2148388626}
!228 = !{i64 2149350151}
!229 = !{i32 0, i32 33}
