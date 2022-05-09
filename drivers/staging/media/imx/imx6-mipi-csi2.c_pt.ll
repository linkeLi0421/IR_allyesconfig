; ModuleID = '/llk/IR_all_yes/drivers/staging/media/imx/imx6-mipi-csi2.c_pt.bc'
source_filename = "../drivers/staging/media/imx/imx6-mipi-csi2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.102 = type { i32, i32 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
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
%struct.csi2_dev = type { ptr, %struct.v4l2_subdev, %struct.v4l2_async_notifier, [5 x %struct.media_pad], ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.mutex, %struct.v4l2_mbus_framefmt, i32, ptr, [4 x i8] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.103, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.103 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.89, %union.anon.90, i32, ptr, i32, %struct.anon.91, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.89 = type { i64 }
%union.anon.90 = type { ptr }
%struct.anon.91 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_async_subdev = type { i32, %union.anon.99, %struct.list_head, %struct.list_head }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, i16 }

@__initcall__kmod_imx6_mipi_csi2__321_818_csi2_driver_init6 = internal global ptr @csi2_driver_init, section ".initcall6.init", align 4
@csi2_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @csi2_probe, ptr @csi2_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @csi2_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_csi2_driver_exit = internal global ptr @csi2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description322 = internal constant [62 x i8] c"imx6_mipi_csi2.description=i.MX5/6 MIPI CSI-2 Receiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author323 = internal constant [69 x i8] c"imx6_mipi_csi2.author=Steve Longerbeam <steve_longerbeam@mentor.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [61 x i8] c"imx6_mipi_csi2.file=drivers/staging/media/imx/imx6-mipi-csi2\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [27 x i8] c"imx6_mipi_csi2.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx6-mipi-csi2\00", [17 x i8] zeroinitializer }, align 32
@csi2_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6-mipi-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@csi2_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @csi2_video_ops, ptr null, ptr null, ptr null, ptr @csi2_pad_ops }, [32 x i8] zeroinitializer }, align 32
@csi2_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @csi2_registered, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@csi2_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr @v4l2_subdev_get_fwnode_pad_1_to_1, ptr @csi2_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@csi2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: failed to get pll reference clock\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"csi2_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/media/imx/imx6-mipi-csi2.c\00", [53 x i8] zeroinitializer }, align 32
@csi2_probe._entry_ptr = internal global ptr @csi2_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dphy\00", [27 x i8] zeroinitializer }, align 32
@csi2_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: failed to get dphy clock\0A\00", [32 x i8] zeroinitializer }, align 32
@csi2_probe._entry_ptr.8 = internal global ptr @csi2_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pix\00", [28 x i8] zeroinitializer }, align 32
@csi2_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: failed to get pixel clock\0A\00", [63 x i8] zeroinitializer }, align 32
@csi2_probe._entry_ptr.12 = internal global ptr @csi2_probe._entry.10, section ".printk_index", align 4
@csi2_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: failed to get platform resources\0A\00", [56 x i8] zeroinitializer }, align 32
@csi2_probe._entry_ptr.15 = internal global ptr @csi2_probe._entry.13, section ".printk_index", align 4
@csi2_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&csi2->lock\00", [20 x i8] zeroinitializer }, align 32
@csi2_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: failed to enable pllref_clk\0A\00", [61 x i8] zeroinitializer }, align 32
@csi2_probe._entry_ptr.19 = internal global ptr @csi2_probe._entry.17, section ".printk_index", align 4
@csi2_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: failed to enable dphy_clk\0A\00", [63 x i8] zeroinitializer }, align 32
@csi2_probe._entry_ptr.22 = internal global ptr @csi2_probe._entry.20, section ".printk_index", align 4
@csi2_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @csi2_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@csi2_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @imx_media_init_cfg, ptr null, ptr null, ptr null, ptr @csi2_get_fmt, ptr @csi2_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@csi2_s_stream.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx6_mipi_csi2\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csi2_s_stream\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stream %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@hsfreq_map = internal constant { [29 x %struct.anon.102], [56 x i8] } { [29 x %struct.anon.102] [%struct.anon.102 { i32 90, i32 0 }, %struct.anon.102 { i32 100, i32 32 }, %struct.anon.102 { i32 110, i32 64 }, %struct.anon.102 { i32 125, i32 2 }, %struct.anon.102 { i32 140, i32 34 }, %struct.anon.102 { i32 150, i32 66 }, %struct.anon.102 { i32 160, i32 4 }, %struct.anon.102 { i32 180, i32 36 }, %struct.anon.102 { i32 200, i32 68 }, %struct.anon.102 { i32 210, i32 6 }, %struct.anon.102 { i32 240, i32 38 }, %struct.anon.102 { i32 250, i32 70 }, %struct.anon.102 { i32 270, i32 8 }, %struct.anon.102 { i32 300, i32 40 }, %struct.anon.102 { i32 330, i32 72 }, %struct.anon.102 { i32 360, i32 42 }, %struct.anon.102 { i32 400, i32 74 }, %struct.anon.102 { i32 450, i32 12 }, %struct.anon.102 { i32 500, i32 44 }, %struct.anon.102 { i32 550, i32 14 }, %struct.anon.102 { i32 600, i32 46 }, %struct.anon.102 { i32 650, i32 16 }, %struct.anon.102 { i32 700, i32 48 }, %struct.anon.102 { i32 750, i32 18 }, %struct.anon.102 { i32 800, i32 50 }, %struct.anon.102 { i32 850, i32 20 }, %struct.anon.102 { i32 900, i32 52 }, %struct.anon.102 { i32 950, i32 84 }, %struct.anon.102 { i32 1000, i32 116 }], [56 x i8] zeroinitializer }, align 32
@csi2_get_active_lanes.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csi2_get_active_lanes\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No remote mbus configuration available\0A\00", [56 x i8] zeroinitializer }, align 32
@csi2_get_active_lanes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 319, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to get remote mbus configuration\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csi2_get_active_lanes._entry_ptr = internal global ptr @csi2_get_active_lanes._entry, section ".printk_index", align 4
@csi2_get_active_lanes._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.28, ptr @.str.4, i32 325, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported media bus type %u\0A\00", [33 x i8] zeroinitializer }, align 32
@csi2_get_active_lanes._entry_ptr.35 = internal global ptr @csi2_get_active_lanes._entry.33, section ".printk_index", align 4
@csi2_get_active_lanes._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.28, ptr @.str.4, i32 350, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unsupported mbus config: too many data lanes %u\0A\00", [47 x i8] zeroinitializer }, align 32
@csi2_get_active_lanes._entry_ptr.38 = internal global ptr @csi2_get_active_lanes._entry.36, section ".printk_index", align 4
@csi2_dphy_wait_stopstate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014%s: LP-11 wait timeout, likely a sensor driver bug, expect capture failures.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"csi2_dphy_wait_stopstate\00", [39 x i8] zeroinitializer }, align 32
@csi2_dphy_wait_stopstate._entry_ptr = internal global ptr @csi2_dphy_wait_stopstate._entry, section ".printk_index", align 4
@csi2_dphy_wait_stopstate._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s: phy_state = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@csi2_dphy_wait_stopstate._entry_ptr.43 = internal global ptr @csi2_dphy_wait_stopstate._entry.41, section ".printk_index", align 4
@csi2_dphy_wait_clock_lane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: clock lane timeout, phy_state = 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"csi2_dphy_wait_clock_lane\00", [38 x i8] zeroinitializer }, align 32
@csi2_dphy_wait_clock_lane._entry_ptr = internal global ptr @csi2_dphy_wait_clock_lane._entry, section ".printk_index", align 4
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@csi2_link_setup.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.47, ptr @.str.4, ptr @.str.48, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csi2_link_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"link setup %s -> %s\00", [44 x i8] zeroinitializer }, align 32
@csi2_async_register.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.49, ptr @.str.4, ptr @.str.50, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"csi2_async_register\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"data lanes: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@csi2_async_register.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.49, ptr @.str.4, ptr @.str.51, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"flags: 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@csi2_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @csi2_notify_bound, ptr null, ptr @csi2_notify_unbind }, [20 x i8] zeroinitializer }, align 32
@csi2_notify_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 622, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to find pad for %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csi2_notify_bound\00", [46 x i8] zeroinitializer }, align 32
@csi2_notify_bound._entry_ptr = internal global ptr @csi2_notify_bound._entry, section ".printk_index", align 4
@csi2_notify_bound.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.53, ptr @.str.4, ptr @.str.54, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bound %s pad: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@switch.table.csi2_get_active_lanes = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"csi2_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 809, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 811, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"csi2_dt_ids\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 803, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"csi2_subdev_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 602, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"csi2_internal_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 607, i32 46 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"csi2_entity_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 586, i32 45 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 726, i32 46 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 728, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 732, i32 44 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 734, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 738, i32 43 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 740, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 746, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 754, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 758, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 764, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [15 x i8] c"csi2_video_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 592, i32 43 }
@___asan_gen_.135 = private unnamed_addr constant [13 x i8] c"csi2_pad_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 596, i32 41 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 457, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [11 x i8] c"hsfreq_map\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 180, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 314, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 319, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 324, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 348, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 264, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 265, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 278, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 998, i32 6 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 483, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 670, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 671, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [16 x i8] c"csi2_notify_ops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 643, i32 52 }
@___asan_gen_.231 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 622, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [46 x i8] c"../drivers/staging/media/imx/imx6-mipi-csi2.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 629, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [35 x i8] c"switch.table.csi2_get_active_lanes\00", align 1
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__exitcall_csi2_driver_exit, ptr @__initcall__kmod_imx6_mipi_csi2__321_818_csi2_driver_init6, ptr @csi2_dphy_wait_clock_lane._entry, ptr @csi2_dphy_wait_clock_lane._entry_ptr, ptr @csi2_dphy_wait_stopstate._entry, ptr @csi2_dphy_wait_stopstate._entry.41, ptr @csi2_dphy_wait_stopstate._entry_ptr, ptr @csi2_dphy_wait_stopstate._entry_ptr.43, ptr @csi2_driver_exit, ptr @csi2_get_active_lanes._entry, ptr @csi2_get_active_lanes._entry.33, ptr @csi2_get_active_lanes._entry.36, ptr @csi2_get_active_lanes._entry_ptr, ptr @csi2_get_active_lanes._entry_ptr.35, ptr @csi2_get_active_lanes._entry_ptr.38, ptr @csi2_notify_bound._entry, ptr @csi2_notify_bound._entry_ptr, ptr @csi2_probe._entry, ptr @csi2_probe._entry.10, ptr @csi2_probe._entry.13, ptr @csi2_probe._entry.17, ptr @csi2_probe._entry.20, ptr @csi2_probe._entry.6, ptr @csi2_probe._entry_ptr, ptr @csi2_probe._entry_ptr.12, ptr @csi2_probe._entry_ptr.15, ptr @csi2_probe._entry_ptr.19, ptr @csi2_probe._entry_ptr.22, ptr @csi2_probe._entry_ptr.8, ptr @csi2_driver, ptr @.str, ptr @csi2_dt_ids, ptr @csi2_subdev_ops, ptr @csi2_internal_ops, ptr @csi2_entity_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @csi2_probe.__key, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @csi2_video_ops, ptr @csi2_pad_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @hsfreq_map, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @csi2_notify_ops, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @switch.table.csi2_get_active_lanes], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsfreq_map to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_get_active_lanes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_get_active_lanes._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_get_active_lanes._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_dphy_wait_stopstate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_dphy_wait_stopstate._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_dphy_wait_clock_lane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_notify_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.csi2_get_active_lanes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @csi2_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @csi2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @csi2_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 588, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %sd = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 1
  tail call void @v4l2_subdev_init(ptr noundef %sd, ptr noundef nonnull @csi2_subdev_ops) #7
  %dev_priv.i = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 1, i32 11
  %1 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev_priv.i, align 4
  %internal_ops = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @csi2_internal_ops, ptr %internal_ops, align 4
  %ops = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 1, i32 0, i32 11
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @csi2_entity_ops, ptr %ops, align 4
  %dev9 = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 1, i32 14
  %4 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev9, align 4
  %owner = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %owner, align 4
  %flags = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %flags, align 4
  %name = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 1, i32 9
  %call13 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 32) #7
  %function = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20482, ptr %function, align 4
  %grp_id = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 1, i32 10
  %8 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 256, ptr %grp_id, align 4
  %flags18 = getelementptr %struct.csi2_dev, ptr %call.i, i32 0, i32 3, i32 0, i32 4
  %9 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %flags18, align 4
  %flags18.1 = getelementptr %struct.csi2_dev, ptr %call.i, i32 0, i32 3, i32 1, i32 4
  %10 = ptrtoint ptr %flags18.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %flags18.1, align 4
  %flags18.2 = getelementptr %struct.csi2_dev, ptr %call.i, i32 0, i32 3, i32 2, i32 4
  %11 = ptrtoint ptr %flags18.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %flags18.2, align 4
  %flags18.3 = getelementptr %struct.csi2_dev, ptr %call.i, i32 0, i32 3, i32 3, i32 4
  %12 = ptrtoint ptr %flags18.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %flags18.3, align 4
  %flags18.4 = getelementptr %struct.csi2_dev, ptr %call.i, i32 0, i32 3, i32 4, i32 4
  %13 = ptrtoint ptr %flags18.4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %flags18.4, align 4
  %pad21 = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 3
  %call23 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 5, ptr noundef %pad21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %call28 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  %pllref_clk = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call28, ptr %pllref_clk, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end38

