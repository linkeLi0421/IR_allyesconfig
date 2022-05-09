; ModuleID = '/llk/IR_all_yes/drivers/staging/media/tegra-video/csi.c_pt.bc'
source_filename = "../drivers/staging/media/tegra-video/csi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.v4l2_frmsize_discrete = type { i32, i32 }
%struct.tegra_csi_channel = type { %struct.list_head, %struct.v4l2_subdev, [2 x %struct.media_pad], i32, ptr, ptr, i8, i32, [2 x i8], i8, %struct.v4l2_mbus_framefmt, i32, i32, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.tegra_csi = type { ptr, %struct.host1x_client, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.tegra_csi_ops = type { ptr, ptr, ptr }
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
%struct.tegra_csi_soc = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.tpg_framerate = type { %struct.v4l2_frmsize_discrete, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.tegra_video_device = type { %struct.v4l2_device, %struct.media_device, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.tegra_vi_channel = type { %struct.list_head, %struct.video_device, %struct.mutex, %struct.media_pad, ptr, [2 x ptr], [2 x ptr], [2 x %struct.spinlock], ptr, %struct.wait_queue_head, ptr, %struct.wait_queue_head, %struct.v4l2_pix_format, ptr, %struct.vb2_queue, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, [2 x i8], i8, i8, ptr, %struct.v4l2_ctrl_handler, i32, [2 x i32], [2 x i32], i32, %struct.v4l2_async_notifier }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-csi\00", [22 x i8] zeroinitializer }, align 32
@tegra_csi_of_id_table = internal constant { [1 x %struct.of_device_id], [60 x i8] } zeroinitializer, align 32
@tegra_csi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @csi_runtime_suspend, ptr @csi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_csi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_csi_probe, ptr @tegra_csi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_csi_of_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_csi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@tegra_csi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 742, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get the clocks: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_csi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/staging/media/tegra-video/csi.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_csi_probe._entry_ptr = internal global ptr @tegra_csi_probe._entry, section ".printk_index", align 4
@tegra_csi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 748, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PM domain is not attached: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_csi_probe._entry_ptr.9 = internal global ptr @tegra_csi_probe._entry.6, section ".printk_index", align 4
@csi_client_ops = internal constant { %struct.host1x_client_ops, [40 x i8] } { %struct.host1x_client_ops { ptr null, ptr @tegra_csi_init, ptr @tegra_csi_exit, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tegra_csi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra_csi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 765, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register host1x client: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_csi_probe._entry_ptr.12 = internal global ptr @tegra_csi_probe._entry.10, section ".printk_index", align 4
@tegra_csi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 685, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate channels: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_csi_init\00", [17 x i8] zeroinitializer }, align 32
@tegra_csi_init._entry_ptr = internal global ptr @tegra_csi_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tegra_csi_channels_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 619, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to initialize channel-%d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_csi_channels_init\00", [40 x i8] zeroinitializer }, align 32
@tegra_csi_channels_init._entry_ptr = internal global ptr @tegra_csi_channels_init._entry, section ".printk_index", align 4
@tegra_csi_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @tegra_csi_video_ops, ptr null, ptr null, ptr null, ptr @tegra_csi_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tpg\00", [28 x i8] zeroinitializer }, align 32
@tegra_csi_channel_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 581, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to initialize media entity: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_csi_channel_init\00", [41 x i8] zeroinitializer }, align 32
@tegra_csi_channel_init._entry_ptr = internal global ptr @tegra_csi_channel_init._entry, section ".printk_index", align 4
@tegra_csi_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_csi_s_stream, ptr null, ptr @tegra_csi_g_frame_interval, ptr @tegra_csi_g_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tegra_csi_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @csi_enum_bus_code, ptr @csi_enum_framesizes, ptr @csi_enum_frameintervals, ptr @csi_get_format, ptr @csi_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_csi_enable_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get runtime PM: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_csi_enable_stream\00", [40 x i8] zeroinitializer }, align 32
@tegra_csi_enable_stream._entry_ptr = internal global ptr @tegra_csi_enable_stream._entry, section ".printk_index", align 4
@tegra_csi_enable_stream._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable MIPI pads: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_csi_enable_stream._entry_ptr.25 = internal global ptr @tegra_csi_enable_stream._entry.23, section ".printk_index", align 4
@tegra_csi_enable_stream._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to start MIPI calibration: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_csi_enable_stream._entry_ptr.28 = internal global ptr @tegra_csi_enable_stream._entry.26, section ".printk_index", align 4
@tegra_csi_enable_stream._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.3, i32 345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to disable MIPI pads: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_csi_enable_stream._entry_ptr.31 = internal global ptr @tegra_csi_enable_stream._entry.29, section ".printk_index", align 4
@tegra_csi_disable_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.32, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_csi_disable_stream\00", [39 x i8] zeroinitializer }, align 32
@tegra_csi_disable_stream._entry_ptr = internal global ptr @tegra_csi_disable_stream._entry, section ".printk_index", align 4
@tegra_csi_tpg_fmts = internal constant { [2 x %struct.v4l2_mbus_framefmt], [32 x i8] } { [2 x %struct.v4l2_mbus_framefmt] [%struct.v4l2_mbus_framefmt { i32 1920, i32 1080, i32 12303, i32 1, i32 8, %union.anon.91 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }, %struct.v4l2_mbus_framefmt { i32 1920, i32 1080, i32 4111, i32 1, i32 8, %union.anon.91 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@tegra_csi_tpg_sizes = internal constant { [3 x %struct.v4l2_frmsize_discrete], [40 x i8] } { [3 x %struct.v4l2_frmsize_discrete] [%struct.v4l2_frmsize_discrete { i32 1280, i32 720 }, %struct.v4l2_frmsize_discrete { i32 1920, i32 1080 }, %struct.v4l2_frmsize_discrete { i32 3840, i32 2160 }], [40 x i8] zeroinitializer }, align 32
@tegra_csi_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 784, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to unregister host1x client: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_csi_remove\00", [47 x i8] zeroinitializer }, align 32
@tegra_csi_remove._entry_ptr = internal global ptr @tegra_csi_remove._entry, section ".printk_index", align 4
@csi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 664, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable clocks: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csi_runtime_resume\00", [45 x i8] zeroinitializer }, align 32
@csi_runtime_resume._entry_ptr = internal global ptr @csi_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4111, i64 12303]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 807, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"tegra_csi_of_id_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 793, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"tegra_csi_pm_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 801, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"tegra_csi_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 805, i32 24 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 742, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 748, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"csi_client_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 711, i32 39 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 762, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 764, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 684, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 617, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"tegra_csi_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 402, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 566, i32 49 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 566, i32 58 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 580, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c"tegra_csi_video_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 388, i32 43 }
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"tegra_csi_pad_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 394, i32 41 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 303, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 310, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 324, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 344, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 364, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant [19 x i8] c"tegra_csi_tpg_fmts\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 40, i32 40 }
@___asan_gen_.166 = private unnamed_addr constant [20 x i8] c"tegra_csi_tpg_sizes\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 57, i32 43 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 783, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private constant [43 x i8] c"../drivers/staging/media/tegra-video/csi.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 664, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @csi_runtime_resume._entry, ptr @csi_runtime_resume._entry_ptr, ptr @tegra_csi_channel_init._entry, ptr @tegra_csi_channel_init._entry_ptr, ptr @tegra_csi_channels_init._entry, ptr @tegra_csi_channels_init._entry_ptr, ptr @tegra_csi_disable_stream._entry, ptr @tegra_csi_disable_stream._entry_ptr, ptr @tegra_csi_enable_stream._entry, ptr @tegra_csi_enable_stream._entry.23, ptr @tegra_csi_enable_stream._entry.26, ptr @tegra_csi_enable_stream._entry.29, ptr @tegra_csi_enable_stream._entry_ptr, ptr @tegra_csi_enable_stream._entry_ptr.25, ptr @tegra_csi_enable_stream._entry_ptr.28, ptr @tegra_csi_enable_stream._entry_ptr.31, ptr @tegra_csi_init._entry, ptr @tegra_csi_init._entry_ptr, ptr @tegra_csi_probe._entry, ptr @tegra_csi_probe._entry.10, ptr @tegra_csi_probe._entry.6, ptr @tegra_csi_probe._entry_ptr, ptr @tegra_csi_probe._entry_ptr.12, ptr @tegra_csi_probe._entry_ptr.9, ptr @tegra_csi_remove._entry, ptr @tegra_csi_remove._entry_ptr, ptr @.str, ptr @tegra_csi_of_id_table, ptr @tegra_csi_pm_ops, ptr @tegra_csi_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @csi_client_ops, ptr @tegra_csi_probe.__key, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @tegra_csi_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @tegra_csi_video_ops, ptr @tegra_csi_pad_ops, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @tegra_csi_tpg_fmts, ptr @tegra_csi_tpg_sizes, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_of_id_table to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_client_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_channels_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_channel_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_enable_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_enable_stream._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_enable_stream._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_enable_stream._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_disable_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_tpg_fmts to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_tpg_sizes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_csi_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_csi_calc_settle_time(ptr nocapture noundef readonly %csi_chan, i8 noundef zeroext %csi_port_num, ptr nocapture noundef writeonly %clk_settle_time, ptr nocapture noundef writeonly %ths_settle_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %csi1 = getelementptr inbounds %struct.tegra_csi_channel, ptr %csi_chan, i32 0, i32 4
  %0 = ptrtoint ptr %csi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csi1, align 4
  %2 = lshr i8 %csi_port_num, 1
  %narrow = add nuw i8 %2, 1
  %add = zext i8 %narrow to i32
  %clks = getelementptr inbounds %struct.tegra_csi, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clks, align 4
  %clk = getelementptr %struct.clk_bulk_data, ptr %4, i32 %add, i32 1
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %6) #11
  %div = udiv i32 %call, 1000000
  %host_priv.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %csi_chan, i32 0, i32 1, i32 12
  %7 = ptrtoint ptr %host_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_priv.i.i, align 4
  %call1.i = tail call ptr @tegra_channel_get_remote_source_subdev(ptr noundef %8) #11
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call1.i, i32 0, i32 8
  %9 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_handler.i, align 4
  %call2.i = tail call ptr @v4l2_ctrl_find(ptr noundef %10, i32 noundef 10422530) #11
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %csi_get_pixel_rate.exit.thread, label %csi_get_pixel_rate.exit

csi_get_pixel_rate.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mul19 = mul nuw nsw i32 %div, 395
  %sub20 = add nsw i32 %mul19, -14000
  %div421 = udiv i32 %sub20, 2000
  br label %if.end.sink.split

csi_get_pixel_rate.exit:                          ; preds = %entry
  %call3.i = tail call i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef nonnull %call2.i) #11
  %conv.i = trunc i64 %call3.i to i32
  %mul = mul nuw nsw i32 %div, 395
  %sub = add nsw i32 %mul, -14000
  %div4 = udiv i32 %sub, 2000
  %conv5 = trunc i32 %div4 to i8
  %11 = ptrtoint ptr %clk_settle_time to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv5, ptr %clk_settle_time, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %conv.i)
  %12 = icmp ult i32 %conv.i, 1000000
  br i1 %12, label %csi_get_pixel_rate.exit.if.end_crit_edge, label %if.then

csi_get_pixel_rate.exit.if.end_crit_edge:         ; preds = %csi_get_pixel_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %csi_get_pixel_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %div3 = udiv i32 %conv.i, 1000000
  %mul6 = mul nuw nsw i32 %div, 115
  %mul7 = mul nuw nsw i32 %div, 8000
  %mul8 = shl nuw nsw i32 %div3, 1
  %div9 = udiv i32 %mul7, %mul8
  %add10 = add nsw i32 %mul6, -5000
  %sub11 = add nsw i32 %add10, %div9
  %div12 = udiv i32 %sub11, 1000
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.then, %csi_get_pixel_rate.exit.thread
  %div421.sink = phi i32 [ %div421, %csi_get_pixel_rate.exit.thread ], [ %div12, %if.then ]
  %clk_settle_time.sink = phi ptr [ %clk_settle_time, %csi_get_pixel_rate.exit.thread ], [ %ths_settle_time, %if.then ]
  %conv522 = trunc i32 %div421.sink to i8
  %13 = ptrtoint ptr %clk_settle_time.sink to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv522, ptr %clk_settle_time.sink, align 1
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %csi_get_pixel_rate.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_csi_error_recover(ptr noundef %sd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -8
  %csi1 = getelementptr i8, ptr %sd, i32 264
  %0 = ptrtoint ptr %csi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csi1, align 4
  %ops = getelementptr inbounds %struct.tegra_csi, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %csi_stop_streaming = getelementptr inbounds %struct.tegra_csi_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %csi_stop_streaming to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csi_stop_streaming, align 4
  tail call void %5(ptr noundef %add.ptr.i) #11
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %csi_err_recover = getelementptr inbounds %struct.tegra_csi_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %csi_err_recover to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csi_err_recover, align 4
  tail call void %9(ptr noundef %add.ptr.i) #11
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call4 = tail call i32 %13(ptr noundef %add.ptr.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_csi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 268, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %iomem = getelementptr inbounds %struct.tegra_csi, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %iomem, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #11
  %soc = getelementptr inbounds %struct.tegra_csi, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %soc, align 4
  %num_clks = getelementptr inbounds %struct.tegra_csi_soc, ptr %call9, i32 0, i32 3
  %3 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_clks, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 8) #11
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !98

devm_kcalloc.exit.thread:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %clks107 = getelementptr inbounds %struct.tegra_csi, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %clks107 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %clks107, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end7
  %8 = extractvalue { i32, i1 } %5, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %8, i32 noundef 3520) #11
  %clks = getelementptr inbounds %struct.tegra_csi, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i, ptr %clks, align 4
  %tobool14.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool14.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %10 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc, align 4
  %num_clks18109 = getelementptr inbounds %struct.tegra_csi_soc, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %num_clks18109 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_clks18109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp110.not = icmp eq i32 %13, 0
  br i1 %cmp110.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %14 = phi ptr [ %23, %for.body.for.body_crit_edge ], [ %11, %for.cond.preheader.for.body_crit_edge ]
  %i.0111 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %clk_names = getelementptr inbounds %struct.tegra_csi_soc, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %clk_names to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_names, align 4
  %arrayidx = getelementptr ptr, ptr %16, i32 %i.0111
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clks, align 4
  %arrayidx21 = getelementptr %struct.clk_bulk_data, ptr %20, i32 %i.0111
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %arrayidx21, align 4
  %inc = add nuw i32 %i.0111, 1
  %22 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %soc, align 4
  %num_clks18 = getelementptr inbounds %struct.tegra_csi_soc, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %num_clks18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_clks18, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %25, %for.body.for.end_crit_edge ]
  %26 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clks, align 4
  %call26 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev, i32 noundef %.lcssa, ptr noundef %27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call26) #14
  br label %cleanup

if.end30:                                         ; preds = %for.end
  %pm_domain = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 13
  %28 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pm_domain, align 8
  %tobool32.not = icmp eq ptr %29, null
  br i1 %tobool32.not, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef -2) #14
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev, ptr %call.i, align 4
  %31 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %soc, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %ops42 = getelementptr inbounds %struct.tegra_csi, ptr %call.i, i32 0, i32 5
  %35 = ptrtoint ptr %ops42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %ops42, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #11
  %client = getelementptr inbounds %struct.tegra_csi, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %client, ptr %client, align 4
  %prev.i = getelementptr inbounds %struct.tegra_csi, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %client, ptr %prev.i, align 4
  %ops45 = getelementptr inbounds %struct.tegra_csi, ptr %call.i, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %ops45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @csi_client_ops, ptr %ops45, align 4
  %dev48 = getelementptr inbounds %struct.tegra_csi, ptr %call.i, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %dev48 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev, ptr %dev48, align 4
  tail call void @__host1x_client_init(ptr noundef %client, ptr noundef nonnull @tegra_csi_probe.__key) #11
  %call51 = tail call i32 @__host1x_client_register(ptr noundef %client) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.end56, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end56:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call51) #14
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.end38.cleanup_crit_edge, %if.then33, %do.end, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %call26, %do.end ], [ %call51, %do.end56 ], [ -2, %if.then33 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_csi_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client = getelementptr inbounds %struct.tegra_csi, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @host1x_client_unregister(ptr noundef %client) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_channel_get_remote_source_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_csi_init(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %client, i32 -4
  %host = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %csi_chans = getelementptr i8, ptr %client, i32 256
  %4 = ptrtoint ptr %csi_chans to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %csi_chans, ptr %csi_chans, align 4
  %prev.i = getelementptr i8, ptr %client, i32 260
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %csi_chans, ptr %prev.i, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %soc.i = getelementptr i8, ptr %client, i32 248
  %10 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc.i, align 4
  %csi_max_channels.i = getelementptr inbounds %struct.tegra_csi_soc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %csi_max_channels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %csi_max_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp12.not.i = icmp eq i32 %13, 0
  br i1 %cmp12.not.i, label %entry.for.cond.i.preheader_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.cond.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %for.inc.i.for.cond.i.preheader_crit_edge, %entry.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %port_num.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 360) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %16, ptr noundef %csi_chans) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.for.body.preheader.i.i_crit_edge

