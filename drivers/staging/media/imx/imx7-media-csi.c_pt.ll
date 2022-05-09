; ModuleID = '/llk/IR_all_yes/drivers/staging/media/imx/imx7-media-csi.c_pt.bc'
source_filename = "../drivers/staging/media/imx/imx7-media-csi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.imx7_csi = type { ptr, %struct.v4l2_subdev, %struct.v4l2_async_notifier, ptr, ptr, [2 x %struct.media_pad], %struct.mutex, %struct.spinlock, ptr, [2 x %struct.v4l2_mbus_framefmt], [2 x ptr], [2 x %struct.v4l2_fract], ptr, i32, ptr, [2 x ptr], %struct.imx_media_dma_buf, i32, i32, i8, i8, i8, %struct.completion }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.v4l2_fract = type { i32, i32 }
%struct.imx_media_dma_buf = type { ptr, i32, i32 }
%struct.imx_media_dev = type { %struct.media_device, %struct.v4l2_device, %struct.media_pipeline, %struct.mutex, %struct.list_head, [2 x ptr], %struct.v4l2_async_notifier, ptr, [2 x [6 x ptr]] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.imx_media_video_dev = type { ptr, %struct.v4l2_pix_format, %struct.v4l2_rect, ptr, %struct.list_head }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.imx_media_pixfmt = type { i32, ptr, i32, i32, i32, i8, i8, i8 }

@__initcall__kmod_imx7_media_csi__316_1266_imx7_csi_driver_init6 = internal global ptr @imx7_csi_driver_init, section ".initcall6.init", align 4
@imx7_csi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx7_csi_probe, ptr @imx7_csi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx7_csi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx7_csi_driver_exit = internal global ptr @imx7_csi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description317 = internal constant [51 x i8] c"imx7_media_csi.description=i.MX7 CSI subdev driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author318 = internal constant [62 x i8] c"imx7_media_csi.author=Rui Miguel Silva <rui.silva@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file319 = internal constant [61 x i8] c"imx7_media_csi.file=drivers/staging/media/imx/imx7-media-csi\00", section ".modinfo", align 1
@__UNIQUE_ID_license320 = internal constant [30 x i8] c"imx7_media_csi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias321 = internal constant [39 x i8] c"imx7_media_csi.alias=platform:imx7-csi\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx7-csi\00", [23 x i8] zeroinitializer }, align 32
@imx7_csi_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7-csi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-csi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@imx7_csi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1146, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get mclk: %d\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx7_csi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/media/imx/imx7-media-csi.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx7_csi_probe._entry_ptr = internal global ptr @imx7_csi_probe._entry, section ".printk_index", align 4
@imx7_csi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&csi->irqlock\00", [18 x i8] zeroinitializer }, align 32
@imx7_csi_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&csi->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csi\00", [28 x i8] zeroinitializer }, align 32
@imx7_csi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1165, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Request CSI IRQ failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@imx7_csi_probe._entry_ptr.13 = internal global ptr @imx7_csi_probe._entry.11, section ".printk_index", align 4
@imx7_csi_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @imx7_csi_video_ops, ptr null, ptr null, ptr null, ptr @imx7_csi_pad_ops }, [32 x i8] zeroinitializer }, align 32
@imx7_csi_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @imx7_csi_registered, ptr @imx7_csi_unregistered, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@imx7_csi_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr @v4l2_subdev_get_fwnode_pad_1_to_1, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@imx7_csi_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 623, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Rx fifo overflow\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx7_csi_irq_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx7_csi_irq_handler._entry_ptr = internal global ptr @imx7_csi_irq_handler._entry, section ".printk_index", align 4
@imx7_csi_irq_handler._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.4, i32 628, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Hresponse error detected\0A\00", [38 x i8] zeroinitializer }, align 32
@imx7_csi_irq_handler._entry_ptr.19 = internal global ptr @imx7_csi_irq_handler._entry.17, section ".printk_index", align 4
@imx7_csi_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx7_csi_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@imx7_csi_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @imx7_csi_init_cfg, ptr @imx7_csi_enum_mbus_code, ptr null, ptr null, ptr @imx7_csi_get_fmt, ptr @imx7_csi_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx7_csi_pad_link_validate, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@imx7_csi_dma_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: consider increasing the CMA area\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx7_csi_dma_setup\00", [45 x i8] zeroinitializer }, align 32
@imx7_csi_dma_setup._entry_ptr = internal global ptr @imx7_csi_dma_setup._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@imx7_csi_dma_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: wait last EOF timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx7_csi_dma_stop\00", [46 x i8] zeroinitializer }, align 32
@imx7_csi_dma_stop._entry_ptr = internal global ptr @imx7_csi_dma_stop._entry, section ".printk_index", align 4
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@imx7_csi_pad_link_validate.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 0, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx7_media_csi\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"imx7_csi_pad_link_validate\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid capture pixel format 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@imx7_csi_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @imx7_csi_notify_bound, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967279]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.30 = internal global [26 x i64] [i64 24, i64 32, i64 8193, i64 8198, i64 8200, i64 8202, i64 8207, i64 8209, i64 8211, i64 8237, i64 12289, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308, i64 12313, i64 12314, i64 12315, i64 12316]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 20481, i64 20482]
@__sancov_gen_cov_switch_values.33 = internal global [15 x i64] [i64 13, i64 32, i64 540029273, i64 540160345, i64 825770306, i64 844257602, i64 909197895, i64 909199186, i64 909201991, i64 1111967570, i64 1195528775, i64 1196573255, i64 1448695129, i64 1497715271, i64 1498831189]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"imx7_csi_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1258, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1263, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"imx7_csi_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1251, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1143, i32 39 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1146, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1158, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1159, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1162, i32 65 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1165, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"imx7_csi_subdev_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1049, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"imx7_csi_internal_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1054, i32 46 }
@___asan_gen_.92 = private unnamed_addr constant [20 x i8] c"imx7_csi_entity_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1063, i32 45 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 623, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 628, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"imx7_csi_video_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1037, i32 43 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"imx7_csi_pad_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1041, i32 41 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 377, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 87, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 415, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 998, i32 6 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 989, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c"imx7_csi_notify_ops\00", align 1
@___asan_gen_.156 = private constant [46 x i8] c"../drivers/staging/media/imx/imx7-media-csi.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1092, i32 52 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias321, ptr @__UNIQUE_ID_author318, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_file319, ptr @__UNIQUE_ID_license320, ptr @__exitcall_imx7_csi_driver_exit, ptr @__initcall__kmod_imx7_media_csi__316_1266_imx7_csi_driver_init6, ptr @imx7_csi_dma_setup._entry, ptr @imx7_csi_dma_setup._entry_ptr, ptr @imx7_csi_dma_stop._entry, ptr @imx7_csi_dma_stop._entry_ptr, ptr @imx7_csi_driver_exit, ptr @imx7_csi_irq_handler._entry, ptr @imx7_csi_irq_handler._entry.17, ptr @imx7_csi_irq_handler._entry_ptr, ptr @imx7_csi_irq_handler._entry_ptr.19, ptr @imx7_csi_probe._entry, ptr @imx7_csi_probe._entry.11, ptr @imx7_csi_probe._entry_ptr, ptr @imx7_csi_probe._entry_ptr.13, ptr @imx7_csi_driver, ptr @.str, ptr @imx7_csi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @imx7_csi_probe.__key, ptr @.str.7, ptr @imx7_csi_probe.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @imx7_csi_subdev_ops, ptr @imx7_csi_internal_ops, ptr @imx7_csi_entity_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @imx7_csi_video_ops, ptr @imx7_csi_pad_ops, ptr @.str.20, ptr @.str.21, ptr @init_completion.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @imx7_csi_notify_ops], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_irq_handler._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_dma_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_dma_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_csi_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_csi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx7_csi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx7_csi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx7_csi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_csi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 680, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup90_crit_edge, label %if.end

entry.cleanup90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup90

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %call5 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %mclk = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 14
  %3 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %4) #9
  br label %cleanup90

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 13
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call12, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.cleanup90_crit_edge, label %if.end16

if.end11.cleanup90_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup90

if.end16:                                         ; preds = %if.end11
  %call17 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %regbase = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 12
  %6 = ptrtoint ptr %regbase to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %regbase, align 4
  %cmp.i163 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %if.then20, label %do.body24

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call17 to i32
  br label %cleanup90

do.body24:                                        ; preds = %if.end16
  %irqlock = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.7, ptr noundef nonnull @imx7_csi_probe.__key, i16 noundef signext 3) #6
  %lock = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @imx7_csi_probe.__key.8) #6
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call.i164 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %9, ptr noundef nonnull @imx7_csi_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %cmp33 = icmp slt i32 %call.i164, 0
  br i1 %cmp33, label %do.end37, label %if.end38

do.end37:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  br label %destroy_mutex

if.end38:                                         ; preds = %do.body24
  %call39 = tail call ptr @imx_media_dev_init(ptr noundef %dev1, ptr noundef null) #6
  %cmp.i165 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call39 to i32
  br label %destroy_mutex

if.end43:                                         ; preds = %if.end38
  %sd = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 1
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sd, ptr %driver_data.i.i, align 4
  %call44 = tail call i32 @imx_media_of_add_csi(ptr noundef %call39, ptr noundef %1) #6
  %call44.fr = freeze i32 %call44
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call44.fr)
  %cmp45 = icmp sgt i32 %call44.fr, -1
  br i1 %cmp45, label %if.end43.if.end50_crit_edge, label %switch.early.test

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

