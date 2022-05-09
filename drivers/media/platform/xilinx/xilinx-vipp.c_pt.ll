; ModuleID = '/llk/IR_all_yes/drivers/media/platform/xilinx/xilinx-vipp.c_pt.bc'
source_filename = "../drivers/media/platform/xilinx/xilinx-vipp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.xvip_composite_device = type { %struct.v4l2_device, %struct.media_device, ptr, %struct.v4l2_async_notifier, %struct.list_head, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.v4l2_fwnode_link = type { ptr, i32, i32, ptr, i32, i32 }
%struct.xvip_graph_entity = type { %struct.v4l2_async_subdev, ptr, ptr }
%struct.v4l2_async_subdev = type { i32, %union.anon.99, %struct.list_head, %struct.list_head }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, i16 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.xvip_dma = type { %struct.list_head, %struct.video_device, %struct.media_pad, ptr, %struct.xvip_pipeline, i32, %struct.mutex, %struct.v4l2_pix_format, ptr, %struct.vb2_queue, i32, %struct.list_head, %struct.spinlock, ptr, i32, %struct.dma_interleaved_template, [1 x %struct.data_chunk] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.xvip_pipeline = type { %struct.media_pipeline, %struct.mutex, i32, i32, i32, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }

@__initcall__kmod_xilinx_video__311_644_xvip_composite_driver_init6 = internal global ptr @xvip_composite_driver_init, section ".initcall6.init", align 4
@xvip_composite_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xvip_composite_probe, ptr @xvip_composite_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xvip_composite_of_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xvip_composite_driver_exit = internal global ptr @xvip_composite_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author312 = internal constant [73 x i8] c"xilinx_video.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description313 = internal constant [58 x i8] c"xilinx_video.description=Xilinx Video IP Composite Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [61 x i8] c"xilinx_video.file=drivers/media/platform/xilinx/xilinx-video\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [28 x i8] c"xilinx_video.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xilinx-video\00", [19 x i8] zeroinitializer }, align 32
@xvip_composite_of_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xvip_composite_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 610, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"device registered\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xvip_composite_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/platform/xilinx/xilinx-vipp.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xvip_composite_probe._entry_ptr = internal global ptr @xvip_composite_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Xilinx Video Composite Device\00", [34 x i8] zeroinitializer }, align 32
@xvip_composite_v4l2_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 575, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"V4L2 device registration failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xvip_composite_v4l2_init\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@xvip_composite_v4l2_init._entry_ptr = internal global ptr @xvip_composite_v4l2_init._entry, section ".printk_index", align 4
@xvip_graph_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 514, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DMA initialization failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xvip_graph_init\00", [16 x i8] zeroinitializer }, align 32
@xvip_graph_init._entry_ptr = internal global ptr @xvip_graph_init._entry, section ".printk_index", align 4
@xvip_graph_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 521, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"graph parsing failed\0A\00", [42 x i8] zeroinitializer }, align 32
@xvip_graph_init._entry_ptr.14 = internal global ptr @xvip_graph_init._entry.12, section ".printk_index", align 4
@xvip_graph_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.3, i32 526, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no subdev found in graph\0A\00", [38 x i8] zeroinitializer }, align 32
@xvip_graph_init._entry_ptr.17 = internal global ptr @xvip_graph_init._entry.15, section ".printk_index", align 4
@xvip_graph_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @xvip_graph_notify_bound, ptr @xvip_graph_notify_complete, ptr null }, [20 x i8] zeroinitializer }, align 32
@xvip_graph_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.3, i32 536, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"notifier registration failed\0A\00", [34 x i8] zeroinitializer }, align 32
@xvip_graph_init._entry_ptr.20 = internal global ptr @xvip_graph_init._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@xvip_graph_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 478, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ports node not present\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xvip_graph_dma_init\00", [44 x i8] zeroinitializer }, align 32
@xvip_graph_dma_init._entry_ptr = internal global ptr @xvip_graph_dma_init._entry, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"direction\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@xvip_graph_dma_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 458, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%pOF initialization failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xvip_graph_dma_init_one\00", [40 x i8] zeroinitializer }, align 32
@xvip_graph_dma_init_one._entry_ptr = internal global ptr @xvip_graph_dma_init_one._entry, section ".printk_index", align 4
@xvip_graph_parse_one.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xilinx_video\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xvip_graph_parse_one\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"parsing node %p\0A\00", [47 x i8] zeroinitializer }, align 32
@xvip_graph_parse_one.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.3, ptr @.str.33, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"handling endpoint %p\0A\00", [42 x i8] zeroinitializer }, align 32
@xvip_graph_notify_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 333, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"duplicate subdev for node %p\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xvip_graph_notify_bound\00", [40 x i8] zeroinitializer }, align 32
@xvip_graph_notify_bound._entry_ptr = internal global ptr @xvip_graph_notify_bound._entry, section ".printk_index", align 4
@xvip_graph_notify_bound.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"subdev %s bound\0A\00", [47 x i8] zeroinitializer }, align 32
@xvip_graph_notify_bound._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.3, i32 343, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no entity for subdev %s\0A\00", [39 x i8] zeroinitializer }, align 32
@xvip_graph_notify_bound._entry_ptr.39 = internal global ptr @xvip_graph_notify_bound._entry.37, section ".printk_index", align 4
@xvip_graph_notify_complete.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xvip_graph_notify_complete\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"notify complete, all subdevs registered\0A\00", [55 x i8] zeroinitializer }, align 32
@xvip_graph_notify_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 308, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register subdev nodes\0A\00", [63 x i8] zeroinitializer }, align 32
@xvip_graph_notify_complete._entry_ptr = internal global ptr @xvip_graph_notify_complete._entry, section ".printk_index", align 4
@xvip_graph_build_one.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xvip_graph_build_one\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"creating links for entity %s\0A\00", [34 x i8] zeroinitializer }, align 32
@xvip_graph_build_one.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.43, ptr @.str.3, ptr @.str.45, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"processing endpoint %p\0A\00", [40 x i8] zeroinitializer }, align 32
@xvip_graph_build_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.3, i32 95, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to parse link for %p\0A\00", [35 x i8] zeroinitializer }, align 32
@xvip_graph_build_one._entry_ptr = internal global ptr @xvip_graph_build_one._entry, section ".printk_index", align 4
@xvip_graph_build_one._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.3, i32 104, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid port number %u for %p\0A\00", [33 x i8] zeroinitializer }, align 32
@xvip_graph_build_one._entry_ptr.49 = internal global ptr @xvip_graph_build_one._entry.47, section ".printk_index", align 4
@xvip_graph_build_one.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.43, ptr @.str.3, ptr @.str.50, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"skipping sink port %p:%u\0A\00", [38 x i8] zeroinitializer }, align 32
@xvip_graph_build_one.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.43, ptr @.str.3, ptr @.str.51, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"skipping DMA port %p:%u\0A\00", [39 x i8] zeroinitializer }, align 32
@xvip_graph_build_one._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.43, ptr @.str.3, i32 131, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no entity found for %p\0A\00", [40 x i8] zeroinitializer }, align 32
@xvip_graph_build_one._entry_ptr.54 = internal global ptr @xvip_graph_build_one._entry.52, section ".printk_index", align 4
@xvip_graph_build_one._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.43, ptr @.str.3, i32 141, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid port number %u on %p\0A\00", [34 x i8] zeroinitializer }, align 32
@xvip_graph_build_one._entry_ptr.57 = internal global ptr @xvip_graph_build_one._entry.55, section ".printk_index", align 4
@xvip_graph_build_one.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.43, ptr @.str.3, ptr @.str.58, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"creating %s:%u -> %s:%u link\0A\00", [34 x i8] zeroinitializer }, align 32
@xvip_graph_build_one._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.43, ptr @.str.3, i32 163, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to create %s:%u -> %s:%u link\0A\00", [58 x i8] zeroinitializer }, align 32
@xvip_graph_build_one._entry_ptr.61 = internal global ptr @xvip_graph_build_one._entry.59, section ".printk_index", align 4
@xvip_graph_build_dma.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xvip_graph_build_dma\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"creating links for DMA engines\0A\00", [32 x i8] zeroinitializer }, align 32
@xvip_graph_build_dma.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.62, ptr @.str.3, ptr @.str.64, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"processing endpoint %pOF\0A\00", [38 x i8] zeroinitializer }, align 32
@xvip_graph_build_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.62, ptr @.str.3, i32 212, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to parse link for %pOF\0A\00", [33 x i8] zeroinitializer }, align 32
@xvip_graph_build_dma._entry_ptr = internal global ptr @xvip_graph_build_dma._entry, section ".printk_index", align 4
@xvip_graph_build_dma._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.3, i32 220, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no DMA engine found for port %u\0A\00", [63 x i8] zeroinitializer }, align 32
@xvip_graph_build_dma._entry_ptr.68 = internal global ptr @xvip_graph_build_dma._entry.66, section ".printk_index", align 4
@xvip_graph_build_dma.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.62, ptr @.str.3, ptr @.str.69, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"creating link for DMA engine %s\0A\00", [63 x i8] zeroinitializer }, align 32
@xvip_graph_build_dma._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.62, ptr @.str.3, i32 233, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no entity found for %pOF\0A\00", [38 x i8] zeroinitializer }, align 32
@xvip_graph_build_dma._entry_ptr.72 = internal global ptr @xvip_graph_build_dma._entry.70, section ".printk_index", align 4
@xvip_graph_build_dma._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.62, ptr @.str.3, i32 242, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid port number %u on %pOF\0A\00", [32 x i8] zeroinitializer }, align 32
@xvip_graph_build_dma._entry_ptr.75 = internal global ptr @xvip_graph_build_dma._entry.73, section ".printk_index", align 4
@xvip_graph_build_dma.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.62, ptr @.str.3, ptr @.str.58, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xvip_graph_build_dma._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.62, ptr @.str.3, i32 274, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@xvip_graph_build_dma._entry_ptr.77 = internal global ptr @xvip_graph_build_dma._entry.76, section ".printk_index", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"xvip_composite_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 635, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 637, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"xvip_composite_of_id_table\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 629, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 610, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 565, i32 33 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 574, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 514, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 521, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 526, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [22 x i8] c"xvip_graph_notify_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 347, i32 52 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 536, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 476, i32 51 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 478, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 439, i32 38 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 443, i32 24 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 445, i32 29 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 450, i32 29 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 458, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 359, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 368, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 332, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 337, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 343, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 291, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 308, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 81, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 90, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 94, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 103, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 113, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 121, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 130, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 140, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 152, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 160, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 199, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 207, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 211, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 219, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 226, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 232, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 240, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.310 = private constant [47 x i8] c"../drivers/media/platform/xilinx/xilinx-vipp.c\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 271, i32 4 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__exitcall_xvip_composite_driver_exit, ptr @__initcall__kmod_xilinx_video__311_644_xvip_composite_driver_init6, ptr @xvip_composite_driver_exit, ptr @xvip_composite_probe._entry, ptr @xvip_composite_probe._entry_ptr, ptr @xvip_composite_v4l2_init._entry, ptr @xvip_composite_v4l2_init._entry_ptr, ptr @xvip_graph_build_dma._entry, ptr @xvip_graph_build_dma._entry.66, ptr @xvip_graph_build_dma._entry.70, ptr @xvip_graph_build_dma._entry.73, ptr @xvip_graph_build_dma._entry.76, ptr @xvip_graph_build_dma._entry_ptr, ptr @xvip_graph_build_dma._entry_ptr.68, ptr @xvip_graph_build_dma._entry_ptr.72, ptr @xvip_graph_build_dma._entry_ptr.75, ptr @xvip_graph_build_dma._entry_ptr.77, ptr @xvip_graph_build_one._entry, ptr @xvip_graph_build_one._entry.47, ptr @xvip_graph_build_one._entry.52, ptr @xvip_graph_build_one._entry.55, ptr @xvip_graph_build_one._entry.59, ptr @xvip_graph_build_one._entry_ptr, ptr @xvip_graph_build_one._entry_ptr.49, ptr @xvip_graph_build_one._entry_ptr.54, ptr @xvip_graph_build_one._entry_ptr.57, ptr @xvip_graph_build_one._entry_ptr.61, ptr @xvip_graph_dma_init._entry, ptr @xvip_graph_dma_init._entry_ptr, ptr @xvip_graph_dma_init_one._entry, ptr @xvip_graph_dma_init_one._entry_ptr, ptr @xvip_graph_init._entry, ptr @xvip_graph_init._entry.12, ptr @xvip_graph_init._entry.15, ptr @xvip_graph_init._entry.18, ptr @xvip_graph_init._entry_ptr, ptr @xvip_graph_init._entry_ptr.14, ptr @xvip_graph_init._entry_ptr.17, ptr @xvip_graph_init._entry_ptr.20, ptr @xvip_graph_notify_bound._entry, ptr @xvip_graph_notify_bound._entry.37, ptr @xvip_graph_notify_bound._entry_ptr, ptr @xvip_graph_notify_bound._entry_ptr.39, ptr @xvip_graph_notify_complete._entry, ptr @xvip_graph_notify_complete._entry_ptr, ptr @xvip_composite_driver, ptr @.str, ptr @xvip_composite_of_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @xvip_graph_notify_ops, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.74], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_composite_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_composite_of_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_composite_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_composite_v4l2_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_dma_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_notify_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_notify_bound._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_notify_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_build_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_build_one._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_build_one._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_build_one._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_build_one._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_build_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_build_dma._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_build_dma._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_build_dma._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_graph_build_dma._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xvip_composite_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xvip_composite_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xvip_composite_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @xvip_composite_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xvip_composite_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %direction.i.i.i = alloca ptr, align 4
  %index.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 800, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.xvip_composite_device, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 8
  %dmas = getelementptr inbounds %struct.xvip_composite_device, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %dmas to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %dmas, ptr %dmas, align 4
  %prev.i = getelementptr inbounds %struct.xvip_composite_device, ptr %call.i, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dmas, ptr %prev.i, align 4
  %notifier = getelementptr inbounds %struct.xvip_composite_device, ptr %call.i, i32 0, i32 3
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #6
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 8
  %media_dev.i = getelementptr inbounds %struct.xvip_composite_device, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %media_dev.i, align 8
  %model.i = getelementptr inbounds %struct.xvip_composite_device, ptr %call.i, i32 0, i32 1, i32 2
  %call.i25 = tail call i32 @strscpy(ptr noundef %model.i, ptr noundef nonnull @.str.6, i32 noundef 32) #6
  %hw_revision.i = getelementptr inbounds %struct.xvip_composite_device, ptr %call.i, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %hw_revision.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %hw_revision.i, align 8
  tail call void @media_device_init(ptr noundef %media_dev.i) #6
  %mdev.i = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %mdev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %media_dev.i, ptr %mdev.i, align 4
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 8
  %call8.i = tail call i32 @v4l2_device_register(ptr noundef %9, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 8
  br i1 %cmp.i, label %xvip_composite_v4l2_init.exit.thread, label %if.end5

xvip_composite_v4l2_init.exit.thread:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef %call8.i) #9
  tail call void @media_device_cleanup(ptr noundef %media_dev.i) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i = tail call ptr @of_get_child_by_name(ptr noundef %13, ptr noundef nonnull @.str.21) #6
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.22) #9
  br label %if.then27.i