if.end.i.i.for.body.preheader.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i.i, ptr %prev.i, align 4
  %18 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %csi_chans, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call7.i.i.i.i, ptr %16, align 4
  br label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.end.i.i.i.i, %if.end.i.i.for.body.preheader.i.i_crit_edge
  %csi1.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %call7.i.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %csi1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %csi1.i.i, align 8
  %numlanes.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %call7.i.i.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %numlanes.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %numlanes.i.i, align 4
  %numgangports.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %call7.i.i.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %numgangports.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %numgangports.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.03.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %mul.i.i = shl nuw i32 %i.03.i.i, 1
  %add.i.i = add i32 %mul.i.i, %port_num.013.i
  %conv10.i.i = trunc i32 %add.i.i to i8
  %arrayidx.i.i = getelementptr %struct.tegra_csi_channel, ptr %call7.i.i.i.i, i32 0, i32 8, i32 %i.03.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv10.i.i, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %25 = ptrtoint ptr %numgangports.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %numgangports.i.i, align 8
  %conv7.i.i = zext i8 %26 to i32
  %cmp8.i.i = icmp ult i32 %inc.i.i, %conv7.i.i
  br i1 %cmp8.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.inc.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i:                                        ; preds = %for.body.i.i
  %of_node.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %call7.i.i.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %9, ptr %of_node.i.i, align 4
  %numpads.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %call7.i.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %numpads.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %numpads.i.i, align 4
  %flags20.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 4
  %29 = ptrtoint ptr %flags20.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %flags20.i.i, align 8
  %inc.i = add nuw i32 %port_num.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.inc.i.for.cond.i.preheader_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.cond.i.preheader_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.13, i32 noundef -12) #14
  br label %cleanup

