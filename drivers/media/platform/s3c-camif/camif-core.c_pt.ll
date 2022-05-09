; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s3c-camif/camif-core.c_pt.bc'
source_filename = "../drivers/media/platform/s3c-camif/camif-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.camif_fmt = type { i32, i32, i16, i16, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s3c_camif_drvdata = type { ptr, i32 }
%struct.s3c_camif_variant = type { [2 x %struct.vp_pix_limits], %struct.camif_pix_limits, i8, i8, i32 }
%struct.vp_pix_limits = type { i16, i16, i16, i16, i8, i16 }
%struct.camif_pix_limits = type { i16 }
%struct.camif_vp = type { %struct.wait_queue_head, i32, ptr, %struct.media_pad, %struct.video_device, %struct.v4l2_ctrl_handler, ptr, %struct.vb2_queue, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.camif_scaler, ptr, i32, %struct.camif_frame, i32, i16, i8, i16, i8, i8, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.camif_scaler = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.camif_frame = type { i16, i16, %struct.v4l2_rect, %struct.camif_dma_offset }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.camif_dma_offset = type { i32, i32 }
%struct.camif_dev = type { %struct.media_device, %struct.v4l2_device, %struct.v4l2_subdev, %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, [3 x %struct.media_pad], i32, %struct.cam_sensor, ptr, %struct.v4l2_ctrl_handler, ptr, %struct.anon.120, i8, i8, i8, i8, [2 x %struct.camif_vp], ptr, ptr, %struct.s3c_camif_plat_data, [2 x ptr], %struct.mutex, %struct.spinlock, ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.88, i16, i16, i16, [10 x i16] }
%union.anon.88 = type { i16 }
%struct.cam_sensor = type { ptr, i16, i16 }
%struct.anon.120 = type { ptr, ptr }
%struct.s3c_camif_plat_data = type { %struct.s3c_camif_sensor_info, ptr, ptr }
%struct.s3c_camif_sensor_info = type { %struct.i2c_board_info, i32, i32, i16, i16, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@camif_formats = internal constant { [6 x %struct.camif_fmt], [32 x i8] } { [6 x %struct.camif_fmt] [%struct.camif_fmt { i32 1345466932, i32 34, i16 3, i16 5, i8 16, i8 1 }, %struct.camif_fmt { i32 842093913, i32 32, i16 3, i16 5, i8 12, i8 1 }, %struct.camif_fmt { i32 842094169, i32 33, i16 3, i16 5, i8 12, i8 1 }, %struct.camif_fmt { i32 1380075346, i32 16, i16 1, i16 6, i8 16, i8 2 }, %struct.camif_fmt { i32 876758866, i32 18, i16 1, i16 6, i8 32, i8 4 }, %struct.camif_fmt { i32 1213351746, i32 17, i16 1, i16 4, i8 32, i8 4 }], [32 x i8] zeroinitializer }, align 32
@s3c_camif_get_scaler_config.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s3c_camif\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s3c_camif_get_scaler_config\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/s3c-camif/camif-core.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"H: ratio: %u, shift: %u. V: ratio: %u, shift: %u.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d H: ratio: %u, shift: %u. V: ratio: %u, shift: %u.\0A\00", [39 x i8] zeroinitializer }, align 32
@s3c_camif_get_scaler_config.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Source: %dx%d, Target: %dx%d, scaleup_h/v: %d/%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d Source: %dx%d, Target: %dx%d, scaleup_h/v: %d/%d\0A\00", [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_s3c_camif__301_634_s3c_camif_driver_init6 = internal global ptr @s3c_camif_driver_init, section ".initcall6.init", align 4
@s3c_camif_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s3c_camif_probe, ptr @s3c_camif_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_camif_pm_ops, ptr null, ptr null }, ptr @s3c_camif_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s3c_camif_driver_exit = internal global ptr @s3c_camif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [67 x i8] c"s3c_camif.author=Sylwester Nawrocki <sylvester.nawrocki@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [53 x i8] c"s3c_camif.author=Tomasz Figa <tomasz.figa@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [66 x i8] c"s3c_camif.description=S3C24XX/S3C64XX SoC camera interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [58 x i8] c"s3c_camif.file=drivers/media/platform/s3c-camif/s3c-camif\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [22 x i8] c"s3c_camif.license=GPL\00", section ".modinfo", align 1
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s3c-camif\00", [22 x i8] zeroinitializer }, align 32
@s3c_camif_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_camif_runtime_suspend, ptr @s3c_camif_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@s3c_camif_driver_ids = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c2440-camif\00\00\00\00\00\00\00", i32 ptrtoint (ptr @s3c244x_camif_drvdata to i32) }, %struct.platform_device_id { [20 x i8] c"s3c6410-camif\00\00\00\00\00\00\00", i32 ptrtoint (ptr @s3c6410_camif_drvdata to i32) }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@s3c_camif_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&camif->slock\00", [18 x i8] zeroinitializer }, align 32
@s3c_camif_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&camif->lock\00", [19 x i8] zeroinitializer }, align 32
@s3c_camif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 415, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wrong platform data\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c_camif_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3c_camif_probe._entry_ptr = internal global ptr @s3c_camif_probe._entry, section ".printk_index", align 4
@s3c_camif_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.2, i32 448, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sensor clock frequency: %lu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s3c_camif_probe._entry_ptr.18 = internal global ptr @s3c_camif_probe._entry.15, section ".printk_index", align 4
@camif_request_irqs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&vp->irq_queue\00", [17 x i8] zeroinitializer }, align 32
@camif_request_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 389, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to install IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"camif_request_irqs\00", [45 x i8] zeroinitializer }, align 32
@camif_request_irqs._entry_ptr = internal global ptr @camif_request_irqs._entry, section ".printk_index", align 4
@camif_clk_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 363, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clock: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"camif_clk_get\00", [18 x i8] zeroinitializer }, align 32
@camif_clk_get._entry_ptr = internal global ptr @camif_clk_get._entry, section ".printk_index", align 4
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"camif\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"camera\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Samsung S3C%s CAMIF\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"6410\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"244X\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"platform\00", [23 x i8] zeroinitializer }, align 32
@camif_register_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: failed to get I2C adapter %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"camif_register_sensor\00", [42 x i8] zeroinitializer }, align 32
@camif_register_sensor._entry_ptr = internal global ptr @camif_register_sensor._entry, section ".printk_index", align 4
@camif_register_sensor._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: failed to acquire subdev %s\0A\00", [61 x i8] zeroinitializer }, align 32
@camif_register_sensor._entry_ptr.34 = internal global ptr @camif_register_sensor._entry.32, section ".printk_index", align 4
@camif_register_sensor._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: registered sensor subdevice %s\0A\00", [58 x i8] zeroinitializer }, align 32
@camif_register_sensor._entry_ptr.37 = internal global ptr @camif_register_sensor._entry.35, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@camif_register_sensor._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: Initial format from sensor: %dx%d, %#x\0A\00", [50 x i8] zeroinitializer }, align 32
@camif_register_sensor._entry_ptr.40 = internal global ptr @camif_register_sensor._entry.38, section ".printk_index", align 4
@s3c244x_camif_drvdata = internal global { %struct.s3c_camif_drvdata, [24 x i8] } { %struct.s3c_camif_drvdata { ptr @s3c244x_camif_variant, i32 24000000 }, [24 x i8] zeroinitializer }, align 32
@s3c6410_camif_drvdata = internal global { %struct.s3c_camif_drvdata, [24 x i8] } { %struct.s3c_camif_drvdata { ptr @s3c6410_camif_variant, i32 133000000 }, [24 x i8] zeroinitializer }, align 32
@s3c244x_camif_variant = internal constant { %struct.s3c_camif_variant, [32 x i8] } { %struct.s3c_camif_variant { [2 x %struct.vp_pix_limits] [%struct.vp_pix_limits { i16 4096, i16 2048, i16 16, i16 4096, i8 16, i16 0 }, %struct.vp_pix_limits { i16 640, i16 640, i16 16, i16 480, i8 16, i16 0 }], %struct.camif_pix_limits { i16 8 }, i8 32, i8 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@s3c6410_camif_variant = internal constant { %struct.s3c_camif_variant, [32 x i8] } { %struct.s3c_camif_variant { [2 x %struct.vp_pix_limits] [%struct.vp_pix_limits { i16 4096, i16 2048, i16 16, i16 4096, i8 16, i16 0 }, %struct.vp_pix_limits { i16 4096, i16 720, i16 16, i16 4096, i8 16, i16 0 }], %struct.camif_pix_limits { i16 8 }, i8 50, i8 1, i32 32 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 90, i64 270]
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"camif_formats\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 42, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 177, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 181, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"s3c_camif_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 624, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 629, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"s3c_camif_pm_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 619, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant [21 x i8] c"s3c_camif_driver_ids\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 607, i32 40 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 409, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 410, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 415, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 447, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 380, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 389, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 362, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 37, i32 15 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 39, i32 14 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 307, i32 41 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 308, i32 37 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 308, i32 46 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 309, i32 24 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 204, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 213, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 219, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 232, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [22 x i8] c"s3c244x_camif_drvdata\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 572, i32 33 }
@___asan_gen_.185 = private unnamed_addr constant [22 x i8] c"s3c6410_camif_drvdata\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 602, i32 33 }
@___asan_gen_.188 = private unnamed_addr constant [22 x i8] c"s3c244x_camif_variant\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 549, i32 39 }
@___asan_gen_.191 = private unnamed_addr constant [22 x i8] c"s3c6410_camif_variant\00", align 1
@___asan_gen_.192 = private constant [49 x i8] c"../drivers/media/platform/s3c-camif/camif-core.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 577, i32 39 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_s3c_camif_driver_exit, ptr @__initcall__kmod_s3c_camif__301_634_s3c_camif_driver_init6, ptr @camif_clk_get._entry, ptr @camif_clk_get._entry_ptr, ptr @camif_register_sensor._entry, ptr @camif_register_sensor._entry.32, ptr @camif_register_sensor._entry.35, ptr @camif_register_sensor._entry.38, ptr @camif_register_sensor._entry_ptr, ptr @camif_register_sensor._entry_ptr.34, ptr @camif_register_sensor._entry_ptr.37, ptr @camif_register_sensor._entry_ptr.40, ptr @camif_request_irqs._entry, ptr @camif_request_irqs._entry_ptr, ptr @s3c_camif_driver_exit, ptr @s3c_camif_probe._entry, ptr @s3c_camif_probe._entry.15, ptr @s3c_camif_probe._entry_ptr, ptr @s3c_camif_probe._entry_ptr.18, ptr @camif_formats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @s3c_camif_driver, ptr @.str.7, ptr @s3c_camif_pm_ops, ptr @s3c_camif_driver_ids, ptr @s3c_camif_probe.__key, ptr @.str.8, ptr @s3c_camif_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @camif_request_irqs.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @s3c244x_camif_drvdata, ptr @s3c6410_camif_drvdata, ptr @s3c244x_camif_variant, ptr @s3c6410_camif_variant], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camif_formats to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_driver_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camif_request_irqs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camif_request_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camif_clk_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camif_register_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camif_register_sensor._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camif_register_sensor._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camif_register_sensor._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c244x_camif_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c6410_camif_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c244x_camif_variant to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c6410_camif_variant to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @s3c_camif_find_format(ptr noundef readonly %vp, ptr noundef readonly %pixelformat, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %index)
  %cmp = icmp sgt i32 %index, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %tobool.not = icmp eq ptr %vp, null
  %fmt_flags = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 19
  %tobool6.not = icmp eq ptr %pixelformat, null
  br i1 %tobool.not, label %for.cond.preheader.if.end5_crit_edge, label %land.lhs.true

for.cond.preheader.if.end5_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %for.cond.preheader
  %0 = ptrtoint ptr %fmt_flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fmt_flags, align 8
  %and29 = and i16 %1, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and29)
  %tobool3.not = icmp eq i16 %and29, 0
  br i1 %tobool3.not, label %land.lhs.true.land.lhs.true.1_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.land.lhs.true.1_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.1

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %for.cond.preheader.if.end5_crit_edge
  br i1 %tobool6.not, label %if.end5.for.inc_crit_edge, label %land.lhs.true7

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true7:                                   ; preds = %if.end5
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1345466932, i32 %3)
  %cmp8 = icmp eq i32 %3, 1345466932
  br i1 %cmp8, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.for.inc_crit_edge

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true7.for.inc_crit_edge, %if.end5.for.inc_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp12 = icmp eq i32 %index, 0
  %spec.select = select i1 %cmp12, ptr @camif_formats, ptr null
  br i1 %tobool.not, label %for.inc.if.end5.1_crit_edge, label %for.inc.land.lhs.true.1_crit_edge

for.inc.land.lhs.true.1_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.1

for.inc.if.end5.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.1

land.lhs.true.1:                                  ; preds = %for.inc.land.lhs.true.1_crit_edge, %land.lhs.true.land.lhs.true.1_crit_edge
  %id.140 = phi i32 [ 1, %for.inc.land.lhs.true.1_crit_edge ], [ 0, %land.lhs.true.land.lhs.true.1_crit_edge ]
  %def_fmt.238 = phi ptr [ %spec.select, %for.inc.land.lhs.true.1_crit_edge ], [ null, %land.lhs.true.land.lhs.true.1_crit_edge ]
  %4 = ptrtoint ptr %fmt_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fmt_flags, align 8
  %and29.1 = and i16 %5, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and29.1)
  %tobool3.not.1 = icmp eq i16 %and29.1, 0
  br i1 %tobool3.not.1, label %land.lhs.true.1.land.lhs.true.2_crit_edge, label %land.lhs.true.1.if.end5.1_crit_edge

