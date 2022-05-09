; ModuleID = '/llk/IR_all_yes/drivers/staging/media/imx/imx-media-csi.c_pt.bc'
source_filename = "../drivers/staging/media/imx/imx-media-csi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.csi_skip_desc = type { i8, i8, i8 }
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
%struct.csi_priv = type { ptr, ptr, %struct.v4l2_subdev, [3 x %struct.media_pad], %struct.v4l2_async_notifier, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, [3 x %struct.v4l2_mbus_framefmt], [3 x ptr], [3 x %struct.v4l2_fract], %struct.v4l2_rect, %struct.v4l2_rect, ptr, [2 x ptr], %struct.imx_media_dma_buf, i32, ptr, i32, ptr, i32, %struct.v4l2_fwnode_endpoint, %struct.spinlock, %struct.timer_list, i32, i32, %struct.v4l2_ctrl_handler, i32, i32, i8, i8, i8, %struct.completion }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.imx_media_dma_buf = type { ptr, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.102, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.102 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.ipu_client_platformdata = type { i32, i32, i32, i32, [2 x i32], ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_event_subscription = type { i32, i32, i32, [5 x i32] }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.ipu_image = type { %struct.v4l2_pix_format, %struct.v4l2_rect, i32, i32, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.imx_media_video_dev = type { ptr, %struct.v4l2_pix_format, %struct.v4l2_rect, ptr, %struct.list_head }
%struct.imx_media_pixfmt = type { i32, ptr, i32, i32, i32, i8, i8, i8 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }

@__initcall__kmod_imx6_media_csi__323_2084_imx_csi_driver_init6 = internal global ptr @imx_csi_driver_init, section ".initcall6.init", align 4
@imx_csi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_csi_probe, ptr @imx_csi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @imx_csi_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_csi_driver_exit = internal global ptr @imx_csi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description324 = internal constant [50 x i8] c"imx6_media_csi.description=i.MX CSI subdev driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author325 = internal constant [69 x i8] c"imx6_media_csi.author=Steve Longerbeam <steve_longerbeam@mentor.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file326 = internal constant [61 x i8] c"imx6_media_csi.file=drivers/staging/media/imx/imx6-media-csi\00", section ".modinfo", align 1
@__UNIQUE_ID_license327 = internal constant [27 x i8] c"imx6_media_csi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx-ipuv3-csi\00", [18 x i8] zeroinitializer }, align 32
@imx_csi_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"imx-ipuv3-csi\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@imx_csi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&priv->eof_timeout_timer)\00", [37 x i8] zeroinitializer }, align 32
@imx_csi_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->irqlock\00", [17 x i8] zeroinitializer }, align 32
@csi_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @csi_core_ops, ptr null, ptr null, ptr @csi_video_ops, ptr null, ptr null, ptr null, ptr @csi_pad_ops }, [32 x i8] zeroinitializer }, align 32
@csi_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @csi_registered, ptr @csi_unregistered, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@csi_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr @csi_get_fwnode_pad, ptr @csi_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@imx_csi_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@imx_csi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"imx_media_csi:2021:(&priv->ctrl_hdlr)->_lock\00", [51 x i8] zeroinitializer }, align 32
@imx_csi_probe.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 1, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx6_media_csi\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx_csi_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/media/imx/imx-media-csi.c\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"devm_pinctrl_get_select_default() failed: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@csi_idmac_eof_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.9, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013%s: EOF timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csi_idmac_eof_timeout\00", [42 x i8] zeroinitializer }, align 32
@csi_idmac_eof_timeout._entry_ptr = internal global ptr @csi_idmac_eof_timeout._entry, section ".printk_index", align 4
@csi_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @csi_subscribe_event, ptr @csi_unsubscribe_event }, [40 x i8] zeroinitializer }, align 32
@csi_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @csi_s_stream, ptr null, ptr @csi_g_frame_interval, ptr @csi_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@csi_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @imx_media_init_cfg, ptr @csi_enum_mbus_code, ptr @csi_enum_frame_size, ptr @csi_enum_frame_interval, ptr @csi_get_fmt, ptr @csi_set_fmt, ptr @csi_get_selection, ptr @csi_set_selection, ptr null, ptr null, ptr null, ptr null, ptr @csi_link_validate, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@csi_s_stream.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.13, ptr @.str.9, ptr @.str.14, i8 0, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csi_s_stream\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stream ON\0A\00", [21 x i8] zeroinitializer }, align 32
@csi_s_stream.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.13, ptr @.str.9, ptr @.str.15, i8 0, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stream OFF\0A\00", [20 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@csi_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.9, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: CSI enable error: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"csi_start\00", [22 x i8] zeroinitializer }, align 32
@csi_start._entry_ptr = internal global ptr @csi_start._entry, section ".printk_index", align 4
@csi_idmac_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.9, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: csi_idmac_setup failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csi_idmac_start\00", [16 x i8] zeroinitializer }, align 32
@csi_idmac_start._entry_ptr = internal global ptr @csi_idmac_start._entry, section ".printk_index", align 4
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx-smfc-nfb4eof\00", [47 x i8] zeroinitializer }, align 32
@csi_idmac_start._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.9, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Error registering NFB4EOF irq: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@csi_idmac_start._entry_ptr.23 = internal global ptr @csi_idmac_start._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx-smfc-eof\00", [19 x i8] zeroinitializer }, align 32
@csi_idmac_start._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.9, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Error registering eof irq: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@csi_idmac_start._entry_ptr.27 = internal global ptr @csi_idmac_start._entry.25, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@csi_idmac_get_ipu_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.9, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: failed to get SMFC\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"csi_idmac_get_ipu_resources\00", [36 x i8] zeroinitializer }, align 32
@csi_idmac_get_ipu_resources._entry_ptr = internal global ptr @csi_idmac_get_ipu_resources._entry, section ".printk_index", align 4
@csi_idmac_get_ipu_resources._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.9, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: could not get IDMAC channel %u\0A\00", [58 x i8] zeroinitializer }, align 32
@csi_idmac_get_ipu_resources._entry_ptr.32 = internal global ptr @csi_idmac_get_ipu_resources._entry.30, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@csi_idmac_nfb4eof_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.9, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s: NFB4EOF\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"csi_idmac_nfb4eof_interrupt\00", [36 x i8] zeroinitializer }, align 32
@csi_idmac_nfb4eof_interrupt._entry_ptr = internal global ptr @csi_idmac_nfb4eof_interrupt._entry, section ".printk_index", align 4
@csi_idmac_wait_last_eof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.9, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: wait last EOF timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"csi_idmac_wait_last_eof\00", [40 x i8] zeroinitializer }, align 32
@csi_idmac_wait_last_eof._entry_ptr = internal global ptr @csi_idmac_wait_last_eof._entry, section ".printk_index", align 4
@csi_skip = internal constant { [12 x %struct.csi_skip_desc], [60 x i8] } { [12 x %struct.csi_skip_desc] [%struct.csi_skip_desc { i8 1, i8 1, i8 0 }, %struct.csi_skip_desc { i8 5, i8 6, i8 16 }, %struct.csi_skip_desc { i8 4, i8 5, i8 8 }, %struct.csi_skip_desc { i8 3, i8 4, i8 4 }, %struct.csi_skip_desc { i8 2, i8 3, i8 2 }, %struct.csi_skip_desc { i8 3, i8 5, i8 10 }, %struct.csi_skip_desc { i8 1, i8 2, i8 1 }, %struct.csi_skip_desc { i8 2, i8 5, i8 11 }, %struct.csi_skip_desc { i8 1, i8 3, i8 3 }, %struct.csi_skip_desc { i8 1, i8 4, i8 7 }, %struct.csi_skip_desc { i8 1, i8 5, i8 15 }, %struct.csi_skip_desc { i8 1, i8 6, i8 31 }], [60 x i8] zeroinitializer }, align 32
@csi_enum_mbus_code._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.9, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: failed to find upstream endpoint\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csi_enum_mbus_code\00", [45 x i8] zeroinitializer }, align 32
@csi_enum_mbus_code._entry_ptr = internal global ptr @csi_enum_mbus_code._entry, section ".printk_index", align 4
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@csi_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.41, ptr @.str.9, i32 1529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"csi_set_fmt\00", [20 x i8] zeroinitializer }, align 32
@csi_set_fmt._entry_ptr = internal global ptr @csi_set_fmt._entry, section ".printk_index", align 4
@csi_set_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.42, ptr @.str.9, i32 1660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csi_set_selection\00", [46 x i8] zeroinitializer }, align 32
@csi_set_selection._entry_ptr = internal global ptr @csi_set_selection._entry, section ".printk_index", align 4
@csi_link_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.43, ptr @.str.9, i32 1131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csi_link_validate\00", [46 x i8] zeroinitializer }, align 32
@csi_link_validate._entry_ptr = internal global ptr @csi_link_validate._entry, section ".printk_index", align 4
@csi_registered._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.9, i32 1767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: failed to get CSI%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"csi_registered\00", [17 x i8] zeroinitializer }, align 32
@csi_registered._entry_ptr = internal global ptr @csi_registered._entry, section ".printk_index", align 4
@csi_link_setup.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.46, ptr @.str.9, ptr @.str.47, i8 1, i8 1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"csi_link_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"link setup %s -> %s\0A\00", [43 x i8] zeroinitializer }, align 32
@csi_link_setup._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"imx_media_csi:1064:(&priv->ctrl_hdlr)->_lock\00", [51 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@csi_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @imx_csi_notify_bound, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 9]
@__sancov_gen_cov_switch_values.52 = internal global [19 x i64] [i64 17, i64 32, i64 540029273, i64 540160345, i64 825770306, i64 842093913, i64 842094158, i64 842094169, i64 844257602, i64 909197895, i64 909199186, i64 909201991, i64 1111967570, i64 1195528775, i64 1196573255, i64 1346520914, i64 1448695129, i64 1497715271, i64 1498831189]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 8198, i64 8200]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 256, i64 258]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 65536]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 8198, i64 8200]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 4096, i64 8192]
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"imx_csi_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2076, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2081, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"imx_csi_ids\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2070, i32 40 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1993, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1994, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"csi_subdev_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1893, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"csi_internal_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1899, i32 46 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"csi_entity_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1864, i32 45 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2019, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2021, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2034, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 365, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [13 x i8] c"csi_core_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1870, i32 42 }
@___asan_gen_.130 = private unnamed_addr constant [14 x i8] c"csi_video_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1875, i32 43 }
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"csi_pad_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1881, i32 41 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1002, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1007, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 800, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 627, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 636, i32 11 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 638, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 648, i32 11 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 650, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 245, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 253, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 87, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 349, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 688, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [9 x i8] c"csi_skip\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 841, i32 35 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1254, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 998, i32 6 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1529, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1660, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1131, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1767, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1029, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1064, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [36 x i8] c"../include/linux/pinctrl/consumer.h\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 209, i32 38 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1935, i32 56 }
@___asan_gen_.280 = private unnamed_addr constant [15 x i8] c"csi_notify_ops\00", align 1
@___asan_gen_.281 = private constant [45 x i8] c"../drivers/staging/media/imx/imx-media-csi.c\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1921, i32 52 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author325, ptr @__UNIQUE_ID_description324, ptr @__UNIQUE_ID_file326, ptr @__UNIQUE_ID_license327, ptr @__exitcall_imx_csi_driver_exit, ptr @__initcall__kmod_imx6_media_csi__323_2084_imx_csi_driver_init6, ptr @csi_enum_mbus_code._entry, ptr @csi_enum_mbus_code._entry_ptr, ptr @csi_idmac_eof_timeout._entry, ptr @csi_idmac_eof_timeout._entry_ptr, ptr @csi_idmac_get_ipu_resources._entry, ptr @csi_idmac_get_ipu_resources._entry.30, ptr @csi_idmac_get_ipu_resources._entry_ptr, ptr @csi_idmac_get_ipu_resources._entry_ptr.32, ptr @csi_idmac_nfb4eof_interrupt._entry, ptr @csi_idmac_nfb4eof_interrupt._entry_ptr, ptr @csi_idmac_start._entry, ptr @csi_idmac_start._entry.21, ptr @csi_idmac_start._entry.25, ptr @csi_idmac_start._entry_ptr, ptr @csi_idmac_start._entry_ptr.23, ptr @csi_idmac_start._entry_ptr.27, ptr @csi_idmac_wait_last_eof._entry, ptr @csi_idmac_wait_last_eof._entry_ptr, ptr @csi_link_validate._entry, ptr @csi_link_validate._entry_ptr, ptr @csi_registered._entry, ptr @csi_registered._entry_ptr, ptr @csi_set_fmt._entry, ptr @csi_set_fmt._entry_ptr, ptr @csi_set_selection._entry, ptr @csi_set_selection._entry_ptr, ptr @csi_start._entry, ptr @csi_start._entry_ptr, ptr @imx_csi_driver_exit, ptr @imx_csi_driver, ptr @.str, ptr @imx_csi_ids, ptr @imx_csi_probe.__key, ptr @.str.1, ptr @imx_csi_probe.__key.2, ptr @.str.3, ptr @csi_subdev_ops, ptr @csi_internal_ops, ptr @csi_entity_ops, ptr @imx_csi_probe.__key.4, ptr @.str.5, ptr @imx_csi_probe._key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @csi_core_ops, ptr @csi_video_ops, ptr @csi_pad_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @init_completion.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @csi_skip, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @csi_link_setup._key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @csi_notify_ops], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_csi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_csi_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_csi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_csi_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_csi_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_csi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_idmac_eof_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_idmac_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_idmac_start._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_idmac_start._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_idmac_get_ipu_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_idmac_get_ipu_resources._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_idmac_nfb4eof_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_idmac_wait_last_eof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_skip to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_enum_mbus_code._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_set_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_link_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_registered._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_link_setup._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_csi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_csi_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_csi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_csi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_csi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %port.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1144, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup89_crit_edge, label %if.end

entry.cleanup89_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

if.end:                                           ; preds = %entry
  %sd = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 2
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %sd, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %call4 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup89_crit_edge

if.end.cleanup89_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

if.end7:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %ipu = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %ipu to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %ipu, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_data, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %csi_id = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %csi_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %csi_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  %cond = select i1 %cmp, i32 0, i32 2
  %smfc_id = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %smfc_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond, ptr %smfc_id, align 4
  %active_output_pad = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %active_output_pad to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %active_output_pad, align 4
  %eof_timeout_timer = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 29
  tail call void @init_timer_key(ptr noundef %eof_timeout_timer, ptr noundef nonnull @csi_idmac_eof_timeout, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @imx_csi_probe.__key) #8
  %irqlock = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 28
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.3, ptr noundef nonnull @imx_csi_probe.__key.2, i16 noundef signext 3) #8
  tail call void @v4l2_subdev_init(ptr noundef %sd, ptr noundef nonnull @csi_subdev_ops) #8
  %dev_priv.i = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 2, i32 11
  %16 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %dev_priv.i, align 4
  %internal_ops = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 2, i32 7
  %17 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @csi_internal_ops, ptr %internal_ops, align 4
  %ops = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 11
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @csi_entity_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %19 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16386, ptr %function, align 4
  %dev24 = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 2, i32 14
  %20 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %dev24, align 4
  %of_node = getelementptr inbounds %struct.ipu_client_platformdata, ptr %10, i32 0, i32 5
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 4
  %tobool25.not = icmp eq ptr %22, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %22, i32 0, i32 3
  %spec.select = select i1 %tobool25.not, ptr null, ptr %fwnode
  %fwnode28 = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 2, i32 15
  %23 = ptrtoint ptr %fwnode28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %spec.select, ptr %fwnode28, align 4
  %owner = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %owner, align 4
  %flags = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 12, ptr %flags, align 4
  %26 = ptrtoint ptr %csi_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %csi_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool32.not = icmp eq i32 %27, 0
  %cond33 = select i1 %tobool32.not, i32 1024, i32 2048
  %grp_id = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 2, i32 10
  %28 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond33, ptr %grp_id, align 4
  %name = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 2, i32 9
  %29 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ipu, align 4
  %call39 = tail call i32 @ipu_get_num(ptr noundef %30) #8
  tail call void @imx_media_grp_id_to_sd_name(ptr noundef %name, i32 noundef 32, i32 noundef %cond33, i32 noundef %call39) #8
  %flags43 = getelementptr %struct.csi_priv, ptr %call.i, i32 0, i32 3, i32 0, i32 4
  %31 = ptrtoint ptr %flags43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %flags43, align 4
  %flags43.1 = getelementptr %struct.csi_priv, ptr %call.i, i32 0, i32 3, i32 1, i32 4
  %32 = ptrtoint ptr %flags43.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %flags43.1, align 4
  %flags43.2 = getelementptr %struct.csi_priv, ptr %call.i, i32 0, i32 3, i32 2, i32 4
  %33 = ptrtoint ptr %flags43.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %flags43.2, align 4
  %pad46 = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 3
  %call48 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 3, ptr noundef %pad46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.body52, label %if.end7.cleanup89_crit_edge

if.end7.cleanup89_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

do.body52:                                        ; preds = %if.end7
  %lock = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @imx_csi_probe.__key.4) #8
  %ctrl_hdlr = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 32
  %call56 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdlr, i32 noundef 0, ptr noundef nonnull @imx_csi_probe._key, ptr noundef nonnull @.str.6) #8
  %ctrl_handler = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 2, i32 8
  %34 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ctrl_hdlr, ptr %ctrl_handler, align 4
  %35 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node, align 4
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %of_node61 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %of_node61 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %of_node61, align 8
  %40 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call ptr @devm_pinctrl_get(ptr noundef %40) #8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.body52.devm_pinctrl_get_select_default.exit_crit_edge, label %if.end.i.i

do.body52.devm_pinctrl_get_select_default.exit_crit_edge: ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_pinctrl_get_select_default.exit

if.end.i.i:                                       ; preds = %do.body52
  %call2.i.i = tail call ptr @pinctrl_lookup_state(ptr noundef %call.i.i, ptr noundef nonnull @.str.49) #8
  %cmp.i1.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i.i, label %if.then4.i.i, label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @devm_pinctrl_put(ptr noundef %call.i.i) #8
  br label %devm_pinctrl_get_select_default.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  %call7.i.i = tail call i32 @pinctrl_select_state(ptr noundef %call.i.i, ptr noundef %call2.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp.i.i, label %if.then8.i.i, label %if.end6.i.i.devm_pinctrl_get_select_default.exit_crit_edge

if.end6.i.i.devm_pinctrl_get_select_default.exit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_pinctrl_get_select_default.exit

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @devm_pinctrl_put(ptr noundef %call.i.i) #8
  %41 = inttoptr i32 %call7.i.i to ptr
  br label %devm_pinctrl_get_select_default.exit

devm_pinctrl_get_select_default.exit:             ; preds = %if.then8.i.i, %if.end6.i.i.devm_pinctrl_get_select_default.exit_crit_edge, %if.then4.i.i, %do.body52.devm_pinctrl_get_select_default.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call2.i.i, %if.then4.i.i ], [ %41, %if.then8.i.i ], [ %call.i.i, %do.body52.devm_pinctrl_get_select_default.exit_crit_edge ], [ %call.i.i, %if.end6.i.i.devm_pinctrl_get_select_default.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then65, label %devm_pinctrl_get_select_default.exit.if.end81_crit_edge

devm_pinctrl_get_select_default.exit.if.end81_crit_edge: ; preds = %devm_pinctrl_get_select_default.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then65:                                        ; preds = %devm_pinctrl_get_select_default.exit
  %42 = ptrtoint ptr %retval.0.i.i to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_csi_probe.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_csi_probe, %if.then73)) #8
          to label %do.end77 [label %if.then73], !srcloc !150

if.then73:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_csi_probe.__UNIQUE_ID_ddebug322, ptr noundef %44, ptr noundef nonnull @.str.10, i32 noundef %42) #8
  br label %do.end77

do.end77:                                         ; preds = %if.then73, %if.then65
  %cmp78.not = icmp eq ptr %retval.0.i.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp78.not, label %do.end77.if.end81_crit_edge, label %do.end77.free_crit_edge

do.end77.free_crit_edge:                          ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

do.end77.if.end81_crit_edge:                      ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.end81:                                         ; preds = %do.end77.if.end81_crit_edge, %devm_pinctrl_get_select_default.exit.if.end81_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port.i) #8
  %45 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %port.i, align 4, !annotation !151
  %notifier.i = getelementptr inbounds %struct.csi_priv, ptr %call.i, i32 0, i32 4
  tail call void @v4l2_async_nf_init(ptr noundef %notifier.i) #8
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %call.i153 = tail call ptr @dev_fwnode(ptr noundef %47) #8
  %call.i.i154 = call i32 @fwnode_property_read_u32_array(ptr noundef %call.i153, ptr noundef nonnull @.str.50, ptr noundef nonnull %port.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i154)
  %cmp.i155 = icmp slt i32 %call.i.i154, 0
  br i1 %cmp.i155, label %if.end81.imx_csi_async_register.exit.thread_crit_edge, label %if.end.i

if.end81.imx_csi_async_register.exit.thread_crit_edge: ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_csi_async_register.exit.thread

if.end.i:                                         ; preds = %if.end81
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parent.i, align 8
  %call3.i = call ptr @dev_fwnode(ptr noundef %51) #8
  %52 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port.i, align 4
  %call4.i = call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call3.i, i32 noundef %53, i32 noundef 0, i32 noundef 1) #8
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then5.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then5.i:                                       ; preds = %if.end.i
  %call7.i = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier.i, ptr noundef nonnull %call4.i, i32 noundef 28) #8
  call void @fwnode_handle_put(ptr noundef nonnull %call4.i) #8
  %cmp.i.i156 = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %54 = ptrtoint ptr %call7.i to i32
  %cmp11.not.i = icmp eq ptr %call7.i, inttoptr (i32 -17 to ptr)
  %or.cond.i = or i1 %cmp.i.i156, %cmp11.not.i
  br i1 %or.cond.i, label %if.then5.i.if.end15.i_crit_edge, label %if.then5.i.imx_csi_async_register.exit_crit_edge

if.then5.i.imx_csi_async_register.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_csi_async_register.exit

if.then5.i.if.end15.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then5.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %55 = ptrtoint ptr %notifier.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @csi_notify_ops, ptr %notifier.i, align 4
  %call18.i = call i32 @v4l2_async_subdev_nf_register(ptr noundef %sd, ptr noundef %notifier.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end15.i.imx_csi_async_register.exit.thread_crit_edge

if.end15.i.imx_csi_async_register.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_csi_async_register.exit.thread

if.end21.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %call23.i = call i32 @v4l2_async_register_subdev(ptr noundef %sd) #8
  br label %imx_csi_async_register.exit

imx_csi_async_register.exit.thread:               ; preds = %if.end15.i.imx_csi_async_register.exit.thread_crit_edge, %if.end81.imx_csi_async_register.exit.thread_crit_edge
  %retval.0.i157.ph = phi i32 [ %call18.i, %if.end15.i.imx_csi_async_register.exit.thread_crit_edge ], [ %call.i.i154, %if.end81.imx_csi_async_register.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port.i) #8
  br label %cleanup

imx_csi_async_register.exit:                      ; preds = %if.end21.i, %if.then5.i.imx_csi_async_register.exit_crit_edge
  %retval.0.i157 = phi i32 [ %call23.i, %if.end21.i ], [ %54, %if.then5.i.imx_csi_async_register.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i157)
  %tobool83.not = icmp eq i32 %retval.0.i157, 0
  br i1 %tobool83.not, label %imx_csi_async_register.exit.cleanup89_crit_edge, label %imx_csi_async_register.exit.cleanup_crit_edge

imx_csi_async_register.exit.cleanup_crit_edge:    ; preds = %imx_csi_async_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

imx_csi_async_register.exit.cleanup89_crit_edge:  ; preds = %imx_csi_async_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89

cleanup:                                          ; preds = %imx_csi_async_register.exit.cleanup_crit_edge, %imx_csi_async_register.exit.thread
  %retval.0.i157161 = phi i32 [ %retval.0.i157.ph, %imx_csi_async_register.exit.thread ], [ %retval.0.i157, %imx_csi_async_register.exit.cleanup_crit_edge ]
  call void @v4l2_async_nf_unregister(ptr noundef %notifier.i) #8
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i) #8
  br label %free

free:                                             ; preds = %cleanup, %do.end77.free_crit_edge
  %ret.0 = phi i32 [ %42, %do.end77.free_crit_edge ], [ %retval.0.i157161, %cleanup ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdlr) #8
  call void @mutex_destroy(ptr noundef %lock) #8
  br label %cleanup89