if.end.i.i:                                       ; preds = %if.end5
  %call2.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call.i.i, ptr noundef null) #6
  %cmp3.not25.i.i = icmp eq ptr %call2.i.i, null
  br i1 %cmp3.not25.i.i, label %if.end.i.i.if.end.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %v4l2_caps.i.i.i = getelementptr inbounds %struct.xvip_composite_device, ptr %call.i, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %port.026.i.i = phi ptr [ %call2.i.i, %for.body.lr.ph.i.i ], [ %call8.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %direction.i.i.i) #6
  %16 = ptrtoint ptr %direction.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %direction.i.i.i, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i.i.i) #6
  %17 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %index.i.i.i, align 4, !annotation !175
  %call.i.i.i = call i32 @of_property_read_string(ptr noundef nonnull %port.026.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull %direction.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %for.body.i.i.if.then6.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.if.then6.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %18 = ptrtoint ptr %direction.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %direction.i.i.i, align 4
  %call1.i.i.i = call i32 @strcmp(ptr noundef %19, ptr noundef nonnull dereferenceable(6) @.str.25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp2.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %cmp2.i.i.i, label %if.end.i.i.i.if.end9.i.i.i_crit_edge, label %if.else.i.i.i

if.end.i.i.i.if.end9.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %call4.i.i.i = call i32 @strcmp(ptr noundef %19, ptr noundef nonnull dereferenceable(7) @.str.26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp5.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %cmp5.i.i.i, label %if.else.i.i.i.if.end9.i.i.i_crit_edge, label %if.else.i.i.i.if.then6.i.i_crit_edge

if.else.i.i.i.if.then6.i.i_crit_edge:             ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i.i

if.else.i.i.i.if.end9.i.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i.i

if.end9.i.i.i:                                    ; preds = %if.else.i.i.i.if.end9.i.i.i_crit_edge, %if.end.i.i.i.if.end9.i.i.i_crit_edge
  %type.0.i.i.i = phi i32 [ 1, %if.end.i.i.i.if.end9.i.i.i_crit_edge ], [ 2, %if.else.i.i.i.if.end9.i.i.i_crit_edge ]
  %call.i.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %port.026.i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull %index.i.i.i, i32 noundef 1, i32 noundef 0) #6
  %20 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2, align 8
  %call.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef 2416, i32 noundef 3520) #6
  %cmp12.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %cmp12.i.i.i, label %if.end9.i.i.i.if.then6.i.i_crit_edge, label %if.end14.i.i.i

if.end9.i.i.i.if.then6.i.i_crit_edge:             ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i.i

if.end14.i.i.i:                                   ; preds = %if.end9.i.i.i
  %22 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i.i.i, align 4
  %call15.i.i.i = call i32 @xvip_dma_init(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i.i.i.i, i32 noundef %type.0.i.i.i, i32 noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %cmp16.i.i.i = icmp slt i32 %call15.i.i.i, 0
  br i1 %cmp16.i.i.i, label %do.end.i.i.i, label %if.end19.i.i.i

do.end.i.i.i:                                     ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.28, ptr noundef nonnull %port.026.i.i) #9
  br label %if.then6.i.i

if.end19.i.i.i:                                   ; preds = %if.end14.i.i.i
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i37.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i.i, ptr noundef %27, ptr noundef %dmas) #6
  br i1 %call.i.i37.i.i.i, label %if.end.i.i.i.i.i, label %if.end19.i.i.i.for.inc.i.i_crit_edge