land.lhs.true.1.if.end5.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.1

land.lhs.true.1.land.lhs.true.2_crit_edge:        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.2

if.end5.1:                                        ; preds = %land.lhs.true.1.if.end5.1_crit_edge, %for.inc.if.end5.1_crit_edge
  %id.141 = phi i32 [ %id.140, %land.lhs.true.1.if.end5.1_crit_edge ], [ 1, %for.inc.if.end5.1_crit_edge ]
  %def_fmt.239 = phi ptr [ %def_fmt.238, %land.lhs.true.1.if.end5.1_crit_edge ], [ %spec.select, %for.inc.if.end5.1_crit_edge ]
  br i1 %tobool6.not, label %if.end5.1.for.inc.1_crit_edge, label %land.lhs.true7.1

if.end5.1.for.inc.1_crit_edge:                    ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true7.1:                                 ; preds = %if.end5.1
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %7)
  %cmp8.1 = icmp eq i32 %7, 842093913
  br i1 %cmp8.1, label %land.lhs.true7.1.cleanup_crit_edge, label %land.lhs.true7.1.for.inc.1_crit_edge

land.lhs.true7.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true7.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true7.1.cleanup_crit_edge:               ; preds = %land.lhs.true7.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true7.1.for.inc.1_crit_edge, %if.end5.1.for.inc.1_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %id.141, i32 %index)
  %cmp12.1 = icmp eq i32 %id.141, %index
  %spec.select.1 = select i1 %cmp12.1, ptr getelementptr inbounds ([6 x %struct.camif_fmt], ptr @camif_formats, i32 0, i32 1), ptr %def_fmt.239
  %inc.1 = add nuw nsw i32 %id.141, 1
  br i1 %tobool.not, label %for.inc.1.if.end5.2_crit_edge, label %for.inc.1.land.lhs.true.2_crit_edge

for.inc.1.land.lhs.true.2_crit_edge:              ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.2

for.inc.1.if.end5.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.2

land.lhs.true.2:                                  ; preds = %for.inc.1.land.lhs.true.2_crit_edge, %land.lhs.true.1.land.lhs.true.2_crit_edge
  %id.1.146 = phi i32 [ %inc.1, %for.inc.1.land.lhs.true.2_crit_edge ], [ %id.140, %land.lhs.true.1.land.lhs.true.2_crit_edge ]
  %def_fmt.2.144 = phi ptr [ %spec.select.1, %for.inc.1.land.lhs.true.2_crit_edge ], [ %def_fmt.238, %land.lhs.true.1.land.lhs.true.2_crit_edge ]
  %8 = ptrtoint ptr %fmt_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fmt_flags, align 8
  %and29.2 = and i16 %9, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and29.2)
  %tobool3.not.2 = icmp eq i16 %and29.2, 0
  br i1 %tobool3.not.2, label %land.lhs.true.2.land.lhs.true.3_crit_edge, label %land.lhs.true.2.if.end5.2_crit_edge

land.lhs.true.2.if.end5.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.2

land.lhs.true.2.land.lhs.true.3_crit_edge:        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.3

if.end5.2:                                        ; preds = %land.lhs.true.2.if.end5.2_crit_edge, %for.inc.1.if.end5.2_crit_edge
  %id.1.147 = phi i32 [ %id.1.146, %land.lhs.true.2.if.end5.2_crit_edge ], [ %inc.1, %for.inc.1.if.end5.2_crit_edge ]
  %def_fmt.2.145 = phi ptr [ %def_fmt.2.144, %land.lhs.true.2.if.end5.2_crit_edge ], [ %spec.select.1, %for.inc.1.if.end5.2_crit_edge ]
  br i1 %tobool6.not, label %if.end5.2.for.inc.2_crit_edge, label %land.lhs.true7.2

if.end5.2.for.inc.2_crit_edge:                    ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true7.2:                                 ; preds = %if.end5.2
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094169, i32 %11)
  %cmp8.2 = icmp eq i32 %11, 842094169
  br i1 %cmp8.2, label %land.lhs.true7.2.cleanup_crit_edge, label %land.lhs.true7.2.for.inc.2_crit_edge

land.lhs.true7.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true7.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true7.2.cleanup_crit_edge:               ; preds = %land.lhs.true7.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true7.2.for.inc.2_crit_edge, %if.end5.2.for.inc.2_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %id.1.147, i32 %index)
  %cmp12.2 = icmp eq i32 %id.1.147, %index
  %spec.select.2 = select i1 %cmp12.2, ptr getelementptr inbounds ([6 x %struct.camif_fmt], ptr @camif_formats, i32 0, i32 2), ptr %def_fmt.2.145
  %inc.2 = add nuw nsw i32 %id.1.147, 1
  br i1 %tobool.not, label %for.inc.2.if.end5.3_crit_edge, label %for.inc.2.land.lhs.true.3_crit_edge

for.inc.2.land.lhs.true.3_crit_edge:              ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.3

for.inc.2.if.end5.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.3