for.cond.i:                                       ; preds = %csi_chan_update_blank_intervals.exit.i.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %chan.0.in.i = phi ptr [ %chan.0.i, %csi_chan_update_blank_intervals.exit.i.i.for.cond.i_crit_edge ], [ %csi_chans, %for.cond.i.preheader ]
  %32 = ptrtoint ptr %chan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %chan.0.i = load ptr, ptr %chan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %chan.0.i, %csi_chans
  br i1 %cmp.not.i, label %if.end6, label %for.body.i21

for.body.i21:                                     ; preds = %for.cond.i
  %csi1.i.i20 = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 4
  %33 = ptrtoint ptr %csi1.i.i20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %csi1.i.i20, align 4
  %format.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 10
  %code.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 10, i32 2
  %35 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 12303, ptr %code.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 10, i32 3
  %36 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %field.i.i, align 4
  %colorspace.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 10, i32 4
  %37 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %colorspace.i.i, align 4
  %38 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1920, ptr %format.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 10, i32 1
  %39 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1080, ptr %height.i.i, align 4
  %soc.i.i.i = getelementptr inbounds %struct.tegra_csi, ptr %34, i32 0, i32 4
  %40 = ptrtoint ptr %soc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %soc.i.i.i, align 4
  %tpg_frmrate_table.i.i.i = getelementptr inbounds %struct.tegra_csi_soc, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %tpg_frmrate_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tpg_frmrate_table.i.i.i, align 4
  %tpg_frmrate_table_size.i.i.i.i = getelementptr inbounds %struct.tegra_csi_soc, ptr %41, i32 0, i32 5
  %44 = ptrtoint ptr %tpg_frmrate_table_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tpg_frmrate_table_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp21.not.i.i.i.i = icmp eq i32 %45, 0
  br i1 %cmp21.not.i.i.i.i, label %for.body.i21.csi_chan_update_blank_intervals.exit.i.i_crit_edge, label %for.body.i21.for.body.i.i.i.i_crit_edge