switch.early.test:                                ; preds = %if.end43
  %12 = zext i32 %call44.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call44.fr, label %switch.early.test.cleanup_crit_edge [
    i32 -17, label %switch.early.test.if.end50_crit_edge
    i32 -19, label %switch.early.test.if.end50_crit_edge171
  ]

switch.early.test.if.end50_crit_edge171:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

switch.early.test.if.end50_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %switch.early.test.if.end50_crit_edge, %switch.early.test.if.end50_crit_edge171, %if.end43.if.end50_crit_edge
  %call51 = tail call i32 @imx_media_dev_notifier_register(ptr noundef %call39, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end50.cleanup_crit_edge, label %if.end54

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %imxmd55 = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %imxmd55 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call39, ptr %imxmd55, align 4
  tail call void @v4l2_subdev_init(ptr noundef %sd, ptr noundef nonnull @imx7_csi_subdev_ops) #6
  %dev_priv.i = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 1, i32 11
  %14 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %dev_priv.i, align 4
  %internal_ops = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 1, i32 7
  %15 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @imx7_csi_internal_ops, ptr %internal_ops, align 4
  %ops = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 1, i32 0, i32 11
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @imx7_csi_entity_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 20482, ptr %function, align 4
  %dev64 = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 1, i32 14
  %18 = ptrtoint ptr %dev64 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev1, ptr %dev64, align 4
  %owner = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %owner, align 4
  %flags = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %flags, align 4
  %grp_id = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 1, i32 10
  %21 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 512, ptr %grp_id, align 4
  %name = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 1, i32 9
  %22 = ptrtoint ptr %name to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 1668507904, ptr %name, align 1
  %flags72 = getelementptr %struct.imx7_csi, ptr %call.i, i32 0, i32 5, i32 0, i32 4
  %23 = ptrtoint ptr %flags72 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %flags72, align 4
  %flags72.1 = getelementptr %struct.imx7_csi, ptr %call.i, i32 0, i32 5, i32 1, i32 4
  %24 = ptrtoint ptr %flags72.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %flags72.1, align 4
  %pad75 = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 5
  %call77 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 2, ptr noundef %pad75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.end54.cleanup_crit_edge, label %if.end80

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end80:                                         ; preds = %if.end54
  %notifier.i = getelementptr inbounds %struct.imx7_csi, ptr %call.i, i32 0, i32 2
  tail call void @v4l2_async_nf_init(ptr noundef %notifier.i) #6
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %call.i166 = tail call ptr @dev_fwnode(ptr noundef %26) #6
  %call1.i = tail call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call.i166, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end80.if.end9.i_crit_edge, label %if.then.i

if.end80.if.end9.i_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then.i:                                        ; preds = %if.end80
  %call3.i = tail call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier.i, ptr noundef nonnull %call1.i, i32 noundef 28) #6
  tail call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #6
  %cmp.i.i = icmp ule ptr %call3.i, inttoptr (i32 -4096 to ptr)
  %27 = ptrtoint ptr %call3.i to i32
  %cmp.not.i = icmp eq ptr %call3.i, inttoptr (i32 -17 to ptr)
  %or.cond.i = or i1 %cmp.i.i, %cmp.not.i
  br i1 %or.cond.i, label %if.then.i.if.end9.i_crit_edge, label %if.then.i.imx7_csi_async_register.exit_crit_edge

if.then.i.imx7_csi_async_register.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx7_csi_async_register.exit

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i.if.end9.i_crit_edge, %if.end80.if.end9.i_crit_edge
  %28 = ptrtoint ptr %notifier.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @imx7_csi_notify_ops, ptr %notifier.i, align 4
  %call12.i = tail call i32 @v4l2_async_subdev_nf_register(ptr noundef %sd, ptr noundef %notifier.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end9.i.subdev_notifier_cleanup_crit_edge

if.end9.i.subdev_notifier_cleanup_crit_edge:      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %subdev_notifier_cleanup

if.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %call17.i = tail call i32 @v4l2_async_register_subdev(ptr noundef %sd) #6
  br label %imx7_csi_async_register.exit

imx7_csi_async_register.exit:                     ; preds = %if.end15.i, %if.then.i.imx7_csi_async_register.exit_crit_edge
  %retval.0.i = phi i32 [ %call17.i, %if.end15.i ], [ %27, %if.then.i.imx7_csi_async_register.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool82.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool82.not, label %imx7_csi_async_register.exit.cleanup90_crit_edge, label %imx7_csi_async_register.exit.subdev_notifier_cleanup_crit_edge

imx7_csi_async_register.exit.subdev_notifier_cleanup_crit_edge: ; preds = %imx7_csi_async_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %subdev_notifier_cleanup

imx7_csi_async_register.exit.cleanup90_crit_edge: ; preds = %imx7_csi_async_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup90

subdev_notifier_cleanup:                          ; preds = %imx7_csi_async_register.exit.subdev_notifier_cleanup_crit_edge, %if.end9.i.subdev_notifier_cleanup_crit_edge
  %retval.0.i169 = phi i32 [ %retval.0.i, %imx7_csi_async_register.exit.subdev_notifier_cleanup_crit_edge ], [ %call12.i, %if.end9.i.subdev_notifier_cleanup_crit_edge ]
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier.i) #6
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i) #6
  br label %cleanup

cleanup:                                          ; preds = %subdev_notifier_cleanup, %if.end54.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge
  %ret.0 = phi i32 [ %call51, %if.end50.cleanup_crit_edge ], [ %call77, %if.end54.cleanup_crit_edge ], [ %retval.0.i169, %subdev_notifier_cleanup ], [ %call44.fr, %switch.early.test.cleanup_crit_edge ]
  %notifier86 = getelementptr inbounds %struct.imx_media_dev, ptr %call39, i32 0, i32 6
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier86) #6
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier86) #6
  %v4l2_dev = getelementptr inbounds %struct.imx_media_dev, ptr %call39, i32 0, i32 1
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #6
  tail call void @media_device_unregister(ptr noundef %call39) #6
  tail call void @media_device_cleanup(ptr noundef %call39) #6
  br label %destroy_mutex

destroy_mutex:                                    ; preds = %cleanup, %if.then41, %do.end37
  %ret.1 = phi i32 [ %call.i164, %do.end37 ], [ %10, %if.then41 ], [ %ret.0, %cleanup ]
  tail call void @mutex_destroy(ptr noundef %lock) #6
  br label %cleanup90

cleanup90:                                        ; preds = %destroy_mutex, %imx7_csi_async_register.exit.cleanup90_crit_edge, %if.then20, %if.end11.cleanup90_crit_edge, %if.then8, %entry.cleanup90_crit_edge
  %retval.0 = phi i32 [ %4, %if.then8 ], [ %7, %if.then20 ], [ %ret.1, %destroy_mutex ], [ -12, %entry.cleanup90_crit_edge ], [ %call12, %if.end11.cleanup90_crit_edge ], [ 0, %imx7_csi_async_register.exit.cleanup90_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_csi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %imxmd2 = getelementptr inbounds %struct.imx7_csi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %imxmd2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %imxmd2, align 4
  %notifier = getelementptr inbounds %struct.imx_media_dev, ptr %5, i32 0, i32 6
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #6
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #6
  tail call void @media_device_unregister(ptr noundef %5) #6
  %v4l2_dev = getelementptr inbounds %struct.imx_media_dev, ptr %5, i32 0, i32 1
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #6
  tail call void @media_device_cleanup(ptr noundef %5) #6
  %notifier5 = getelementptr inbounds %struct.imx7_csi, ptr %3, i32 0, i32 2
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier5) #6
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier5) #6
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #6
  %lock = getelementptr inbounds %struct.imx7_csi, ptr %3, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_csi_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.imx7_csi, ptr %data, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %irqlock) #6
  %regbase.i.i = getelementptr inbounds %struct.imx7_csi, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !91
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %2) #6, !srcloc !94
  %and = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.14) #9
  tail call fastcc void @imx7_csi_error_recovery(ptr noundef %data)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and1 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %do.end6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.18) #9
  tail call fastcc void @imx7_csi_error_recovery(ptr noundef %data)
  br label %if.end8

if.end8:                                          ; preds = %do.end6, %if.end.if.end8_crit_edge
  %and9 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %11, i32 72
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i65) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %13 = and i32 %12, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i4.i66 = getelementptr i8, ptr %15, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i66, i32 %13) #6, !srcloc !94
  %16 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %19 = or i32 %18, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i4.i69 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i69, i32 %19) #6, !srcloc !94
  %22 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i71 = getelementptr i8, ptr %23, i32 72
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i71) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %25 = or i32 %24, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i4.i72 = getelementptr i8, ptr %27, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i72, i32 %25) #6, !srcloc !94
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %28 = and i32 %3, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %28)
  %.not = icmp eq i32 %28, 1572864
  br i1 %.not, label %if.end12.if.then33_crit_edge, label %if.else

if.end12.if.then33_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

if.else:                                          ; preds = %if.end12
  %29 = and i32 %3, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %.not73 = icmp eq i32 %29, 0
  br i1 %.not73, label %if.else.if.end38_crit_edge, label %if.then33.sink.split

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then33.sink.split:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and13 = lshr i32 %3, 19
  %and13.lobit = and i32 %and13, 1
  %30 = xor i32 %and13.lobit, 1
  %buf_num25 = getelementptr inbounds %struct.imx7_csi, ptr %data, i32 0, i32 17
  %31 = ptrtoint ptr %buf_num25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %buf_num25, align 4
  br label %if.then33