do.end:                                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name) #10
  %15 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pllref_clk, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end26
  %call40 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.5) #7
  %dphy_clk = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %dphy_clk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call40, ptr %dphy_clk, align 4
  %cmp.i189 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %do.end46, label %if.end54

do.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name) #10
  %19 = ptrtoint ptr %dphy_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dphy_clk, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end54:                                         ; preds = %if.end38
  %call56 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #7
  %pix_clk = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %pix_clk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call56, ptr %pix_clk, align 4
  %cmp.i190 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %do.end62, label %if.end70

do.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name) #10
  %23 = ptrtoint ptr %pix_clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pix_clk, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup

if.end70:                                         ; preds = %if.end54
  %call71 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %do.end76, label %if.end82

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name) #10
  br label %cleanup

if.end82:                                         ; preds = %if.end70
  %26 = ptrtoint ptr %call71 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call71, align 4
  %call84 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %27, i32 noundef 4096) #7
  %base = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 7
  %28 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call84, ptr %base, align 4
  %tobool86.not = icmp eq ptr %call84, null
  br i1 %tobool86.not, label %if.end82.cleanup_crit_edge, label %do.body89

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body89:                                        ; preds = %if.end82
  %lock = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @csi2_probe.__key) #7
  %29 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pllref_clk, align 4
  %call.i191 = tail call i32 @clk_prepare(ptr noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool.not.i = icmp eq i32 %call.i191, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body89.do.end98_crit_edge

do.body89.do.end98_crit_edge:                     ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end98

if.end.i:                                         ; preds = %do.body89
  %call1.i = tail call i32 @clk_enable(ptr noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end104, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %30) #7
  br label %do.end98

do.end98:                                         ; preds = %if.then3.i, %do.body89.do.end98_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i191, %do.body89.do.end98_crit_edge ]
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name) #10
  br label %rmmutex

if.end104:                                        ; preds = %if.end.i
  %31 = ptrtoint ptr %dphy_clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dphy_clk, align 4
  %call.i192 = tail call i32 @clk_prepare(ptr noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %tobool.not.i193 = icmp eq i32 %call.i192, 0
  br i1 %tobool.not.i193, label %if.end.i196, label %if.end104.do.end111_crit_edge

if.end104.do.end111_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end111

if.end.i196:                                      ; preds = %if.end104
  %call1.i194 = tail call i32 @clk_enable(ptr noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i194)
  %tobool2.not.i195 = icmp eq i32 %call1.i194, 0
  br i1 %tobool2.not.i195, label %if.end117, label %if.then3.i197

if.then3.i197:                                    ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %32) #7
  br label %do.end111

do.end111:                                        ; preds = %if.then3.i197, %if.end104.do.end111_crit_edge
  %retval.0.i198.ph = phi i32 [ %call1.i194, %if.then3.i197 ], [ %call.i192, %if.end104.do.end111_crit_edge ]
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name) #10
  br label %pllref_off

if.end117:                                        ; preds = %if.end.i196
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %sd, ptr %driver_data.i.i, align 4
  %call119 = tail call fastcc i32 @csi2_async_register(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end117.cleanup_crit_edge, label %clean_notifier

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

clean_notifier:                                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %notifier = getelementptr inbounds %struct.csi2_dev, ptr %call.i, i32 0, i32 2
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #7
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #7
  %34 = ptrtoint ptr %dphy_clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dphy_clk, align 4
  tail call void @clk_disable(ptr noundef %35) #7
  tail call void @clk_unprepare(ptr noundef %35) #7
  br label %pllref_off

pllref_off:                                       ; preds = %clean_notifier, %do.end111
  %ret.0 = phi i32 [ %retval.0.i198.ph, %do.end111 ], [ %call119, %clean_notifier ]
  %36 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pllref_clk, align 4
  tail call void @clk_disable(ptr noundef %37) #7
  tail call void @clk_unprepare(ptr noundef %37) #7
  br label %rmmutex

rmmutex:                                          ; preds = %pllref_off, %do.end98
  %ret.1 = phi i32 [ %retval.0.i.ph, %do.end98 ], [ %ret.0, %pllref_off ]
  tail call void @mutex_destroy(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %rmmutex, %if.end117.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %do.end76, %do.end62, %do.end46, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %do.end ], [ %21, %do.end46 ], [ %25, %do.end62 ], [ %ret.1, %rmmutex ], [ -19, %do.end76 ], [ -12, %entry.cleanup_crit_edge ], [ %call23, %if.end.cleanup_crit_edge ], [ -12, %if.end82.cleanup_crit_edge ], [ 0, %if.end117.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %notifier = getelementptr i8, ptr %1, i32 196
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #7
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #7
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %dphy_clk = getelementptr i8, ptr %1, i32 404
  %2 = ptrtoint ptr %dphy_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dphy_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %pllref_clk = getelementptr i8, ptr %1, i32 408
  %4 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pllref_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %lock = getelementptr i8, ptr %1, i32 432
  tail call void @mutex_destroy(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csi2_async_register(ptr noundef %csi2) unnamed_addr #2 align 64 {
entry:
  %vep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vep) #7
  %0 = call ptr @memset(ptr %vep, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %vep, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  %notifier = getelementptr inbounds %struct.csi2_dev, ptr %csi2, i32 0, i32 2
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #7
  %3 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csi2, align 4
  %call = tail call ptr @dev_fwnode(ptr noundef %4) #7
  %call1 = tail call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call, i32 noundef 0, i32 noundef 0, i32 noundef 1) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call1, ptr noundef nonnull %vep) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %err_parse

if.end5:                                          ; preds = %if.end
  %mipi_csi2 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2
  %num_data_lanes = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2, i32 3
  %5 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_data_lanes, align 1
  %conv = zext i8 %6 to i16
  %data_lanes = getelementptr inbounds %struct.csi2_dev, ptr %csi2, i32 0, i32 10
  %7 = ptrtoint ptr %data_lanes to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %data_lanes, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_async_register.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_async_register, %if.then10)) #7
          to label %do.body17 [label %if.then10], !srcloc !134

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csi2, align 4
  %10 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_data_lanes, align 1
  %conv15 = zext i8 %11 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_async_register.__UNIQUE_ID_ddebug319, ptr noundef %9, ptr noundef nonnull @.str.50, i32 noundef %conv15) #7
  br label %do.body17

do.body17:                                        ; preds = %if.then10, %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_async_register.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_async_register, %if.then29)) #7
          to label %do.end35 [label %if.then29], !srcloc !134

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csi2, align 4
  %14 = ptrtoint ptr %mipi_csi2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mipi_csi2, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_async_register.__UNIQUE_ID_ddebug320, ptr noundef %13, ptr noundef nonnull @.str.51, i32 noundef %15) #7
  br label %do.end35

do.end35:                                         ; preds = %if.then29, %do.body17
  %call37 = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier, ptr noundef nonnull %call1, i32 noundef 28) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call1) #7
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then39, label %if.end41

if.then39:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call37 to i32
  br label %cleanup

