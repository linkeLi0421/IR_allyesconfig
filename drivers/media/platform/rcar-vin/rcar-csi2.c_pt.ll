; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rcar-vin/rcar-csi2.c_pt.bc'
source_filename = "../drivers/media/platform/rcar-vin/rcar-csi2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.rcar_csi2_info = type { ptr, ptr, ptr, i32, i32, i8, i8 }
%struct.rcsi2_mbps_reg = type { i16, i16 }
%struct.phtw_value = type { i16, i16 }
%struct.atomic_t = type { i32 }
%struct.rcar_csi2_format = type { i32, i32, i32 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rcar_csi2 = type { ptr, ptr, ptr, ptr, %struct.v4l2_subdev, [5 x %struct.media_pad], %struct.v4l2_async_notifier, ptr, i32, %struct.mutex, %struct.v4l2_mbus_framefmt, i32, i16, [4 x i8] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.94, i16, i16, i16, [10 x i16] }
%union.anon.94 = type { i16 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.99, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.99 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.v4l2_async_subdev = type { i32, %union.anon.96, %struct.list_head, %struct.list_head }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { i32, i16 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }

@__initcall__kmod_rcar_csi2__298_1524_rcar_csi2_pdrv_init6 = internal global ptr @rcar_csi2_pdrv_init, section ".initcall6.init", align 4
@rcar_csi2_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcsi2_probe, ptr @rcsi2_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rcar_csi2_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_csi2_pdrv_exit = internal global ptr @rcar_csi2_pdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [67 x i8] c"rcar_csi2.author=Niklas S\C3\B6derlund <niklas.soderlund@ragnatech.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [63 x i8] c"rcar_csi2.description=Renesas R-Car MIPI CSI-2 receiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [57 x i8] c"rcar_csi2.file=drivers/media/platform/rcar-vin/rcar-csi2\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [22 x i8] c"rcar_csi2.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rcar-csi2\00", [22 x i8] zeroinitializer }, align 32
@rcar_csi2_of_table = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774a1-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_csi2_info_r8a7796 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774b1-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_csi2_info_r8a77965 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774c0-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_csi2_info_r8a77990 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774e1-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_csi2_info_r8a7795 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7795-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_csi2_info_r8a7795 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7796-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_csi2_info_r8a7796 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77961-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_csi2_info_r8a77961 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77965-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_csi2_info_r8a77965 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77970-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_csi2_info_r8a77970 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77980-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_csi2_info_r8a77980 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77990-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_csi2_info_r8a77990 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a779a0-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_csi2_info_r8a779a0 }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@r8a7795 = internal constant { [3 x %struct.soc_device_attribute], [44 x i8] } { [3 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.13, ptr null, ptr @.str.14, ptr @rcar_csi2_info_r8a7795es1, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.15, ptr null, ptr @.str.14, ptr @rcar_csi2_info_r8a7795es2, ptr null }, %struct.soc_device_attribute zeroinitializer], [44 x i8] zeroinitializer }, align 32
@rcsi2_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@rcsi2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1448, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get resources\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rcsi2_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/platform/rcar-vin/rcar-csi2.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcsi2_probe._entry_ptr = internal global ptr @rcsi2_probe._entry, section ".printk_index", align 4
@rcar_csi2_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @rcar_csi2_video_ops, ptr null, ptr null, ptr null, ptr @rcar_csi2_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rcar_csi2\00", [22 x i8] zeroinitializer }, align 32
@rcar_csi2_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@rcsi2_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 1486, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%d lanes found\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rcsi2_probe._entry_ptr.12 = internal global ptr @rcsi2_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.*\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7795\00", [24 x i8] zeroinitializer }, align 32
@rcar_csi2_info_r8a7795es1 = internal constant { %struct.rcar_csi2_info, [40 x i8] } { %struct.rcar_csi2_info { ptr null, ptr null, ptr @hsfreqrange_m3w_h3es1, i32 0, i32 4, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES2.*\00", [26 x i8] zeroinitializer }, align 32
@rcar_csi2_info_r8a7795es2 = internal constant { %struct.rcar_csi2_info, [40 x i8] } { %struct.rcar_csi2_info { ptr @rcsi2_init_phtw_h3es2, ptr null, ptr @hsfreqrange_h3_v3h_m3n, i32 32, i32 4, i8 1, i8 0 }, [40 x i8] zeroinitializer }, align 32
@hsfreqrange_m3w_h3es1 = internal constant { [44 x %struct.rcsi2_mbps_reg], [48 x i8] } { [44 x %struct.rcsi2_mbps_reg] [%struct.rcsi2_mbps_reg { i16 80, i16 0 }, %struct.rcsi2_mbps_reg { i16 90, i16 16 }, %struct.rcsi2_mbps_reg { i16 100, i16 32 }, %struct.rcsi2_mbps_reg { i16 110, i16 48 }, %struct.rcsi2_mbps_reg { i16 120, i16 1 }, %struct.rcsi2_mbps_reg { i16 130, i16 17 }, %struct.rcsi2_mbps_reg { i16 140, i16 33 }, %struct.rcsi2_mbps_reg { i16 150, i16 49 }, %struct.rcsi2_mbps_reg { i16 160, i16 2 }, %struct.rcsi2_mbps_reg { i16 170, i16 18 }, %struct.rcsi2_mbps_reg { i16 180, i16 34 }, %struct.rcsi2_mbps_reg { i16 190, i16 50 }, %struct.rcsi2_mbps_reg { i16 205, i16 3 }, %struct.rcsi2_mbps_reg { i16 220, i16 19 }, %struct.rcsi2_mbps_reg { i16 235, i16 35 }, %struct.rcsi2_mbps_reg { i16 250, i16 51 }, %struct.rcsi2_mbps_reg { i16 275, i16 4 }, %struct.rcsi2_mbps_reg { i16 300, i16 20 }, %struct.rcsi2_mbps_reg { i16 325, i16 5 }, %struct.rcsi2_mbps_reg { i16 350, i16 21 }, %struct.rcsi2_mbps_reg { i16 400, i16 37 }, %struct.rcsi2_mbps_reg { i16 450, i16 6 }, %struct.rcsi2_mbps_reg { i16 500, i16 22 }, %struct.rcsi2_mbps_reg { i16 550, i16 7 }, %struct.rcsi2_mbps_reg { i16 600, i16 23 }, %struct.rcsi2_mbps_reg { i16 650, i16 8 }, %struct.rcsi2_mbps_reg { i16 700, i16 24 }, %struct.rcsi2_mbps_reg { i16 750, i16 9 }, %struct.rcsi2_mbps_reg { i16 800, i16 25 }, %struct.rcsi2_mbps_reg { i16 850, i16 41 }, %struct.rcsi2_mbps_reg { i16 900, i16 57 }, %struct.rcsi2_mbps_reg { i16 950, i16 10 }, %struct.rcsi2_mbps_reg { i16 1000, i16 26 }, %struct.rcsi2_mbps_reg { i16 1050, i16 42 }, %struct.rcsi2_mbps_reg { i16 1100, i16 58 }, %struct.rcsi2_mbps_reg { i16 1150, i16 11 }, %struct.rcsi2_mbps_reg { i16 1200, i16 27 }, %struct.rcsi2_mbps_reg { i16 1250, i16 43 }, %struct.rcsi2_mbps_reg { i16 1300, i16 59 }, %struct.rcsi2_mbps_reg { i16 1350, i16 12 }, %struct.rcsi2_mbps_reg { i16 1400, i16 28 }, %struct.rcsi2_mbps_reg { i16 1450, i16 44 }, %struct.rcsi2_mbps_reg { i16 1500, i16 60 }, %struct.rcsi2_mbps_reg zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hsfreqrange_h3_v3h_m3n = internal constant { [44 x %struct.rcsi2_mbps_reg], [48 x i8] } { [44 x %struct.rcsi2_mbps_reg] [%struct.rcsi2_mbps_reg { i16 80, i16 0 }, %struct.rcsi2_mbps_reg { i16 90, i16 16 }, %struct.rcsi2_mbps_reg { i16 100, i16 32 }, %struct.rcsi2_mbps_reg { i16 110, i16 48 }, %struct.rcsi2_mbps_reg { i16 120, i16 1 }, %struct.rcsi2_mbps_reg { i16 130, i16 17 }, %struct.rcsi2_mbps_reg { i16 140, i16 33 }, %struct.rcsi2_mbps_reg { i16 150, i16 49 }, %struct.rcsi2_mbps_reg { i16 160, i16 2 }, %struct.rcsi2_mbps_reg { i16 170, i16 18 }, %struct.rcsi2_mbps_reg { i16 180, i16 34 }, %struct.rcsi2_mbps_reg { i16 190, i16 50 }, %struct.rcsi2_mbps_reg { i16 205, i16 3 }, %struct.rcsi2_mbps_reg { i16 220, i16 19 }, %struct.rcsi2_mbps_reg { i16 235, i16 35 }, %struct.rcsi2_mbps_reg { i16 250, i16 51 }, %struct.rcsi2_mbps_reg { i16 275, i16 4 }, %struct.rcsi2_mbps_reg { i16 300, i16 20 }, %struct.rcsi2_mbps_reg { i16 325, i16 37 }, %struct.rcsi2_mbps_reg { i16 350, i16 53 }, %struct.rcsi2_mbps_reg { i16 400, i16 5 }, %struct.rcsi2_mbps_reg { i16 450, i16 22 }, %struct.rcsi2_mbps_reg { i16 500, i16 38 }, %struct.rcsi2_mbps_reg { i16 550, i16 55 }, %struct.rcsi2_mbps_reg { i16 600, i16 7 }, %struct.rcsi2_mbps_reg { i16 650, i16 24 }, %struct.rcsi2_mbps_reg { i16 700, i16 40 }, %struct.rcsi2_mbps_reg { i16 750, i16 57 }, %struct.rcsi2_mbps_reg { i16 800, i16 9 }, %struct.rcsi2_mbps_reg { i16 850, i16 25 }, %struct.rcsi2_mbps_reg { i16 900, i16 41 }, %struct.rcsi2_mbps_reg { i16 950, i16 58 }, %struct.rcsi2_mbps_reg { i16 1000, i16 10 }, %struct.rcsi2_mbps_reg { i16 1050, i16 26 }, %struct.rcsi2_mbps_reg { i16 1100, i16 42 }, %struct.rcsi2_mbps_reg { i16 1150, i16 59 }, %struct.rcsi2_mbps_reg { i16 1200, i16 11 }, %struct.rcsi2_mbps_reg { i16 1250, i16 27 }, %struct.rcsi2_mbps_reg { i16 1300, i16 43 }, %struct.rcsi2_mbps_reg { i16 1350, i16 60 }, %struct.rcsi2_mbps_reg { i16 1400, i16 12 }, %struct.rcsi2_mbps_reg { i16 1450, i16 28 }, %struct.rcsi2_mbps_reg { i16 1500, i16 44 }, %struct.rcsi2_mbps_reg zeroinitializer], [48 x i8] zeroinitializer }, align 32
@__rcsi2_init_phtw_h3_v3h_m3n.step1 = internal constant [6 x %struct.phtw_value] [%struct.phtw_value { i16 204, i16 226 }, %struct.phtw_value { i16 1, i16 227 }, %struct.phtw_value { i16 17, i16 228 }, %struct.phtw_value { i16 1, i16 229 }, %struct.phtw_value { i16 16, i16 4 }, %struct.phtw_value zeroinitializer], align 2
@__rcsi2_init_phtw_h3_v3h_m3n.step2 = internal constant [6 x %struct.phtw_value] [%struct.phtw_value { i16 56, i16 8 }, %struct.phtw_value { i16 1, i16 0 }, %struct.phtw_value { i16 75, i16 172 }, %struct.phtw_value { i16 3, i16 0 }, %struct.phtw_value { i16 128, i16 7 }, %struct.phtw_value zeroinitializer], align 2
@phtw_mbps_h3_v3h_m3n = internal constant { [17 x %struct.rcsi2_mbps_reg], [60 x i8] } { [17 x %struct.rcsi2_mbps_reg] [%struct.rcsi2_mbps_reg { i16 80, i16 134 }, %struct.rcsi2_mbps_reg { i16 90, i16 134 }, %struct.rcsi2_mbps_reg { i16 100, i16 135 }, %struct.rcsi2_mbps_reg { i16 110, i16 135 }, %struct.rcsi2_mbps_reg { i16 120, i16 136 }, %struct.rcsi2_mbps_reg { i16 130, i16 136 }, %struct.rcsi2_mbps_reg { i16 140, i16 137 }, %struct.rcsi2_mbps_reg { i16 150, i16 137 }, %struct.rcsi2_mbps_reg { i16 160, i16 138 }, %struct.rcsi2_mbps_reg { i16 170, i16 138 }, %struct.rcsi2_mbps_reg { i16 180, i16 139 }, %struct.rcsi2_mbps_reg { i16 190, i16 139 }, %struct.rcsi2_mbps_reg { i16 205, i16 140 }, %struct.rcsi2_mbps_reg { i16 220, i16 141 }, %struct.rcsi2_mbps_reg { i16 235, i16 142 }, %struct.rcsi2_mbps_reg { i16 250, i16 142 }, %struct.rcsi2_mbps_reg zeroinitializer], [60 x i8] zeroinitializer }, align 32
@rcsi2_phtw_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 1087, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Timeout waiting for PHTW_DWEN and/or PHTW_CWEN\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcsi2_phtw_write\00", [47 x i8] zeroinitializer }, align 32
@rcsi2_phtw_write._entry_ptr = internal global ptr @rcsi2_phtw_write._entry, section ".printk_index", align 4
@rcsi2_phtw_write_mbps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 1124, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unsupported PHY speed (%u Mbps)\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rcsi2_phtw_write_mbps\00", [42 x i8] zeroinitializer }, align 32
@rcsi2_phtw_write_mbps._entry_ptr = internal global ptr @rcsi2_phtw_write_mbps._entry, section ".printk_index", align 4
@rcsi2_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 916, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Transfer error, restarting CSI-2 receiver\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rcsi2_irq\00", [22 x i8] zeroinitializer }, align 32
@rcsi2_irq._entry_ptr = internal global ptr @rcsi2_irq._entry, section ".printk_index", align 4
@rcsi2_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 929, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to restart CSI-2 receiver\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcsi2_irq_thread\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rcsi2_irq_thread._entry_ptr = internal global ptr @rcsi2_irq_thread._entry, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@rcsi2_start_receiver.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcsi2_start_receiver\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Input size (%ux%u%c)\0A\00", [42 x i8] zeroinitializer }, align 32
@rcar_csi2_formats = internal constant { [11 x %struct.rcar_csi2_format], [60 x i8] } { [11 x %struct.rcar_csi2_format] [%struct.rcar_csi2_format { i32 4106, i32 36, i32 24 }, %struct.rcar_csi2_format { i32 8207, i32 30, i32 16 }, %struct.rcar_csi2_format { i32 8209, i32 30, i32 16 }, %struct.rcar_csi2_format { i32 8198, i32 30, i32 16 }, %struct.rcar_csi2_format { i32 8203, i32 30, i32 20 }, %struct.rcar_csi2_format { i32 8202, i32 43, i32 10 }, %struct.rcar_csi2_format { i32 12289, i32 42, i32 8 }, %struct.rcar_csi2_format { i32 12307, i32 42, i32 8 }, %struct.rcar_csi2_format { i32 12290, i32 42, i32 8 }, %struct.rcar_csi2_format { i32 12308, i32 42, i32 8 }, %struct.rcar_csi2_format { i32 8193, i32 42, i32 8 }], [60 x i8] zeroinitializer }, align 32
@rcsi2_get_active_lanes.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rcsi2_get_active_lanes\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No remote mbus configuration available\0A\00", [56 x i8] zeroinitializer }, align 32
@rcsi2_get_active_lanes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 619, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to get remote mbus configuration\0A\00", [55 x i8] zeroinitializer }, align 32
@rcsi2_get_active_lanes._entry_ptr = internal global ptr @rcsi2_get_active_lanes._entry, section ".printk_index", align 4
@rcsi2_get_active_lanes._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.27, ptr @.str.4, i32 625, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported media bus type %u\0A\00", [33 x i8] zeroinitializer }, align 32
@rcsi2_get_active_lanes._entry_ptr.32 = internal global ptr @rcsi2_get_active_lanes._entry.30, section ".printk_index", align 4
@rcsi2_get_active_lanes._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.27, ptr @.str.4, i32 641, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unsupported mbus config: too many data lanes %u\0A\00", [47 x i8] zeroinitializer }, align 32
@rcsi2_get_active_lanes._entry_ptr.35 = internal global ptr @rcsi2_get_active_lanes._entry.33, section ".printk_index", align 4
@rcsi2_calc_mbps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 587, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no pixel rate control in subdev %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rcsi2_calc_mbps\00", [16 x i8] zeroinitializer }, align 32
@rcsi2_calc_mbps._entry_ptr = internal global ptr @rcsi2_calc_mbps._entry, section ".printk_index", align 4
@rcsi2_set_phypll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 549, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%u Mbps less than min PHY speed %u Mbps\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcsi2_set_phypll\00", [47 x i8] zeroinitializer }, align 32
@rcsi2_set_phypll._entry_ptr = internal global ptr @rcsi2_set_phypll._entry, section ".printk_index", align 4
@rcsi2_set_phypll._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.39, ptr @.str.4, i32 558, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rcsi2_set_phypll._entry_ptr.41 = internal global ptr @rcsi2_set_phypll._entry.40, section ".printk_index", align 4
@rcsi2_wait_phy_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 537, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timeout waiting for LP-11 state\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcsi2_wait_phy_start\00", [43 x i8] zeroinitializer }, align 32
@rcsi2_wait_phy_start._entry_ptr = internal global ptr @rcsi2_wait_phy_start._entry, section ".printk_index", align 4
@rcsi2_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 1027, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Not connected to subdevice\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcsi2_parse_dt\00", [17 x i8] zeroinitializer }, align 32
@rcsi2_parse_dt._entry_ptr = internal global ptr @rcsi2_parse_dt._entry, section ".printk_index", align 4
@rcsi2_parse_dt._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 1033, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not parse v4l2 endpoint\0A\00", [33 x i8] zeroinitializer }, align 32
@rcsi2_parse_dt._entry_ptr.48 = internal global ptr @rcsi2_parse_dt._entry.46, section ".printk_index", align 4
@rcsi2_parse_dt.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.45, ptr @.str.4, ptr @.str.49, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Found '%pOF'\0A\00", [18 x i8] zeroinitializer }, align 32
@rcar_csi2_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @rcsi2_notify_bound, ptr null, ptr @rcsi2_notify_unbind }, [20 x i8] zeroinitializer }, align 32
@rcsi2_parse_v4l2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 990, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unsupported bus: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcsi2_parse_v4l2\00", [47 x i8] zeroinitializer }, align 32
@rcsi2_parse_v4l2._entry_ptr = internal global ptr @rcsi2_parse_v4l2._entry, section ".printk_index", align 4
@rcsi2_parse_v4l2._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 997, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsupported number of data-lanes: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@rcsi2_parse_v4l2._entry_ptr.54 = internal global ptr @rcsi2_parse_v4l2._entry.52, section ".printk_index", align 4
@rcsi2_parse_v4l2._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.4, i32 1007, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"data-lanes must be in 1-4 range\0A\00", [63 x i8] zeroinitializer }, align 32
@rcsi2_parse_v4l2._entry_ptr.57 = internal global ptr @rcsi2_parse_v4l2._entry.55, section ".printk_index", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@rcsi2_notify_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 949, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to find pad for %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rcsi2_notify_bound\00", [45 x i8] zeroinitializer }, align 32
@rcsi2_notify_bound._entry_ptr = internal global ptr @rcsi2_notify_bound._entry, section ".printk_index", align 4
@rcsi2_notify_bound.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.59, ptr @.str.4, ptr @.str.60, i8 0, i8 -17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bound %s pad: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rcsi2_notify_unbind.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.61, ptr @.str.4, ptr @.str.62, i8 0, i8 -13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rcsi2_notify_unbind\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Unbind %s\0A\00", [21 x i8] zeroinitializer }, align 32
@rcar_csi2_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcsi2_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@rcar_csi2_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr null, ptr null, ptr null, ptr @rcsi2_get_pad_format, ptr @rcsi2_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@rcar_csi2_info_r8a7796 = internal constant { %struct.rcar_csi2_info, [40 x i8] } { %struct.rcar_csi2_info { ptr null, ptr null, ptr @hsfreqrange_m3w_h3es1, i32 0, i32 4, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@rcar_csi2_info_r8a77965 = internal constant { %struct.rcar_csi2_info, [40 x i8] } { %struct.rcar_csi2_info { ptr @rcsi2_init_phtw_h3_v3h_m3n, ptr null, ptr @hsfreqrange_h3_v3h_m3n, i32 32, i32 4, i8 1, i8 0 }, [40 x i8] zeroinitializer }, align 32
@rcar_csi2_info_r8a77990 = internal constant { %struct.rcar_csi2_info, [40 x i8] } { %struct.rcar_csi2_info { ptr @rcsi2_init_phtw_v3m_e3, ptr @rcsi2_phy_post_init_v3m_e3, ptr null, i32 0, i32 2, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@rcar_csi2_info_r8a7795 = internal constant { %struct.rcar_csi2_info, [40 x i8] } { %struct.rcar_csi2_info { ptr @rcsi2_init_phtw_h3_v3h_m3n, ptr null, ptr @hsfreqrange_h3_v3h_m3n, i32 32, i32 4, i8 1, i8 0 }, [40 x i8] zeroinitializer }, align 32
@rcar_csi2_info_r8a77961 = internal constant { %struct.rcar_csi2_info, [40 x i8] } { %struct.rcar_csi2_info { ptr null, ptr null, ptr @hsfreqrange_m3w_h3es1, i32 0, i32 4, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@rcar_csi2_info_r8a77970 = internal constant { %struct.rcar_csi2_info, [40 x i8] } { %struct.rcar_csi2_info { ptr @rcsi2_init_phtw_v3m_e3, ptr @rcsi2_phy_post_init_v3m_e3, ptr null, i32 0, i32 4, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@rcar_csi2_info_r8a77980 = internal constant { %struct.rcar_csi2_info, [40 x i8] } { %struct.rcar_csi2_info { ptr @rcsi2_init_phtw_h3_v3h_m3n, ptr null, ptr @hsfreqrange_h3_v3h_m3n, i32 32, i32 0, i8 1, i8 0 }, [40 x i8] zeroinitializer }, align 32
@rcar_csi2_info_r8a779a0 = internal constant { %struct.rcar_csi2_info, [40 x i8] } { %struct.rcar_csi2_info { ptr @rcsi2_init_phtw_v3u, ptr null, ptr @hsfreqrange_v3u, i32 32, i32 0, i8 1, i8 1 }, [40 x i8] zeroinitializer }, align 32
@phtw_mbps_v3m_e3 = internal constant { [33 x %struct.rcsi2_mbps_reg], [60 x i8] } { [33 x %struct.rcsi2_mbps_reg] [%struct.rcsi2_mbps_reg { i16 80, i16 0 }, %struct.rcsi2_mbps_reg { i16 90, i16 32 }, %struct.rcsi2_mbps_reg { i16 100, i16 64 }, %struct.rcsi2_mbps_reg { i16 110, i16 2 }, %struct.rcsi2_mbps_reg { i16 130, i16 34 }, %struct.rcsi2_mbps_reg { i16 140, i16 66 }, %struct.rcsi2_mbps_reg { i16 150, i16 4 }, %struct.rcsi2_mbps_reg { i16 170, i16 36 }, %struct.rcsi2_mbps_reg { i16 180, i16 68 }, %struct.rcsi2_mbps_reg { i16 200, i16 6 }, %struct.rcsi2_mbps_reg { i16 220, i16 38 }, %struct.rcsi2_mbps_reg { i16 240, i16 70 }, %struct.rcsi2_mbps_reg { i16 250, i16 8 }, %struct.rcsi2_mbps_reg { i16 270, i16 40 }, %struct.rcsi2_mbps_reg { i16 300, i16 10 }, %struct.rcsi2_mbps_reg { i16 330, i16 42 }, %struct.rcsi2_mbps_reg { i16 360, i16 74 }, %struct.rcsi2_mbps_reg { i16 400, i16 12 }, %struct.rcsi2_mbps_reg { i16 450, i16 44 }, %struct.rcsi2_mbps_reg { i16 500, i16 14 }, %struct.rcsi2_mbps_reg { i16 550, i16 46 }, %struct.rcsi2_mbps_reg { i16 600, i16 16 }, %struct.rcsi2_mbps_reg { i16 650, i16 48 }, %struct.rcsi2_mbps_reg { i16 700, i16 18 }, %struct.rcsi2_mbps_reg { i16 750, i16 50 }, %struct.rcsi2_mbps_reg { i16 800, i16 82 }, %struct.rcsi2_mbps_reg { i16 850, i16 114 }, %struct.rcsi2_mbps_reg { i16 900, i16 20 }, %struct.rcsi2_mbps_reg { i16 950, i16 52 }, %struct.rcsi2_mbps_reg { i16 1000, i16 84 }, %struct.rcsi2_mbps_reg { i16 1050, i16 116 }, %struct.rcsi2_mbps_reg { i16 1125, i16 22 }, %struct.rcsi2_mbps_reg zeroinitializer], [60 x i8] zeroinitializer }, align 32
@rcsi2_phy_post_init_v3m_e3.step1 = internal constant { [6 x %struct.phtw_value], [40 x i8] } { [6 x %struct.phtw_value] [%struct.phtw_value { i16 238, i16 52 }, %struct.phtw_value { i16 238, i16 68 }, %struct.phtw_value { i16 238, i16 84 }, %struct.phtw_value { i16 238, i16 132 }, %struct.phtw_value { i16 238, i16 148 }, %struct.phtw_value zeroinitializer], [40 x i8] zeroinitializer }, align 32
@hsfreqrange_v3u = internal constant { [63 x %struct.rcsi2_mbps_reg], [36 x i8] } { [63 x %struct.rcsi2_mbps_reg] [%struct.rcsi2_mbps_reg { i16 80, i16 0 }, %struct.rcsi2_mbps_reg { i16 90, i16 16 }, %struct.rcsi2_mbps_reg { i16 100, i16 32 }, %struct.rcsi2_mbps_reg { i16 110, i16 48 }, %struct.rcsi2_mbps_reg { i16 120, i16 1 }, %struct.rcsi2_mbps_reg { i16 130, i16 17 }, %struct.rcsi2_mbps_reg { i16 140, i16 33 }, %struct.rcsi2_mbps_reg { i16 150, i16 49 }, %struct.rcsi2_mbps_reg { i16 160, i16 2 }, %struct.rcsi2_mbps_reg { i16 170, i16 18 }, %struct.rcsi2_mbps_reg { i16 180, i16 34 }, %struct.rcsi2_mbps_reg { i16 190, i16 50 }, %struct.rcsi2_mbps_reg { i16 205, i16 3 }, %struct.rcsi2_mbps_reg { i16 220, i16 19 }, %struct.rcsi2_mbps_reg { i16 235, i16 35 }, %struct.rcsi2_mbps_reg { i16 250, i16 51 }, %struct.rcsi2_mbps_reg { i16 275, i16 4 }, %struct.rcsi2_mbps_reg { i16 300, i16 20 }, %struct.rcsi2_mbps_reg { i16 325, i16 37 }, %struct.rcsi2_mbps_reg { i16 350, i16 53 }, %struct.rcsi2_mbps_reg { i16 400, i16 5 }, %struct.rcsi2_mbps_reg { i16 450, i16 22 }, %struct.rcsi2_mbps_reg { i16 500, i16 38 }, %struct.rcsi2_mbps_reg { i16 550, i16 55 }, %struct.rcsi2_mbps_reg { i16 600, i16 7 }, %struct.rcsi2_mbps_reg { i16 650, i16 24 }, %struct.rcsi2_mbps_reg { i16 700, i16 40 }, %struct.rcsi2_mbps_reg { i16 750, i16 57 }, %struct.rcsi2_mbps_reg { i16 800, i16 9 }, %struct.rcsi2_mbps_reg { i16 850, i16 25 }, %struct.rcsi2_mbps_reg { i16 900, i16 41 }, %struct.rcsi2_mbps_reg { i16 950, i16 58 }, %struct.rcsi2_mbps_reg { i16 1000, i16 10 }, %struct.rcsi2_mbps_reg { i16 1050, i16 26 }, %struct.rcsi2_mbps_reg { i16 1100, i16 42 }, %struct.rcsi2_mbps_reg { i16 1150, i16 59 }, %struct.rcsi2_mbps_reg { i16 1200, i16 11 }, %struct.rcsi2_mbps_reg { i16 1250, i16 27 }, %struct.rcsi2_mbps_reg { i16 1300, i16 43 }, %struct.rcsi2_mbps_reg { i16 1350, i16 60 }, %struct.rcsi2_mbps_reg { i16 1400, i16 12 }, %struct.rcsi2_mbps_reg { i16 1450, i16 28 }, %struct.rcsi2_mbps_reg { i16 1500, i16 44 }, %struct.rcsi2_mbps_reg { i16 1550, i16 61 }, %struct.rcsi2_mbps_reg { i16 1600, i16 13 }, %struct.rcsi2_mbps_reg { i16 1650, i16 29 }, %struct.rcsi2_mbps_reg { i16 1700, i16 46 }, %struct.rcsi2_mbps_reg { i16 1750, i16 62 }, %struct.rcsi2_mbps_reg { i16 1800, i16 14 }, %struct.rcsi2_mbps_reg { i16 1850, i16 30 }, %struct.rcsi2_mbps_reg { i16 1900, i16 47 }, %struct.rcsi2_mbps_reg { i16 1950, i16 63 }, %struct.rcsi2_mbps_reg { i16 2000, i16 15 }, %struct.rcsi2_mbps_reg { i16 2050, i16 64 }, %struct.rcsi2_mbps_reg { i16 2100, i16 65 }, %struct.rcsi2_mbps_reg { i16 2150, i16 66 }, %struct.rcsi2_mbps_reg { i16 2200, i16 67 }, %struct.rcsi2_mbps_reg { i16 2300, i16 69 }, %struct.rcsi2_mbps_reg { i16 2350, i16 70 }, %struct.rcsi2_mbps_reg { i16 2400, i16 71 }, %struct.rcsi2_mbps_reg { i16 2450, i16 72 }, %struct.rcsi2_mbps_reg { i16 2500, i16 73 }, %struct.rcsi2_mbps_reg zeroinitializer], [36 x i8] zeroinitializer }, align 32
@rcsi2_init_phtw_v3u.step1 = internal constant { [2 x %struct.phtw_value], [24 x i8] } { [2 x %struct.phtw_value] [%struct.phtw_value { i16 204, i16 226 }, %struct.phtw_value zeroinitializer], [24 x i8] zeroinitializer }, align 32
@rcsi2_init_phtw_v3u.step2 = internal constant { [4 x %struct.phtw_value], [16 x i8] } { [4 x %struct.phtw_value] [%struct.phtw_value { i16 1, i16 227 }, %struct.phtw_value { i16 17, i16 228 }, %struct.phtw_value { i16 1, i16 229 }, %struct.phtw_value zeroinitializer], [16 x i8] zeroinitializer }, align 32
@rcsi2_init_phtw_v3u.step3 = internal constant { [2 x %struct.phtw_value], [24 x i8] } { [2 x %struct.phtw_value] [%struct.phtw_value { i16 56, i16 8 }, %struct.phtw_value zeroinitializer], [24 x i8] zeroinitializer }, align 32
@rcsi2_init_phtw_v3u.step4 = internal constant { [5 x %struct.phtw_value], [44 x i8] } { [5 x %struct.phtw_value] [%struct.phtw_value { i16 1, i16 0 }, %struct.phtw_value { i16 75, i16 172 }, %struct.phtw_value { i16 3, i16 0 }, %struct.phtw_value { i16 128, i16 7 }, %struct.phtw_value zeroinitializer], [44 x i8] zeroinitializer }, align 32
@phtw_mbps_v3u = internal constant { [22 x %struct.rcsi2_mbps_reg], [40 x i8] } { [22 x %struct.rcsi2_mbps_reg] [%struct.rcsi2_mbps_reg { i16 1500, i16 204 }, %struct.rcsi2_mbps_reg { i16 1550, i16 29 }, %struct.rcsi2_mbps_reg { i16 1600, i16 39 }, %struct.rcsi2_mbps_reg { i16 1650, i16 48 }, %struct.rcsi2_mbps_reg { i16 1700, i16 57 }, %struct.rcsi2_mbps_reg { i16 1750, i16 66 }, %struct.rcsi2_mbps_reg { i16 1800, i16 75 }, %struct.rcsi2_mbps_reg { i16 1850, i16 85 }, %struct.rcsi2_mbps_reg { i16 1900, i16 94 }, %struct.rcsi2_mbps_reg { i16 1950, i16 103 }, %struct.rcsi2_mbps_reg { i16 2000, i16 113 }, %struct.rcsi2_mbps_reg { i16 2050, i16 121 }, %struct.rcsi2_mbps_reg { i16 2100, i16 131 }, %struct.rcsi2_mbps_reg { i16 2150, i16 140 }, %struct.rcsi2_mbps_reg { i16 2200, i16 149 }, %struct.rcsi2_mbps_reg { i16 2250, i16 158 }, %struct.rcsi2_mbps_reg { i16 2300, i16 167 }, %struct.rcsi2_mbps_reg { i16 2350, i16 176 }, %struct.rcsi2_mbps_reg { i16 2400, i16 186 }, %struct.rcsi2_mbps_reg { i16 2450, i16 195 }, %struct.rcsi2_mbps_reg { i16 2500, i16 204 }, %struct.rcsi2_mbps_reg zeroinitializer], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.64 = internal global [13 x i64] [i64 11, i64 32, i64 4106, i64 8193, i64 8198, i64 8202, i64 8203, i64 8207, i64 8209, i64 12289, i64 12290, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.66 = internal global [13 x i64] [i64 11, i64 32, i64 4106, i64 8193, i64 8198, i64 8202, i64 8203, i64 8207, i64 8209, i64 12289, i64 12290, i64 12307, i64 12308]
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"rcar_csi2_pdrv\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1514, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1518, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"rcar_csi2_of_table\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1355, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [8 x i8] c"r8a7795\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1408, i32 42 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1443, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1448, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [21 x i8] c"rcar_csi2_subdev_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 893, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1462, i32 53 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1463, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [21 x i8] c"rcar_csi2_entity_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1261, i32 45 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1486, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1410, i32 36 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1410, i32 13 }
@___asan_gen_.130 = private unnamed_addr constant [26 x i8] c"rcar_csi2_info_r8a7795es1\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1297, i32 36 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1414, i32 36 }
@___asan_gen_.136 = private unnamed_addr constant [26 x i8] c"rcar_csi2_info_r8a7795es2\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1302, i32 36 }
@___asan_gen_.139 = private unnamed_addr constant [22 x i8] c"hsfreqrange_m3w_h3es1\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 347, i32 36 }
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"hsfreqrange_h3_v3h_m3n\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 300, i32 36 }
@___asan_gen_.145 = private unnamed_addr constant [21 x i8] c"phtw_mbps_h3_v3h_m3n\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 170, i32 36 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1087, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1124, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 916, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 929, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 658, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [18 x i8] c"rcar_csi2_formats\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 414, i32 38 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 614, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 619, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 624, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 639, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 586, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 548, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 558, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 537, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1027, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1033, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1047, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [21 x i8] c"rcar_csi2_notify_ops\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 975, i32 52 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 990, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 996, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1007, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 949, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 956, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 972, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c"rcar_csi2_video_ops\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 884, i32 43 }
@___asan_gen_.313 = private unnamed_addr constant [18 x i8] c"rcar_csi2_pad_ops\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 888, i32 41 }
@___asan_gen_.316 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 998, i32 6 }
@___asan_gen_.319 = private unnamed_addr constant [23 x i8] c"rcar_csi2_info_r8a7796\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1310, i32 36 }
@___asan_gen_.322 = private unnamed_addr constant [24 x i8] c"rcar_csi2_info_r8a77965\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1320, i32 36 }
@___asan_gen_.325 = private unnamed_addr constant [24 x i8] c"rcar_csi2_info_r8a77990\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1341, i32 36 }
@___asan_gen_.328 = private unnamed_addr constant [23 x i8] c"rcar_csi2_info_r8a7795\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1289, i32 36 }
@___asan_gen_.331 = private unnamed_addr constant [24 x i8] c"rcar_csi2_info_r8a77961\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1315, i32 36 }
@___asan_gen_.334 = private unnamed_addr constant [24 x i8] c"rcar_csi2_info_r8a77970\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1328, i32 36 }
@___asan_gen_.337 = private unnamed_addr constant [24 x i8] c"rcar_csi2_info_r8a77980\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1334, i32 36 }
@___asan_gen_.340 = private unnamed_addr constant [24 x i8] c"rcar_csi2_info_r8a779a0\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1347, i32 36 }
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"phtw_mbps_v3m_e3\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 190, i32 36 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1189, i32 33 }
@___asan_gen_.349 = private unnamed_addr constant [16 x i8] c"hsfreqrange_v3u\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 234, i32 36 }
@___asan_gen_.352 = private unnamed_addr constant [6 x i8] c"step1\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1205, i32 33 }
@___asan_gen_.355 = private unnamed_addr constant [6 x i8] c"step2\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1210, i32 33 }
@___asan_gen_.358 = private unnamed_addr constant [6 x i8] c"step3\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1218, i32 33 }
@___asan_gen_.361 = private unnamed_addr constant [6 x i8] c"step4\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1223, i32 33 }
@___asan_gen_.364 = private unnamed_addr constant [14 x i8] c"phtw_mbps_v3u\00", align 1
@___asan_gen_.365 = private constant [47 x i8] c"../drivers/media/platform/rcar-vin/rcar-csi2.c\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 145, i32 36 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_rcar_csi2_pdrv_exit, ptr @__initcall__kmod_rcar_csi2__298_1524_rcar_csi2_pdrv_init6, ptr @rcar_csi2_pdrv_exit, ptr @rcsi2_calc_mbps._entry, ptr @rcsi2_calc_mbps._entry_ptr, ptr @rcsi2_get_active_lanes._entry, ptr @rcsi2_get_active_lanes._entry.30, ptr @rcsi2_get_active_lanes._entry.33, ptr @rcsi2_get_active_lanes._entry_ptr, ptr @rcsi2_get_active_lanes._entry_ptr.32, ptr @rcsi2_get_active_lanes._entry_ptr.35, ptr @rcsi2_irq._entry, ptr @rcsi2_irq._entry_ptr, ptr @rcsi2_irq_thread._entry, ptr @rcsi2_irq_thread._entry_ptr, ptr @rcsi2_notify_bound._entry, ptr @rcsi2_notify_bound._entry_ptr, ptr @rcsi2_parse_dt._entry, ptr @rcsi2_parse_dt._entry.46, ptr @rcsi2_parse_dt._entry_ptr, ptr @rcsi2_parse_dt._entry_ptr.48, ptr @rcsi2_parse_v4l2._entry, ptr @rcsi2_parse_v4l2._entry.52, ptr @rcsi2_parse_v4l2._entry.55, ptr @rcsi2_parse_v4l2._entry_ptr, ptr @rcsi2_parse_v4l2._entry_ptr.54, ptr @rcsi2_parse_v4l2._entry_ptr.57, ptr @rcsi2_phtw_write._entry, ptr @rcsi2_phtw_write._entry_ptr, ptr @rcsi2_phtw_write_mbps._entry, ptr @rcsi2_phtw_write_mbps._entry_ptr, ptr @rcsi2_probe._entry, ptr @rcsi2_probe._entry.9, ptr @rcsi2_probe._entry_ptr, ptr @rcsi2_probe._entry_ptr.12, ptr @rcsi2_set_phypll._entry, ptr @rcsi2_set_phypll._entry.40, ptr @rcsi2_set_phypll._entry_ptr, ptr @rcsi2_set_phypll._entry_ptr.41, ptr @rcsi2_wait_phy_start._entry, ptr @rcsi2_wait_phy_start._entry_ptr, ptr @rcar_csi2_pdrv, ptr @.str, ptr @rcar_csi2_of_table, ptr @r8a7795, ptr @rcsi2_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rcar_csi2_subdev_ops, ptr @.str.7, ptr @.str.8, ptr @rcar_csi2_entity_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @rcar_csi2_info_r8a7795es1, ptr @.str.15, ptr @rcar_csi2_info_r8a7795es2, ptr @hsfreqrange_m3w_h3es1, ptr @hsfreqrange_h3_v3h_m3n, ptr @phtw_mbps_h3_v3h_m3n, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @rcar_csi2_formats, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @rcar_csi2_notify_ops, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @rcar_csi2_video_ops, ptr @rcar_csi2_pad_ops, ptr @.str.63, ptr @rcar_csi2_info_r8a7796, ptr @rcar_csi2_info_r8a77965, ptr @rcar_csi2_info_r8a77990, ptr @rcar_csi2_info_r8a7795, ptr @rcar_csi2_info_r8a77961, ptr @rcar_csi2_info_r8a77970, ptr @rcar_csi2_info_r8a77980, ptr @rcar_csi2_info_r8a779a0, ptr @phtw_mbps_v3m_e3, ptr @rcsi2_phy_post_init_v3m_e3.step1, ptr @hsfreqrange_v3u, ptr @rcsi2_init_phtw_v3u.step1, ptr @rcsi2_init_phtw_v3u.step2, ptr @rcsi2_init_phtw_v3u.step3, ptr @rcsi2_init_phtw_v3u.step4, ptr @phtw_mbps_v3u], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_of_table to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a7795 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_info_r8a7795es1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_info_r8a7795es2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsfreqrange_m3w_h3es1 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsfreqrange_h3_v3h_m3n to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phtw_mbps_h3_v3h_m3n to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_phtw_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_phtw_write_mbps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_formats to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_get_active_lanes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_get_active_lanes._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_get_active_lanes._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_calc_mbps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_set_phypll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_set_phypll._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_wait_phy_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_parse_dt._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_parse_v4l2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_parse_v4l2._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_parse_v4l2._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_notify_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_info_r8a7796 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_info_r8a77965 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_info_r8a77990 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_info_r8a7795 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_info_r8a77961 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_info_r8a77970 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_info_r8a77980 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_csi2_info_r8a779a0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phtw_mbps_v3m_e3 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_phy_post_init_v3m_e3.step1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsfreqrange_v3u to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_init_phtw_v3u.step1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_init_phtw_v3u.step2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_init_phtw_v3u.step3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcsi2_init_phtw_v3u.step4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phtw_mbps_v3u to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_csi2_pdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_csi2_pdrv, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_csi2_pdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_csi2_pdrv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcsi2_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 580, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %info = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %info, align 4
  %call3 = tail call ptr @soc_device_match(ptr noundef nonnull @r8a7795) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.soc_device_attribute, ptr %call3, i32 0, i32 5
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %info, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rcsi2_probe.__key) #8
  %stream_count = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 11
  %5 = ptrtoint ptr %stream_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %stream_count, align 4
  %call.i112 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base.i = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i112, ptr %base.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i112, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end7.rcsi2_probe_resources.exit_crit_edge, label %if.end.i

if.end7.rcsi2_probe_resources.exit_crit_edge:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcsi2_probe_resources.exit

if.end.i:                                         ; preds = %if.end7
  %call5.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %if.end.i.do.end15_crit_edge, label %if.end7.i

if.end.i.do.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call5.i, ptr noundef nonnull @rcsi2_irq, ptr noundef nonnull @rcsi2_irq_thread, i32 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %if.end7.i.do.end15_crit_edge

if.end7.i.do.end15_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

if.end10.i:                                       ; preds = %if.end7.i
  %call.i.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %rstc.i = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %rstc.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i.i, ptr %rstc.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end10.i.rcsi2_probe_resources.exit_crit_edge, label %if.end10.i.if.end17_crit_edge

if.end10.i.if.end17_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end10.i.rcsi2_probe_resources.exit_crit_edge:  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcsi2_probe_resources.exit

rcsi2_probe_resources.exit:                       ; preds = %if.end10.i.rcsi2_probe_resources.exit_crit_edge, %if.end7.rcsi2_probe_resources.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i.i.i, %if.end10.i.rcsi2_probe_resources.exit_crit_edge ], [ %call.i112, %if.end7.rcsi2_probe_resources.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool11.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool11.not, label %rcsi2_probe_resources.exit.if.end17_crit_edge, label %rcsi2_probe_resources.exit.do.end15_crit_edge

rcsi2_probe_resources.exit.do.end15_crit_edge:    ; preds = %rcsi2_probe_resources.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

rcsi2_probe_resources.exit.if.end17_crit_edge:    ; preds = %rcsi2_probe_resources.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end15:                                         ; preds = %rcsi2_probe_resources.exit.do.end15_crit_edge, %if.end7.i.do.end15_crit_edge, %if.end.i.do.end15_crit_edge
  %retval.0.i118 = phi i32 [ %retval.0.i, %rcsi2_probe_resources.exit.do.end15_crit_edge ], [ %call8.i, %if.end7.i.do.end15_crit_edge ], [ %call5.i, %if.end.i.do.end15_crit_edge ]
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2) #11
  br label %error_mutex

if.end17:                                         ; preds = %rcsi2_probe_resources.exit.if.end17_crit_edge, %if.end10.i.if.end17_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call18 = tail call fastcc i32 @rcsi2_parse_dt(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.error_mutex_crit_edge

if.end17.error_mutex_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_mutex

if.end21:                                         ; preds = %if.end17
  %subdev = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 4
  %owner = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %owner, align 4
  %dev24 = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 4, i32 14
  %12 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %dev24, align 4
  tail call void @v4l2_subdev_init(ptr noundef %subdev, ptr noundef nonnull @rcar_csi2_subdev_ops) #8
  %dev_priv.i = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 4, i32 11
  %13 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %dev_priv.i, align 4
  %name = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 4, i32 9
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i113 = icmp eq ptr %15, null
  br i1 %tobool.not.i113, label %if.end.i114, label %if.end21.dev_name.exit_crit_edge

if.end21.dev_name.exit_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i114:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i114, %if.end21.dev_name.exit_crit_edge
  %retval.0.i115 = phi ptr [ %17, %if.end.i114 ], [ %15, %if.end21.dev_name.exit_crit_edge ]
  %call31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i115)
  %flags = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 4, i32 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %flags, align 4
  %function = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  %19 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16386, ptr %function, align 4
  %ops = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 4, i32 0, i32 11
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rcar_csi2_entity_ops, ptr %ops, align 4
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 4
  %use_isp = getelementptr inbounds %struct.rcar_csi2_info, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %use_isp to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %use_isp, align 1, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool37.not = icmp eq i8 %24, 0
  %cond = select i1 %tobool37.not, i32 5, i32 2
  %flags38 = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 5, i32 0, i32 4
  %25 = ptrtoint ptr %flags38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %flags38, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %dev_name.exit
  %i.0122 = phi i32 [ 1, %dev_name.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %flags41 = getelementptr %struct.rcar_csi2, ptr %call.i, i32 0, i32 5, i32 %i.0122, i32 4
  %26 = ptrtoint ptr %flags41 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %flags41, align 4
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %pads = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 5
  %conv = trunc i32 %cond to i16
  %call46 = tail call i32 @media_entity_pads_init(ptr noundef %subdev, i16 noundef zeroext %conv, ptr noundef %pads) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %for.end.error_async_crit_edge

for.end.error_async_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_async

if.end49:                                         ; preds = %for.end
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %call52 = tail call i32 @v4l2_async_register_subdev(ptr noundef %subdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end49.error_async_crit_edge, label %do.end59

if.end49.error_async_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_async

do.end59:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %lanes = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 12
  %29 = ptrtoint ptr %lanes to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %lanes, align 4
  %conv61 = zext i16 %30 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.10, i32 noundef %conv61) #11
  br label %cleanup

error_async:                                      ; preds = %if.end49.error_async_crit_edge, %for.end.error_async_crit_edge
  %ret.0 = phi i32 [ %call46, %for.end.error_async_crit_edge ], [ %call52, %if.end49.error_async_crit_edge ]
  %notifier = getelementptr inbounds %struct.rcar_csi2, ptr %call.i, i32 0, i32 6
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #8
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #8
  br label %error_mutex

error_mutex:                                      ; preds = %error_async, %if.end17.error_mutex_crit_edge, %do.end15
  %ret.1 = phi i32 [ %retval.0.i118, %do.end15 ], [ %call18, %if.end17.error_mutex_crit_edge ], [ %ret.0, %error_async ]
  tail call void @mutex_destroy(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %error_mutex, %do.end59, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error_mutex ], [ 0, %do.end59 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcsi2_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %notifier = getelementptr inbounds %struct.rcar_csi2, ptr %1, i32 0, i32 6
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #8
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #8
  %subdev = getelementptr inbounds %struct.rcar_csi2, ptr %1, i32 0, i32 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %subdev) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %lock = getelementptr inbounds %struct.rcar_csi2, ptr %1, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcsi2_parse_dt(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %v4l2_ep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %v4l2_ep) #8
  %0 = call ptr @memset(ptr %v4l2_ep, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %v4l2_ep, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %call = tail call ptr @dev_fwnode(ptr noundef %4) #8
  %call1 = tail call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.44) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call1, ptr noundef nonnull %v4l2_ep) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.47) #11
  call void @fwnode_handle_put(ptr noundef nonnull %call1) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %9 = ptrtoint ptr %v4l2_ep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %v4l2_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end10.if.then13_crit_edge

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.lhs.false.i:                                  ; preds = %if.end10
  %id.i = getelementptr inbounds %struct.fwnode_endpoint, ptr %v4l2_ep, i32 0, i32 1
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not.i = icmp eq i32 %12, 0
  br i1 %tobool2.not.i, label %if.end.i, label %lor.lhs.false.i.if.then13_crit_edge

lor.lhs.false.i.if.then13_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end.i:                                         ; preds = %lor.lhs.false.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 5
  br i1 %cmp.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.50, i32 noundef %14) #11
  br label %if.then13

if.end5.i:                                        ; preds = %if.end.i
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %v4l2_ep, i32 0, i32 2, i32 2, i32 3
  %17 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_data_lanes.i, align 1
  %conv.i = zext i8 %18 to i16
  %lanes.i = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 12
  %19 = ptrtoint ptr %lanes.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %lanes.i, align 4
  %20 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %do.end22.i [
    i8 1, label %if.end5.i.cond.end.i_crit_edge
    i8 2, label %if.end5.i.cond.end.i_crit_edge76
    i8 4, label %if.end5.i.cond.end.i_crit_edge77
  ]

if.end5.i.cond.end.i_crit_edge77:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

if.end5.i.cond.end.i_crit_edge76:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

if.end5.i.cond.end.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

do.end22.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i8 %18 to i32
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.53, i32 noundef %conv7.i) #11
  br label %if.then13

for.cond.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp31.1.i = icmp ugt i8 %18, 1
  br i1 %cmp31.1.i, label %cond.end.1.i, label %for.cond.1.thread.i

for.cond.1.thread.i:                              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx37.182.i = getelementptr %struct.rcar_csi2, ptr %priv, i32 0, i32 13, i32 1
  %23 = ptrtoint ptr %arrayidx37.182.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %arrayidx37.182.i, align 1
  br label %for.cond.2.thread.i

cond.end.1.i:                                     ; preds = %for.cond.i
  %arrayidx.1.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %v4l2_ep, i32 0, i32 2, i32 2, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.1.i, align 1
  %conv35.1.i = zext i8 %25 to i32
  %arrayidx37.1.i = getelementptr %struct.rcar_csi2, ptr %priv, i32 0, i32 13, i32 1
  %26 = ptrtoint ptr %arrayidx37.1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx37.1.i, align 1
  %27 = add nsw i32 %conv35.1.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %27)
  %28 = icmp ult i32 %27, -4
  br i1 %28, label %cond.end.1.i.do.end52.i_crit_edge, label %for.cond.1.i

cond.end.1.i.do.end52.i_crit_edge:                ; preds = %cond.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52.i

for.cond.1.i:                                     ; preds = %cond.end.1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp31.2.i = icmp ugt i8 %18, 2
  br i1 %cmp31.2.i, label %cond.end.2.i, label %for.cond.1.i.for.cond.2.thread.i_crit_edge

for.cond.1.i.for.cond.2.thread.i_crit_edge:       ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.2.thread.i

for.cond.2.thread.i:                              ; preds = %for.cond.1.i.for.cond.2.thread.i_crit_edge, %for.cond.1.thread.i
  %arrayidx37.286.i = getelementptr %struct.rcar_csi2, ptr %priv, i32 0, i32 13, i32 2
  %29 = ptrtoint ptr %arrayidx37.286.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %arrayidx37.286.i, align 1
  br label %cond.end.3.thread.i

cond.end.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.2.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %v4l2_ep, i32 0, i32 2, i32 2, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.2.i, align 2
  %conv35.2.i = zext i8 %31 to i32
  %arrayidx37.2.i = getelementptr %struct.rcar_csi2, ptr %priv, i32 0, i32 13, i32 2
  %32 = ptrtoint ptr %arrayidx37.2.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx37.2.i, align 1
  %33 = add nsw i32 %conv35.2.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %33)
  %34 = icmp ult i32 %33, -4
  br i1 %34, label %cond.end.2.i.do.end52.i_crit_edge, label %for.cond.2.i

cond.end.2.i.do.end52.i_crit_edge:                ; preds = %cond.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52.i

for.cond.2.i:                                     ; preds = %cond.end.2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp31.3.i = icmp ugt i8 %18, 3
  br i1 %cmp31.3.i, label %cond.end.3.i, label %for.cond.2.i.cond.end.3.thread.i_crit_edge

for.cond.2.i.cond.end.3.thread.i_crit_edge:       ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.3.thread.i

cond.end.3.thread.i:                              ; preds = %for.cond.2.i.cond.end.3.thread.i_crit_edge, %for.cond.2.thread.i
  %arrayidx37.390.i = getelementptr %struct.rcar_csi2, ptr %priv, i32 0, i32 13, i32 3
  %35 = ptrtoint ptr %arrayidx37.390.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %arrayidx37.390.i, align 1
  br label %if.end14

cond.end.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.3.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %v4l2_ep, i32 0, i32 2, i32 2, i32 1, i32 3
  %36 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.3.i, align 1
  %conv35.3.i = zext i8 %37 to i32
  %arrayidx37.3.i = getelementptr %struct.rcar_csi2, ptr %priv, i32 0, i32 13, i32 3
  %38 = ptrtoint ptr %arrayidx37.3.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx37.3.i, align 1
  %39 = add nsw i32 %conv35.3.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %39)
  %40 = icmp ult i32 %39, -4
  br i1 %40, label %cond.end.3.i.do.end52.i_crit_edge, label %cond.end.3.i.if.end14_crit_edge

cond.end.3.i.if.end14_crit_edge:                  ; preds = %cond.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

cond.end.3.i.do.end52.i_crit_edge:                ; preds = %cond.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52.i

cond.end.i:                                       ; preds = %if.end5.i.cond.end.i_crit_edge, %if.end5.i.cond.end.i_crit_edge76, %if.end5.i.cond.end.i_crit_edge77
  %arrayidx.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %v4l2_ep, i32 0, i32 2, i32 2, i32 1, i32 0
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i, align 4
  %conv35.i = zext i8 %42 to i32
  %arrayidx37.i = getelementptr %struct.rcar_csi2, ptr %priv, i32 0, i32 13, i32 0
  %43 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx37.i, align 1
  %44 = add nsw i32 %conv35.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %44)
  %45 = icmp ult i32 %44, -4
  br i1 %45, label %cond.end.i.do.end52.i_crit_edge, label %for.cond.i