if.then33:                                        ; preds = %if.then33.sink.split, %if.end12.if.then33_crit_edge
  %vdev1.i = getelementptr inbounds %struct.imx7_csi, ptr %data, i32 0, i32 3
  %32 = ptrtoint ptr %vdev1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vdev1.i, align 4
  %buf_num.i = getelementptr inbounds %struct.imx7_csi, ptr %data, i32 0, i32 17
  %34 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_num.i, align 4
  %arrayidx.i = getelementptr %struct.imx7_csi, ptr %data, i32 0, i32 15, i32 %35
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.then33.if.end.i_crit_edge, label %if.then.i

if.then33.if.end.i_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %field.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %33, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %field.i, align 4
  %field2.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %37, i32 0, i32 2
  %40 = ptrtoint ptr %field2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %field2.i, align 4
  %frame_sequence.i = getelementptr inbounds %struct.imx7_csi, ptr %data, i32 0, i32 18
  %41 = ptrtoint ptr %frame_sequence.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %frame_sequence.i, align 4
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %37, i32 0, i32 4
  %43 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %sequence.i, align 8
  %call.i.i = tail call i64 @ktime_get() #6
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %37, i32 0, i32 5
  %44 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %37, i32 noundef 5) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then33.if.end.i_crit_edge
  %frame_sequence5.i = getelementptr inbounds %struct.imx7_csi, ptr %data, i32 0, i32 18
  %45 = ptrtoint ptr %frame_sequence5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %frame_sequence5.i, align 4
  %inc.i = add i32 %46, 1
  store i32 %inc.i, ptr %frame_sequence5.i, align 4
  %call6.i = tail call ptr @imx_media_capture_device_next_buf(ptr noundef %33) #6
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i39.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call6.i, i32 noundef 0) #6
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %phys15.i = getelementptr inbounds %struct.imx7_csi, ptr %data, i32 0, i32 16, i32 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then8.i
  %phys15.sink.i = phi ptr [ %phys15.i, %if.else.i ], [ %call.i39.i, %if.then8.i ]
  %47 = ptrtoint ptr %phys15.sink.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %phys15.sink.i, align 4
  %49 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf_num.i, align 4
  %arrayidx18.i = getelementptr %struct.imx7_csi, ptr %data, i32 0, i32 15, i32 %50
  %51 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call6.i, ptr %arrayidx18.i, align 4
  %52 = load i32, ptr %buf_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.i.i = icmp eq i32 %52, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %53 = tail call i32 @llvm.bswap.i32(i32 %48) #6
  %54 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regbase.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i = getelementptr i8, ptr %55, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %53) #6, !srcloc !94
  br label %imx7_csi_vb2_buf_done.exit

if.else.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i4.i.i = getelementptr i8, ptr %55, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %53) #6, !srcloc !94
  br label %imx7_csi_vb2_buf_done.exit

imx7_csi_vb2_buf_done.exit:                       ; preds = %if.else.i.i, %if.then.i.i
  %last_eof = getelementptr inbounds %struct.imx7_csi, ptr %data, i32 0, i32 19
  %56 = ptrtoint ptr %last_eof to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %last_eof, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool34.not = icmp eq i8 %57, 0
  br i1 %tobool34.not, label %imx7_csi_vb2_buf_done.exit.if.end38_crit_edge, label %if.then35

imx7_csi_vb2_buf_done.exit.if.end38_crit_edge:    ; preds = %imx7_csi_vb2_buf_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then35:                                        ; preds = %imx7_csi_vb2_buf_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  %last_eof_completion = getelementptr inbounds %struct.imx7_csi, ptr %data, i32 0, i32 22
  tail call void @complete(ptr noundef %last_eof_completion) #6
  %58 = ptrtoint ptr %last_eof to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %last_eof, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %imx7_csi_vb2_buf_done.exit.if.end38_crit_edge, %if.else.if.end38_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %irqlock) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_dev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_of_add_csi(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_dev_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx7_csi_error_recovery(ptr nocapture noundef readonly %csi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regbase.i.i = getelementptr inbounds %struct.imx7_csi, ptr %csi, i32 0, i32 12
  %0 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %3 = and i32 %2, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %5, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %3) #6, !srcloc !94
  %6 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regbase.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !91
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and.i = and i32 %9, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %11 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regbase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !94
  %or.i = or i32 %and.i, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %14 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regbase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !94
  %or1.i = or i32 %9, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #6
  %17 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regbase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !94
  %19 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %20, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %22 = or i32 %21, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i4.i7 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i7, i32 %22) #6, !srcloc !94
  %25 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %26, i32 72
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %28 = or i32 %27, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i4.i10 = getelementptr i8, ptr %30, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i10, i32 %28) #6, !srcloc !94
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_capture_device_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_csi_s_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %lock = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %src_sd = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_sd, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end:                                           ; preds = %entry
  %is_streaming = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %is_streaming to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_streaming, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool2 = icmp ne i32 %enable, 0
  %6 = zext i1 %tobool2 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp = icmp eq i8 %5, %6
  br i1 %cmp, label %if.end.out_unlock_crit_edge, label %if.end6

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  br i1 %tobool2, label %if.then8, label %if.else42

if.then8:                                         ; preds = %if.end6
  %mclk.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mclk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then8.clk_prepare_enable.exit.i_crit_edge

if.then8.clk_prepare_enable.exit.i_crit_edge:     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.then8
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %8) #6
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.then8.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then8.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %clk_prepare_enable.exit.i.out_unlock_crit_edge, label %clk_prepare_enable.exit.i.if.end.i_crit_edge

clk_prepare_enable.exit.i.if.end.i_crit_edge:     ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

clk_prepare_enable.exit.i.out_unlock_crit_edge:   ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end.i:                                         ; preds = %clk_prepare_enable.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %vdev1.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %vdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vdev1.i.i, align 4
  %fmt.i.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fmt.i.i, align 4
  %regbase.i.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 72
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %16 = and i32 %15, -872562943
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %field.i.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %10, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %field.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.if.end.i11.i_crit_edge

if.end.i.if.end.i11.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i11.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i = or i32 %17, 4
  %20 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt.i.i, align 4
  br label %if.end.i11.i

if.end.i11.i:                                     ; preds = %if.then.i.i, %if.end.i.if.end.i11.i_crit_edge
  %stride.0.i.i = phi i32 [ %21, %if.then.i.i ], [ 0, %if.end.i.if.end.i11.i_crit_edge ]
  %cr18.0.i.i = phi i32 [ %or.i.i, %if.then.i.i ], [ %17, %if.end.i.if.end.i11.i_crit_edge ]
  %is_csi2.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 21
  %22 = ptrtoint ptr %is_csi2.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_csi2.i.i, align 2, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i10.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i10.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %if.end.i11.i
  %or5.i.i = or i32 %cr18.0.i.i, 560
  %pixelformat.i.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %10, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pixelformat.i.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %25, label %if.then4.i.i.imx7_csi_configure.exit.i_crit_edge [
    i32 1498831189, label %if.then4.i.i.if.then9.i.i_crit_edge
    i32 1448695129, label %if.then4.i.i.if.then9.i.i_crit_edge130
  ]

if.then4.i.i.if.then9.i.i_crit_edge130:           ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9.i.i

if.then4.i.i.if.then9.i.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9.i.i

if.then4.i.i.imx7_csi_configure.exit.i_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx7_csi_configure.exit.i

if.then9.i.i:                                     ; preds = %if.then4.i.i.if.then9.i.i_crit_edge, %if.then4.i.i.if.then9.i.i_crit_edge130
  %mul.i.i = shl i32 %12, 1
  br label %imx7_csi_configure.exit.i

if.else.i.i:                                      ; preds = %if.end.i11.i
  %or11.i.i = or i32 %cr18.0.i.i, 4194304
  %code.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 9, i32 0, i32 2
  %27 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %code.i.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %28, label %if.else.i.i.imx7_csi_configure.exit.i_crit_edge [
    i32 8193, label %if.else.i.i.sw.bb.i.i_crit_edge
    i32 12289, label %if.else.i.i.sw.bb.i.i_crit_edge131
    i32 12307, label %if.else.i.i.sw.bb.i.i_crit_edge132
    i32 12290, label %if.else.i.i.sw.bb.i.i_crit_edge133
    i32 12308, label %if.else.i.i.sw.bb.i.i_crit_edge134
    i32 8202, label %if.else.i.i.sw.bb13.i.i_crit_edge
    i32 12295, label %if.else.i.i.sw.bb13.i.i_crit_edge135
    i32 12302, label %if.else.i.i.sw.bb13.i.i_crit_edge136
    i32 12298, label %if.else.i.i.sw.bb13.i.i_crit_edge137
    i32 12303, label %if.else.i.i.sw.bb13.i.i_crit_edge138
    i32 8211, label %if.else.i.i.sw.bb16.i.i_crit_edge
    i32 12296, label %if.else.i.i.sw.bb16.i.i_crit_edge139
    i32 12304, label %if.else.i.i.sw.bb16.i.i_crit_edge140
    i32 12305, label %if.else.i.i.sw.bb16.i.i_crit_edge141
    i32 12306, label %if.else.i.i.sw.bb16.i.i_crit_edge142
    i32 8237, label %if.else.i.i.sw.bb19.i.i_crit_edge
    i32 12313, label %if.else.i.i.sw.bb19.i.i_crit_edge143
    i32 12314, label %if.else.i.i.sw.bb19.i.i_crit_edge144
    i32 12315, label %if.else.i.i.sw.bb19.i.i_crit_edge145
    i32 12316, label %if.else.i.i.sw.bb19.i.i_crit_edge146
    i32 8198, label %if.else.i.i.sw.bb22.i.i_crit_edge
    i32 8207, label %if.else.i.i.sw.bb22.i.i_crit_edge147
    i32 8200, label %if.else.i.i.sw.bb22.i.i_crit_edge148
    i32 8209, label %if.else.i.i.sw.bb22.i.i_crit_edge149
  ]