cleanup89:                                        ; preds = %free, %imx_csi_async_register.exit.cleanup89_crit_edge, %if.end7.cleanup89_crit_edge, %if.end.cleanup89_crit_edge, %entry.cleanup89_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free ], [ -12, %entry.cleanup89_crit_edge ], [ %call4, %if.end.cleanup89_crit_edge ], [ %call48, %if.end7.cleanup89_crit_edge ], [ 0, %imx_csi_async_register.exit.cleanup89_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_csi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl_hdlr = getelementptr i8, ptr %1, i32 884
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdlr) #8
  %lock = getelementptr i8, ptr %1, i32 356
  tail call void @mutex_destroy(ptr noundef %lock) #8
  %notifier = getelementptr i8, ptr %1, i32 292
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #8
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #8
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csi_idmac_eof_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev1 = getelementptr i8, ptr %t, i32 -488
  %0 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev1, align 4
  %name = getelementptr i8, ptr %t, i32 -712
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name) #11
  tail call void @imx_media_capture_device_error(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_grp_id_to_sd_name(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_get_num(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_capture_device_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_subscribe_event(ptr nocapture noundef readnone %sd, ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217729, i32 %1)
  %cmp.not = icmp eq i32 %1, 134217729
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_event_subscription, ptr %sub, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 0, ptr noundef null) #8
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_unsubscribe_event(ptr nocapture noundef readnone %sd, ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_event_unsubscribe(ptr noundef %fh, ptr noundef %sub) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_s_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #2 align 64 {
entry:
  %mbus_cfg.i.i = alloca %struct.v4l2_mbus_config, align 4
  %if_fmt.i.i = alloca %struct.v4l2_mbus_framefmt, align 4
  %crop.i.i = alloca %struct.v4l2_rect, align 4
  %image.i.i.i.i = alloca %struct.ipu_image, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %lock = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %src_sd = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_sd, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %sink = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %sink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sink, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %stream_count = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool2.not = icmp eq i32 %enable, 0
  %lnot.ext = zext i1 %tobool2.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %lnot.ext)
  %cmp.not = icmp eq i32 %7, %lnot.ext
  br i1 %cmp.not, label %if.end4, label %if.end.update_count_crit_edge

if.end.update_count_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_count

if.end4:                                          ; preds = %if.end
  br i1 %tobool2.not, label %do.body20, label %do.body

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi_s_stream.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi_s_stream, %if.then14)) #8
          to label %do.end [label %if.then14], !srcloc !150

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi_s_stream.__UNIQUE_ID_ddebug315, ptr noundef %9, ptr noundef nonnull @.str.14) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %frame_interval.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 16
  %active_output_pad.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %active_output_pad.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active_output_pad.i, align 4
  %arrayidx2.i = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 16, i32 %11
  %12 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src_sd, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end.out_crit_edge, label %if.else.i

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else.i:                                        ; preds = %do.end
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %video.i, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %if.else.i.if.end26.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end26.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_stream.i, align 4
  %tobool6.not.i = icmp eq ptr %19, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end26.i_crit_edge, label %if.else8.i

land.lhs.true.i.if.end26.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.else8.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool9.not.i = icmp eq ptr %20, null
  br i1 %tobool9.not.i, label %if.else8.i.if.else15.i_crit_edge, label %land.lhs.true10.i

if.else8.i.if.else15.i_crit_edge:                 ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15.i

land.lhs.true10.i:                                ; preds = %if.else8.i
  %s_stream11.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %s_stream11.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_stream11.i, align 4
  %tobool12.not.i = icmp eq ptr %22, null
  br i1 %tobool12.not.i, label %land.lhs.true10.i.if.else15.i_crit_edge, label %land.lhs.true10.i.if.end21.i_crit_edge

land.lhs.true10.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

land.lhs.true10.i.if.else15.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15.i

if.else15.i:                                      ; preds = %land.lhs.true10.i.if.else15.i_crit_edge, %if.else8.i.if.else15.i_crit_edge
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else15.i, %land.lhs.true10.i.if.end21.i_crit_edge
  %.sink.i = phi ptr [ %19, %if.else15.i ], [ %22, %land.lhs.true10.i.if.end21.i_crit_edge ]
  %call19.i = tail call i32 %.sink.i(ptr noundef nonnull %13, i32 noundef 1) #8
  %23 = zext i32 %call19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call19.i, label %if.end21.i.csi_start.exit_crit_edge [
    i32 0, label %if.end21.i.if.end26.i_crit_edge
    i32 -515, label %if.end21.i.if.end26.i_crit_edge87
  ]

if.end21.i.if.end26.i_crit_edge87:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.end21.i.if.end26.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.end21.i.csi_start.exit_crit_edge:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_start.exit

if.end26.i:                                       ; preds = %if.end21.i.if.end26.i_crit_edge, %if.end21.i.if.end26.i_crit_edge87, %land.lhs.true.i.if.end26.i_crit_edge, %if.else.i.if.end26.i_crit_edge
  %bus_type.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 27, i32 1
  %24 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp27.i = icmp eq i32 %25, 2
  br i1 %cmp27.i, label %if.then28.i, label %if.end26.i.if.end232.i_crit_edge

if.end26.i.if.end232.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end232.i

if.then28.i:                                      ; preds = %if.end26.i
  %26 = ptrtoint ptr %frame_interval.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frame_interval.i, align 4
  %conv.i = zext i32 %27 to i64
  %mul30.i = mul nuw nsw i64 %conv.i, 20000000
  %denominator.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 16, i32 0, i32 1
  %28 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %denominator.i, align 4
  %conv31.i = zext i32 %29 to i64
  %add.i = add nsw i64 %conv31.i, -1
  %sub.i = add nsw i64 %add.i, %mul30.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp213.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp213.i, label %if.then217.i, label %if.else223.i, !prof !152

if.then217.i:                                     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv218.i = trunc i64 %sub.i to i32
  %div221.i = udiv i32 %conv218.i, %29
  br label %if.end227.i

if.else223.i:                                     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %sub.i) #12, !srcloc !153
  %asmresult1.i.i = extractvalue { i64, i64 } %30, 1
  %extract.t486.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end227.i

if.end227.i:                                      ; preds = %if.else223.i, %if.then217.i
  %_tmp.0.off0.i = phi i32 [ %div221.i, %if.then217.i ], [ %extract.t486.i, %if.else223.i ]
  %add231.i = add i32 %_tmp.0.off0.i, 1000
  tail call void @usleep_range_state(i32 noundef %_tmp.0.off0.i, i32 noundef %add231.i, i32 noundef 2) #8
  br label %if.end232.i

if.end232.i:                                      ; preds = %if.end227.i, %if.end26.i.if.end232.i_crit_edge
  %dest.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 24
  %31 = ptrtoint ptr %dest.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dest.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp233.i = icmp eq i32 %32, 0
  br i1 %cmp233.i, label %if.then235.i, label %if.end232.i.if.end240.i_crit_edge

if.end232.i.if.end240.i_crit_edge:                ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240.i

if.then235.i:                                     ; preds = %if.end232.i
  %vdev1.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %vdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vdev1.i.i, align 4
  %smfc_id.i.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %smfc_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %smfc_id.i.i.i, align 4
  %ipu.i.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %ipu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ipu.i.i.i, align 4
  %call.i.i.i = tail call ptr @ipu_smfc_get(ptr noundef %38, i32 noundef %36) #8
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then235.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 9
  %call2.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name.i.i.i) #11
  br label %out.i.i.i

if.end.i.i.i:                                     ; preds = %if.then235.i
  %smfc4.i.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 12
  %39 = ptrtoint ptr %smfc4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i.i, ptr %smfc4.i.i.i, align 4
  %40 = ptrtoint ptr %ipu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ipu.i.i.i, align 4
  %call6.i.i.i = tail call ptr @ipu_idmac_get(ptr noundef %41, i32 noundef %36) #8
  %cmp.i36.i.i.i = icmp ugt ptr %call6.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.i.i.i, label %do.end11.i.i.i, label %csi_idmac_get_ipu_resources.exit.thread.i.i

do.end11.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name14.i.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 9
  %call16.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name14.i.i.i, i32 noundef %36) #11
  br label %out.i.i.i

csi_idmac_get_ipu_resources.exit.thread.i.i:      ; preds = %if.end.i.i.i
  %idmac_ch19.i.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call6.i.i.i, ptr %idmac_ch19.i.i.i, align 4
  %43 = ptrtoint ptr %smfc4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %smfc4.i.i.i, align 4
  %csi_id.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 7
  %45 = ptrtoint ptr %csi_id.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %csi_id.i.i, align 4
  %vc_num.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 26
  %47 = ptrtoint ptr %vc_num.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vc_num.i.i, align 4
  %call2.i.i = tail call i32 @ipu_smfc_map_channel(ptr noundef %44, i32 noundef %46, i32 noundef %48) #8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %underrun_buf.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 21
  %sizeimage.i.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %34, i32 0, i32 1, i32 5
  %51 = ptrtoint ptr %sizeimage.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sizeimage.i.i, align 4
  %call3.i.i = tail call i32 @imx_media_alloc_dma_buf(ptr noundef %50, ptr noundef %underrun_buf.i.i, i32 noundef %52) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %csi_idmac_get_ipu_resources.exit.thread.i.i.out_put_ipu.i.i_crit_edge

csi_idmac_get_ipu_resources.exit.thread.i.i.out_put_ipu.i.i_crit_edge: ; preds = %csi_idmac_get_ipu_resources.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_ipu.i.i

out.i.i.i:                                        ; preds = %do.end11.i.i.i, %do.end.i.i.i
  %ret.0.in.i.i.i = phi ptr [ %call.i.i.i, %do.end.i.i.i ], [ %call6.i.i.i, %do.end11.i.i.i ]
  %ret.0.i.i.i = ptrtoint ptr %ret.0.in.i.i.i to i32
  %idmac_ch.i.i.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 11
  %53 = ptrtoint ptr %idmac_ch.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %idmac_ch.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.i.i, label %out.i.i.i.if.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

out.i.i.i.if.end.i.i.i.i_crit_edge:               ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ipu_idmac_put(ptr noundef nonnull %54) #8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %out.i.i.i.if.end.i.i.i.i_crit_edge
  %55 = ptrtoint ptr %idmac_ch.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %idmac_ch.i.i.i.i, align 4
  %smfc.i.i.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 12
  %56 = ptrtoint ptr %smfc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %smfc.i.i.i.i, align 4
  %tobool3.not.i.i.i.i = icmp eq ptr %57, null
  br i1 %tobool3.not.i.i.i.i, label %if.end.i.i.i.i.csi_idmac_start.exit.i_crit_edge, label %if.then4.i.i.i.i

if.end.i.i.i.i.csi_idmac_start.exit.i_crit_edge:  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_idmac_start.exit.i

if.then4.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ipu_smfc_put(ptr noundef nonnull %57) #8
  br label %csi_idmac_start.exit.i

if.end6.i.i:                                      ; preds = %csi_idmac_get_ipu_resources.exit.thread.i.i
  %ipu_buf_num.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 22
  %58 = ptrtoint ptr %ipu_buf_num.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %ipu_buf_num.i.i, align 4
  %last_eof_comp.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 38
  %59 = ptrtoint ptr %last_eof_comp.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %last_eof_comp.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 38, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #8
  %frame_sequence.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 34
  %60 = ptrtoint ptr %frame_sequence.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %frame_sequence.i.i, align 4
  %last_eof.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 35
  %61 = ptrtoint ptr %last_eof.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %last_eof.i.i, align 4
  %nfb4eof.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 36
  %62 = ptrtoint ptr %nfb4eof.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %nfb4eof.i.i, align 1
  %63 = ptrtoint ptr %vdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vdev1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %image.i.i.i.i) #8
  %cc.i.i.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 15
  %65 = ptrtoint ptr %cc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cc.i.i.i.i, align 4
  %67 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  tail call void @ipu_cpmem_zero(ptr noundef %68) #8
  %69 = getelementptr inbounds i8, ptr %image.i.i.i.i, i32 72
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 8)
  store i64 0, ptr %69, align 4
  %fmt.i.i.i.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %64, i32 0, i32 1
  %71 = call ptr @memcpy(ptr %image.i.i.i.i, ptr %fmt.i.i.i.i, i32 48)
  %rect.i.i.i.i = getelementptr inbounds %struct.ipu_image, ptr %image.i.i.i.i, i32 0, i32 1
  %compose.i.i.i.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %64, i32 0, i32 2
  %72 = call ptr @memcpy(ptr %rect.i.i.i.i, ptr %compose.i.i.i.i, i32 16)
  %73 = ptrtoint ptr %vdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vdev1.i.i, align 4
  %phys6.i.i.i.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 21, i32 1
  %call.i.i.i.i.i = tail call ptr @imx_media_capture_device_next_buf(ptr noundef %74) #8
  %tobool.not.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  %arrayidx5.i.i.i.i.i = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 20, i32 0
  br i1 %tobool.not.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %arrayidx5.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i.i.i.i.i, ptr %arrayidx5.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i.i.i.i.i, i32 noundef 0) #8
  br label %for.inc.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %arrayidx5.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx5.i.i.i.i.i, align 4
  br label %for.inc.i.i.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %if.else.i.i.i.i.i, %if.then.i.i.i.i.i
  %storemerge.in.i.i.i.i.i = phi ptr [ %call.i.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %phys6.i.i.i.i.i, %if.else.i.i.i.i.i ]
  %77 = ptrtoint ptr %storemerge.in.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %storemerge.i.i.i.i.i = load i32, ptr %storemerge.in.i.i.i.i.i, align 4
  %call.1.i.i.i.i.i = tail call ptr @imx_media_capture_device_next_buf(ptr noundef %74) #8
  %tobool.not.1.i.i.i.i.i = icmp eq ptr %call.1.i.i.i.i.i, null
  %arrayidx5.1.i.i.i.i.i = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 20, i32 1
  br i1 %tobool.not.1.i.i.i.i.i, label %if.else.1.i.i.i.i.i, label %if.then.1.i.i.i.i.i

if.then.1.i.i.i.i.i:                              ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %arrayidx5.1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.1.i.i.i.i.i, ptr %arrayidx5.1.i.i.i.i.i, align 4
  %call.i.1.i.i.i.i.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.1.i.i.i.i.i, i32 noundef 0) #8
  br label %csi_idmac_setup_vb2_buf.exit.i.i.i.i

if.else.1.i.i.i.i.i:                              ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %arrayidx5.1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %arrayidx5.1.i.i.i.i.i, align 4
  br label %csi_idmac_setup_vb2_buf.exit.i.i.i.i

csi_idmac_setup_vb2_buf.exit.i.i.i.i:             ; preds = %if.else.1.i.i.i.i.i, %if.then.1.i.i.i.i.i
  %.sink.in.i.i.i.i.i = phi ptr [ %phys6.i.i.i.i.i, %if.else.1.i.i.i.i.i ], [ %call.i.1.i.i.i.i.i, %if.then.1.i.i.i.i.i ]
  %80 = ptrtoint ptr %.sink.in.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.sink.i.i.i.i.i = load i32, ptr %.sink.in.i.i.i.i.i, align 4
  %phys0.i.i.i.i = getelementptr inbounds %struct.ipu_image, ptr %image.i.i.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %phys0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %storemerge.i.i.i.i.i, ptr %phys0.i.i.i.i, align 4
  %phys1.i.i.i.i = getelementptr inbounds %struct.ipu_image, ptr %image.i.i.i.i, i32 0, i32 3
  %82 = ptrtoint ptr %phys1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %.sink.i.i.i.i.i, ptr %phys1.i.i.i.i, align 4
  %83 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp.i.i.i.i.i = icmp eq i32 %84, 2
  br i1 %cmp.i.i.i.i.i, label %csi_idmac_setup_vb2_buf.exit.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i

csi_idmac_setup_vb2_buf.exit.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge: ; preds = %csi_idmac_setup_vb2_buf.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %requires_passthrough.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %csi_idmac_setup_vb2_buf.exit.i.i.i.i
  %bayer.i.i.i.i.i = getelementptr inbounds %struct.imx_media_pixfmt, ptr %66, i32 0, i32 6
  %85 = ptrtoint ptr %bayer.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bayer.i.i.i.i.i, align 1, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i186.i.i.i.i = icmp eq i8 %86, 0
  br i1 %tobool.not.i186.i.i.i.i, label %lor.lhs.false.i.i.i.i.i, label %if.end.i.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge

if.end.i.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %requires_passthrough.exit.i.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %84)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %84, 5
  br i1 %cmp.i.not.i.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge, label %is_parallel_16bit_bus.exit.i.i.i.i.i

lor.lhs.false.i.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %requires_passthrough.exit.i.i.i.i

is_parallel_16bit_bus.exit.i.i.i.i.i:             ; preds = %lor.lhs.false.i.i.i.i.i
  %bus_width.i.i.i.i.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 27, i32 2, i32 0, i32 1
  %87 = ptrtoint ptr %bus_width.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bus_width.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %88)
  %cmp.i.i.i.i.i.i = icmp ugt i8 %88, 15
  br i1 %cmp.i.i.i.i.i.i, label %is_parallel_16bit_bus.exit.i.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

is_parallel_16bit_bus.exit.i.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge: ; preds = %is_parallel_16bit_bus.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %requires_passthrough.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %is_parallel_16bit_bus.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %code.i.i.i.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 14, i32 0, i32 2
  %89 = ptrtoint ptr %code.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %code.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8198, i32 %90)
  %cmp2.not.i.i.i.i.i = icmp ne i32 %90, 8198
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %90)
  %cmp4.i.i.i.i.i = icmp ne i32 %90, 8200
  %spec.select.i.i.i.i.i = and i1 %cmp2.not.i.i.i.i.i, %cmp4.i.i.i.i.i
  br label %requires_passthrough.exit.i.i.i.i

requires_passthrough.exit.i.i.i.i:                ; preds = %land.lhs.true.i.i.i.i.i, %is_parallel_16bit_bus.exit.i.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge, %csi_idmac_setup_vb2_buf.exit.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i1 [ false, %csi_idmac_setup_vb2_buf.exit.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge ], [ true, %is_parallel_16bit_bus.exit.i.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge ], [ true, %if.end.i.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i.i, %land.lhs.true.i.i.i.i.i ], [ false, %lor.lhs.false.i.i.i.i.i.requires_passthrough.exit.i.i.i.i_crit_edge ]
  %field.i.i.i.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %image.i.i.i.i, i32 0, i32 3
  %91 = ptrtoint ptr %field.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %field.i.i.i.i, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %92, label %requires_passthrough.exit.i.i.i.i.land.end24.i.i.i.i_crit_edge [
    i32 4, label %requires_passthrough.exit.i.i.i.i.land.end.i.i.i.i_crit_edge
    i32 8, label %requires_passthrough.exit.i.i.i.i.land.end.i.i.i.i_crit_edge88
    i32 9, label %requires_passthrough.exit.i.i.i.i.land.end.i.i.i.i_crit_edge89
  ]

requires_passthrough.exit.i.i.i.i.land.end.i.i.i.i_crit_edge89: ; preds = %requires_passthrough.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i.i.i.i

requires_passthrough.exit.i.i.i.i.land.end.i.i.i.i_crit_edge88: ; preds = %requires_passthrough.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i.i.i.i

requires_passthrough.exit.i.i.i.i.land.end.i.i.i.i_crit_edge: ; preds = %requires_passthrough.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i.i.i.i

requires_passthrough.exit.i.i.i.i.land.end24.i.i.i.i_crit_edge: ; preds = %requires_passthrough.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end24.i.i.i.i

land.end.i.i.i.i:                                 ; preds = %requires_passthrough.exit.i.i.i.i.land.end.i.i.i.i_crit_edge, %requires_passthrough.exit.i.i.i.i.land.end.i.i.i.i_crit_edge88, %requires_passthrough.exit.i.i.i.i.land.end.i.i.i.i_crit_edge89
  %field15.i.i.i.i = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 14, i32 2, i32 3
  %94 = ptrtoint ptr %field15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %field15.i.i.i.i, align 4
  %.off.i.i.i.i = add i32 %95, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i.i.i)
  %switch.i.i.i.i = icmp ult i32 %.off.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %92)
  %cmp23.i.i.i.i = icmp eq i32 %92, 9
  %spec.select201.i.i.i.i = select i1 %switch.i.i.i.i, i1 %cmp23.i.i.i.i, i1 false
  br label %land.end24.i.i.i.i

land.end24.i.i.i.i:                               ; preds = %land.end.i.i.i.i, %requires_passthrough.exit.i.i.i.i.land.end24.i.i.i.i_crit_edge
  %96 = phi i1 [ false, %requires_passthrough.exit.i.i.i.i.land.end24.i.i.i.i_crit_edge ], [ %switch.i.i.i.i, %land.end.i.i.i.i ]
  %97 = phi i1 [ false, %requires_passthrough.exit.i.i.i.i.land.end24.i.i.i.i_crit_edge ], [ %spec.select201.i.i.i.i, %land.end.i.i.i.i ]
  %interweave_swap.i.i.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 37
  %frombool25.i.i.i.i = zext i1 %97 to i8
  %98 = ptrtoint ptr %interweave_swap.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %frombool25.i.i.i.i, ptr %interweave_swap.i.i.i.i, align 2
  %pixelformat.i.i.i.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %image.i.i.i.i, i32 0, i32 2
  %99 = ptrtoint ptr %pixelformat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pixelformat.i.i.i.i, align 4
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %100, label %land.end24.i.i.i.i.sw.default.i.i.i.i_crit_edge [
    i32 825770306, label %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge
    i32 1196573255, label %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge90
    i32 1195528775, label %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge91
    i32 1111967570, label %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge92
    i32 1497715271, label %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge93
    i32 844257602, label %land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge
    i32 909197895, label %land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge94
    i32 909201991, label %land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge95
    i32 909199186, label %land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge96
    i32 540029273, label %land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge97
    i32 540160345, label %land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge98
    i32 842093913, label %land.end24.i.i.i.i.sw.bb28.i.i.i.i_crit_edge
    i32 842094169, label %land.end24.i.i.i.i.sw.bb28.i.i.i.i_crit_edge99
    i32 842094158, label %land.end24.i.i.i.i.sw.bb28.i.i.i.i_crit_edge100
    i32 1448695129, label %land.end24.i.i.i.i.sw.bb46.i.i.i.i_crit_edge
    i32 1498831189, label %land.end24.i.i.i.i.sw.bb46.i.i.i.i_crit_edge101
    i32 1346520914, label %sw.bb60.i.i.i.i
  ]

land.end24.i.i.i.i.sw.bb46.i.i.i.i_crit_edge101:  ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i.i.i.i

land.end24.i.i.i.i.sw.bb46.i.i.i.i_crit_edge:     ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46.i.i.i.i

land.end24.i.i.i.i.sw.bb28.i.i.i.i_crit_edge100:  ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i.i.i.i

land.end24.i.i.i.i.sw.bb28.i.i.i.i_crit_edge99:   ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i.i.i.i

land.end24.i.i.i.i.sw.bb28.i.i.i.i_crit_edge:     ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i.i.i.i

land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge98:   ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i.i.i.i

land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge97:   ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i.i.i.i

land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge96:   ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i.i.i.i

land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge95:   ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i.i.i.i

land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge94:   ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i.i.i.i

land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge:     ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i.i.i.i

land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge93: ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i

land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge92: ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i

land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge91: ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i

land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge90: ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i

land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge:   ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i

land.end24.i.i.i.i.sw.default.i.i.i.i_crit_edge:  ; preds = %land.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i.i.i.i

sw.bb27.i.i.i.i:                                  ; preds = %land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge, %land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge94, %land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge95, %land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge96, %land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge97, %land.end24.i.i.i.i.sw.bb27.i.i.i.i_crit_edge98
  br label %sw.epilog.i.i.i.i

sw.bb28.i.i.i.i:                                  ; preds = %land.end24.i.i.i.i.sw.bb28.i.i.i.i_crit_edge, %land.end24.i.i.i.i.sw.bb28.i.i.i.i_crit_edge99, %land.end24.i.i.i.i.sw.bb28.i.i.i.i_crit_edge100
  %102 = ptrtoint ptr %image.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %image.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %103, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool30.not.i.i.i.i, label %sw.bb28.i.i.i.i.cond.end42.i.i.i.i_crit_edge, label %cond.true.i.i.i.i

sw.bb28.i.i.i.i.cond.end42.i.i.i.i_crit_edge:     ; preds = %sw.bb28.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end42.i.i.i.i

cond.true.i.i.i.i:                                ; preds = %sw.bb28.i.i.i.i
  %and33.i.i.i.i = and i32 %103, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i.i.i)
  %tobool34.not.i.i.i.i = icmp eq i32 %and33.i.i.i.i, 0
  br i1 %tobool34.not.i.i.i.i, label %cond.true.i.i.i.i.cond.end42.i.i.i.i_crit_edge, label %cond.true35.i.i.i.i

cond.true.i.i.i.i.cond.end42.i.i.i.i_crit_edge:   ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end42.i.i.i.i

cond.true35.i.i.i.i:                              ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and38.i.i.i.i = and i32 %103, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i.i.i)
  %tobool39.not.i.i.i.i = icmp eq i32 %and38.i.i.i.i, 0
  %cond.i.i.i.i = select i1 %tobool39.not.i.i.i.i, i32 16, i32 8
  br label %cond.end42.i.i.i.i

cond.end42.i.i.i.i:                               ; preds = %cond.true35.i.i.i.i, %cond.true.i.i.i.i.cond.end42.i.i.i.i_crit_edge, %sw.bb28.i.i.i.i.cond.end42.i.i.i.i_crit_edge
  %cond43.i.i.i.i = phi i32 [ %cond.i.i.i.i, %cond.true35.i.i.i.i ], [ 32, %cond.true.i.i.i.i.cond.end42.i.i.i.i_crit_edge ], [ 64, %sw.bb28.i.i.i.i.cond.end42.i.i.i.i_crit_edge ]
  br i1 %96, label %cond.end42.i.i.i.i.sw.epilog.i.i.i.i_crit_edge, label %if.then.i.i96.i.i

cond.end42.i.i.i.i.sw.epilog.i.i.i.i_crit_edge:   ; preds = %cond.end42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i

if.then.i.i96.i.i:                                ; preds = %cond.end42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  tail call void @ipu_cpmem_skip_odd_chroma_rows(ptr noundef %105) #8
  br label %sw.epilog.i.i.i.i