cond.end.i.do.end52.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52.i

do.end52.i:                                       ; preds = %cond.end.i.do.end52.i_crit_edge, %cond.end.3.i.do.end52.i_crit_edge, %cond.end.2.i.do.end52.i_crit_edge, %cond.end.1.i.do.end52.i_crit_edge
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.56) #11
  br label %if.then13

if.then13:                                        ; preds = %do.end52.i, %do.end22.i, %do.end.i, %lor.lhs.false.i.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  %retval.0.i69.ph = phi i32 [ -107, %if.end10.if.then13_crit_edge ], [ -107, %lor.lhs.false.i.if.then13_crit_edge ], [ -22, %do.end52.i ], [ -22, %do.end22.i ], [ -22, %do.end.i ]
  call void @fwnode_handle_put(ptr noundef nonnull %call1) #8
  br label %cleanup

if.end14:                                         ; preds = %cond.end.3.i.if.end14_crit_edge, %cond.end.3.thread.i
  %call15 = call ptr @fwnode_graph_get_remote_endpoint(ptr noundef nonnull %call1) #8
  call void @fwnode_handle_put(ptr noundef nonnull %call1) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcsi2_parse_dt.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcsi2_parse_dt, %if.then21)) #8
          to label %do.end28 [label %if.then21], !srcloc !210