if.else.i.i.sw.bb22.i.i_crit_edge149:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i.i

if.else.i.i.sw.bb22.i.i_crit_edge148:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i.i

if.else.i.i.sw.bb22.i.i_crit_edge147:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i.i

if.else.i.i.sw.bb22.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i.i

if.else.i.i.sw.bb19.i.i_crit_edge146:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19.i.i

if.else.i.i.sw.bb19.i.i_crit_edge145:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19.i.i

if.else.i.i.sw.bb19.i.i_crit_edge144:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19.i.i

if.else.i.i.sw.bb19.i.i_crit_edge143:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19.i.i

if.else.i.i.sw.bb19.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19.i.i

if.else.i.i.sw.bb16.i.i_crit_edge142:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i.i

if.else.i.i.sw.bb16.i.i_crit_edge141:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i.i

if.else.i.i.sw.bb16.i.i_crit_edge140:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i.i

if.else.i.i.sw.bb16.i.i_crit_edge139:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i.i

if.else.i.i.sw.bb16.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i.i

if.else.i.i.sw.bb13.i.i_crit_edge138:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i.i

if.else.i.i.sw.bb13.i.i_crit_edge137:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i.i

if.else.i.i.sw.bb13.i.i_crit_edge136:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i.i

if.else.i.i.sw.bb13.i.i_crit_edge135:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i.i

if.else.i.i.sw.bb13.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i.i

if.else.i.i.sw.bb.i.i_crit_edge134:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

if.else.i.i.sw.bb.i.i_crit_edge133:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

if.else.i.i.sw.bb.i.i_crit_edge132:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

if.else.i.i.sw.bb.i.i_crit_edge131:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

if.else.i.i.sw.bb.i.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

if.else.i.i.imx7_csi_configure.exit.i_crit_edge:  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx7_csi_configure.exit.i

sw.bb.i.i:                                        ; preds = %if.else.i.i.sw.bb.i.i_crit_edge, %if.else.i.i.sw.bb.i.i_crit_edge131, %if.else.i.i.sw.bb.i.i_crit_edge132, %if.else.i.i.sw.bb.i.i_crit_edge133, %if.else.i.i.sw.bb.i.i_crit_edge134
  %or12.i.i = or i32 %cr18.0.i.i, 1413480448
  br label %imx7_csi_configure.exit.i

sw.bb13.i.i:                                      ; preds = %if.else.i.i.sw.bb13.i.i_crit_edge, %if.else.i.i.sw.bb13.i.i_crit_edge135, %if.else.i.i.sw.bb13.i.i_crit_edge136, %if.else.i.i.sw.bb13.i.i_crit_edge137, %if.else.i.i.sw.bb13.i.i_crit_edge138
  %or15.i.i = or i32 %cr18.0.i.i, 1447034880
  br label %imx7_csi_configure.exit.i

sw.bb16.i.i:                                      ; preds = %if.else.i.i.sw.bb16.i.i_crit_edge, %if.else.i.i.sw.bb16.i.i_crit_edge139, %if.else.i.i.sw.bb16.i.i_crit_edge140, %if.else.i.i.sw.bb16.i.i_crit_edge141, %if.else.i.i.sw.bb16.i.i_crit_edge142
  %or18.i.i = or i32 %cr18.0.i.i, 1480589312
  br label %imx7_csi_configure.exit.i

sw.bb19.i.i:                                      ; preds = %if.else.i.i.sw.bb19.i.i_crit_edge, %if.else.i.i.sw.bb19.i.i_crit_edge143, %if.else.i.i.sw.bb19.i.i_crit_edge144, %if.else.i.i.sw.bb19.i.i_crit_edge145, %if.else.i.i.sw.bb19.i.i_crit_edge146
  %or21.i.i = or i32 %cr18.0.i.i, 1514143744
  br label %imx7_csi_configure.exit.i

sw.bb22.i.i:                                      ; preds = %if.else.i.i.sw.bb22.i.i_crit_edge, %if.else.i.i.sw.bb22.i.i_crit_edge147, %if.else.i.i.sw.bb22.i.i_crit_edge148, %if.else.i.i.sw.bb22.i.i_crit_edge149
  %or23.i.i = or i32 %cr18.0.i.i, 1010827264
  br label %imx7_csi_configure.exit.i

imx7_csi_configure.exit.i:                        ; preds = %sw.bb22.i.i, %sw.bb19.i.i, %sw.bb16.i.i, %sw.bb13.i.i, %sw.bb.i.i, %if.else.i.i.imx7_csi_configure.exit.i_crit_edge, %if.then9.i.i, %if.then4.i.i.imx7_csi_configure.exit.i_crit_edge
  %width.0.i.i = phi i32 [ %12, %if.else.i.i.imx7_csi_configure.exit.i_crit_edge ], [ %12, %sw.bb22.i.i ], [ %12, %sw.bb19.i.i ], [ %12, %sw.bb16.i.i ], [ %12, %sw.bb13.i.i ], [ %12, %sw.bb.i.i ], [ %mul.i.i, %if.then9.i.i ], [ %12, %if.then4.i.i.imx7_csi_configure.exit.i_crit_edge ]
  %cr3.0.i.i = phi i32 [ 32768, %if.else.i.i.imx7_csi_configure.exit.i_crit_edge ], [ 32768, %sw.bb22.i.i ], [ 32776, %sw.bb19.i.i ], [ 32776, %sw.bb16.i.i ], [ 32776, %sw.bb13.i.i ], [ 32768, %sw.bb.i.i ], [ 32768, %if.then9.i.i ], [ 32768, %if.then4.i.i.imx7_csi_configure.exit.i_crit_edge ]
  %cr1.0.i.i = phi i32 [ 137986, %if.else.i.i.imx7_csi_configure.exit.i_crit_edge ], [ 137986, %sw.bb22.i.i ], [ 137986, %sw.bb19.i.i ], [ 137986, %sw.bb16.i.i ], [ 137986, %sw.bb13.i.i ], [ 137986, %sw.bb.i.i ], [ 138002, %if.then9.i.i ], [ 138002, %if.then4.i.i.imx7_csi_configure.exit.i_crit_edge ]
  %cr18.1.i.i = phi i32 [ %or11.i.i, %if.else.i.i.imx7_csi_configure.exit.i_crit_edge ], [ %or23.i.i, %sw.bb22.i.i ], [ %or21.i.i, %sw.bb19.i.i ], [ %or18.i.i, %sw.bb16.i.i ], [ %or15.i.i, %sw.bb13.i.i ], [ %or12.i.i, %sw.bb.i.i ], [ %or5.i.i, %if.then9.i.i ], [ %or5.i.i, %if.then4.i.i.imx7_csi_configure.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %cr1.0.i.i) #6
  %31 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regbase.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i60.i.i = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i.i, i32 192) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %35 = tail call i32 @llvm.bswap.i32(i32 %cr3.0.i.i) #6
  %36 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i62.i.i = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i.i, i32 %35) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %38 = tail call i32 @llvm.bswap.i32(i32 %cr18.1.i.i) #6
  %39 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i64.i.i = getelementptr i8, ptr %40, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i.i, i32 %38) #6, !srcloc !94
  %height.i.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %10, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height.i.i, align 4
  %mul25.i.i = mul i32 %42, %width.0.i.i
  %shr.i.i = lshr i32 %mul25.i.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %43 = tail call i32 @llvm.bswap.i32(i32 %shr.i.i) #6
  %44 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i66.i.i = getelementptr i8, ptr %45, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i.i, i32 %43) #6, !srcloc !94
  %shl.i.i = shl i32 %width.0.i.i, 16
  %46 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height.i.i, align 4
  %or27.i.i = or i32 %47, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %48 = tail call i32 @llvm.bswap.i32(i32 %or27.i.i) #6
  %49 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i68.i.i = getelementptr i8, ptr %50, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i.i, i32 %48) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %51 = tail call i32 @llvm.bswap.i32(i32 %stride.0.i.i) #6
  %52 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i70.i.i = getelementptr i8, ptr %53, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i.i, i32 %51) #6, !srcloc !94
  %54 = ptrtoint ptr %vdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vdev1.i.i, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %underrun_buf.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 16
  %sizeimage.i.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %55, i32 0, i32 1, i32 5
  %58 = ptrtoint ptr %sizeimage.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sizeimage.i.i, align 4
  %call.i13.i = tail call i32 @imx_media_alloc_dma_buf(ptr noundef %57, ptr noundef %underrun_buf.i.i, i32 noundef %59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %cmp.i14.i = icmp slt i32 %call.i13.i, 0
  br i1 %cmp.i14.i, label %73, label %if.end.i15.i

if.end.i15.i:                                     ; preds = %imx7_csi_configure.exit.i
  %frame_sequence.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 18
  %60 = ptrtoint ptr %frame_sequence.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %frame_sequence.i.i, align 4
  %last_eof.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 19
  %61 = ptrtoint ptr %last_eof.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %last_eof.i.i, align 4
  %last_eof_completion.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 22
  %62 = ptrtoint ptr %last_eof_completion.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %last_eof_completion.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 22, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #6
  %63 = ptrtoint ptr %vdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vdev1.i.i, align 4
  %phys7.i.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 16, i32 1
  %call.i.i.i = tail call ptr @imx_media_capture_device_next_buf(ptr noundef %64) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  %arrayidx6.i.i.i = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 15, i32 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i.i.i, ptr %arrayidx6.i.i.i, align 4
  %call.i.i.i.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #6
  br label %imx7_csi_update_buf.exit.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx6.i.i.i, align 4
  br label %imx7_csi_update_buf.exit.i.i.i

imx7_csi_update_buf.exit.i.i.i:                   ; preds = %if.else.i.i.i, %if.then.i.i.i
  %phys.sroa.0.0.in.i.i.i = phi ptr [ %phys7.i.i.i, %if.else.i.i.i ], [ %call.i.i.i.i, %if.then.i.i.i ]
  %67 = ptrtoint ptr %phys.sroa.0.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %phys.sroa.0.0.i.i.i = load i32, ptr %phys.sroa.0.0.in.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %68 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regbase.i.i.i, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %phys.sroa.0.0.i.i.i) #6
  %add.ptr.i4.i.i.i.i = getelementptr i8, ptr %69, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i, i32 %70) #6, !srcloc !94
  %call.1.i.i.i = tail call ptr @imx_media_capture_device_next_buf(ptr noundef %64) #6
  %tobool.not.1.i.i.i = icmp eq ptr %call.1.i.i.i, null
  %arrayidx6.1.i.i.i = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 15, i32 1
  br i1 %tobool.not.1.i.i.i, label %if.else.1.i.i.i, label %if.then.1.i.i.i