land.lhs.true.3:                                  ; preds = %for.inc.2.land.lhs.true.3_crit_edge, %land.lhs.true.2.land.lhs.true.3_crit_edge
  %id.1.252 = phi i32 [ %inc.2, %for.inc.2.land.lhs.true.3_crit_edge ], [ %id.1.146, %land.lhs.true.2.land.lhs.true.3_crit_edge ]
  %def_fmt.2.250 = phi ptr [ %spec.select.2, %for.inc.2.land.lhs.true.3_crit_edge ], [ %def_fmt.2.144, %land.lhs.true.2.land.lhs.true.3_crit_edge ]
  %12 = ptrtoint ptr %fmt_flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fmt_flags, align 8
  %and29.3 = and i16 %13, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and29.3)
  %tobool3.not.3 = icmp eq i16 %and29.3, 0
  br i1 %tobool3.not.3, label %land.lhs.true.3.land.lhs.true.4_crit_edge, label %land.lhs.true.3.if.end5.3_crit_edge

land.lhs.true.3.if.end5.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.3

land.lhs.true.3.land.lhs.true.4_crit_edge:        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.4

if.end5.3:                                        ; preds = %land.lhs.true.3.if.end5.3_crit_edge, %for.inc.2.if.end5.3_crit_edge
  %id.1.253 = phi i32 [ %id.1.252, %land.lhs.true.3.if.end5.3_crit_edge ], [ %inc.2, %for.inc.2.if.end5.3_crit_edge ]
  %def_fmt.2.251 = phi ptr [ %def_fmt.2.250, %land.lhs.true.3.if.end5.3_crit_edge ], [ %spec.select.2, %for.inc.2.if.end5.3_crit_edge ]
  br i1 %tobool6.not, label %if.end5.3.for.inc.3_crit_edge, label %land.lhs.true7.3

if.end5.3.for.inc.3_crit_edge:                    ; preds = %if.end5.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true7.3:                                 ; preds = %if.end5.3
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1380075346, i32 %15)
  %cmp8.3 = icmp eq i32 %15, 1380075346
  br i1 %cmp8.3, label %land.lhs.true7.3.cleanup_crit_edge, label %land.lhs.true7.3.for.inc.3_crit_edge

land.lhs.true7.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true7.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true7.3.cleanup_crit_edge:               ; preds = %land.lhs.true7.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.3:                                        ; preds = %land.lhs.true7.3.for.inc.3_crit_edge, %if.end5.3.for.inc.3_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %id.1.253, i32 %index)
  %cmp12.3 = icmp eq i32 %id.1.253, %index
  %spec.select.3 = select i1 %cmp12.3, ptr getelementptr inbounds ([6 x %struct.camif_fmt], ptr @camif_formats, i32 0, i32 3), ptr %def_fmt.2.251
  %inc.3 = add nuw nsw i32 %id.1.253, 1
  br i1 %tobool.not, label %for.inc.3.if.end5.4_crit_edge, label %for.inc.3.land.lhs.true.4_crit_edge

for.inc.3.land.lhs.true.4_crit_edge:              ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.4

for.inc.3.if.end5.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.4

land.lhs.true.4:                                  ; preds = %for.inc.3.land.lhs.true.4_crit_edge, %land.lhs.true.3.land.lhs.true.4_crit_edge
  %id.1.358 = phi i32 [ %inc.3, %for.inc.3.land.lhs.true.4_crit_edge ], [ %id.1.252, %land.lhs.true.3.land.lhs.true.4_crit_edge ]
  %def_fmt.2.356 = phi ptr [ %spec.select.3, %for.inc.3.land.lhs.true.4_crit_edge ], [ %def_fmt.2.250, %land.lhs.true.3.land.lhs.true.4_crit_edge ]
  %16 = ptrtoint ptr %fmt_flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fmt_flags, align 8
  %and29.4 = and i16 %17, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and29.4)
  %tobool3.not.4 = icmp eq i16 %and29.4, 0
  br i1 %tobool3.not.4, label %land.lhs.true.4.land.lhs.true.5_crit_edge, label %land.lhs.true.4.if.end5.4_crit_edge

land.lhs.true.4.if.end5.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.4

land.lhs.true.4.land.lhs.true.5_crit_edge:        ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.5

if.end5.4:                                        ; preds = %land.lhs.true.4.if.end5.4_crit_edge, %for.inc.3.if.end5.4_crit_edge
  %id.1.359 = phi i32 [ %id.1.358, %land.lhs.true.4.if.end5.4_crit_edge ], [ %inc.3, %for.inc.3.if.end5.4_crit_edge ]
  %def_fmt.2.357 = phi ptr [ %def_fmt.2.356, %land.lhs.true.4.if.end5.4_crit_edge ], [ %spec.select.3, %for.inc.3.if.end5.4_crit_edge ]
  br i1 %tobool6.not, label %if.end5.4.for.inc.4_crit_edge, label %land.lhs.true7.4

if.end5.4.for.inc.4_crit_edge:                    ; preds = %if.end5.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

land.lhs.true7.4:                                 ; preds = %if.end5.4
  %18 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 876758866, i32 %19)
  %cmp8.4 = icmp eq i32 %19, 876758866
  br i1 %cmp8.4, label %land.lhs.true7.4.cleanup_crit_edge, label %land.lhs.true7.4.for.inc.4_crit_edge

land.lhs.true7.4.for.inc.4_crit_edge:             ; preds = %land.lhs.true7.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

land.lhs.true7.4.cleanup_crit_edge:               ; preds = %land.lhs.true7.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.4:                                        ; preds = %land.lhs.true7.4.for.inc.4_crit_edge, %if.end5.4.for.inc.4_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %id.1.359, i32 %index)
  %cmp12.4 = icmp eq i32 %id.1.359, %index
  %spec.select.4 = select i1 %cmp12.4, ptr getelementptr inbounds ([6 x %struct.camif_fmt], ptr @camif_formats, i32 0, i32 4), ptr %def_fmt.2.357
  %inc.4 = add nuw nsw i32 %id.1.359, 1
  br i1 %tobool.not, label %for.inc.4.if.end5.5_crit_edge, label %for.inc.4.land.lhs.true.5_crit_edge

for.inc.4.land.lhs.true.5_crit_edge:              ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.5

for.inc.4.if.end5.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.5

land.lhs.true.5:                                  ; preds = %for.inc.4.land.lhs.true.5_crit_edge, %land.lhs.true.4.land.lhs.true.5_crit_edge
  %id.1.464 = phi i32 [ %inc.4, %for.inc.4.land.lhs.true.5_crit_edge ], [ %id.1.358, %land.lhs.true.4.land.lhs.true.5_crit_edge ]
  %def_fmt.2.462 = phi ptr [ %spec.select.4, %for.inc.4.land.lhs.true.5_crit_edge ], [ %def_fmt.2.356, %land.lhs.true.4.land.lhs.true.5_crit_edge ]
  %20 = ptrtoint ptr %fmt_flags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fmt_flags, align 8
  %and29.5 = and i16 %21, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and29.5)
  %tobool3.not.5 = icmp eq i16 %and29.5, 0
  br i1 %tobool3.not.5, label %land.lhs.true.5.cleanup_crit_edge, label %land.lhs.true.5.if.end5.5_crit_edge

land.lhs.true.5.if.end5.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.5

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.5:                                        ; preds = %land.lhs.true.5.if.end5.5_crit_edge, %for.inc.4.if.end5.5_crit_edge
  %id.1.465 = phi i32 [ %id.1.464, %land.lhs.true.5.if.end5.5_crit_edge ], [ %inc.4, %for.inc.4.if.end5.5_crit_edge ]
  %def_fmt.2.463 = phi ptr [ %def_fmt.2.462, %land.lhs.true.5.if.end5.5_crit_edge ], [ %spec.select.4, %for.inc.4.if.end5.5_crit_edge ]
  br i1 %tobool6.not, label %if.end5.5.if.end11.5_crit_edge, label %land.lhs.true7.5

if.end5.5.if.end11.5_crit_edge:                   ; preds = %if.end5.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.5

land.lhs.true7.5:                                 ; preds = %if.end5.5
  %22 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213351746, i32 %23)
  %cmp8.5 = icmp eq i32 %23, 1213351746
  br i1 %cmp8.5, label %land.lhs.true7.5.cleanup_crit_edge, label %land.lhs.true7.5.if.end11.5_crit_edge

land.lhs.true7.5.if.end11.5_crit_edge:            ; preds = %land.lhs.true7.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.5

land.lhs.true7.5.cleanup_crit_edge:               ; preds = %land.lhs.true7.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.5:                                       ; preds = %land.lhs.true7.5.if.end11.5_crit_edge, %if.end5.5.if.end11.5_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %id.1.465, i32 %index)
  %cmp12.5 = icmp eq i32 %id.1.465, %index
  %spec.select.5 = select i1 %cmp12.5, ptr getelementptr inbounds ([6 x %struct.camif_fmt], ptr @camif_formats, i32 0, i32 5), ptr %def_fmt.2.463
  br label %cleanup