if.then21:                                        ; preds = %if.end14
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 4
  %tobool.not.i.i = icmp eq ptr %call15, null
  %cmp.i.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then21.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

if.then21.is_of_node.exit.thread_crit_edge:       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_of_node.exit.thread

is_of_node.exit:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %call15, i32 0, i32 1
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %51, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %call15, i32 -12
  %spec.select = select i1 %cmp.i, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %if.then21.is_of_node.exit.thread_crit_edge
  %52 = phi ptr [ null, %if.then21.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcsi2_parse_dt.__UNIQUE_ID_ddebug297, ptr noundef %49, ptr noundef nonnull @.str.49, ptr noundef %52) #8
  br label %do.end28

do.end28:                                         ; preds = %is_of_node.exit.thread, %if.end14
  %notifier = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 6
  call void @v4l2_async_nf_init(ptr noundef %notifier) #8
  %53 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @rcar_csi2_notify_ops, ptr %notifier, align 4
  %call31 = call ptr @__v4l2_async_nf_add_fwnode(ptr noundef %notifier, ptr noundef %call15, i32 noundef 28) #8
  call void @fwnode_handle_put(ptr noundef %call15) #8
  %cmp.i70 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.then33, label %if.end35

if.then33:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end35:                                         ; preds = %do.end28
  %subdev = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 4
  %call37 = call i32 @v4l2_async_subdev_nf_register(ptr noundef %subdev, ptr noundef %notifier) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end35.cleanup_crit_edge, label %if.then39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end35.cleanup_crit_edge, %if.then33, %if.then13, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end8 ], [ %retval.0.i69.ph, %if.then13 ], [ %54, %if.then33 ], [ -22, %do.end ], [ %call37, %if.then39 ], [ 0, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %v4l2_ep) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcsi2_init_phtw_h3es2(ptr nocapture noundef readonly %priv, i32 noundef %mbps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @rcsi2_phtw_write_array(ptr noundef %priv, ptr noundef nonnull @__rcsi2_init_phtw_h3_v3h_m3n.step1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__rcsi2_init_phtw_h3_v3h_m3n.exit_crit_edge

entry.__rcsi2_init_phtw_h3_v3h_m3n.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rcsi2_init_phtw_h3_v3h_m3n.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = tail call fastcc i32 @rcsi2_phtw_write_array(ptr noundef %priv, ptr noundef nonnull @__rcsi2_init_phtw_h3_v3h_m3n.step2) #8
  br label %__rcsi2_init_phtw_h3_v3h_m3n.exit

__rcsi2_init_phtw_h3_v3h_m3n.exit:                ; preds = %if.end.i, %entry.__rcsi2_init_phtw_h3_v3h_m3n.exit_crit_edge
  %retval.0.i = phi i32 [ %call12.i, %if.end.i ], [ %call.i, %entry.__rcsi2_init_phtw_h3_v3h_m3n.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rcsi2_init_phtw_h3_v3h_m3n(ptr nocapture noundef readonly %priv, i32 noundef %mbps) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rcsi2_phtw_write_array(ptr noundef %priv, ptr noundef nonnull @__rcsi2_init_phtw_h3_v3h_m3n.step1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i32 %mbps, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %0)
  %1 = icmp ult i32 %0, 250
  br i1 %1, label %if.then2, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then2:                                         ; preds = %if.end
  %base.i.i = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 83966209) #8, !srcloc !212
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then2
  %timeout.012.i = phi i32 [ 0, %if.then2 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %5, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %7 = and i32 %6, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end6, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %inc.i = add nuw nsw i32 %timeout.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i, label %rcsi2_phtw_write.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

rcsi2_phtw_write.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end6:                                          ; preds = %for.body.i
  %call7 = tail call fastcc i32 @rcsi2_phtw_write_mbps(ptr noundef %priv, i32 noundef %mbps, ptr noundef nonnull @phtw_mbps_h3_v3h_m3n, i16 noundef zeroext 241)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %if.end6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call12 = tail call fastcc i32 @rcsi2_phtw_write_array(ptr noundef %priv, ptr noundef nonnull @__rcsi2_init_phtw_h3_v3h_m3n.step2)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %rcsi2_phtw_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ %call, %entry.cleanup_crit_edge ], [ -110, %rcsi2_phtw_write.exit ], [ %call7, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcsi2_phtw_write_array(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %values) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %value.0 = phi ptr [ %values, %entry ], [ %incdec.ptr, %for.inc ]
  %0 = ptrtoint ptr %value.0 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %value.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

lor.rhs:                                          ; preds = %for.cond
  %code = getelementptr inbounds %struct.phtw_value, ptr %value.0, i32 0, i32 1
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %code, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.for.body_crit_edge

lor.rhs.for.body_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %lor.rhs.for.body_crit_edge, %for.cond.for.body_crit_edge
  %code4 = getelementptr inbounds %struct.phtw_value, ptr %value.0, i32 0, i32 1
  %4 = ptrtoint ptr %code4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %code4, align 2
  %6 = and i16 %1, 255
  %and.i = zext i16 %6 to i32
  %shl.i = shl nuw nsw i32 %and.i, 16
  %7 = and i16 %5, 255
  %and3.i = zext i16 %7 to i32
  %or1.i = or i32 %shl.i, %and3.i
  %or4.i = or i32 %or1.i, 16777472
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #8, !srcloc !212
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body
  %timeout.012.i = phi i32 [ 0, %for.body ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %12, i32 80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %14 = and i32 %13, 65537
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %for.inc, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %inc.i = add nuw nsw i32 %timeout.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i, label %rcsi2_phtw_write.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

rcsi2_phtw_write.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.16) #11
  br label %cleanup

for.inc:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr = getelementptr %struct.phtw_value, ptr %value.0, i32 1
  br label %for.cond

cleanup:                                          ; preds = %rcsi2_phtw_write.exit, %lor.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %rcsi2_phtw_write.exit ], [ 0, %lor.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcsi2_phtw_write_mbps(ptr nocapture noundef readonly %priv, i32 noundef %mbps, ptr noundef readonly %values, i16 noundef zeroext %code) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %value.0 = phi ptr [ %values, %entry ], [ %incdec.ptr, %for.cond.for.cond_crit_edge ]
  %prev_value.0 = phi ptr [ null, %entry ], [ %value.0, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %value.0 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %value.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp ne i16 %1, 0
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %mbps)
  %cmp.not = icmp ult i32 %conv, %mbps
  %or.cond = and i1 %tobool.not, %cmp.not
  %incdec.ptr = getelementptr %struct.rcsi2_mbps_reg, ptr %value.0, i32 1
  br i1 %or.cond, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tobool4.not = icmp eq ptr %prev_value.0, null
  br i1 %tobool4.not, label %for.end.if.end13_crit_edge, label %land.lhs.true

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.le = zext i16 %1 to i32
  %2 = ptrtoint ptr %prev_value.0 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prev_value.0, align 2
  %conv6 = zext i16 %3 to i32
  %sub = sub i32 %mbps, %conv6
  %sub9 = sub i32 %conv.le, %mbps
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub9)
  %cmp10.not = icmp ugt i32 %sub, %sub9
  %spec.select = select i1 %cmp10.not, ptr %value.0, ptr %prev_value.0
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %for.end.if.end13_crit_edge
  %value.1 = phi ptr [ %value.0, %for.end.if.end13_crit_edge ], [ %spec.select, %land.lhs.true ]
  %4 = ptrtoint ptr %value.1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %value.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool15.not = icmp eq i16 %5, 0
  br i1 %tobool15.not, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.18, i32 noundef %mbps) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %reg = getelementptr inbounds %struct.rcsi2_mbps_reg, ptr %value.1, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg, align 2
  %10 = and i16 %9, 255
  %and.i = zext i16 %10 to i32
  %shl.i = shl nuw nsw i32 %and.i, 16
  %11 = and i16 %code, 255
  %and3.i = zext i16 %11 to i32
  %or1.i = or i32 %shl.i, %and3.i
  %or4.i = or i32 %or1.i, 16777472
  %base.i.i = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %14) #8, !srcloc !212
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end17
  %timeout.012.i = phi i32 [ 0, %if.end17 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %16, i32 80
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %18 = and i32 %17, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %inc.i = add nuw nsw i32 %timeout.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.16) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %for.body.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -34, %do.end ], [ -110, %do.end.i ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcsi2_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.rcar_csi2, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 56
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %4, i32 60
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %7, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %2) #8, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %9, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %5) #8, !srcloc !212
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.20) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end4 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcsi2_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rcar_csi2, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  tail call fastcc void @rcsi2_stop(ptr noundef %data)
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %call = tail call fastcc i32 @rcsi2_start(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.22) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcsi2_stop(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !212
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %3, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 16777216) #8, !srcloc !212
  %rstc.i = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rstc.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %5) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #8
  %remote = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 7
  %8 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remote, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %video, align 4
  %tobool1.not = icmp eq ptr %13, null
  br i1 %tobool1.not, label %if.else.if.end19_crit_edge, label %land.lhs.true

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_stream, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %land.lhs.true.if.end19_crit_edge, label %if.else6

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %if.else6.if.else13_crit_edge, label %land.lhs.true8