for.body.i21.for.body.i.i.i.i_crit_edge:          ; preds = %for.body.i21
  br label %for.body.i.i.i.i

for.body.i21.csi_chan_update_blank_intervals.exit.i.i_crit_edge: ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %csi_chan_update_blank_intervals.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i21.for.body.i.i.i.i_crit_edge
  %i.022.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.body.i21.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.tpg_framerate, ptr %43, i32 %i.022.i.i.i.i
  %code2.i.i.i.i = getelementptr %struct.tpg_framerate, ptr %43, i32 %i.022.i.i.i.i, i32 1
  %46 = ptrtoint ptr %code2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %code2.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12303, i32 %47)
  %cmp3.i.i.i.i = icmp eq i32 %47, 12303
  br i1 %cmp3.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %48 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %49)
  %cmp6.i.i.i.i = icmp eq i32 %49, 1920
  br i1 %cmp6.i.i.i.i, label %land.lhs.true7.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i.i

land.lhs.true7.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %height10.i.i.i.i = getelementptr inbounds %struct.v4l2_frmsize_discrete, ptr %arrayidx.i.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %height10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height10.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1080, i32 %51)
  %cmp11.i.i.i.i = icmp eq i32 %51, 1080
  br i1 %cmp11.i.i.i.i, label %csi_get_frmrate_table_index.exit.i.i.i, label %land.lhs.true7.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true7.i.i.i.i.for.inc.i.i.i.i_crit_edge: ; preds = %land.lhs.true7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true7.i.i.i.i.for.inc.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %inc.i.i.i.i = add nuw i32 %i.022.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %45
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.csi_chan_update_blank_intervals.exit.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.csi_chan_update_blank_intervals.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %csi_chan_update_blank_intervals.exit.i.i

csi_get_frmrate_table_index.exit.i.i.i:           ; preds = %land.lhs.true7.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.022.i.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %i.022.i.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %csi_get_frmrate_table_index.exit.i.i.i.csi_chan_update_blank_intervals.exit.i.i_crit_edge

csi_get_frmrate_table_index.exit.i.i.i.csi_chan_update_blank_intervals.exit.i.i_crit_edge: ; preds = %csi_get_frmrate_table_index.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %csi_chan_update_blank_intervals.exit.i.i

if.then.i.i.i:                                    ; preds = %csi_get_frmrate_table_index.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %h_blank.i.i.i = getelementptr %struct.tpg_framerate, ptr %43, i32 %i.022.i.i.i.i, i32 2
  %52 = ptrtoint ptr %h_blank.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %h_blank.i.i.i, align 4
  %h_blank3.i.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 12
  %54 = ptrtoint ptr %h_blank3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %h_blank3.i.i.i, align 4
  %v_blank.i.i.i = getelementptr %struct.tpg_framerate, ptr %43, i32 %i.022.i.i.i.i, i32 3
  %55 = ptrtoint ptr %v_blank.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %v_blank.i.i.i, align 4
  %v_blank5.i.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 13
  %57 = ptrtoint ptr %v_blank5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %v_blank5.i.i.i, align 4
  %framerate.i.i.i = getelementptr %struct.tpg_framerate, ptr %43, i32 %i.022.i.i.i.i, i32 4
  %58 = ptrtoint ptr %framerate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %framerate.i.i.i, align 4
  %framerate7.i.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 11
  %60 = ptrtoint ptr %framerate7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %framerate7.i.i.i, align 4
  br label %csi_chan_update_blank_intervals.exit.i.i

csi_chan_update_blank_intervals.exit.i.i:         ; preds = %if.then.i.i.i, %csi_get_frmrate_table_index.exit.i.i.i.csi_chan_update_blank_intervals.exit.i.i_crit_edge, %for.inc.i.i.i.i.csi_chan_update_blank_intervals.exit.i.i_crit_edge, %for.body.i21.csi_chan_update_blank_intervals.exit.i.i_crit_edge
  %subdev12.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 1
  tail call void @v4l2_subdev_init(ptr noundef %subdev12.i.i, ptr noundef nonnull @tegra_csi_ops) #11
  %61 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %34, align 4
  %dev13.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 1, i32 14
  %63 = ptrtoint ptr %dev13.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %dev13.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 1, i32 9
  %csi_port_nums.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 8
  %64 = ptrtoint ptr %csi_port_nums.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %csi_port_nums.i.i, align 4
  %conv.i.i = zext i8 %65 to i32
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i.i, i32 noundef 32, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %conv.i.i) #11
  %dev_priv.i.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 1, i32 11
  %66 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %chan.0.i, ptr %dev_priv.i.i.i, align 4
  %of_node.i.i22 = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 5
  %67 = ptrtoint ptr %of_node.i.i22 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %of_node.i.i22, align 4
  %tobool.not.i.i23 = icmp eq ptr %68, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %68, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i23, ptr null, ptr %fwnode.i.i
  %fwnode14.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 1, i32 15
  %69 = ptrtoint ptr %fwnode14.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %spec.select.i.i, ptr %fwnode14.i.i, align 4
  %function.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 1, i32 0, i32 3
  %70 = ptrtoint ptr %function.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 20482, ptr %function.i.i, align 4
  %numpads.i.i24 = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 3
  %71 = ptrtoint ptr %numpads.i.i24 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %numpads.i.i24, align 4
  %conv16.i.i = trunc i32 %72 to i16
  %pads.i.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 2
  %call18.i.i = tail call i32 @media_entity_pads_init(ptr noundef %subdev12.i.i, i16 noundef zeroext %conv16.i.i, ptr noundef %pads.i.i) #11
  %cmp.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp.i.i, label %tegra_csi_channels_init.exit.thread, label %csi_chan_update_blank_intervals.exit.i.i.for.cond.i_crit_edge