if.end41:                                         ; preds = %do.end35
  %17 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @csi2_notify_ops, ptr %notifier, align 4
  %sd = getelementptr inbounds %struct.csi2_dev, ptr %csi2, i32 0, i32 1
  %call44 = call i32 @v4l2_async_subdev_nf_register(ptr noundef %sd, ptr noundef %notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %call49 = call i32 @v4l2_async_register_subdev(ptr noundef %sd) #7
  br label %cleanup

err_parse:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @fwnode_handle_put(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %err_parse, %if.end47, %if.end41.cleanup_crit_edge, %if.then39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %err_parse ], [ %16, %if.then39 ], [ %call49, %if.end47 ], [ -107, %entry.cleanup_crit_edge ], [ %call44, %if.end41.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep) #7
  ret i32 %retval.0
}

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
define internal i32 @csi2_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %lanes.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -4
  %lock = getelementptr i8, ptr %sd, i32 432
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %src_sd = getelementptr i8, ptr %sd, i32 576
  %0 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_sd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %for.body.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr i8, ptr %sd, i32 580
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %for.cond, label %for.body.preheader.if.end6_crit_edge

for.body.preheader.if.end6_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr i8, ptr %sd, i32 581
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.1 = icmp eq i8 %5, 0
  br i1 %tobool1.not.1, label %for.cond.1, label %for.cond.if.end6_crit_edge

for.cond.if.end6_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i8, ptr %sd, i32 582
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.2, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.2 = icmp eq i8 %7, 0
  br i1 %tobool1.not.2, label %for.cond.2, label %for.cond.1.if.end6_crit_edge

for.cond.1.if.end6_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr i8, ptr %sd, i32 583
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.3, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.3 = icmp eq i8 %9, 0
  br i1 %tobool1.not.3, label %for.cond.2.out_crit_edge, label %for.cond.2.if.end6_crit_edge

for.cond.2.if.end6_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.cond.2.out_crit_edge:                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end6:                                          ; preds = %for.cond.2.if.end6_crit_edge, %for.cond.1.if.end6_crit_edge, %for.cond.if.end6_crit_edge, %for.body.preheader.if.end6_crit_edge
  %stream_count = getelementptr i8, ptr %sd, i32 572
  %10 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool7.not = icmp eq i32 %enable, 0
  %lnot.ext = zext i1 %tobool7.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %lnot.ext)
  %cmp8.not = icmp eq i32 %11, %lnot.ext
  br i1 %cmp8.not, label %do.body, label %if.end6.update_count_crit_edge

if.end6.update_count_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_count

do.body:                                          ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_s_stream.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_s_stream, %if.then18)) #7
          to label %do.end [label %if.then18], !srcloc !134

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %cond = select i1 %tobool7.not, ptr @.str.27, ptr @.str.26
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_s_stream.__UNIQUE_ID_ddebug316, ptr noundef %13, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond) #7
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  br i1 %tobool7.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lanes.i) #7
  %14 = ptrtoint ptr %lanes.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %lanes.i, align 4, !annotation !136
  %pix_clk.i = getelementptr i8, ptr %sd, i32 412
  %15 = ptrtoint ptr %pix_clk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pix_clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end24.thread75

if.end24.thread75:                                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lanes.i) #7
  br label %out

if.end.i.i:                                       ; preds = %if.then22
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.end24.thread78

if.end24.thread78:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lanes.i) #7
  br label %out

if.end.i:                                         ; preds = %if.end.i.i
  %code.i.i = getelementptr i8, ptr %sd, i32 532
  %17 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %18)
  %switch.selectcmp.case1.i.i = icmp eq i32 %18, 8200
  call void @__sanitizer_cov_trace_const_cmp4(i32 8209, i32 %18)
  %switch.selectcmp.case2.i.i = icmp eq i32 %18, 8209
  %switch.selectcmp.i.i = or i1 %switch.selectcmp.case1.i.i, %switch.selectcmp.case2.i.i
  %19 = select i1 %switch.selectcmp.i.i, i32 67108864, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %base.i.i = getelementptr i8, ptr %sd, i32 416
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #7, !srcloc !138
  %22 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src_sd, align 4
  %ctrl_handler.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %ctrl_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl_handler.i.i, align 4
  %call.i201.i = tail call ptr @v4l2_ctrl_find(ptr noundef %25, i32 noundef 10422529) #7
  %tobool.not.i202.i = icmp eq ptr %call.i201.i, null
  br i1 %tobool.not.i202.i, label %if.end.i.if.end4.i_crit_edge, label %if.end189.i.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end189.i.i:                                    ; preds = %if.end.i
  %26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i201.i, i32 0, i32 19
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %val.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i201.i, i32 0, i32 22
  %29 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i.i, align 4
  %arrayidx.i.i = getelementptr i64, ptr %28, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.i.i, align 8
  %mul.i.i = shl i64 %32, 1
  %sub.i.i = add i64 %mul.i.i, 999999
  %33 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i.i) #11, !srcloc !139
  %34 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i.i, i64 %33, i32 0) #11, !srcloc !140
  %asmresult10.i.i.i = extractvalue { i64, i32 } %34, 0
  %div165281.i.i = lshr i64 %asmresult10.i.i.i, 18
  %conv188.i.i = trunc i64 %div165281.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %conv188.i.i)
  %cmp2.i.i.i = icmp ult i32 %conv188.i.i, 90
  br i1 %cmp2.i.i.i, label %if.end189.i.i.if.end4.i_crit_edge, label %for.inc.i.i.i

if.end189.i.i.if.end4.i_crit_edge:                ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.i.i.i:                                    ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %conv188.i.i)
  %cmp2.1.i.i.i = icmp ult i32 %conv188.i.i, 100
  br i1 %cmp2.1.i.i.i, label %for.inc.i.i.i.if.end4.i_crit_edge, label %for.inc.1.i.i.i

for.inc.i.i.i.if.end4.i_crit_edge:                ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 110, i32 %conv188.i.i)
  %cmp2.2.i.i.i = icmp ult i32 %conv188.i.i, 110
  br i1 %cmp2.2.i.i.i, label %for.inc.1.i.i.i.if.end4.i_crit_edge, label %for.inc.2.i.i.i

for.inc.1.i.i.i.if.end4.i_crit_edge:              ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %conv188.i.i)
  %cmp2.3.i.i.i = icmp ult i32 %conv188.i.i, 125
  br i1 %cmp2.3.i.i.i, label %for.inc.2.i.i.i.if.end4.i_crit_edge, label %for.inc.3.i.i.i

for.inc.2.i.i.i.if.end4.i_crit_edge:              ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 140, i32 %conv188.i.i)
  %cmp2.4.i.i.i = icmp ult i32 %conv188.i.i, 140
  br i1 %cmp2.4.i.i.i, label %for.inc.3.i.i.i.if.end4.i_crit_edge, label %for.inc.4.i.i.i

for.inc.3.i.i.i.if.end4.i_crit_edge:              ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %conv188.i.i)
  %cmp2.5.i.i.i = icmp ult i32 %conv188.i.i, 150
  br i1 %cmp2.5.i.i.i, label %for.inc.4.i.i.i.if.end4.i_crit_edge, label %for.inc.5.i.i.i

for.inc.4.i.i.i.if.end4.i_crit_edge:              ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.5.i.i.i:                                  ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %conv188.i.i)
  %cmp2.6.i.i.i = icmp ult i32 %conv188.i.i, 160
  br i1 %cmp2.6.i.i.i, label %for.inc.5.i.i.i.if.end4.i_crit_edge, label %for.inc.6.i.i.i

for.inc.5.i.i.i.if.end4.i_crit_edge:              ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.6.i.i.i:                                  ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %conv188.i.i)
  %cmp2.7.i.i.i = icmp ult i32 %conv188.i.i, 180
  br i1 %cmp2.7.i.i.i, label %for.inc.6.i.i.i.if.end4.i_crit_edge, label %for.inc.7.i.i.i

for.inc.6.i.i.i.if.end4.i_crit_edge:              ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.7.i.i.i:                                  ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %conv188.i.i)
  %cmp2.8.i.i.i = icmp ult i32 %conv188.i.i, 200
  br i1 %cmp2.8.i.i.i, label %for.inc.7.i.i.i.if.end4.i_crit_edge, label %for.inc.8.i.i.i

for.inc.7.i.i.i.if.end4.i_crit_edge:              ; preds = %for.inc.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.8.i.i.i:                                  ; preds = %for.inc.7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 210, i32 %conv188.i.i)
  %cmp2.9.i.i.i = icmp ult i32 %conv188.i.i, 210
  br i1 %cmp2.9.i.i.i, label %for.inc.8.i.i.i.if.end4.i_crit_edge, label %for.inc.9.i.i.i

for.inc.8.i.i.i.if.end4.i_crit_edge:              ; preds = %for.inc.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.9.i.i.i:                                  ; preds = %for.inc.8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %conv188.i.i)
  %cmp2.10.i.i.i = icmp ult i32 %conv188.i.i, 240
  br i1 %cmp2.10.i.i.i, label %for.inc.9.i.i.i.if.end4.i_crit_edge, label %for.inc.10.i.i.i

for.inc.9.i.i.i.if.end4.i_crit_edge:              ; preds = %for.inc.9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.10.i.i.i:                                 ; preds = %for.inc.9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %conv188.i.i)
  %cmp2.11.i.i.i = icmp ult i32 %conv188.i.i, 250
  br i1 %cmp2.11.i.i.i, label %for.inc.10.i.i.i.if.end4.i_crit_edge, label %for.inc.11.i.i.i

for.inc.10.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.10.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.11.i.i.i:                                 ; preds = %for.inc.10.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 270, i32 %conv188.i.i)
  %cmp2.12.i.i.i = icmp ult i32 %conv188.i.i, 270
  br i1 %cmp2.12.i.i.i, label %for.inc.11.i.i.i.if.end4.i_crit_edge, label %for.inc.12.i.i.i

for.inc.11.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.12.i.i.i:                                 ; preds = %for.inc.11.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %conv188.i.i)
  %cmp2.13.i.i.i = icmp ult i32 %conv188.i.i, 300
  br i1 %cmp2.13.i.i.i, label %for.inc.12.i.i.i.if.end4.i_crit_edge, label %for.inc.13.i.i.i

for.inc.12.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.13.i.i.i:                                 ; preds = %for.inc.12.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 330, i32 %conv188.i.i)
  %cmp2.14.i.i.i = icmp ult i32 %conv188.i.i, 330
  br i1 %cmp2.14.i.i.i, label %for.inc.13.i.i.i.if.end4.i_crit_edge, label %for.inc.14.i.i.i

for.inc.13.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.14.i.i.i:                                 ; preds = %for.inc.13.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 360, i32 %conv188.i.i)
  %cmp2.15.i.i.i = icmp ult i32 %conv188.i.i, 360
  br i1 %cmp2.15.i.i.i, label %for.inc.14.i.i.i.if.end4.i_crit_edge, label %for.inc.15.i.i.i