if.else6.if.else13_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else13

land.lhs.true8:                                   ; preds = %if.else6
  %s_stream9 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %s_stream9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_stream9, align 4
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else13_crit_edge, label %land.lhs.true8.if.end19.sink.split_crit_edge

land.lhs.true8.if.end19.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.sink.split

land.lhs.true8.if.else13_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else13

if.else13:                                        ; preds = %land.lhs.true8.if.else13_crit_edge, %if.else6.if.else13_crit_edge
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.else13, %land.lhs.true8.if.end19.sink.split_crit_edge
  %.sink = phi ptr [ %15, %if.else13 ], [ %18, %land.lhs.true8.if.end19.sink.split_crit_edge ]
  %call17 = tail call i32 %.sink(ptr noundef nonnull %9, i32 noundef 0) #8
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %land.lhs.true.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcsi2_start(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end

if.then.i.i:                                      ; preds = %entry
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !215
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !216
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !217
  br label %cleanup

if.end:                                           ; preds = %entry
  %rstc.i = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rstc.i, align 4
  %call1.i = tail call i32 @reset_control_deassert(ptr noundef %4) #8
  %call1 = tail call fastcc i32 @rcsi2_start_receiver(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %base.i.i = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !212
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %8, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 16777216) #8, !srcloc !212
  %9 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rstc.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %10) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %call.i.i48 = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %remote = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 7
  %13 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remote, align 4
  %tobool4.not = icmp eq ptr %14, null
  br i1 %tobool4.not, label %if.end3.if.then28_crit_edge, label %if.else