csi_chan_update_blank_intervals.exit.i.i.for.cond.i_crit_edge: ; preds = %csi_chan_update_blank_intervals.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

tegra_csi_channels_init.exit.thread:              ; preds = %csi_chan_update_blank_intervals.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev13.i.i.le = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.0.i, i32 0, i32 1, i32 14
  %73 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.19, i32 noundef %call18.i.i) #14
  %75 = ptrtoint ptr %dev13.i.i.le to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %dev13.i.i.le, align 4
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr.i, align 4
  %78 = ptrtoint ptr %csi_port_nums.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %csi_port_nums.i.i, align 4
  %conv.i = zext i8 %79 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.15, i32 noundef %conv.i, i32 noundef %call18.i.i) #14
  br label %cleanup

if.end6:                                          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %csi7 = getelementptr inbounds %struct.tegra_video_device, ptr %3, i32 0, i32 3
  %80 = ptrtoint ptr %csi7 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr.i, ptr %csi7, align 4
  br label %cleanup8

cleanup:                                          ; preds = %tegra_csi_channels_init.exit.thread, %do.end
  %ret.0 = phi i32 [ -12, %do.end ], [ %call18.i.i, %tegra_csi_channels_init.exit.thread ]
  %81 = ptrtoint ptr %csi_chans to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %csi_chans, align 4
  %cmp.not29.i = icmp eq ptr %82, %csi_chans
  br i1 %cmp.not29.i, label %cleanup.cleanup8_crit_edge, label %cleanup.for.body.i27_crit_edge

cleanup.for.body.i27_crit_edge:                   ; preds = %cleanup
  br label %for.body.i27

cleanup.cleanup8_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup8

for.body.i27:                                     ; preds = %list_del.exit.i.for.body.i27_crit_edge, %cleanup.for.body.i27_crit_edge
  %chan.030.i = phi ptr [ %tmp.032.i, %list_del.exit.i.for.body.i27_crit_edge ], [ %82, %cleanup.for.body.i27_crit_edge ]
  %83 = ptrtoint ptr %chan.030.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %tmp.032.i = load ptr, ptr %chan.030.i, align 4
  %mipi.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.030.i, i32 0, i32 14
  %84 = ptrtoint ptr %mipi.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mipi.i, align 4
  %tobool.not.i = icmp eq ptr %85, null
  br i1 %tobool.not.i, label %for.body.i27.if.end12.i_crit_edge, label %if.then.i

for.body.i27.if.end12.i_crit_edge:                ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then.i:                                        ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tegra_mipi_free(ptr noundef nonnull %85) #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then.i, %for.body.i27.if.end12.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %chan.030.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end12.i.list_del.exit.i_crit_edge

if.end12.i.list_del.exit.i_crit_edge:             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i28 = getelementptr inbounds %struct.list_head, ptr %chan.030.i, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i.i28, align 4
  %88 = ptrtoint ptr %chan.030.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chan.030.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end12.i.list_del.exit.i_crit_edge
  %92 = ptrtoint ptr %chan.030.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 256 to ptr), ptr %chan.030.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %chan.030.i, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %chan.030.i) #11
  %cmp.not.i29 = icmp eq ptr %tmp.032.i, %csi_chans
  br i1 %cmp.not.i29, label %list_del.exit.i.cleanup8_crit_edge, label %list_del.exit.i.for.body.i27_crit_edge

list_del.exit.i.for.body.i27_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i27

list_del.exit.i.cleanup8_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup8