for.inc.14.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.15.i.i.i:                                 ; preds = %for.inc.14.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %conv188.i.i)
  %cmp2.16.i.i.i = icmp ult i32 %conv188.i.i, 400
  br i1 %cmp2.16.i.i.i, label %for.inc.15.i.i.i.if.end4.i_crit_edge, label %for.inc.16.i.i.i

for.inc.15.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.15.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.16.i.i.i:                                 ; preds = %for.inc.15.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 450, i32 %conv188.i.i)
  %cmp2.17.i.i.i = icmp ult i32 %conv188.i.i, 450
  br i1 %cmp2.17.i.i.i, label %for.inc.16.i.i.i.if.end4.i_crit_edge, label %for.inc.17.i.i.i

for.inc.16.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.17.i.i.i:                                 ; preds = %for.inc.16.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %conv188.i.i)
  %cmp2.18.i.i.i = icmp ult i32 %conv188.i.i, 500
  br i1 %cmp2.18.i.i.i, label %for.inc.17.i.i.i.if.end4.i_crit_edge, label %for.inc.18.i.i.i

for.inc.17.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.18.i.i.i:                                 ; preds = %for.inc.17.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 550, i32 %conv188.i.i)
  %cmp2.19.i.i.i = icmp ult i32 %conv188.i.i, 550
  br i1 %cmp2.19.i.i.i, label %for.inc.18.i.i.i.if.end4.i_crit_edge, label %for.inc.19.i.i.i

for.inc.18.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.18.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.19.i.i.i:                                 ; preds = %for.inc.18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %conv188.i.i)
  %cmp2.20.i.i.i = icmp ult i32 %conv188.i.i, 600
  br i1 %cmp2.20.i.i.i, label %for.inc.19.i.i.i.if.end4.i_crit_edge, label %for.inc.20.i.i.i

for.inc.19.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.19.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.20.i.i.i:                                 ; preds = %for.inc.19.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 650, i32 %conv188.i.i)
  %cmp2.21.i.i.i = icmp ult i32 %conv188.i.i, 650
  br i1 %cmp2.21.i.i.i, label %for.inc.20.i.i.i.if.end4.i_crit_edge, label %for.inc.21.i.i.i

for.inc.20.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.20.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.21.i.i.i:                                 ; preds = %for.inc.20.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 700, i32 %conv188.i.i)
  %cmp2.22.i.i.i = icmp ult i32 %conv188.i.i, 700
  br i1 %cmp2.22.i.i.i, label %for.inc.21.i.i.i.if.end4.i_crit_edge, label %for.inc.22.i.i.i

for.inc.21.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.21.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.22.i.i.i:                                 ; preds = %for.inc.21.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 750, i32 %conv188.i.i)
  %cmp2.23.i.i.i = icmp ult i32 %conv188.i.i, 750
  br i1 %cmp2.23.i.i.i, label %for.inc.22.i.i.i.if.end4.i_crit_edge, label %for.inc.23.i.i.i

for.inc.22.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.22.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.23.i.i.i:                                 ; preds = %for.inc.22.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %conv188.i.i)
  %cmp2.24.i.i.i = icmp ult i32 %conv188.i.i, 800
  br i1 %cmp2.24.i.i.i, label %for.inc.23.i.i.i.if.end4.i_crit_edge, label %for.inc.24.i.i.i

for.inc.23.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.23.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.24.i.i.i:                                 ; preds = %for.inc.23.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 850, i32 %conv188.i.i)
  %cmp2.25.i.i.i = icmp ult i32 %conv188.i.i, 850
  br i1 %cmp2.25.i.i.i, label %for.inc.24.i.i.i.if.end4.i_crit_edge, label %for.inc.25.i.i.i

for.inc.24.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.25.i.i.i:                                 ; preds = %for.inc.24.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 900, i32 %conv188.i.i)
  %cmp2.26.i.i.i = icmp ult i32 %conv188.i.i, 900
  br i1 %cmp2.26.i.i.i, label %for.inc.25.i.i.i.if.end4.i_crit_edge, label %for.inc.26.i.i.i

for.inc.25.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.25.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.26.i.i.i:                                 ; preds = %for.inc.25.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 950, i32 %conv188.i.i)
  %cmp2.27.i.i.i = icmp ult i32 %conv188.i.i, 950
  br i1 %cmp2.27.i.i.i, label %for.inc.26.i.i.i.if.end4.i_crit_edge, label %for.inc.27.i.i.i

for.inc.26.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.26.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.27.i.i.i:                                 ; preds = %for.inc.26.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %conv188.i.i)
  %cmp2.28.i.i.i = icmp ult i32 %conv188.i.i, 1000
  br i1 %cmp2.28.i.i.i, label %for.inc.27.i.i.i.if.end4.i_crit_edge, label %for.inc.27.i.i.i.if.end24_crit_edge

for.inc.27.i.i.i.if.end24_crit_edge:              ; preds = %for.inc.27.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

for.inc.27.i.i.i.if.end4.i_crit_edge:             ; preds = %for.inc.27.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %for.inc.27.i.i.i.if.end4.i_crit_edge, %for.inc.26.i.i.i.if.end4.i_crit_edge, %for.inc.25.i.i.i.if.end4.i_crit_edge, %for.inc.24.i.i.i.if.end4.i_crit_edge, %for.inc.23.i.i.i.if.end4.i_crit_edge, %for.inc.22.i.i.i.if.end4.i_crit_edge, %for.inc.21.i.i.i.if.end4.i_crit_edge, %for.inc.20.i.i.i.if.end4.i_crit_edge, %for.inc.19.i.i.i.if.end4.i_crit_edge, %for.inc.18.i.i.i.if.end4.i_crit_edge, %for.inc.17.i.i.i.if.end4.i_crit_edge, %for.inc.16.i.i.i.if.end4.i_crit_edge, %for.inc.15.i.i.i.if.end4.i_crit_edge, %for.inc.14.i.i.i.if.end4.i_crit_edge, %for.inc.13.i.i.i.if.end4.i_crit_edge, %for.inc.12.i.i.i.if.end4.i_crit_edge, %for.inc.11.i.i.i.if.end4.i_crit_edge, %for.inc.10.i.i.i.if.end4.i_crit_edge, %for.inc.9.i.i.i.if.end4.i_crit_edge, %for.inc.8.i.i.i.if.end4.i_crit_edge, %for.inc.7.i.i.i.if.end4.i_crit_edge, %for.inc.6.i.i.i.if.end4.i_crit_edge, %for.inc.5.i.i.i.if.end4.i_crit_edge, %for.inc.4.i.i.i.if.end4.i_crit_edge, %for.inc.3.i.i.i.if.end4.i_crit_edge, %for.inc.2.i.i.i.if.end4.i_crit_edge, %for.inc.1.i.i.i.if.end4.i_crit_edge, %for.inc.i.i.i.if.end4.i_crit_edge, %if.end189.i.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %i.08.lcssa.i.i.i = phi i32 [ 0, %if.end189.i.i.if.end4.i_crit_edge ], [ 1, %for.inc.i.i.i.if.end4.i_crit_edge ], [ 2, %for.inc.1.i.i.i.if.end4.i_crit_edge ], [ 3, %for.inc.2.i.i.i.if.end4.i_crit_edge ], [ 4, %for.inc.3.i.i.i.if.end4.i_crit_edge ], [ 5, %for.inc.4.i.i.i.if.end4.i_crit_edge ], [ 6, %for.inc.5.i.i.i.if.end4.i_crit_edge ], [ 7, %for.inc.6.i.i.i.if.end4.i_crit_edge ], [ 8, %for.inc.7.i.i.i.if.end4.i_crit_edge ], [ 9, %for.inc.8.i.i.i.if.end4.i_crit_edge ], [ 10, %for.inc.9.i.i.i.if.end4.i_crit_edge ], [ 11, %for.inc.10.i.i.i.if.end4.i_crit_edge ], [ 12, %for.inc.11.i.i.i.if.end4.i_crit_edge ], [ 13, %for.inc.12.i.i.i.if.end4.i_crit_edge ], [ 14, %for.inc.13.i.i.i.if.end4.i_crit_edge ], [ 15, %for.inc.14.i.i.i.if.end4.i_crit_edge ], [ 16, %for.inc.15.i.i.i.if.end4.i_crit_edge ], [ 17, %for.inc.16.i.i.i.if.end4.i_crit_edge ], [ 18, %for.inc.17.i.i.i.if.end4.i_crit_edge ], [ 19, %for.inc.18.i.i.i.if.end4.i_crit_edge ], [ 20, %for.inc.19.i.i.i.if.end4.i_crit_edge ], [ 21, %for.inc.20.i.i.i.if.end4.i_crit_edge ], [ 22, %for.inc.21.i.i.i.if.end4.i_crit_edge ], [ 23, %for.inc.22.i.i.i.if.end4.i_crit_edge ], [ 24, %for.inc.23.i.i.i.if.end4.i_crit_edge ], [ 25, %for.inc.24.i.i.i.if.end4.i_crit_edge ], [ 26, %for.inc.25.i.i.i.if.end4.i_crit_edge ], [ 27, %for.inc.26.i.i.i.if.end4.i_crit_edge ], [ 28, %for.inc.27.i.i.i.if.end4.i_crit_edge ], [ 25, %if.end.i.if.end4.i_crit_edge ]
  %hsfreqrange_sel.i.i.i = getelementptr [29 x %struct.anon.102], ptr @hsfreq_map, i32 0, i32 %i.08.lcssa.i.i.i, i32 1
  %35 = ptrtoint ptr %hsfreqrange_sel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hsfreqrange_sel.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %40, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 0) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %42, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i.i, i32 0) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr12.i.i.i = getelementptr i8, ptr %44, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i.i, i32 33554432) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %45 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i, align 4
  %add.ptr16.i.i.i = getelementptr i8, ptr %46, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i.i, i32 1140850944) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i, align 4
  %add.ptr20.i.i.i = getelementptr i8, ptr %48, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i.i, i32 0) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  %50 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i, align 4
  %add.ptr24.i.i.i = getelementptr i8, ptr %51, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i.i.i, i32 %49) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  %add.ptr28.i.i.i = getelementptr i8, ptr %53, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.i.i, i32 33554432) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i.i, align 4
  %add.ptr32.i.i.i = getelementptr i8, ptr %55, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i.i.i, i32 0) #7, !srcloc !138
  %call5.i = call fastcc i32 @csi2_get_active_lanes(ptr noundef %add.ptr.i, ptr noundef nonnull %lanes.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.if.end24_crit_edge

if.end4.i.if.end24_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end8.i:                                        ; preds = %if.end4.i
  %56 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lanes.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %sub.i204.i = add i32 %57, -1
  %58 = tail call i32 @llvm.bswap.i32(i32 %sub.i204.i) #7
  %59 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i206.i = getelementptr i8, ptr %60, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206.i, i32 %58) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %61 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i208.i = getelementptr i8, ptr %62, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208.i, i32 16777216) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %63 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %64, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 16777216) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %65 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %66, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 16777216) #7, !srcloc !138
  %67 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %src_sd, align 4
  %tobool9.not.i = icmp eq ptr %68, null
  br i1 %tobool9.not.i, label %if.end8.i.err_assert_reset.i_crit_edge, label %if.else.i