cleanup:                                          ; preds = %if.end11.5, %land.lhs.true7.5.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %land.lhs.true7.4.cleanup_crit_edge, %land.lhs.true7.3.cleanup_crit_edge, %land.lhs.true7.2.cleanup_crit_edge, %land.lhs.true7.1.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ @camif_formats, %land.lhs.true7.cleanup_crit_edge ], [ getelementptr inbounds ([6 x %struct.camif_fmt], ptr @camif_formats, i32 0, i32 1), %land.lhs.true7.1.cleanup_crit_edge ], [ getelementptr inbounds ([6 x %struct.camif_fmt], ptr @camif_formats, i32 0, i32 2), %land.lhs.true7.2.cleanup_crit_edge ], [ getelementptr inbounds ([6 x %struct.camif_fmt], ptr @camif_formats, i32 0, i32 3), %land.lhs.true7.3.cleanup_crit_edge ], [ getelementptr inbounds ([6 x %struct.camif_fmt], ptr @camif_formats, i32 0, i32 4), %land.lhs.true7.4.cleanup_crit_edge ], [ getelementptr inbounds ([6 x %struct.camif_fmt], ptr @camif_formats, i32 0, i32 5), %land.lhs.true7.5.cleanup_crit_edge ], [ %spec.select.5, %if.end11.5 ], [ %def_fmt.2.462, %land.lhs.true.5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c_camif_get_scaler_config(ptr nocapture noundef readonly %vp, ptr nocapture noundef %scaler) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %camif = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif, align 8
  %width = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %width2 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 2, i32 2
  %6 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width2, align 4
  %height5 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 2, i32 3
  %8 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height5, align 4
  %rotation = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 21
  %10 = ptrtoint ptr %rotation to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rotation, align 4
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i16 %11, label %entry.if.end_crit_edge [
    i16 90, label %entry.do.body_crit_edge
    i16 270, label %entry.do.body_crit_edge153
  ]

entry.do.body_crit_edge153:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge153
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %target_y.0 = phi i32 [ %7, %do.body ], [ %9, %entry.if.end_crit_edge ]
  %target_x.0 = phi i32 [ %9, %do.body ], [ %7, %entry.if.end_crit_edge ]
  %pre_h_ratio = getelementptr inbounds %struct.camif_scaler, ptr %scaler, i32 0, i32 6
  %h_shift = getelementptr inbounds %struct.camif_scaler, ptr %scaler, i32 0, i32 4
  %mul.i = shl i32 %target_x.0, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %3)
  %cmp.not.i = icmp ugt i32 %mul.i, %3
  br i1 %cmp.not.i, label %while.cond.preheader.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader.i:                           ; preds = %if.end
  %mul1.i = shl i32 %target_x.0, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i, i32 %3)
  %cmp2.not.i = icmp ugt i32 %mul1.i, %3
  br i1 %cmp2.not.i, label %while.cond.1.i, label %while.cond.preheader.i.if.then3.i_crit_edge

while.cond.preheader.i.if.then3.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

while.cond.1.i:                                   ; preds = %while.cond.preheader.i
  %mul1.1.i = shl i32 %target_x.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.1.i, i32 %3)
  %cmp2.not.1.i = icmp ugt i32 %mul1.1.i, %3
  br i1 %cmp2.not.1.i, label %while.cond.2.i, label %while.cond.1.i.if.then3.i_crit_edge

while.cond.1.i.if.then3.i_crit_edge:              ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

while.cond.2.i:                                   ; preds = %while.cond.1.i
  %mul1.2.i = shl i32 %target_x.0, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.2.i, i32 %3)
  %cmp2.not.2.i = icmp ugt i32 %mul1.2.i, %3
  br i1 %cmp2.not.2.i, label %while.cond.3.i, label %while.cond.2.i.if.then3.i_crit_edge

while.cond.2.i.if.then3.i_crit_edge:              ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

while.cond.3.i:                                   ; preds = %while.cond.2.i
  %mul1.3.i = shl i32 %target_x.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.3.i, i32 %3)
  %cmp2.not.3.i = icmp ugt i32 %mul1.3.i, %3
  br i1 %cmp2.not.3.i, label %while.cond.4.i, label %while.cond.3.i.if.then3.i_crit_edge

while.cond.3.i.if.then3.i_crit_edge:              ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

while.cond.4.i:                                   ; preds = %while.cond.3.i
  %mul1.4.i = shl i32 %target_x.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.4.i, i32 %3)
  %cmp2.not.4.i = icmp ugt i32 %mul1.4.i, %3
  br i1 %cmp2.not.4.i, label %while.cond.5.i, label %while.cond.4.i.if.then3.i_crit_edge

while.cond.4.i.if.then3.i_crit_edge:              ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

while.cond.5.i:                                   ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %target_x.0, i32 %3)
  %cmp2.not.5.i = icmp ugt i32 %target_x.0, %3
  br i1 %cmp2.not.5.i, label %while.cond.5.i.if.end14_crit_edge, label %while.cond.5.i.if.then3.i_crit_edge

while.cond.5.i.if.then3.i_crit_edge:              ; preds = %while.cond.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

while.cond.5.i.if.end14_crit_edge:                ; preds = %while.cond.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then3.i:                                       ; preds = %while.cond.5.i.if.then3.i_crit_edge, %while.cond.4.i.if.then3.i_crit_edge, %while.cond.3.i.if.then3.i_crit_edge, %while.cond.2.i.if.then3.i_crit_edge, %while.cond.1.i.if.then3.i_crit_edge, %while.cond.preheader.i.if.then3.i_crit_edge
  %dec.lcssa.i = phi i32 [ 5, %while.cond.preheader.i.if.then3.i_crit_edge ], [ 4, %while.cond.1.i.if.then3.i_crit_edge ], [ 3, %while.cond.2.i.if.then3.i_crit_edge ], [ 2, %while.cond.3.i.if.then3.i_crit_edge ], [ 1, %while.cond.4.i.if.then3.i_crit_edge ], [ 0, %while.cond.5.i.if.then3.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %dec.lcssa.i
  br label %if.end14

if.end14:                                         ; preds = %if.then3.i, %while.cond.5.i.if.end14_crit_edge
  %dec.lcssa.sink.i = phi i32 [ %dec.lcssa.i, %if.then3.i ], [ 0, %while.cond.5.i.if.end14_crit_edge ]
  %shl.sink.i = phi i32 [ %shl.i, %if.then3.i ], [ 1, %while.cond.5.i.if.end14_crit_edge ]
  %13 = ptrtoint ptr %h_shift to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dec.lcssa.sink.i, ptr %h_shift, align 4
  %14 = ptrtoint ptr %pre_h_ratio to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl.sink.i, ptr %pre_h_ratio, align 4
  %pre_v_ratio = getelementptr inbounds %struct.camif_scaler, ptr %scaler, i32 0, i32 7
  %v_shift = getelementptr inbounds %struct.camif_scaler, ptr %scaler, i32 0, i32 5
  %mul.i120 = shl i32 %target_y.0, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i120, i32 %5)
  %cmp.not.i121 = icmp ugt i32 %mul.i120, %5
  br i1 %cmp.not.i121, label %while.cond.preheader.i124, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader.i124:                        ; preds = %if.end14
  %mul1.i122 = shl i32 %target_y.0, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i122, i32 %5)
  %cmp2.not.i123 = icmp ugt i32 %mul1.i122, %5
  br i1 %cmp2.not.i123, label %while.cond.1.i127, label %while.cond.preheader.i124.if.then3.i141_crit_edge

while.cond.preheader.i124.if.then3.i141_crit_edge: ; preds = %while.cond.preheader.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i141

while.cond.1.i127:                                ; preds = %while.cond.preheader.i124
  %mul1.1.i125 = shl i32 %target_y.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.1.i125, i32 %5)
  %cmp2.not.1.i126 = icmp ugt i32 %mul1.1.i125, %5
  br i1 %cmp2.not.1.i126, label %while.cond.2.i130, label %while.cond.1.i127.if.then3.i141_crit_edge

while.cond.1.i127.if.then3.i141_crit_edge:        ; preds = %while.cond.1.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i141

while.cond.2.i130:                                ; preds = %while.cond.1.i127
  %mul1.2.i128 = shl i32 %target_y.0, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.2.i128, i32 %5)
  %cmp2.not.2.i129 = icmp ugt i32 %mul1.2.i128, %5
  br i1 %cmp2.not.2.i129, label %while.cond.3.i133, label %while.cond.2.i130.if.then3.i141_crit_edge

while.cond.2.i130.if.then3.i141_crit_edge:        ; preds = %while.cond.2.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i141

while.cond.3.i133:                                ; preds = %while.cond.2.i130
  %mul1.3.i131 = shl i32 %target_y.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.3.i131, i32 %5)
  %cmp2.not.3.i132 = icmp ugt i32 %mul1.3.i131, %5
  br i1 %cmp2.not.3.i132, label %while.cond.4.i136, label %while.cond.3.i133.if.then3.i141_crit_edge

while.cond.3.i133.if.then3.i141_crit_edge:        ; preds = %while.cond.3.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i141

while.cond.4.i136:                                ; preds = %while.cond.3.i133
  %mul1.4.i134 = shl i32 %target_y.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.4.i134, i32 %5)
  %cmp2.not.4.i135 = icmp ugt i32 %mul1.4.i134, %5
  br i1 %cmp2.not.4.i135, label %while.cond.5.i138, label %while.cond.4.i136.if.then3.i141_crit_edge

while.cond.4.i136.if.then3.i141_crit_edge:        ; preds = %while.cond.4.i136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i141

while.cond.5.i138:                                ; preds = %while.cond.4.i136
  call void @__sanitizer_cov_trace_cmp4(i32 %target_y.0, i32 %5)
  %cmp2.not.5.i137 = icmp ugt i32 %target_y.0, %5
  br i1 %cmp2.not.5.i137, label %while.cond.5.i138.if.end19_crit_edge, label %while.cond.5.i138.if.then3.i141_crit_edge