sw.bb46.i.i.i.i:                                  ; preds = %land.end24.i.i.i.i.sw.bb46.i.i.i.i_crit_edge, %land.end24.i.i.i.i.sw.bb46.i.i.i.i_crit_edge101
  %106 = ptrtoint ptr %image.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %image.i.i.i.i, align 4
  %and49.i.i.i.i = and i32 %107, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i.i.i.i)
  %tobool50.not.i.i.i.i = icmp eq i32 %and49.i.i.i.i, 0
  %and54.i.i.i.i = and i32 %107, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i.i.i.i)
  %tobool55.not.i.i.i.i = icmp eq i32 %and54.i.i.i.i, 0
  %cond56.i.i.i.i = select i1 %tobool55.not.i.i.i.i, i32 16, i32 8
  %cond59.i.i.i.i = select i1 %tobool50.not.i.i.i.i, i32 32, i32 %cond56.i.i.i.i
  br label %sw.epilog.i.i.i.i

sw.bb60.i.i.i.i:                                  ; preds = %land.end24.i.i.i.i
  br i1 %retval.0.i.i.i.i.i, label %sw.epilog.thread.i.i.i.i, label %sw.bb60.i.i.i.i.sw.default.i.i.i.i_crit_edge

sw.bb60.i.i.i.i.sw.default.i.i.i.i_crit_edge:     ; preds = %sw.bb60.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i.i.i.i

sw.epilog.thread.i.i.i.i:                         ; preds = %sw.bb60.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %cycles.i.i.i.i = getelementptr inbounds %struct.imx_media_pixfmt, ptr %66, i32 0, i32 3
  %108 = ptrtoint ptr %cycles.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cycles.i.i.i.i, align 4
  br label %if.then70.i.i.i.i

sw.default.i.i.i.i:                               ; preds = %sw.bb60.i.i.i.i.sw.default.i.i.i.i_crit_edge, %land.end24.i.i.i.i.sw.default.i.i.i.i_crit_edge
  %110 = ptrtoint ptr %image.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %image.i.i.i.i, align 4
  %and66.i.i.i.i = and i32 %111, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i.i.i.i)
  %tobool67.not.i.i.i.i = icmp eq i32 %and66.i.i.i.i, 0
  %cond68.i.i.i.i = select i1 %tobool67.not.i.i.i.i, i32 16, i32 8
  br label %sw.epilog.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %sw.default.i.i.i.i, %sw.bb46.i.i.i.i, %if.then.i.i96.i.i, %cond.end42.i.i.i.i.sw.epilog.i.i.i.i_crit_edge, %sw.bb27.i.i.i.i, %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge, %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge90, %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge91, %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge92, %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge93
  %passthrough_bits.0.i.i.i.i = phi i32 [ 16, %sw.default.i.i.i.i ], [ 16, %sw.bb46.i.i.i.i ], [ 16, %cond.end42.i.i.i.i.sw.epilog.i.i.i.i_crit_edge ], [ 16, %if.then.i.i96.i.i ], [ 16, %sw.bb27.i.i.i.i ], [ 8, %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge ], [ 8, %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge90 ], [ 8, %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge91 ], [ 8, %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge92 ], [ 8, %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge93 ]
  %burst_size.0.i.i.i.i = phi i32 [ %cond68.i.i.i.i, %sw.default.i.i.i.i ], [ %cond59.i.i.i.i, %sw.bb46.i.i.i.i ], [ %cond43.i.i.i.i, %cond.end42.i.i.i.i.sw.epilog.i.i.i.i_crit_edge ], [ %cond43.i.i.i.i, %if.then.i.i96.i.i ], [ 8, %sw.bb27.i.i.i.i ], [ 16, %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge ], [ 16, %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge90 ], [ 16, %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge91 ], [ 16, %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge92 ], [ 16, %land.end24.i.i.i.i.sw.epilog.i.i.i.i_crit_edge93 ]
  br i1 %retval.0.i.i.i.i.i, label %sw.epilog.i.i.i.i.if.then70.i.i.i.i_crit_edge, label %if.else.i.i.i.i

sw.epilog.i.i.i.i.if.then70.i.i.i.i_crit_edge:    ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70.i.i.i.i

if.then70.i.i.i.i:                                ; preds = %sw.epilog.i.i.i.i.if.then70.i.i.i.i_crit_edge, %sw.epilog.thread.i.i.i.i
  %burst_size.0200.i.i.i.i = phi i32 [ 16, %sw.epilog.thread.i.i.i.i ], [ %burst_size.0.i.i.i.i, %sw.epilog.i.i.i.i.if.then70.i.i.i.i_crit_edge ]
  %passthrough_cycles.0198.i.i.i.i = phi i32 [ %109, %sw.epilog.thread.i.i.i.i ], [ 1, %sw.epilog.i.i.i.i.if.then70.i.i.i.i_crit_edge ]
  %passthrough_bits.0197.i.i.i.i = phi i32 [ 8, %sw.epilog.thread.i.i.i.i ], [ %passthrough_bits.0.i.i.i.i, %sw.epilog.i.i.i.i.if.then70.i.i.i.i_crit_edge ]
  %112 = ptrtoint ptr %interweave_swap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %interweave_swap.i.i.i.i, align 2, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool72.not.i.i.i.i = icmp eq i8 %113, 0
  br i1 %tobool72.not.i.i.i.i, label %if.then70.i.i.i.i.if.end80.i.i.i.i_crit_edge, label %if.then73.i.i.i.i

if.then70.i.i.i.i.if.end80.i.i.i.i_crit_edge:     ; preds = %if.then70.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i.i.i.i

if.then73.i.i.i.i:                                ; preds = %if.then70.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bytesperline.i.i.i.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %image.i.i.i.i, i32 0, i32 4
  %114 = ptrtoint ptr %bytesperline.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bytesperline.i.i.i.i, align 4
  %116 = ptrtoint ptr %phys0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %phys0.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %117, %115
  store i32 %add.i.i.i.i, ptr %phys0.i.i.i.i, align 4
  %118 = ptrtoint ptr %phys1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %phys1.i.i.i.i, align 4
  %add79.i.i.i.i = add i32 %119, %115
  store i32 %add79.i.i.i.i, ptr %phys1.i.i.i.i, align 4
  br label %if.end80.i.i.i.i

if.end80.i.i.i.i:                                 ; preds = %if.then73.i.i.i.i, %if.then70.i.i.i.i.if.end80.i.i.i.i_crit_edge
  %120 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  %width83.i.i.i.i = getelementptr inbounds %struct.ipu_image, ptr %image.i.i.i.i, i32 0, i32 1, i32 2
  %122 = ptrtoint ptr %width83.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %width83.i.i.i.i, align 4
  %mul.i.i.i.i = mul i32 %123, %passthrough_cycles.0198.i.i.i.i
  %height.i.i.i.i = getelementptr inbounds %struct.ipu_image, ptr %image.i.i.i.i, i32 0, i32 1, i32 3
  %124 = ptrtoint ptr %height.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %height.i.i.i.i, align 4
  tail call void @ipu_cpmem_set_resolution(ptr noundef %121, i32 noundef %mul.i.i.i.i, i32 noundef %125) #8
  %126 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  %bytesperline87.i.i.i.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %image.i.i.i.i, i32 0, i32 4
  %128 = ptrtoint ptr %bytesperline87.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bytesperline87.i.i.i.i, align 4
  tail call void @ipu_cpmem_set_stride(ptr noundef %127, i32 noundef %129) #8
  %130 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  %132 = ptrtoint ptr %phys0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %phys0.i.i.i.i, align 4
  tail call void @ipu_cpmem_set_buffer(ptr noundef %131, i32 noundef 0, i32 noundef %133) #8
  %134 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  %136 = ptrtoint ptr %phys1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %phys1.i.i.i.i, align 4
  tail call void @ipu_cpmem_set_buffer(ptr noundef %135, i32 noundef 1, i32 noundef %137) #8
  %138 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  %call93.i.i.i.i = tail call i32 @ipu_cpmem_set_format_passthrough(ptr noundef %139, i32 noundef %passthrough_bits.0197.i.i.i.i) #8
  br label %if.end104.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %sw.epilog.i.i.i.i
  %140 = ptrtoint ptr %interweave_swap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %interweave_swap.i.i.i.i, align 2, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool95.not.i.i.i.i = icmp eq i8 %141, 0
  br i1 %tobool95.not.i.i.i.i, label %if.else.i.i.i.i.if.end98.i.i.i.i_crit_edge, label %if.then96.i.i.i.i

if.else.i.i.i.i.if.end98.i.i.i.i_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.i.i.i.i

if.then96.i.i.i.i:                                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %top.i.i.i.i = getelementptr inbounds %struct.ipu_image, ptr %image.i.i.i.i, i32 0, i32 1, i32 1
  %142 = ptrtoint ptr %top.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %top.i.i.i.i, align 4
  br label %if.end98.i.i.i.i

if.end98.i.i.i.i:                                 ; preds = %if.then96.i.i.i.i, %if.else.i.i.i.i.if.end98.i.i.i.i_crit_edge
  %143 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  %call100.i.i.i.i = call i32 @ipu_cpmem_set_image(ptr noundef %144, ptr noundef nonnull %image.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i.i.i.i)
  %tobool101.not.i.i.i.i = icmp eq i32 %call100.i.i.i.i, 0
  br i1 %tobool101.not.i.i.i.i, label %if.end98.i.i.i.i.if.end104.i.i.i.i_crit_edge, label %unsetup_vb2.i.i.i.i

if.end98.i.i.i.i.if.end104.i.i.i.i_crit_edge:     ; preds = %if.end98.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i.i.i.i

if.end104.i.i.i.i:                                ; preds = %if.end98.i.i.i.i.if.end104.i.i.i.i_crit_edge, %if.end80.i.i.i.i
  %burst_size.0199.i.i.i.i = phi i32 [ %burst_size.0.i.i.i.i, %if.end98.i.i.i.i.if.end104.i.i.i.i_crit_edge ], [ %burst_size.0200.i.i.i.i, %if.end80.i.i.i.i ]
  %145 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  call void @ipu_cpmem_set_burstsize(ptr noundef %146, i32 noundef %burst_size.0199.i.i.i.i) #8
  %147 = ptrtoint ptr %smfc4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %smfc4.i.i.i, align 4
  %call106.i.i.i.i = call i32 @ipu_smfc_set_watermark(ptr noundef %148, i32 noundef 2, i32 noundef 1) #8
  %149 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  call void @ipu_cpmem_set_high_priority(ptr noundef %150) #8
  %151 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  call void @ipu_idmac_enable_watermark(ptr noundef %152, i1 noundef zeroext true) #8
  %153 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  call void @ipu_cpmem_set_axi_id(ptr noundef %154, i32 noundef 0) #8
  %cond116.in.v.i.i.i.i = select i1 %retval.0.i.i.i.i.i, i32 3, i32 2
  %cond116.in.i.i.i.i = lshr i32 %burst_size.0199.i.i.i.i, %cond116.in.v.i.i.i.i
  %cond116.i.i.i.i = add nsw i32 %cond116.in.i.i.i.i, -1
  %155 = ptrtoint ptr %smfc4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %smfc4.i.i.i, align 4
  %call118.i.i.i.i = call i32 @ipu_smfc_set_burstsize(ptr noundef %156, i32 noundef %cond116.i.i.i.i) #8
  br i1 %96, label %if.then120.i.i.i.i, label %if.end104.i.i.i.i.if.end11.i.i_crit_edge

if.end104.i.i.i.i.if.end11.i.i_crit_edge:         ; preds = %if.end104.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

if.then120.i.i.i.i:                               ; preds = %if.end104.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  %159 = ptrtoint ptr %interweave_swap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %interweave_swap.i.i.i.i, align 2, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool123.not.i.i.i.i = icmp eq i8 %160, 0
  %bytesperline130.i.i.i.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %image.i.i.i.i, i32 0, i32 4
  %161 = ptrtoint ptr %bytesperline130.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %bytesperline130.i.i.i.i, align 4
  %sub127.i.i.i.i = sub i32 0, %162
  %cond132.i.i.i.i = select i1 %tobool123.not.i.i.i.i, i32 %162, i32 %sub127.i.i.i.i
  %163 = ptrtoint ptr %pixelformat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %pixelformat.i.i.i.i, align 4
  call void @ipu_cpmem_interlaced_scan(ptr noundef %158, i32 noundef %cond132.i.i.i.i, i32 noundef %164) #8
  br label %if.end11.i.i

unsetup_vb2.i.i.i.i:                              ; preds = %if.end98.i.i.i.i
  %165 = ptrtoint ptr %arrayidx5.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx5.i.i.i.i.i, align 4
  %tobool.not.i187.i.i.i.i = icmp eq ptr %166, null
  br i1 %tobool.not.i187.i.i.i.i, label %unsetup_vb2.i.i.i.i.for.inc.i191.i.i.i.i_crit_edge, label %if.then.i189.i.i.i.i

unsetup_vb2.i.i.i.i.for.inc.i191.i.i.i.i_crit_edge: ; preds = %unsetup_vb2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i191.i.i.i.i

if.then.i189.i.i.i.i:                             ; preds = %unsetup_vb2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i188.i.i.i.i = call i64 @ktime_get() #8
  %timestamp.i.i.i.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %166, i32 0, i32 5
  %167 = ptrtoint ptr %timestamp.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %call.i.i188.i.i.i.i, ptr %timestamp.i.i.i.i.i, align 8
  call void @vb2_buffer_done(ptr noundef nonnull %166, i32 noundef 3) #8
  br label %for.inc.i191.i.i.i.i

for.inc.i191.i.i.i.i:                             ; preds = %if.then.i189.i.i.i.i, %unsetup_vb2.i.i.i.i.for.inc.i191.i.i.i.i_crit_edge
  %168 = ptrtoint ptr %arrayidx5.1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx5.1.i.i.i.i.i, align 4
  %tobool.not.1.i190.i.i.i.i = icmp eq ptr %169, null
  br i1 %tobool.not.1.i190.i.i.i.i, label %for.inc.i191.i.i.i.i.do.end.i.i_crit_edge, label %if.then.1.i193.i.i.i.i

for.inc.i191.i.i.i.i.do.end.i.i_crit_edge:        ; preds = %for.inc.i191.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.then.1.i193.i.i.i.i:                           ; preds = %for.inc.i191.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.1.i192.i.i.i.i = call i64 @ktime_get() #8
  %timestamp.1.i.i.i.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %169, i32 0, i32 5
  %170 = ptrtoint ptr %timestamp.1.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %call.i.1.i192.i.i.i.i, ptr %timestamp.1.i.i.i.i.i, align 8
  call void @vb2_buffer_done(ptr noundef nonnull %169, i32 noundef 3) #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.1.i193.i.i.i.i, %for.inc.i191.i.i.i.i.do.end.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %image.i.i.i.i) #8
  %name.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 9
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i.i, i32 noundef %call100.i.i.i.i) #11
  br label %out_free_dma_buf.i.i

if.end11.i.i:                                     ; preds = %if.then120.i.i.i.i, %if.end104.i.i.i.i.if.end11.i.i_crit_edge
  %171 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  call void @ipu_idmac_set_double_buffer(ptr noundef %172, i1 noundef zeroext true) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %image.i.i.i.i) #8
  %173 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  call void @ipu_cpmem_dump(ptr noundef %174) #8
  %175 = ptrtoint ptr %ipu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ipu.i.i.i, align 4
  call void @ipu_dump(ptr noundef %176) #8
  %177 = ptrtoint ptr %smfc4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %smfc4.i.i.i, align 4
  %call1.i.i.i = call i32 @ipu_smfc_enable(ptr noundef %178) #8
  %179 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  call void @ipu_idmac_select_buffer(ptr noundef %180, i32 noundef 0) #8
  %181 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  call void @ipu_idmac_select_buffer(ptr noundef %182, i32 noundef 1) #8
  %183 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  %call5.i.i.i = call i32 @ipu_idmac_enable_channel(ptr noundef %184) #8
  %185 = ptrtoint ptr %ipu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ipu.i.i.i, align 4
  %187 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  %call12.i.i = call i32 @ipu_idmac_channel_irq(ptr noundef %186, ptr noundef %188, i32 noundef 128) #8
  %nfb4eof_irq.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 31
  %189 = ptrtoint ptr %nfb4eof_irq.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %call12.i.i, ptr %nfb4eof_irq.i.i, align 4
  %190 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %1, align 4
  %call.i101.i.i = call i32 @devm_request_threaded_irq(ptr noundef %191, i32 noundef %call12.i.i, ptr noundef nonnull @csi_idmac_nfb4eof_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i.i)
  %tobool16.not.i.i = icmp eq i32 %call.i101.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end26.i.i, label %do.end20.i.i

do.end20.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name23.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 9
  %call25.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name23.i.i, i32 noundef %call.i101.i.i) #11
  br label %out_unsetup.i.i

if.end26.i.i:                                     ; preds = %if.end11.i.i
  %192 = ptrtoint ptr %ipu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ipu.i.i.i, align 4
  %194 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  %call29.i.i = call i32 @ipu_idmac_channel_irq(ptr noundef %193, ptr noundef %195, i32 noundef 0) #8
  %eof_irq.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 30
  %196 = ptrtoint ptr %eof_irq.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %call29.i.i, ptr %eof_irq.i.i, align 4
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %1, align 4
  %call.i102.i.i = call i32 @devm_request_threaded_irq(ptr noundef %198, i32 noundef %call29.i.i, ptr noundef nonnull @csi_idmac_eof_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102.i.i)
  %tobool33.not.i.i = icmp eq i32 %call.i102.i.i, 0
  br i1 %tobool33.not.i.i, label %csi_idmac_start.exit.thread.i, label %do.end37.i.i

do.end37.i.i:                                     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name40.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 9
  %call42.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name40.i.i, i32 noundef %call.i102.i.i) #11
  %199 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %1, align 4
  %201 = ptrtoint ptr %nfb4eof_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %nfb4eof_irq.i.i, align 4
  call void @devm_free_irq(ptr noundef %200, i32 noundef %202, ptr noundef %1) #8
  br label %out_unsetup.i.i

csi_idmac_start.exit.thread.i:                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %eof_timeout_timer.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %203 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %203, 200
  %call45.i.i = call i32 @mod_timer(ptr noundef %eof_timeout_timer.i.i, i32 noundef %add.i.i) #8
  br label %if.end240.i

out_unsetup.i.i:                                  ; preds = %do.end37.i.i, %do.end20.i.i
  %ret.0.i.i = phi i32 [ %call.i101.i.i, %do.end20.i.i ], [ %call.i102.i.i, %do.end37.i.i ]
  call fastcc void @csi_idmac_unsetup(ptr noundef %1, i32 noundef 3) #8
  br label %out_free_dma_buf.i.i

out_free_dma_buf.i.i:                             ; preds = %out_unsetup.i.i, %do.end.i.i
  %ret.1.i.i = phi i32 [ %call100.i.i.i.i, %do.end.i.i ], [ %ret.0.i.i, %out_unsetup.i.i ]
  %204 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %1, align 4
  call void @imx_media_free_dma_buf(ptr noundef %205, ptr noundef %underrun_buf.i.i) #8
  br label %out_put_ipu.i.i

out_put_ipu.i.i:                                  ; preds = %out_free_dma_buf.i.i, %csi_idmac_get_ipu_resources.exit.thread.i.i.out_put_ipu.i.i_crit_edge
  %ret.2.i.i = phi i32 [ %call3.i.i, %csi_idmac_get_ipu_resources.exit.thread.i.i.out_put_ipu.i.i_crit_edge ], [ %ret.1.i.i, %out_free_dma_buf.i.i ]
  %206 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %idmac_ch19.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %207, null
  br i1 %tobool.not.i.i.i, label %out_put_ipu.i.i.if.end.i103.i.i_crit_edge, label %if.then.i.i.i

out_put_ipu.i.i.if.end.i103.i.i_crit_edge:        ; preds = %out_put_ipu.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i103.i.i

if.then.i.i.i:                                    ; preds = %out_put_ipu.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ipu_idmac_put(ptr noundef nonnull %207) #8
  br label %if.end.i103.i.i

if.end.i103.i.i:                                  ; preds = %if.then.i.i.i, %out_put_ipu.i.i.if.end.i103.i.i_crit_edge
  %208 = ptrtoint ptr %idmac_ch19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr null, ptr %idmac_ch19.i.i.i, align 4
  %209 = ptrtoint ptr %smfc4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %smfc4.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %210, null
  br i1 %tobool3.not.i.i.i, label %if.end.i103.i.i.csi_idmac_start.exit.thread480.i_crit_edge, label %if.then4.i.i.i

if.end.i103.i.i.csi_idmac_start.exit.thread480.i_crit_edge: ; preds = %if.end.i103.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_idmac_start.exit.thread480.i

if.then4.i.i.i:                                   ; preds = %if.end.i103.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ipu_smfc_put(ptr noundef nonnull %210) #8
  br label %csi_idmac_start.exit.thread480.i

csi_idmac_start.exit.thread480.i:                 ; preds = %if.then4.i.i.i, %if.end.i103.i.i.csi_idmac_start.exit.thread480.i_crit_edge
  %211 = ptrtoint ptr %smfc4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr null, ptr %smfc4.i.i.i, align 4
  br label %stop_upstream.i

csi_idmac_start.exit.i:                           ; preds = %if.then4.i.i.i.i, %if.end.i.i.i.i.csi_idmac_start.exit.i_crit_edge
  %212 = ptrtoint ptr %smfc.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr null, ptr %smfc.i.i.i.i, align 4
  br label %stop_upstream.i

if.end240.i:                                      ; preds = %csi_idmac_start.exit.thread.i, %if.end232.i.if.end240.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mbus_cfg.i.i) #8
  %213 = getelementptr inbounds %struct.v4l2_mbus_config, ptr %mbus_cfg.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %if_fmt.i.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %crop.i.i) #8
  %214 = getelementptr inbounds %struct.v4l2_rect, ptr %crop.i.i, i32 0, i32 2
  %format_mbus.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 14
  %cc.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 15
  %215 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %cc.i.i, align 4
  %217 = ptrtoint ptr %active_output_pad.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %active_output_pad.i, align 4
  %arrayidx3.i.i = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 14, i32 %218
  %219 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %bus_type.i, align 4
  %221 = ptrtoint ptr %mbus_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %mbus_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %220)
  %cmp.i.not.i.i = icmp eq i32 %220, 5
  %bus.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 27, i32 2
  %mipi_csi2.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 27, i32 2, i32 2
  %cond.in.i.i = select i1 %cmp.i.not.i.i, ptr %mipi_csi2.i.i, ptr %bus.i.i
  %222 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 4
  %223 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %cond.i.i, ptr %213, align 4
  %224 = call ptr @memcpy(ptr %if_fmt.i.i, ptr %format_mbus.i.i, i32 48)
  %crop10.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 17
  %225 = call ptr @memcpy(ptr %crop.i.i, ptr %crop10.i.i, i32 16)
  br i1 %cmp.i.not.i.i, label %if.end240.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end240.i.if.end.i.i_crit_edge:                 ; preds = %if.end240.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end240.i
  %cycles.i.i = getelementptr inbounds %struct.imx_media_pixfmt, ptr %216, i32 0, i32 3
  %226 = ptrtoint ptr %cycles.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %cycles.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool.not.i.i = icmp eq i32 %227, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %228 = ptrtoint ptr %if_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %if_fmt.i.i, align 4
  %mul.i.i = mul i32 %229, %227
  store i32 %mul.i.i, ptr %if_fmt.i.i, align 4
  %230 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %214, align 4
  %mul16.i.i = mul i32 %231, %227
  store i32 %mul16.i.i, ptr %214, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end240.i.if.end.i.i_crit_edge
  %csi.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 13
  %232 = ptrtoint ptr %csi.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %csi.i.i, align 4
  call void @ipu_csi_set_window(ptr noundef %233, ptr noundef nonnull %crop.i.i) #8
  %234 = ptrtoint ptr %csi.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %csi.i.i, align 4
  %width19.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 17, i32 2
  %236 = ptrtoint ptr %width19.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %width19.i.i, align 4
  %width20.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 18, i32 2
  %238 = ptrtoint ptr %width20.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %width20.i.i, align 4
  %mul21.i.i = shl i32 %239, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %237, i32 %mul21.i.i)
  %cmp.i.i = icmp eq i32 %237, %mul21.i.i
  %height.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 17, i32 3
  %240 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %height.i.i, align 4
  %height24.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 18, i32 3
  %242 = ptrtoint ptr %height24.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %height24.i.i, align 4
  %mul25.i.i = shl i32 %243, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %241, i32 %mul25.i.i)
  %cmp26.i.i = icmp eq i32 %241, %mul25.i.i
  call void @ipu_csi_set_downsize(ptr noundef %235, i1 noundef zeroext %cmp.i.i, i1 noundef zeroext %cmp26.i.i) #8
  %244 = ptrtoint ptr %csi.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %csi.i.i, align 4
  %call28.i.i = call i32 @ipu_csi_init_interface(ptr noundef %245, ptr noundef nonnull %mbus_cfg.i.i, ptr noundef nonnull %if_fmt.i.i, ptr noundef %arrayidx3.i.i) #8
  %246 = ptrtoint ptr %csi.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %csi.i.i, align 4
  %248 = ptrtoint ptr %dest.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %dest.i, align 4
  %call30.i.i = call i32 @ipu_csi_set_dest(ptr noundef %247, i32 noundef %249) #8
  %250 = ptrtoint ptr %dest.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %dest.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %cmp32.i.i = icmp eq i32 %251, 0
  br i1 %cmp32.i.i, label %if.then33.i.i, label %if.end.i.i.csi_setup.exit.i_crit_edge