if.end8.i.err_assert_reset.i_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_assert_reset.i

if.else.i:                                        ; preds = %if.end8.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %video.i, align 4
  %tobool11.not.i = icmp eq ptr %72, null
  br i1 %tobool11.not.i, label %if.else.i.if.end35.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end35.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %pre_streamon.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %72, i32 0, i32 18
  %73 = ptrtoint ptr %pre_streamon.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pre_streamon.i, align 4
  %tobool14.not.i = icmp eq ptr %74, null
  br i1 %tobool14.not.i, label %land.lhs.true.i.if.end35.i_crit_edge, label %if.else16.i

land.lhs.true.i.if.end35.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.else16.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool17.not.i = icmp eq ptr %75, null
  br i1 %tobool17.not.i, label %if.else16.i.if.else24.i_crit_edge, label %land.lhs.true18.i

if.else16.i.if.else24.i_crit_edge:                ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else24.i

land.lhs.true18.i:                                ; preds = %if.else16.i
  %pre_streamon19.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %75, i32 0, i32 18
  %76 = ptrtoint ptr %pre_streamon19.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pre_streamon19.i, align 4
  %tobool20.not.i = icmp eq ptr %77, null
  br i1 %tobool20.not.i, label %land.lhs.true18.i.if.else24.i_crit_edge, label %land.lhs.true18.i.if.end31.i_crit_edge

land.lhs.true18.i.if.end31.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

land.lhs.true18.i.if.else24.i_crit_edge:          ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else24.i

if.else24.i:                                      ; preds = %land.lhs.true18.i.if.else24.i_crit_edge, %if.else16.i.if.else24.i_crit_edge
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else24.i, %land.lhs.true18.i.if.end31.i_crit_edge
  %.sink.i = phi ptr [ %74, %if.else24.i ], [ %77, %land.lhs.true18.i.if.end31.i_crit_edge ]
  %call28.i = tail call i32 %.sink.i(ptr noundef nonnull %68, i32 noundef 1) #7
  %78 = zext i32 %call28.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call28.i, label %if.end31.i.err_assert_reset.i_crit_edge [
    i32 0, label %if.end31.i.if.end35.i_crit_edge
    i32 -515, label %if.end31.i.if.end35.i_crit_edge83
  ]

if.end31.i.if.end35.i_crit_edge83:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.end31.i.if.end35.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.end31.i.err_assert_reset.i_crit_edge:          ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_assert_reset.i

if.end35.i:                                       ; preds = %if.end31.i.if.end35.i_crit_edge, %if.end31.i.if.end35.i_crit_edge83, %land.lhs.true.i.if.end35.i_crit_edge, %if.else.i.if.end35.i_crit_edge
  %notmask.i.i = shl nsw i32 -1, %57
  %sub.i210.i = xor i32 %notmask.i.i, -1
  %shl1.i.i = shl i32 %sub.i210.i, 4
  %or.i.i = or i32 %shl1.i.i, 1024
  %call.i211.i = tail call i64 @ktime_get() #7
  %add.i.i.i = add i64 %call.i211.i, 500000000
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.lhs.true.i.i.for.cond.i.i_crit_edge, %if.end35.i
  %79 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i213.i = getelementptr i8, ptr %80, i32 20
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i213.i) #7, !srcloc !153
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %and.i.i = and i32 %82, %or.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %or.i.i)
  %cmp11.i.i = icmp eq i32 %and.i.i, %or.i.i
  br i1 %cmp11.i.i, label %for.cond.i.i.csi2_dphy_wait_stopstate.exit.i_crit_edge, label %land.lhs.true.i.i

for.cond.i.i.csi2_dphy_wait_stopstate.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %csi2_dphy_wait_stopstate.exit.i

land.lhs.true.i.i:                                ; preds = %for.cond.i.i
  %call14.i.i = tail call i64 @ktime_get() #7
  %cmp3.i.i.i = icmp sgt i64 %call14.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %land.lhs.true.i.i.for.cond.i.i_crit_edge

land.lhs.true.i.i.for.cond.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %83 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %84, i32 20
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i.i) #7, !srcloc !153
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  %.pre.i.i = and i32 %86, %or.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre.i.i, i32 %or.i.i)
  %cmp31.i.i = icmp eq i32 %.pre.i.i, %or.i.i
  br i1 %cmp31.i.i, label %for.end.i.i.csi2_dphy_wait_stopstate.exit.i_crit_edge, label %do.end36.i.i

for.end.i.i.csi2_dphy_wait_stopstate.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %csi2_dphy_wait_stopstate.exit.i

do.end36.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr i8, ptr %sd, i32 116
  %call38.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name.i.i) #10
  %call46.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i, i32 noundef %86) #10
  br label %csi2_dphy_wait_stopstate.exit.i

csi2_dphy_wait_stopstate.exit.i:                  ; preds = %do.end36.i.i, %for.end.i.i.csi2_dphy_wait_stopstate.exit.i_crit_edge, %for.cond.i.i.csi2_dphy_wait_stopstate.exit.i_crit_edge
  %87 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %src_sd, align 4
  %tobool39.not.i = icmp eq ptr %88, null
  br i1 %tobool39.not.i, label %csi2_dphy_wait_stopstate.exit.i.err_assert_reset.i_crit_edge, label %if.else41.i

csi2_dphy_wait_stopstate.exit.i.err_assert_reset.i_crit_edge: ; preds = %csi2_dphy_wait_stopstate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_assert_reset.i

if.else41.i:                                      ; preds = %csi2_dphy_wait_stopstate.exit.i
  %ops42.i = getelementptr inbounds %struct.v4l2_subdev, ptr %88, i32 0, i32 6
  %89 = ptrtoint ptr %ops42.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops42.i, align 4
  %video43.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %video43.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %video43.i, align 4
  %tobool44.not.i = icmp eq ptr %92, null
  br i1 %tobool44.not.i, label %if.else41.i.if.end72.i_crit_edge, label %land.lhs.true45.i

if.else41.i.if.end72.i_crit_edge:                 ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

land.lhs.true45.i:                                ; preds = %if.else41.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %92, i32 0, i32 10
  %93 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_stream.i, align 4
  %tobool48.not.i = icmp eq ptr %94, null
  br i1 %tobool48.not.i, label %land.lhs.true45.i.if.end72.i_crit_edge, label %if.else50.i

land.lhs.true45.i.if.end72.i_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

if.else50.i:                                      ; preds = %land.lhs.true45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool51.not.i = icmp eq ptr %95, null
  br i1 %tobool51.not.i, label %if.else50.i.if.else58.i_crit_edge, label %land.lhs.true52.i

if.else50.i.if.else58.i_crit_edge:                ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else58.i

land.lhs.true52.i:                                ; preds = %if.else50.i
  %s_stream53.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %95, i32 0, i32 10
  %96 = ptrtoint ptr %s_stream53.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %s_stream53.i, align 4
  %tobool54.not.i = icmp eq ptr %97, null
  br i1 %tobool54.not.i, label %land.lhs.true52.i.if.else58.i_crit_edge, label %land.lhs.true52.i.if.end65.i_crit_edge

land.lhs.true52.i.if.end65.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

land.lhs.true52.i.if.else58.i_crit_edge:          ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else58.i

if.else58.i:                                      ; preds = %land.lhs.true52.i.if.else58.i_crit_edge, %if.else50.i.if.else58.i_crit_edge
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.else58.i, %land.lhs.true52.i.if.end65.i_crit_edge
  %.sink243.i = phi ptr [ %94, %if.else58.i ], [ %97, %land.lhs.true52.i.if.end65.i_crit_edge ]
  %call62.i = tail call i32 %.sink243.i(ptr noundef nonnull %88, i32 noundef 1) #7
  %98 = zext i32 %call62.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call62.i, label %if.end65.i.err_stop_lp11.i_crit_edge [
    i32 0, label %if.end65.i.if.end72.i_crit_edge
    i32 -515, label %if.end65.i.if.end72.i_crit_edge84
  ]

if.end65.i.if.end72.i_crit_edge84:                ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

if.end65.i.if.end72.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

if.end65.i.err_stop_lp11.i_crit_edge:             ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_stop_lp11.i

if.end72.i:                                       ; preds = %if.end65.i.if.end72.i_crit_edge, %if.end65.i.if.end72.i_crit_edge84, %land.lhs.true45.i.if.end72.i_crit_edge, %if.else41.i.if.end72.i_crit_edge
  %call73.i = tail call fastcc i32 @csi2_dphy_wait_clock_lane(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.end24.thread72, label %err_stop_upstream.i

if.end24.thread72:                                ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lanes.i) #7
  br label %update_count

err_stop_upstream.i:                              ; preds = %if.end72.i
  %99 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %src_sd, align 4
  %tobool80.not.i = icmp eq ptr %100, null
  br i1 %tobool80.not.i, label %err_stop_upstream.i.err_assert_reset.i_crit_edge, label %if.else82.i

err_stop_upstream.i.err_assert_reset.i_crit_edge: ; preds = %err_stop_upstream.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_assert_reset.i

if.else82.i:                                      ; preds = %err_stop_upstream.i
  %ops83.i = getelementptr inbounds %struct.v4l2_subdev, ptr %100, i32 0, i32 6
  %101 = ptrtoint ptr %ops83.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops83.i, align 4
  %video84.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %video84.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %video84.i, align 4
  %tobool85.not.i = icmp eq ptr %104, null
  br i1 %tobool85.not.i, label %if.else82.i.err_stop_lp11.i_crit_edge, label %land.lhs.true86.i

if.else82.i.err_stop_lp11.i_crit_edge:            ; preds = %if.else82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_stop_lp11.i