if.end19.i.i.i.for.inc.i.i_crit_edge:             ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i.i.i, ptr %prev.i, align 4
  %29 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dmas, ptr %call.i.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call.i.i.i.i, ptr %27, align 4
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %do.end.i.i.i, %if.end9.i.i.i.if.then6.i.i_crit_edge, %if.else.i.i.i.if.then6.i.i_crit_edge, %for.body.i.i.if.then6.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call15.i.i.i, %do.end.i.i.i ], [ %call.i.i.i, %for.body.i.i.if.then6.i.i_crit_edge ], [ -22, %if.else.i.i.i.if.then6.i.i_crit_edge ], [ -12, %if.end9.i.i.i.if.then6.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %direction.i.i.i) #6
  call void @of_node_put(ptr noundef nonnull %port.026.i.i) #6
  br label %if.then27.i

for.inc.i.i:                                      ; preds = %if.end.i.i.i.i.i, %if.end19.i.i.i.for.inc.i.i_crit_edge
  %cond.i.i.i = select i1 %cmp2.i.i.i, i32 1, i32 2
  %32 = ptrtoint ptr %v4l2_caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %v4l2_caps.i.i.i, align 4
  %or.i.i.i = or i32 %33, %cond.i.i.i
  store i32 %or.i.i.i, ptr %v4l2_caps.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %direction.i.i.i) #6
  %call8.i.i = call ptr @of_get_next_child(ptr noundef nonnull %call.i.i, ptr noundef nonnull %port.026.i.i) #6
  %cmp3.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %cmp3.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %34 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev2, align 8
  %of_node.i44.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %of_node.i44.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node.i44.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %37, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call.i45.i = call fastcc i32 @xvip_graph_parse_one(ptr noundef nonnull %call.i, ptr noundef %spec.select.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i)
  %cmp.i46.i = icmp slt i32 %call.i45.i, 0
  br i1 %cmp.i46.i, label %if.end.i.if.end8.i_crit_edge, label %if.end.i47.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end.i47.i:                                     ; preds = %if.end.i
  %asd_list.i.i = getelementptr inbounds %struct.xvip_composite_device, ptr %call.i, i32 0, i32 3, i32 4
  %38 = ptrtoint ptr %asd_list.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn31.i.i = load ptr, ptr %asd_list.i.i, align 4
  %cmp5.not32.i.i = icmp eq ptr %.pn31.i.i, %asd_list.i.i
  br i1 %cmp5.not32.i.i, label %if.end.i47.i.if.end8.i_crit_edge, label %if.end.i47.i.for.body.i49.i_crit_edge

if.end.i47.i.for.body.i49.i_crit_edge:            ; preds = %if.end.i47.i
  br label %for.body.i49.i

if.end.i47.i.if.end8.i_crit_edge:                 ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

for.cond.i.i:                                     ; preds = %for.body.i49.i
  %39 = ptrtoint ptr %.pn33.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i.i = load ptr, ptr %.pn33.i.i, align 4
  %cmp5.not.i.i = icmp eq ptr %.pn.i.i, %asd_list.i.i
  br i1 %cmp5.not.i.i, label %for.cond.i.i.if.end8.i_crit_edge, label %for.cond.i.i.for.body.i49.i_crit_edge

for.cond.i.i.for.body.i49.i_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i49.i

for.cond.i.i.if.end8.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

for.body.i49.i:                                   ; preds = %for.cond.i.i.for.body.i49.i_crit_edge, %if.end.i47.i.for.body.i49.i_crit_edge
  %.pn33.i.i = phi ptr [ %.pn.i.i, %for.cond.i.i.for.body.i49.i_crit_edge ], [ %.pn31.i.i, %if.end.i47.i.for.body.i49.i_crit_edge ]
  %match.i.i = getelementptr i8, ptr %.pn33.i.i, i32 -16
  %40 = ptrtoint ptr %match.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %match.i.i, align 4
  %call8.i48.i = call fastcc i32 @xvip_graph_parse_one(ptr noundef nonnull %call.i, ptr noundef %41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i48.i)
  %cmp9.i.i = icmp slt i32 %call8.i48.i, 0
  br i1 %cmp9.i.i, label %do.end6.i, label %for.cond.i.i

do.end6.i:                                        ; preds = %for.body.i49.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #6
  br label %if.then27.i

if.end8.i:                                        ; preds = %for.cond.i.i.if.end8.i_crit_edge, %if.end.i47.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %asd_list.i = getelementptr inbounds %struct.xvip_composite_device, ptr %call.i, i32 0, i32 3, i32 4
  %42 = ptrtoint ptr %asd_list.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %asd_list.i, align 4
  %cmp.i51.not.i = icmp eq ptr %43, %asd_list.i
  br i1 %cmp.i51.not.i, label %if.end8.i.if.then27.i_crit_edge, label %if.end15.i

if.end8.i.if.then27.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.i

if.end15.i:                                       ; preds = %if.end8.i
  %44 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @xvip_graph_notify_ops, ptr %notifier, align 4
  %call18.i = call i32 @v4l2_async_nf_register(ptr noundef nonnull %call.i, ptr noundef %notifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end15.i.if.then27.i_crit_edge, label %if.end15.i.if.end9_crit_edge

if.end15.i.if.end9_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end15.i.if.then27.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.i

if.then27.i:                                      ; preds = %if.end15.i.if.then27.i_crit_edge, %if.end8.i.if.then27.i_crit_edge, %do.end6.i, %if.then6.i.i, %do.end.i.i
  %.str.10.sink.i = phi ptr [ @.str.13, %do.end6.i ], [ @.str.10, %do.end.i.i ], [ @.str.10, %if.then6.i.i ], [ @.str.16, %if.end8.i.if.then27.i_crit_edge ], [ @.str.19, %if.end15.i.if.then27.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ %call8.i48.i, %do.end6.i ], [ -22, %do.end.i.i ], [ %retval.0.i.ph.i.i, %if.then6.i.i ], [ -2, %if.end8.i.if.then27.i_crit_edge ], [ %call18.i, %if.end15.i.if.then27.i_crit_edge ]
  %45 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull %.str.10.sink.i) #9
  call void @v4l2_async_nf_unregister(ptr noundef %notifier) #6
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #6
  %47 = ptrtoint ptr %dmas to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dmas, align 4
  %cmp.not21.i.i = icmp eq ptr %48, %dmas
  br i1 %cmp.not21.i.i, label %if.then27.i.error_crit_edge, label %if.then27.i.for.body.i54.i_crit_edge

if.then27.i.for.body.i54.i_crit_edge:             ; preds = %if.then27.i
  br label %for.body.i54.i