if.end.i.i.csi_setup.exit.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_setup.exit.i

if.then33.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %252 = ptrtoint ptr %csi.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %csi.i.i, align 4
  %skip.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 19
  %254 = ptrtoint ptr %skip.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %skip.i.i, align 4
  %skip_smfc.i.i = getelementptr inbounds %struct.csi_skip_desc, ptr %255, i32 0, i32 2
  %256 = ptrtoint ptr %skip_smfc.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %skip_smfc.i.i, align 1
  %conv.i445.i = zext i8 %257 to i32
  %max_ratio.i.i = getelementptr inbounds %struct.csi_skip_desc, ptr %255, i32 0, i32 1
  %258 = ptrtoint ptr %max_ratio.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %max_ratio.i.i, align 1
  %conv36.i.i = zext i8 %259 to i32
  %sub.i446.i = add nsw i32 %conv36.i.i, -1
  %call37.i.i = call i32 @ipu_csi_set_skip_smfc(ptr noundef %253, i32 noundef %conv.i445.i, i32 noundef %sub.i446.i, i32 noundef 0) #8
  br label %csi_setup.exit.i

csi_setup.exit.i:                                 ; preds = %if.then33.i.i, %if.end.i.i.csi_setup.exit.i_crit_edge
  %260 = ptrtoint ptr %csi.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %csi.i.i, align 4
  call void @ipu_csi_dump(ptr noundef %261) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %crop.i.i) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %if_fmt.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mbus_cfg.i.i) #8
  %fim.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 6
  %262 = ptrtoint ptr %fim.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %fim.i, align 4
  %tobool245.not.i = icmp eq ptr %263, null
  br i1 %tobool245.not.i, label %csi_setup.exit.i.if.end256.i_crit_edge, label %land.lhs.true246.i

csi_setup.exit.i.if.end256.i_crit_edge:           ; preds = %csi_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end256.i

land.lhs.true246.i:                               ; preds = %csi_setup.exit.i
  %264 = ptrtoint ptr %dest.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %dest.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %cmp248.i = icmp eq i32 %265, 0
  br i1 %cmp248.i, label %if.then250.i, label %land.lhs.true246.i.if.end256.i_crit_edge

land.lhs.true246.i.if.end256.i_crit_edge:         ; preds = %land.lhs.true246.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end256.i

if.then250.i:                                     ; preds = %land.lhs.true246.i
  %call252.i = call i32 @imx_media_fim_set_stream(ptr noundef nonnull %263, ptr noundef %arrayidx2.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252.i)
  %tobool253.not.i = icmp eq i32 %call252.i, 0
  br i1 %tobool253.not.i, label %if.then250.i.if.end256.i_crit_edge, label %if.then250.i.idmac_stop.i_crit_edge

if.then250.i.idmac_stop.i_crit_edge:              ; preds = %if.then250.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %idmac_stop.i

if.then250.i.if.end256.i_crit_edge:               ; preds = %if.then250.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end256.i

if.end256.i:                                      ; preds = %if.then250.i.if.end256.i_crit_edge, %land.lhs.true246.i.if.end256.i_crit_edge, %csi_setup.exit.i.if.end256.i_crit_edge
  %266 = ptrtoint ptr %csi.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %csi.i.i, align 4
  %call257.i = call i32 @ipu_csi_enable(ptr noundef %267) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call257.i)
  %tobool258.not.i = icmp eq i32 %call257.i, 0
  br i1 %tobool258.not.i, label %if.end256.i.update_count_crit_edge, label %do.end.i

if.end256.i.update_count_crit_edge:               ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_count

do.end.i:                                         ; preds = %if.end256.i
  %name.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 9
  %call261.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i, i32 noundef %call257.i) #11
  %268 = ptrtoint ptr %fim.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %fim.i, align 4
  %tobool264.not.i = icmp eq ptr %269, null
  br i1 %tobool264.not.i, label %do.end.i.idmac_stop.i_crit_edge, label %land.lhs.true265.i

do.end.i.idmac_stop.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %idmac_stop.i

land.lhs.true265.i:                               ; preds = %do.end.i
  %270 = ptrtoint ptr %dest.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %dest.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %cmp267.i = icmp eq i32 %271, 0
  br i1 %cmp267.i, label %if.then269.i, label %land.lhs.true265.i.stop_upstream.i_crit_edge

land.lhs.true265.i.stop_upstream.i_crit_edge:     ; preds = %land.lhs.true265.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_upstream.i

if.then269.i:                                     ; preds = %land.lhs.true265.i
  call void @__sanitizer_cov_trace_pc() #10
  %call271.i = call i32 @imx_media_fim_set_stream(ptr noundef nonnull %269, ptr noundef null, i1 noundef zeroext false) #8
  br label %idmac_stop.i

idmac_stop.i:                                     ; preds = %if.then269.i, %do.end.i.idmac_stop.i_crit_edge, %if.then250.i.idmac_stop.i_crit_edge
  %ret.0.ph.i = phi i32 [ %call257.i, %do.end.i.idmac_stop.i_crit_edge ], [ %call257.i, %if.then269.i ], [ %call252.i, %if.then250.i.idmac_stop.i_crit_edge ]
  %272 = ptrtoint ptr %dest.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %.pr.i = load i32, ptr %dest.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp274.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp274.i, label %if.then276.i, label %idmac_stop.i.stop_upstream.i_crit_edge

idmac_stop.i.stop_upstream.i_crit_edge:           ; preds = %idmac_stop.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_upstream.i

if.then276.i:                                     ; preds = %idmac_stop.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @csi_idmac_stop(ptr noundef %1) #8
  br label %stop_upstream.i

stop_upstream.i:                                  ; preds = %if.then276.i, %idmac_stop.i.stop_upstream.i_crit_edge, %land.lhs.true265.i.stop_upstream.i_crit_edge, %csi_idmac_start.exit.i, %csi_idmac_start.exit.thread480.i
  %ret.1.i = phi i32 [ %ret.0.i.i.i, %csi_idmac_start.exit.i ], [ %ret.0.ph.i, %if.then276.i ], [ %ret.0.ph.i, %idmac_stop.i.stop_upstream.i_crit_edge ], [ %ret.2.i.i, %csi_idmac_start.exit.thread480.i ], [ %call257.i, %land.lhs.true265.i.stop_upstream.i_crit_edge ]
  %273 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %src_sd, align 4
  %tobool281.not.i = icmp eq ptr %274, null
  br i1 %tobool281.not.i, label %stop_upstream.i.csi_start.exit_crit_edge, label %if.else283.i

stop_upstream.i.csi_start.exit_crit_edge:         ; preds = %stop_upstream.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_start.exit

if.else283.i:                                     ; preds = %stop_upstream.i
  %ops284.i = getelementptr inbounds %struct.v4l2_subdev, ptr %274, i32 0, i32 6
  %275 = ptrtoint ptr %ops284.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %ops284.i, align 4
  %video285.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %276, i32 0, i32 3
  %277 = ptrtoint ptr %video285.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %video285.i, align 4
  %tobool286.not.i = icmp eq ptr %278, null
  br i1 %tobool286.not.i, label %if.else283.i.csi_start.exit_crit_edge, label %land.lhs.true287.i

if.else283.i.csi_start.exit_crit_edge:            ; preds = %if.else283.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_start.exit

land.lhs.true287.i:                               ; preds = %if.else283.i
  %s_stream290.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %278, i32 0, i32 10
  %279 = ptrtoint ptr %s_stream290.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %s_stream290.i, align 4
  %tobool291.not.i = icmp eq ptr %280, null
  br i1 %tobool291.not.i, label %land.lhs.true287.i.csi_start.exit_crit_edge, label %if.else293.i

land.lhs.true287.i.csi_start.exit_crit_edge:      ; preds = %land.lhs.true287.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_start.exit

if.else293.i:                                     ; preds = %land.lhs.true287.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %281 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool294.not.i = icmp eq ptr %281, null
  br i1 %tobool294.not.i, label %if.else293.i.if.else301.i_crit_edge, label %land.lhs.true295.i

if.else293.i.if.else301.i_crit_edge:              ; preds = %if.else293.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else301.i

land.lhs.true295.i:                               ; preds = %if.else293.i
  %s_stream296.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %281, i32 0, i32 10
  %282 = ptrtoint ptr %s_stream296.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %s_stream296.i, align 4
  %tobool297.not.i = icmp eq ptr %283, null
  br i1 %tobool297.not.i, label %land.lhs.true295.i.if.else301.i_crit_edge, label %land.lhs.true295.i.cleanup.sink.split.i_crit_edge

land.lhs.true295.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true295.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

land.lhs.true295.i.if.else301.i_crit_edge:        ; preds = %land.lhs.true295.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else301.i

if.else301.i:                                     ; preds = %land.lhs.true295.i.if.else301.i_crit_edge, %if.else293.i.if.else301.i_crit_edge
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else301.i, %land.lhs.true295.i.cleanup.sink.split.i_crit_edge
  %.sink488.i = phi ptr [ %280, %if.else301.i ], [ %283, %land.lhs.true295.i.cleanup.sink.split.i_crit_edge ]
  %call300.i = call i32 %.sink488.i(ptr noundef nonnull %274, i32 noundef 0) #8
  br label %csi_start.exit

csi_start.exit:                                   ; preds = %cleanup.sink.split.i, %land.lhs.true287.i.csi_start.exit_crit_edge, %if.else283.i.csi_start.exit_crit_edge, %stop_upstream.i.csi_start.exit_crit_edge, %if.end21.i.csi_start.exit_crit_edge
  %retval.0.i63 = phi i32 [ %ret.1.i, %if.else283.i.csi_start.exit_crit_edge ], [ %ret.1.i, %land.lhs.true287.i.csi_start.exit_crit_edge ], [ %ret.1.i, %stop_upstream.i.csi_start.exit_crit_edge ], [ %call19.i, %if.end21.i.csi_start.exit_crit_edge ], [ %ret.1.i, %cleanup.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i63)
  %tobool17.not = icmp eq i32 %retval.0.i63, 0
  br i1 %tobool17.not, label %csi_start.exit.update_count_crit_edge, label %csi_start.exit.out_crit_edge

csi_start.exit.out_crit_edge:                     ; preds = %csi_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

csi_start.exit.update_count_crit_edge:            ; preds = %csi_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_count

do.body20:                                        ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi_s_stream.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi_s_stream, %if.then32)) #8
          to label %do.end36 [label %if.then32], !srcloc !150

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %284 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi_s_stream.__UNIQUE_ID_ddebug316, ptr noundef %285, ptr noundef nonnull @.str.15) #8
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body20
  %dest.i64 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 24
  %286 = ptrtoint ptr %dest.i64 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %dest.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %cmp.i = icmp eq i32 %287, 0
  br i1 %cmp.i, label %if.then.i, label %do.end36.if.end.i_crit_edge

do.end36.if.end.i_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %do.end36
  %irqlock.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 28
  %call2.i.i65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i.i) #8
  %last_eof.i.i66 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 35
  %288 = ptrtoint ptr %last_eof.i.i66 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 1, ptr %last_eof.i.i66, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i, i32 noundef %call2.i.i65) #8
  %last_eof_comp.i.i67 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 38
  %call7.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %last_eof_comp.i.i67, i32 noundef 200) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp8.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %cmp8.i.i, label %do.end12.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end12.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i68 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 9
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name.i.i68) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end12.i.i, %if.then.i.if.end.i_crit_edge, %do.end36.if.end.i_crit_edge
  %csi.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 13
  %289 = ptrtoint ptr %csi.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %csi.i, align 4
  %call.i = tail call i32 @ipu_csi_disable(ptr noundef %290) #8
  %291 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %src_sd, align 4
  %tobool.not.i70 = icmp eq ptr %292, null
  br i1 %tobool.not.i70, label %if.end.i.if.end22.i_crit_edge, label %if.else.i73

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.else.i73:                                      ; preds = %if.end.i
  %ops.i71 = getelementptr inbounds %struct.v4l2_subdev, ptr %292, i32 0, i32 6
  %293 = ptrtoint ptr %ops.i71 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %ops.i71, align 4
  %video.i72 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %294, i32 0, i32 3
  %295 = ptrtoint ptr %video.i72 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %video.i72, align 4
  %tobool2.not.i = icmp eq ptr %296, null
  br i1 %tobool2.not.i, label %if.else.i73.if.end22.i_crit_edge, label %land.lhs.true.i75

if.else.i73.if.end22.i_crit_edge:                 ; preds = %if.else.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

land.lhs.true.i75:                                ; preds = %if.else.i73
  %s_stream.i74 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %296, i32 0, i32 10
  %297 = ptrtoint ptr %s_stream.i74 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %s_stream.i74, align 4
  %tobool5.not.i = icmp eq ptr %298, null
  br i1 %tobool5.not.i, label %land.lhs.true.i75.if.end22.i_crit_edge, label %if.else7.i

land.lhs.true.i75.if.end22.i_crit_edge:           ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.else7.i:                                       ; preds = %land.lhs.true.i75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %299 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool8.not.i = icmp eq ptr %299, null
  br i1 %tobool8.not.i, label %if.else7.i.if.else15.i76_crit_edge, label %land.lhs.true9.i

if.else7.i.if.else15.i76_crit_edge:               ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15.i76

land.lhs.true9.i:                                 ; preds = %if.else7.i
  %s_stream10.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %299, i32 0, i32 10
  %300 = ptrtoint ptr %s_stream10.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %s_stream10.i, align 4
  %tobool11.not.i = icmp eq ptr %301, null
  br i1 %tobool11.not.i, label %land.lhs.true9.i.if.else15.i76_crit_edge, label %land.lhs.true9.i.if.end22.sink.split.i_crit_edge

land.lhs.true9.i.if.end22.sink.split.i_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split.i

land.lhs.true9.i.if.else15.i76_crit_edge:         ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15.i76

if.else15.i76:                                    ; preds = %land.lhs.true9.i.if.else15.i76_crit_edge, %if.else7.i.if.else15.i76_crit_edge
  br label %if.end22.sink.split.i

if.end22.sink.split.i:                            ; preds = %if.else15.i76, %land.lhs.true9.i.if.end22.sink.split.i_crit_edge
  %.sink.i77 = phi ptr [ %298, %if.else15.i76 ], [ %301, %land.lhs.true9.i.if.end22.sink.split.i_crit_edge ]
  %call19.i78 = tail call i32 %.sink.i77(ptr noundef nonnull %292, i32 noundef 0) #8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end22.sink.split.i, %land.lhs.true.i75.if.end22.i_crit_edge, %if.else.i73.if.end22.i_crit_edge, %if.end.i.if.end22.i_crit_edge
  %302 = ptrtoint ptr %dest.i64 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %dest.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %cmp24.i = icmp eq i32 %303, 0
  br i1 %cmp24.i, label %if.then25.i, label %if.end22.i.update_count_crit_edge

if.end22.i.update_count_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_count

if.then25.i:                                      ; preds = %if.end22.i
  tail call fastcc void @csi_idmac_stop(ptr noundef %1) #8
  %fim.i79 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 6
  %304 = ptrtoint ptr %fim.i79 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %fim.i79, align 4
  %tobool26.not.i = icmp eq ptr %305, null
  br i1 %tobool26.not.i, label %if.then25.i.update_count_crit_edge, label %if.then27.i

if.then25.i.update_count_crit_edge:               ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_count

if.then27.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i = tail call i32 @imx_media_fim_set_stream(ptr noundef nonnull %305, ptr noundef null, i1 noundef zeroext false) #8
  br label %update_count

update_count:                                     ; preds = %if.then27.i, %if.then25.i.update_count_crit_edge, %if.end22.i.update_count_crit_edge, %csi_start.exit.update_count_crit_edge, %if.end256.i.update_count_crit_edge, %if.end.update_count_crit_edge
  %cond = select i1 %tobool2.not, i32 -1, i32 1
  %306 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %stream_count, align 4
  %add = add i32 %307, %cond
  %308 = call i32 @llvm.smax.i32(i32 %add, i32 0)
  %309 = ptrtoint ptr %stream_count to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %stream_count, align 4
  br label %out

out:                                              ; preds = %update_count, %csi_start.exit.out_crit_edge, %do.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ %retval.0.i63, %csi_start.exit.out_crit_edge ], [ -32, %lor.lhs.false.out_crit_edge ], [ -32, %entry.out_crit_edge ], [ 0, %update_count ], [ -19, %do.end.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_g_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %lock = getelementptr inbounds %struct.csi_priv, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %4 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fi, align 4
  %arrayidx = getelementptr %struct.csi_priv, ptr %3, i32 0, i32 16, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %interval, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_s_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %lock = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %frame_interval = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fi, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %3, label %entry.out_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb10
    i32 1, label %sw.bb14
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %entry
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %5 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %sw.bb.if.then_crit_edge, label %lor.lhs.false

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.bb
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %9 = ptrtoint ptr %frame_interval to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %frame_interval, align 4
  %11 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %interval, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %arrayidx5 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 16, i32 2
  %12 = ptrtoint ptr %interval to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %interval, align 4
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %arrayidx5, align 4
  %arrayidx8 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 16, i32 1
  %15 = load i64, ptr %interval, align 4
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %arrayidx8, align 4
  %skip = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @csi_skip, ptr %skip, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %interval11 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %18 = ptrtoint ptr %interval11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %interval11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %sw.bb10.if.then.i_crit_edge, label %lor.lhs.false.i

sw.bb10.if.then.i_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb10
  %denominator.i = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %denominator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1.i = icmp eq i32 %21, 0
  br i1 %cmp1.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %22 = ptrtoint ptr %frame_interval to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frame_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp4.i = icmp eq i32 %23, 0
  br i1 %cmp4.i, label %lor.lhs.false2.i.if.then.i_crit_edge, label %lor.lhs.false5.i

lor.lhs.false2.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false2.i
  %denominator6.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 16, i32 0, i32 1
  %24 = ptrtoint ptr %denominator6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %denominator6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp7.i = icmp eq i32 %25, 0
  br i1 %cmp7.i, label %lor.lhs.false5.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false5.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false5.i.if.then.i_crit_edge, %lor.lhs.false2.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb10.if.then.i_crit_edge
  %26 = ptrtoint ptr %frame_interval to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %frame_interval, align 4
  %28 = ptrtoint ptr %interval11 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %interval11, align 4
  br label %csi_find_best_skip.exit

if.end.i:                                         ; preds = %lor.lhs.false5.i
  %conv.i = zext i32 %19 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !152

if.then168.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %21
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %mul.i) #12, !srcloc !153
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %29, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %conv13.i = zext i32 %23 to i64
  %mul14.i = mul nuw nsw i64 %conv13.i, 1000000
  br label %for.body.i

for.body.i:                                       ; preds = %div_u64.exit170.i.for.body.i_crit_edge, %div_u64.exit.i
  %skip.0174.i = phi ptr [ @csi_skip, %div_u64.exit.i ], [ %incdec.ptr.i, %div_u64.exit170.i.for.body.i_crit_edge ]
  %i.0173.i = phi i32 [ 0, %div_u64.exit.i ], [ %inc.i, %div_u64.exit170.i.for.body.i_crit_edge ]
  %min_err.0172.i = phi i32 [ -1, %div_u64.exit.i ], [ %min_err.1.i, %div_u64.exit170.i.for.body.i_crit_edge ]
  %best_skip.0171.i = phi ptr [ @csi_skip, %div_u64.exit.i ], [ %best_skip.1.i, %div_u64.exit170.i.for.body.i_crit_edge ]
  %max_ratio.i = getelementptr inbounds %struct.csi_skip_desc, ptr %skip.0174.i, i32 0, i32 1
  %30 = ptrtoint ptr %max_ratio.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %max_ratio.i, align 1
  %conv15.i = zext i8 %31 to i64
  %mul16.i = mul nuw nsw i64 %mul14.i, %conv15.i
  %32 = ptrtoint ptr %skip.0174.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %skip.0174.i, align 1
  %conv18.i = zext i8 %33 to i32
  %mul19.i = mul i32 %25, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul16.i)
  %cmp164.i.i161.i = icmp ult i64 %mul16.i, 4294967296
  br i1 %cmp164.i.i161.i, label %if.then168.i.i166.i, label %if.else174.i.i168.i, !prof !152

if.then168.i.i166.i:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i163.i = trunc i64 %mul16.i to i32
  %div172.i.i164.i = udiv i32 %conv169.i.i163.i, %mul19.i
  %conv173.i.i165.i = zext i32 %div172.i.i164.i to i64
  br label %div_u64.exit170.i

if.else174.i.i168.i:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul19.i, i64 %mul16.i) #12, !srcloc !153
  %asmresult1.i.i.i167.i = extractvalue { i64, i64 } %34, 1
  br label %div_u64.exit170.i

div_u64.exit170.i:                                ; preds = %if.else174.i.i168.i, %if.then168.i.i166.i
  %dividend.addr.0.i.i169.i = phi i64 [ %conv173.i.i165.i, %if.then168.i.i166.i ], [ %asmresult1.i.i.i167.i, %if.else174.i.i168.i ]
  %sub.i = sub i64 %dividend.addr.0.i.i169.i, %dividend.addr.0.i.i.i
  %35 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %conv25.i = zext i32 %min_err.0172.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %conv25.i)
  %cmp26.i = icmp ult i64 %35, %conv25.i
  %conv29.i = trunc i64 %35 to i32
  %best_skip.1.i = select i1 %cmp26.i, ptr %skip.0174.i, ptr %best_skip.0171.i
  %min_err.1.i = select i1 %cmp26.i, i32 %conv29.i, i32 %min_err.0172.i
  %inc.i = add nuw nsw i32 %i.0173.i, 1
  %incdec.ptr.i = getelementptr %struct.csi_skip_desc, ptr %skip.0174.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %for.end.i, label %div_u64.exit170.i.for.body.i_crit_edge

div_u64.exit170.i.for.body.i_crit_edge:           ; preds = %div_u64.exit170.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %div_u64.exit170.i
  %36 = ptrtoint ptr %frame_interval to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %frame_interval, align 4
  %38 = ptrtoint ptr %interval11 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %37, ptr %interval11, align 4
  %max_ratio.i.i = getelementptr inbounds %struct.csi_skip_desc, ptr %best_skip.1.i, i32 0, i32 1
  %39 = ptrtoint ptr %max_ratio.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %max_ratio.i.i, align 1
  %conv.i.i = zext i8 %40 to i32
  %41 = lshr i64 %37, 32
  %42 = trunc i64 %41 to i32
  %mul.i.i = mul i32 %conv.i.i, %42
  store i32 %mul.i.i, ptr %interval11, align 4
  %43 = ptrtoint ptr %best_skip.1.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %best_skip.1.i, align 1
  %conv1.i.i = zext i8 %44 to i32
  %45 = trunc i64 %37 to i32
  %mul2.i.i = mul i32 %conv1.i.i, %45
  %46 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul2.i.i, ptr %denominator.i, align 4
  %call.i.i = tail call i32 @gcd(i32 noundef %mul.i.i, i32 noundef %mul2.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp ugt i32 %call.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %for.end.i.csi_find_best_skip.exit_crit_edge

for.end.i.csi_find_best_skip.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_find_best_skip.exit

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %div7.i.i = udiv i32 %mul.i.i, %call.i.i
  %47 = ptrtoint ptr %interval11 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div7.i.i, ptr %interval11, align 4
  %div9.i.i = udiv i32 %mul2.i.i, %call.i.i
  %48 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div9.i.i, ptr %denominator.i, align 4
  br label %csi_find_best_skip.exit

csi_find_best_skip.exit:                          ; preds = %if.then.i.i, %for.end.i.csi_find_best_skip.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ @csi_skip, %if.then.i ], [ %best_skip.1.i, %for.end.i.csi_find_best_skip.exit_crit_edge ], [ %best_skip.1.i, %if.then.i.i ]
  %skip13 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 19
  %49 = ptrtoint ptr %skip13 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %retval.0.i, ptr %skip13, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %interval15 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %50 = ptrtoint ptr %frame_interval to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %frame_interval, align 4
  %52 = ptrtoint ptr %interval15 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %51, ptr %interval15, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %csi_find_best_skip.exit, %if.end
  %53 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fi, align 4
  %arrayidx18 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 16, i32 %54
  %interval19 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %55 = ptrtoint ptr %interval19 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %interval19, align 4
  %57 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %56, ptr %arrayidx18, align 4
  br label %out

out:                                              ; preds = %sw.epilog, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_fim_set_stream(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_csi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csi_idmac_stop(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %eof_irq = getelementptr inbounds %struct.csi_priv, ptr %priv, i32 0, i32 30
  %2 = ptrtoint ptr %eof_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eof_irq, align 4
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %3, ptr noundef %priv) #8
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %nfb4eof_irq = getelementptr inbounds %struct.csi_priv, ptr %priv, i32 0, i32 31
  %6 = ptrtoint ptr %nfb4eof_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nfb4eof_irq, align 4
  tail call void @devm_free_irq(ptr noundef %5, i32 noundef %7, ptr noundef %priv) #8
  %idmac_ch.i = getelementptr inbounds %struct.csi_priv, ptr %priv, i32 0, i32 11
  %8 = ptrtoint ptr %idmac_ch.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %idmac_ch.i, align 4
  %call.i = tail call i32 @ipu_idmac_disable_channel(ptr noundef %9) #8
  %smfc.i = getelementptr inbounds %struct.csi_priv, ptr %priv, i32 0, i32 12
  %10 = ptrtoint ptr %smfc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smfc.i, align 4
  %call1.i = tail call i32 @ipu_smfc_disable(ptr noundef %11) #8
  %arrayidx.i.i = getelementptr %struct.csi_priv, ptr %priv, i32 0, i32 20, i32 0
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %entry.for.inc.i.i_crit_edge, label %if.then.i.i

entry.for.inc.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i64 @ktime_get() #8
  %timestamp.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call.i.i.i, ptr %timestamp.i.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %13, i32 noundef 6) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %entry.for.inc.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr %struct.csi_priv, ptr %priv, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.csi_idmac_unsetup.exit_crit_edge, label %if.then.1.i.i