cleanup8:                                         ; preds = %list_del.exit.i.cleanup8_crit_edge, %cleanup.cleanup8_crit_edge, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %ret.0, %cleanup.cleanup8_crit_edge ], [ %ret.0, %list_del.exit.i.cleanup8_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_csi_exit(ptr noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %csi_chans.i = getelementptr i8, ptr %client, i32 256
  %0 = ptrtoint ptr %csi_chans.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csi_chans.i, align 4
  %cmp.not29.i = icmp eq ptr %1, %csi_chans.i
  br i1 %cmp.not29.i, label %entry.tegra_csi_channels_cleanup.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.tegra_csi_channels_cleanup.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_csi_channels_cleanup.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %chan.030.i = phi ptr [ %tmp.032.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %chan.030.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.032.i = load ptr, ptr %chan.030.i, align 4
  %mipi.i = getelementptr inbounds %struct.tegra_csi_channel, ptr %chan.030.i, i32 0, i32 14
  %3 = ptrtoint ptr %mipi.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mipi.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %for.body.i.if.end12.i_crit_edge, label %if.then.i

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tegra_mipi_free(ptr noundef nonnull %4) #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then.i, %for.body.i.if.end12.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %chan.030.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end12.i.list_del.exit.i_crit_edge

if.end12.i.list_del.exit.i_crit_edge:             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %chan.030.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %chan.030.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan.030.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end12.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %chan.030.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %chan.030.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %chan.030.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %chan.030.i) #11
  %cmp.not.i = icmp eq ptr %tmp.032.i, %csi_chans.i
  br i1 %cmp.not.i, label %list_del.exit.i.tegra_csi_channels_cleanup.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.tegra_csi_channels_cleanup.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_csi_channels_cleanup.exit

tegra_csi_channels_cleanup.exit:                  ; preds = %list_del.exit.i.tegra_csi_channels_cleanup.exit_crit_edge, %entry.tegra_csi_channels_cleanup.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_csi_s_stream(ptr noundef %subdev, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %host_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 12
  %0 = ptrtoint ptr %host_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_priv.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %subdev, i32 -8
  %csi2.i = getelementptr i8, ptr %subdev, i32 264
  %2 = ptrtoint ptr %csi2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csi2.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i

if.then.i.i:                                      ; preds = %if.then
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #11, !srcloc !100
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.do.end.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.do.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !101
  br label %do.end.i

do.end.i:                                         ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.do.end.i_crit_edge
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef %call.i.i) #14
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %mipi.i = getelementptr i8, ptr %subdev, i32 344
  %9 = ptrtoint ptr %mipi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mipi.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i.if.end24.i_crit_edge, label %if.then5.i

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then5.i:                                       ; preds = %if.end.i
  %call7.i = tail call i32 @tegra_mipi_enable(ptr noundef nonnull %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %do.end12.i, label %if.end14.i

do.end12.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.24, i32 noundef %call7.i) #14
  br label %rpm_put.i

if.end14.i:                                       ; preds = %if.then5.i
  %13 = ptrtoint ptr %mipi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mipi.i, align 4
  %call16.i = tail call i32 @tegra_mipi_start_calibration(ptr noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %do.end21.i, label %if.end14.i.if.end24.i_crit_edge

if.end14.i.if.end24.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

do.end21.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.27, i32 noundef %call16.i) #14
  br label %disable_mipi.i

if.end24.i:                                       ; preds = %if.end14.i.if.end24.i_crit_edge, %if.end.i.if.end24.i_crit_edge
  %pg_mode.i = getelementptr inbounds %struct.tegra_vi_channel, ptr %1, i32 0, i32 28
  %17 = ptrtoint ptr %pg_mode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pg_mode.i, align 4
  %conv.i = trunc i32 %18 to i8
  %pg_mode25.i = getelementptr i8, ptr %subdev, i32 282
  %19 = ptrtoint ptr %pg_mode25.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %pg_mode25.i, align 2
  %ops.i = getelementptr inbounds %struct.tegra_csi, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call26.i = tail call i32 %23(ptr noundef %add.ptr.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %finish_calibration.i, label %if.end24.i.if.end_crit_edge

if.end24.i.if.end_crit_edge:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

finish_calibration.i:                             ; preds = %if.end24.i
  %24 = ptrtoint ptr %mipi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mipi.i, align 4
  %tobool32.not.i = icmp eq ptr %25, null
  br i1 %tobool32.not.i, label %finish_calibration.i.rpm_put.i_crit_edge, label %if.then33.i

finish_calibration.i.rpm_put.i_crit_edge:         ; preds = %finish_calibration.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpm_put.i

if.then33.i:                                      ; preds = %finish_calibration.i
  call void @__sanitizer_cov_trace_pc() #13
  %call35.i = tail call i32 @tegra_mipi_finish_calibration(ptr noundef nonnull %25) #11
  br label %disable_mipi.i

disable_mipi.i:                                   ; preds = %if.then33.i, %do.end21.i
  %ret.0.ph.i = phi i32 [ %call26.i, %if.then33.i ], [ %call16.i, %do.end21.i ]
  %26 = ptrtoint ptr %mipi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i = load ptr, ptr %mipi.i, align 4
  %tobool38.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool38.not.i, label %disable_mipi.i.rpm_put.i_crit_edge, label %if.then39.i

disable_mipi.i.rpm_put.i_crit_edge:               ; preds = %disable_mipi.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpm_put.i

if.then39.i:                                      ; preds = %disable_mipi.i
  %call41.i = tail call i32 @tegra_mipi_disable(ptr noundef nonnull %.pr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %do.end47.i, label %if.then39.i.rpm_put.i_crit_edge

if.then39.i.rpm_put.i_crit_edge:                  ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpm_put.i

do.end47.i:                                       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.30, i32 noundef %call41.i) #14
  br label %rpm_put.i

rpm_put.i:                                        ; preds = %do.end47.i, %if.then39.i.rpm_put.i_crit_edge, %disable_mipi.i.rpm_put.i_crit_edge, %finish_calibration.i.rpm_put.i_crit_edge, %do.end12.i
  %ret.1.i = phi i32 [ %call7.i, %do.end12.i ], [ %ret.0.ph.i, %do.end47.i ], [ %ret.0.ph.i, %if.then39.i.rpm_put.i_crit_edge ], [ %ret.0.ph.i, %disable_mipi.i.rpm_put.i_crit_edge ], [ %call26.i, %finish_calibration.i.rpm_put.i_crit_edge ]
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %call.i84.i = tail call i32 @__pm_runtime_idle(ptr noundef %30, i32 noundef 5) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %add.ptr.i.i3 = getelementptr i8, ptr %subdev, i32 -8
  %csi1.i = getelementptr i8, ptr %subdev, i32 264
  %31 = ptrtoint ptr %csi1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %csi1.i, align 4
  %ops.i4 = getelementptr inbounds %struct.tegra_csi, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %ops.i4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i4, align 4
  %csi_stop_streaming.i = getelementptr inbounds %struct.tegra_csi_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %csi_stop_streaming.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %csi_stop_streaming.i, align 4
  tail call void %36(ptr noundef %add.ptr.i.i3) #11
  %mipi.i5 = getelementptr i8, ptr %subdev, i32 344
  %37 = ptrtoint ptr %mipi.i5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mipi.i5, align 4
  %tobool.not.i6 = icmp eq ptr %38, null
  br i1 %tobool.not.i6, label %if.else.tegra_csi_disable_stream.exit_crit_edge, label %if.then.i

if.else.tegra_csi_disable_stream.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_csi_disable_stream.exit

if.then.i:                                        ; preds = %if.else
  %call3.i = tail call i32 @tegra_mipi_disable(ptr noundef nonnull %38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end.i7, label %if.then.i.tegra_csi_disable_stream.exit_crit_edge

if.then.i.tegra_csi_disable_stream.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_csi_disable_stream.exit

do.end.i7:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.30, i32 noundef %call3.i) #14
  br label %tegra_csi_disable_stream.exit

tegra_csi_disable_stream.exit:                    ; preds = %do.end.i7, %if.then.i.tegra_csi_disable_stream.exit_crit_edge, %if.else.tegra_csi_disable_stream.exit_crit_edge
  %41 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %32, align 4
  %call.i.i8 = tail call i32 @__pm_runtime_idle(ptr noundef %42, i32 noundef 5) #11
  br label %if.end

if.end:                                           ; preds = %tegra_csi_disable_stream.exit, %rpm_put.i, %if.end24.i.if.end_crit_edge, %do.end.i
  %ret.0 = phi i32 [ 0, %tegra_csi_disable_stream.exit ], [ %call.i.i, %do.end.i ], [ %ret.1.i, %rpm_put.i ], [ 0, %if.end24.i.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_csi_g_frame_interval(ptr nocapture noundef readonly %subdev, ptr nocapture noundef writeonly %vfi) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %vfi, i32 0, i32 1
  %0 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %interval, align 4
  %framerate = getelementptr i8, ptr %subdev, i32 332
  %1 = ptrtoint ptr %framerate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %framerate, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %vfi, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %denominator, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mipi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mipi_start_calibration(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mipi_finish_calibration(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mipi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @csi_enum_bus_code(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %code2 = getelementptr [2 x %struct.v4l2_mbus_framefmt], ptr @tegra_csi_tpg_fmts, i32 0, i32 %1, i32 2
  %2 = ptrtoint ptr %code2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code2, align 4
  %code3 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %code3, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_enum_framesizes(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %for.cond.preheader.cleanup_crit_edge [
    i32 12303, label %for.cond.preheader.if.end8_crit_edge
    i32 4111, label %for.cond.preheader.if.end8_crit_edge34
  ]

for.cond.preheader.if.end8_crit_edge34:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %for.cond.preheader.if.end8_crit_edge, %for.cond.preheader.if.end8_crit_edge34
  %arrayidx10 = getelementptr [3 x %struct.v4l2_frmsize_discrete], ptr @tegra_csi_tpg_sizes, i32 0, i32 %1
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx10, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %7 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %8 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %max_width, align 4
  %height = getelementptr [3 x %struct.v4l2_frmsize_discrete], ptr @tegra_csi_tpg_sizes, i32 0, i32 %1, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %11 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %12 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_enum_frameintervals(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fie) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %csi1 = getelementptr i8, ptr %subdev, i32 264
  %0 = ptrtoint ptr %csi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csi1, align 4
  %soc = getelementptr inbounds %struct.tegra_csi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %tpg_frmrate_table = getelementptr inbounds %struct.tegra_csi_soc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %tpg_frmrate_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tpg_frmrate_table, align 4
  %6 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %code, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %tpg_frmrate_table_size.i = getelementptr inbounds %struct.tegra_csi_soc, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %tpg_frmrate_table_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tpg_frmrate_table_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp21.not.i = icmp eq i32 %15, 0
  br i1 %cmp21.not.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tpg_framerate, ptr %5, i32 %i.022.i
  %code2.i = getelementptr %struct.tpg_framerate, ptr %5, i32 %i.022.i, i32 1
  %16 = ptrtoint ptr %code2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %code2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp3.i = icmp eq i32 %17, %9
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %11)
  %cmp6.i = icmp eq i32 %19, %11
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %height10.i = getelementptr inbounds %struct.v4l2_frmsize_discrete, ptr %arrayidx.i, i32 0, i32 1
  %20 = ptrtoint ptr %height10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %13)
  %cmp11.i = icmp eq i32 %21, %13
  br i1 %cmp11.i, label %csi_get_frmrate_table_index.exit, label %land.lhs.true7.i.for.inc.i_crit_edge

land.lhs.true7.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true7.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

csi_get_frmrate_table_index.exit:                 ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.022.i)
  %cmp5 = icmp slt i32 %i.022.i, 0
  br i1 %cmp5, label %csi_get_frmrate_table_index.exit.cleanup_crit_edge, label %if.end7

csi_get_frmrate_table_index.exit.cleanup_crit_edge: ; preds = %csi_get_frmrate_table_index.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %csi_get_frmrate_table_index.exit
  call void @__sanitizer_cov_trace_pc() #13
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %22 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %interval, align 4
  %framerate = getelementptr %struct.tpg_framerate, ptr %5, i32 %i.022.i, i32 4
  %23 = ptrtoint ptr %framerate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %framerate, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %csi_get_frmrate_table_index.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %csi_get_frmrate_table_index.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @csi_get_format(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef writeonly %fmt) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %format1 = getelementptr i8, ptr %subdev, i32 284
  %0 = call ptr @memcpy(ptr %format, ptr %format1, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_set_format(ptr nocapture noundef %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %0 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format1, align 4
  %call3 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @tegra_csi_tpg_sizes, i32 noundef 3, i32 noundef 8, i32 noundef 0, i32 noundef 4, i32 noundef %1, i32 noundef %1) #11
  %2 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call3, align 4
  %4 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_frmsize_discrete, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height6, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4111, i32 %9)
  %cond = icmp eq i32 %9, 4111
  %spec.select = zext i1 %cond to i32
  %code13 = getelementptr [2 x %struct.v4l2_mbus_framefmt], ptr @tegra_csi_tpg_fmts, i32 0, i32 %spec.select, i32 2
  %10 = ptrtoint ptr %code13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code13, align 4
  %12 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %field, align 4
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15 = icmp eq i32 %15, 0
  br i1 %cmp15, label %entry.cleanup_crit_edge, label %if.end17

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %entry
  %csi1.i = getelementptr i8, ptr %subdev, i32 264
  %16 = ptrtoint ptr %csi1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csi1.i, align 4
  %soc.i = getelementptr inbounds %struct.tegra_csi, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soc.i, align 4
  %tpg_frmrate_table.i = getelementptr inbounds %struct.tegra_csi_soc, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %tpg_frmrate_table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tpg_frmrate_table.i, align 4
  %tpg_frmrate_table_size.i.i = getelementptr inbounds %struct.tegra_csi_soc, ptr %19, i32 0, i32 5
  %22 = ptrtoint ptr %tpg_frmrate_table_size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tpg_frmrate_table_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp21.not.i.i = icmp eq i32 %23, 0
  br i1 %cmp21.not.i.i, label %if.end17.csi_chan_update_blank_intervals.exit_crit_edge, label %if.end17.for.body.i.i_crit_edge

if.end17.for.body.i.i_crit_edge:                  ; preds = %if.end17
  br label %for.body.i.i

if.end17.csi_chan_update_blank_intervals.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %csi_chan_update_blank_intervals.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end17.for.body.i.i_crit_edge
  %i.022.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end17.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tpg_framerate, ptr %21, i32 %i.022.i.i
  %code2.i.i = getelementptr %struct.tpg_framerate, ptr %21, i32 %i.022.i.i, i32 1
  %24 = ptrtoint ptr %code2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %code2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %11)
  %cmp3.i.i = icmp eq i32 %25, %11
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %3)
  %cmp6.i.i = icmp eq i32 %27, %3
  br i1 %cmp6.i.i, label %land.lhs.true7.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %height10.i.i = getelementptr inbounds %struct.v4l2_frmsize_discrete, ptr %arrayidx.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %height10.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height10.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %6)
  %cmp11.i.i = icmp eq i32 %29, %6
  br i1 %cmp11.i.i, label %csi_get_frmrate_table_index.exit.i, label %land.lhs.true7.i.i.for.inc.i.i_crit_edge

land.lhs.true7.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true7.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %23
  br i1 %exitcond.not.i.i, label %for.inc.i.i.csi_chan_update_blank_intervals.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.csi_chan_update_blank_intervals.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %csi_chan_update_blank_intervals.exit

csi_get_frmrate_table_index.exit.i:               ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.022.i.i)
  %cmp.i = icmp sgt i32 %i.022.i.i, -1
  br i1 %cmp.i, label %if.then.i, label %csi_get_frmrate_table_index.exit.i.csi_chan_update_blank_intervals.exit_crit_edge

csi_get_frmrate_table_index.exit.i.csi_chan_update_blank_intervals.exit_crit_edge: ; preds = %csi_get_frmrate_table_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %csi_chan_update_blank_intervals.exit

if.then.i:                                        ; preds = %csi_get_frmrate_table_index.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %h_blank.i = getelementptr %struct.tpg_framerate, ptr %21, i32 %i.022.i.i, i32 2
  %30 = ptrtoint ptr %h_blank.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %h_blank.i, align 4
  %h_blank3.i = getelementptr i8, ptr %subdev, i32 336
  %32 = ptrtoint ptr %h_blank3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %h_blank3.i, align 4
  %v_blank.i = getelementptr %struct.tpg_framerate, ptr %21, i32 %i.022.i.i, i32 3
  %33 = ptrtoint ptr %v_blank.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %v_blank.i, align 4
  %v_blank5.i = getelementptr i8, ptr %subdev, i32 340
  %35 = ptrtoint ptr %v_blank5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %v_blank5.i, align 4
  %framerate.i = getelementptr %struct.tpg_framerate, ptr %21, i32 %i.022.i.i, i32 4
  %36 = ptrtoint ptr %framerate.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %framerate.i, align 4
  %framerate7.i = getelementptr i8, ptr %subdev, i32 332
  %38 = ptrtoint ptr %framerate7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %framerate7.i, align 4
  br label %csi_chan_update_blank_intervals.exit

csi_chan_update_blank_intervals.exit:             ; preds = %if.then.i, %csi_get_frmrate_table_index.exit.i.csi_chan_update_blank_intervals.exit_crit_edge, %for.inc.i.i.csi_chan_update_blank_intervals.exit_crit_edge, %if.end17.csi_chan_update_blank_intervals.exit_crit_edge
  %format21 = getelementptr i8, ptr %subdev, i32 284
  %39 = call ptr @memcpy(ptr %format21, ptr %format1, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %csi_chan_update_blank_intervals.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_mipi_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc = getelementptr inbounds %struct.tegra_csi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %num_clks = getelementptr inbounds %struct.tegra_csi_soc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.tegra_csi, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %5, ptr noundef %7) #11
  tail call void @clk_bulk_unprepare(i32 noundef %5, ptr noundef %7) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc = getelementptr inbounds %struct.tegra_csi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %num_clks = getelementptr inbounds %struct.tegra_csi_soc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.tegra_csi, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %5, ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_bulk_prepare_enable.exit_crit_edge

entry.clk_bulk_prepare_enable.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_bulk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %5, ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_bulk_unprepare(i32 noundef %5, ptr noundef %7) #11
  br label %clk_bulk_prepare_enable.exit

clk_bulk_prepare_enable.exit:                     ; preds = %if.then3.i, %entry.clk_bulk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_bulk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_bulk_prepare_enable.exit.cleanup_crit_edge

clk_bulk_prepare_enable.exit.cleanup_crit_edge:   ; preds = %clk_bulk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %clk_bulk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.35, i32 noundef %retval.0.i) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %clk_bulk_prepare_enable.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ 0, %clk_bulk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !21, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !78, !79, !80, !82, !84, !86, !87, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 807, i32 12}
!2 = !{ptr @tegra_csi_driver, !3, !"tegra_csi_driver", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 805, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 742, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @tegra_csi_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @tegra_csi_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 748, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @tegra_csi_probe._entry.6, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @tegra_csi_probe._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @tegra_csi_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 762, i32 8}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 764, i32 3}
!21 = !{ptr @tegra_csi_probe._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @tegra_csi_probe._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @csi_client_ops, !24, !"csi_client_ops", i1 false, i1 false}
!24 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 711, i32 39}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 684, i32 3}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tegra_csi_init._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @tegra_csi_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 617, i32 4}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tegra_csi_channels_init._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @tegra_csi_channels_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 566, i32 49}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 566, i32 58}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 580, i32 3}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tegra_csi_channel_init._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @tegra_csi_channel_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @tegra_csi_ops, !45, !"tegra_csi_ops", i1 false, i1 false}
!45 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 402, i32 37}
!46 = !{ptr @tegra_csi_video_ops, !47, !"tegra_csi_video_ops", i1 false, i1 false}
!47 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 388, i32 43}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 303, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @tegra_csi_enable_stream._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @tegra_csi_enable_stream._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 310, i32 4}
!55 = !{ptr @tegra_csi_enable_stream._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @tegra_csi_enable_stream._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 324, i32 4}
!59 = !{ptr @tegra_csi_enable_stream._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tegra_csi_enable_stream._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 344, i32 4}
!63 = !{ptr @tegra_csi_enable_stream._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @tegra_csi_enable_stream._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 364, i32 4}
!67 = !{ptr @tegra_csi_disable_stream._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @tegra_csi_disable_stream._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @tegra_csi_pad_ops, !70, !"tegra_csi_pad_ops", i1 false, i1 false}
!70 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 394, i32 41}
!71 = !{ptr @tegra_csi_tpg_fmts, !72, !"tegra_csi_tpg_fmts", i1 false, i1 false}
!72 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 40, i32 40}
!73 = !{ptr @tegra_csi_tpg_sizes, !74, !"tegra_csi_tpg_sizes", i1 false, i1 false}
!74 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 57, i32 43}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 783, i32 3}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @tegra_csi_remove._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @tegra_csi_remove._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @tegra_csi_of_id_table, !81, !"tegra_csi_of_id_table", i1 false, i1 false}
!81 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 793, i32 34}
!82 = !{ptr @tegra_csi_pm_ops, !83, !"tegra_csi_pm_ops", i1 false, i1 false}
!83 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 801, i32 32}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/media/tegra-video/csi.c", i32 664, i32 3}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @csi_runtime_resume._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @csi_runtime_resume._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{i64 2148257499}
!100 = !{i64 742322, i64 742347, i64 742369, i64 742385, i64 742397, i64 742417, i64 742441, i64 742457, i64 742469}
!101 = !{i64 2148257687}