if.end3.if.then28_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.else:                                          ; preds = %if.end3
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %video, align 4
  %tobool6.not = icmp eq ptr %18, null
  br i1 %tobool6.not, label %if.else.if.then28_crit_edge, label %land.lhs.true

if.else.if.then28_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_stream, align 4
  %tobool9.not = icmp eq ptr %20, null
  br i1 %tobool9.not, label %land.lhs.true.if.then28_crit_edge, label %if.else11

land.lhs.true.if.then28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %if.else11.if.else19_crit_edge, label %land.lhs.true13

if.else11.if.else19_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else19

land.lhs.true13:                                  ; preds = %if.else11
  %s_stream14 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %s_stream14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_stream14, align 4
  %tobool15.not = icmp eq ptr %23, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else19_crit_edge, label %land.lhs.true13.if.end26_crit_edge

land.lhs.true13.if.end26_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true13.if.else19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true13.if.else19_crit_edge, %if.else11.if.else19_crit_edge
  br label %if.end26

if.end26:                                         ; preds = %if.else19, %land.lhs.true13.if.end26_crit_edge
  %.sink = phi ptr [ %20, %if.else19 ], [ %23, %land.lhs.true13.if.end26_crit_edge ]
  %call23 = tail call i32 %.sink(ptr noundef nonnull %14, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool27.not = icmp eq i32 %call23, 0
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %if.end26.if.then28_crit_edge

if.end26.if.then28_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28:                                        ; preds = %if.end26.if.then28_crit_edge, %land.lhs.true.if.then28_crit_edge, %if.else.if.then28_crit_edge, %if.end3.if.then28_crit_edge
  %__result.059 = phi i32 [ %call23, %if.end26.if.then28_crit_edge ], [ -515, %if.else.if.then28_crit_edge ], [ -515, %land.lhs.true.if.then28_crit_edge ], [ -19, %if.end3.if.then28_crit_edge ]
  %base.i.i49 = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 1
  %24 = ptrtoint ptr %base.i.i49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i49, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i50, i32 0) #8, !srcloc !212
  %26 = ptrtoint ptr %base.i.i49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i49, align 4
  %add.ptr.i6.i51 = getelementptr i8, ptr %27, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i51, i32 16777216) #8, !srcloc !212
  %28 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rstc.i, align 4
  %call.i53 = tail call i32 @reset_control_assert(ptr noundef %29) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  %call.i.i54 = tail call i32 @__pm_runtime_idle(ptr noundef %31, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end26.cleanup_crit_edge, %if.then2, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ %__result.059, %if.then28 ], [ 0, %if.end26.cleanup_crit_edge ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcsi2_start_receiver(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %lanes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lanes) #8
  %0 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lanes, align 4, !annotation !218
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcsi2_start_receiver.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcsi2_start_receiver, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !210

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %mf = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 10
  %3 = ptrtoint ptr %mf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mf, align 4
  %height = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %field = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 10, i32 3
  %7 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %cond = select i1 %cmp, i32 112, i32 105
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcsi2_start_receiver.__UNIQUE_ID_ddebug294, ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef %4, i32 noundef %6, i32 noundef %cond) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %code = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 10, i32 2
  %9 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %code, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %10, label %do.end.cleanup_crit_edge [
    i32 4106, label %do.end.rcsi2_code_to_fmt.exit_crit_edge
    i32 8207, label %cleanup.fold.split.i
    i32 8209, label %cleanup.fold.split8.i
    i32 8198, label %cleanup.fold.split9.i
    i32 8203, label %cleanup.fold.split10.i
    i32 8202, label %cleanup.fold.split11.i
    i32 12289, label %cleanup.fold.split12.i
    i32 12307, label %cleanup.fold.split13.i
    i32 12290, label %cleanup.fold.split14.i
    i32 12308, label %cleanup.fold.split15.i
    i32 8193, label %cleanup.fold.split16.i
  ]

do.end.rcsi2_code_to_fmt.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcsi2_code_to_fmt.exit

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.fold.split.i:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcsi2_code_to_fmt.exit

cleanup.fold.split8.i:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcsi2_code_to_fmt.exit

cleanup.fold.split9.i:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcsi2_code_to_fmt.exit

cleanup.fold.split10.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcsi2_code_to_fmt.exit

cleanup.fold.split11.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcsi2_code_to_fmt.exit

cleanup.fold.split12.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcsi2_code_to_fmt.exit

cleanup.fold.split13.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcsi2_code_to_fmt.exit

cleanup.fold.split14.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcsi2_code_to_fmt.exit

cleanup.fold.split15.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcsi2_code_to_fmt.exit

cleanup.fold.split16.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcsi2_code_to_fmt.exit