while.cond.5.i138.if.then3.i141_crit_edge:        ; preds = %while.cond.5.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i141

while.cond.5.i138.if.end19_crit_edge:             ; preds = %while.cond.5.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then3.i141:                                    ; preds = %while.cond.5.i138.if.then3.i141_crit_edge, %while.cond.4.i136.if.then3.i141_crit_edge, %while.cond.3.i133.if.then3.i141_crit_edge, %while.cond.2.i130.if.then3.i141_crit_edge, %while.cond.1.i127.if.then3.i141_crit_edge, %while.cond.preheader.i124.if.then3.i141_crit_edge
  %dec.lcssa.i139 = phi i32 [ 5, %while.cond.preheader.i124.if.then3.i141_crit_edge ], [ 4, %while.cond.1.i127.if.then3.i141_crit_edge ], [ 3, %while.cond.2.i130.if.then3.i141_crit_edge ], [ 2, %while.cond.3.i133.if.then3.i141_crit_edge ], [ 1, %while.cond.4.i136.if.then3.i141_crit_edge ], [ 0, %while.cond.5.i138.if.then3.i141_crit_edge ]
  %shl.i140 = shl nuw nsw i32 1, %dec.lcssa.i139
  br label %if.end19

if.end19:                                         ; preds = %if.then3.i141, %while.cond.5.i138.if.end19_crit_edge
  %dec.lcssa.sink.i142 = phi i32 [ %dec.lcssa.i139, %if.then3.i141 ], [ 0, %while.cond.5.i138.if.end19_crit_edge ]
  %shl.sink.i143 = phi i32 [ %shl.i140, %if.then3.i141 ], [ 1, %while.cond.5.i138.if.end19_crit_edge ]
  %15 = ptrtoint ptr %v_shift to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dec.lcssa.sink.i142, ptr %v_shift, align 4
  %16 = ptrtoint ptr %pre_v_ratio to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl.sink.i143, ptr %pre_v_ratio, align 4
  %17 = ptrtoint ptr %pre_h_ratio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pre_h_ratio, align 4
  %div = udiv i32 %3, %18
  %pre_dst_width = getelementptr inbounds %struct.camif_scaler, ptr %scaler, i32 0, i32 8
  %19 = ptrtoint ptr %pre_dst_width to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div, ptr %pre_dst_width, align 4
  %div22 = udiv i32 %5, %shl.sink.i143
  %pre_dst_height = getelementptr inbounds %struct.camif_scaler, ptr %scaler, i32 0, i32 9
  %20 = ptrtoint ptr %pre_dst_height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div22, ptr %pre_dst_height, align 4
  %shl = shl i32 %3, 8
  %21 = ptrtoint ptr %h_shift to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %h_shift, align 4
  %shl24 = shl i32 %target_x.0, %22
  %div25 = sdiv i32 %shl, %shl24
  %main_h_ratio = getelementptr inbounds %struct.camif_scaler, ptr %scaler, i32 0, i32 10
  %23 = ptrtoint ptr %main_h_ratio to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div25, ptr %main_h_ratio, align 4
  %shl26 = shl i32 %5, 8
  %shl28 = shl i32 %target_y.0, %dec.lcssa.sink.i142
  %div29 = sdiv i32 %shl26, %shl28
  %main_v_ratio = getelementptr inbounds %struct.camif_scaler, ptr %scaler, i32 0, i32 11
  %24 = ptrtoint ptr %main_v_ratio to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div29, ptr %main_v_ratio, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %target_x.0, i32 %3)
  %cmp30 = icmp sge i32 %target_x.0, %3
  %conv32 = zext i1 %cmp30 to i8
  %25 = ptrtoint ptr %scaler to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv32, ptr %scaler, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %target_y.0, i32 %5)
  %cmp33 = icmp sge i32 %target_y.0, %5
  %conv35 = zext i1 %cmp33 to i8
  %scaleup_v = getelementptr inbounds %struct.camif_scaler, ptr %scaler, i32 0, i32 1
  %26 = ptrtoint ptr %scaleup_v to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv35, ptr %scaleup_v, align 1
  %copy = getelementptr inbounds %struct.camif_scaler, ptr %scaler, i32 0, i32 2
  %27 = ptrtoint ptr %copy to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %copy, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_camif_get_scaler_config.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_get_scaler_config, %if.then40)) #9
          to label %do.body48 [label %if.then40], !srcloc !112

if.then40:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %pre_h_ratio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pre_h_ratio, align 4
  %30 = ptrtoint ptr %h_shift to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %h_shift, align 4
  %32 = ptrtoint ptr %pre_v_ratio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pre_v_ratio, align 4
  %34 = ptrtoint ptr %v_shift to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %v_shift, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_camif_get_scaler_config.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 179, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #9
  br label %do.body48

do.body48:                                        ; preds = %if.then40, %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_camif_get_scaler_config.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_get_scaler_config, %if.then60)) #9
          to label %cleanup [label %if.then60], !srcloc !112

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %scaler to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %scaler, align 4
  %conv62 = zext i8 %37 to i32
  %38 = ptrtoint ptr %scaleup_v to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %scaleup_v, align 1
  %conv64 = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_camif_get_scaler_config.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 183, i32 noundef %3, i32 noundef %5, i32 noundef %target_x.0, i32 noundef %target_y.0, i32 noundef %conv62, i32 noundef %conv64) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %do.body48, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then60 ], [ 0, %do.body48 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3c_camif_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c_camif_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3c_camif_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 6096, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %slock = getelementptr inbounds %struct.camif_dev, ptr %call.i, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.8, ptr noundef nonnull @s3c_camif_probe.__key, i16 noundef signext 3) #9
  %lock = getelementptr inbounds %struct.camif_dev, ptr %call.i, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @s3c_camif_probe.__key.9) #9
  %dev6 = getelementptr inbounds %struct.camif_dev, ptr %call.i, i32 0, i32 18
  %2 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev6, align 4
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %do.body.do.end14_crit_edge, label %lor.lhs.false

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

lor.lhs.false:                                    ; preds = %do.body
  %gpio_get = getelementptr inbounds %struct.s3c_camif_plat_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %gpio_get to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpio_get, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %lor.lhs.false.do.end14_crit_edge, label %lor.lhs.false9

lor.lhs.false.do.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %gpio_put = getelementptr inbounds %struct.s3c_camif_plat_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %gpio_put to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpio_put, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %lor.lhs.false9.do.end14_crit_edge, label %if.end15

lor.lhs.false9.do.end14_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

do.end14:                                         ; preds = %lor.lhs.false9.do.end14_crit_edge, %lor.lhs.false.do.end14_crit_edge, %do.body.do.end14_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false9
  %pdata16 = getelementptr inbounds %struct.camif_dev, ptr %call.i, i32 0, i32 19
  %7 = call ptr @memcpy(ptr %pdata16, ptr %1, i32 80)
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %8 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %variant17 = getelementptr inbounds %struct.camif_dev, ptr %call.i, i32 0, i32 17
  %15 = ptrtoint ptr %variant17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %variant17, align 8
  %call18 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %call.i, i32 0, i32 23
  %16 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call18, ptr %io_base, align 8
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %arrayidx.i = getelementptr %struct.camif_dev, ptr %call.i, i32 0, i32 16, i32 0
  tail call void @__init_waitqueue_head(ptr noundef %arrayidx.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @camif_request_irqs.__key) #9
  %call.i156 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i156)
  %cmp2.i = icmp slt i32 %call.i156, 1
  br i1 %cmp2.i, label %if.end24.cleanup_crit_edge, label %if.end.i

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.i:                                       ; preds = %dev_name.exit.i
  %arrayidx.1.i = getelementptr %struct.camif_dev, ptr %call.i, i32 0, i32 16, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %arrayidx.1.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @camif_request_irqs.__key) #9
  %call.1.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.1.i)
  %cmp2.1.i = icmp slt i32 %call.1.i, 1
  br i1 %cmp2.1.i, label %for.cond.i.cleanup_crit_edge, label %if.end.1.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.1.i:                                       ; preds = %for.cond.i
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.1.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.1.i, label %if.end.i.1.i, label %if.end.1.i.dev_name.exit.1.i_crit_edge

if.end.1.i.dev_name.exit.1.i_crit_edge:           ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.1.i

if.end.i.1.i:                                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.1.i

dev_name.exit.1.i:                                ; preds = %if.end.i.1.i, %if.end.1.i.dev_name.exit.1.i_crit_edge
  %retval.0.i.1.i = phi ptr [ %21, %if.end.i.1.i ], [ %19, %if.end.1.i.dev_name.exit.1.i_crit_edge ]
  %call.i.1.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call.1.i, ptr noundef nonnull @s3c_camif_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i.1.i, ptr noundef %arrayidx.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp6.1.i = icmp slt i32 %call.i.1.i, 0
  br i1 %cmp6.1.i, label %dev_name.exit.1.i.cleanup.i_crit_edge, label %if.end27

dev_name.exit.1.i.cleanup.i_crit_edge:            ; preds = %dev_name.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %if.end24
  %22 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.dev_name.exit.i_crit_edge

if.end.i.dev_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %25, %if.end.i.i ], [ %23, %if.end.i.dev_name.exit.i_crit_edge ]
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call.i156, ptr noundef nonnull @s3c_camif_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i.i, ptr noundef %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp6.i, label %dev_name.exit.i.cleanup.i_crit_edge, label %for.cond.i