if.then.1.i.i.i:                                  ; preds = %imx7_csi_update_buf.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %arrayidx6.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.1.i.i.i, ptr %arrayidx6.1.i.i.i, align 4
  %call.i.1.i.i.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.1.i.i.i, i32 noundef 0) #6
  br label %if.end13

if.else.1.i.i.i:                                  ; preds = %imx7_csi_update_buf.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %arrayidx6.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %arrayidx6.1.i.i.i, align 4
  br label %if.end13

73:                                               ; preds = %imx7_csi_configure.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 1, i32 9
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name.i.i) #9
  br label %out_unlock

if.end13:                                         ; preds = %if.else.1.i.i.i, %if.then.1.i.i.i
  %phys.sroa.6.0.in.i.i.i = phi ptr [ %phys7.i.i.i, %if.else.1.i.i.i ], [ %call.i.1.i.i.i, %if.then.1.i.i.i ]
  %74 = ptrtoint ptr %phys.sroa.6.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %phys.sroa.6.0.i.i.i = load i32, ptr %phys.sroa.6.0.in.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %75 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regbase.i.i.i, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %phys.sroa.6.0.i.i.i) #6
  %add.ptr.i.i.1.i.i.i = getelementptr i8, ptr %76, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i.i.i, i32 %77) #6, !srcloc !94
  %78 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %src_sd, align 4
  %tobool15.not = icmp eq ptr %79, null
  br i1 %tobool15.not, label %if.end13.if.then40_crit_edge, label %if.else

if.end13.if.then40_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

if.else:                                          ; preds = %if.end13
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %video, align 4
  %tobool17.not = icmp eq ptr %83, null
  br i1 %tobool17.not, label %if.else.if.then40_crit_edge, label %land.lhs.true

if.else.if.then40_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %83, i32 0, i32 10
  %84 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_stream, align 4
  %tobool20.not = icmp eq ptr %85, null
  br i1 %tobool20.not, label %land.lhs.true.if.then40_crit_edge, label %if.else22

land.lhs.true.if.then40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

if.else22:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool23.not = icmp eq ptr %86, null
  br i1 %tobool23.not, label %if.else22.if.else30_crit_edge, label %land.lhs.true24

if.else22.if.else30_crit_edge:                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else30

land.lhs.true24:                                  ; preds = %if.else22
  %s_stream25 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %86, i32 0, i32 10
  %87 = ptrtoint ptr %s_stream25 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %s_stream25, align 4
  %tobool26.not = icmp eq ptr %88, null
  br i1 %tobool26.not, label %land.lhs.true24.if.else30_crit_edge, label %land.lhs.true24.if.end37_crit_edge

land.lhs.true24.if.end37_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true24.if.else30_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else30

if.else30:                                        ; preds = %land.lhs.true24.if.else30_crit_edge, %if.else22.if.else30_crit_edge
  br label %if.end37

if.end37:                                         ; preds = %if.else30, %land.lhs.true24.if.end37_crit_edge
  %.sink = phi ptr [ %85, %if.else30 ], [ %88, %land.lhs.true24.if.end37_crit_edge ]
  %call34 = tail call i32 %.sink(ptr noundef nonnull %79, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp38 = icmp slt i32 %call34, 0
  br i1 %cmp38, label %if.end37.if.then40_crit_edge, label %if.end41

if.end37.if.then40_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

if.then40:                                        ; preds = %if.end37.if.then40_crit_edge, %land.lhs.true.if.then40_crit_edge, %if.else.if.then40_crit_edge, %if.end13.if.then40_crit_edge
  %__result.0128 = phi i32 [ %call34, %if.end37.if.then40_crit_edge ], [ -515, %if.else.if.then40_crit_edge ], [ -515, %land.lhs.true.if.then40_crit_edge ], [ -19, %if.end13.if.then40_crit_edge ]
  tail call fastcc void @imx7_csi_deinit(ptr noundef %1, i32 noundef 3)
  br label %out_unlock

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regbase.i.i.i, align 4
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #6, !srcloc !91
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and.i.i = and i32 %92, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %93 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #6
  %94 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regbase.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #6, !srcloc !94
  %or.i.i116 = or i32 %and.i.i, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %96 = tail call i32 @llvm.bswap.i32(i32 %or.i.i116) #6
  %97 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regbase.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #6, !srcloc !94
  %or1.i.i = or i32 %92, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %99 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i) #6
  %100 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regbase.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #6, !srcloc !94
  %102 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i.i117 = getelementptr i8, ptr %103, i32 8
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i117) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %105 = or i32 %104, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %107, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %105) #6, !srcloc !94
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #6
  %108 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %109, i32 24
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %111 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i4.i9.i = getelementptr i8, ptr %112, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i9.i, i32 %110) #6, !srcloc !94
  %113 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regbase.i.i.i, align 4
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %116 = or i32 %115, 6145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %117 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regbase.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #6, !srcloc !94
  %119 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i12.i = getelementptr i8, ptr %120, i32 8
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %122 = and i32 %121, 267386879
  %123 = or i32 %122, -1609564160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %124 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %125, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 %123) #6, !srcloc !94
  %126 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %127, i32 72
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %129 = or i32 %128, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %130 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i4.i15.i = getelementptr i8, ptr %131, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i15.i, i32 %129) #6, !srcloc !94
  br label %if.end75

if.else42:                                        ; preds = %if.end6
  %irqlock.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 7
  %call2.i.i118 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i.i) #6
  %last_eof.i.i119 = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 19
  %132 = ptrtoint ptr %last_eof.i.i119 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %last_eof.i.i119, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i, i32 noundef %call2.i.i118) #6
  %last_eof_completion.i.i120 = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 22
  %call7.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %last_eof_completion.i.i120, i32 noundef 200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp8.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %cmp8.i.i, label %do.end12.i.i, label %if.else42.imx7_csi_disable.exit_crit_edge

if.else42.imx7_csi_disable.exit_crit_edge:        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx7_csi_disable.exit

do.end12.i.i:                                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #8
  %name.i.i121 = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 1, i32 9
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i.i121) #9
  br label %imx7_csi_disable.exit

imx7_csi_disable.exit:                            ; preds = %do.end12.i.i, %if.else42.imx7_csi_disable.exit_crit_edge
  %regbase.i.i.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 12
  %133 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regbase.i.i.i.i, align 4
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %136 = and i32 %135, -6146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %137 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regbase.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #6, !srcloc !94
  %139 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regbase.i.i.i.i, align 4
  %add.ptr.i.i.i122 = getelementptr i8, ptr %140, i32 8
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i122) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %142 = and i32 %141, 2146435071
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %143 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regbase.i.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %144, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %142) #6, !srcloc !94
  %145 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regbase.i.i.i.i, align 4
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %148 = and i32 %147, -6146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %149 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regbase.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #6, !srcloc !94
  %151 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regbase.i.i.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %152, i32 72
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %154 = and i32 %153, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %155 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regbase.i.i.i.i, align 4
  %add.ptr.i4.i.i123 = getelementptr i8, ptr %156, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i123, i32 %154) #6, !srcloc !94
  %157 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %src_sd, align 4
  %tobool46.not = icmp eq ptr %158, null
  br i1 %tobool46.not, label %imx7_csi_disable.exit.if.end73_crit_edge, label %if.else48

imx7_csi_disable.exit.if.end73_crit_edge:         ; preds = %imx7_csi_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.else48:                                        ; preds = %imx7_csi_disable.exit
  %ops49 = getelementptr inbounds %struct.v4l2_subdev, ptr %158, i32 0, i32 6
  %159 = ptrtoint ptr %ops49 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ops49, align 4
  %video50 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %video50 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %video50, align 4
  %tobool51.not = icmp eq ptr %162, null
  br i1 %tobool51.not, label %if.else48.if.end73_crit_edge, label %land.lhs.true52