for.inc.i.i.csi_idmac_unsetup.exit_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_idmac_unsetup.exit

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.1.i.i = tail call i64 @ktime_get() #8
  %timestamp.1.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %timestamp.1.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call.i.1.i.i, ptr %timestamp.1.i.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %16, i32 noundef 6) #8
  br label %csi_idmac_unsetup.exit

csi_idmac_unsetup.exit:                           ; preds = %if.then.1.i.i, %for.inc.i.i.csi_idmac_unsetup.exit_crit_edge
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  %underrun_buf = getelementptr inbounds %struct.csi_priv, ptr %priv, i32 0, i32 21
  tail call void @imx_media_free_dma_buf(ptr noundef %19, ptr noundef %underrun_buf) #8
  %eof_timeout_timer = getelementptr inbounds %struct.csi_priv, ptr %priv, i32 0, i32 29
  %call = tail call i32 @del_timer_sync(ptr noundef %eof_timeout_timer) #8
  %20 = ptrtoint ptr %idmac_ch.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %idmac_ch.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %csi_idmac_unsetup.exit.if.end.i_crit_edge, label %if.then.i

csi_idmac_unsetup.exit.if.end.i_crit_edge:        ; preds = %csi_idmac_unsetup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %csi_idmac_unsetup.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ipu_idmac_put(ptr noundef nonnull %21) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %csi_idmac_unsetup.exit.if.end.i_crit_edge
  %22 = ptrtoint ptr %idmac_ch.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %idmac_ch.i, align 4
  %23 = ptrtoint ptr %smfc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smfc.i, align 4
  %tobool3.not.i = icmp eq ptr %24, null
  br i1 %tobool3.not.i, label %if.end.i.csi_idmac_put_ipu_resources.exit_crit_edge, label %if.then4.i

if.end.i.csi_idmac_put_ipu_resources.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_idmac_put_ipu_resources.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ipu_smfc_put(ptr noundef nonnull %24) #8
  br label %csi_idmac_put_ipu_resources.exit

csi_idmac_put_ipu_resources.exit:                 ; preds = %if.then4.i, %if.end.i.csi_idmac_put_ipu_resources.exit_crit_edge
  %25 = ptrtoint ptr %smfc.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %smfc.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_smfc_map_channel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_alloc_dma_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_channel_irq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_idmac_nfb4eof_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %irqlock) #8
  %nfb4eof = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 36
  %0 = ptrtoint ptr %nfb4eof to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %nfb4eof, align 1
  %name = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 2, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name) #11
  tail call void @_raw_spin_unlock(ptr noundef %irqlock) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_idmac_eof_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %irqlock) #8
  %last_eof = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 35
  %0 = ptrtoint ptr %last_eof to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %last_eof, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %last_eof_comp = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 38
  tail call void @complete(ptr noundef %last_eof_comp) #8
  %2 = ptrtoint ptr %last_eof to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %last_eof, align 4
  br label %unlock

if.end:                                           ; preds = %entry
  %fim = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 6
  %3 = ptrtoint ptr %fim to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fim, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i64 @ktime_get() #8
  tail call void @imx_media_fim_eof_monitor(ptr noundef nonnull %4, i64 noundef %call) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %vdev1.i = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 5
  %5 = ptrtoint ptr %vdev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vdev1.i, align 4
  %ipu_buf_num.i = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 22
  %7 = ptrtoint ptr %ipu_buf_num.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ipu_buf_num.i, align 4
  %arrayidx.i = getelementptr %struct.csi_priv, ptr %dev_id, i32 0, i32 20, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end5.if.end.i_crit_edge, label %if.then.i

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %field.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %6, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %field.i, align 4
  %field2.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %field2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %field2.i, align 4
  %frame_sequence.i = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 34
  %14 = ptrtoint ptr %frame_sequence.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_sequence.i, align 4
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %10, i32 0, i32 4
  %16 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sequence.i, align 8
  %call.i.i = tail call i64 @ktime_get() #8
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %10, i32 0, i32 5
  %17 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %nfb4eof.i = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 36
  %18 = ptrtoint ptr %nfb4eof.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nfb4eof.i, align 1, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not.i = icmp eq i8 %19, 0
  %cond.i = select i1 %tobool5.not.i, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %10, i32 noundef %cond.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end5.if.end.i_crit_edge
  %frame_sequence6.i = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 34
  %20 = ptrtoint ptr %frame_sequence6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frame_sequence6.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %frame_sequence6.i, align 4
  %nfb4eof7.i = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 36
  %22 = ptrtoint ptr %nfb4eof7.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %nfb4eof7.i, align 1
  %call8.i = tail call ptr @imx_media_capture_device_next_buf(ptr noundef %6) #8
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i61.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call8.i, i32 noundef 0) #8
  br label %if.end21.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %phys17.i = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 21, i32 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i, %if.then10.i
  %phys17.sink.i = phi ptr [ %phys17.i, %if.else.i ], [ %call.i61.i, %if.then10.i ]
  %23 = ptrtoint ptr %phys17.sink.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phys17.sink.i, align 4
  %25 = ptrtoint ptr %ipu_buf_num.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ipu_buf_num.i, align 4
  %arrayidx20.i = getelementptr %struct.csi_priv, ptr %dev_id, i32 0, i32 20, i32 %26
  %27 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call8.i, ptr %arrayidx20.i, align 4
  %idmac_ch.i = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 11
  %28 = ptrtoint ptr %idmac_ch.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %idmac_ch.i, align 4
  %30 = load i32, ptr %ipu_buf_num.i, align 4
  %call23.i = tail call zeroext i1 @ipu_idmac_buffer_is_ready(ptr noundef %29, i32 noundef %30) #8
  br i1 %call23.i, label %if.then24.i, label %if.end21.i.if.end27.i_crit_edge

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %idmac_ch.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %idmac_ch.i, align 4
  %33 = ptrtoint ptr %ipu_buf_num.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ipu_buf_num.i, align 4
  tail call void @ipu_idmac_clear_buffer(ptr noundef %32, i32 noundef %34) #8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end27.i_crit_edge
  %interweave_swap.i = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 37
  %35 = ptrtoint ptr %interweave_swap.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %interweave_swap.i, align 2, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool28.not.i = icmp eq i8 %36, 0
  br i1 %tobool28.not.i, label %if.end27.i.csi_vb2_buf_done.exit_crit_edge, label %if.then29.i

if.end27.i.csi_vb2_buf_done.exit_crit_edge:       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_vb2_buf_done.exit

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %bytesperline.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %6, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bytesperline.i, align 4
  %add.i = add i32 %38, %24
  br label %csi_vb2_buf_done.exit

csi_vb2_buf_done.exit:                            ; preds = %if.then29.i, %if.end27.i.csi_vb2_buf_done.exit_crit_edge
  %phys.1.i = phi i32 [ %add.i, %if.then29.i ], [ %24, %if.end27.i.csi_vb2_buf_done.exit_crit_edge ]
  %39 = ptrtoint ptr %idmac_ch.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %idmac_ch.i, align 4
  %41 = ptrtoint ptr %ipu_buf_num.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ipu_buf_num.i, align 4
  tail call void @ipu_cpmem_set_buffer(ptr noundef %40, i32 noundef %42, i32 noundef %phys.1.i) #8
  %43 = ptrtoint ptr %idmac_ch.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %idmac_ch.i, align 4
  %45 = ptrtoint ptr %ipu_buf_num.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ipu_buf_num.i, align 4
  tail call void @ipu_idmac_select_buffer(ptr noundef %44, i32 noundef %46) #8
  %47 = ptrtoint ptr %ipu_buf_num.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ipu_buf_num.i, align 4
  %xor = xor i32 %48, 1
  store i32 %xor, ptr %ipu_buf_num.i, align 4
  %eof_timeout_timer = getelementptr inbounds %struct.csi_priv, ptr %dev_id, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %49, 200
  %call8 = tail call i32 @mod_timer(ptr noundef %eof_timeout_timer, i32 noundef %add) #8
  br label %unlock

unlock:                                           ; preds = %csi_vb2_buf_done.exit, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %irqlock) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csi_idmac_unsetup(ptr nocapture noundef readonly %priv, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idmac_ch = getelementptr inbounds %struct.csi_priv, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %idmac_ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idmac_ch, align 4
  %call = tail call i32 @ipu_idmac_disable_channel(ptr noundef %1) #8
  %smfc = getelementptr inbounds %struct.csi_priv, ptr %priv, i32 0, i32 12
  %2 = ptrtoint ptr %smfc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smfc, align 4
  %call1 = tail call i32 @ipu_smfc_disable(ptr noundef %3) #8
  %arrayidx.i = getelementptr %struct.csi_priv, ptr %priv, i32 0, i32 20, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i64 @ktime_get() #8
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %5, i32 noundef %state) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %entry.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.csi_priv, ptr %priv, i32 0, i32 20, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %8, null
  br i1 %tobool.not.1.i, label %for.inc.i.csi_idmac_unsetup_vb2_buf.exit_crit_edge, label %if.then.1.i

for.inc.i.csi_idmac_unsetup_vb2_buf.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_idmac_unsetup_vb2_buf.exit

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.1.i = tail call i64 @ktime_get() #8
  %timestamp.1.i = getelementptr inbounds %struct.vb2_buffer, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %timestamp.1.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call.i.1.i, ptr %timestamp.1.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %8, i32 noundef %state) #8
  br label %csi_idmac_unsetup_vb2_buf.exit

csi_idmac_unsetup_vb2_buf.exit:                   ; preds = %if.then.1.i, %for.inc.i.csi_idmac_unsetup_vb2_buf.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_free_dma_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_smfc_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_idmac_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_dump(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dump(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_smfc_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_select_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_enable_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_skip_odd_chroma_rows(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_resolution(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_stride(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_cpmem_set_format_passthrough(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_cpmem_set_image(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_burstsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_smfc_set_watermark(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_high_priority(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_enable_watermark(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_axi_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_smfc_set_burstsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_interlaced_scan(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_set_double_buffer(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_capture_device_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_fim_eof_monitor(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipu_idmac_buffer_is_ready(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_clear_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_disable_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_smfc_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_smfc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_csi_set_window(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_csi_set_downsize(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_csi_init_interface(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_csi_set_dest(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_csi_set_skip_smfc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_csi_dump(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_csi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_init_cfg(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %code) #2 align 64 {
entry:
  %upstream_ep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %upstream_ep) #8
  %2 = call ptr @memset(ptr %upstream_ep, i32 0, i32 64)
  %lock = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %3 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.not.i.i.not = icmp eq i16 %6, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !155

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  br label %__csi_get_fmt.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 14, i32 0
  br label %__csi_get_fmt.exit

__csi_get_fmt.exit:                               ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %8, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %code2 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %code2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %code2, align 4
  %call3 = tail call ptr @imx_media_find_mbus_format(i32 noundef %10, i32 noundef 7) #8
  %11 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %code, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %12, label %__csi_get_fmt.exit.out_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %__csi_get_fmt.exit.sw.bb6_crit_edge
    i32 2, label %__csi_get_fmt.exit.sw.bb6_crit_edge44
  ]

__csi_get_fmt.exit.sw.bb6_crit_edge44:            ; preds = %__csi_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

__csi_get_fmt.exit.sw.bb6_crit_edge:              ; preds = %__csi_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

__csi_get_fmt.exit.out_crit_edge:                 ; preds = %__csi_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %__csi_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %code4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %call5 = tail call i32 @imx_media_enum_mbus_formats(ptr noundef %code4, i32 noundef %15, i32 noundef 7) #8
  br label %out

sw.bb6:                                           ; preds = %__csi_get_fmt.exit.sw.bb6_crit_edge, %__csi_get_fmt.exit.sw.bb6_crit_edge44
  %call7 = call fastcc i32 @csi_get_upstream_endpoint(ptr noundef %1, ptr noundef nonnull %upstream_ep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 9
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name) #11
  br label %out

if.end:                                           ; preds = %sw.bb6
  %bus_type.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %upstream_ep, i32 0, i32 1
  %16 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i38 = icmp eq i32 %17, 2
  br i1 %cmp.i38, label %if.end.if.else_crit_edge, label %if.end.i

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end.i:                                         ; preds = %if.end
  %bayer.i = getelementptr inbounds %struct.imx_media_pixfmt, ptr %call3, i32 0, i32 6
  %18 = ptrtoint ptr %bayer.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bayer.i, align 1, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.if.then11_crit_edge

if.end.i.if.then11_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp.i.not.i.i = icmp eq i32 %17, 5
  br i1 %cmp.i.not.i.i, label %lor.lhs.false.i.if.else_crit_edge, label %is_parallel_16bit_bus.exit.i

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

is_parallel_16bit_bus.exit.i:                     ; preds = %lor.lhs.false.i
  %bus_width.i.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %upstream_ep, i32 0, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %bus_width.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bus_width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %21)
  %cmp.i.i = icmp ugt i8 %21, 15
  br i1 %cmp.i.i, label %is_parallel_16bit_bus.exit.i.if.then11_crit_edge, label %requires_passthrough.exit

is_parallel_16bit_bus.exit.i.if.then11_crit_edge: ; preds = %is_parallel_16bit_bus.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

requires_passthrough.exit:                        ; preds = %is_parallel_16bit_bus.exit.i
  %22 = ptrtoint ptr %code2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %code2, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %23, label %requires_passthrough.exit.if.then11_crit_edge [
    i32 8200, label %requires_passthrough.exit.if.else_crit_edge
    i32 8198, label %requires_passthrough.exit.if.else_crit_edge45
  ]

requires_passthrough.exit.if.else_crit_edge45:    ; preds = %requires_passthrough.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

requires_passthrough.exit.if.else_crit_edge:      ; preds = %requires_passthrough.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

requires_passthrough.exit.if.then11_crit_edge:    ; preds = %requires_passthrough.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %requires_passthrough.exit.if.then11_crit_edge, %is_parallel_16bit_bus.exit.i.if.then11_crit_edge, %if.end.i.if.then11_crit_edge
  %index12 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %25 = ptrtoint ptr %index12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not = icmp eq i32 %26, 0
  br i1 %cmp.not, label %if.end14, label %if.then11.out_crit_edge

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end14:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %code2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %code2, align 4
  %code16 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %29 = ptrtoint ptr %code16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %code16, align 4
  br label %out

if.else:                                          ; preds = %requires_passthrough.exit.if.else_crit_edge, %requires_passthrough.exit.if.else_crit_edge45, %lor.lhs.false.i.if.else_crit_edge, %if.end.if.else_crit_edge
  %cs = getelementptr inbounds %struct.imx_media_pixfmt, ptr %call3, i32 0, i32 4
  %30 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp17 = icmp eq i32 %31, 1
  %code18 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %index19 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %32 = ptrtoint ptr %index19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index19, align 4
  %or.i = select i1 %cmp17, i32 9, i32 10
  %call.i = call i32 @imx_media_enum_mbus_formats(ptr noundef %code18, i32 noundef %33, i32 noundef %or.i) #8
  br label %out

out:                                              ; preds = %if.else, %if.end14, %if.then11.out_crit_edge, %do.end, %sw.bb, %__csi_get_fmt.exit.out_crit_edge
  %ret.0 = phi i32 [ %call7, %do.end ], [ 0, %if.end14 ], [ %call.i, %if.else ], [ %call5, %sw.bb ], [ -22, %if.then11.out_crit_edge ], [ -22, %__csi_get_fmt.exit.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %upstream_ep) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  %cond = select i1 %cmp2, i32 0, i32 3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cond)
  %cmp3 = icmp ugt i32 %5, %cond
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %8 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %9 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4096, ptr %max_width, align 4
  br label %if.end26

if.else:                                          ; preds = %if.end
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %10 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  %num_pads.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 0, i32 5
  %12 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.i.i = icmp eq i16 %13, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !155

if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %14 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %15, i32 0, i32 1
  br label %__csi_get_crop.exit

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %crop.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 17
  br label %__csi_get_crop.exit

__csi_get_crop.exit:                              ; preds = %if.else.i, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i ]
  %16 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fse, align 4
  %and = and i32 %17, 1
  %width9 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %width9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width9, align 4
  %cond10 = lshr i32 %19, %and
  %min_width11 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %20 = ptrtoint ptr %min_width11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond10, ptr %min_width11, align 4
  %max_width13 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %21 = ptrtoint ptr %max_width13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond10, ptr %max_width13, align 4
  %and15 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %height20 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %22 = ptrtoint ptr %height20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height20, align 4
  %div1851 = lshr i32 %23, 1
  %spec.select = select i1 %tobool16.not, i32 %23, i32 %div1851
  %spec.select54 = select i1 %tobool16.not, i32 %23, i32 %div1851
  br label %if.end26

if.end26:                                         ; preds = %__csi_get_crop.exit, %if.then6
  %cond22.sink53 = phi i32 [ 32, %if.then6 ], [ %spec.select, %__csi_get_crop.exit ]
  %cond22.sink = phi i32 [ 4096, %if.then6 ], [ %spec.select54, %__csi_get_crop.exit ]
  %min_height23 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %24 = ptrtoint ptr %min_height23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond22.sink53, ptr %min_height23, align 4
  %max_height25 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %25 = ptrtoint ptr %max_height25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond22.sink, ptr %max_height25, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_enum_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.not = icmp eq i32 %3, 2
  %cond = select i1 %cmp2.not, i32 12, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cond)
  %cmp3.not = icmp ult i32 %5, %cond
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %frame_interval = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 16
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 6
  %6 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %num_pads.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i.i = icmp eq i16 %9, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !155

if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %11, i32 0, i32 1
  br label %__csi_get_crop.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %crop.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 17
  br label %__csi_get_crop.exit

__csi_get_crop.exit:                              ; preds = %if.else.i, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i ]
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %width5 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %width5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp6.not = icmp eq i32 %13, %15
  %div53 = lshr i32 %15, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div53)
  %cmp9.not = icmp eq i32 %13, %div53
  %or.cond = or i1 %cmp6.not, %cmp9.not
  br i1 %or.cond, label %lor.lhs.false10, label %__csi_get_crop.exit.out_crit_edge

__csi_get_crop.exit.out_crit_edge:                ; preds = %__csi_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false10:                                  ; preds = %__csi_get_crop.exit
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %height11 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %18 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp12.not = icmp eq i32 %17, %19
  %div1652 = lshr i32 %19, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div1652)
  %cmp17.not = icmp eq i32 %17, %div1652
  %or.cond54 = or i1 %cmp12.not, %cmp17.not
  br i1 %or.cond54, label %if.end19, label %lor.lhs.false10.out_crit_edge

lor.lhs.false10.out_crit_edge:                    ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end19:                                         ; preds = %lor.lhs.false10
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %20 = ptrtoint ptr %frame_interval to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %frame_interval, align 4
  %22 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %interval, align 4
  %23 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp21 = icmp eq i32 %24, 2
  br i1 %cmp21, label %if.then22, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then22:                                        ; preds = %if.end19
  %25 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fie, align 4
  %arrayidx24 = getelementptr [12 x %struct.csi_skip_desc], ptr @csi_skip, i32 0, i32 %26
  %max_ratio.i = getelementptr [12 x %struct.csi_skip_desc], ptr @csi_skip, i32 0, i32 %26, i32 1
  %27 = ptrtoint ptr %max_ratio.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %max_ratio.i, align 1
  %conv.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %interval, align 4
  %mul.i = mul i32 %30, %conv.i
  store i32 %mul.i, ptr %interval, align 4
  %31 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx24, align 1
  %conv1.i = zext i8 %32 to i32
  %denominator.i = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %denominator.i, align 4
  %mul2.i = mul i32 %34, %conv1.i
  store i32 %mul2.i, ptr %denominator.i, align 4
  %call.i = tail call i32 @gcd(i32 noundef %mul.i, i32 noundef %mul2.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i55 = icmp ugt i32 %call.i, 1
  br i1 %cmp.i55, label %if.then.i56, label %if.then22.out_crit_edge

if.then22.out_crit_edge:                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i56:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %div7.i = udiv i32 %mul.i, %call.i
  %35 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div7.i, ptr %interval, align 4
  %div9.i = udiv i32 %mul2.i, %call.i
  %36 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div9.i, ptr %denominator.i, align 4
  br label %out

out:                                              ; preds = %if.then.i56, %if.then22.out_crit_edge, %if.end19.out_crit_edge, %lor.lhs.false10.out_crit_edge, %__csi_get_crop.exit.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end19.out_crit_edge ], [ -22, %lor.lhs.false10.out_crit_edge ], [ -22, %__csi_get_crop.exit.out_crit_edge ], [ 0, %if.then22.out_crit_edge ], [ 0, %if.then.i56 ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %6 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %num_pads.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %5, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !152

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %5, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 %spec.select.i.i
  br label %__csi_get_fmt.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 14, i32 %5
  br label %__csi_get_fmt.exit

__csi_get_fmt.exit:                               ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__csi_get_fmt.exit.out_crit_edge, label %if.end4

__csi_get_fmt.exit.out_crit_edge:                 ; preds = %__csi_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %__csi_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  br label %out

out:                                              ; preds = %if.end4, %__csi_get_fmt.exit.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end4 ], [ -22, %__csi_get_fmt.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %sdformat) #2 align 64 {
entry:
  %upstream_ep = alloca %struct.v4l2_fwnode_endpoint, align 4
  %cc = alloca ptr, align 4
  %outcc = alloca ptr, align 4
  %format20 = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %upstream_ep) #8
  %2 = call ptr @memset(ptr %upstream_ep, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cc) #8
  %3 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %cc, align 4, !annotation !151
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @csi_get_upstream_endpoint(ptr noundef %1, ptr noundef nonnull %upstream_ep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %stream_count = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6 = icmp sgt i32 %7, 0
  br i1 %cmp6, label %if.end5.out_crit_edge, label %if.end8

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8:                                          ; preds = %if.end5
  %8 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.then.i, label %__csi_get_crop.exit.thread

if.then.i:                                        ; preds = %if.end8
  %num_pads.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 0, i32 5
  %10 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.i.i = icmp eq i16 %11, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.__csi_get_crop.exit_crit_edge, !prof !155

if.then.i.__csi_get_crop.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__csi_get_crop.exit

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %__csi_get_crop.exit

__csi_get_crop.exit.thread:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %crop.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 17
  br label %if.else.i91

__csi_get_crop.exit:                              ; preds = %do.end.i.i, %if.then.i.__csi_get_crop.exit_crit_edge
  %12 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i86 = icmp eq i32 %.pr, 0
  br i1 %cmp.i86, label %if.then.i89, label %__csi_get_crop.exit.if.else.i91_crit_edge

__csi_get_crop.exit.if.else.i91_crit_edge:        ; preds = %__csi_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i91

if.then.i89:                                      ; preds = %__csi_get_crop.exit
  %15 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i.i88 = icmp eq i16 %16, 0
  br i1 %cmp.i.i88, label %do.end.i.i90, label %if.then.i89.v4l2_subdev_get_try_compose.exit.i_crit_edge, !prof !155

if.then.i89.v4l2_subdev_get_try_compose.exit.i_crit_edge: ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_compose.exit.i

do.end.i.i90:                                     ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1034, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_compose.exit.i

v4l2_subdev_get_try_compose.exit.i:               ; preds = %do.end.i.i90, %if.then.i89.v4l2_subdev_get_try_compose.exit.i_crit_edge
  %17 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd_state, align 4
  %try_compose.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %18, i32 0, i32 2
  br label %__csi_get_compose.exit

if.else.i91:                                      ; preds = %__csi_get_crop.exit.if.else.i91_crit_edge, %__csi_get_crop.exit.thread
  %retval.0.i115 = phi ptr [ %crop.i, %__csi_get_crop.exit.thread ], [ %try_crop.i.i, %__csi_get_crop.exit.if.else.i91_crit_edge ]
  %compose.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 18
  br label %__csi_get_compose.exit

__csi_get_compose.exit:                           ; preds = %if.else.i91, %v4l2_subdev_get_try_compose.exit.i
  %retval.0.i114 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_compose.exit.i ], [ %retval.0.i115, %if.else.i91 ]
  %retval.0.i92 = phi ptr [ %try_compose.i.i, %v4l2_subdev_get_try_compose.exit.i ], [ %compose.i, %if.else.i91 ]
  call fastcc void @csi_try_fmt(ptr noundef %1, ptr noundef nonnull %upstream_ep, ptr noundef %sd_state, ptr noundef %sdformat, ptr noundef %retval.0.i114, ptr noundef %retval.0.i92, ptr noundef nonnull %cc)
  %19 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pad, align 4
  %21 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i93 = icmp eq i32 %22, 0
  br i1 %cmp.i93, label %if.then.i95, label %if.else.i97

if.then.i95:                                      ; preds = %__csi_get_compose.exit
  %num_pads.i.i94 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 0, i32 5
  %23 = ptrtoint ptr %num_pads.i.i94 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_pads.i.i94, align 4
  %conv.i.i = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %20, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i95.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i96, !prof !152

if.then.i95.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i96:                                     ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i96, %if.then.i95.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i96 ], [ %20, %if.then.i95.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %25 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %26, i32 %spec.select.i.i
  br label %__csi_get_fmt.exit

if.else.i97:                                      ; preds = %__csi_get_compose.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 14, i32 %20
  br label %__csi_get_fmt.exit

__csi_get_fmt.exit:                               ; preds = %if.else.i97, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i98 = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i97 ]
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %27 = call ptr @memcpy(ptr %retval.0.i98, ptr %format, i32 48)
  %28 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp16 = icmp eq i32 %29, 0
  br i1 %cmp16, label %for.cond.preheader, label %__csi_get_fmt.exit.if.end34_crit_edge

__csi_get_fmt.exit.if.end34_crit_edge:            ; preds = %__csi_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

for.cond.preheader:                               ; preds = %__csi_get_fmt.exit
  %pad21 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format20, i32 0, i32 1
  %format24 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format20, i32 0, i32 2
  %num_pads.i.i100 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outcc) #8
  %30 = ptrtoint ptr %outcc to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %outcc, align 4, !annotation !151
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format20) #8
  %31 = getelementptr inbounds i8, ptr %format20, i32 56
  %32 = call ptr @memset(ptr %31, i32 255, i32 32)
  %33 = ptrtoint ptr %pad21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %pad21, align 4
  %34 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sdformat, align 4
  %36 = ptrtoint ptr %format20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %format20, align 4
  %37 = call ptr @memcpy(ptr %format24, ptr %format, i32 48)
  call fastcc void @csi_try_fmt(ptr noundef %1, ptr noundef nonnull %upstream_ep, ptr noundef %sd_state, ptr noundef nonnull %format20, ptr noundef null, ptr noundef %retval.0.i92, ptr noundef nonnull %outcc)
  %38 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i99 = icmp eq i32 %39, 0
  br i1 %cmp.i99, label %if.then.i103, label %if.else.i109

if.then.i103:                                     ; preds = %for.cond.preheader
  %40 = ptrtoint ptr %num_pads.i.i100 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %num_pads.i.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %41)
  %cmp.not.i.i102 = icmp ugt i16 %41, 1
  br i1 %cmp.not.i.i102, label %if.then.i103.v4l2_subdev_get_try_format.exit.i107_crit_edge, label %do.end.i.i104, !prof !152

if.then.i103.v4l2_subdev_get_try_format.exit.i107_crit_edge: ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i107

do.end.i.i104:                                    ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i107

v4l2_subdev_get_try_format.exit.i107:             ; preds = %do.end.i.i104, %if.then.i103.v4l2_subdev_get_try_format.exit.i107_crit_edge
  %spec.select.i.i105 = phi i32 [ 0, %do.end.i.i104 ], [ 1, %if.then.i103.v4l2_subdev_get_try_format.exit.i107_crit_edge ]
  %42 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i106 = getelementptr %struct.v4l2_subdev_pad_config, ptr %43, i32 %spec.select.i.i105
  br label %__csi_get_fmt.exit111

if.else.i109:                                     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i108 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 14, i32 1
  br label %__csi_get_fmt.exit111

__csi_get_fmt.exit111:                            ; preds = %if.else.i109, %v4l2_subdev_get_try_format.exit.i107
  %retval.0.i110 = phi ptr [ %arrayidx.i.i106, %v4l2_subdev_get_try_format.exit.i107 ], [ %arrayidx.i108, %if.else.i109 ]
  %44 = call ptr @memcpy(ptr %retval.0.i110, ptr %format24, i32 48)
  %45 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp30 = icmp eq i32 %46, 1
  br i1 %cmp30, label %if.then31, label %__csi_get_fmt.exit111.if.end33_crit_edge

__csi_get_fmt.exit111.if.end33_crit_edge:         ; preds = %__csi_get_fmt.exit111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then31:                                        ; preds = %__csi_get_fmt.exit111
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %outcc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %outcc, align 4
  %arrayidx = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 15, i32 1
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %arrayidx, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %__csi_get_fmt.exit111.if.end33_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outcc) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outcc) #8
  %50 = ptrtoint ptr %outcc to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -1 to ptr), ptr %outcc, align 4, !annotation !151
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format20) #8
  %51 = getelementptr inbounds i8, ptr %format20, i32 56
  %52 = call ptr @memset(ptr %51, i32 255, i32 32)
  %53 = ptrtoint ptr %pad21 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %pad21, align 4
  %54 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sdformat, align 4
  %56 = ptrtoint ptr %format20 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %format20, align 4
  %57 = call ptr @memcpy(ptr %format24, ptr %format, i32 48)
  call fastcc void @csi_try_fmt(ptr noundef %1, ptr noundef nonnull %upstream_ep, ptr noundef %sd_state, ptr noundef nonnull %format20, ptr noundef null, ptr noundef %retval.0.i92, ptr noundef nonnull %outcc)
  %58 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i99.1 = icmp eq i32 %59, 0
  br i1 %cmp.i99.1, label %if.then.i103.1, label %if.else.i109.1

if.else.i109.1:                                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i108.1 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 14, i32 2
  br label %__csi_get_fmt.exit111.1

if.then.i103.1:                                   ; preds = %if.end33
  %60 = ptrtoint ptr %num_pads.i.i100 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %num_pads.i.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %61)
  %cmp.not.i.i102.1 = icmp ugt i16 %61, 2
  br i1 %cmp.not.i.i102.1, label %if.then.i103.1.v4l2_subdev_get_try_format.exit.i107.1_crit_edge, label %do.end.i.i104.1, !prof !152