if.then27.i.error_crit_edge:                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.body.i54.i:                                   ; preds = %list_del.exit.i.i.for.body.i54.i_crit_edge, %if.then27.i.for.body.i54.i_crit_edge
  %dma.022.i.i = phi ptr [ %dmap.0.i.i, %list_del.exit.i.i.for.body.i54.i_crit_edge ], [ %48, %if.then27.i.for.body.i54.i_crit_edge ]
  %49 = ptrtoint ptr %dma.022.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %dmap.0.i.i = load ptr, ptr %dma.022.i.i, align 8
  call void @xvip_dma_cleanup(ptr noundef %dma.022.i.i) #6
  %call.i.i.i53.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %dma.022.i.i) #6
  br i1 %call.i.i.i53.i, label %if.end.i.i.i.i, label %for.body.i54.i.list_del.exit.i.i_crit_edge

for.body.i54.i.list_del.exit.i.i_crit_edge:       ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i55.i = getelementptr inbounds %struct.list_head, ptr %dma.022.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i55.i, align 4
  %52 = ptrtoint ptr %dma.022.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dma.022.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i54.i.list_del.exit.i.i_crit_edge
  %56 = ptrtoint ptr %dma.022.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 256 to ptr), ptr %dma.022.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dma.022.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %dmap.0.i.i, %dmas
  br i1 %cmp.not.i.i, label %xvip_graph_init.exit, label %list_del.exit.i.i.for.body.i54.i_crit_edge

list_del.exit.i.i.for.body.i54.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i54.i

xvip_graph_init.exit:                             ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.ph.i)
  %cmp7 = icmp slt i32 %ret.0.ph.i, 0
  br i1 %cmp7, label %xvip_graph_init.exit.error_crit_edge, label %xvip_graph_init.exit.if.end9_crit_edge

xvip_graph_init.exit.if.end9_crit_edge:           ; preds = %xvip_graph_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

xvip_graph_init.exit.error_crit_edge:             ; preds = %xvip_graph_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end9:                                          ; preds = %xvip_graph_init.exit.if.end9_crit_edge, %if.end15.i.if.end9_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %59 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.1) #9
  br label %cleanup

error:                                            ; preds = %xvip_graph_init.exit.error_crit_edge, %if.then27.i.error_crit_edge
  call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #6
  call void @media_device_unregister(ptr noundef %media_dev.i) #6
  call void @media_device_cleanup(ptr noundef %media_dev.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end9, %xvip_composite_v4l2_init.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.ph.i, %error ], [ 0, %if.end9 ], [ -12, %entry.cleanup_crit_edge ], [ %call8.i, %xvip_composite_v4l2_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xvip_composite_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %notifier.i = getelementptr inbounds %struct.xvip_composite_device, ptr %1, i32 0, i32 3
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier.i) #6
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i) #6
  %dmas.i = getelementptr inbounds %struct.xvip_composite_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dmas.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmas.i, align 4
  %cmp.not21.i = icmp eq ptr %3, %dmas.i
  br i1 %cmp.not21.i, label %entry.xvip_graph_cleanup.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.xvip_graph_cleanup.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %xvip_graph_cleanup.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %dma.022.i = phi ptr [ %dmap.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %dma.022.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %dmap.0.i = load ptr, ptr %dma.022.i, align 8
  tail call void @xvip_dma_cleanup(ptr noundef %dma.022.i) #6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dma.022.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dma.022.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %dma.022.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma.022.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %dma.022.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %dma.022.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dma.022.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %dmap.0.i, %dmas.i
  br i1 %cmp.not.i, label %list_del.exit.i.xvip_graph_cleanup.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

list_del.exit.i.xvip_graph_cleanup.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xvip_graph_cleanup.exit

xvip_graph_cleanup.exit:                          ; preds = %list_del.exit.i.xvip_graph_cleanup.exit_crit_edge, %entry.xvip_graph_cleanup.exit_crit_edge
  tail call void @v4l2_device_unregister(ptr noundef %1) #6
  %media_dev.i = getelementptr inbounds %struct.xvip_composite_device, ptr %1, i32 0, i32 1
  tail call void @media_device_unregister(ptr noundef %media_dev.i) #6
  tail call void @media_device_cleanup(ptr noundef %media_dev.i) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xvip_dma_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xvip_graph_parse_one(ptr noundef %xdev, ptr noundef %fwnode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xvip_graph_parse_one.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xvip_graph_parse_one, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.xvip_composite_device, ptr %xdev, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xvip_graph_parse_one.__UNIQUE_ID_ddebug309, ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef %fwnode) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call381 = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %fwnode, ptr noundef null) #6
  %cmp82 = icmp eq ptr %call381, null
  br i1 %cmp82, label %do.end.cleanup42_crit_edge, label %do.body6.lr.ph

do.end.cleanup42_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup42

do.body6.lr.ph:                                   ; preds = %do.end
  %dev19 = getelementptr inbounds %struct.xvip_composite_device, ptr %xdev, i32 0, i32 2
  %asd_list.i = getelementptr inbounds %struct.xvip_composite_device, ptr %xdev, i32 0, i32 3, i32 4
  %notifier = getelementptr inbounds %struct.xvip_composite_device, ptr %xdev, i32 0, i32 3
  br label %do.body6

do.body6:                                         ; preds = %cleanup.do.body6_crit_edge, %do.body6.lr.ph
  %call383 = phi ptr [ %call381, %do.body6.lr.ph ], [ %call3, %cleanup.do.body6_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xvip_graph_parse_one.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xvip_graph_parse_one, %if.then18)) #6
          to label %do.end22 [label %if.then18], !srcloc !176

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev19, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xvip_graph_parse_one.__UNIQUE_ID_ddebug310, ptr noundef %3, ptr noundef nonnull @.str.33, ptr noundef nonnull %call383) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body6
  %call23 = tail call ptr @fwnode_graph_get_remote_port_parent(ptr noundef nonnull %call383) #6
  %cmp24 = icmp eq ptr %call23, null
  br i1 %cmp24, label %do.end22.err_notifier_cleanup_crit_edge, label %if.end26

do.end22.err_notifier_cleanup_crit_edge:          ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_notifier_cleanup

if.end26:                                         ; preds = %do.end22
  tail call void @fwnode_handle_put(ptr noundef nonnull %call383) #6
  %4 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev19, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool29.not = icmp eq ptr %7, null
  %fwnode30 = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 3
  %spec.select = select i1 %tobool29.not, ptr null, ptr %fwnode30
  %cmp31 = icmp eq ptr %call23, %spec.select
  br i1 %cmp31, label %if.end26.if.then34_crit_edge, label %if.end26.for.cond.i_crit_edge

if.end26.for.cond.i_crit_edge:                    ; preds = %if.end26
  br label %for.cond.i

if.end26.if.then34_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end26.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %asd_list.i, %if.end26.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %asd_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end35_crit_edge, label %for.body.i

for.cond.i.if.end35_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

for.body.i:                                       ; preds = %for.cond.i
  %match.i = getelementptr i8, ptr %.pn.i, i32 -16
  %9 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %match.i, align 4
  %cmp5.i = icmp eq ptr %10, %call23
  br i1 %cmp5.i, label %xvip_graph_find_entity.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

xvip_graph_find_entity.exit:                      ; preds = %for.body.i
  %asd.0.le.i = getelementptr i8, ptr %.pn.i, i32 -20
  %tobool33.not = icmp eq ptr %asd.0.le.i, null
  br i1 %tobool33.not, label %xvip_graph_find_entity.exit.if.end35_crit_edge, label %xvip_graph_find_entity.exit.if.then34_crit_edge

xvip_graph_find_entity.exit.if.then34_crit_edge:  ; preds = %xvip_graph_find_entity.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

xvip_graph_find_entity.exit.if.end35_crit_edge:   ; preds = %xvip_graph_find_entity.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then34:                                        ; preds = %xvip_graph_find_entity.exit.if.then34_crit_edge, %if.end26.if.then34_crit_edge
  tail call void @fwnode_handle_put(ptr noundef nonnull %call23) #6
  br label %cleanup

if.end35:                                         ; preds = %xvip_graph_find_entity.exit.if.end35_crit_edge, %for.cond.i.if.end35_crit_edge
  %call36 = tail call ptr @__v4l2_async_nf_add_fwnode(ptr noundef %notifier, ptr noundef nonnull %call23, i32 noundef 36) #6
  tail call void @fwnode_handle_put(ptr noundef nonnull %call23) #6
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then38, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call36 to i32
  br label %err_notifier_cleanup

cleanup:                                          ; preds = %if.end35.cleanup_crit_edge, %if.then34
  %call3 = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %fwnode, ptr noundef %call383) #6
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %cleanup.cleanup42_crit_edge, label %cleanup.do.body6_crit_edge

cleanup.do.body6_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

cleanup.cleanup42_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup42