if.else48.if.end73_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

land.lhs.true52:                                  ; preds = %if.else48
  %s_stream55 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %162, i32 0, i32 10
  %163 = ptrtoint ptr %s_stream55 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %s_stream55, align 4
  %tobool56.not = icmp eq ptr %164, null
  br i1 %tobool56.not, label %land.lhs.true52.if.end73_crit_edge, label %if.else58

land.lhs.true52.if.end73_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.else58:                                        ; preds = %land.lhs.true52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %165 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool59.not = icmp eq ptr %165, null
  br i1 %tobool59.not, label %if.else58.if.else66_crit_edge, label %land.lhs.true60

if.else58.if.else66_crit_edge:                    ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else66

land.lhs.true60:                                  ; preds = %if.else58
  %s_stream61 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %165, i32 0, i32 10
  %166 = ptrtoint ptr %s_stream61 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %s_stream61, align 4
  %tobool62.not = icmp eq ptr %167, null
  br i1 %tobool62.not, label %land.lhs.true60.if.else66_crit_edge, label %land.lhs.true60.if.end73.sink.split_crit_edge

land.lhs.true60.if.end73.sink.split_crit_edge:    ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73.sink.split

land.lhs.true60.if.else66_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else66

if.else66:                                        ; preds = %land.lhs.true60.if.else66_crit_edge, %if.else58.if.else66_crit_edge
  br label %if.end73.sink.split

if.end73.sink.split:                              ; preds = %if.else66, %land.lhs.true60.if.end73.sink.split_crit_edge
  %.sink129 = phi ptr [ %164, %if.else66 ], [ %167, %land.lhs.true60.if.end73.sink.split_crit_edge ]
  %call70 = tail call i32 %.sink129(ptr noundef nonnull %158, i32 noundef 0) #6
  br label %if.end73

if.end73:                                         ; preds = %if.end73.sink.split, %land.lhs.true52.if.end73_crit_edge, %if.else48.if.end73_crit_edge, %imx7_csi_disable.exit.if.end73_crit_edge
  tail call fastcc void @imx7_csi_deinit(ptr noundef %1, i32 noundef 6)
  br label %if.end75

if.end75:                                         ; preds = %if.end73, %if.end41
  %ret.0 = phi i32 [ %call34, %if.end41 ], [ 0, %if.end73 ]
  %168 = ptrtoint ptr %is_streaming to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %6, ptr %is_streaming, align 1
  br label %out_unlock

out_unlock:                                       ; preds = %if.end75, %if.then40, %73, %clk_prepare_enable.exit.i.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.1 = phi i32 [ 0, %if.end.out_unlock_crit_edge ], [ %__result.0128, %if.then40 ], [ %ret.0, %if.end75 ], [ -32, %entry.out_unlock_crit_edge ], [ %call.i13.i, %73 ], [ %retval.0.i.i, %clk_prepare_enable.exit.i.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx7_csi_deinit(ptr noundef %csi, i32 noundef %return_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.imx7_csi, ptr %csi, i32 0, i32 15, i32 0
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.for.inc.i.i_crit_edge, label %if.then.i.i

entry.for.inc.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call i64 @ktime_get() #6
  %timestamp.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i.i.i, ptr %timestamp.i.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %1, i32 noundef %return_status) #6
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %entry.for.inc.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr %struct.imx7_csi, ptr %csi, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.imx7_csi_dma_cleanup.exit_crit_edge, label %if.then.1.i.i

for.inc.i.i.imx7_csi_dma_cleanup.exit_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx7_csi_dma_cleanup.exit

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.1.i.i = tail call i64 @ktime_get() #6
  %timestamp.1.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %timestamp.1.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i.1.i.i, ptr %timestamp.1.i.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %5, i32 noundef %return_status) #6
  %7 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx.1.i.i, align 4
  br label %imx7_csi_dma_cleanup.exit