if.then.i103.1.v4l2_subdev_get_try_format.exit.i107.1_crit_edge: ; preds = %if.then.i103.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i107.1

do.end.i.i104.1:                                  ; preds = %if.then.i103.1
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i107.1

v4l2_subdev_get_try_format.exit.i107.1:           ; preds = %do.end.i.i104.1, %if.then.i103.1.v4l2_subdev_get_try_format.exit.i107.1_crit_edge
  %spec.select.i.i105.1 = phi i32 [ 0, %do.end.i.i104.1 ], [ 2, %if.then.i103.1.v4l2_subdev_get_try_format.exit.i107.1_crit_edge ]
  %62 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i106.1 = getelementptr %struct.v4l2_subdev_pad_config, ptr %63, i32 %spec.select.i.i105.1
  br label %__csi_get_fmt.exit111.1

__csi_get_fmt.exit111.1:                          ; preds = %v4l2_subdev_get_try_format.exit.i107.1, %if.else.i109.1
  %retval.0.i110.1 = phi ptr [ %arrayidx.i.i106.1, %v4l2_subdev_get_try_format.exit.i107.1 ], [ %arrayidx.i108.1, %if.else.i109.1 ]
  %64 = call ptr @memcpy(ptr %retval.0.i110.1, ptr %format24, i32 48)
  %65 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp30.1 = icmp eq i32 %66, 1
  br i1 %cmp30.1, label %if.then31.1, label %__csi_get_fmt.exit111.1.if.end33.1_crit_edge

__csi_get_fmt.exit111.1.if.end33.1_crit_edge:     ; preds = %__csi_get_fmt.exit111.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.1

if.then31.1:                                      ; preds = %__csi_get_fmt.exit111.1
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %outcc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %outcc, align 4
  %arrayidx.1 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 15, i32 2
  %69 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %arrayidx.1, align 4
  br label %if.end33.1

if.end33.1:                                       ; preds = %if.then31.1, %__csi_get_fmt.exit111.1.if.end33.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outcc) #8
  br label %if.end34

if.end34:                                         ; preds = %if.end33.1, %__csi_get_fmt.exit.if.end34_crit_edge
  %70 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp36 = icmp eq i32 %71, 1
  br i1 %cmp36, label %if.then37, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cc, align 4
  %74 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pad, align 4
  %arrayidx40 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 15, i32 %75
  %76 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %arrayidx40, align 4
  br label %out

out:                                              ; preds = %if.then37, %if.end34.out_crit_edge, %if.end5.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then37 ], [ 0, %if.end34.out_crit_edge ], [ -16, %if.end5.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cc) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %upstream_ep) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_get_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %4 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %__csi_get_fmt.exit.thread

if.then.i:                                        ; preds = %if.end
  %num_pads.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.not.i.i.not = icmp eq i16 %7, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.__csi_get_fmt.exit_crit_edge, !prof !155

if.then.i.__csi_get_fmt.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__csi_get_fmt.exit

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %__csi_get_fmt.exit

__csi_get_fmt.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 14, i32 0
  br label %if.else.i65

__csi_get_fmt.exit:                               ; preds = %do.end.i.i, %if.then.i.__csi_get_fmt.exit_crit_edge
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %10 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i61 = icmp eq i32 %.pr, 0
  br i1 %cmp.i61, label %if.then.i63, label %__csi_get_fmt.exit.if.else.i65_crit_edge

__csi_get_fmt.exit.if.else.i65_crit_edge:         ; preds = %__csi_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i65

if.then.i63:                                      ; preds = %__csi_get_fmt.exit
  %11 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i.i = icmp eq i16 %12, 0
  br i1 %cmp.i.i, label %do.end.i.i64, label %if.then.i63.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !155

if.then.i63.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i64:                                     ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i64, %if.then.i63.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %13 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %14, i32 0, i32 1
  br label %__csi_get_crop.exit

if.else.i65:                                      ; preds = %__csi_get_fmt.exit.if.else.i65_crit_edge, %__csi_get_fmt.exit.thread
  %retval.0.i77 = phi ptr [ %arrayidx.i, %__csi_get_fmt.exit.thread ], [ %9, %__csi_get_fmt.exit.if.else.i65_crit_edge ]
  %crop.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 17
  br label %__csi_get_crop.exit

__csi_get_crop.exit:                              ; preds = %if.else.i65, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i76 = phi ptr [ %9, %v4l2_subdev_get_try_crop.exit.i ], [ %retval.0.i77, %if.else.i65 ]
  %retval.0.i66 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i65 ]
  %15 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i67 = icmp eq i32 %16, 0
  br i1 %cmp.i67, label %if.then.i70, label %if.else.i72

if.then.i70:                                      ; preds = %__csi_get_crop.exit
  %num_pads.i.i68 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 0, i32 5
  %17 = ptrtoint ptr %num_pads.i.i68 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_pads.i.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i.i69 = icmp eq i16 %18, 0
  br i1 %cmp.i.i69, label %do.end.i.i71, label %if.then.i70.v4l2_subdev_get_try_compose.exit.i_crit_edge, !prof !155

if.then.i70.v4l2_subdev_get_try_compose.exit.i_crit_edge: ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_compose.exit.i

do.end.i.i71:                                     ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1034, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_compose.exit.i

v4l2_subdev_get_try_compose.exit.i:               ; preds = %do.end.i.i71, %if.then.i70.v4l2_subdev_get_try_compose.exit.i_crit_edge
  %19 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_state, align 4
  %try_compose.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %20, i32 0, i32 2
  br label %__csi_get_compose.exit

if.else.i72:                                      ; preds = %__csi_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  %compose.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 18
  br label %__csi_get_compose.exit

__csi_get_compose.exit:                           ; preds = %if.else.i72, %v4l2_subdev_get_try_compose.exit.i
  %retval.0.i73 = phi ptr [ %try_compose.i.i, %v4l2_subdev_get_try_compose.exit.i ], [ %compose.i, %if.else.i72 ]
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %21 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %target, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %22, label %__csi_get_compose.exit.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb16
    i32 258, label %sw.bb18
    i32 256, label %sw.bb29
  ]

__csi_get_compose.exit.sw.epilog_crit_edge:       ; preds = %__csi_get_compose.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %__csi_get_compose.exit
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %24 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %top, align 4
  %26 = ptrtoint ptr %retval.0.i76 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %retval.0.i76, align 4
  %width8 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %width8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %width8, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i76, i32 0, i32 1
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  %height10 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %31 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %height10, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i76, i32 0, i32 3
  %32 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %33)
  %cmp11 = icmp eq i32 %33, 7
  br i1 %cmp11, label %if.then12, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl i32 %30, 1
  %34 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul, ptr %height10, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %__csi_get_compose.exit
  call void @__sanitizer_cov_trace_pc() #10
  %r17 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %35 = call ptr @memcpy(ptr %r17, ptr %retval.0.i66, i32 16)
  br label %sw.epilog

sw.bb18:                                          ; preds = %__csi_get_compose.exit
  call void @__sanitizer_cov_trace_pc() #10
  %r19 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %36 = ptrtoint ptr %r19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %r19, align 4
  %top22 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %top22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %top22, align 4
  %width23 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i66, i32 0, i32 2
  %38 = ptrtoint ptr %width23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %width23, align 4
  %width25 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %width25 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %width25, align 4
  %height26 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i66, i32 0, i32 3
  %41 = ptrtoint ptr %height26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height26, align 4
  %height28 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %43 = ptrtoint ptr %height28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %height28, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %__csi_get_compose.exit
  call void @__sanitizer_cov_trace_pc() #10
  %r30 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %44 = call ptr @memcpy(ptr %r30, ptr %retval.0.i73, i32 16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb18, %sw.bb16, %if.then12, %sw.bb.sw.epilog_crit_edge, %__csi_get_compose.exit.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb29 ], [ 0, %sw.bb18 ], [ 0, %sw.bb16 ], [ 0, %if.then12 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ -22, %__csi_get_compose.exit.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_set_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  %upstream_ep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %upstream_ep) #8
  %2 = call ptr @memset(ptr %upstream_ep, i32 0, i32 64)
  %pad1 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %3 = ptrtoint ptr %pad1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @csi_get_upstream_endpoint(ptr noundef %1, ptr noundef nonnull %upstream_ep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 9
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %stream_count = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7 = icmp sgt i32 %6, 0
  br i1 %cmp7, label %if.end6.out_crit_edge, label %if.end9

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end9:                                          ; preds = %if.end6
  %7 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %__csi_get_fmt.exit.thread

if.then.i:                                        ; preds = %if.end9
  %num_pads.i.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 0, i32 5
  %9 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.not.i.i.not = icmp eq i16 %10, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.__csi_get_fmt.exit_crit_edge, !prof !155

if.then.i.__csi_get_fmt.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__csi_get_fmt.exit

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %__csi_get_fmt.exit

__csi_get_fmt.exit.thread:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 14, i32 0
  br label %if.else.i132

__csi_get_fmt.exit:                               ; preds = %do.end.i.i, %if.then.i.__csi_get_fmt.exit_crit_edge
  %11 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd_state, align 4
  %13 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i128 = icmp eq i32 %.pr, 0
  br i1 %cmp.i128, label %if.then.i130, label %__csi_get_fmt.exit.if.else.i132_crit_edge

__csi_get_fmt.exit.if.else.i132_crit_edge:        ; preds = %__csi_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i132

if.then.i130:                                     ; preds = %__csi_get_fmt.exit
  %14 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.i = icmp eq i16 %15, 0
  br i1 %cmp.i.i, label %do.end.i.i131, label %if.then.i130.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !155

if.then.i130.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i131:                                    ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i131, %if.then.i130.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %16 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %17, i32 0, i32 1
  br label %__csi_get_crop.exit

if.else.i132:                                     ; preds = %__csi_get_fmt.exit.if.else.i132_crit_edge, %__csi_get_fmt.exit.thread
  %retval.0.i164 = phi ptr [ %arrayidx.i, %__csi_get_fmt.exit.thread ], [ %12, %__csi_get_fmt.exit.if.else.i132_crit_edge ]
  %crop.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 17
  br label %__csi_get_crop.exit

__csi_get_crop.exit:                              ; preds = %if.else.i132, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i163 = phi ptr [ %12, %v4l2_subdev_get_try_crop.exit.i ], [ %retval.0.i164, %if.else.i132 ]
  %retval.0.i133 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.else.i132 ]
  %18 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i134 = icmp eq i32 %19, 0
  br i1 %cmp.i134, label %if.then.i137, label %if.else.i139

if.then.i137:                                     ; preds = %__csi_get_crop.exit
  %num_pads.i.i135 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 0, i32 5
  %20 = ptrtoint ptr %num_pads.i.i135 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_pads.i.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp.i.i136 = icmp eq i16 %21, 0
  br i1 %cmp.i.i136, label %do.end.i.i138, label %if.then.i137.v4l2_subdev_get_try_compose.exit.i_crit_edge, !prof !155

if.then.i137.v4l2_subdev_get_try_compose.exit.i_crit_edge: ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_compose.exit.i

do.end.i.i138:                                    ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1034, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_compose.exit.i

v4l2_subdev_get_try_compose.exit.i:               ; preds = %do.end.i.i138, %if.then.i137.v4l2_subdev_get_try_compose.exit.i_crit_edge
  %22 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sd_state, align 4
  %try_compose.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %23, i32 0, i32 2
  br label %__csi_get_compose.exit

if.else.i139:                                     ; preds = %__csi_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #10
  %compose.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 18
  br label %__csi_get_compose.exit

__csi_get_compose.exit:                           ; preds = %if.else.i139, %v4l2_subdev_get_try_compose.exit.i
  %retval.0.i140 = phi ptr [ %try_compose.i.i, %v4l2_subdev_get_try_compose.exit.i ], [ %compose.i, %if.else.i139 ]
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %24 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %target, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %25, label %__csi_get_compose.exit.out_crit_edge [
    i32 0, label %sw.bb
    i32 256, label %sw.bb28
  ]

__csi_get_compose.exit.out_crit_edge:             ; preds = %__csi_get_compose.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %__csi_get_compose.exit
  %flags = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 3
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %r24 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  br i1 %tobool15.not, label %if.end23, label %if.then16

if.then16:                                        ; preds = %sw.bb
  %crop17 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 17
  %29 = call ptr @memcpy(ptr %r24, ptr %crop17, i32 16)
  %30 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp19 = icmp eq i32 %31, 0
  br i1 %cmp19, label %if.then20, label %if.then16.out_crit_edge

if.then16.out_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %32 = call ptr @memmove(ptr %retval.0.i133, ptr %crop17, i32 16)
  br label %out

if.end23:                                         ; preds = %sw.bb
  %33 = ptrtoint ptr %retval.0.i163 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %retval.0.i163, align 4
  %width1.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width1.i, align 4
  %37 = call i32 @llvm.umin.i32(i32 %34, i32 %36) #8
  %38 = ptrtoint ptr %width1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %width1.i, align 4
  %39 = ptrtoint ptr %r24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %r24, align 4
  %add.i = add i32 %40, %37
  %41 = ptrtoint ptr %retval.0.i163 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %retval.0.i163, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %42)
  %cmp5.i = icmp ugt i32 %add.i, %42
  br i1 %cmp5.i, label %if.then.i141, label %if.end23.if.end.i_crit_edge

if.end23.if.end.i_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i141:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 %42, %37
  %43 = ptrtoint ptr %r24 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub.i, ptr %r24, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i141, %if.end23.if.end.i_crit_edge
  %44 = ptrtoint ptr %r24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %r24, align 4
  %and.i = and i32 %45, -4
  store i32 %and.i, ptr %r24, align 4
  %active_output_pad.i = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 10
  %46 = ptrtoint ptr %active_output_pad.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %active_output_pad.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp10.i = icmp eq i32 %47, 1
  %storemerge.v.i = select i1 %cmp10.i, i32 -8, i32 -2
  %storemerge.i = and i32 %storemerge.v.i, %37
  %48 = ptrtoint ptr %width1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %storemerge.i, ptr %width1.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i163, i32 0, i32 1
  %49 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i163, i32 0, i32 3
  %51 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %field.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %52)
  %cmp17.i = icmp eq i32 %52, 7
  %mul.i = zext i1 %cmp17.i to i32
  %spec.select.i = shl i32 %50, %mul.i
  %bus_type.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %upstream_ep, i32 0, i32 1
  %53 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp20.i = icmp eq i32 %54, 2
  %.off.i = add i32 %52, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 6
  %or.cond.i = select i1 %cmp20.i, i1 %switch.i, i1 false
  %height38.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  br i1 %or.cond.i, label %if.then37.i, label %if.else41.i

if.then37.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %height38.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.select.i, ptr %height38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %spec.select.i)
  %cmp39.i = icmp eq i32 %spec.select.i, 480
  %cond40.i = select i1 %cmp39.i, i32 2, i32 0
  %top.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %cond40.i, ptr %top.i, align 4
  br label %csi_try_crop.exit

if.else41.i:                                      ; preds = %if.end.i
  %57 = ptrtoint ptr %height38.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %height38.i, align 4
  %59 = call i32 @llvm.umin.i32(i32 %spec.select.i, i32 %58) #8
  %60 = ptrtoint ptr %height38.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %height38.i, align 4
  %top50.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %top50.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %top50.i, align 4
  %add52.i = add i32 %62, %59
  call void @__sanitizer_cov_trace_cmp4(i32 %add52.i, i32 %spec.select.i)
  %cmp53.i = icmp ugt i32 %add52.i, %spec.select.i
  br i1 %cmp53.i, label %if.then54.i, label %if.else41.i.csi_try_crop.exit_crit_edge

if.else41.i.csi_try_crop.exit_crit_edge:          ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_try_crop.exit

if.then54.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub56.i = sub i32 %spec.select.i, %59
  %63 = ptrtoint ptr %top50.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub56.i, ptr %top50.i, align 4
  br label %csi_try_crop.exit

csi_try_crop.exit:                                ; preds = %if.then54.i, %if.else41.i.csi_try_crop.exit_crit_edge, %if.then37.i
  %64 = call ptr @memcpy(ptr %retval.0.i133, ptr %r24, i32 16)
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i133, i32 0, i32 2
  %65 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %width, align 4
  %width26 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i140, i32 0, i32 2
  %67 = ptrtoint ptr %width26 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %width26, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i133, i32 0, i32 3
  %68 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %height, align 4
  %height27 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i140, i32 0, i32 3
  %70 = ptrtoint ptr %height27 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %height27, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %__csi_get_compose.exit
  %flags29 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 3
  %71 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags29, align 4
  %and30 = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %r41 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  br i1 %tobool31.not, label %if.end40, label %if.then32

if.then32:                                        ; preds = %sw.bb28
  %compose34 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 18
  %73 = call ptr @memcpy(ptr %r41, ptr %compose34, i32 16)
  %74 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp36 = icmp eq i32 %75, 0
  br i1 %cmp36, label %if.then37, label %if.then32.out_crit_edge

if.then32.out_crit_edge:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then37:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %76 = call ptr @memmove(ptr %retval.0.i140, ptr %compose34, i32 16)
  br label %out

if.end40:                                         ; preds = %sw.bb28
  %77 = ptrtoint ptr %r41 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %r41, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %78 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %top, align 4
  %width44 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %width45 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i133, i32 0, i32 2
  %79 = ptrtoint ptr %width45 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %width45, align 4
  %and.i142 = and i32 %72, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i142)
  %cmp.i143 = icmp eq i32 %and.i142, 3
  br i1 %cmp.i143, label %land.lhs.true.i, label %entry.if.end_crit_edge.i

entry.if.end_crit_edge.i:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %.pre.i = lshr i32 %80, 1
  br label %if.end.i145

land.lhs.true.i:                                  ; preds = %if.end40
  %81 = ptrtoint ptr %width44 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %width44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %80)
  %cmp1.not.i = icmp eq i32 %82, %80
  %div35.i = lshr i32 %80, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %div35.i)
  %cmp3.not.i = icmp eq i32 %82, %div35.i
  %or.cond.i144 = or i1 %cmp1.not.i, %cmp3.not.i
  br i1 %or.cond.i144, label %land.lhs.true.i.if.end.i145_crit_edge, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true.i.if.end.i145_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i145

if.end.i145:                                      ; preds = %land.lhs.true.i.if.end.i145_crit_edge, %entry.if.end_crit_edge.i
  %div433.pre-phi.i = phi i32 [ %.pre.i, %entry.if.end_crit_edge.i ], [ %div35.i, %land.lhs.true.i.if.end.i145_crit_edge ]
  %83 = ptrtoint ptr %width44 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %width44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %div433.pre-phi.i)
  %cmp5.not.i = icmp ugt i32 %84, %div433.pre-phi.i
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %if.end.i145.if.end50_crit_edge

if.end.i145.if.end50_crit_edge:                   ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

lor.lhs.false.i:                                  ; preds = %if.end.i145
  %mul.i146 = mul i32 %80, 3
  %div634.i = lshr i32 %mul.i146, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %div634.i)
  %cmp7.i = icmp ult i32 %84, %div634.i
  %and9.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  %or.cond36.i = and i1 %tobool.not.i, %cmp7.i
  br i1 %or.cond36.i, label %lor.lhs.false.i.if.end50_crit_edge, label %lor.lhs.false10.i

lor.lhs.false.i.if.end50_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %80)
  %cmp11.i = icmp uge i32 %84, %80
  %and13.i = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %or.cond37.i = or i1 %tobool14.not.i, %cmp11.i
  %spec.select.i147 = select i1 %or.cond37.i, i32 %80, i32 %div433.pre-phi.i
  br label %if.end50