rcsi2_code_to_fmt.exit:                           ; preds = %cleanup.fold.split16.i, %cleanup.fold.split15.i, %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %do.end.rcsi2_code_to_fmt.exit_crit_edge
  %retval.0.i219 = phi ptr [ @rcar_csi2_formats, %do.end.rcsi2_code_to_fmt.exit_crit_edge ], [ getelementptr inbounds ([11 x %struct.rcar_csi2_format], ptr @rcar_csi2_formats, i32 0, i32 1), %cleanup.fold.split.i ], [ getelementptr inbounds ([11 x %struct.rcar_csi2_format], ptr @rcar_csi2_formats, i32 0, i32 2), %cleanup.fold.split8.i ], [ getelementptr inbounds ([11 x %struct.rcar_csi2_format], ptr @rcar_csi2_formats, i32 0, i32 3), %cleanup.fold.split9.i ], [ getelementptr inbounds ([11 x %struct.rcar_csi2_format], ptr @rcar_csi2_formats, i32 0, i32 4), %cleanup.fold.split10.i ], [ getelementptr inbounds ([11 x %struct.rcar_csi2_format], ptr @rcar_csi2_formats, i32 0, i32 5), %cleanup.fold.split11.i ], [ getelementptr inbounds ([11 x %struct.rcar_csi2_format], ptr @rcar_csi2_formats, i32 0, i32 6), %cleanup.fold.split12.i ], [ getelementptr inbounds ([11 x %struct.rcar_csi2_format], ptr @rcar_csi2_formats, i32 0, i32 7), %cleanup.fold.split13.i ], [ getelementptr inbounds ([11 x %struct.rcar_csi2_format], ptr @rcar_csi2_formats, i32 0, i32 8), %cleanup.fold.split14.i ], [ getelementptr inbounds ([11 x %struct.rcar_csi2_format], ptr @rcar_csi2_formats, i32 0, i32 9), %cleanup.fold.split15.i ], [ getelementptr inbounds ([11 x %struct.rcar_csi2_format], ptr @rcar_csi2_formats, i32 0, i32 10), %cleanup.fold.split16.i ]
  %info = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 2
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %num_channels = getelementptr inbounds %struct.rcar_csi2_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10270.not = icmp eq i32 %15, 0
  br i1 %cmp10270.not, label %rcsi2_code_to_fmt.exit.for.end_crit_edge, label %if.end23.peel

rcsi2_code_to_fmt.exit.for.end_crit_edge:         ; preds = %rcsi2_code_to_fmt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end23.peel:                                    ; preds = %rcsi2_code_to_fmt.exit
  %datatype = getelementptr inbounds %struct.rcar_csi2_format, ptr %retval.0.i219, i32 0, i32 1
  %16 = ptrtoint ptr %datatype to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %datatype, align 4
  %and12 = and i32 %17, 63
  %or14.peel = or i32 %and12, 32832
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %exitcond.peel.not = icmp eq i32 %15, 1
  br i1 %exitcond.peel.not, label %if.end23.peel.for.end_crit_edge, label %if.end23.peel294

if.end23.peel.for.end_crit_edge:                  ; preds = %if.end23.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end23.peel294:                                 ; preds = %if.end23.peel
  %or14.peel282 = shl nuw nsw i32 %and12, 16
  %shl17.peel292 = or i32 %or14.peel282, %or14.peel
  %or18.peel293 = or i32 %shl17.peel292, -2126512128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %exitcond.peel298.not = icmp eq i32 %15, 2
  br i1 %exitcond.peel298.not, label %if.end23.peel294.for.end_crit_edge, label %if.end23.peel294.if.end23_crit_edge

if.end23.peel294.if.end23_crit_edge:              ; preds = %if.end23.peel294
  br label %if.end23

if.end23.peel294.for.end_crit_edge:               ; preds = %if.end23.peel294
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end23:                                         ; preds = %if.end23.if.end23_crit_edge, %if.end23.peel294.if.end23_crit_edge
  %i.0273 = phi i32 [ %inc, %if.end23.if.end23_crit_edge ], [ 2, %if.end23.peel294.if.end23_crit_edge ]
  %vcdt2.0272 = phi i32 [ %or22, %if.end23.if.end23_crit_edge ], [ 0, %if.end23.peel294.if.end23_crit_edge ]
  %and = shl i32 %i.0273, 8
  %shl = and i32 %and, 768
  %or11 = or i32 %shl, %and12
  %or14 = or i32 %or11, 32832
  %rem19 = shl i32 %i.0273, 4
  %mul20 = and i32 %rem19, 16
  %shl21 = shl i32 %or14, %mul20
  %or22 = or i32 %shl21, %vcdt2.0272
  %inc = add nuw i32 %i.0273, 1
  %exitcond.not = icmp eq i32 %inc, %15
  br i1 %exitcond.not, label %if.end23.for.end_crit_edge, label %if.end23.if.end23_crit_edge, !llvm.loop !219

if.end23.if.end23_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %if.end23.peel294.for.end_crit_edge, %if.end23.peel.for.end_crit_edge, %rcsi2_code_to_fmt.exit.for.end_crit_edge
  %vcdt.0.lcssa = phi i32 [ 0, %rcsi2_code_to_fmt.exit.for.end_crit_edge ], [ %or14.peel, %if.end23.peel.for.end_crit_edge ], [ %or18.peel293, %if.end23.peel294.for.end_crit_edge ], [ %or18.peel293, %if.end23.for.end_crit_edge ]
  %vcdt2.0.lcssa = phi i32 [ 0, %rcsi2_code_to_fmt.exit.for.end_crit_edge ], [ 0, %if.end23.peel.for.end_crit_edge ], [ 0, %if.end23.peel294.for.end_crit_edge ], [ %or22, %if.end23.for.end_crit_edge ]
  %field25 = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 10, i32 3
  %18 = ptrtoint ptr %field25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %field25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %19)
  %cmp26 = icmp eq i32 %19, 7
  br i1 %cmp26, label %if.then27, label %for.end.if.end36_crit_edge

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %height29 = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %height29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %21)
  %cmp30 = icmp eq i32 %21, 240
  %. = select i1 %cmp30, i32 31, i32 65567
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %for.end.if.end36_crit_edge
  %fld.0 = phi i32 [ 0, %for.end.if.end36_crit_edge ], [ %., %if.then27 ]
  %call37 = call fastcc i32 @rcsi2_get_active_lanes(ptr noundef %priv, ptr noundef nonnull %lanes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %22 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lanes, align 4
  %notmask = shl nsw i32 -1, %23
  %sub = xor i32 %notmask, -1
  %or42 = or i32 %sub, 16
  %bpp = getelementptr inbounds %struct.rcar_csi2_format, ptr %retval.0.i219, i32 0, i32 2
  %24 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bpp, align 4
  %remote.i = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 7
  %26 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %remote.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end40.cleanup_crit_edge, label %if.end.i

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end40
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctrl_handler.i, align 4
  %call.i = tail call ptr @v4l2_ctrl_find(ptr noundef %29, i32 noundef 10422530) #8
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %27, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.36, ptr noundef %name.i) #11
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef nonnull %call.i) #8
  %conv.i = zext i32 %25 to i64
  %mul.i = mul i64 %call5.i, %conv.i
  %mul6.i = mul i32 %23, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp177.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp177.i, label %if.then181.i, label %if.else187.i, !prof !221

if.then181.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv182.i = trunc i64 %mul.i to i32
  %div185.i = udiv i32 %conv182.i, %mul6.i
  br label %rcsi2_calc_mbps.exit

if.else187.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul6.i, i64 %mul.i) #12, !srcloc !222
  %asmresult1.i.i = extractvalue { i64, i64 } %32, 1
  %extract.t304.i = trunc i64 %asmresult1.i.i to i32
  br label %rcsi2_calc_mbps.exit

rcsi2_calc_mbps.exit:                             ; preds = %if.else187.i, %if.then181.i
  %retval.0.i220 = phi i32 [ %div185.i, %if.then181.i ], [ %extract.t304.i, %if.else187.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i220)
  %cmp44 = icmp slt i32 %retval.0.i220, 0
  br i1 %cmp44, label %rcsi2_calc_mbps.exit.cleanup_crit_edge, label %if.end46

rcsi2_calc_mbps.exit.cleanup_crit_edge:           ; preds = %rcsi2_calc_mbps.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %rcsi2_calc_mbps.exit
  %base.i = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 1
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 402653192) #8, !srcloc !212
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 16777216) #8, !srcloc !212
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i223 = getelementptr i8, ptr %38, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i223, i32 0) #8, !srcloc !212
  %39 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %info, align 4
  %use_isp = getelementptr inbounds %struct.rcar_csi2_info, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %use_isp to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %use_isp, align 1, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool48.not = icmp eq i8 %42, 0
  br i1 %tobool48.not, label %if.then49, label %if.end46.if.end53_crit_edge

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then49:                                        ; preds = %if.end46
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr.i225 = getelementptr i8, ptr %44, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %45 = tail call i32 @llvm.bswap.i32(i32 %vcdt.0.lcssa) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225, i32 %45) #8, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vcdt2.0.lcssa)
  %tobool50.not = icmp eq i32 %vcdt2.0.lcssa, 0
  br i1 %tobool50.not, label %if.then49.if.end53_crit_edge, label %if.then51

if.then49.if.end53_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i227 = getelementptr i8, ptr %47, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %48 = tail call i32 @llvm.bswap.i32(i32 %vcdt2.0.lcssa) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i227, i32 %48) #8, !srcloc !212
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.then49.if.end53_crit_edge, %if.end46.if.end53_crit_edge
  %lane_swap = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 13
  %49 = ptrtoint ptr %lane_swap to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %lane_swap, align 2
  %51 = add i8 %50, 3
  %52 = and i8 %51, 3
  %arrayidx58 = getelementptr %struct.rcar_csi2, ptr %priv, i32 0, i32 13, i32 1
  %53 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx58, align 1
  %55 = shl i8 %54, 2
  %56 = add i8 %55, 12
  %57 = and i8 %56, 12
  %arrayidx65 = getelementptr %struct.rcar_csi2, ptr %priv, i32 0, i32 13, i32 2
  %58 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx65, align 2
  %60 = shl i8 %59, 4
  %61 = add i8 %60, 48
  %62 = and i8 %61, 48
  %arrayidx72 = getelementptr %struct.rcar_csi2, ptr %priv, i32 0, i32 13, i32 3
  %63 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx72, align 1
  %65 = shl i8 %64, 6
  %or63216 = or i8 %52, -64
  %or70217 = add i8 %or63216, %65
  %66 = or i8 %or70217, %57
  %or77218 = or i8 %66, %62
  %or77 = zext i8 %or77218 to i32
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %add.ptr.i229 = getelementptr i8, ptr %68, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %69 = shl nuw i32 %or77, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i229, i32 %69) #8, !srcloc !212
  %70 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %info, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %tobool79.not = icmp eq ptr %73, null
  br i1 %tobool79.not, label %if.end53.if.end87_crit_edge, label %if.then80

if.end53.if.end87_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then80:                                        ; preds = %if.end53
  %call83 = tail call i32 %73(ptr noundef %priv, i32 noundef %retval.0.i220) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then80.if.end87_crit_edge, label %if.then80.cleanup_crit_edge

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then80.if.end87_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.end87:                                         ; preds = %if.then80.if.end87_crit_edge, %if.end53.if.end87_crit_edge
  %74 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %info, align 4
  %hsfreqrange = getelementptr inbounds %struct.rcar_csi2_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %hsfreqrange to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hsfreqrange, align 4
  %tobool89.not = icmp eq ptr %77, null
  br i1 %tobool89.not, label %if.end87.if.end95_crit_edge, label %if.then90

if.end87.if.end95_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then90:                                        ; preds = %if.end87
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %77, align 2
  %conv.i230 = zext i16 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i220, i32 %conv.i230)
  %cmp.i = icmp ult i32 %retval.0.i220, %conv.i230
  br i1 %cmp.i, label %do.end.i231, label %if.then90.if.end.i232_crit_edge

if.then90.if.end.i232_crit_edge:                  ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i232

do.end.i231:                                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.38, i32 noundef %retval.0.i220, i32 noundef %conv.i230) #11
  br label %if.end.i232

if.end.i232:                                      ; preds = %do.end.i231, %if.then90.if.end.i232_crit_edge
  %82 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %info, align 4
  %hsfreqrange8.i = getelementptr inbounds %struct.rcar_csi2_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %hsfreqrange8.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hsfreqrange8.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end.i232
  %hsfreq.0.i = phi ptr [ %85, %if.end.i232 ], [ %incdec.ptr.i, %for.cond.i.for.cond.i_crit_edge ]
  %hsfreq_prev.0.i = phi ptr [ null, %if.end.i232 ], [ %hsfreq.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %86 = ptrtoint ptr %hsfreq.0.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %hsfreq.0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %cmp11.not.i = icmp ne i16 %87, 0
  %conv10.i = zext i16 %87 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i220, i32 %conv10.i)
  %cmp15.not.i = icmp ugt i32 %retval.0.i220, %conv10.i
  %or.cond.i = and i1 %cmp11.not.i, %cmp15.not.i
  %incdec.ptr.i = getelementptr %struct.rcsi2_mbps_reg, ptr %hsfreq.0.i, i32 1
  br i1 %or.cond.i, label %for.cond.i.for.cond.i_crit_edge, label %for.end.i

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %conv10.i.le = zext i16 %87 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool.not.i233 = icmp eq i16 %87, 0
  br i1 %tobool.not.i233, label %rcsi2_set_phypll.exit, label %if.end25.i

if.end25.i:                                       ; preds = %for.end.i
  %tobool26.not.i = icmp eq ptr %hsfreq_prev.0.i, null
  br i1 %tobool26.not.i, label %if.end25.i.rcsi2_set_phypll.exit.thread_crit_edge, label %land.lhs.true.i

if.end25.i.rcsi2_set_phypll.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcsi2_set_phypll.exit.thread

land.lhs.true.i:                                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %hsfreq_prev.0.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %hsfreq_prev.0.i, align 2
  %conv28.i = zext i16 %89 to i32
  %sub.i = sub i32 %retval.0.i220, %conv28.i
  %sub31.i = sub i32 %conv10.i.le, %retval.0.i220
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub31.i)
  %cmp32.not.i = icmp ugt i32 %sub.i, %sub31.i
  %spec.select.i = select i1 %cmp32.not.i, ptr %hsfreq.0.i, ptr %hsfreq_prev.0.i
  br label %rcsi2_set_phypll.exit.thread