land.lhs.true86.i:                                ; preds = %if.else82.i
  %s_stream89.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %104, i32 0, i32 10
  %105 = ptrtoint ptr %s_stream89.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %s_stream89.i, align 4
  %tobool90.not.i = icmp eq ptr %106, null
  br i1 %tobool90.not.i, label %land.lhs.true86.i.err_stop_lp11.i_crit_edge, label %if.else92.i

land.lhs.true86.i.err_stop_lp11.i_crit_edge:      ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_stop_lp11.i

if.else92.i:                                      ; preds = %land.lhs.true86.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool93.not.i = icmp eq ptr %107, null
  br i1 %tobool93.not.i, label %if.else92.i.if.else100.i_crit_edge, label %land.lhs.true94.i

if.else92.i.if.else100.i_crit_edge:               ; preds = %if.else92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else100.i

land.lhs.true94.i:                                ; preds = %if.else92.i
  %s_stream95.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %107, i32 0, i32 10
  %108 = ptrtoint ptr %s_stream95.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_stream95.i, align 4
  %tobool96.not.i = icmp eq ptr %109, null
  br i1 %tobool96.not.i, label %land.lhs.true94.i.if.else100.i_crit_edge, label %land.lhs.true94.i.err_stop_lp11.sink.split.i_crit_edge

land.lhs.true94.i.err_stop_lp11.sink.split.i_crit_edge: ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_stop_lp11.sink.split.i

land.lhs.true94.i.if.else100.i_crit_edge:         ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else100.i

if.else100.i:                                     ; preds = %land.lhs.true94.i.if.else100.i_crit_edge, %if.else92.i.if.else100.i_crit_edge
  br label %err_stop_lp11.sink.split.i

err_stop_lp11.sink.split.i:                       ; preds = %if.else100.i, %land.lhs.true94.i.err_stop_lp11.sink.split.i_crit_edge
  %.sink244.i = phi ptr [ %106, %if.else100.i ], [ %109, %land.lhs.true94.i.err_stop_lp11.sink.split.i_crit_edge ]
  %call99.i = tail call i32 %.sink244.i(ptr noundef nonnull %100, i32 noundef 0) #7
  br label %err_stop_lp11.i

err_stop_lp11.i:                                  ; preds = %err_stop_lp11.sink.split.i, %land.lhs.true86.i.err_stop_lp11.i_crit_edge, %if.else82.i.err_stop_lp11.i_crit_edge, %if.end65.i.err_stop_lp11.i_crit_edge
  %ret.0.ph.i = phi i32 [ %call73.i, %land.lhs.true86.i.err_stop_lp11.i_crit_edge ], [ %call73.i, %if.else82.i.err_stop_lp11.i_crit_edge ], [ %call62.i, %if.end65.i.err_stop_lp11.i_crit_edge ], [ %call73.i, %err_stop_lp11.sink.split.i ]
  %110 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pr.i = load ptr, ptr %src_sd, align 4
  %tobool112.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool112.not.i, label %err_stop_lp11.i.err_assert_reset.i_crit_edge, label %if.else114.i

err_stop_lp11.i.err_assert_reset.i_crit_edge:     ; preds = %err_stop_lp11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_assert_reset.i

if.else114.i:                                     ; preds = %err_stop_lp11.i
  %ops115.i = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr.i, i32 0, i32 6
  %111 = ptrtoint ptr %ops115.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops115.i, align 4
  %video116.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %video116.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %video116.i, align 4
  %tobool117.not.i = icmp eq ptr %114, null
  br i1 %tobool117.not.i, label %if.else114.i.err_assert_reset.i_crit_edge, label %land.lhs.true118.i

if.else114.i.err_assert_reset.i_crit_edge:        ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_assert_reset.i

land.lhs.true118.i:                               ; preds = %if.else114.i
  %post_streamoff.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %114, i32 0, i32 19
  %115 = ptrtoint ptr %post_streamoff.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %post_streamoff.i, align 4
  %tobool121.not.i = icmp eq ptr %116, null
  br i1 %tobool121.not.i, label %land.lhs.true118.i.err_assert_reset.i_crit_edge, label %if.else123.i

land.lhs.true118.i.err_assert_reset.i_crit_edge:  ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_assert_reset.i

if.else123.i:                                     ; preds = %land.lhs.true118.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool124.not.i = icmp eq ptr %117, null
  br i1 %tobool124.not.i, label %if.else123.i.if.else131.i_crit_edge, label %land.lhs.true125.i

if.else123.i.if.else131.i_crit_edge:              ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else131.i

land.lhs.true125.i:                               ; preds = %if.else123.i
  %post_streamoff126.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %117, i32 0, i32 19
  %118 = ptrtoint ptr %post_streamoff126.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %post_streamoff126.i, align 4
  %tobool127.not.i = icmp eq ptr %119, null
  br i1 %tobool127.not.i, label %land.lhs.true125.i.if.else131.i_crit_edge, label %land.lhs.true125.i.err_assert_reset.sink.split.i_crit_edge

land.lhs.true125.i.err_assert_reset.sink.split.i_crit_edge: ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_assert_reset.sink.split.i

land.lhs.true125.i.if.else131.i_crit_edge:        ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else131.i

if.else131.i:                                     ; preds = %land.lhs.true125.i.if.else131.i_crit_edge, %if.else123.i.if.else131.i_crit_edge
  br label %err_assert_reset.sink.split.i

err_assert_reset.sink.split.i:                    ; preds = %if.else131.i, %land.lhs.true125.i.err_assert_reset.sink.split.i_crit_edge
  %.sink245.i = phi ptr [ %116, %if.else131.i ], [ %119, %land.lhs.true125.i.err_assert_reset.sink.split.i_crit_edge ]
  %call130.i = tail call i32 %.sink245.i(ptr noundef nonnull %.pr.i) #7
  br label %err_assert_reset.i

err_assert_reset.i:                               ; preds = %err_assert_reset.sink.split.i, %land.lhs.true118.i.err_assert_reset.i_crit_edge, %if.else114.i.err_assert_reset.i_crit_edge, %err_stop_lp11.i.err_assert_reset.i_crit_edge, %err_stop_upstream.i.err_assert_reset.i_crit_edge, %csi2_dphy_wait_stopstate.exit.i.err_assert_reset.i_crit_edge, %if.end31.i.err_assert_reset.i_crit_edge, %if.end8.i.err_assert_reset.i_crit_edge
  %ret.1.i = phi i32 [ %call28.i, %if.end31.i.err_assert_reset.i_crit_edge ], [ %ret.0.ph.i, %if.else114.i.err_assert_reset.i_crit_edge ], [ %ret.0.ph.i, %land.lhs.true118.i.err_assert_reset.i_crit_edge ], [ %ret.0.ph.i, %err_stop_lp11.i.err_assert_reset.i_crit_edge ], [ -19, %if.end8.i.err_assert_reset.i_crit_edge ], [ %call73.i, %err_stop_upstream.i.err_assert_reset.i_crit_edge ], [ -19, %csi2_dphy_wait_stopstate.exit.i.err_assert_reset.i_crit_edge ], [ %ret.0.ph.i, %err_assert_reset.sink.split.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %120 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i215.i = getelementptr i8, ptr %121, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215.i, i32 0) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void @arm_heavy_mb() #7
  %122 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %123, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 0) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %124 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %125, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 0) #7, !srcloc !138
  br label %if.end24

if.else:                                          ; preds = %do.end
  %126 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %src_sd, align 4
  %tobool.not.i = icmp eq ptr %127, null
  br i1 %tobool.not.i, label %if.else.if.end24.thread_crit_edge, label %if.else.i57

if.else.if.end24.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.thread

if.else.i57:                                      ; preds = %if.else
  %ops.i55 = getelementptr inbounds %struct.v4l2_subdev, ptr %127, i32 0, i32 6
  %128 = ptrtoint ptr %ops.i55 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops.i55, align 4
  %video.i56 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %video.i56 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %video.i56, align 4
  %tobool1.not.i = icmp eq ptr %131, null
  br i1 %tobool1.not.i, label %if.else.i57.if.end19.i_crit_edge, label %land.lhs.true.i59

if.else.i57.if.end19.i_crit_edge:                 ; preds = %if.else.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

land.lhs.true.i59:                                ; preds = %if.else.i57
  %s_stream.i58 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %131, i32 0, i32 10
  %132 = ptrtoint ptr %s_stream.i58 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %s_stream.i58, align 4
  %tobool4.not.i = icmp eq ptr %133, null
  br i1 %tobool4.not.i, label %land.lhs.true.i59.if.end19.i_crit_edge, label %if.else6.i

land.lhs.true.i59.if.end19.i_crit_edge:           ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.else6.i:                                       ; preds = %land.lhs.true.i59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not.i = icmp eq ptr %134, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %s_stream9.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %134, i32 0, i32 10
  %135 = ptrtoint ptr %s_stream9.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %s_stream9.i, align 4
  %tobool10.not.i = icmp eq ptr %136, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.sink.split.i_crit_edge

land.lhs.true8.i.if.end19.sink.split.i_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.sink.split.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge
  %.sink.i60 = phi ptr [ %133, %if.else13.i ], [ %136, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge ]
  %call17.i = tail call i32 %.sink.i60(ptr noundef nonnull %127, i32 noundef 0) #7
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end19.sink.split.i, %land.lhs.true.i59.if.end19.i_crit_edge, %if.else.i57.if.end19.i_crit_edge
  %137 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %137)
  %.pr.i61 = load ptr, ptr %src_sd, align 4
  %tobool23.not.i = icmp eq ptr %.pr.i61, null
  br i1 %tobool23.not.i, label %if.end19.i.if.end24.thread_crit_edge, label %if.else25.i

if.end19.i.if.end24.thread_crit_edge:             ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.thread

if.else25.i:                                      ; preds = %if.end19.i
  %ops26.i = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr.i61, i32 0, i32 6
  %138 = ptrtoint ptr %ops26.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ops26.i, align 4
  %video27.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %139, i32 0, i32 3
  %140 = ptrtoint ptr %video27.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %video27.i, align 4
  %tobool28.not.i = icmp eq ptr %141, null
  br i1 %tobool28.not.i, label %if.else25.i.if.end24.thread_crit_edge, label %land.lhs.true29.i

if.else25.i.if.end24.thread_crit_edge:            ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.thread

land.lhs.true29.i:                                ; preds = %if.else25.i
  %post_streamoff.i62 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %141, i32 0, i32 19
  %142 = ptrtoint ptr %post_streamoff.i62 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %post_streamoff.i62, align 4
  %tobool32.not.i = icmp eq ptr %143, null
  br i1 %tobool32.not.i, label %land.lhs.true29.i.if.end24.thread_crit_edge, label %if.else34.i