err_notifier_cleanup:                             ; preds = %if.then38, %do.end22.err_notifier_cleanup_crit_edge
  %ret.1.ph = phi i32 [ %11, %if.then38 ], [ -22, %do.end22.err_notifier_cleanup_crit_edge ]
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #6
  tail call void @fwnode_handle_put(ptr noundef nonnull %call383) #6
  br label %cleanup42

cleanup42:                                        ; preds = %err_notifier_cleanup, %cleanup.cleanup42_crit_edge, %do.end.cleanup42_crit_edge
  %retval.0 = phi i32 [ %ret.1.ph, %err_notifier_cleanup ], [ 0, %do.end.cleanup42_crit_edge ], [ 0, %cleanup.cleanup42_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xvip_graph_notify_bound(ptr noundef readonly %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asd_list = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 4
  %fwnode = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 15
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %asd_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %asd_list
  br i1 %cmp.not, label %do.end37, label %for.body

for.body:                                         ; preds = %for.cond
  %match = getelementptr i8, ptr %.pn, i32 -16
  %1 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %match, align 4
  %3 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fwnode, align 4
  %cmp9.not = icmp eq ptr %2, %4
  br i1 %cmp9.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.end:                                           ; preds = %for.body
  %subdev10 = getelementptr i8, ptr %.pn, i32 12
  %5 = ptrtoint ptr %subdev10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subdev10, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.body15, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %notifier, i32 -4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.34, ptr noundef %2) #9
  br label %cleanup

do.body15:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xvip_graph_notify_bound.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xvip_graph_notify_bound, %if.then22)) #6
          to label %do.end26 [label %if.then22], !srcloc !176

if.then22:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %dev23 = getelementptr i8, ptr %notifier, i32 -4
  %9 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev23, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xvip_graph_notify_bound.__UNIQUE_ID_ddebug308, ptr noundef %10, ptr noundef nonnull @.str.36, ptr noundef %name) #6
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body15
  %entity28 = getelementptr i8, ptr %.pn, i32 8
  %11 = ptrtoint ptr %entity28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %subdev, ptr %entity28, align 4
  %12 = ptrtoint ptr %subdev10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %subdev, ptr %subdev10, align 4
  br label %cleanup

do.end37:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %dev38 = getelementptr i8, ptr %notifier, i32 -4
  %13 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev38, align 8
  %name39 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.38, ptr noundef %name39) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.end26, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end26 ], [ -22, %do.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xvip_graph_notify_complete(ptr noundef %notifier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notifier, i32 -740
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xvip_graph_notify_complete.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xvip_graph_notify_complete, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %notifier, i32 -4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xvip_graph_notify_complete.__UNIQUE_ID_ddebug307, ptr noundef %1, ptr noundef nonnull @.str.41) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %asd_list = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %asd_list, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %asd_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %asd.0 = getelementptr i8, ptr %.pn, i32 -20
  %call14 = tail call fastcc i32 @xvip_graph_build_one(ptr noundef %add.ptr, ptr noundef %asd.0)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call23 = tail call fastcc i32 @xvip_graph_build_dma(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %for.end.cleanup_crit_edge, label %if.end26

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %for.end
  %call.i = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %add.ptr, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp28 = icmp slt i32 %call.i, 0
  br i1 %cmp28, label %do.end32, label %if.end26.if.end34_crit_edge

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %dev33 = getelementptr i8, ptr %notifier, i32 -4
  %3 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.42) #9
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %if.end26.if.end34_crit_edge
  %media_dev = getelementptr i8, ptr %notifier, i32 -612
  %call35 = tail call i32 @__media_device_register(ptr noundef %media_dev, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end34 ], [ %call23, %for.end.cleanup_crit_edge ], [ %call14, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xvip_graph_build_one(ptr noundef readonly %xdev, ptr nocapture noundef readonly %entity) unnamed_addr #2 align 64 {
entry:
  %link = alloca %struct.v4l2_fwnode_link, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %entity1 = getelementptr inbounds %struct.xvip_graph_entity, ptr %entity, i32 0, i32 1
  %0 = ptrtoint ptr %entity1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %link) #6
  %2 = getelementptr inbounds %struct.v4l2_fwnode_link, ptr %link, i32 0, i32 1
  %3 = getelementptr inbounds %struct.v4l2_fwnode_link, ptr %link, i32 0, i32 3
  %4 = getelementptr inbounds %struct.v4l2_fwnode_link, ptr %link, i32 0, i32 4
  %5 = call ptr @memset(ptr %link, i32 255, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xvip_graph_build_one.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xvip_graph_build_one, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.xvip_composite_device, ptr %xdev, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xvip_graph_build_one.__UNIQUE_ID_ddebug298, ptr noundef %7, ptr noundef nonnull @.str.44, ptr noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %match = getelementptr inbounds %struct.v4l2_async_subdev, ptr %entity, i32 0, i32 1
  %10 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %match, align 4
  %call4247 = call ptr @fwnode_graph_get_next_endpoint(ptr noundef %11, ptr noundef null) #6
  %cmp248 = icmp eq ptr %call4247, null
  br i1 %cmp248, label %do.end.while.end_crit_edge, label %do.body7.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body7.lr.ph:                                   ; preds = %do.end
  %dev20 = getelementptr inbounds %struct.xvip_composite_device, ptr %xdev, i32 0, i32 2
  %num_pads = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %pads = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 9
  %asd_list.i = getelementptr inbounds %struct.xvip_composite_device, ptr %xdev, i32 0, i32 3, i32 4
  %name131 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 1
  br label %do.body7

do.body7:                                         ; preds = %while.cond.backedge.do.body7_crit_edge, %do.body7.lr.ph
  %call4249 = phi ptr [ %call4247, %do.body7.lr.ph ], [ %call4, %while.cond.backedge.do.body7_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xvip_graph_build_one.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xvip_graph_build_one, %if.then19)) #6
          to label %do.end23 [label %if.then19], !srcloc !176

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev20, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xvip_graph_build_one.__UNIQUE_ID_ddebug299, ptr noundef %13, ptr noundef nonnull @.str.45, ptr noundef nonnull %call4249) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body7
  %call24 = call i32 @v4l2_fwnode_parse_link(ptr noundef nonnull %call4249, ptr noundef nonnull %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end29, label %if.end31

do.end29:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev20, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.46, ptr noundef nonnull %call4249) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end138.while.cond.backedge_crit_edge, %do.end88, %do.end62, %do.end29
  %ret.0.be = phi i32 [ %call24, %do.end29 ], [ %call24, %do.end62 ], [ %call24, %do.end88 ], [ %call141, %do.end138.while.cond.backedge_crit_edge ]
  %16 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %match, align 4
  %call4 = call ptr @fwnode_graph_get_next_endpoint(ptr noundef %17, ptr noundef %call4249) #6
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.do.body7_crit_edge

while.cond.backedge.do.body7_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end31:                                         ; preds = %do.end23
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  %20 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_pads, align 4
  %conv = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv)
  %cmp32.not = icmp ult i32 %19, %conv
  br i1 %cmp32.not, label %if.end40, label %do.end37

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev20, align 8
  %24 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %link, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.48, i32 noundef %19, ptr noundef %25) #9
  call void @v4l2_fwnode_put_link(ptr noundef nonnull %link) #6
  br label %while.end

if.end40:                                         ; preds = %if.end31
  %26 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pads, align 4
  %flags = getelementptr %struct.media_pad, ptr %27, i32 %19, i32 4
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end63, label %do.body44

do.body44:                                        ; preds = %if.end40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xvip_graph_build_one.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xvip_graph_build_one, %if.then56)) #6
          to label %do.end62 [label %if.then56], !srcloc !176

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev20, align 8
  %32 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %link, align 4
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %2, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xvip_graph_build_one.__UNIQUE_ID_ddebug300, ptr noundef %31, ptr noundef nonnull @.str.50, ptr noundef %33, i32 noundef %35) #6
  br label %do.end62

do.end62:                                         ; preds = %if.then56, %do.body44
  call void @v4l2_fwnode_put_link(ptr noundef nonnull %link) #6
  br label %while.cond.backedge

if.end63:                                         ; preds = %if.end40
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %38 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev20, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node, align 8
  %tobool66.not = icmp eq ptr %41, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %41, i32 0, i32 3
  %spec.select = select i1 %tobool66.not, ptr null, ptr %fwnode
  %cmp67 = icmp eq ptr %37, %spec.select
  br i1 %cmp67, label %do.body70, label %if.end63.for.cond.i_crit_edge

if.end63.for.cond.i_crit_edge:                    ; preds = %if.end63
  br label %for.cond.i