dev_name.exit.i.cleanup.i_crit_edge:              ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %dev_name.exit.i.cleanup.i_crit_edge, %dev_name.exit.1.i.cleanup.i_crit_edge
  %call.i.lcssa.i = phi i32 [ %call.i.i, %dev_name.exit.i.cleanup.i_crit_edge ], [ %call.i.1.i, %dev_name.exit.1.i.cleanup.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call.i.lcssa.i) #12
  br label %cleanup

if.end27:                                         ; preds = %dev_name.exit.1.i
  %26 = ptrtoint ptr %gpio_get to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gpio_get, align 4
  %call29 = tail call i32 %27() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %call33 = tail call i32 @s3c_camif_create_subdev(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.err_sd_crit_edge, label %if.end36

if.end32.err_sd_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_sd

if.end36:                                         ; preds = %if.end32
  %arrayidx.i157 = getelementptr %struct.camif_dev, ptr %call.i, i32 0, i32 20, i32 1
  %28 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i157, align 4
  %29 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev6, align 4
  %call5.i = tail call ptr @clk_get(ptr noundef %30, ptr noundef nonnull @.str.24) #9
  %arrayidx7.i = getelementptr %struct.camif_dev, ptr %call.i, i32 0, i32 20, i32 0
  %31 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i, ptr %arrayidx7.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end36.if.then.i_crit_edge, label %if.end.i160

if.end36.if.then.i_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.cond1.i:                                      ; preds = %if.end.i160
  %32 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev6, align 4
  %call5.1.i = tail call ptr @clk_get(ptr noundef %33, ptr noundef nonnull @.str.25) #9
  %34 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call5.1.i, ptr %arrayidx.i157, align 4
  %cmp.i.1.i = icmp ugt ptr %call5.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.cond1.i.if.then.i_crit_edge, label %if.end.1.i159

for.cond1.i.if.then.i_crit_edge:                  ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.1.i159:                                    ; preds = %for.cond1.i
  %call16.1.i = tail call i32 @clk_prepare(ptr noundef %call5.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1.i)
  %cmp17.1.i = icmp slt i32 %call16.1.i, 0
  br i1 %cmp17.1.i, label %if.end.1.i159.if.then18.i_crit_edge, label %if.end.1.i159.if.end40_crit_edge

if.end.1.i159.if.end40_crit_edge:                 ; preds = %if.end.1.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end.1.i159.if.then18.i_crit_edge:              ; preds = %if.end.1.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

if.then.i:                                        ; preds = %for.cond1.i.if.then.i_crit_edge, %if.end36.if.then.i_crit_edge
  %.lcssa.i = phi ptr [ @.str.24, %if.end36.if.then.i_crit_edge ], [ @.str.25, %for.cond1.i.if.then.i_crit_edge ]
  %call5.lcssa.i = phi ptr [ %call5.i, %if.end36.if.then.i_crit_edge ], [ %call5.1.i, %for.cond1.i.if.then.i_crit_edge ]
  %35 = ptrtoint ptr %call5.lcssa.i to i32
  br label %err.i

if.end.i160:                                      ; preds = %if.end36
  %call16.i = tail call i32 @clk_prepare(ptr noundef %call5.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end.i160.if.then18.i_crit_edge, label %for.cond1.i

if.end.i160.if.then18.i_crit_edge:                ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

if.then18.i:                                      ; preds = %if.end.i160.if.then18.i_crit_edge, %if.end.1.i159.if.then18.i_crit_edge
  %call16.lcssa.i = phi i32 [ %call16.i, %if.end.i160.if.then18.i_crit_edge ], [ %call16.1.i, %if.end.1.i159.if.then18.i_crit_edge ]
  %.lcssa62.i = phi ptr [ @.str.24, %if.end.i160.if.then18.i_crit_edge ], [ @.str.25, %if.end.1.i159.if.then18.i_crit_edge ]
  %arrayidx7.lcssa58.i = phi ptr [ %arrayidx7.i, %if.end.i160.if.then18.i_crit_edge ], [ %arrayidx.i157, %if.end.1.i159.if.then18.i_crit_edge ]
  %36 = ptrtoint ptr %arrayidx7.lcssa58.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx7.lcssa58.i, align 4
  tail call void @clk_put(ptr noundef %37) #9
  %38 = ptrtoint ptr %arrayidx7.lcssa58.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx7.lcssa58.i, align 4
  br label %err.i

err.i:                                            ; preds = %if.then18.i, %if.then.i
  %39 = phi ptr [ %.lcssa.i, %if.then.i ], [ %.lcssa62.i, %if.then18.i ]
  %ret.0.i = phi i32 [ %35, %if.then.i ], [ %call16.lcssa.i, %if.then18.i ]
  %40 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx7.i, align 4
  %cmp.i.i.i = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %err.i.for.inc.i.i_crit_edge, label %if.end.i.i161

err.i.for.inc.i.i_crit_edge:                      ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i161:                                    ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %41) #9
  %42 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx7.i, align 4
  tail call void @clk_put(ptr noundef %43) #9
  %44 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx7.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i161, %err.i.for.inc.i.i_crit_edge
  %45 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i157, align 4
  %cmp.i.1.i.i = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i.i, label %for.inc.i.i.camif_clk_get.exit_crit_edge, label %if.end.1.i.i

for.inc.i.i.camif_clk_get.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %camif_clk_get.exit

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %46) #9
  %47 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i157, align 4
  tail call void @clk_put(ptr noundef %48) #9
  %49 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i157, align 4
  br label %camif_clk_get.exit

camif_clk_get.exit:                               ; preds = %if.end.1.i.i, %for.inc.i.i.camif_clk_get.exit_crit_edge
  %50 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.22, ptr noundef nonnull %39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp38 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp38, label %camif_clk_get.exit.err_clk_crit_edge, label %camif_clk_get.exit.if.end40_crit_edge

camif_clk_get.exit.if.end40_crit_edge:            ; preds = %camif_clk_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

camif_clk_get.exit.err_clk_crit_edge:             ; preds = %camif_clk_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clk

if.end40:                                         ; preds = %camif_clk_get.exit.if.end40_crit_edge, %if.end.1.i159.if.end40_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %53 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i157, align 4
  %clock_frequency = getelementptr inbounds %struct.camif_dev, ptr %call.i, i32 0, i32 19, i32 0, i32 1
  %55 = ptrtoint ptr %clock_frequency to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %clock_frequency, align 8
  %call42 = tail call i32 @clk_set_rate(ptr noundef %54, i32 noundef %56) #9
  %57 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i157, align 4
  %call48 = tail call i32 @clk_get_rate(ptr noundef %58) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call48) #12
  %call49 = tail call i32 @s3c_camif_set_defaults(ptr noundef nonnull %call.i) #9
  tail call void @pm_runtime_enable(ptr noundef %dev1) #9
  %call50 = tail call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end40.err_disable_crit_edge, label %if.end53

if.end40.err_disable_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable

if.end53:                                         ; preds = %if.end40
  %call54 = tail call fastcc i32 @camif_media_dev_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end53.err_pm_crit_edge, label %if.end57

if.end53.err_pm_crit_edge:                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pm