rcsi2_set_phypll.exit.thread:                     ; preds = %land.lhs.true.i, %if.end25.i.rcsi2_set_phypll.exit.thread_crit_edge
  %hsfreq.1.i = phi ptr [ %hsfreq.0.i, %if.end25.i.rcsi2_set_phypll.exit.thread_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %reg.i = getelementptr inbounds %struct.rcsi2_mbps_reg, ptr %hsfreq.1.i, i32 0, i32 1
  %90 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %reg.i, align 2
  %92 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %93, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %94 = tail call i16 @llvm.bswap.i16(i16 %91) #8
  %95 = zext i16 %94 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %95) #8, !srcloc !212
  br label %if.end95

rcsi2_set_phypll.exit:                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i220) #11
  br label %cleanup

if.end95:                                         ; preds = %rcsi2_set_phypll.exit.thread, %if.end87.if.end95_crit_edge
  %98 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %info, align 4
  %csi0clkfreqrange = getelementptr inbounds %struct.rcar_csi2_info, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %csi0clkfreqrange to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %csi0clkfreqrange, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool97.not = icmp eq i32 %101, 0
  br i1 %tobool97.not, label %if.end95.if.end103_crit_edge, label %if.then98

if.end95.if.end103_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i, align 4
  %add.ptr.i236 = getelementptr i8, ptr %103, i32 608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %104 = shl i32 %101, 8
  %105 = and i32 %104, 16128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i236, i32 %105) #8, !srcloc !212
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %if.end95.if.end103_crit_edge
  %106 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %info, align 4
  %use_isp105 = getelementptr inbounds %struct.rcar_csi2_info, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %use_isp105 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %use_isp105, align 1, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool106.not = icmp eq i8 %109, 0
  br i1 %tobool106.not, label %if.end103.if.end108_crit_edge, label %if.then107

if.end103.if.end108_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i, align 4
  %add.ptr.i238 = getelementptr i8, ptr %111, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238, i32 251658240) #8, !srcloc !212
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end103.if.end108_crit_edge
  %112 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i, align 4
  %add.ptr.i240 = getelementptr i8, ptr %113, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %114 = tail call i32 @llvm.bswap.i32(i32 %or42) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i240, i32 %114) #8, !srcloc !212
  %115 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i, align 4
  %add.ptr.i242 = getelementptr i8, ptr %116, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i242, i32 131) #8, !srcloc !212
  %117 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i, align 4
  %add.ptr.i244 = getelementptr i8, ptr %118, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %119 = tail call i32 @llvm.bswap.i32(i32 %fld.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i244, i32 %119) #8, !srcloc !212
  %or109 = or i32 %sub, 131088
  %120 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base.i, align 4
  %add.ptr.i246 = getelementptr i8, ptr %121, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %122 = tail call i32 @llvm.bswap.i32(i32 %or109) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i246, i32 %122) #8, !srcloc !212
  %or111 = or i32 %sub, 196624
  %123 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i, align 4
  %add.ptr.i248 = getelementptr i8, ptr %124, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %125 = tail call i32 @llvm.bswap.i32(i32 %or111) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i248, i32 %125) #8, !srcloc !212
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i254.for.body.i_crit_edge, %if.end108
  %timeout.011.i = phi i32 [ 0, %if.end108 ], [ %inc.i, %if.end.i254.for.body.i_crit_edge ]
  %126 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i251 = getelementptr i8, ptr %127, i32 120
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i251) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %129 = and i32 %128, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i252 = icmp eq i32 %129, 0
  br i1 %tobool.not.i252, label %for.body.i.if.end.i254_crit_edge, label %land.lhs.true.i253

for.body.i.if.end.i254_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i254

land.lhs.true.i253:                               ; preds = %for.body.i
  %130 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %131, i32 124
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #8, !srcloc !213
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %and2.i = and i32 %133, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.i, i32 %sub)
  %cmp3.i = icmp eq i32 %and2.i, %sub
  br i1 %cmp3.i, label %if.end115, label %land.lhs.true.i253.if.end.i254_crit_edge

land.lhs.true.i253.if.end.i254_crit_edge:         ; preds = %land.lhs.true.i253
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i254

if.end.i254:                                      ; preds = %land.lhs.true.i253.if.end.i254_crit_edge, %for.body.i.if.end.i254_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %inc.i = add nuw nsw i32 %timeout.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i, label %rcsi2_wait_phy_start.exit, label %if.end.i254.for.body.i_crit_edge

if.end.i254.for.body.i_crit_edge:                 ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

rcsi2_wait_phy_start.exit:                        ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #10
  %134 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.42) #11
  br label %cleanup

if.end115:                                        ; preds = %land.lhs.true.i253
  %136 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %info, align 4
  %use_isp117 = getelementptr inbounds %struct.rcar_csi2_info, ptr %137, i32 0, i32 6
  %138 = ptrtoint ptr %use_isp117 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %use_isp117, align 1, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool118.not = icmp eq i8 %139, 0
  br i1 %tobool118.not, label %if.end115.if.end120_crit_edge, label %if.then119

if.end115.if.end120_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %base.i, align 4
  %add.ptr.i257 = getelementptr i8, ptr %141, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257, i32 0) #8, !srcloc !212
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.end115.if.end120_crit_edge
  %142 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %info, align 4
  %phy_post_init = getelementptr inbounds %struct.rcar_csi2_info, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %phy_post_init to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %phy_post_init, align 4
  %tobool122.not = icmp eq ptr %145, null
  br i1 %tobool122.not, label %if.end120.if.end130_crit_edge, label %if.then123

if.end120.if.end130_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then123:                                       ; preds = %if.end120
  %call126 = tail call i32 %145(ptr noundef %priv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.then123.if.end130_crit_edge, label %if.then123.cleanup_crit_edge

if.then123.cleanup_crit_edge:                     ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then123.if.end130_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.end130:                                        ; preds = %if.then123.if.end130_crit_edge, %if.end120.if.end130_crit_edge
  %146 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %info, align 4
  %clear_ulps = getelementptr inbounds %struct.rcar_csi2_info, ptr %147, i32 0, i32 5
  %148 = ptrtoint ptr %clear_ulps to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %clear_ulps, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool132.not = icmp eq i8 %149, 0
  br i1 %tobool132.not, label %if.end130.cleanup_crit_edge, label %if.then133

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  %150 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base.i, align 4
  %add.ptr.i259 = getelementptr i8, ptr %151, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259, i32 -1073741824) #8, !srcloc !212
  br label %cleanup

cleanup:                                          ; preds = %if.then133, %if.end130.cleanup_crit_edge, %if.then123.cleanup_crit_edge, %rcsi2_wait_phy_start.exit, %rcsi2_set_phypll.exit, %if.then80.cleanup_crit_edge, %rcsi2_calc_mbps.exit.cleanup_crit_edge, %do.end.i, %if.end40.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end36.cleanup_crit_edge ], [ %retval.0.i220, %rcsi2_calc_mbps.exit.cleanup_crit_edge ], [ %call83, %if.then80.cleanup_crit_edge ], [ -34, %rcsi2_set_phypll.exit ], [ -110, %rcsi2_wait_phy_start.exit ], [ %call126, %if.then123.cleanup_crit_edge ], [ 0, %if.then133 ], [ 0, %if.end130.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -19, %if.end40.cleanup_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lanes) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcsi2_get_active_lanes(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %lanes) unnamed_addr #2 align 64 {
entry:
  %mbus_config = alloca %struct.v4l2_mbus_config, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mbus_config) #8
  %0 = ptrtoint ptr %mbus_config to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %mbus_config, align 8
  %lanes1 = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 12
  %1 = ptrtoint ptr %lanes1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %lanes1, align 4
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %lanes, align 4
  %remote = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remote, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.end36_crit_edge, label %if.else

entry.do.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pad, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.else.do.body_crit_edge, label %land.lhs.true

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true:                                    ; preds = %if.else
  %get_mbus_config = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %get_mbus_config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_mbus_config, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %land.lhs.true.do.body_crit_edge, label %if.else7

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %if.else7.if.else14_crit_edge, label %land.lhs.true9

if.else7.if.else14_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

land.lhs.true9:                                   ; preds = %if.else7
  %get_mbus_config10 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %get_mbus_config10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_mbus_config10, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else14_crit_edge, label %land.lhs.true9.if.end21_crit_edge

land.lhs.true9.if.end21_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true9.if.else14_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true9.if.else14_crit_edge, %if.else7.if.else14_crit_edge
  br label %if.end21

if.end21:                                         ; preds = %if.else14, %land.lhs.true9.if.end21_crit_edge
  %.sink108 = phi ptr [ %11, %if.else14 ], [ %14, %land.lhs.true9.if.end21_crit_edge ]
  %remote_pad18 = getelementptr inbounds %struct.rcar_csi2, ptr %priv, i32 0, i32 8
  %15 = ptrtoint ptr %remote_pad18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %remote_pad18, align 4
  %call19 = call i32 %.sink108(ptr noundef nonnull %5, i32 noundef %16, ptr noundef nonnull %mbus_config) #8
  %17 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call19, label %if.end21.do.end36_crit_edge [
    i32 -515, label %if.end21.do.body_crit_edge
    i32 0, label %if.end38
  ]

if.end21.do.body_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end21.do.end36_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

do.body:                                          ; preds = %if.end21.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %if.else.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcsi2_get_active_lanes.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcsi2_get_active_lanes, %if.then29)) #8
          to label %cleanup [label %if.then29], !srcloc !210

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcsi2_get_active_lanes.__UNIQUE_ID_ddebug293, ptr noundef %19, ptr noundef nonnull @.str.28) #8
  br label %cleanup

do.end36:                                         ; preds = %if.end21.do.end36_crit_edge, %entry.do.end36_crit_edge
  %__result.0106 = phi i32 [ %call19, %if.end21.do.end36_crit_edge ], [ -19, %entry.do.end36_crit_edge ]
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.29) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end21
  %22 = ptrtoint ptr %mbus_config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mbus_config, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp39.not = icmp eq i32 %23, 5
  br i1 %cmp39.not, label %if.end47, label %do.end44

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.31, i32 noundef %23) #11
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  %flags = getelementptr inbounds %struct.v4l2_mbus_config, ptr %mbus_config, i32 0, i32 1
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %if.else50, label %if.end47.if.end68_crit_edge

if.end47.if.end68_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.else50:                                        ; preds = %if.end47
  %and52 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else55, label %if.else50.if.end68_crit_edge

if.else50.if.end68_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.else55:                                        ; preds = %if.else50
  %and57 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else60, label %if.else55.if.end68_crit_edge

if.else55.if.end68_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.else60:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #10
  %and62 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %spec.select = select i1 %tobool63.not, i32 -1, i32 4
  br label %if.end68

if.end68:                                         ; preds = %if.else60, %if.else55.if.end68_crit_edge, %if.else50.if.end68_crit_edge, %if.end47.if.end68_crit_edge
  %num_lanes.0 = phi i32 [ 1, %if.end47.if.end68_crit_edge ], [ 2, %if.else50.if.end68_crit_edge ], [ 3, %if.else55.if.end68_crit_edge ], [ %spec.select, %if.else60 ]
  %28 = ptrtoint ptr %lanes1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %lanes1, align 4
  %conv70 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %num_lanes.0, i32 %conv70)
  %cmp71 = icmp ugt i32 %num_lanes.0, %conv70
  br i1 %cmp71, label %do.end76, label %if.end78

do.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.34, i32 noundef %num_lanes.0) #11
  br label %cleanup

if.end78:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %num_lanes.0, ptr %lanes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %do.end76, %do.end44, %do.end36, %if.then29, %do.body
  %retval.0 = phi i32 [ %__result.0106, %do.end36 ], [ -22, %do.end44 ], [ -22, %do.end76 ], [ 0, %if.end78 ], [ 0, %if.then29 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mbus_config) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_endpoint_by_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_subdev_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcsi2_notify_bound(ptr noundef %notifier, ptr noundef %subdev, ptr nocapture noundef readonly %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %notifier, i32 -372
  %match = getelementptr inbounds %struct.v4l2_async_subdev, ptr %asd, i32 0, i32 1
  %0 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %match, align 4
  %call1 = tail call i32 @media_entity_get_fwnode_pad(ptr noundef %subdev, ptr noundef %1, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.58, ptr noundef %name) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %remote = getelementptr i8, ptr %notifier, i32 48
  %4 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %subdev, ptr %remote, align 4
  %remote_pad = getelementptr i8, ptr %notifier, i32 52
  %5 = ptrtoint ptr %remote_pad to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1, ptr %remote_pad, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcsi2_notify_bound.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcsi2_notify_bound, %if.then6)) #8
          to label %do.end12 [label %if.then6], !srcloc !210

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %name8 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcsi2_notify_bound.__UNIQUE_ID_ddebug295, ptr noundef %7, ptr noundef nonnull @.str.60, ptr noundef %name8, i32 noundef %call1) #8
  br label %do.end12