if.end50:                                         ; preds = %lor.lhs.false10.i, %lor.lhs.false.i.if.end50_crit_edge, %if.end.i145.if.end50_crit_edge
  %storemerge.i148 = phi i32 [ %div433.pre-phi.i, %lor.lhs.false.i.if.end50_crit_edge ], [ %div433.pre-phi.i, %if.end.i145.if.end50_crit_edge ], [ %spec.select.i147, %lor.lhs.false10.i ]
  %85 = ptrtoint ptr %width44 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %storemerge.i148, ptr %width44, align 4
  %height52 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %height53 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i133, i32 0, i32 3
  %86 = ptrtoint ptr %height53 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %height53, align 4
  %call55 = call fastcc i32 @csi_set_scale(ptr noundef %height52, i32 noundef %87, i32 noundef %72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end50.out_crit_edge

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %88 = call ptr @memcpy(ptr %retval.0.i140, ptr %r41, i32 16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end58, %csi_try_crop.exit
  %num_pads.i.i151 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 0, i32 5
  %width63 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i140, i32 0, i32 2
  %height65 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i140, i32 0, i32 3
  %89 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i150 = icmp eq i32 %90, 0
  br i1 %cmp.i150, label %if.then.i154, label %if.else.i158

if.then.i154:                                     ; preds = %sw.epilog
  %91 = ptrtoint ptr %num_pads.i.i151 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %num_pads.i.i151, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %92)
  %cmp.not.i.i153 = icmp ugt i16 %92, 1
  br i1 %cmp.not.i.i153, label %if.then.i154.v4l2_subdev_get_try_format.exit.i156_crit_edge, label %do.end.i.i155, !prof !152

if.then.i154.v4l2_subdev_get_try_format.exit.i156_crit_edge: ; preds = %if.then.i154
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i156

do.end.i.i155:                                    ; preds = %if.then.i154
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i156

v4l2_subdev_get_try_format.exit.i156:             ; preds = %do.end.i.i155, %if.then.i154.v4l2_subdev_get_try_format.exit.i156_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i155 ], [ 1, %if.then.i154.v4l2_subdev_get_try_format.exit.i156_crit_edge ]
  %93 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %94, i32 %spec.select.i.i
  br label %__csi_get_fmt.exit160

if.else.i158:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i157 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 14, i32 1
  br label %__csi_get_fmt.exit160

__csi_get_fmt.exit160:                            ; preds = %if.else.i158, %v4l2_subdev_get_try_format.exit.i156
  %retval.0.i159 = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i156 ], [ %arrayidx.i157, %if.else.i158 ]
  %95 = ptrtoint ptr %width63 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %width63, align 4
  %97 = ptrtoint ptr %retval.0.i159 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %retval.0.i159, align 4
  %98 = ptrtoint ptr %height65 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %height65, align 4
  %height66 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i159, i32 0, i32 1
  %100 = ptrtoint ptr %height66 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %height66, align 4
  %101 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp.i150.1 = icmp eq i32 %102, 0
  br i1 %cmp.i150.1, label %if.then.i154.1, label %if.else.i158.1

if.else.i158.1:                                   ; preds = %__csi_get_fmt.exit160
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i157.1 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 14, i32 2
  br label %__csi_get_fmt.exit160.1

if.then.i154.1:                                   ; preds = %__csi_get_fmt.exit160
  %103 = ptrtoint ptr %num_pads.i.i151 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %num_pads.i.i151, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %104)
  %cmp.not.i.i153.1 = icmp ugt i16 %104, 2
  br i1 %cmp.not.i.i153.1, label %if.then.i154.1.v4l2_subdev_get_try_format.exit.i156.1_crit_edge, label %do.end.i.i155.1, !prof !152

if.then.i154.1.v4l2_subdev_get_try_format.exit.i156.1_crit_edge: ; preds = %if.then.i154.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i156.1

do.end.i.i155.1:                                  ; preds = %if.then.i154.1
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i156.1

v4l2_subdev_get_try_format.exit.i156.1:           ; preds = %do.end.i.i155.1, %if.then.i154.1.v4l2_subdev_get_try_format.exit.i156.1_crit_edge
  %spec.select.i.i.1 = phi i32 [ 0, %do.end.i.i155.1 ], [ 2, %if.then.i154.1.v4l2_subdev_get_try_format.exit.i156.1_crit_edge ]
  %105 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i.1 = getelementptr %struct.v4l2_subdev_pad_config, ptr %106, i32 %spec.select.i.i.1
  br label %__csi_get_fmt.exit160.1

__csi_get_fmt.exit160.1:                          ; preds = %v4l2_subdev_get_try_format.exit.i156.1, %if.else.i158.1
  %retval.0.i159.1 = phi ptr [ %arrayidx.i.i.1, %v4l2_subdev_get_try_format.exit.i156.1 ], [ %arrayidx.i157.1, %if.else.i158.1 ]
  %107 = ptrtoint ptr %width63 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %width63, align 4
  %109 = ptrtoint ptr %retval.0.i159.1 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %retval.0.i159.1, align 4
  %110 = ptrtoint ptr %height65 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %height65, align 4
  %height66.1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i159.1, i32 0, i32 1
  %112 = ptrtoint ptr %height66.1 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %height66.1, align 4
  br label %out

out:                                              ; preds = %__csi_get_fmt.exit160.1, %if.end50.out_crit_edge, %land.lhs.true.i.out_crit_edge, %if.then37, %if.then32.out_crit_edge, %if.then20, %if.then16.out_crit_edge, %__csi_get_compose.exit.out_crit_edge, %if.end6.out_crit_edge
  %ret.1 = phi i32 [ 0, %if.then37 ], [ 0, %if.then32.out_crit_edge ], [ %call55, %if.end50.out_crit_edge ], [ 0, %if.then20 ], [ 0, %if.then16.out_crit_edge ], [ -16, %if.end6.out_crit_edge ], [ -22, %__csi_get_compose.exit.out_crit_edge ], [ -34, %land.lhs.true.i.out_crit_edge ], [ 0, %__csi_get_fmt.exit160.1 ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %ret.1, %out ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %upstream_ep) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_link_validate(ptr noundef %sd, ptr noundef %link, ptr noundef %source_fmt, ptr noundef %sink_fmt) #2 align 64 {
entry:
  %upstream_ep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %upstream_ep) #8
  %2 = call ptr @memset(ptr %upstream_ep, i32 0, i32 64)
  %call1 = tail call i32 @v4l2_subdev_link_validate_default(ptr noundef %sd, ptr noundef %link, ptr noundef %source_fmt, ptr noundef %sink_fmt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @csi_get_upstream_endpoint(ptr noundef %1, ptr noundef nonnull %upstream_ep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 9
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %upstream_ep8 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 27
  %3 = call ptr @memcpy(ptr %upstream_ep8, ptr %upstream_ep, i32 64)
  %bus_type.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %upstream_ep, i32 0, i32 1
  %4 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 5
  br i1 %cmp.i.not, label %if.then11, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %csi = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csi, align 4
  %format_mbus = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 14
  %call12 = call i32 @ipu_csi_set_mipi_datatype(ptr noundef %7, i32 noundef 0, ptr noundef %format_mbus) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge
  %ipu = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipu, align 4
  %csi_id = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %csi_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %csi_id, align 4
  call void @ipu_set_csi_src_mux(ptr noundef %9, i32 noundef %11, i1 noundef zeroext %cmp.i.not) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.end13 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %upstream_ep) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_find_mbus_format(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_enum_mbus_formats(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csi_get_upstream_endpoint(ptr noundef %priv, ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %src_sd = getelementptr inbounds %struct.csi_priv, ptr %priv, i32 0, i32 25
  %0 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_sd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %grp_id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %3, label %sw.default [
    i32 65536, label %sw.bb
    i32 256, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %call = tail call ptr @imx_media_pipeline_subdev(ptr noundef nonnull %1, i32 noundef 256, i1 noundef zeroext true) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %src_sd, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sd6 = getelementptr inbounds %struct.csi_priv, ptr %priv, i32 0, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then3, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %sd.0 = phi ptr [ %sd6, %sw.default ], [ %1, %if.end.sw.epilog_crit_edge ], [ %6, %if.then3 ], [ %call, %sw.bb.sw.epilog_crit_edge ]
  %call8 = tail call ptr @imx_media_pipeline_pad(ptr noundef %sd.0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext true) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %sw.epilog.cleanup_crit_edge, label %if.end11

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %sw.epilog
  %call12 = tail call ptr @imx_media_get_pad_fwnode(ptr noundef nonnull %call8) #8
  %cmp.i30 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %call12, ptr noundef %ep) #8
  tail call void @fwnode_handle_put(ptr noundef %call12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then14 ], [ 0, %if.end16 ], [ -32, %entry.cleanup_crit_edge ], [ -19, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_pipeline_subdev(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_pipeline_pad(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_get_pad_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csi_try_fmt(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %upstream_ep, ptr nocapture noundef readonly %sd_state, ptr noundef %sdformat, ptr nocapture noundef %crop, ptr nocapture noundef %compose, ptr nocapture noundef writeonly %cc) unnamed_addr #2 align 64 {
entry:
  %code = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code) #8
  %0 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %code, align 4, !annotation !151
  %1 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.csi_priv, ptr %priv, i32 0, i32 2, i32 0, i32 5
  %3 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.not.i.i.not = icmp eq i16 %4, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !155

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %5 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd_state, align 4
  br label %__csi_get_fmt.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.csi_priv, ptr %priv, i32 0, i32 14, i32 0
  br label %__csi_get_fmt.exit

__csi_get_fmt.exit:                               ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %6, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %7 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pad, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %8, label %__csi_get_fmt.exit.sw.epilog_crit_edge [
    i32 1, label %__csi_get_fmt.exit.sw.bb_crit_edge
    i32 2, label %__csi_get_fmt.exit.sw.bb_crit_edge177
    i32 0, label %sw.bb26
  ]

__csi_get_fmt.exit.sw.bb_crit_edge177:            ; preds = %__csi_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

__csi_get_fmt.exit.sw.bb_crit_edge:               ; preds = %__csi_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

__csi_get_fmt.exit.sw.epilog_crit_edge:           ; preds = %__csi_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %__csi_get_fmt.exit.sw.bb_crit_edge, %__csi_get_fmt.exit.sw.bb_crit_edge177
  %code1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code1, align 4
  %call2 = tail call ptr @imx_media_find_mbus_format(i32 noundef %11, i32 noundef 7) #8
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %compose, i32 0, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %14 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %compose, i32 0, i32 3
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height5, align 4
  %bus_type.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %upstream_ep, i32 0, i32 1
  %18 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i122 = icmp eq i32 %19, 2
  br i1 %cmp.i122, label %sw.bb.if.else_crit_edge, label %if.end.i

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end.i:                                         ; preds = %sw.bb
  %bayer.i = getelementptr inbounds %struct.imx_media_pixfmt, ptr %call2, i32 0, i32 6
  %20 = ptrtoint ptr %bayer.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bayer.i, align 1, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp.i.not.i.i = icmp eq i32 %19, 5
  br i1 %cmp.i.not.i.i, label %lor.lhs.false.i.if.else_crit_edge, label %is_parallel_16bit_bus.exit.i

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

is_parallel_16bit_bus.exit.i:                     ; preds = %lor.lhs.false.i
  %bus_width.i.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %upstream_ep, i32 0, i32 2, i32 0, i32 1
  %22 = ptrtoint ptr %bus_width.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bus_width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %23)
  %cmp.i.i = icmp ugt i8 %23, 15
  br i1 %cmp.i.i, label %is_parallel_16bit_bus.exit.i.if.then_crit_edge, label %requires_passthrough.exit

is_parallel_16bit_bus.exit.i.if.then_crit_edge:   ; preds = %is_parallel_16bit_bus.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

requires_passthrough.exit:                        ; preds = %is_parallel_16bit_bus.exit.i
  %24 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %code1, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %25, label %requires_passthrough.exit.if.then_crit_edge [
    i32 8200, label %requires_passthrough.exit.if.else_crit_edge
    i32 8198, label %requires_passthrough.exit.if.else_crit_edge178
  ]

requires_passthrough.exit.if.else_crit_edge178:   ; preds = %requires_passthrough.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

requires_passthrough.exit.if.else_crit_edge:      ; preds = %requires_passthrough.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

requires_passthrough.exit.if.then_crit_edge:      ; preds = %requires_passthrough.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %requires_passthrough.exit.if.then_crit_edge, %is_parallel_16bit_bus.exit.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %27 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %code1, align 4
  %code9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %code9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %code9, align 4
  %30 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call2, ptr %cc, align 4
  br label %if.end18

if.else:                                          ; preds = %requires_passthrough.exit.if.else_crit_edge, %requires_passthrough.exit.if.else_crit_edge178, %lor.lhs.false.i.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %cs = getelementptr inbounds %struct.imx_media_pixfmt, ptr %call2, i32 0, i32 4
  %31 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp = icmp eq i32 %32, 1
  %code11 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %code11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %code11, align 4
  %or.i = select i1 %cmp, i32 9, i32 10
  %call.i = tail call ptr @imx_media_find_mbus_format(i32 noundef %34, i32 noundef %or.i) #8
  %35 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %cc, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then13, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i125 = call i32 @imx_media_enum_mbus_formats(ptr noundef nonnull %code, i32 noundef 0, i32 noundef %or.i) #8
  %36 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %code, align 4
  %call.i127 = call ptr @imx_media_find_mbus_format(i32 noundef %37, i32 noundef %or.i) #8
  %38 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i127, ptr %cc, align 4
  %codes = getelementptr inbounds %struct.imx_media_pixfmt, ptr %call.i127, i32 0, i32 1
  %39 = ptrtoint ptr %codes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %codes, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %43 = ptrtoint ptr %code11 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %code11, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.else.if.end18_crit_edge, %if.then
  %44 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i.i128 = icmp eq i32 %45, 0
  br i1 %cmp.i.i128, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end18
  %num_pads.i.i.i = getelementptr inbounds %struct.csi_priv, ptr %priv, i32 0, i32 2, i32 0, i32 5
  %46 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp.not.i.i.not.i = icmp eq i16 %47, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !155

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %48 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sd_state, align 4
  br label %__csi_get_fmt.exit.i

if.else.i.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.csi_priv, ptr %priv, i32 0, i32 14, i32 0
  br label %__csi_get_fmt.exit.i

__csi_get_fmt.exit.i:                             ; preds = %if.else.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %49, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i, %if.else.i.i ]
  %50 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i129 = icmp eq i32 %51, 0
  br i1 %cmp.i129, label %if.then.i130, label %if.end5.i

if.then.i130:                                     ; preds = %__csi_get_fmt.exit.i
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %52 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %field.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp1.i = icmp eq i32 %53, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i130.csi_try_field.exit_crit_edge

if.then.i130.csi_try_field.exit_crit_edge:        ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_try_field.exit

if.then2.i:                                       ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %field.i, align 4
  br label %csi_try_field.exit

if.end5.i:                                        ; preds = %__csi_get_fmt.exit.i
  %field6.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i.i, i32 0, i32 3
  %55 = ptrtoint ptr %field6.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %field6.i, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %56, label %sw.default.i [
    i32 5, label %if.end5.i.sw.bb.i_crit_edge
    i32 6, label %if.end5.i.sw.bb.i_crit_edge179
    i32 7, label %sw.bb18.i
  ]

if.end5.i.sw.bb.i_crit_edge179:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end5.i.sw.bb.i_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end5.i.sw.bb.i_crit_edge, %if.end5.i.sw.bb.i_crit_edge179
  %field8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %58 = ptrtoint ptr %field8.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %field8.i, align 4
  %.off.i = add i32 %59, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %sw.bb.i.csi_try_field.exit_crit_edge, label %if.then13.i

sw.bb.i.csi_try_field.exit_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_try_field.exit

if.then13.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %field8.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %56, ptr %field8.i, align 4
  br label %csi_try_field.exit

sw.bb18.i:                                        ; preds = %if.end5.i
  %field20.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %61 = ptrtoint ptr %field20.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %field20.i, align 4
  %.off48.i = add i32 %62, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off48.i)
  %switch49.i = icmp ult i32 %.off48.i, 2
  br i1 %switch49.i, label %sw.bb18.i.csi_try_field.exit_crit_edge, label %if.then26.i

sw.bb18.i.csi_try_field.exit_crit_edge:           ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_try_field.exit

if.then26.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #10
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %64)
  %cmp27.i = icmp eq i32 %64, 240
  %cond.i = select i1 %cmp27.i, i32 6, i32 5
  %65 = ptrtoint ptr %field20.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %cond.i, ptr %field20.i, align 4
  br label %csi_try_field.exit

sw.default.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %field33.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %66 = ptrtoint ptr %field33.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %56, ptr %field33.i, align 4
  br label %csi_try_field.exit

csi_try_field.exit:                               ; preds = %sw.default.i, %if.then26.i, %sw.bb18.i.csi_try_field.exit_crit_edge, %if.then13.i, %sw.bb.i.csi_try_field.exit_crit_edge, %if.then2.i, %if.then.i130.csi_try_field.exit_crit_edge
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 4
  %67 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %colorspace, align 4
  %colorspace20 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 4
  %69 = ptrtoint ptr %colorspace20 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %colorspace20, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 7
  %70 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %xfer_func, align 4
  %xfer_func22 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 7
  %72 = ptrtoint ptr %xfer_func22 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %xfer_func22, align 4
  %quantization = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 6
  %73 = ptrtoint ptr %quantization to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %quantization, align 2
  %quantization24 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 6
  %75 = ptrtoint ptr %quantization24 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %quantization24, align 2
  %76 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 5
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %76, align 4
  %79 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 5
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %78, ptr %79, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %__csi_get_fmt.exit
  %format27 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %height30 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %format27, i32 noundef 32, i32 noundef 4096, i32 noundef 1, ptr noundef %height30, i32 noundef 32, i32 noundef 4096, i32 noundef 1, i32 noundef 1) #8
  %code32 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 2
  %81 = ptrtoint ptr %code32 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %code32, align 4
  %call33 = tail call ptr @imx_media_find_mbus_format(i32 noundef %82, i32 noundef 7) #8
  %83 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call33, ptr %cc, align 4
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.then35, label %sw.bb26.if.end42_crit_edge

sw.bb26.if.end42_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then35:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = call i32 @imx_media_enum_mbus_formats(ptr noundef nonnull %code, i32 noundef 0, i32 noundef 3) #8
  %84 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %code, align 4
  %call37 = call ptr @imx_media_find_mbus_format(i32 noundef %85, i32 noundef 3) #8
  %86 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call37, ptr %cc, align 4
  %codes38 = getelementptr inbounds %struct.imx_media_pixfmt, ptr %call37, i32 0, i32 1
  %87 = ptrtoint ptr %codes38 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %codes38, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %91 = ptrtoint ptr %code32 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %code32, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then35, %sw.bb26.if.end42_crit_edge
  %92 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp.i.i131 = icmp eq i32 %93, 0
  br i1 %cmp.i.i131, label %if.then.i.i134, label %if.else.i.i138

if.then.i.i134:                                   ; preds = %if.end42
  %num_pads.i.i.i132 = getelementptr inbounds %struct.csi_priv, ptr %priv, i32 0, i32 2, i32 0, i32 5
  %94 = ptrtoint ptr %num_pads.i.i.i132 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %num_pads.i.i.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %cmp.not.i.i.not.i133 = icmp eq i16 %95, 0
  br i1 %cmp.not.i.i.not.i133, label %do.end.i.i.i135, label %if.then.i.i134.v4l2_subdev_get_try_format.exit.i.i136_crit_edge, !prof !155

if.then.i.i134.v4l2_subdev_get_try_format.exit.i.i136_crit_edge: ; preds = %if.then.i.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i.i136

do.end.i.i.i135:                                  ; preds = %if.then.i.i134
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i.i136

v4l2_subdev_get_try_format.exit.i.i136:           ; preds = %do.end.i.i.i135, %if.then.i.i134.v4l2_subdev_get_try_format.exit.i.i136_crit_edge
  %96 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sd_state, align 4
  br label %__csi_get_fmt.exit.i142

if.else.i.i138:                                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i137 = getelementptr %struct.csi_priv, ptr %priv, i32 0, i32 14, i32 0
  br label %__csi_get_fmt.exit.i142

__csi_get_fmt.exit.i142:                          ; preds = %if.else.i.i138, %v4l2_subdev_get_try_format.exit.i.i136
  %retval.0.i.i139 = phi ptr [ %97, %v4l2_subdev_get_try_format.exit.i.i136 ], [ %arrayidx.i.i137, %if.else.i.i138 ]
  %98 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i141 = icmp eq i32 %99, 0
  br i1 %cmp.i141, label %if.then.i145, label %if.end5.i148

if.then.i145:                                     ; preds = %__csi_get_fmt.exit.i142
  %field.i143 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %100 = ptrtoint ptr %field.i143 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %field.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp1.i144 = icmp eq i32 %101, 0
  br i1 %cmp1.i144, label %if.then2.i146, label %if.then.i145.csi_try_field.exit164_crit_edge

if.then.i145.csi_try_field.exit164_crit_edge:     ; preds = %if.then.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_try_field.exit164

if.then2.i146:                                    ; preds = %if.then.i145
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %field.i143 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %field.i143, align 4
  br label %csi_try_field.exit164

if.end5.i148:                                     ; preds = %__csi_get_fmt.exit.i142
  %field6.i147 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i.i139, i32 0, i32 3
  %103 = ptrtoint ptr %field6.i147 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %field6.i147, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %104, label %sw.default.i163 [
    i32 5, label %if.end5.i148.sw.bb.i152_crit_edge
    i32 6, label %if.end5.i148.sw.bb.i152_crit_edge180
    i32 7, label %sw.bb18.i157
  ]

if.end5.i148.sw.bb.i152_crit_edge180:             ; preds = %if.end5.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i152

if.end5.i148.sw.bb.i152_crit_edge:                ; preds = %if.end5.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i152

sw.bb.i152:                                       ; preds = %if.end5.i148.sw.bb.i152_crit_edge, %if.end5.i148.sw.bb.i152_crit_edge180
  %field8.i149 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %106 = ptrtoint ptr %field8.i149 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %field8.i149, align 4
  %.off.i150 = add i32 %107, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i150)
  %switch.i151 = icmp ult i32 %.off.i150, 2
  br i1 %switch.i151, label %sw.bb.i152.csi_try_field.exit164_crit_edge, label %if.then13.i153

sw.bb.i152.csi_try_field.exit164_crit_edge:       ; preds = %sw.bb.i152
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_try_field.exit164

if.then13.i153:                                   ; preds = %sw.bb.i152
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %field8.i149 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %104, ptr %field8.i149, align 4
  br label %csi_try_field.exit164

sw.bb18.i157:                                     ; preds = %if.end5.i148
  %field20.i154 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %109 = ptrtoint ptr %field20.i154 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %field20.i154, align 4
  %.off48.i155 = add i32 %110, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off48.i155)
  %switch49.i156 = icmp ult i32 %.off48.i155, 2
  br i1 %switch49.i156, label %sw.bb18.i157.csi_try_field.exit164_crit_edge, label %if.then26.i161

sw.bb18.i157.csi_try_field.exit164_crit_edge:     ; preds = %sw.bb18.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi_try_field.exit164

if.then26.i161:                                   ; preds = %sw.bb18.i157
  call void @__sanitizer_cov_trace_pc() #10
  %height.i158 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i.i139, i32 0, i32 1
  %111 = ptrtoint ptr %height.i158 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %height.i158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %112)
  %cmp27.i159 = icmp eq i32 %112, 240
  %cond.i160 = select i1 %cmp27.i159, i32 6, i32 5
  %113 = ptrtoint ptr %field20.i154 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %cond.i160, ptr %field20.i154, align 4
  br label %csi_try_field.exit164

sw.default.i163:                                  ; preds = %if.end5.i148
  call void @__sanitizer_cov_trace_pc() #10
  %field33.i162 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %114 = ptrtoint ptr %field33.i162 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %104, ptr %field33.i162, align 4
  br label %csi_try_field.exit164

csi_try_field.exit164:                            ; preds = %sw.default.i163, %if.then26.i161, %sw.bb18.i157.csi_try_field.exit164_crit_edge, %if.then13.i153, %sw.bb.i152.csi_try_field.exit164_crit_edge, %if.then2.i146, %if.then.i145.csi_try_field.exit164_crit_edge
  %115 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %crop, align 4
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 1
  %116 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %top, align 4
  %117 = ptrtoint ptr %format27 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %format27, align 4
  %width45 = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 2
  %119 = ptrtoint ptr %width45 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %width45, align 4
  %120 = ptrtoint ptr %height30 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %height30, align 4
  %height48 = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 3
  %122 = ptrtoint ptr %height48 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %height48, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %123 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %124)
  %cmp50 = icmp eq i32 %124, 7
  br i1 %cmp50, label %if.then51, label %csi_try_field.exit164.if.end53_crit_edge

csi_try_field.exit164.if.end53_crit_edge:         ; preds = %csi_try_field.exit164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then51:                                        ; preds = %csi_try_field.exit164
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl i32 %121, 1
  %125 = ptrtoint ptr %height48 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %mul, ptr %height48, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %csi_try_field.exit164.if.end53_crit_edge
  %126 = ptrtoint ptr %format27 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %format27, align 4
  %128 = call i32 @llvm.umin.i32(i32 %127, i32 %118) #8
  %129 = ptrtoint ptr %width45 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %width45, align 4
  %130 = ptrtoint ptr %format27 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %format27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %128)
  %cmp5.i = icmp ult i32 %131, %128
  br i1 %cmp5.i, label %if.then.i165, label %if.end53.if.end.i172_crit_edge

if.end53.if.end.i172_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i172