land.lhs.true29.i.if.end24.thread_crit_edge:      ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.thread

if.else34.i:                                      ; preds = %land.lhs.true29.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool35.not.i = icmp eq ptr %144, null
  br i1 %tobool35.not.i, label %if.else34.i.if.else42.i_crit_edge, label %land.lhs.true36.i

if.else34.i.if.else42.i_crit_edge:                ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else42.i

land.lhs.true36.i:                                ; preds = %if.else34.i
  %post_streamoff37.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %144, i32 0, i32 19
  %145 = ptrtoint ptr %post_streamoff37.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %post_streamoff37.i, align 4
  %tobool38.not.i = icmp eq ptr %146, null
  br i1 %tobool38.not.i, label %land.lhs.true36.i.if.else42.i_crit_edge, label %land.lhs.true36.i.if.end49.sink.split.i_crit_edge

land.lhs.true36.i.if.end49.sink.split.i_crit_edge: ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.sink.split.i

land.lhs.true36.i.if.else42.i_crit_edge:          ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else42.i

if.else42.i:                                      ; preds = %land.lhs.true36.i.if.else42.i_crit_edge, %if.else34.i.if.else42.i_crit_edge
  br label %if.end49.sink.split.i

if.end49.sink.split.i:                            ; preds = %if.else42.i, %land.lhs.true36.i.if.end49.sink.split.i_crit_edge
  %.sink72.i = phi ptr [ %143, %if.else42.i ], [ %146, %land.lhs.true36.i.if.end49.sink.split.i_crit_edge ]
  %call46.i = tail call i32 %.sink72.i(ptr noundef nonnull %.pr.i61) #7
  br label %if.end24.thread

if.end24.thread:                                  ; preds = %if.end49.sink.split.i, %land.lhs.true29.i.if.end24.thread_crit_edge, %if.else25.i.if.end24.thread_crit_edge, %if.end19.i.if.end24.thread_crit_edge, %if.else.if.end24.thread_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %base.i.i63 = getelementptr i8, ptr %sd, i32 416
  %147 = ptrtoint ptr %base.i.i63 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i.i63, align 4
  %add.ptr.i.i64 = getelementptr i8, ptr %148, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i64, i32 0) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void @arm_heavy_mb() #7
  %149 = ptrtoint ptr %base.i.i63 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i.i63, align 4
  %add.ptr16.i.i65 = getelementptr i8, ptr %150, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i65, i32 0) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %151 = ptrtoint ptr %base.i.i63 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i.i63, align 4
  %add.ptr20.i.i66 = getelementptr i8, ptr %152, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i66, i32 0) #7, !srcloc !138
  %pix_clk.i67 = getelementptr i8, ptr %sd, i32 412
  %153 = ptrtoint ptr %pix_clk.i67 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pix_clk.i67, align 4
  tail call void @clk_disable(ptr noundef %154) #7
  tail call void @clk_unprepare(ptr noundef %154) #7
  br label %update_count

if.end24:                                         ; preds = %err_assert_reset.i, %if.end4.i.if.end24_crit_edge, %for.inc.27.i.i.i.if.end24_crit_edge
  %ret.2.i = phi i32 [ %call5.i, %if.end4.i.if.end24_crit_edge ], [ %ret.1.i, %err_assert_reset.i ], [ -22, %for.inc.27.i.i.i.if.end24_crit_edge ]
  %155 = ptrtoint ptr %pix_clk.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pix_clk.i, align 4
  tail call void @clk_disable(ptr noundef %156) #7
  tail call void @clk_unprepare(ptr noundef %156) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lanes.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %tobool25.not = icmp eq i32 %ret.2.i, 0
  br i1 %tobool25.not, label %if.end24.update_count_crit_edge, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end24.update_count_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_count

update_count:                                     ; preds = %if.end24.update_count_crit_edge, %if.end24.thread, %if.end24.thread72, %if.end6.update_count_crit_edge
  %cond29 = select i1 %tobool7.not, i32 -1, i32 1
  %157 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %stream_count, align 4
  %add = add i32 %158, %cond29
  %159 = tail call i32 @llvm.smax.i32(i32 %add, i32 0)
  %160 = ptrtoint ptr %stream_count to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %stream_count, align 4
  br label %out

out:                                              ; preds = %update_count, %if.end24.out_crit_edge, %if.end24.thread78, %if.end24.thread75, %for.cond.2.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ %ret.2.i, %if.end24.out_crit_edge ], [ -32, %entry.out_crit_edge ], [ 0, %update_count ], [ %call.i.i, %if.end24.thread75 ], [ %call1.i.i, %if.end24.thread78 ], [ -32, %for.cond.2.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csi2_get_active_lanes(ptr nocapture noundef readonly %csi2, ptr nocapture noundef writeonly %lanes) unnamed_addr #2 align 64 {
entry:
  %mbus_config = alloca %struct.v4l2_mbus_config, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mbus_config) #7
  %0 = ptrtoint ptr %mbus_config to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %mbus_config, align 8
  %data_lanes = getelementptr inbounds %struct.csi2_dev, ptr %csi2, i32 0, i32 10
  %1 = ptrtoint ptr %data_lanes to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %data_lanes, align 4
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %lanes, align 4
  %remote = getelementptr inbounds %struct.csi2_dev, ptr %csi2, i32 0, i32 8
  %4 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remote, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.end35_crit_edge, label %if.else

entry.do.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pad, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.else.do.body_crit_edge, label %land.lhs.true

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true:                                    ; preds = %if.else
  %get_mbus_config = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %get_mbus_config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_mbus_config, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %land.lhs.true.do.body_crit_edge, label %if.else6

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.else6.if.else13_crit_edge, label %land.lhs.true8

if.else6.if.else13_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else13

land.lhs.true8:                                   ; preds = %if.else6
  %get_mbus_config9 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %get_mbus_config9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_mbus_config9, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else13_crit_edge, label %land.lhs.true8.if.end20_crit_edge

land.lhs.true8.if.end20_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true8.if.else13_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else13

if.else13:                                        ; preds = %land.lhs.true8.if.else13_crit_edge, %if.else6.if.else13_crit_edge
  br label %if.end20

if.end20:                                         ; preds = %if.else13, %land.lhs.true8.if.end20_crit_edge
  %.sink92 = phi ptr [ %11, %if.else13 ], [ %14, %land.lhs.true8.if.end20_crit_edge ]
  %remote_pad17 = getelementptr inbounds %struct.csi2_dev, ptr %csi2, i32 0, i32 9
  %15 = ptrtoint ptr %remote_pad17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %remote_pad17, align 4
  %call18 = call i32 %.sink92(ptr noundef nonnull %5, i32 noundef %16, ptr noundef nonnull %mbus_config) #7
  %17 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call18, label %if.end20.do.end35_crit_edge [
    i32 -515, label %if.end20.do.body_crit_edge
    i32 0, label %if.end37
  ]

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end20.do.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

do.body:                                          ; preds = %if.end20.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %if.else.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_get_active_lanes.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_get_active_lanes, %if.then28)) #7
          to label %cleanup [label %if.then28], !srcloc !134

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csi2, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_get_active_lanes.__UNIQUE_ID_ddebug315, ptr noundef %19, ptr noundef nonnull @.str.29) #7
  br label %cleanup

do.end35:                                         ; preds = %if.end20.do.end35_crit_edge, %entry.do.end35_crit_edge
  %__result.090 = phi i32 [ %call18, %if.end20.do.end35_crit_edge ], [ -19, %entry.do.end35_crit_edge ]
  %20 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csi2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end37:                                         ; preds = %if.end20
  %22 = ptrtoint ptr %mbus_config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mbus_config, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp38.not = icmp eq i32 %23, 5
  br i1 %cmp38.not, label %if.end46, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csi2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.34, i32 noundef %23) #10
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  %flags = getelementptr inbounds %struct.v4l2_mbus_config, ptr %mbus_config, i32 0, i32 1
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and = and i32 %27, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %28 = icmp ult i32 %switch.tableidx, 8
  br i1 %28, label %switch.hole_check, label %if.end46.sw.default_crit_edge

if.end46.sw.default_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %if.end46.sw.default_crit_edge
  %29 = ptrtoint ptr %data_lanes to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %data_lanes, align 4
  %conv51 = zext i16 %30 to i32
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.end46
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %31 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %switch.lobit.not = icmp eq i8 %31, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.csi2_get_active_lanes, i32 0, i32 %switch.tableidx
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.default
  %num_lanes.0 = phi i32 [ %conv51, %sw.default ], [ %switch.load, %switch.lookup ]
  %33 = ptrtoint ptr %data_lanes to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %data_lanes, align 4
  %conv53 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %num_lanes.0, i32 %conv53)
  %cmp54 = icmp ugt i32 %num_lanes.0, %conv53
  br i1 %cmp54, label %do.end59, label %if.end61

do.end59:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %csi2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.37, i32 noundef %num_lanes.0) #10
  br label %cleanup

if.end61:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %num_lanes.0, ptr %lanes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end59, %do.end43, %do.end35, %if.then28, %do.body
  %retval.0 = phi i32 [ %__result.090, %do.end35 ], [ -22, %do.end43 ], [ -22, %do.end59 ], [ 0, %if.end61 ], [ 0, %if.then28 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mbus_config) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csi2_dphy_wait_clock_lane(ptr noundef %csi2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 500000000
  %base = getelementptr inbounds %struct.csi2_dev, ptr %csi2, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !153
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call13 = tail call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !153
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  br label %for.end

for.end:                                          ; preds = %if.then16, %for.cond.for.end_crit_edge
  %reg.0 = phi i32 [ %7, %if.then16 ], [ %3, %for.cond.for.end_crit_edge ]
  %and29 = and i32 %reg.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.end35, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.csi2_dev, ptr %csi2, i32 0, i32 1, i32 9
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name, i32 noundef %reg.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end35 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_init_cfg(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %sd, i32 432
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %0 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !160

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i.i
  br label %__csi2_get_fmt.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %format_mbus.i = getelementptr i8, ptr %sd, i32 524
  br label %__csi2_get_fmt.exit

__csi2_get_fmt.exit:                              ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %format_mbus.i, %if.else.i ]
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %sd, i32 432
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %stream_count = getelementptr i8, ptr %sd, i32 572
  %2 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.not = icmp eq i32 %5, 0
  br i1 %cmp5.not, label %if.end3.if.end7_crit_edge, label %if.then6

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %format_mbus = getelementptr i8, ptr %sd, i32 524
  %6 = call ptr @memcpy(ptr %format, ptr %format_mbus, i32 48)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3.if.end7_crit_edge
  %7 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end7
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %9 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %5, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !160

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %5, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %11 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %12, i32 %spec.select.i.i
  br label %__csi2_get_fmt.exit

if.else.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %format_mbus.i = getelementptr i8, ptr %sd, i32 524
  br label %__csi2_get_fmt.exit

__csi2_get_fmt.exit:                              ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %format_mbus.i, %if.else.i ]
  %format10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %retval.0.i, ptr %format10, i32 48)
  br label %out