do.body70:                                        ; preds = %if.end63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xvip_graph_build_one.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xvip_graph_build_one, %if.then82)) #6
          to label %do.end88 [label %if.then82], !srcloc !176

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev20, align 8
  %44 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %link, align 4
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %2, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xvip_graph_build_one.__UNIQUE_ID_ddebug301, ptr noundef %43, ptr noundef nonnull @.str.51, ptr noundef %45, i32 noundef %47) #6
  br label %do.end88

do.end88:                                         ; preds = %if.then82, %do.body70
  call void @v4l2_fwnode_put_link(ptr noundef nonnull %link) #6
  br label %while.cond.backedge

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end63.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %asd_list.i, %if.end63.for.cond.i_crit_edge ]
  %48 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %asd_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end97_crit_edge, label %for.body.i

for.cond.i.do.end97_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end97

for.body.i:                                       ; preds = %for.cond.i
  %match.i = getelementptr i8, ptr %.pn.i, i32 -16
  %49 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %match.i, align 4
  %cmp5.i = icmp eq ptr %50, %37
  br i1 %cmp5.i, label %xvip_graph_find_entity.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

xvip_graph_find_entity.exit:                      ; preds = %for.body.i
  %asd.0.le.i = getelementptr i8, ptr %.pn.i, i32 -20
  %cmp92 = icmp eq ptr %asd.0.le.i, null
  br i1 %cmp92, label %xvip_graph_find_entity.exit.do.end97_crit_edge, label %if.end100

xvip_graph_find_entity.exit.do.end97_crit_edge:   ; preds = %xvip_graph_find_entity.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end97

do.end97:                                         ; preds = %xvip_graph_find_entity.exit.do.end97_crit_edge, %for.cond.i.do.end97_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.53, ptr noundef %37) #9
  call void @v4l2_fwnode_put_link(ptr noundef nonnull %link) #6
  br label %while.end

if.end100:                                        ; preds = %xvip_graph_find_entity.exit
  %entity101 = getelementptr i8, ptr %.pn.i, i32 8
  %51 = ptrtoint ptr %entity101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %entity101, align 4
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %4, align 4
  %num_pads102 = getelementptr inbounds %struct.media_entity, ptr %52, i32 0, i32 5
  %55 = ptrtoint ptr %num_pads102 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %num_pads102, align 4
  %conv103 = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv103)
  %cmp104.not = icmp ult i32 %54, %conv103
  br i1 %cmp104.not, label %if.end113, label %do.end109

do.end109:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.56, i32 noundef %54, ptr noundef %37) #9
  call void @v4l2_fwnode_put_link(ptr noundef nonnull %link) #6
  br label %while.end

if.end113:                                        ; preds = %if.end100
  %pads114 = getelementptr inbounds %struct.media_entity, ptr %52, i32 0, i32 9
  %57 = ptrtoint ptr %pads114 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pads114, align 4
  call void @v4l2_fwnode_put_link(ptr noundef nonnull %link) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xvip_graph_build_one.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xvip_graph_build_one, %if.then129)) #6
          to label %do.end138 [label %if.then129], !srcloc !176

if.then129:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev20, align 8
  %61 = ptrtoint ptr %name131 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name131, align 4
  %index = getelementptr %struct.media_pad, ptr %27, i32 %19, i32 2
  %63 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %index, align 4
  %conv132 = zext i16 %64 to i32
  %name133 = getelementptr inbounds %struct.media_entity, ptr %52, i32 0, i32 1
  %65 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name133, align 4
  %index134 = getelementptr %struct.media_pad, ptr %58, i32 %54, i32 2
  %67 = ptrtoint ptr %index134 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %index134, align 4
  %conv135 = zext i16 %68 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xvip_graph_build_one.__UNIQUE_ID_ddebug302, ptr noundef %60, ptr noundef nonnull @.str.58, ptr noundef %62, i32 noundef %conv132, ptr noundef %66, i32 noundef %conv135) #6
  br label %do.end138

do.end138:                                        ; preds = %if.then129, %if.end113
  %index139 = getelementptr %struct.media_pad, ptr %27, i32 %19, i32 2
  %69 = ptrtoint ptr %index139 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %index139, align 4
  %index140 = getelementptr %struct.media_pad, ptr %58, i32 %54, i32 2
  %71 = ptrtoint ptr %index140 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %index140, align 4
  %call141 = call i32 @media_create_pad_link(ptr noundef %1, i16 noundef zeroext %70, ptr noundef %52, i16 noundef zeroext %72, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %do.end147, label %do.end138.while.cond.backedge_crit_edge

do.end138.while.cond.backedge_crit_edge:          ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

do.end147:                                        ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev20, align 8
  %75 = ptrtoint ptr %name131 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name131, align 4
  %77 = ptrtoint ptr %index139 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %index139, align 4
  %conv151 = zext i16 %78 to i32
  %name152 = getelementptr inbounds %struct.media_entity, ptr %52, i32 0, i32 1
  %79 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name152, align 4
  %81 = ptrtoint ptr %index140 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %index140, align 4
  %conv154 = zext i16 %82 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.60, ptr noundef %76, i32 noundef %conv151, ptr noundef %80, i32 noundef %conv154) #9
  br label %while.end

while.end:                                        ; preds = %do.end147, %do.end109, %do.end97, %do.end37, %while.cond.backedge.while.end_crit_edge, %do.end.while.end_crit_edge
  %call4221 = phi ptr [ %call4249, %do.end37 ], [ %call4249, %do.end97 ], [ %call4249, %do.end109 ], [ %call4249, %do.end147 ], [ null, %do.end.while.end_crit_edge ], [ null, %while.cond.backedge.while.end_crit_edge ]
  %ret.1 = phi i32 [ -22, %do.end37 ], [ -19, %do.end97 ], [ -22, %do.end109 ], [ %call141, %do.end147 ], [ 0, %do.end.while.end_crit_edge ], [ %ret.0.be, %while.cond.backedge.while.end_crit_edge ]
  call void @fwnode_handle_put(ptr noundef %call4221) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %link) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xvip_graph_build_dma(ptr noundef readonly %xdev) unnamed_addr #2 align 64 {
entry:
  %link = alloca %struct.v4l2_fwnode_link, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.xvip_composite_device, ptr %xdev, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %link) #6
  %4 = getelementptr inbounds %struct.v4l2_fwnode_link, ptr %link, i32 0, i32 1
  %5 = getelementptr inbounds %struct.v4l2_fwnode_link, ptr %link, i32 0, i32 3
  %6 = getelementptr inbounds %struct.v4l2_fwnode_link, ptr %link, i32 0, i32 4
  %7 = call ptr @memset(ptr %link, i32 255, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xvip_graph_build_dma.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xvip_graph_build_dma, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xvip_graph_build_dma.__UNIQUE_ID_ddebug303, ptr noundef %9, ptr noundef nonnull @.str.63) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4255 = call ptr @of_graph_get_next_endpoint(ptr noundef %3, ptr noundef null) #6
  %cmp256 = icmp eq ptr %call4255, null
  br i1 %cmp256, label %do.end.while.end_crit_edge, label %do.body7.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body7.lr.ph:                                   ; preds = %do.end
  %dmas.i = getelementptr inbounds %struct.xvip_composite_device, ptr %xdev, i32 0, i32 4
  %asd_list.i = getelementptr inbounds %struct.xvip_composite_device, ptr %xdev, i32 0, i32 3, i32 4
  br label %do.body7

do.body7:                                         ; preds = %while.cond.backedge.do.body7_crit_edge, %do.body7.lr.ph
  %call4257 = phi ptr [ %call4255, %do.body7.lr.ph ], [ %call4, %while.cond.backedge.do.body7_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xvip_graph_build_dma.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xvip_graph_build_dma, %if.then19)) #6
          to label %cond.end [label %if.then19], !srcloc !176

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xvip_graph_build_dma.__UNIQUE_ID_ddebug304, ptr noundef %11, ptr noundef nonnull @.str.64, ptr noundef nonnull %call4257) #6
  br label %cond.end

cond.end:                                         ; preds = %if.then19, %do.body7
  %fwnode = getelementptr inbounds %struct.device_node, ptr %call4257, i32 0, i32 3
  %call26 = call i32 @v4l2_fwnode_parse_link(ptr noundef %fwnode, ptr noundef nonnull %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end33

do.end31:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.65, ptr noundef nonnull %call4257) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end133.while.cond.backedge_crit_edge, %do.end31
  %ret.0.be = phi i32 [ %call26, %do.end31 ], [ %call136, %do.end133.while.cond.backedge_crit_edge ]
  %call4 = call ptr @of_graph_get_next_endpoint(ptr noundef %3, ptr noundef %call4257) #6
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.do.body7_crit_edge