if.then.i165:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 %131, %128
  %132 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %sub.i, ptr %crop, align 4
  br label %if.end.i172

if.end.i172:                                      ; preds = %if.then.i165, %if.end53.if.end.i172_crit_edge
  %133 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %crop, align 4
  %and.i = and i32 %134, -4
  store i32 %and.i, ptr %crop, align 4
  %active_output_pad.i = getelementptr inbounds %struct.csi_priv, ptr %priv, i32 0, i32 10
  %135 = ptrtoint ptr %active_output_pad.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %active_output_pad.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %136)
  %cmp10.i = icmp eq i32 %136, 1
  %storemerge.v.i = select i1 %cmp10.i, i32 -8, i32 -2
  %storemerge.i = and i32 %storemerge.v.i, %128
  %137 = ptrtoint ptr %width45 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %storemerge.i, ptr %width45, align 4
  %138 = ptrtoint ptr %height30 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %height30, align 4
  %140 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %141)
  %cmp17.i = icmp eq i32 %141, 7
  %mul.i = zext i1 %cmp17.i to i32
  %spec.select.i168 = shl i32 %139, %mul.i
  %bus_type.i169 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %upstream_ep, i32 0, i32 1
  %142 = ptrtoint ptr %bus_type.i169 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %bus_type.i169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %143)
  %cmp20.i = icmp eq i32 %143, 2
  %.off.i170 = add i32 %141, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off.i170)
  %switch.i171 = icmp ult i32 %.off.i170, 6
  %or.cond.i = select i1 %cmp20.i, i1 %switch.i171, i1 false
  br i1 %or.cond.i, label %if.then37.i, label %if.else41.i

if.then37.i:                                      ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %height48 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %spec.select.i168, ptr %height48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %spec.select.i168)
  %cmp39.i = icmp eq i32 %spec.select.i168, 480
  %cond40.i = select i1 %cmp39.i, i32 2, i32 0
  %145 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %cond40.i, ptr %top, align 4
  br label %csi_try_crop.exit

if.else41.i:                                      ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %height48 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %height48, align 4
  %148 = call i32 @llvm.umin.i32(i32 %spec.select.i168, i32 %147) #8
  %149 = ptrtoint ptr %height48 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %height48, align 4
  br label %csi_try_crop.exit

csi_try_crop.exit:                                ; preds = %if.else41.i, %if.then37.i
  %150 = ptrtoint ptr %compose to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %compose, align 4
  %top56 = getelementptr inbounds %struct.v4l2_rect, ptr %compose, i32 0, i32 1
  %151 = ptrtoint ptr %top56 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %top56, align 4
  %152 = ptrtoint ptr %width45 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %width45, align 4
  %width58 = getelementptr inbounds %struct.v4l2_rect, ptr %compose, i32 0, i32 2
  %154 = ptrtoint ptr %width58 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %width58, align 4
  %155 = ptrtoint ptr %height48 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %height48, align 4
  %height60 = getelementptr inbounds %struct.v4l2_rect, ptr %compose, i32 0, i32 3
  %157 = ptrtoint ptr %height60 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %height60, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %csi_try_crop.exit, %csi_try_field.exit, %__csi_get_fmt.exit.sw.epilog_crit_edge
  %format61 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %active_output_pad = getelementptr inbounds %struct.csi_priv, ptr %priv, i32 0, i32 10
  %158 = ptrtoint ptr %active_output_pad to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %active_output_pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %159)
  %cmp62 = icmp eq i32 %159, 1
  call void @imx_media_try_colorimetry(ptr noundef %format61, i1 noundef zeroext %cmp62) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_try_colorimetry(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @csi_set_scale(ptr nocapture noundef %compose, i32 noundef %crop, i32 noundef %flags) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = lshr i32 %crop, 1
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %compose to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %compose, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %crop)
  %cmp1.not = icmp eq i32 %1, %crop
  %div35 = lshr i32 %crop, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div35)
  %cmp3.not = icmp eq i32 %1, %div35
  %or.cond = or i1 %cmp1.not, %cmp3.not
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %div433.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %div35, %land.lhs.true.if.end_crit_edge ]
  %2 = ptrtoint ptr %compose to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compose, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div433.pre-phi)
  %cmp5.not = icmp ugt i32 %3, %div433.pre-phi
  br i1 %cmp5.not, label %lor.lhs.false, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

lor.lhs.false:                                    ; preds = %if.end
  %mul = mul i32 %crop, 3
  %div634 = lshr i32 %mul, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div634)
  %cmp7 = icmp ult i32 %3, %div634
  %and9 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  %or.cond36 = and i1 %tobool.not, %cmp7
  br i1 %or.cond36, label %lor.lhs.false.if.end17_crit_edge, label %lor.lhs.false10

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %crop)
  %cmp11 = icmp uge i32 %3, %crop
  %and13 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond37 = or i1 %tobool14.not, %cmp11
  %spec.select = select i1 %or.cond37, i32 %crop, i32 %div433.pre-phi
  br label %if.end17

if.end17:                                         ; preds = %lor.lhs.false10, %lor.lhs.false.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %storemerge = phi i32 [ %div433.pre-phi, %lor.lhs.false.if.end17_crit_edge ], [ %div433.pre-phi, %if.end.if.end17_crit_edge ], [ %spec.select, %lor.lhs.false10 ]
  %4 = ptrtoint ptr %compose to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %compose, align 4
  br label %return

return:                                           ; preds = %if.end17, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -34, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate_default(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_csi_set_mipi_datatype(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_set_csi_src_mux(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_registered(ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  %code = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code) #8
  %ipu = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipu, align 4
  %csi_id = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %csi_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %csi_id, align 4
  %call1 = tail call ptr @ipu_csi_get(ptr noundef %3, i32 noundef %5) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 9
  %6 = ptrtoint ptr %csi_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %csi_id, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name, i32 noundef %7) #11
  %8 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end11:                                         ; preds = %entry
  %csi7 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %csi7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %csi7, align 4
  %10 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %code, align 4
  %arrayidx = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 14, i32 0
  %arrayidx12 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 15, i32 0
  %call13 = call i32 @imx_media_init_mbus_fmt(ptr noundef %arrayidx, i32 noundef 640, i32 noundef 480, i32 noundef 0, i32 noundef 1, ptr noundef %arrayidx12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end11.1, label %if.end11.put_csi_crit_edge

if.end11.put_csi_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_csi

if.end11.1:                                       ; preds = %if.end11
  %arrayidx16 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 16, i32 0
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %arrayidx16, align 4
  %denominator = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 16, i32 0, i32 1
  %12 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 30, ptr %denominator, align 4
  %13 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %code, align 4
  %call.i.1 = call i32 @imx_media_enum_mbus_formats(ptr noundef nonnull %code, i32 noundef 0, i32 noundef 9) #8
  %arrayidx.1 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 14, i32 1
  %14 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %code, align 4
  %arrayidx12.1 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 15, i32 1
  %call13.1 = call i32 @imx_media_init_mbus_fmt(ptr noundef %arrayidx.1, i32 noundef 640, i32 noundef 480, i32 noundef %15, i32 noundef 1, ptr noundef %arrayidx12.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %tobool.not.1 = icmp eq i32 %call13.1, 0
  br i1 %tobool.not.1, label %if.end11.2, label %if.end11.1.put_csi_crit_edge

if.end11.1.put_csi_crit_edge:                     ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_csi

if.end11.2:                                       ; preds = %if.end11.1
  %arrayidx16.1 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 16, i32 1
  %16 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %arrayidx16.1, align 4
  %denominator.1 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 16, i32 1, i32 1
  %17 = ptrtoint ptr %denominator.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 30, ptr %denominator.1, align 4
  %18 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %code, align 4
  %call.i.2 = call i32 @imx_media_enum_mbus_formats(ptr noundef nonnull %code, i32 noundef 0, i32 noundef 9) #8
  %arrayidx.2 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 14, i32 2
  %19 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %code, align 4
  %arrayidx12.2 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 15, i32 2
  %call13.2 = call i32 @imx_media_init_mbus_fmt(ptr noundef %arrayidx.2, i32 noundef 640, i32 noundef 480, i32 noundef %20, i32 noundef 1, ptr noundef %arrayidx12.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.2)
  %tobool.not.2 = icmp eq i32 %call13.2, 0
  br i1 %tobool.not.2, label %if.end15.2, label %if.end11.2.put_csi_crit_edge

if.end11.2.put_csi_crit_edge:                     ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_csi

if.end15.2:                                       ; preds = %if.end11.2
  %arrayidx16.2 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 16, i32 2
  %21 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %arrayidx16.2, align 4
  %denominator.2 = getelementptr %struct.csi_priv, ptr %1, i32 0, i32 16, i32 2, i32 1
  %22 = ptrtoint ptr %denominator.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 30, ptr %denominator.2, align 4
  %skip = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 19
  %23 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @csi_skip, ptr %skip, align 4
  %width = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 17, i32 2
  %24 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 640, ptr %width, align 4
  %height = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 17, i32 3
  %25 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 480, ptr %height, align 4
  %width20 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 18, i32 2
  %26 = ptrtoint ptr %width20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 640, ptr %width20, align 4
  %height22 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 18, i32 3
  %27 = ptrtoint ptr %height22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 480, ptr %height22, align 4
  %sd23 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2
  %call24 = call ptr @imx_media_fim_init(ptr noundef %sd23) #8
  %fim = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %fim to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call24, ptr %fim, align 4
  %cmp.i93 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %call24 to i32
  br label %put_csi

if.end30:                                         ; preds = %if.end15.2
  %dev = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 2, i32 14
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %call33 = call ptr @imx_media_capture_device_init(ptr noundef %31, ptr noundef %sd23, i32 noundef 2, i1 noundef zeroext true) #8
  %vdev = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %vdev to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call33, ptr %vdev, align 4
  %cmp.i94 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call33 to i32
  br label %free_fim

if.end39:                                         ; preds = %if.end30
  %call41 = call i32 @imx_media_capture_device_register(ptr noundef %call33, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end39.cleanup_crit_edge, label %remove_vdev

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

remove_vdev:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vdev, align 4
  call void @imx_media_capture_device_remove(ptr noundef %35) #8
  br label %free_fim

free_fim:                                         ; preds = %remove_vdev, %if.then36
  %ret.0 = phi i32 [ %33, %if.then36 ], [ %call41, %remove_vdev ]
  %36 = ptrtoint ptr %fim to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fim, align 4
  %tobool47.not = icmp eq ptr %37, null
  br i1 %tobool47.not, label %free_fim.put_csi_crit_edge, label %if.then48

free_fim.put_csi_crit_edge:                       ; preds = %free_fim
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_csi

if.then48:                                        ; preds = %free_fim
  call void @__sanitizer_cov_trace_pc() #10
  call void @imx_media_fim_free(ptr noundef nonnull %37) #8
  br label %put_csi

put_csi:                                          ; preds = %if.then48, %free_fim.put_csi_crit_edge, %if.then27, %if.end11.2.put_csi_crit_edge, %if.end11.1.put_csi_crit_edge, %if.end11.put_csi_crit_edge
  %ret.1 = phi i32 [ %29, %if.then27 ], [ %ret.0, %if.then48 ], [ %ret.0, %free_fim.put_csi_crit_edge ], [ %call13, %if.end11.put_csi_crit_edge ], [ %call13.1, %if.end11.1.put_csi_crit_edge ], [ %call13.2, %if.end11.2.put_csi_crit_edge ]
  %38 = ptrtoint ptr %csi7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %csi7, align 4
  call void @ipu_csi_put(ptr noundef %39) #8
  br label %cleanup

cleanup:                                          ; preds = %put_csi, %if.end39.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %8, %do.end ], [ %ret.1, %put_csi ], [ 0, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csi_unregistered(ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %vdev = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  tail call void @imx_media_capture_device_unregister(ptr noundef %3) #8
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  tail call void @imx_media_capture_device_remove(ptr noundef %5) #8
  %fim = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %fim to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fim, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @imx_media_fim_free(ptr noundef nonnull %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %csi = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csi, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ipu_csi_put(ptr noundef nonnull %9) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_csi_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_init_mbus_fmt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_fim_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_capture_device_init(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_capture_device_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_capture_device_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_fim_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_csi_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_capture_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_get_fwnode_pad(ptr noundef readonly %entity, ptr nocapture noundef readonly %endpoint) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call ptr @dev_fwnode(ptr noundef %3) #8
  %call3 = tail call ptr @fwnode_get_next_child_node(ptr noundef %call2, ptr noundef null) #8
  %local_fwnode = getelementptr inbounds %struct.fwnode_endpoint, ptr %endpoint, i32 0, i32 2
  %4 = ptrtoint ptr %local_fwnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local_fwnode, align 4
  %cmp = icmp eq ptr %5, %call3
  %cond4 = select i1 %cmp, i32 0, i32 -6
  tail call void @fwnode_handle_put(ptr noundef %call3) #8
  ret i32 %cond4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi_link_setup(ptr noundef readonly %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi_link_setup.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi_link_setup, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %entity7 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %4 = ptrtoint ptr %entity7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entity7, align 4
  %name = getelementptr inbounds %struct.media_entity, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %entity8 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 1
  %8 = ptrtoint ptr %entity8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entity8, align 4
  %name9 = getelementptr inbounds %struct.media_entity, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi_link_setup.__UNIQUE_ID_ddebug317, ptr noundef %3, ptr noundef nonnull @.str.47, ptr noundef %7, ptr noundef %11) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %flags10 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 4
  %12 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags10, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end37, label %if.then12

if.then12:                                        ; preds = %do.end
  %entity13 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %14 = ptrtoint ptr %entity13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entity13, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then12.out_crit_edge, label %is_media_entity_v4l2_subdev.exit

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

is_media_entity_v4l2_subdev.exit:                 ; preds = %if.then12
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i = icmp eq i32 %17, 2
  br i1 %cmp.i, label %if.end16, label %is_media_entity_v4l2_subdev.exit.out_crit_edge

is_media_entity_v4l2_subdev.exit.out_crit_edge:   ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end16:                                         ; preds = %is_media_entity_v4l2_subdev.exit
  %and28 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %src_sd35 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 25
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end16
  %18 = ptrtoint ptr %src_sd35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src_sd35, align 4
  %tobool31.not = icmp eq ptr %19, null
  br i1 %tobool31.not, label %if.end33, label %if.then30.out_crit_edge

if.then30.out_crit_edge:                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end33:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %src_sd35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %15, ptr %src_sd35, align 4
  br label %out

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %src_sd35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %src_sd35, align 4
  br label %out

if.end37:                                         ; preds = %do.end
  %and38 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else44, label %if.then40

if.then40:                                        ; preds = %if.end37
  %sink = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 23
  %22 = ptrtoint ptr %sink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sink, align 4
  %tobool41.not = icmp eq ptr %23, null
  br i1 %tobool41.not, label %if.end49, label %if.then40.out_crit_edge

if.then40.out_crit_edge:                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else44:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_hdlr = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 32
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdlr) #8
  %call47 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdlr, i32 noundef 0, ptr noundef nonnull @csi_link_setup._key, ptr noundef nonnull @.str.48) #8
  %sink48 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 23
  %24 = ptrtoint ptr %sink48 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %sink48, align 4
  %active_output_pad = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %active_output_pad to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %active_output_pad, align 4
  br label %out

if.end49:                                         ; preds = %if.then40
  %index = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 2
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %index, align 4
  %conv = zext i16 %27 to i32
  %active_output_pad50 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %active_output_pad50 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %active_output_pad50, align 4
  %29 = load i16, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %29)
  %cmp = icmp eq i16 %29, 2
  %entity55 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %30 = ptrtoint ptr %entity55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %entity55, align 4
  %tobool.not.i126 = icmp eq ptr %31, null
  br i1 %cmp, label %if.then54, label %if.else67

if.then54:                                        ; preds = %if.end49
  br i1 %tobool.not.i126, label %if.then54.out_crit_edge, label %is_media_entity_v4l2_video_device.exit

if.then54.out_crit_edge:                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

is_media_entity_v4l2_video_device.exit:           ; preds = %if.then54
  %obj_type.i127 = getelementptr inbounds %struct.media_entity, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %obj_type.i127 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %obj_type.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i128 = icmp eq i32 %33, 1
  br i1 %cmp.i128, label %if.end58, label %is_media_entity_v4l2_video_device.exit.out_crit_edge

is_media_entity_v4l2_video_device.exit.out_crit_edge: ; preds = %is_media_entity_v4l2_video_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end58:                                         ; preds = %is_media_entity_v4l2_video_device.exit
  %fim = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %fim to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fim, align 4
  %tobool59.not = icmp eq ptr %35, null
  br i1 %tobool59.not, label %if.end58.if.end86_crit_edge, label %if.then60

if.end58.if.end86_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then60:                                        ; preds = %if.end58
  %call62 = tail call i32 @imx_media_fim_add_controls(ptr noundef nonnull %35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then60.if.end86_crit_edge, label %if.then60.out_crit_edge

if.then60.out_crit_edge:                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then60.if.end86_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.else67:                                        ; preds = %if.end49
  br i1 %tobool.not.i126, label %if.else67.out_crit_edge, label %is_media_entity_v4l2_subdev.exit134

if.else67.out_crit_edge:                          ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

is_media_entity_v4l2_subdev.exit134:              ; preds = %if.else67
  %obj_type.i131 = getelementptr inbounds %struct.media_entity, ptr %31, i32 0, i32 2
  %36 = ptrtoint ptr %obj_type.i131 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %obj_type.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp.i132 = icmp eq i32 %37, 2
  br i1 %cmp.i132, label %if.end71, label %is_media_entity_v4l2_subdev.exit134.out_crit_edge

is_media_entity_v4l2_subdev.exit134.out_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit134
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end71:                                         ; preds = %is_media_entity_v4l2_subdev.exit134
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %31, i32 0, i32 10
  %38 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %grp_id, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %39, label %if.end71.out_crit_edge [
    i32 4096, label %if.end71.if.end86_crit_edge
    i32 8192, label %sw.bb84
  ]

if.end71.if.end86_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end71.out_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb84:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end86:                                         ; preds = %sw.bb84, %if.end71.if.end86_crit_edge, %if.then60.if.end86_crit_edge, %if.end58.if.end86_crit_edge
  %.sink = phi i32 [ 1, %sw.bb84 ], [ 0, %if.then60.if.end86_crit_edge ], [ 0, %if.end58.if.end86_crit_edge ], [ 2, %if.end71.if.end86_crit_edge ]
  %dest83 = getelementptr inbounds %struct.csi_priv, ptr %1, i32 0, i32 24
  %41 = ptrtoint ptr %dest83 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink, ptr %dest83, align 4
  %entity87 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %42 = ptrtoint ptr %entity87 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %entity87, align 4
  %44 = ptrtoint ptr %sink to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %sink, align 4
  br label %out

out:                                              ; preds = %if.end86, %if.end71.out_crit_edge, %is_media_entity_v4l2_subdev.exit134.out_crit_edge, %if.else67.out_crit_edge, %if.then60.out_crit_edge, %is_media_entity_v4l2_video_device.exit.out_crit_edge, %if.then54.out_crit_edge, %if.else44, %if.then40.out_crit_edge, %if.else, %if.end33, %if.then30.out_crit_edge, %is_media_entity_v4l2_subdev.exit.out_crit_edge, %if.then12.out_crit_edge
  %ret.2 = phi i32 [ 0, %if.end33 ], [ 0, %if.else ], [ %call62, %if.then60.out_crit_edge ], [ 0, %if.end86 ], [ 0, %if.else44 ], [ -22, %is_media_entity_v4l2_subdev.exit.out_crit_edge ], [ -16, %if.then30.out_crit_edge ], [ -16, %if.then40.out_crit_edge ], [ -22, %is_media_entity_v4l2_video_device.exit.out_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit134.out_crit_edge ], [ -22, %if.end71.out_crit_edge ], [ -22, %if.then12.out_crit_edge ], [ -22, %if.then54.out_crit_edge ], [ -22, %if.else67.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_fim_add_controls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_pinctrl_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_endpoint_by_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_subdev_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_csi_notify_bound(ptr nocapture noundef readonly %notifier, ptr noundef %sd, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pads = getelementptr i8, ptr %notifier, i32 -248
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 10
  %4 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65536, ptr %grp_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @v4l2_create_fwnode_links_to_pad(ptr noundef %sd, ptr noundef %1, i32 noundef 0) #8
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_create_fwnode_links_to_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !45, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !98, !100, !101, !102, !103, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !121, !122, !123, !124, !126, !128, !129, !130, !132, !133, !135, !137, !139}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @__initcall__kmod_imx6_media_csi__323_2084_imx_csi_driver_init6, !1, !"__initcall__kmod_imx6_media_csi__323_2084_imx_csi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 2084, i32 1}
!2 = !{ptr @__exitcall_imx_csi_driver_exit, !1, !"__exitcall_imx_csi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description324, !4, !"__UNIQUE_ID_description324", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 2086, i32 1}
!5 = !{ptr @__UNIQUE_ID_author325, !6, !"__UNIQUE_ID_author325", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 2087, i32 1}
!7 = !{ptr @__UNIQUE_ID_file326, !8, !"__UNIQUE_ID_file326", i1 false, i1 false}
!8 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 2088, i32 1}
!9 = !{ptr @__UNIQUE_ID_license327, !8, !"__UNIQUE_ID_license327", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 2081, i32 11}
!12 = !{ptr @imx_csi_driver, !13, !"imx_csi_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 2076, i32 31}
!14 = !{ptr @imx_csi_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1993, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @imx_csi_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1994, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @imx_csi_probe.__key.4, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 2019, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @imx_csi_probe._key, !24, !"_key", i1 false, i1 false}
!24 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 2021, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 2034, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @imx_csi_probe.__UNIQUE_ID_ddebug322, !27, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 365, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @csi_idmac_eof_timeout._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @csi_idmac_eof_timeout._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @csi_subdev_ops, !38, !"csi_subdev_ops", i1 false, i1 false}
!38 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1893, i32 37}
!39 = !{ptr @csi_core_ops, !40, !"csi_core_ops", i1 false, i1 false}
!40 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1870, i32 42}
!41 = !{ptr @csi_video_ops, !42, !"csi_video_ops", i1 false, i1 false}
!42 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1875, i32 43}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1002, i32 3}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @csi_s_stream.__UNIQUE_ID_ddebug315, !44, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1007, i32 3}
!49 = !{ptr @csi_s_stream.__UNIQUE_ID_ddebug316, !48, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 800, i32 3}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @csi_start._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @csi_start._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 627, i32 3}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @csi_idmac_start._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @csi_idmac_start._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 636, i32 11}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 638, i32 3}
!64 = !{ptr @csi_idmac_start._entry.21, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @csi_idmac_start._entry_ptr.23, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 648, i32 11}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 650, i32 3}
!70 = !{ptr @csi_idmac_start._entry.25, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @csi_idmac_start._entry_ptr.27, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 245, i32 3}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @csi_idmac_get_ipu_resources._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @csi_idmac_get_ipu_resources._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 253, i32 3}
!79 = !{ptr @csi_idmac_get_ipu_resources._entry.30, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @csi_idmac_get_ipu_resources._entry_ptr.32, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @init_completion.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../include/linux/completion.h", i32 87, i32 2}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 349, i32 2}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @csi_idmac_nfb4eof_interrupt._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @csi_idmac_nfb4eof_interrupt._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 688, i32 3}
!91 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @csi_idmac_wait_last_eof._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @csi_idmac_wait_last_eof._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @csi_skip, !95, !"csi_skip", i1 false, i1 false}
!95 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 841, i32 35}
!96 = !{ptr @csi_pad_ops, !97, !"csi_pad_ops", i1 false, i1 false}
!97 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1881, i32 41}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1254, i32 4}
!100 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @csi_enum_mbus_code._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @csi_enum_mbus_code._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1529, i32 3}
!107 = !{ptr @csi_set_fmt._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @csi_set_fmt._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1660, i32 3}
!111 = !{ptr @csi_set_selection._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @csi_set_selection._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1131, i32 3}
!115 = !{ptr @csi_link_validate._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @csi_link_validate._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @csi_internal_ops, !118, !"csi_internal_ops", i1 false, i1 false}
!118 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1899, i32 46}
!119 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1767, i32 3}
!121 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @csi_registered._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @csi_registered._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @csi_entity_ops, !125, !"csi_entity_ops", i1 false, i1 false}
!125 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1864, i32 45}
!126 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1029, i32 2}
!128 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @csi_link_setup.__UNIQUE_ID_ddebug317, !127, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!130 = !{ptr @csi_link_setup._key, !131, !"_key", i1 false, i1 false}
!131 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1064, i32 3}
!132 = !{ptr @.str.48, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/pinctrl/consumer.h", i32 209, i32 38}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1935, i32 56}
!137 = !{ptr @csi_notify_ops, !138, !"csi_notify_ops", i1 false, i1 false}
!138 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 1921, i32 52}
!139 = !{ptr @imx_csi_ids, !140, !"imx_csi_ids", i1 false, i1 false}
!140 = !{!"../drivers/staging/media/imx/imx-media-csi.c", i32 2070, i32 40}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{i64 2148808404, i64 2148808409, i64 2148808422, i64 2148808466, i64 2148808500, i64 2148808521}
!151 = !{!"auto-init"}
!152 = !{!"branch_weights", i32 2000, i32 1}
!153 = !{i64 2148034077, i64 2148034357, i64 2148034691, i64 2148035025}
!154 = !{i8 0, i8 2}
!155 = !{!"branch_weights", i32 1, i32 2000}