out:                                              ; preds = %__csi2_get_fmt.exit, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %__csi2_get_fmt.exit ], [ -16, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_registered(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format_mbus = getelementptr i8, ptr %sd, i32 524
  %call1 = tail call i32 @imx_media_init_mbus_fmt(ptr noundef %format_mbus, i32 noundef 640, i32 noundef 480, i32 noundef 0, i32 noundef 1, ptr noundef null) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_init_mbus_fmt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_get_fwnode_pad_1_to_1(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_link_setup(ptr noundef %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %entity, i32 -4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_link_setup.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_link_setup, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !134

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %entity7 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %2 = ptrtoint ptr %entity7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity7, align 4
  %name = getelementptr inbounds %struct.media_entity, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %entity8 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 1
  %6 = ptrtoint ptr %entity8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entity8, align 4
  %name9 = getelementptr inbounds %struct.media_entity, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_link_setup.__UNIQUE_ID_ddebug317, ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef %5, ptr noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %entity11 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %10 = ptrtoint ptr %entity11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entity11, align 4
  %lock = getelementptr i8, ptr %entity, i32 432
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %flags21 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 4
  %12 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags21, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %and42 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool22.not, label %if.else41, label %if.then23

if.then23:                                        ; preds = %do.end
  %index36 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 2
  %14 = ptrtoint ptr %index36 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %index36, align 4
  %conv37 = zext i16 %15 to i32
  %sub38 = add nsw i32 %conv37, -1
  %arrayidx39 = getelementptr %struct.csi2_dev, ptr %add.ptr.i, i32 0, i32 15, i32 %sub38
  br i1 %tobool43.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then23
  %16 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx39, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool27.not = icmp eq i8 %17, 0
  br i1 %tobool27.not, label %if.end29, label %if.then26.out_crit_edge

if.then26.out_crit_edge:                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end29:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %arrayidx39, align 1
  br label %out

if.else:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx39, align 1
  br label %out

if.else41:                                        ; preds = %do.end
  %src_sd50 = getelementptr i8, ptr %entity, i32 576
  br i1 %tobool43.not, label %if.else49, label %if.then44

if.then44:                                        ; preds = %if.else41
  %20 = ptrtoint ptr %src_sd50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src_sd50, align 4
  %tobool45.not = icmp eq ptr %21, null
  br i1 %tobool45.not, label %if.end47, label %if.then44.out_crit_edge

if.then44.out_crit_edge:                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end47:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %src_sd50 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %11, ptr %src_sd50, align 4
  br label %out

if.else49:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %src_sd50 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %src_sd50, align 4
  br label %out

out:                                              ; preds = %if.else49, %if.end47, %if.then44.out_crit_edge, %if.else, %if.end29, %if.then26.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end29 ], [ 0, %if.else ], [ 0, %if.end47 ], [ 0, %if.else49 ], [ -16, %if.then26.out_crit_edge ], [ -16, %if.then44.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_subdev_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_notify_bound(ptr nocapture noundef %notifier, ptr noundef %sd, ptr nocapture noundef readonly %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %notifier, i32 -200
  %pads = getelementptr i8, ptr %notifier, i32 -152
  %0 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pads, align 4
  %match = getelementptr inbounds %struct.v4l2_async_subdev, ptr %asd, i32 0, i32 1
  %2 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %match, align 4
  %call3 = tail call i32 @media_entity_get_fwnode_pad(ptr noundef %sd, ptr noundef %3, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.52, ptr noundef %name) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %remote = getelementptr i8, ptr %notifier, i32 224
  %6 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sd, ptr %remote, align 4
  %remote_pad = getelementptr i8, ptr %notifier, i32 228
  %7 = ptrtoint ptr %remote_pad to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3, ptr %remote_pad, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_notify_bound.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_notify_bound, %if.then8)) #7
          to label %do.end14 [label %if.then8], !srcloc !134

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %name10 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_notify_bound.__UNIQUE_ID_ddebug318, ptr noundef %9, ptr noundef nonnull @.str.54, ptr noundef %name10, i32 noundef %call3) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then8, %if.end
  %call15 = tail call i32 @v4l2_create_fwnode_links_to_pad(ptr noundef %sd, ptr noundef %1, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call15, %do.end14 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @csi2_notify_unbind(ptr nocapture noundef writeonly %notifier, ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %asd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %remote = getelementptr i8, ptr %notifier, i32 224
  %0 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %remote, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_get_fwnode_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_create_fwnode_links_to_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !56, !57, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !98, !100, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !117, !118, !119, !120, !122, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__initcall__kmod_imx6_mipi_csi2__321_818_csi2_driver_init6, !1, !"__initcall__kmod_imx6_mipi_csi2__321_818_csi2_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 818, i32 1}
!2 = !{ptr @__exitcall_csi2_driver_exit, !1, !"__exitcall_csi2_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description322, !4, !"__UNIQUE_ID_description322", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 820, i32 1}
!5 = !{ptr @__UNIQUE_ID_author323, !6, !"__UNIQUE_ID_author323", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 821, i32 1}
!7 = !{ptr @__UNIQUE_ID_file324, !8, !"__UNIQUE_ID_file324", i1 false, i1 false}
!8 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 822, i32 1}
!9 = !{ptr @__UNIQUE_ID_license325, !8, !"__UNIQUE_ID_license325", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 811, i32 11}
!12 = !{ptr @csi2_driver, !13, !"csi2_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 809, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 726, i32 46}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 728, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @csi2_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @csi2_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 732, i32 44}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 734, i32 3}
!26 = !{ptr @csi2_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @csi2_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 738, i32 43}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 740, i32 3}
!32 = !{ptr @csi2_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @csi2_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 746, i32 3}
!36 = !{ptr @csi2_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @csi2_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @csi2_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 754, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 758, i32 3}
!43 = !{ptr @csi2_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @csi2_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 764, i32 3}
!47 = !{ptr @csi2_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @csi2_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @csi2_subdev_ops, !50, !"csi2_subdev_ops", i1 false, i1 false}
!50 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 602, i32 37}
!51 = !{ptr @csi2_video_ops, !52, !"csi2_video_ops", i1 false, i1 false}
!52 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 592, i32 43}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 457, i32 2}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @csi2_s_stream.__UNIQUE_ID_ddebug316, !54, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!58 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @hsfreq_map, !61, !"hsfreq_map", i1 false, i1 false}
!61 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 180, i32 3}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 314, i32 3}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @csi2_get_active_lanes.__UNIQUE_ID_ddebug315, !63, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 319, i32 3}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @csi2_get_active_lanes._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @csi2_get_active_lanes._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 324, i32 3}
!74 = !{ptr @csi2_get_active_lanes._entry.33, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @csi2_get_active_lanes._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 348, i32 3}
!78 = !{ptr @csi2_get_active_lanes._entry.36, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @csi2_get_active_lanes._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 264, i32 3}
!82 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @csi2_dphy_wait_stopstate._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @csi2_dphy_wait_stopstate._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 265, i32 3}
!87 = !{ptr @csi2_dphy_wait_stopstate._entry.41, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @csi2_dphy_wait_stopstate._entry_ptr.43, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 278, i32 3}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @csi2_dphy_wait_clock_lane._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @csi2_dphy_wait_clock_lane._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @csi2_pad_ops, !95, !"csi2_pad_ops", i1 false, i1 false}
!95 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 596, i32 41}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!98 = !{ptr @csi2_internal_ops, !99, !"csi2_internal_ops", i1 false, i1 false}
!99 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 607, i32 46}
!100 = !{ptr @csi2_entity_ops, !101, !"csi2_entity_ops", i1 false, i1 false}
!101 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 586, i32 45}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 483, i32 2}
!104 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @csi2_link_setup.__UNIQUE_ID_ddebug317, !103, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 670, i32 2}
!108 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @csi2_async_register.__UNIQUE_ID_ddebug319, !107, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 671, i32 2}
!112 = !{ptr @csi2_async_register.__UNIQUE_ID_ddebug320, !111, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!113 = !{ptr @csi2_notify_ops, !114, !"csi2_notify_ops", i1 false, i1 false}
!114 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 643, i32 52}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 622, i32 3}
!117 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @csi2_notify_bound._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @csi2_notify_bound._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 629, i32 2}
!122 = !{ptr @csi2_notify_bound.__UNIQUE_ID_ddebug318, !121, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!123 = !{ptr @csi2_dt_ids, !124, !"csi2_dt_ids", i1 false, i1 false}
!124 = !{!"../drivers/staging/media/imx/imx6-mipi-csi2.c", i32 803, i32 34}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i64 2148740555, i64 2148740560, i64 2148740573, i64 2148740617, i64 2148740651, i64 2148740672}
!135 = !{i8 0, i8 2}
!136 = !{!"auto-init"}
!137 = !{i64 2156984478}
!138 = !{i64 4248268}
!139 = !{i64 1163443, i64 1163470}
!140 = !{i64 1164138, i64 1164165, i64 1164198, i64 1164219, i64 1164246, i64 1164272}
!141 = !{i64 2156956335}
!142 = !{i64 2156956804}
!143 = !{i64 2156957201}
!144 = !{i64 2156957704}
!145 = !{i64 2156958294}
!146 = !{i64 2156958802}
!147 = !{i64 2156959205}
!148 = !{i64 2156959726}
!149 = !{i64 2156960195}
!150 = !{i64 2156955814}
!151 = !{i64 2156953823}
!152 = !{i64 2156954220}
!153 = !{i64 4248686}
!154 = !{i64 2156975816}
!155 = !{i64 2156976306}
!156 = !{i64 2156955014}
!157 = !{i64 2156955411}
!158 = !{i64 2156981837}
!159 = !{i64 2156982327}
!160 = !{!"branch_weights", i32 2000, i32 1}