while.cond.backedge.do.body7_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end33:                                         ; preds = %cond.end
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %4, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end33
  %dma.0.in.i = phi ptr [ %dmas.i, %if.end33 ], [ %dma.0.i, %for.body.i.for.cond.i_crit_edge ]
  %16 = ptrtoint ptr %dma.0.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %dma.0.i = load ptr, ptr %dma.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %dma.0.i, %dmas.i
  br i1 %cmp.not.i, label %for.cond.i.do.end39_crit_edge, label %for.body.i

for.cond.i.do.end39_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

for.body.i:                                       ; preds = %for.cond.i
  %port2.i = getelementptr inbounds %struct.xvip_dma, ptr %dma.0.i, i32 0, i32 5
  %17 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port2.i, align 8
  %cmp3.i = icmp eq i32 %18, %15
  br i1 %cmp3.i, label %xvip_graph_find_dma.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

xvip_graph_find_dma.exit:                         ; preds = %for.body.i
  %cmp35 = icmp eq ptr %dma.0.i, null
  br i1 %cmp35, label %xvip_graph_find_dma.exit.do.end39_crit_edge, label %do.body43

xvip_graph_find_dma.exit.do.end39_crit_edge:      ; preds = %xvip_graph_find_dma.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

do.end39:                                         ; preds = %xvip_graph_find_dma.exit.do.end39_crit_edge, %for.cond.i.do.end39_crit_edge
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.67, i32 noundef %15) #9
  call void @v4l2_fwnode_put_link(ptr noundef nonnull %link) #6
  br label %while.end

do.body43:                                        ; preds = %xvip_graph_find_dma.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xvip_graph_build_dma.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xvip_graph_build_dma, %if.then55)) #6
          to label %do.end59 [label %if.then55], !srcloc !176

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.xvip_dma, ptr %dma.0.i, i32 0, i32 1, i32 12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xvip_graph_build_dma.__UNIQUE_ID_ddebug305, ptr noundef %22, ptr noundef nonnull @.str.69, ptr noundef %name) #6
  br label %do.end59

do.end59:                                         ; preds = %if.then55, %do.body43
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  br label %for.cond.i203

for.cond.i203:                                    ; preds = %for.body.i204.for.cond.i203_crit_edge, %do.end59
  %.pn.in.i = phi ptr [ %asd_list.i, %do.end59 ], [ %.pn.i, %for.body.i204.for.cond.i203_crit_edge ]
  %25 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i202 = icmp eq ptr %.pn.i, %asd_list.i
  br i1 %cmp.not.i202, label %for.cond.i203.do.end65_crit_edge, label %for.body.i204

for.cond.i203.do.end65_crit_edge:                 ; preds = %for.cond.i203
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end65

for.body.i204:                                    ; preds = %for.cond.i203
  %match.i = getelementptr i8, ptr %.pn.i, i32 -16
  %26 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %match.i, align 4
  %cmp5.i = icmp eq ptr %27, %24
  br i1 %cmp5.i, label %xvip_graph_find_entity.exit, label %for.body.i204.for.cond.i203_crit_edge

for.body.i204.for.cond.i203_crit_edge:            ; preds = %for.body.i204
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i203

xvip_graph_find_entity.exit:                      ; preds = %for.body.i204
  %asd.0.le.i = getelementptr i8, ptr %.pn.i, i32 -20
  %cmp61 = icmp eq ptr %asd.0.le.i, null
  br i1 %cmp61, label %xvip_graph_find_entity.exit.do.end65_crit_edge, label %if.end75

xvip_graph_find_entity.exit.do.end65_crit_edge:   ; preds = %xvip_graph_find_entity.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end65

do.end65:                                         ; preds = %xvip_graph_find_entity.exit.do.end65_crit_edge, %for.cond.i203.do.end65_crit_edge
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  %cmp.i.i = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %do.end65.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

do.end65.is_of_node.exit.thread_crit_edge:        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %is_of_node.exit.thread

is_of_node.exit:                                  ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #8
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %24, i32 0, i32 1
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %31, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %24, i32 -12
  %spec.select = select i1 %cmp.i, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %do.end65.is_of_node.exit.thread_crit_edge
  %32 = phi ptr [ null, %do.end65.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.71, ptr noundef %32) #9
  call void @v4l2_fwnode_put_link(ptr noundef nonnull %link) #6
  br label %while.end

if.end75:                                         ; preds = %xvip_graph_find_entity.exit
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %6, align 4
  %entity = getelementptr i8, ptr %.pn.i, i32 8
  %35 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %entity, align 4
  %num_pads = getelementptr inbounds %struct.media_entity, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %num_pads, align 4
  %conv = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv)
  %cmp76.not = icmp ult i32 %34, %conv
  br i1 %cmp76.not, label %if.end96, label %do.end81

do.end81:                                         ; preds = %if.end75
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %tobool.not.i.i206 = icmp eq ptr %24, null
  %cmp.i.i207 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i208 = or i1 %tobool.not.i.i206, %cmp.i.i207
  br i1 %spec.select.i.i208, label %do.end81.is_of_node.exit212.thread_crit_edge, label %is_of_node.exit212

do.end81.is_of_node.exit212.thread_crit_edge:     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %is_of_node.exit212.thread

is_of_node.exit212:                               ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #8
  %ops.i209 = getelementptr inbounds %struct.fwnode_handle, ptr %24, i32 0, i32 1
  %41 = ptrtoint ptr %ops.i209 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i209, align 4
  %cmp.i210 = icmp eq ptr %42, @of_fwnode_ops
  %add.ptr92 = getelementptr i8, ptr %24, i32 -12
  %spec.select224 = select i1 %cmp.i210, ptr %add.ptr92, ptr null
  br label %is_of_node.exit212.thread

is_of_node.exit212.thread:                        ; preds = %is_of_node.exit212, %do.end81.is_of_node.exit212.thread_crit_edge
  %43 = phi ptr [ null, %do.end81.is_of_node.exit212.thread_crit_edge ], [ %spec.select224, %is_of_node.exit212 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.74, i32 noundef %34, ptr noundef %43) #9
  call void @v4l2_fwnode_put_link(ptr noundef nonnull %link) #6
  br label %while.end

if.end96:                                         ; preds = %if.end75
  %pad = getelementptr inbounds %struct.xvip_dma, ptr %dma.0.i, i32 0, i32 2
  %flags = getelementptr inbounds %struct.xvip_dma, ptr %dma.0.i, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %and = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool97.not = icmp eq i32 %and, 0
  br i1 %tobool97.not, label %if.else, label %if.then98

if.then98:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  %video99 = getelementptr inbounds %struct.xvip_dma, ptr %dma.0.i, i32 0, i32 1
  %pads = getelementptr inbounds %struct.media_entity, ptr %36, i32 0, i32 9
  %46 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pads, align 4
  %arrayidx = getelementptr %struct.media_pad, ptr %47, i32 %34
  br label %if.end111

if.else:                                          ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  %pads105 = getelementptr inbounds %struct.media_entity, ptr %36, i32 0, i32 9
  %48 = ptrtoint ptr %pads105 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pads105, align 4
  %arrayidx107 = getelementptr %struct.media_pad, ptr %49, i32 %34
  %video108 = getelementptr inbounds %struct.xvip_dma, ptr %dma.0.i, i32 0, i32 1
  br label %if.end111

if.end111:                                        ; preds = %if.else, %if.then98
  %sink_pad.0 = phi ptr [ %arrayidx, %if.then98 ], [ %pad, %if.else ]
  %source_pad.0 = phi ptr [ %pad, %if.then98 ], [ %arrayidx107, %if.else ]
  %sink.0 = phi ptr [ %36, %if.then98 ], [ %video108, %if.else ]
  %source.0 = phi ptr [ %video99, %if.then98 ], [ %36, %if.else ]
  call void @v4l2_fwnode_put_link(ptr noundef nonnull %link) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xvip_graph_build_dma.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xvip_graph_build_dma, %if.then124)) #6
          to label %do.end133 [label %if.then124], !srcloc !176

if.then124:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 8
  %name126 = getelementptr inbounds %struct.media_entity, ptr %source.0, i32 0, i32 1
  %52 = ptrtoint ptr %name126 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name126, align 4
  %index = getelementptr inbounds %struct.media_pad, ptr %source_pad.0, i32 0, i32 2
  %54 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %index, align 4
  %conv127 = zext i16 %55 to i32
  %name128 = getelementptr inbounds %struct.media_entity, ptr %sink.0, i32 0, i32 1
  %56 = ptrtoint ptr %name128 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name128, align 4
  %index129 = getelementptr inbounds %struct.media_pad, ptr %sink_pad.0, i32 0, i32 2
  %58 = ptrtoint ptr %index129 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %index129, align 4
  %conv130 = zext i16 %59 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xvip_graph_build_dma.__UNIQUE_ID_ddebug306, ptr noundef %51, ptr noundef nonnull @.str.58, ptr noundef %53, i32 noundef %conv127, ptr noundef %57, i32 noundef %conv130) #6
  br label %do.end133