if.end57:                                         ; preds = %if.end53
  %call58 = tail call fastcc i32 @camif_register_sensor(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end57.err_sens_crit_edge, label %if.end61

if.end57.err_sens_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_sens

if.end61:                                         ; preds = %if.end57
  %v4l2_dev = getelementptr inbounds %struct.camif_dev, ptr %call.i, i32 0, i32 1
  %subdev = getelementptr inbounds %struct.camif_dev, ptr %call.i, i32 0, i32 2
  %call62 = tail call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev, ptr noundef %subdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end61.err_sens_crit_edge, label %if.end65

if.end61.err_sens_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_sens

if.end65:                                         ; preds = %if.end61
  %call.i163 = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %v4l2_dev, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %cmp68 = icmp slt i32 %call.i163, 0
  br i1 %cmp68, label %if.end65.err_sens_crit_edge, label %if.end70

if.end65.err_sens_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_sens

if.end70:                                         ; preds = %if.end65
  %call71 = tail call fastcc i32 @camif_register_video_nodes(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end70.err_sens_crit_edge, label %if.end74

if.end70.err_sens_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_sens

if.end74:                                         ; preds = %if.end70
  %call75 = tail call fastcc i32 @camif_create_media_links(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.end74.err_sens_crit_edge, label %if.end78

if.end74.err_sens_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_sens

if.end78:                                         ; preds = %if.end74
  %call79 = tail call i32 @__media_device_register(ptr noundef nonnull %call.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.end78.err_sens_crit_edge, label %if.end82

if.end78.err_sens_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_sens

if.end82:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %call.i164 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #9
  br label %cleanup

err_sens:                                         ; preds = %if.end78.err_sens_crit_edge, %if.end74.err_sens_crit_edge, %if.end70.err_sens_crit_edge, %if.end65.err_sens_crit_edge, %if.end61.err_sens_crit_edge, %if.end57.err_sens_crit_edge
  %ret.0 = phi i32 [ %call58, %if.end57.err_sens_crit_edge ], [ %call62, %if.end61.err_sens_crit_edge ], [ %call.i163, %if.end65.err_sens_crit_edge ], [ %call71, %if.end70.err_sens_crit_edge ], [ %call75, %if.end74.err_sens_crit_edge ], [ %call79, %if.end78.err_sens_crit_edge ]
  %v4l2_dev84 = getelementptr inbounds %struct.camif_dev, ptr %call.i, i32 0, i32 1
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev84) #9
  tail call void @media_device_unregister(ptr noundef nonnull %call.i) #9
  tail call void @media_device_cleanup(ptr noundef nonnull %call.i) #9
  tail call fastcc void @camif_unregister_media_entities(ptr noundef nonnull %call.i)
  br label %err_pm

err_pm:                                           ; preds = %err_sens, %if.end53.err_pm_crit_edge
  %ret.1 = phi i32 [ %call54, %if.end53.err_pm_crit_edge ], [ %ret.0, %err_sens ]
  %call.i165 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #9
  br label %err_disable

err_disable:                                      ; preds = %err_pm, %if.end40.err_disable_crit_edge
  %ret.2 = phi i32 [ %call50, %if.end40.err_disable_crit_edge ], [ %ret.1, %err_pm ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  tail call fastcc void @camif_clk_put(ptr noundef nonnull %call.i)
  br label %err_clk

err_clk:                                          ; preds = %err_disable, %camif_clk_get.exit.err_clk_crit_edge
  %ret.3 = phi i32 [ %ret.0.i, %camif_clk_get.exit.err_clk_crit_edge ], [ %ret.2, %err_disable ]
  tail call void @s3c_camif_unregister_subdev(ptr noundef nonnull %call.i) #9
  br label %err_sd

err_sd:                                           ; preds = %err_clk, %if.end32.err_sd_crit_edge
  %ret.4 = phi i32 [ %call33, %if.end32.err_sd_crit_edge ], [ %ret.3, %err_clk ]
  %59 = ptrtoint ptr %gpio_put to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %gpio_put, align 4
  %call89 = tail call i32 %60() #9
  br label %cleanup

cleanup:                                          ; preds = %err_sd, %if.end82, %if.end27.cleanup_crit_edge, %cleanup.i, %for.cond.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then21, %do.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then21 ], [ %ret.4, %err_sd ], [ 0, %if.end82 ], [ -22, %do.end14 ], [ -12, %entry.cleanup_crit_edge ], [ %call29, %if.end27.cleanup_crit_edge ], [ -6, %for.cond.i.cleanup_crit_edge ], [ -6, %if.end24.cleanup_crit_edge ], [ %call.i.lcssa.i, %cleanup.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @media_device_unregister(ptr noundef %1) #9
  tail call void @media_device_cleanup(ptr noundef %1) #9
  tail call void @s3c_camif_unregister_video_node(ptr noundef %1, i32 noundef 0) #9
  tail call void @s3c_camif_unregister_video_node(ptr noundef %1, i32 noundef 1) #9
  %sensor.i.i = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sensor.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.camif_unregister_media_entities.exit_crit_edge, label %cond.end.i.i

entry.camif_unregister_media_entities.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %camif_unregister_media_entities.exit

cond.end.i.i:                                     ; preds = %entry
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i.i, align 4
  %cmp.i.i = icmp eq ptr %5, null
  br i1 %cmp.i.i, label %cond.end.i.i.camif_unregister_media_entities.exit_crit_edge, label %if.end.i.i

cond.end.i.i.camif_unregister_media_entities.exit_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %camif_unregister_media_entities.exit

if.end.i.i:                                       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %adapter2.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %adapter2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter2.i.i, align 8
  tail call void @v4l2_device_unregister_subdev(ptr noundef nonnull %3) #9
  %8 = ptrtoint ptr %sensor.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sensor.i.i, align 8
  tail call void @i2c_unregister_device(ptr noundef nonnull %5) #9
  tail call void @i2c_put_adapter(ptr noundef %7) #9
  br label %camif_unregister_media_entities.exit

camif_unregister_media_entities.exit:             ; preds = %if.end.i.i, %cond.end.i.i.camif_unregister_media_entities.exit_crit_edge, %entry.camif_unregister_media_entities.exit_crit_edge
  %v4l2_dev = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 1
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %arrayidx.i = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 20, i32 0
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.i11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i11, label %camif_unregister_media_entities.exit.for.inc.i_crit_edge, label %if.end.i

camif_unregister_media_entities.exit.for.inc.i_crit_edge: ; preds = %camif_unregister_media_entities.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %camif_unregister_media_entities.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %10) #9
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_put(ptr noundef %12) #9
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %camif_unregister_media_entities.exit.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 20, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.camif_clk_put.exit_crit_edge, label %if.end.1.i

for.inc.i.camif_clk_put.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %camif_clk_put.exit

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %15) #9
  %16 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @clk_put(ptr noundef %17) #9
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  br label %camif_clk_put.exit

camif_clk_put.exit:                               ; preds = %if.end.1.i, %for.inc.i.camif_clk_put.exit_crit_edge
  tail call void @s3c_camif_unregister_subdev(ptr noundef %1) #9
  %gpio_put = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 19, i32 2
  %19 = ptrtoint ptr %gpio_put to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpio_put, align 4
  %call3 = tail call i32 %20() #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c_camif_create_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c_camif_set_defaults(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !114
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !115
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @camif_media_dev_init(ptr noundef %camif) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev1 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 1
  %variant = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 17
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 8
  %ip_revision = getelementptr inbounds %struct.s3c_camif_variant, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ip_revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ip_revision, align 2
  %conv = zext i8 %3 to i32
  %4 = call ptr @memset(ptr %camif, i32 0, i32 608)
  %model = getelementptr inbounds %struct.media_device, ptr %camif, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %3)
  %cmp = icmp eq i8 %3, 50
  %cond = select i1 %cmp, ptr @.str.27, ptr @.str.28
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %model, i32 noundef 32, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond)
  %bus_info = getelementptr inbounds %struct.media_device, ptr %camif, i32 0, i32 5
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.29, i32 noundef 32) #9
  %hw_revision = getelementptr inbounds %struct.media_device, ptr %camif, i32 0, i32 6
  %5 = ptrtoint ptr %hw_revision to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %hw_revision, align 8
  %dev = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 18
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %camif to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %camif, align 8
  %name = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 1, i32 4
  %call7 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.7, i32 noundef 36) #9
  %mdev = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %camif, ptr %mdev, align 4
  tail call void @media_device_init(ptr noundef %camif) #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call9 = tail call i32 @v4l2_device_register(ptr noundef %11, ptr noundef %v4l2_dev1) #9
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @camif_register_sensor(ptr noundef %camif) unnamed_addr #2 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 19
  %v4l2_dev2 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #9
  %0 = getelementptr inbounds i8, ptr %format, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 80)
  %sensor3 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 7
  %2 = ptrtoint ptr %sensor3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sensor3, align 8
  %addr = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 19, i32 0, i32 0, i32 2
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_bus_num = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 19, i32 0, i32 3
  %5 = ptrtoint ptr %i2c_bus_num to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %i2c_bus_num, align 4
  %conv6 = zext i16 %6 to i32
  %call = tail call ptr @i2c_get_adapter(i32 noundef %conv6) #9
  %cmp7 = icmp eq ptr %call, null
  br i1 %cmp7, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %i2c_bus_num to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i2c_bus_num, align 4
  %conv11 = zext i16 %8 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %conv11) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call15 = tail call ptr @v4l2_i2c_new_subdev_board(ptr noundef %v4l2_dev2, ptr noundef nonnull %call, ptr noundef %pdata, ptr noundef null) #9
  %cmp16 = icmp eq ptr %call15, null
  br i1 %cmp16, label %if.then18, label %if.end28

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_put_adapter(ptr noundef nonnull %call) #9
  %name23 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 1, i32 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name23, ptr noundef %pdata) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end13
  %9 = ptrtoint ptr %sensor3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call15, ptr %sensor3, align 8
  %name35 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 1, i32 4
  %name37 = getelementptr inbounds %struct.v4l2_subdev, ptr %call15, i32 0, i32 9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name35, ptr noundef %name37) #12
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pad, align 4
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %format, align 4
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call15, i32 0, i32 6
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %pad41 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %pad41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pad41, align 4
  %tobool42.not = icmp eq ptr %15, null
  br i1 %tobool42.not, label %if.end28.cleanup_crit_edge, label %land.lhs.true

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end28
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_fmt, align 4
  %tobool45.not = icmp eq ptr %17, null
  br i1 %tobool45.not, label %land.lhs.true.cleanup_crit_edge, label %if.else47

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else47:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool48.not = icmp eq ptr %18, null
  br i1 %tobool48.not, label %if.else47.if.else55_crit_edge, label %land.lhs.true49

if.else47.if.else55_crit_edge:                    ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else55

land.lhs.true49:                                  ; preds = %if.else47
  %get_fmt50 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %get_fmt50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_fmt50, align 4
  %tobool51.not = icmp eq ptr %20, null
  br i1 %tobool51.not, label %land.lhs.true49.if.else55_crit_edge, label %land.lhs.true49.if.end62_crit_edge

land.lhs.true49.if.end62_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

land.lhs.true49.if.else55_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else55

if.else55:                                        ; preds = %land.lhs.true49.if.else55_crit_edge, %if.else47.if.else55_crit_edge
  br label %if.end62