do.end12:                                         ; preds = %if.then6, %if.end
  %conv = trunc i32 %call1 to i16
  %subdev14 = getelementptr i8, ptr %notifier, i32 -356
  %call16 = tail call i32 @media_create_pad_link(ptr noundef %subdev, i16 noundef zeroext %conv, ptr noundef %subdev14, i16 noundef zeroext 0, i32 noundef 3) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call16, %do.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcsi2_notify_unbind(ptr nocapture noundef %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %remote = getelementptr i8, ptr %notifier, i32 48
  %0 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %remote, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcsi2_notify_unbind.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcsi2_notify_unbind, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !210

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %notifier, i32 -372
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcsi2_notify_unbind.__UNIQUE_ID_ddebug296, ptr noundef %2, ptr noundef nonnull @.str.62, ptr noundef %name) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_get_fwnode_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcsi2_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -16
  %lock = getelementptr i8, ptr %sd, i32 412
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %remote = getelementptr i8, ptr %sd, i32 404
  %0 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remote, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool1.not = icmp eq i32 %enable, 0
  %stream_count9 = getelementptr i8, ptr %sd, i32 552
  %2 = ptrtoint ptr %stream_count9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream_count9, align 4
  br i1 %tobool1.not, label %land.lhs.true8.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then2, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then2:                                         ; preds = %land.lhs.true
  %call3 = tail call fastcc i32 @rcsi2_start(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end13_crit_edge, label %if.then2.out_crit_edge

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then2.if.end13_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true8.critedge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp10 = icmp eq i32 %3, 1
  br i1 %cmp10, label %if.then11, label %land.lhs.true8.critedge.if.end13_crit_edge

land.lhs.true8.critedge.if.end13_crit_edge:       ; preds = %land.lhs.true8.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true8.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rcsi2_stop(ptr noundef %add.ptr.i)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true8.critedge.if.end13_crit_edge, %if.then2.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge
  %cond = phi i32 [ 1, %land.lhs.true.if.end13_crit_edge ], [ -1, %land.lhs.true8.critedge.if.end13_crit_edge ], [ -1, %if.then11 ], [ 1, %if.then2.if.end13_crit_edge ]
  %stream_count15 = getelementptr i8, ptr %sd, i32 552
  %4 = ptrtoint ptr %stream_count15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream_count15, align 4
  %add = add i32 %5, %cond
  store i32 %add, ptr %stream_count15, align 4
  br label %out

out:                                              ; preds = %if.end13, %if.then2.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ %call3, %if.then2.out_crit_edge ], [ 0, %if.end13 ], [ -19, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcsi2_get_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %sd, i32 412
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mf = getelementptr i8, ptr %sd, i32 504
  br label %if.end

if.else:                                          ; preds = %entry
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i = icmp eq i16 %3, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.v4l2_subdev_get_try_format.exit_crit_edge, !prof !223

if.else.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.else.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_state, align 4
  br label %if.end

if.end:                                           ; preds = %v4l2_subdev_get_try_format.exit, %if.then
  %.sink = phi ptr [ %5, %v4l2_subdev_get_try_format.exit ], [ %mf, %if.then ]
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %format1, ptr %.sink, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcsi2_set_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %sd, i32 412
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %1, label %if.then [
    i32 4106, label %entry.if.end_crit_edge
    i32 8207, label %entry.if.end_crit_edge20
    i32 8209, label %entry.if.end_crit_edge21
    i32 8198, label %entry.if.end_crit_edge22
    i32 8203, label %entry.if.end_crit_edge23
    i32 8202, label %entry.if.end_crit_edge24
    i32 12289, label %entry.if.end_crit_edge25
    i32 12307, label %entry.if.end_crit_edge26
    i32 12290, label %entry.if.end_crit_edge27
    i32 12308, label %entry.if.end_crit_edge28
    i32 8193, label %entry.if.end_crit_edge29
  ]

entry.if.end_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4106, ptr %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge20, %entry.if.end_crit_edge21, %entry.if.end_crit_edge22, %entry.if.end_crit_edge23, %entry.if.end_crit_edge24, %entry.if.end_crit_edge25, %entry.if.end_crit_edge26, %entry.if.end_crit_edge27, %entry.if.end_crit_edge28, %entry.if.end_crit_edge29
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mf = getelementptr i8, ptr %sd, i32 504
  br label %if.end9

if.else:                                          ; preds = %if.end
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i = icmp eq i16 %7, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.v4l2_subdev_get_try_format.exit_crit_edge, !prof !223

if.else.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.else.v4l2_subdev_get_try_format.exit_crit_edge
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  br label %if.end9

if.end9:                                          ; preds = %v4l2_subdev_get_try_format.exit, %if.then5
  %.sink = phi ptr [ %9, %v4l2_subdev_get_try_format.exit ], [ %mf, %if.then5 ]
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %.sink, ptr %format1, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcsi2_init_phtw_h3_v3h_m3n(ptr nocapture noundef readonly %priv, i32 noundef %mbps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__rcsi2_init_phtw_h3_v3h_m3n(ptr noundef %priv, i32 noundef %mbps)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcsi2_init_phtw_v3m_e3(ptr nocapture noundef readonly %priv, i32 noundef %mbps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rcsi2_phtw_write_mbps(ptr noundef %priv, i32 noundef %mbps, ptr noundef nonnull @phtw_mbps_v3m_e3, i16 noundef zeroext 68)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcsi2_phy_post_init_v3m_e3(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rcsi2_phtw_write_array(ptr noundef %priv, ptr noundef nonnull @rcsi2_phy_post_init_v3m_e3.step1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcsi2_init_phtw_v3u(ptr nocapture noundef readonly %priv, i32 noundef %mbps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %mbps, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %0)
  %1 = icmp ult i32 %0, 1500
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @rcsi2_phtw_write_array(ptr noundef %priv, ptr noundef nonnull @rcsi2_init_phtw_v3u.step1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @rcsi2_phtw_write_mbps(ptr noundef %priv, i32 noundef %mbps, ptr noundef nonnull @phtw_mbps_v3u, i16 noundef zeroext 226)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @rcsi2_phtw_write_array(ptr noundef %priv, ptr noundef nonnull @rcsi2_init_phtw_v3u.step2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  br i1 %1, label %if.then12, label %if.end8.if.end17_crit_edge

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then12:                                        ; preds = %if.end8
  %call13 = tail call fastcc i32 @rcsi2_phtw_write_array(ptr noundef %priv, ptr noundef nonnull @rcsi2_init_phtw_v3u.step3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  %call18 = tail call fastcc i32 @rcsi2_phtw_write_array(ptr noundef %priv, ptr noundef nonnull @rcsi2_init_phtw_v3u.step4)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then12.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call13, %if.then12.cleanup_crit_edge ], [ %call18, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !66, !68, !69, !70, !71, !73, !74, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !146, !147, !148, !149, !151, !152, !154, !155, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @__initcall__kmod_rcar_csi2__298_1524_rcar_csi2_pdrv_init6, !1, !"__initcall__kmod_rcar_csi2__298_1524_rcar_csi2_pdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1524, i32 1}
!2 = !{ptr @__exitcall_rcar_csi2_pdrv_exit, !1, !"__exitcall_rcar_csi2_pdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author299, !4, !"__UNIQUE_ID_author299", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1526, i32 1}
!5 = !{ptr @__UNIQUE_ID_description300, !6, !"__UNIQUE_ID_description300", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1527, i32 1}
!7 = !{ptr @__UNIQUE_ID_file301, !8, !"__UNIQUE_ID_file301", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1528, i32 1}
!9 = !{ptr @__UNIQUE_ID_license302, !8, !"__UNIQUE_ID_license302", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1518, i32 11}
!12 = !{ptr @rcar_csi2_pdrv, !13, !"rcar_csi2_pdrv", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1514, i32 31}
!14 = !{ptr @rcsi2_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1443, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1448, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rcsi2_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rcsi2_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1462, i32 53}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1463, i32 4}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1486, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rcsi2_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @rcsi2_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1410, i32 36}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1410, i32 13}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1414, i32 36}
!40 = !{ptr @r8a7795, !41, !"r8a7795", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1408, i32 42}
!42 = !{ptr @rcar_csi2_info_r8a7795es1, !43, !"rcar_csi2_info_r8a7795es1", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1297, i32 36}
!44 = !{ptr @hsfreqrange_m3w_h3es1, !45, !"hsfreqrange_m3w_h3es1", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 347, i32 36}
!46 = !{ptr @rcar_csi2_info_r8a7795es2, !47, !"rcar_csi2_info_r8a7795es2", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1302, i32 36}
!48 = !{ptr @__rcsi2_init_phtw_h3_v3h_m3n.step1, !49, !"step1", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1134, i32 33}
!50 = !{ptr @__rcsi2_init_phtw_h3_v3h_m3n.step2, !51, !"step2", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1143, i32 33}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1087, i32 2}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rcsi2_phtw_write._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @rcsi2_phtw_write._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1124, i32 3}
!59 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rcsi2_phtw_write_mbps._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @rcsi2_phtw_write_mbps._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @phtw_mbps_h3_v3h_m3n, !63, !"phtw_mbps_h3_v3h_m3n", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 170, i32 36}
!64 = !{ptr @hsfreqrange_h3_v3h_m3n, !65, !"hsfreqrange_h3_v3h_m3n", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 300, i32 36}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 916, i32 2}
!68 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rcsi2_irq._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @rcsi2_irq._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 929, i32 3}
!73 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @rcsi2_irq_thread._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @rcsi2_irq_thread._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 658, i32 2}
!79 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @rcsi2_start_receiver.__UNIQUE_ID_ddebug294, !78, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!81 = !{ptr @rcar_csi2_formats, !82, !"rcar_csi2_formats", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 414, i32 38}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 614, i32 3}
!85 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @rcsi2_get_active_lanes.__UNIQUE_ID_ddebug293, !84, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 619, i32 3}
!89 = !{ptr @rcsi2_get_active_lanes._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @rcsi2_get_active_lanes._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 624, i32 3}
!93 = !{ptr @rcsi2_get_active_lanes._entry.30, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @rcsi2_get_active_lanes._entry_ptr.32, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 639, i32 3}
!97 = !{ptr @rcsi2_get_active_lanes._entry.33, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @rcsi2_get_active_lanes._entry_ptr.35, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 586, i32 3}
!101 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @rcsi2_calc_mbps._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @rcsi2_calc_mbps._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 548, i32 3}
!106 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @rcsi2_set_phypll._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @rcsi2_set_phypll._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @rcsi2_set_phypll._entry.40, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 558, i32 3}
!111 = !{ptr @rcsi2_set_phypll._entry_ptr.41, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 537, i32 2}
!114 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @rcsi2_wait_phy_start._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @rcsi2_wait_phy_start._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1027, i32 3}
!119 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @rcsi2_parse_dt._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @rcsi2_parse_dt._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1033, i32 3}
!124 = !{ptr @rcsi2_parse_dt._entry.46, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @rcsi2_parse_dt._entry_ptr.48, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1047, i32 2}
!128 = !{ptr @rcsi2_parse_dt.__UNIQUE_ID_ddebug297, !127, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 990, i32 3}
!131 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @rcsi2_parse_v4l2._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @rcsi2_parse_v4l2._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 996, i32 3}
!136 = !{ptr @rcsi2_parse_v4l2._entry.52, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @rcsi2_parse_v4l2._entry_ptr.54, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1007, i32 4}
!140 = !{ptr @rcsi2_parse_v4l2._entry.55, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @rcsi2_parse_v4l2._entry_ptr.57, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @rcar_csi2_notify_ops, !143, !"rcar_csi2_notify_ops", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 975, i32 52}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 949, i32 3}
!146 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @rcsi2_notify_bound._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @rcsi2_notify_bound._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 956, i32 2}
!151 = !{ptr @rcsi2_notify_bound.__UNIQUE_ID_ddebug295, !150, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!152 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 972, i32 2}
!154 = !{ptr @.str.62, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @rcsi2_notify_unbind.__UNIQUE_ID_ddebug296, !153, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!156 = !{ptr @rcar_csi2_subdev_ops, !157, !"rcar_csi2_subdev_ops", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 893, i32 37}
!158 = !{ptr @rcar_csi2_video_ops, !159, !"rcar_csi2_video_ops", i1 false, i1 false}
!159 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 884, i32 43}
!160 = !{ptr @rcar_csi2_pad_ops, !161, !"rcar_csi2_pad_ops", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 888, i32 41}
!162 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!164 = !{ptr @rcar_csi2_entity_ops, !165, !"rcar_csi2_entity_ops", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1261, i32 45}
!166 = !{ptr @rcar_csi2_of_table, !167, !"rcar_csi2_of_table", i1 false, i1 false}
!167 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1355, i32 34}
!168 = !{ptr @rcar_csi2_info_r8a7796, !169, !"rcar_csi2_info_r8a7796", i1 false, i1 false}
!169 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1310, i32 36}
!170 = !{ptr @rcar_csi2_info_r8a77965, !171, !"rcar_csi2_info_r8a77965", i1 false, i1 false}
!171 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1320, i32 36}
!172 = !{ptr @rcar_csi2_info_r8a77990, !173, !"rcar_csi2_info_r8a77990", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1341, i32 36}
!174 = !{ptr @phtw_mbps_v3m_e3, !175, !"phtw_mbps_v3m_e3", i1 false, i1 false}
!175 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 190, i32 36}
!176 = !{ptr @rcsi2_phy_post_init_v3m_e3.step1, !177, !"step1", i1 false, i1 false}
!177 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1189, i32 33}
!178 = !{ptr @rcar_csi2_info_r8a7795, !179, !"rcar_csi2_info_r8a7795", i1 false, i1 false}
!179 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1289, i32 36}
!180 = !{ptr @rcar_csi2_info_r8a77961, !181, !"rcar_csi2_info_r8a77961", i1 false, i1 false}
!181 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1315, i32 36}
!182 = !{ptr @rcar_csi2_info_r8a77970, !183, !"rcar_csi2_info_r8a77970", i1 false, i1 false}
!183 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1328, i32 36}
!184 = !{ptr @rcar_csi2_info_r8a77980, !185, !"rcar_csi2_info_r8a77980", i1 false, i1 false}
!185 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1334, i32 36}
!186 = !{ptr @rcar_csi2_info_r8a779a0, !187, !"rcar_csi2_info_r8a779a0", i1 false, i1 false}
!187 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1347, i32 36}
!188 = !{ptr @rcsi2_init_phtw_v3u.step1, !189, !"step1", i1 false, i1 false}
!189 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1205, i32 33}
!190 = !{ptr @rcsi2_init_phtw_v3u.step2, !191, !"step2", i1 false, i1 false}
!191 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1210, i32 33}
!192 = !{ptr @rcsi2_init_phtw_v3u.step3, !193, !"step3", i1 false, i1 false}
!193 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1218, i32 33}
!194 = !{ptr @rcsi2_init_phtw_v3u.step4, !195, !"step4", i1 false, i1 false}
!195 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 1223, i32 33}
!196 = !{ptr @phtw_mbps_v3u, !197, !"phtw_mbps_v3u", i1 false, i1 false}
!197 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 145, i32 36}
!198 = !{ptr @hsfreqrange_v3u, !199, !"hsfreqrange_v3u", i1 false, i1 false}
!199 = !{!"../drivers/media/platform/rcar-vin/rcar-csi2.c", i32 234, i32 36}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{i8 0, i8 2}
!210 = !{i64 2148792962, i64 2148792967, i64 2148792980, i64 2148793024, i64 2148793058, i64 2148793079}
!211 = !{i64 2151784193}
!212 = !{i64 4242071}
!213 = !{i64 4242489}
!214 = !{i64 2151782838}
!215 = !{i64 2148224716}
!216 = !{i64 709539, i64 709564, i64 709586, i64 709602, i64 709614, i64 709634, i64 709658, i64 709674, i64 709686}
!217 = !{i64 2148224904}
!218 = !{!"auto-init"}
!219 = distinct !{!219, !220}
!220 = !{!"llvm.loop.peeled.count", i32 2}
!221 = !{!"branch_weights", i32 2000, i32 1}
!222 = !{i64 2148018635, i64 2148018915, i64 2148019249, i64 2148019583}
!223 = !{!"branch_weights", i32 1, i32 2000}