imx7_csi_dma_cleanup.exit:                        ; preds = %if.then.1.i.i, %for.inc.i.i.imx7_csi_dma_cleanup.exit_crit_edge
  %8 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csi, align 4
  %underrun_buf.i = getelementptr inbounds %struct.imx7_csi, ptr %csi, i32 0, i32 16
  tail call void @imx_media_free_dma_buf(ptr noundef %9, ptr noundef %underrun_buf.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %regbase.i.i = getelementptr inbounds %struct.imx7_csi, ptr %csi, i32 0, i32 12
  %10 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regbase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 303759872) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 8388608) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %17, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 1476534275) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 4194304) #6, !srcloc !94
  %20 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i5 = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %23 = and i32 %22, 2146435071
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %23) #6, !srcloc !94
  %mclk = getelementptr inbounds %struct.imx7_csi, ptr %csi, i32 0, i32 14
  %26 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %27) #6
  tail call void @clk_unprepare(ptr noundef %27) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_alloc_dma_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_free_dma_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_csi_init_cfg(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i.not = icmp eq i16 %3, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !96

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit

for.cond:                                         ; preds = %v4l2_subdev_get_try_format.exit
  %4 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp.not.i.1 = icmp ugt i16 %5, 1
  br i1 %cmp.not.i.1, label %for.cond.v4l2_subdev_get_try_format.exit.1_crit_edge, label %do.end.i.1, !prof !97

for.cond.v4l2_subdev_get_try_format.exit.1_crit_edge: ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.1

do.end.i.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.1

v4l2_subdev_get_try_format.exit.1:                ; preds = %do.end.i.1, %for.cond.v4l2_subdev_get_try_format.exit.1_crit_edge
  %spec.select.i.1 = phi i32 [ 0, %do.end.i.1 ], [ 1, %for.cond.v4l2_subdev_get_try_format.exit.1_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.1 = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i.1
  %arrayidx.1 = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 10, i32 1
  %call2.1 = tail call i32 @imx_media_init_mbus_fmt(ptr noundef %arrayidx.i.1, i32 noundef 800, i32 noundef 600, i32 noundef 0, i32 noundef 1, ptr noundef %arrayidx.1) #6
  %8 = call i32 @llvm.smin.i32(i32 %call2.1, i32 0)
  br label %cleanup

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %arrayidx = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 10, i32 0
  %call2 = tail call i32 @imx_media_init_mbus_fmt(ptr noundef %10, i32 noundef 800, i32 noundef 600, i32 noundef 0, i32 noundef 1, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %v4l2_subdev_get_try_format.exit.cleanup_crit_edge, label %for.cond

v4l2_subdev_get_try_format.exit.cleanup_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %v4l2_subdev_get_try_format.exit.cleanup_crit_edge, %v4l2_subdev_get_try_format.exit.1
  %retval.0 = phi i32 [ %call2, %v4l2_subdev_get_try_format.exit.cleanup_crit_edge ], [ %8, %v4l2_subdev_get_try_format.exit.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_csi_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %lock = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %2 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 1, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not.i.i.not = icmp eq i16 %5, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !96

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  br label %imx7_csi_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 9, i32 0
  br label %imx7_csi_get_format.exit

imx7_csi_get_format.exit:                         ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %7, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %8 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %code, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %9, label %imx7_csi_get_format.exit.out_unlock_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

imx7_csi_get_format.exit.out_unlock_crit_edge:    ; preds = %imx7_csi_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

sw.bb:                                            ; preds = %imx7_csi_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %call3 = tail call i32 @imx_media_enum_mbus_formats(ptr noundef %code2, i32 noundef %12, i32 noundef 7) #6
  br label %out_unlock

sw.bb4:                                           ; preds = %imx7_csi_get_format.exit
  %index5 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %13 = ptrtoint ptr %index5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.end, label %sw.bb4.out_unlock_crit_edge

sw.bb4.out_unlock_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %code6 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %code6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %code6, align 4
  %code7 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %17 = ptrtoint ptr %code7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %code7, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %sw.bb4.out_unlock_crit_edge, %sw.bb, %imx7_csi_get_format.exit.out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end ], [ %call3, %sw.bb ], [ -22, %sw.bb4.out_unlock_crit_edge ], [ -22, %imx7_csi_get_format.exit.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_csi_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %lock = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %4 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !97

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %imx7_csi_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 9, i32 %3
  br label %imx7_csi_get_format.exit

imx7_csi_get_format.exit:                         ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %imx7_csi_get_format.exit.out_unlock_crit_edge, label %if.end

imx7_csi_get_format.exit.out_unlock_crit_edge:    ; preds = %imx7_csi_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end:                                           ; preds = %imx7_csi_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %imx7_csi_get_format.exit.out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end ], [ -22, %imx7_csi_get_format.exit.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_csi_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %sdformat) #2 align 64 {
entry:
  %outcc = alloca ptr, align 4
  %cc = alloca ptr, align 4
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outcc) #6
  %2 = ptrtoint ptr %outcc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %outcc, align 4, !annotation !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cc) #6
  %3 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %cc, align 4, !annotation !98
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #6
  %4 = call ptr @memset(ptr %format, i32 255, i32 88)
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %is_streaming = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %is_streaming to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_streaming, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end2, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end2:                                          ; preds = %if.end
  %call3 = call fastcc i32 @imx7_csi_try_fmt(ptr noundef %1, ptr noundef %sd_state, ptr noundef %sdformat, ptr noundef nonnull %cc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end2.out_unlock_crit_edge, label %if.end6

if.end2.out_unlock_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end6:                                          ; preds = %if.end2
  %9 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pad, align 4
  %11 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end6
  %num_pads.i.i = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 1, i32 0, i32 5
  %13 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %10, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !97

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %10, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %15 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %16, i32 %spec.select.i.i
  br label %imx7_csi_get_format.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 9, i32 %10
  br label %imx7_csi_get_format.exit

imx7_csi_get_format.exit:                         ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %tobool9.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool9.not, label %imx7_csi_get_format.exit.out_unlock_crit_edge, label %if.end11

imx7_csi_get_format.exit.out_unlock_crit_edge:    ; preds = %imx7_csi_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end11:                                         ; preds = %imx7_csi_get_format.exit
  %format12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %retval.0.i, ptr %format12, i32 48)
  %18 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp14 = icmp eq i32 %19, 0
  br i1 %cmp14, label %if.then15, label %if.end11.if.end33_crit_edge

if.end11.if.end33_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then15:                                        ; preds = %if.end11
  %pad16 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %20 = ptrtoint ptr %pad16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %pad16, align 4
  %21 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sdformat, align 4
  %23 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %format, align 4
  %format19 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %24 = call ptr @memcpy(ptr %format19, ptr %format12, i32 48)
  %call21 = call fastcc i32 @imx7_csi_try_fmt(ptr noundef %1, ptr noundef %sd_state, ptr noundef nonnull %format, ptr noundef nonnull %outcc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then15.out_unlock_crit_edge

if.then15.out_unlock_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end24:                                         ; preds = %if.then15
  %25 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i72 = icmp eq i32 %26, 0
  br i1 %cmp.i72, label %if.then.i76, label %if.end.i82

if.then.i76:                                      ; preds = %if.end24
  %num_pads.i.i73 = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %num_pads.i.i73 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %num_pads.i.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %cmp.not.i.i75 = icmp ugt i16 %28, 1
  br i1 %cmp.not.i.i75, label %if.then.i76.v4l2_subdev_get_try_format.exit.i80_crit_edge, label %do.end.i.i77, !prof !97

if.then.i76.v4l2_subdev_get_try_format.exit.i80_crit_edge: ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i80

do.end.i.i77:                                     ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i80

v4l2_subdev_get_try_format.exit.i80:              ; preds = %do.end.i.i77, %if.then.i76.v4l2_subdev_get_try_format.exit.i80_crit_edge
  %spec.select.i.i78 = phi i32 [ 0, %do.end.i.i77 ], [ 1, %if.then.i76.v4l2_subdev_get_try_format.exit.i80_crit_edge ]
  %29 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i79 = getelementptr %struct.v4l2_subdev_pad_config, ptr %30, i32 %spec.select.i.i78
  br label %imx7_csi_get_format.exit84

if.end.i82:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i81 = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 9, i32 1
  br label %imx7_csi_get_format.exit84

imx7_csi_get_format.exit84:                       ; preds = %if.end.i82, %v4l2_subdev_get_try_format.exit.i80
  %retval.0.i83 = phi ptr [ %arrayidx.i.i79, %v4l2_subdev_get_try_format.exit.i80 ], [ %arrayidx.i81, %if.end.i82 ]
  %31 = call ptr @memcpy(ptr %retval.0.i83, ptr %format19, i32 48)
  %32 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp29 = icmp eq i32 %33, 1
  br i1 %cmp29, label %if.then30, label %imx7_csi_get_format.exit84.out_unlock_crit_edge

imx7_csi_get_format.exit84.out_unlock_crit_edge:  ; preds = %imx7_csi_get_format.exit84
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.then30:                                        ; preds = %imx7_csi_get_format.exit84
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %outcc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %outcc, align 4
  %arrayidx = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %arrayidx, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end11.if.end33_crit_edge
  %37 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp35 = icmp eq i32 %.pr, 1
  br i1 %cmp35, label %if.then36, label %if.end33.out_unlock_crit_edge

if.end33.out_unlock_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cc, align 4
  %40 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pad, align 4
  %arrayidx39 = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 10, i32 %41
  %42 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %arrayidx39, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then36, %if.end33.out_unlock_crit_edge, %imx7_csi_get_format.exit84.out_unlock_crit_edge, %if.then15.out_unlock_crit_edge, %imx7_csi_get_format.exit.out_unlock_crit_edge, %if.end2.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end2.out_unlock_crit_edge ], [ %call3, %if.then36 ], [ %call3, %if.end33.out_unlock_crit_edge ], [ -16, %if.end.out_unlock_crit_edge ], [ -22, %imx7_csi_get_format.exit.out_unlock_crit_edge ], [ -22, %if.then15.out_unlock_crit_edge ], [ %call3, %imx7_csi_get_format.exit84.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cc) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outcc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_csi_pad_link_validate(ptr noundef %sd, ptr noundef %link, ptr noundef %source_fmt, ptr noundef %sink_fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %vdev1 = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev1, align 4
  %src_sd = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src_sd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @v4l2_subdev_link_validate_default(ptr noundef %sd, ptr noundef %link, ptr noundef %source_fmt, ptr noundef %sink_fmt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src_sd, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %function, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %9, label %sw.default [
    i32 20482, label %sw.bb
    i32 20481, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %is_csi2 = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %is_csi2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %is_csi2, align 2
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end5
  %call10 = tail call ptr @imx_media_pipeline_pad(ptr noundef %7, i32 noundef 0, i32 noundef 0, i1 noundef zeroext true) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %sw.bb7.cleanup_crit_edge, label %if.end13

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %entity14 = getelementptr inbounds %struct.media_pad, ptr %call10, i32 0, i32 1
  %12 = ptrtoint ptr %entity14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entity14, align 4
  %function15 = getelementptr inbounds %struct.media_entity, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %function15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %function15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20482, i32 %15)
  %cmp = icmp eq i32 %15, 20482
  %is_csi216 = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 21
  %frombool = zext i1 %cmp to i8
  %16 = ptrtoint ptr %is_csi216 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %is_csi216, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %is_csi217 = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 21
  %17 = ptrtoint ptr %is_csi217 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %is_csi217, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end13, %sw.bb
  %pixelformat = getelementptr inbounds %struct.imx_media_video_dev, ptr %3, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixelformat, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %19, label %do.body [
    i32 1498831189, label %sw.epilog.cleanup_crit_edge
    i32 1448695129, label %sw.epilog.cleanup_crit_edge45
    i32 1497715271, label %sw.epilog.cleanup_crit_edge46
    i32 540029273, label %sw.epilog.cleanup_crit_edge47
    i32 540160345, label %sw.epilog.cleanup_crit_edge48
    i32 825770306, label %sw.epilog.cleanup_crit_edge49
    i32 1196573255, label %sw.epilog.cleanup_crit_edge50
    i32 1195528775, label %sw.epilog.cleanup_crit_edge51
    i32 1111967570, label %sw.epilog.cleanup_crit_edge52
    i32 844257602, label %sw.epilog.cleanup_crit_edge53
    i32 909197895, label %sw.epilog.cleanup_crit_edge54
    i32 909201991, label %sw.epilog.cleanup_crit_edge55
    i32 909199186, label %sw.epilog.cleanup_crit_edge56
  ]

sw.epilog.cleanup_crit_edge56:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge55:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge54:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge53:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge52:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge51:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge50:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge49:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge48:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge47:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge46:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge45:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx7_csi_pad_link_validate.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx7_csi_pad_link_validate, %if.then25)) #6
          to label %cleanup [label %if.then25], !srcloc !99

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pixelformat, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx7_csi_pad_link_validate.__UNIQUE_ID_ddebug315, ptr noundef %22, ptr noundef nonnull @.str.28, i32 noundef %24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %do.body, %sw.epilog.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge45, %sw.epilog.cleanup_crit_edge46, %sw.epilog.cleanup_crit_edge47, %sw.epilog.cleanup_crit_edge48, %sw.epilog.cleanup_crit_edge49, %sw.epilog.cleanup_crit_edge50, %sw.epilog.cleanup_crit_edge51, %sw.epilog.cleanup_crit_edge52, %sw.epilog.cleanup_crit_edge53, %sw.epilog.cleanup_crit_edge54, %sw.epilog.cleanup_crit_edge55, %sw.epilog.cleanup_crit_edge56, %sw.bb7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -19, %sw.bb7.cleanup_crit_edge ], [ -22, %if.then25 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge45 ], [ 0, %sw.epilog.cleanup_crit_edge46 ], [ 0, %sw.epilog.cleanup_crit_edge47 ], [ 0, %sw.epilog.cleanup_crit_edge48 ], [ 0, %sw.epilog.cleanup_crit_edge49 ], [ 0, %sw.epilog.cleanup_crit_edge50 ], [ 0, %sw.epilog.cleanup_crit_edge51 ], [ 0, %sw.epilog.cleanup_crit_edge52 ], [ 0, %sw.epilog.cleanup_crit_edge53 ], [ 0, %sw.epilog.cleanup_crit_edge54 ], [ 0, %sw.epilog.cleanup_crit_edge55 ], [ 0, %sw.epilog.cleanup_crit_edge56 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_init_mbus_fmt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_enum_mbus_formats(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx7_csi_try_fmt(ptr noundef readonly %csi, ptr nocapture noundef readonly %sd_state, ptr noundef %sdformat, ptr nocapture noundef writeonly %cc) unnamed_addr #2 align 64 {
entry:
  %code = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code) #6
  %0 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %code, align 4, !annotation !98
  %1 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.imx7_csi, ptr %csi, i32 0, i32 1, i32 0, i32 5
  %3 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.not.i.i.not = icmp eq i16 %4, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !96

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %5 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd_state, align 4
  br label %imx7_csi_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.imx7_csi, ptr %csi, i32 0, i32 9, i32 0
  br label %imx7_csi_get_format.exit

imx7_csi_get_format.exit:                         ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %6, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %imx7_csi_get_format.exit.cleanup_crit_edge, label %if.end

imx7_csi_get_format.exit.cleanup_crit_edge:       ; preds = %imx7_csi_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %imx7_csi_get_format.exit
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %7 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pad, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %8, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb18
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %code1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code1, align 4
  %call2 = tail call ptr @imx_media_find_mbus_format(i32 noundef %11, i32 noundef 7) #6
  %12 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %retval.0.i, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %14 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height5, align 4
  %18 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %code1, align 4
  %code8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %code8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %code8, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 3
  %21 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %field, align 4
  %field10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %field10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %field10, align 4
  %24 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call2, ptr %cc, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 4
  %25 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %colorspace, align 4
  %colorspace12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %colorspace12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %colorspace12, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 7
  %28 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %xfer_func, align 4
  %xfer_func14 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 7
  %30 = ptrtoint ptr %xfer_func14 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %xfer_func14, align 4
  %quantization = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 6
  %31 = ptrtoint ptr %quantization to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %quantization, align 2
  %quantization16 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 6
  %33 = ptrtoint ptr %quantization16 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %quantization16, align 2
  %34 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 4
  %37 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 5
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %36, ptr %37, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %code20 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %code20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %code20, align 4
  %call21 = tail call ptr @imx_media_find_mbus_format(i32 noundef %40, i32 noundef 7) #6
  %41 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call21, ptr %cc, align 4
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then23, label %sw.bb18.if.end28_crit_edge

sw.bb18.if.end28_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then23:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = call i32 @imx_media_enum_mbus_formats(ptr noundef nonnull %code, i32 noundef 0, i32 noundef 3) #6
  %42 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %code, align 4
  %call25 = call ptr @imx_media_find_mbus_format(i32 noundef %43, i32 noundef 3) #6
  %44 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call25, ptr %cc, align 4
  %codes = getelementptr inbounds %struct.imx_media_pixfmt, ptr %call25, i32 0, i32 1
  %45 = ptrtoint ptr %codes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %codes, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %49 = ptrtoint ptr %code20 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %code20, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %sw.bb18.if.end28_crit_edge
  %field30 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %50 = ptrtoint ptr %field30 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %field30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp.not = icmp eq i32 %51, 4
  br i1 %cmp.not, label %if.end28.sw.epilog_crit_edge, label %if.then31

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %field30 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %field30, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then31, %if.end28.sw.epilog_crit_edge, %sw.bb
  %format35 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  call void @imx_media_try_colorimetry(ptr noundef %format35, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %imx7_csi_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %imx7_csi_get_format.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_find_mbus_format(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_try_colorimetry(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate_default(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_pipeline_pad(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_csi_registered(ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %arrayidx = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 9, i32 0
  %arrayidx1 = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 10, i32 0
  %call2 = tail call i32 @imx_media_init_mbus_fmt(ptr noundef %arrayidx, i32 noundef 800, i32 noundef 600, i32 noundef 0, i32 noundef 1, ptr noundef %arrayidx1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx4 = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 11, i32 0
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %arrayidx4, align 4
  %denominator = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 11, i32 0, i32 1
  %3 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 30, ptr %denominator, align 4
  %arrayidx.1 = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 9, i32 1
  %arrayidx1.1 = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 10, i32 1
  %call2.1 = tail call i32 @imx_media_init_mbus_fmt(ptr noundef %arrayidx.1, i32 noundef 800, i32 noundef 600, i32 noundef 0, i32 noundef 1, ptr noundef %arrayidx1.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %cmp3.1 = icmp slt i32 %call2.1, 0
  br i1 %cmp3.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %arrayidx4.1 = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %arrayidx4.1, align 4
  %denominator.1 = getelementptr %struct.imx7_csi, ptr %1, i32 0, i32 11, i32 1, i32 1
  %5 = ptrtoint ptr %denominator.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 30, ptr %denominator.1, align 4
  %sd7 = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 1
  %dev = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 1, i32 14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call9 = tail call ptr @imx_media_capture_device_init(ptr noundef %7, ptr noundef %sd7, i32 noundef 1, i1 noundef zeroext false) #6
  %vdev = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %vdev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %vdev, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end.1
  %call17 = tail call i32 @imx_media_capture_device_register(ptr noundef %call9, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end15.cleanup_crit_edge, label %if.then18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdev, align 4
  tail call void @imx_media_capture_device_remove(ptr noundef %11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end15.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then12 ], [ %call17, %if.then18 ], [ 0, %if.end15.cleanup_crit_edge ], [ %call2, %entry.cleanup_crit_edge ], [ %call2.1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx7_csi_unregistered(ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %vdev = getelementptr inbounds %struct.imx7_csi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  tail call void @imx_media_capture_device_unregister(ptr noundef %3) #6
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  tail call void @imx_media_capture_device_remove(ptr noundef %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_capture_device_init(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_capture_device_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_capture_device_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_capture_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_get_fwnode_pad_1_to_1(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_endpoint_by_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_subdev_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_csi_notify_bound(ptr nocapture noundef %notifier, ptr noundef %sd, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pads = getelementptr i8, ptr %notifier, i32 -152
  %0 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pads, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 3
  %2 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %function, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20481, i32 %3)
  %cmp = icmp eq i32 %3, 20481
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 10
  %4 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65536, ptr %grp_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %src_sd = getelementptr i8, ptr %notifier, i32 256
  %5 = ptrtoint ptr %src_sd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sd, ptr %src_sd, align 4
  %call3 = tail call i32 @v4l2_create_fwnode_links_to_pad(ptr noundef %sd, ptr noundef %1, i32 noundef 3) #6
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_create_fwnode_links_to_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !32, !34, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !60, !62, !63, !64, !65, !67, !69, !71, !72, !73, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_imx7_media_csi__316_1266_imx7_csi_driver_init6, !1, !"__initcall__kmod_imx7_media_csi__316_1266_imx7_csi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1266, i32 1}
!2 = !{ptr @__exitcall_imx7_csi_driver_exit, !1, !"__exitcall_imx7_csi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description317, !4, !"__UNIQUE_ID_description317", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1268, i32 1}
!5 = !{ptr @__UNIQUE_ID_author318, !6, !"__UNIQUE_ID_author318", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1269, i32 1}
!7 = !{ptr @__UNIQUE_ID_file319, !8, !"__UNIQUE_ID_file319", i1 false, i1 false}
!8 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1270, i32 1}
!9 = !{ptr @__UNIQUE_ID_license320, !8, !"__UNIQUE_ID_license320", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias321, !11, !"__UNIQUE_ID_alias321", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1271, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1263, i32 11}
!14 = !{ptr @imx7_csi_driver, !15, !"imx7_csi_driver", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1258, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1143, i32 39}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1146, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @imx7_csi_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @imx7_csi_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @imx7_csi_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1158, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @imx7_csi_probe.__key.8, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1159, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1162, i32 65}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1165, i32 3}
!36 = !{ptr @imx7_csi_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @imx7_csi_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 623, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @imx7_csi_irq_handler._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @imx7_csi_irq_handler._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 628, i32 3}
!46 = !{ptr @imx7_csi_irq_handler._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @imx7_csi_irq_handler._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @imx7_csi_subdev_ops, !49, !"imx7_csi_subdev_ops", i1 false, i1 false}
!49 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1049, i32 37}
!50 = !{ptr @imx7_csi_video_ops, !51, !"imx7_csi_video_ops", i1 false, i1 false}
!51 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1037, i32 43}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 377, i32 3}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @imx7_csi_dma_setup._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @imx7_csi_dma_setup._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @init_completion.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../include/linux/completion.h", i32 87, i32 2}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 415, i32 3}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @imx7_csi_dma_stop._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @imx7_csi_dma_stop._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @imx7_csi_pad_ops, !66, !"imx7_csi_pad_ops", i1 false, i1 false}
!66 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1041, i32 41}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 989, i32 3}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @imx7_csi_pad_link_validate.__UNIQUE_ID_ddebug315, !70, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!74 = !{ptr @imx7_csi_internal_ops, !75, !"imx7_csi_internal_ops", i1 false, i1 false}
!75 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1054, i32 46}
!76 = !{ptr @imx7_csi_entity_ops, !77, !"imx7_csi_entity_ops", i1 false, i1 false}
!77 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1063, i32 45}
!78 = !{ptr @imx7_csi_notify_ops, !79, !"imx7_csi_notify_ops", i1 false, i1 false}
!79 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1092, i32 52}
!80 = !{ptr @imx7_csi_of_match, !81, !"imx7_csi_of_match", i1 false, i1 false}
!81 = !{!"../drivers/staging/media/imx/imx7-media-csi.c", i32 1251, i32 34}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 4267613}
!92 = !{i64 2157047397}
!93 = !{i64 2157047617}
!94 = !{i64 4267195}
!95 = !{i8 0, i8 2}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{!"auto-init"}
!99 = !{i64 2148751513, i64 2148751518, i64 2148751531, i64 2148751575, i64 2148751609, i64 2148751630}