if.end62:                                         ; preds = %if.else55, %land.lhs.true49.if.end62_crit_edge
  %.sink = phi ptr [ %17, %if.else55 ], [ %20, %land.lhs.true49.if.end62_crit_edge ]
  %call59 = call i32 %.sink(ptr noundef nonnull %call15, ptr noundef null, ptr noundef nonnull %format) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp64 = icmp slt i32 %call59, 0
  br i1 %cmp64, label %if.end62.cleanup_crit_edge, label %if.end67

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end67:                                         ; preds = %if.end62
  %21 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %pad, align 4
  %subdev = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 2
  %tobool71.not = icmp eq ptr %subdev, null
  br i1 %tobool71.not, label %if.end67.if.end97_crit_edge, label %if.else73

if.end67.if.end97_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.else73:                                        ; preds = %if.end67
  %ops74 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 2, i32 6
  %22 = ptrtoint ptr %ops74 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops74, align 4
  %pad75 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %pad75 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pad75, align 4
  %tobool76.not = icmp eq ptr %25, null
  br i1 %tobool76.not, label %if.else73.if.end97_crit_edge, label %land.lhs.true77

if.else73.if.end97_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

land.lhs.true77:                                  ; preds = %if.else73
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_fmt, align 4
  %tobool80.not = icmp eq ptr %27, null
  br i1 %tobool80.not, label %land.lhs.true77.if.end97_crit_edge, label %if.else82

land.lhs.true77.if.end97_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.else82:                                        ; preds = %land.lhs.true77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool83.not = icmp eq ptr %28, null
  br i1 %tobool83.not, label %if.else82.if.else90_crit_edge, label %land.lhs.true84

if.else82.if.else90_crit_edge:                    ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else90

land.lhs.true84:                                  ; preds = %if.else82
  %set_fmt85 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %set_fmt85 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_fmt85, align 4
  %tobool86.not = icmp eq ptr %30, null
  br i1 %tobool86.not, label %land.lhs.true84.if.else90_crit_edge, label %land.lhs.true84.if.end97.sink.split_crit_edge

land.lhs.true84.if.end97.sink.split_crit_edge:    ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97.sink.split

land.lhs.true84.if.else90_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else90

if.else90:                                        ; preds = %land.lhs.true84.if.else90_crit_edge, %if.else82.if.else90_crit_edge
  br label %if.end97.sink.split

if.end97.sink.split:                              ; preds = %if.else90, %land.lhs.true84.if.end97.sink.split_crit_edge
  %.sink148 = phi ptr [ %27, %if.else90 ], [ %30, %land.lhs.true84.if.end97.sink.split_crit_edge ]
  %call94 = call i32 %.sink148(ptr noundef nonnull %subdev, ptr noundef null, ptr noundef nonnull %format) #9
  br label %if.end97

if.end97:                                         ; preds = %if.end97.sink.split, %land.lhs.true77.if.end97_crit_edge, %if.else73.if.end97_crit_edge, %if.end67.if.end97_crit_edge
  %format105 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %31 = ptrtoint ptr %format105 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %format105, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %code, align 4
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name37, i32 noundef %32, i32 noundef %34, i32 noundef %36) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.end62.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %do.end ], [ -517, %if.then18 ], [ 0, %if.end97 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end62.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @camif_register_video_nodes(ptr noundef %camif) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @s3c_camif_register_video_node(ptr noundef %camif, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @s3c_camif_register_video_node(ptr noundef %camif, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @camif_create_media_links(ptr noundef %camif) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 7
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 8
  %subdev = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 2
  %call = tail call i32 @media_create_pad_link(ptr noundef %1, i16 noundef zeroext 0, ptr noundef %subdev, i16 noundef zeroext 0, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %entry
  %vdev = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 4
  %call6 = tail call i32 @media_create_pad_link(ptr noundef %subdev, i16 noundef zeroext 1, ptr noundef %vdev, i16 noundef zeroext 0, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool2.not = icmp eq i32 %call6, 0
  br i1 %tobool2.not, label %for.body.1, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %vdev.1 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1, i32 4
  %call6.1 = tail call i32 @media_create_pad_link(ptr noundef %subdev, i16 noundef zeroext 2, ptr noundef %vdev.1, i16 noundef zeroext 0, i32 noundef 3) #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.1, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call6, %for.body.cleanup_crit_edge ], [ %call6.1, %for.body.1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @camif_unregister_media_entities(ptr noundef %camif) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c_camif_unregister_video_node(ptr noundef %camif, i32 noundef 0) #9
  tail call void @s3c_camif_unregister_video_node(ptr noundef %camif, i32 noundef 1) #9
  %sensor.i = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 7
  %0 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.camif_unregister_sensor.exit_crit_edge, label %cond.end.i

entry.camif_unregister_sensor.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %camif_unregister_sensor.exit

cond.end.i:                                       ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %cond.end.i.camif_unregister_sensor.exit_crit_edge, label %if.end.i

cond.end.i.camif_unregister_sensor.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %camif_unregister_sensor.exit

if.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %adapter2.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %adapter2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter2.i, align 8
  tail call void @v4l2_device_unregister_subdev(ptr noundef nonnull %1) #9
  %6 = ptrtoint ptr %sensor.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sensor.i, align 8
  tail call void @i2c_unregister_device(ptr noundef nonnull %3) #9
  tail call void @i2c_put_adapter(ptr noundef %5) #9
  br label %camif_unregister_sensor.exit

camif_unregister_sensor.exit:                     ; preds = %if.end.i, %cond.end.i.camif_unregister_sensor.exit_crit_edge, %entry.camif_unregister_sensor.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @camif_clk_put(ptr nocapture noundef %camif) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 20, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %1) #9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_put(ptr noundef %3) #9
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %6) #9
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_put(ptr noundef %8) #9
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_camif_unregister_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c_camif_irq_handler(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev_board(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c_camif_register_video_node(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_camif_unregister_video_node(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clock = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 20
  %arrayidx = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 20, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  %4 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clock, align 8
  tail call void @clk_disable(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clock = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 8
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #9
  %arrayidx3 = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 20, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %call4 = tail call i32 @clk_enable(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !32, !34, !35, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 177, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @s3c_camif_get_scaler_config.__UNIQUE_ID_ddebug299, !1, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 181, i32 2}
!9 = !{ptr @s3c_camif_get_scaler_config.__UNIQUE_ID_ddebug300, !8, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_s3c_camif__301_634_s3c_camif_driver_init6, !12, !"__initcall__kmod_s3c_camif__301_634_s3c_camif_driver_init6", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 634, i32 1}
!13 = !{ptr @__exitcall_s3c_camif_driver_exit, !12, !"__exitcall_s3c_camif_driver_exit", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_author302, !15, !"__UNIQUE_ID_author302", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 636, i32 1}
!16 = !{ptr @__UNIQUE_ID_author303, !17, !"__UNIQUE_ID_author303", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 637, i32 1}
!18 = !{ptr @__UNIQUE_ID_description304, !19, !"__UNIQUE_ID_description304", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 638, i32 1}
!20 = !{ptr @__UNIQUE_ID_file305, !21, !"__UNIQUE_ID_file305", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 639, i32 1}
!22 = !{ptr @__UNIQUE_ID_license306, !21, !"__UNIQUE_ID_license306", i1 false, i1 false}
!23 = !{ptr @camif_formats, !24, !"camif_formats", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 42, i32 31}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 629, i32 11}
!27 = !{ptr @s3c_camif_driver, !28, !"s3c_camif_driver", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 624, i32 31}
!29 = !{ptr @s3c_camif_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 409, i32 2}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @s3c_camif_probe.__key.9, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 410, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 415, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @s3c_camif_probe._entry, !36, !"_entry", i1 false, i1 false}
!41 = !{ptr @s3c_camif_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 447, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @s3c_camif_probe._entry.15, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @s3c_camif_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @camif_request_irqs.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 380, i32 3}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 389, i32 4}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @camif_request_irqs._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @camif_request_irqs._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 362, i32 2}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @camif_clk_get._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @camif_clk_get._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 37, i32 15}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 39, i32 14}
!64 = distinct !{null, !65, !"camif_clocks", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 35, i32 14}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 307, i32 41}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 308, i32 37}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 308, i32 46}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 309, i32 24}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 204, i32 3}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @camif_register_sensor._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @camif_register_sensor._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 213, i32 3}
!81 = !{ptr @camif_register_sensor._entry.32, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @camif_register_sensor._entry_ptr.34, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 219, i32 2}
!85 = !{ptr @camif_register_sensor._entry.35, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @camif_register_sensor._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 232, i32 2}
!89 = !{ptr @camif_register_sensor._entry.38, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @camif_register_sensor._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @s3c_camif_pm_ops, !92, !"s3c_camif_pm_ops", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 619, i32 32}
!93 = !{ptr @s3c_camif_driver_ids, !94, !"s3c_camif_driver_ids", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 607, i32 40}
!95 = !{ptr @s3c244x_camif_drvdata, !96, !"s3c244x_camif_drvdata", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 572, i32 33}
!97 = !{ptr @s3c244x_camif_variant, !98, !"s3c244x_camif_variant", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 549, i32 39}
!99 = !{ptr @s3c6410_camif_drvdata, !100, !"s3c6410_camif_drvdata", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 602, i32 33}
!101 = !{ptr @s3c6410_camif_variant, !102, !"s3c6410_camif_variant", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/s3c-camif/camif-core.c", i32 577, i32 39}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2148160219, i64 2148160224, i64 2148160237, i64 2148160281, i64 2148160315, i64 2148160336}
!113 = !{i64 2148370313}
!114 = !{i64 856913, i64 856938, i64 856960, i64 856976, i64 856988, i64 857008, i64 857032, i64 857048, i64 857060}
!115 = !{i64 2148370501}