do.end133:                                        ; preds = %if.then124, %if.end111
  %index134 = getelementptr inbounds %struct.media_pad, ptr %source_pad.0, i32 0, i32 2
  %60 = ptrtoint ptr %index134 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %index134, align 4
  %index135 = getelementptr inbounds %struct.media_pad, ptr %sink_pad.0, i32 0, i32 2
  %62 = ptrtoint ptr %index135 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %index135, align 4
  %call136 = call i32 @media_create_pad_link(ptr noundef %source.0, i16 noundef zeroext %61, ptr noundef %sink.0, i16 noundef zeroext %63, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %do.end142, label %do.end133.while.cond.backedge_crit_edge

do.end133.while.cond.backedge_crit_edge:          ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

do.end142:                                        ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #8
  %index134.le = getelementptr inbounds %struct.media_pad, ptr %source_pad.0, i32 0, i32 2
  %index135.le = getelementptr inbounds %struct.media_pad, ptr %sink_pad.0, i32 0, i32 2
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 8
  %name144 = getelementptr inbounds %struct.media_entity, ptr %source.0, i32 0, i32 1
  %66 = ptrtoint ptr %name144 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name144, align 4
  %68 = ptrtoint ptr %index134.le to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %index134.le, align 4
  %conv146 = zext i16 %69 to i32
  %name147 = getelementptr inbounds %struct.media_entity, ptr %sink.0, i32 0, i32 1
  %70 = ptrtoint ptr %name147 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name147, align 4
  %72 = ptrtoint ptr %index135.le to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %index135.le, align 4
  %conv149 = zext i16 %73 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.60, ptr noundef %67, i32 noundef %conv146, ptr noundef %71, i32 noundef %conv149) #9
  br label %while.end

while.end:                                        ; preds = %do.end142, %is_of_node.exit212.thread, %is_of_node.exit.thread, %do.end39, %while.cond.backedge.while.end_crit_edge, %do.end.while.end_crit_edge
  %call4235 = phi ptr [ %call4257, %do.end39 ], [ %call4257, %is_of_node.exit.thread ], [ %call4257, %is_of_node.exit212.thread ], [ %call4257, %do.end142 ], [ null, %do.end.while.end_crit_edge ], [ null, %while.cond.backedge.while.end_crit_edge ]
  %ret.1 = phi i32 [ -22, %do.end39 ], [ -19, %is_of_node.exit.thread ], [ -22, %is_of_node.exit212.thread ], [ %call136, %do.end142 ], [ 0, %do.end.while.end_crit_edge ], [ %ret.0.be, %while.cond.backedge.while.end_crit_edge ]
  call void @of_node_put(ptr noundef %call4235) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %link) #6
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_parse_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_put_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xvip_dma_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !77, !79, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154, !155, !157, !158, !159, !161, !163, !164}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @__initcall__kmod_xilinx_video__311_644_xvip_composite_driver_init6, !1, !"__initcall__kmod_xilinx_video__311_644_xvip_composite_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 644, i32 1}
!2 = !{ptr @__exitcall_xvip_composite_driver_exit, !1, !"__exitcall_xvip_composite_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author312, !4, !"__UNIQUE_ID_author312", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 646, i32 1}
!5 = !{ptr @__UNIQUE_ID_description313, !6, !"__UNIQUE_ID_description313", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 647, i32 1}
!7 = !{ptr @__UNIQUE_ID_file314, !8, !"__UNIQUE_ID_file314", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 648, i32 1}
!9 = !{ptr @__UNIQUE_ID_license315, !8, !"__UNIQUE_ID_license315", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 637, i32 11}
!12 = !{ptr @xvip_composite_driver, !13, !"xvip_composite_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 635, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 610, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @xvip_composite_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @xvip_composite_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 565, i32 33}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 574, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @xvip_composite_v4l2_init._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @xvip_composite_v4l2_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 514, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @xvip_graph_init._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @xvip_graph_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 521, i32 3}
!37 = !{ptr @xvip_graph_init._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @xvip_graph_init._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 526, i32 3}
!41 = !{ptr @xvip_graph_init._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @xvip_graph_init._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 536, i32 3}
!45 = !{ptr @xvip_graph_init._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @xvip_graph_init._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 476, i32 51}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 478, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @xvip_graph_dma_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @xvip_graph_dma_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 439, i32 38}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 443, i32 24}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 445, i32 29}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 450, i32 29}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 458, i32 3}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @xvip_graph_dma_init_one._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @xvip_graph_dma_init_one._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 359, i32 2}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @xvip_graph_parse_one.__UNIQUE_ID_ddebug309, !68, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 368, i32 3}
!74 = !{ptr @xvip_graph_parse_one.__UNIQUE_ID_ddebug310, !73, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!75 = !{ptr @xvip_graph_notify_ops, !76, !"xvip_graph_notify_ops", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 347, i32 52}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 332, i32 4}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @xvip_graph_notify_bound._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @xvip_graph_notify_bound._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 337, i32 3}
!84 = !{ptr @xvip_graph_notify_bound.__UNIQUE_ID_ddebug308, !83, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 343, i32 2}
!87 = !{ptr @xvip_graph_notify_bound._entry.37, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @xvip_graph_notify_bound._entry_ptr.39, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 291, i32 2}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @xvip_graph_notify_complete.__UNIQUE_ID_ddebug307, !90, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 308, i32 3}
!95 = !{ptr @xvip_graph_notify_complete._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @xvip_graph_notify_complete._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 81, i32 2}
!99 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @xvip_graph_build_one.__UNIQUE_ID_ddebug298, !98, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 90, i32 3}
!103 = !{ptr @xvip_graph_build_one.__UNIQUE_ID_ddebug299, !102, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 94, i32 4}
!106 = !{ptr @xvip_graph_build_one._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @xvip_graph_build_one._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 103, i32 4}
!110 = !{ptr @xvip_graph_build_one._entry.47, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @xvip_graph_build_one._entry_ptr.49, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 113, i32 4}
!114 = !{ptr @xvip_graph_build_one.__UNIQUE_ID_ddebug300, !113, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 121, i32 4}
!117 = !{ptr @xvip_graph_build_one.__UNIQUE_ID_ddebug301, !116, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 130, i32 4}
!120 = !{ptr @xvip_graph_build_one._entry.52, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @xvip_graph_build_one._entry_ptr.54, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 140, i32 4}
!124 = !{ptr @xvip_graph_build_one._entry.55, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @xvip_graph_build_one._entry_ptr.57, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 152, i32 3}
!128 = !{ptr @xvip_graph_build_one.__UNIQUE_ID_ddebug302, !127, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 160, i32 4}
!131 = !{ptr @xvip_graph_build_one._entry.59, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @xvip_graph_build_one._entry_ptr.61, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 199, i32 2}
!135 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @xvip_graph_build_dma.__UNIQUE_ID_ddebug303, !134, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 207, i32 3}
!139 = !{ptr @xvip_graph_build_dma.__UNIQUE_ID_ddebug304, !138, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 211, i32 4}
!142 = !{ptr @xvip_graph_build_dma._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @xvip_graph_build_dma._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 219, i32 4}
!146 = !{ptr @xvip_graph_build_dma._entry.66, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @xvip_graph_build_dma._entry_ptr.68, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 226, i32 3}
!150 = !{ptr @xvip_graph_build_dma.__UNIQUE_ID_ddebug305, !149, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 232, i32 4}
!153 = !{ptr @xvip_graph_build_dma._entry.70, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @xvip_graph_build_dma._entry_ptr.72, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 240, i32 4}
!157 = !{ptr @xvip_graph_build_dma._entry.73, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @xvip_graph_build_dma._entry_ptr.75, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @xvip_graph_build_dma.__UNIQUE_ID_ddebug306, !160, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 263, i32 3}
!161 = !{ptr @xvip_graph_build_dma._entry.76, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 271, i32 4}
!163 = !{ptr @xvip_graph_build_dma._entry_ptr.77, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @xvip_composite_of_id_table, !165, !"xvip_composite_of_id_table", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/xilinx/xilinx-vipp.c", i32 629, i32 34}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{!"auto-init"}
!176 = !{i64 2148967182, i64 2148967187, i64 2148967200, i64 2148967244, i64 2148967278, i64 2148967299}
