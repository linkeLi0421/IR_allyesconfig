; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/mt9v032.c_pt.bc'
source_filename = "../drivers/media/i2c/mt9v032.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mt9v032_model_version = type { i32, ptr }
%struct.mt9v032_model_info = type { ptr, i8 }
%struct.mt9v032_model_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.102, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.102 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.mt9v032_platform_data = type { i8, ptr, i64 }
%struct.mt9v032 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, i32, i32, %struct.v4l2_ctrl_handler, %struct.anon.100, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, %struct.anon.101 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr }
%struct.anon.101 = type { ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__initcall__kmod_mt9v032__328_1306_mt9v032_driver_init6 = internal global ptr @mt9v032_driver_init, section ".initcall6.init", align 4
@mt9v032_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mt9v032_probe, ptr @mt9v032_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt9v032_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mt9v032_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mt9v032_driver_exit = internal global ptr @mt9v032_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description329 = internal constant [49 x i8] c"mt9v032.description=Aptina MT9V032 Camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author330 = internal constant [68 x i8] c"mt9v032.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file331 = internal constant [39 x i8] c"mt9v032.file=drivers/media/i2c/mt9v032\00", section ".modinfo", align 1
@__UNIQUE_ID_license332 = internal constant [20 x i8] c"mt9v032.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt9v032\00", [24 x i8] zeroinitializer }, align 32
@mt9v032_of_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aptina,mt9v022\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aptina,mt9v022m\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aptina,mt9v024\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aptina,mt9v024m\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aptina,mt9v032\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aptina,mt9v032m\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aptina,mt9v034\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aptina,mt9v034m\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@mt9v032_id = internal constant { [9 x %struct.i2c_device_id], [40 x i8] } { [9 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mt9v022\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mt9v032_models to i32) }, %struct.i2c_device_id { [20 x i8] c"mt9v022m\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @mt9v032_models, i64 8) to i32) }, %struct.i2c_device_id { [20 x i8] c"mt9v024\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @mt9v032_models, i64 16) to i32) }, %struct.i2c_device_id { [20 x i8] c"mt9v024m\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @mt9v032_models, i64 24) to i32) }, %struct.i2c_device_id { [20 x i8] c"mt9v032\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @mt9v032_models, i64 32) to i32) }, %struct.i2c_device_id { [20 x i8] c"mt9v032m\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @mt9v032_models, i64 40) to i32) }, %struct.i2c_device_id { [20 x i8] c"mt9v034\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @mt9v032_models, i64 48) to i32) }, %struct.i2c_device_id { [20 x i8] c"mt9v034m\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @mt9v032_models, i64 56) to i32) }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@mt9v032_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mt9v032_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mt9v032:1059:(&mt9v032_regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@mt9v032_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&mt9v032->power_lock\00", [43 x i8] zeroinitializer }, align 32
@mt9v032_probe._key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mt9v032:1082:(&mt9v032->ctrls)->_lock\00", [58 x i8] zeroinitializer }, align 32
@mt9v032_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @mt9v032_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@mt9v032_test_pattern_menu = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@mt9v032_test_pattern_color = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @mt9v032_ctrl_ops, ptr null, i32 9967873, ptr @.str.18, i32 1, i64 0, i64 1023, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@mt9v032_aegc_controls = internal constant { [5 x %struct.v4l2_ctrl_config], [144 x i8] } { [5 x %struct.v4l2_ctrl_config] [%struct.v4l2_ctrl_config { ptr @mt9v032_ctrl_ops, ptr null, i32 9967874, ptr @.str.19, i32 1, i64 1, i64 64, i64 1, i64 58, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @mt9v032_ctrl_ops, ptr null, i32 9967875, ptr @.str.20, i32 1, i64 0, i64 2, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @mt9v032_ctrl_ops, ptr null, i32 9967876, ptr @.str.21, i32 1, i64 0, i64 2, i64 1, i64 2, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @mt9v032_ctrl_ops, ptr null, i32 9967877, ptr @.str.22, i32 1, i64 0, i64 16, i64 1, i64 2, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @mt9v032_ctrl_ops, ptr null, i32 9967878, ptr @.str.23, i32 1, i64 0, i64 16, i64 1, i64 2, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }], [144 x i8] zeroinitializer }, align 32
@mt9v032_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1145, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"control initialization error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt9v032_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/mt9v032.c\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt9v032_probe._entry_ptr = internal global ptr @mt9v032_probe._entry, section ".printk_index", align 4
@mt9v032_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @mt9v032_subdev_core_ops, ptr null, ptr null, ptr @mt9v032_subdev_video_ops, ptr null, ptr null, ptr null, ptr @mt9v032_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@mt9v032_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @mt9v032_registered, ptr null, ptr @mt9v032_open, ptr @mt9v032_close, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"link-frequencies\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Gray Vertical Shade\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Gray Horizontal Shade\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Gray Diagonal Shade\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Plain\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Test Pattern Color\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AEC/AGC Desired Bin\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AEC Low Pass Filter\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AGC Low Pass Filter\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AEC Update Interval\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AGC Update Interval\00", [44 x i8] zeroinitializer }, align 32
@mt9v032_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9v032_set_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt9v032_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9v032_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mt9v032_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @mt9v032_enum_mbus_code, ptr @mt9v032_enum_frame_size, ptr null, ptr @mt9v032_get_format, ptr @mt9v032_set_format, ptr @mt9v032_get_selection, ptr @mt9v032_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@mt9v032_configure_pixel_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.9, i32 483, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set pixel rate (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt9v032_configure_pixel_rate\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt9v032_configure_pixel_rate._entry_ptr = internal global ptr @mt9v032_configure_pixel_rate._entry, section ".printk_index", align 4
@mt9v032_registered._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.9, i32 888, ptr @.str.30, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Probing MT9V032 at address 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt9v032_registered\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt9v032_registered._entry_ptr = internal global ptr @mt9v032_registered._entry, section ".printk_index", align 4
@mt9v032_registered._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.9, i32 892, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MT9V032 power up failed\0A\00", [39 x i8] zeroinitializer }, align 32
@mt9v032_registered._entry_ptr.33 = internal global ptr @mt9v032_registered._entry.31, section ".printk_index", align 4
@mt9v032_registered._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.29, ptr @.str.9, i32 902, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed reading chip version\0A\00", [35 x i8] zeroinitializer }, align 32
@mt9v032_registered._entry_ptr.36 = internal global ptr @mt9v032_registered._entry.34, section ".printk_index", align 4
@mt9v032_versions = internal constant { [3 x %struct.mt9v032_model_version], [40 x i8] } { [3 x %struct.mt9v032_model_version] [%struct.mt9v032_model_version { i32 4881, ptr @.str.43 }, %struct.mt9v032_model_version { i32 4883, ptr @.str.44 }, %struct.mt9v032_model_version { i32 4900, ptr @.str.45 }], [40 x i8] zeroinitializer }, align 32
@mt9v032_registered._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.9, i32 915, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported chip version 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@mt9v032_registered._entry_ptr.39 = internal global ptr @mt9v032_registered._entry.37, section ".printk_index", align 4
@mt9v032_registered._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.29, ptr @.str.9, i32 920, ptr @.str.30, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s detected at address 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@mt9v032_registered._entry_ptr.42 = internal global ptr @mt9v032_registered._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MT9V022/MT9V032 rev1/2\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MT9V022/MT9V032 rev3\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MT9V024/MT9V034 rev1\00", [43 x i8] zeroinitializer }, align 32
@mt9v032_models = internal constant { [8 x %struct.mt9v032_model_info], [32 x i8] } { [8 x %struct.mt9v032_model_info] [%struct.mt9v032_model_info { ptr @mt9v032_model_data, i8 1 }, %struct.mt9v032_model_info { ptr @mt9v032_model_data, i8 0 }, %struct.mt9v032_model_info { ptr getelementptr (i8, ptr @mt9v032_model_data, i64 36), i8 1 }, %struct.mt9v032_model_info { ptr getelementptr (i8, ptr @mt9v032_model_data, i64 36), i8 0 }, %struct.mt9v032_model_info { ptr @mt9v032_model_data, i8 1 }, %struct.mt9v032_model_info { ptr @mt9v032_model_data, i8 0 }, %struct.mt9v032_model_info { ptr getelementptr (i8, ptr @mt9v032_model_data, i64 36), i8 1 }, %struct.mt9v032_model_info { ptr getelementptr (i8, ptr @mt9v032_model_data, i64 36), i8 0 }], [32 x i8] zeroinitializer }, align 32
@mt9v032_model_data = internal constant { [2 x %struct.mt9v032_model_data], [56 x i8] } { [2 x %struct.mt9v032_model_data] [%struct.mt9v032_model_data { i32 660, i32 43, i32 4, i32 3000, i32 1, i32 32767, i32 116, i32 189, ptr @mt9v032_aec_max_shutter_width }, %struct.mt9v032_model_data { i32 690, i32 61, i32 2, i32 32288, i32 0, i32 32765, i32 114, i32 173, ptr @mt9v034_aec_max_shutter_width }], [56 x i8] zeroinitializer }, align 32
@mt9v032_aec_max_shutter_width = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @mt9v032_ctrl_ops, ptr null, i32 9967879, ptr @.str.46, i32 1, i64 1, i64 2047, i64 1, i64 480, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@mt9v034_aec_max_shutter_width = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @mt9v032_ctrl_ops, ptr null, i32 9967879, ptr @.str.46, i32 1, i64 1, i64 32765, i64 1, i64 480, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"AEC Max Shutter Width\00", [42 x i8] zeroinitializer }, align 32
@switch.table.mt9v032_s_ctrl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 10240, i32 12288, i32 14336], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 9963793, i64 9963794, i64 9963795, i64 9967874, i64 9967875, i64 9967876, i64 9967877, i64 9967878, i64 9967879, i64 10094849, i64 10356993, i64 10356994, i64 10422529, i64 10422530, i64 10422531]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 4881, i64 4883, i64 4900]
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"mt9v032_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1296, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1298, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"mt9v032_of_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1282, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"mt9v032_id\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1268, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"mt9v032_regmap_config\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 988, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1059, i32 20 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1067, i32 62 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1072, i32 64 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1077, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1081, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"mt9v032_ctrl_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 744, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant [26 x i8] c"mt9v032_test_pattern_menu\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 748, i32 27 }
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"mt9v032_test_pattern_color\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 756, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"mt9v032_aegc_controls\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 768, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1144, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"mt9v032_subdev_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 976, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant [28 x i8] c"mt9v032_subdev_internal_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 982, i32 46 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1021, i32 30 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 749, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 750, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 751, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 752, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 753, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 760, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 773, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 783, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 793, i32 12 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 803, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 813, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant [24 x i8] c"mt9v032_subdev_core_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 959, i32 42 }
@___asan_gen_.168 = private unnamed_addr constant [25 x i8] c"mt9v032_subdev_video_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 963, i32 43 }
@___asan_gen_.171 = private unnamed_addr constant [23 x i8] c"mt9v032_subdev_pad_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 967, i32 41 }
@___asan_gen_.175 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 998, i32 6 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 483, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 887, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 892, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 902, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"mt9v032_versions\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 178, i32 43 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 914, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 919, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 179, i32 26 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 180, i32 26 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 181, i32 26 }
@___asan_gen_.237 = private unnamed_addr constant [15 x i8] c"mt9v032_models\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1233, i32 40 }
@___asan_gen_.240 = private unnamed_addr constant [19 x i8] c"mt9v032_model_data\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1207, i32 40 }
@___asan_gen_.243 = private unnamed_addr constant [30 x i8] c"mt9v032_aec_max_shutter_width\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 822, i32 38 }
@___asan_gen_.246 = private unnamed_addr constant [30 x i8] c"mt9v034_aec_max_shutter_width\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 834, i32 38 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private constant [31 x i8] c"../drivers/media/i2c/mt9v032.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 826, i32 11 }
@___asan_gen_.252 = private unnamed_addr constant [28 x i8] c"switch.table.mt9v032_s_ctrl\00", align 1
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author330, ptr @__UNIQUE_ID_description329, ptr @__UNIQUE_ID_file331, ptr @__UNIQUE_ID_license332, ptr @__exitcall_mt9v032_driver_exit, ptr @__initcall__kmod_mt9v032__328_1306_mt9v032_driver_init6, ptr @mt9v032_configure_pixel_rate._entry, ptr @mt9v032_configure_pixel_rate._entry_ptr, ptr @mt9v032_driver_exit, ptr @mt9v032_probe._entry, ptr @mt9v032_probe._entry_ptr, ptr @mt9v032_registered._entry, ptr @mt9v032_registered._entry.31, ptr @mt9v032_registered._entry.34, ptr @mt9v032_registered._entry.37, ptr @mt9v032_registered._entry.40, ptr @mt9v032_registered._entry_ptr, ptr @mt9v032_registered._entry_ptr.33, ptr @mt9v032_registered._entry_ptr.36, ptr @mt9v032_registered._entry_ptr.39, ptr @mt9v032_registered._entry_ptr.42, ptr @mt9v032_driver, ptr @.str, ptr @mt9v032_of_match, ptr @mt9v032_id, ptr @mt9v032_probe._key, ptr @mt9v032_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mt9v032_probe.__key, ptr @.str.4, ptr @mt9v032_probe._key.5, ptr @.str.6, ptr @mt9v032_ctrl_ops, ptr @mt9v032_test_pattern_menu, ptr @mt9v032_test_pattern_color, ptr @mt9v032_aegc_controls, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mt9v032_subdev_ops, ptr @mt9v032_subdev_internal_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @mt9v032_subdev_core_ops, ptr @mt9v032_subdev_video_ops, ptr @mt9v032_subdev_pad_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @mt9v032_versions, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @mt9v032_models, ptr @mt9v032_model_data, ptr @mt9v032_aec_max_shutter_width, ptr @mt9v034_aec_max_shutter_width, ptr @.str.46, ptr @switch.table.mt9v032_s_ctrl], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_of_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_id to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_probe._key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_test_pattern_menu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_test_pattern_color to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_aegc_controls to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_configure_pixel_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_registered._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_registered._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_registered._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_versions to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_registered._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_registered._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_models to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_model_data to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v032_aec_max_shutter_width to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v034_aec_max_shutter_width to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt9v032_s_ctrl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v032_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mt9v032_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt9v032_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @mt9v032_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v032_probe(ptr noundef %client, ptr nocapture noundef readonly %did) #2 align 64 {
entry:
  %endpoint.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %endpoint.i) #7
  %0 = call ptr @memset(ptr %endpoint.i, i32 0, i32 64)
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  br label %mt9v032_get_pdata.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @of_graph_get_next_endpoint(ptr noundef nonnull %2, ptr noundef null) #7
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.end.i.mt9v032_get_pdata.exit_crit_edge, label %cond.end.i

if.end.i.mt9v032_get_pdata.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v032_get_pdata.exit

cond.end.i:                                       ; preds = %if.end.i
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call.i, i32 0, i32 3
  %call8.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i, ptr noundef nonnull %endpoint.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %cond.end.i.done.i_crit_edge, label %if.end10.i

cond.end.i.done.i_crit_edge:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.end10.i:                                       ; preds = %cond.end.i
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 16, i32 noundef 3520) #7
  %tobool13.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool13.not.i, label %if.end10.i.done.i_crit_edge, label %if.end15.i

if.end10.i.done.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.end15.i:                                       ; preds = %if.end10.i
  %call16.i = call ptr @of_find_property(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.12, ptr noundef null) #7
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end30.i_crit_edge, label %if.then18.i

if.end15.i.if.end30.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then18.i:                                      ; preds = %if.end15.i
  %length.i = getelementptr inbounds %struct.property, ptr %call16.i, i32 0, i32 1
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length.i, align 4
  %7 = and i32 %6, -8
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %7, i32 noundef 3520) #7
  %tobool21.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool21.not.i, label %if.then18.i.done.i_crit_edge, label %if.end23.i

if.then18.i.done.i_crit_edge:                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.end23.i:                                       ; preds = %if.then18.i
  %div55.i = lshr i32 %6, 3
  %call.i57.i = call i32 @of_property_read_variable_u64_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %call5.i.i.i, i32 noundef %div55.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57.i)
  %cmp25.i = icmp slt i32 %call.i57.i, 0
  br i1 %cmp25.i, label %if.end23.i.done.i_crit_edge, label %cleanup.i

if.end23.i.done.i_crit_edge:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

cleanup.i:                                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %link_freqs28.i = getelementptr inbounds %struct.mt9v032_platform_data, ptr %call.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %link_freqs28.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i.i, ptr %link_freqs28.i, align 4
  %9 = ptrtoint ptr %call5.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %call5.i.i.i, align 8
  %link_def_freq.i = getelementptr inbounds %struct.mt9v032_platform_data, ptr %call.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %link_def_freq.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %link_def_freq.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %cleanup.i, %if.end15.i.if.end30.i_crit_edge
  %bus.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %endpoint.i, i32 0, i32 2
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus.i, align 4
  %14 = trunc i32 %13 to i8
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %call.i.i, align 8
  %16 = shl i8 %14, 1
  %bf.shl.i = and i8 %16, -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  store i8 %bf.set.i, ptr %call.i.i, align 8
  br label %done.i

done.i:                                           ; preds = %if.end30.i, %if.end23.i.done.i_crit_edge, %if.then18.i.done.i_crit_edge, %if.end10.i.done.i_crit_edge, %cond.end.i.done.i_crit_edge
  %pdata.0.i = phi ptr [ null, %cond.end.i.done.i_crit_edge ], [ %call.i.i, %if.end30.i ], [ null, %if.end10.i.done.i_crit_edge ], [ %call.i.i, %if.then18.i.done.i_crit_edge ], [ %call.i.i, %if.end23.i.done.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call.i) #7
  br label %mt9v032_get_pdata.exit

mt9v032_get_pdata.exit:                           ; preds = %done.i, %if.end.i.mt9v032_get_pdata.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %pdata.0.i, %done.i ], [ %4, %if.then.i ], [ null, %if.end.i.mt9v032_get_pdata.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %endpoint.i) #7
  %call.i251 = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 632, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i251, null
  br i1 %tobool.not, label %mt9v032_get_pdata.exit.cleanup_crit_edge, label %if.end

mt9v032_get_pdata.exit.cleanup_crit_edge:         ; preds = %mt9v032_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mt9v032_get_pdata.exit
  %call2 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @mt9v032_regmap_config, ptr noundef nonnull @mt9v032_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 10
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i252 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i252, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = call ptr @devm_clk_get(ptr noundef %dev.i, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 11
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call10, ptr %clk, align 4
  %cmp.i253 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i253, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call18 = call ptr @devm_gpiod_get_optional(ptr noundef %dev.i, ptr noundef nonnull @.str.2, i32 noundef 7) #7
  %reset_gpio = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 12
  %21 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call18, ptr %reset_gpio, align 4
  %cmp.i254 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %call26 = call ptr @devm_gpiod_get_optional(ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef 3) #7
  %standby_gpio = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 13
  %23 = ptrtoint ptr %standby_gpio to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call26, ptr %standby_gpio, align 4
  %cmp.i255 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i255, label %if.then29, label %do.body

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call26 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end24
  %power_lock = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 8
  call void @__mutex_init(ptr noundef %power_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @mt9v032_probe.__key) #7
  %pdata33 = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 14
  %25 = ptrtoint ptr %pdata33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i, ptr %pdata33, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %did, i32 0, i32 1
  %26 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %driver_data, align 4
  %28 = inttoptr i32 %27 to ptr
  %model = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 15
  %29 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %model, align 4
  %ctrls = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 6
  %call35 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 16, ptr noundef nonnull @mt9v032_probe._key.5, ptr noundef nonnull @.str.6) #7
  %call37 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v032_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %call39 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v032_ctrl_ops, i32 noundef 9963795, i64 noundef 16, i64 noundef 64, i64 noundef 1, i64 noundef 16) #7
  %call41 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls, ptr noundef nonnull @mt9v032_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #7
  %30 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %model, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %min_shutter = getelementptr inbounds %struct.mt9v032_model_data, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %min_shutter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %min_shutter, align 4
  %conv = zext i32 %35 to i64
  %max_shutter = getelementptr inbounds %struct.mt9v032_model_data, ptr %33, i32 0, i32 5
  %36 = ptrtoint ptr %max_shutter to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_shutter, align 4
  %conv46 = zext i32 %37 to i64
  %call47 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v032_ctrl_ops, i32 noundef 9963793, i64 noundef %conv, i64 noundef %conv46, i64 noundef 1, i64 noundef 480) #7
  %38 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %model, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %min_hblank = getelementptr inbounds %struct.mt9v032_model_data, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %min_hblank to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %min_hblank, align 4
  %conv51 = zext i32 %43 to i64
  %call52 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v032_ctrl_ops, i32 noundef 10356994, i64 noundef %conv51, i64 noundef 1023, i64 noundef 1, i64 noundef 94) #7
  %44 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %model, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %min_vblank = getelementptr inbounds %struct.mt9v032_model_data, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %min_vblank to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %min_vblank, align 4
  %conv56 = zext i32 %49 to i64
  %max_vblank = getelementptr inbounds %struct.mt9v032_model_data, ptr %47, i32 0, i32 3
  %50 = ptrtoint ptr %max_vblank to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_vblank, align 4
  %conv59 = zext i32 %51 to i64
  %call60 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v032_ctrl_ops, i32 noundef 10356993, i64 noundef %conv56, i64 noundef %conv59, i64 noundef 1, i64 noundef 45) #7
  %call62 = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrls, ptr noundef nonnull @mt9v032_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @mt9v032_test_pattern_menu) #7
  %52 = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 20
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call62, ptr %52, align 4
  %call64 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef nonnull @mt9v032_test_pattern_color, ptr noundef null) #7
  %test_pattern_color = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 20, i32 1
  %54 = ptrtoint ptr %test_pattern_color to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call64, ptr %test_pattern_color, align 4
  %55 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %model, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %aec_max_shutter_v4l2_ctrl = getelementptr inbounds %struct.mt9v032_model_data, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %aec_max_shutter_v4l2_ctrl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %aec_max_shutter_v4l2_ctrl, align 4
  %call68 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef %60, ptr noundef null) #7
  %call71 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef nonnull @mt9v032_aegc_controls, ptr noundef null) #7
  %call71.1 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef getelementptr inbounds ([5 x %struct.v4l2_ctrl_config], ptr @mt9v032_aegc_controls, i32 0, i32 1), ptr noundef null) #7
  %call71.2 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef getelementptr inbounds ([5 x %struct.v4l2_ctrl_config], ptr @mt9v032_aegc_controls, i32 0, i32 2), ptr noundef null) #7
  %call71.3 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef getelementptr inbounds ([5 x %struct.v4l2_ctrl_config], ptr @mt9v032_aegc_controls, i32 0, i32 3), ptr noundef null) #7
  %call71.4 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef getelementptr inbounds ([5 x %struct.v4l2_ctrl_config], ptr @mt9v032_aegc_controls, i32 0, i32 4), ptr noundef null) #7
  call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %52) #7
  %call74 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9v032_ctrl_ops, i32 noundef 10422530, i64 noundef 1, i64 noundef 2147483647, i64 noundef 1, i64 noundef 1) #7
  %61 = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 7
  %pixel_rate = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 7, i32 1
  %62 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call74, ptr %pixel_rate, align 4
  %tobool75.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool75.not, label %do.body.if.end98_crit_edge, label %land.lhs.true

do.body.if.end98_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

land.lhs.true:                                    ; preds = %do.body
  %link_freqs = getelementptr inbounds %struct.mt9v032_platform_data, ptr %retval.0.i, i32 0, i32 1
  %63 = ptrtoint ptr %link_freqs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %link_freqs, align 4
  %tobool76.not = icmp eq ptr %64, null
  br i1 %tobool76.not, label %land.lhs.true.if.end98_crit_edge, label %for.cond78.preheader

land.lhs.true.if.end98_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

for.cond78.preheader:                             ; preds = %land.lhs.true
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %64, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %tobool81.not257 = icmp eq i64 %66, 0
  br i1 %tobool81.not257, label %for.cond78.preheader.for.end91_crit_edge, label %for.body82.lr.ph

for.cond78.preheader.for.end91_crit_edge:         ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end91

for.body82.lr.ph:                                 ; preds = %for.cond78.preheader
  %link_def_freq = getelementptr inbounds %struct.mt9v032_platform_data, ptr %retval.0.i, i32 0, i32 2
  %67 = ptrtoint ptr %link_def_freq to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %link_def_freq, align 8
  br label %for.body82

for.body82:                                       ; preds = %for.body82.for.body82_crit_edge, %for.body82.lr.ph
  %69 = phi i64 [ %66, %for.body82.lr.ph ], [ %71, %for.body82.for.body82_crit_edge ]
  %def.0259 = phi i32 [ 0, %for.body82.lr.ph ], [ %spec.select, %for.body82.for.body82_crit_edge ]
  %i.1258 = phi i32 [ 0, %for.body82.lr.ph ], [ %inc90, %for.body82.for.body82_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %68)
  %cmp85 = icmp eq i64 %69, %68
  %spec.select = select i1 %cmp85, i32 %i.1258, i32 %def.0259
  %inc90 = add i32 %i.1258, 1
  %arrayidx80 = getelementptr i64, ptr %64, i32 %inc90
  %70 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx80, align 8
  %tobool81.not = icmp eq i64 %71, 0
  br i1 %tobool81.not, label %for.end91.loopexit, label %for.body82.for.body82_crit_edge

for.body82.for.body82_crit_edge:                  ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body82

for.end91.loopexit:                               ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast = trunc i32 %inc90 to i8
  %phi.bo = add i8 %phi.cast, -1
  %phi.cast261 = trunc i32 %spec.select to i8
  br label %for.end91

for.end91:                                        ; preds = %for.end91.loopexit, %for.cond78.preheader.for.end91_crit_edge
  %i.1.lcssa = phi i8 [ -1, %for.cond78.preheader.for.end91_crit_edge ], [ %phi.bo, %for.end91.loopexit ]
  %def.0.lcssa = phi i8 [ 0, %for.cond78.preheader.for.end91_crit_edge ], [ %phi.cast261, %for.end91.loopexit ]
  %call96 = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrls, ptr noundef nonnull @mt9v032_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext %i.1.lcssa, i8 noundef zeroext %def.0.lcssa, ptr noundef nonnull %64) #7
  %72 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call96, ptr %61, align 4
  call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %61) #7
  br label %if.end98

if.end98:                                         ; preds = %for.end91, %land.lhs.true.if.end98_crit_edge, %do.body.if.end98_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i251, i32 0, i32 8
  %73 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 6, i32 9
  %74 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool101.not = icmp eq i32 %75, 0
  br i1 %tobool101.not, label %if.end111, label %do.end105

do.end105:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7, i32 noundef %75) #10
  %76 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %error, align 4
  br label %err

if.end111:                                        ; preds = %if.end98
  %crop = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 3
  %78 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %crop, align 4
  %top = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 3, i32 1
  %79 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 5, ptr %top, align 4
  %width = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 3, i32 2
  %80 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 752, ptr %width, align 4
  %height = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 3, i32 3
  %81 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 480, ptr %height, align 4
  %82 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %model, align 4
  %color = getelementptr inbounds %struct.mt9v032_model_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %color to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %color, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool116.not = icmp eq i8 %85, 0
  %spec.select262 = select i1 %tobool116.not, i32 8202, i32 12298
  %86 = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 2, i32 2
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %spec.select262, ptr %86, align 4
  %format121 = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 2
  %88 = ptrtoint ptr %format121 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 752, ptr %format121, align 4
  %height124 = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 2, i32 1
  %89 = ptrtoint ptr %height124 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 480, ptr %height124, align 4
  %field = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 2, i32 3
  %90 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 2, i32 4
  %91 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 8, ptr %colorspace, align 4
  %hratio = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 4
  %92 = ptrtoint ptr %hratio to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %hratio, align 4
  %vratio = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 5
  %93 = ptrtoint ptr %vratio to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %vratio, align 4
  %aec_agc = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 18
  %94 = ptrtoint ptr %aec_agc to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 3, ptr %aec_agc, align 4
  %hblank = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 19
  %95 = ptrtoint ptr %hblank to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 94, ptr %hblank, align 2
  %sysclk = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 17
  %96 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 26600000, ptr %sysclk, align 4
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i251, ptr noundef %client, ptr noundef nonnull @mt9v032_subdev_ops) #7
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i251, i32 0, i32 7
  %97 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @mt9v032_subdev_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i251, i32 0, i32 4
  %98 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags, align 4
  %or = or i32 %99, 4
  store i32 %or, ptr %flags, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i251, i32 0, i32 3
  %100 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 1
  %flags131 = getelementptr inbounds %struct.mt9v032, ptr %call.i251, i32 0, i32 1, i32 4
  %101 = ptrtoint ptr %flags131 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 2, ptr %flags131, align 4
  %call135 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i251, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %if.end111.err_crit_edge, label %if.end139

if.end111.err_crit_edge:                          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end139:                                        ; preds = %if.end111
  %dev142 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i251, i32 0, i32 14
  %102 = ptrtoint ptr %dev142 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %dev.i, ptr %dev142, align 4
  %call144 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i251) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp145 = icmp slt i32 %call144, 0
  br i1 %cmp145, label %if.end139.err_crit_edge, label %if.end139.cleanup_crit_edge

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end139.err_crit_edge:                          ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

err:                                              ; preds = %if.end139.err_crit_edge, %if.end111.err_crit_edge, %do.end105
  %ret.0 = phi i32 [ %77, %do.end105 ], [ %call135, %if.end111.err_crit_edge ], [ %call144, %if.end139.err_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end139.cleanup_crit_edge, %if.then29, %if.then21, %if.then13, %if.then5, %mt9v032_get_pdata.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then5 ], [ %20, %if.then13 ], [ %22, %if.then21 ], [ %24, %if.then29 ], [ %ret.0, %err ], [ -12, %mt9v032_get_pdata.exit.cleanup_crit_edge ], [ 0, %if.end139.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v032_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %ctrls = getelementptr inbounds %struct.mt9v032, ptr %1, i32 0, i32 6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u64_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v032_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %regmap = getelementptr i8, ptr %1, i32 288
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963794, label %sw.bb
    i32 9963795, label %sw.bb1
    i32 10094849, label %sw.bb4
    i32 9963793, label %sw.bb7
    i32 10356994, label %sw.bb10
    i32 10356993, label %sw.bb13
    i32 10422530, label %entry.sw.bb16_crit_edge
    i32 10422529, label %entry.sw.bb16_crit_edge108
    i32 10422531, label %sw.bb22
    i32 9967874, label %sw.bb34
    i32 9967875, label %sw.bb37
    i32 9967876, label %sw.bb40
    i32 9967877, label %sw.bb43
    i32 9967878, label %sw.bb46
    i32 9967879, label %sw.bb49
  ]

entry.sw.bb16_crit_edge108:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

entry.sw.bb16_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %aec_agc.i = getelementptr i8, ptr %1, i32 320
  %11 = ptrtoint ptr %aec_agc.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %aec_agc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %and.i = and i16 %12, -3
  %masksel107 = select i1 %tobool.not.i, i16 0, i16 2
  %value.0.i = or i16 %and.i, %masksel107
  %conv6.i = zext i16 %value.0.i to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 175, i32 noundef %conv6.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end9.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %aec_agc.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %value.0.i, ptr %aec_agc.i, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val2, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 53, i32 noundef %15) #7
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.not = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %aec_agc.i93 = getelementptr i8, ptr %1, i32 320
  %20 = ptrtoint ptr %aec_agc.i93 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %aec_agc.i93, align 4
  %and.i96 = and i16 %21, -2
  %masksel = zext i1 %tobool.not.not to i16
  %value.0.i97 = or i16 %and.i96, %masksel
  %conv6.i98 = zext i16 %value.0.i97 to i32
  %call.i99 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 175, i32 noundef %conv6.i98) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp.i100 = icmp slt i32 %call.i99, 0
  br i1 %cmp.i100, label %sw.bb4.cleanup_crit_edge, label %if.end9.i101

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i101:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %aec_agc.i93 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %value.0.i97, ptr %aec_agc.i93, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val8, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 11, i32 noundef %24) #7
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val11, align 4
  %conv = trunc i32 %26 to i16
  %hblank = getelementptr i8, ptr %1, i32 322
  %27 = ptrtoint ptr %hblank to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv, ptr %hblank, align 2
  %model.i = getelementptr i8, ptr %1, i32 308
  %28 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %model.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %min_hblank2.i = getelementptr inbounds %struct.mt9v032_model_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %min_hblank2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %min_hblank2.i, align 4
  %version.i = getelementptr i8, ptr %1, i32 312
  %34 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %version.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4900, i32 %37)
  %cmp.i104 = icmp eq i32 %37, 4900
  br i1 %cmp.i104, label %if.then.i, label %sw.bb10.mt9v032_update_hblank.exit_crit_edge

sw.bb10.mt9v032_update_hblank.exit_crit_edge:     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v032_update_hblank.exit

if.then.i:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %hratio.i = getelementptr i8, ptr %1, i32 -8
  %38 = ptrtoint ptr %hratio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hratio.i, align 4
  %40 = mul i32 %39, 10
  %mul.i = add i32 %33, -10
  %add.i = add i32 %mul.i, %40
  br label %mt9v032_update_hblank.exit

mt9v032_update_hblank.exit:                       ; preds = %if.then.i, %sw.bb10.mt9v032_update_hblank.exit_crit_edge
  %min_hblank.0.i = phi i32 [ %add.i, %if.then.i ], [ %33, %sw.bb10.mt9v032_update_hblank.exit_crit_edge ]
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %31, align 4
  %width.i = getelementptr i8, ptr %1, i32 -16
  %43 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %width.i, align 4
  %sub6.i = sub i32 %42, %44
  %45 = tail call i32 @llvm.smax.i32(i32 %sub6.i, i32 %min_hblank.0.i) #7
  %46 = ptrtoint ptr %hblank to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %hblank, align 2
  %conv.i = zext i16 %47 to i32
  %48 = tail call i32 @llvm.umax.i32(i32 %45, i32 %conv.i) #7
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call.i106 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 5, i32 noundef %48) #7
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %51 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val14, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 6, i32 noundef %52) #7
  br label %cleanup

sw.bb16:                                          ; preds = %entry.sw.bb16_crit_edge, %entry.sw.bb16_crit_edge108
  %53 = getelementptr i8, ptr %1, i32 184
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %cmp = icmp eq ptr %55, null
  br i1 %cmp, label %sw.bb16.cleanup_crit_edge, label %if.end

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %pdata = getelementptr i8, ptr %1, i32 304
  %56 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdata, align 4
  %link_freqs = getelementptr inbounds %struct.mt9v032_platform_data, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %link_freqs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %link_freqs, align 4
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %55, i32 0, i32 22
  %60 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val19, align 4
  %arrayidx = getelementptr i64, ptr %59, i32 %61
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx, align 8
  %conv20 = trunc i64 %63 to i32
  %conv21 = and i64 %63, 4294967295
  %pixel_rate = getelementptr i8, ptr %1, i32 188
  %64 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pixel_rate, align 4
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %65, i32 0, i32 25
  %66 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %p_new, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv21, ptr %67, align 8
  %sysclk = getelementptr i8, ptr %1, i32 316
  %69 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv20, ptr %sysclk, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %70 = getelementptr i8, ptr %1, i32 324
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %72, i32 0, i32 22
  %73 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %val23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %74)
  %75 = icmp ult i32 %74, 4
  br i1 %75, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  %test_pattern_color = getelementptr i8, ptr %1, i32 328
  %76 = ptrtoint ptr %test_pattern_color to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %test_pattern_color, align 4
  %val28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %77, i32 0, i32 22
  %78 = ptrtoint ptr %val28 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val28, align 4
  %or = and i32 %79, 39935
  %phi.cast = or i32 %or, 25600
  br label %sw.epilog

switch.lookup:                                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mt9v032_s_ctrl, i32 0, i32 %74
  %80 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %80)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.default
  %data.0 = phi i32 [ %phi.cast, %sw.default ], [ %switch.load, %switch.lookup ]
  %call33 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 127, i32 noundef %data.0) #7
  br label %cleanup

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val35 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %81 = ptrtoint ptr %val35 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val35, align 4
  %call36 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 165, i32 noundef %82) #7
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %83 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %val38, align 4
  %call39 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 168, i32 noundef %84) #7
  br label %cleanup

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val41 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %85 = ptrtoint ptr %val41 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val41, align 4
  %call42 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 170, i32 noundef %86) #7
  br label %cleanup

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val44 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %87 = ptrtoint ptr %val44 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val44, align 4
  %call45 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 166, i32 noundef %88) #7
  br label %cleanup

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val47 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %89 = ptrtoint ptr %val47 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %val47, align 4
  %call48 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 169, i32 noundef %90) #7
  br label %cleanup

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %model = getelementptr i8, ptr %1, i32 308
  %91 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %model, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %aec_max_shutter_reg = getelementptr inbounds %struct.mt9v032_model_data, ptr %94, i32 0, i32 7
  %95 = ptrtoint ptr %aec_max_shutter_reg to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %aec_max_shutter_reg, align 4
  %val51 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %97 = ptrtoint ptr %val51 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %val51, align 4
  %call52 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %96, i32 noundef %98) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb49, %sw.bb46, %sw.bb43, %sw.bb40, %sw.bb37, %sw.bb34, %sw.epilog, %if.end, %sw.bb16.cleanup_crit_edge, %sw.bb13, %mt9v032_update_hblank.exit, %sw.bb7, %if.end9.i101, %sw.bb4.cleanup_crit_edge, %sw.bb1, %if.end9.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call52, %sw.bb49 ], [ %call48, %sw.bb46 ], [ %call45, %sw.bb43 ], [ %call42, %sw.bb40 ], [ %call39, %sw.bb37 ], [ %call36, %sw.bb34 ], [ %call33, %sw.epilog ], [ %call15, %sw.bb13 ], [ %call.i106, %mt9v032_update_hblank.exit ], [ %call9, %sw.bb7 ], [ %call3, %sw.bb1 ], [ 0, %sw.bb16.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %if.end9.i ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ 0, %if.end9.i101 ], [ %call.i99, %sw.bb4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v032_set_power(ptr noundef %subdev, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %power_lock = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %power_lock, i32 noundef 0) #7
  %power_count = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 9
  %0 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %lnot.ext)
  %cmp = icmp eq i32 %1, %lnot.ext
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 10
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  br i1 %tobool.not, label %__mt9v032_set_power.exit.thread50, label %if.end.i

__mt9v032_set_power.exit.thread50:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %clk.i.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 11
  %4 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %if.end9

if.end.i:                                         ; preds = %if.then
  %call.i = tail call fastcc i32 @mt9v032_power_on(ptr noundef %subdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.done_crit_edge, label %if.end2.i

if.end.i.done_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end2.i:                                        ; preds = %if.end.i
  %pdata.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 14
  %6 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %if.end2.i.if.end11.i_crit_edge, label %land.lhs.true.i

if.end2.i.if.end11.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end2.i
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool5.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %model.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 15
  %9 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %model.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %pclk_reg.i = getelementptr inbounds %struct.mt9v032_model_data, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %pclk_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pclk_reg.i, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %14, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then6.i.done_crit_edge, label %if.then6.i.if.end11.i_crit_edge

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then6.i.done_crit_edge:                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end11.i:                                       ; preds = %if.then6.i.if.end11.i_crit_edge, %land.lhs.true.i.if.end11.i_crit_edge, %if.end2.i.if.end11.i_crit_edge
  %call12.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 112, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end11.i.done_crit_edge, label %__mt9v032_set_power.exit

if.end11.i.done_crit_edge:                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

__mt9v032_set_power.exit:                         ; preds = %if.end11.i
  %ctrls.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 6
  %call16.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp7 = icmp slt i32 %call16.i, 0
  br i1 %cmp7, label %__mt9v032_set_power.exit.done_crit_edge, label %__mt9v032_set_power.exit.if.end9_crit_edge

__mt9v032_set_power.exit.if.end9_crit_edge:       ; preds = %__mt9v032_set_power.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

__mt9v032_set_power.exit.done_crit_edge:          ; preds = %__mt9v032_set_power.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end9:                                          ; preds = %__mt9v032_set_power.exit.if.end9_crit_edge, %__mt9v032_set_power.exit.thread50, %entry.if.end9_crit_edge
  %ret.0 = phi i32 [ %call16.i, %__mt9v032_set_power.exit.if.end9_crit_edge ], [ 0, %entry.if.end9_crit_edge ], [ 0, %__mt9v032_set_power.exit.thread50 ]
  %cond = select i1 %tobool.not, i32 -1, i32 1
  %15 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %power_count, align 4
  %add = add i32 %16, %cond
  store i32 %add, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp13 = icmp slt i32 %add, 0
  br i1 %cmp13, label %do.end, label %if.end9.done_crit_edge, !prof !141

if.end9.done_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 868, i32 noundef 9, ptr noundef null) #7
  br label %done

done:                                             ; preds = %do.end, %if.end9.done_crit_edge, %__mt9v032_set_power.exit.done_crit_edge, %if.end11.i.done_crit_edge, %if.then6.i.done_crit_edge, %if.end.i.done_crit_edge
  %ret.1 = phi i32 [ %call16.i, %__mt9v032_set_power.exit.done_crit_edge ], [ %ret.0, %do.end ], [ %ret.0, %if.end9.done_crit_edge ], [ %call12.i, %if.end11.i.done_crit_edge ], [ %call7.i, %if.then6.i.done_crit_edge ], [ %call.i, %if.end.i.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %power_lock) #7
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9v032_power_on(ptr nocapture noundef readonly %mt9v032) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.mt9v032, ptr %mt9v032, i32 0, i32 10
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %reset_gpio = getelementptr inbounds %struct.mt9v032, ptr %mt9v032, i32 0, i32 12
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #7
  %clk = getelementptr inbounds %struct.mt9v032, ptr %mt9v032, i32 0, i32 11
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %sysclk = getelementptr inbounds %struct.mt9v032, ptr %mt9v032, i32 0, i32 17
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #7
  %11 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset_gpio, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %12, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %call10 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 12, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.err_crit_edge, label %if.end13

if.end9.err_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 12, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.err_crit_edge, label %if.end17

if.end13.err_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 7, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.err_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.err_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

err:                                              ; preds = %if.end17.err_crit_edge, %if.end13.err_crit_edge, %if.end9.err_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end9.err_crit_edge ], [ %call14, %if.end13.err_crit_edge ], [ %call18, %if.end17.err_crit_edge ]
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %15, %err ], [ %9, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.0, %err ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v032_s_stream(ptr nocapture noundef readonly %subdev, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %crop1 = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 3
  %regmap = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 10
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %hratio = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 4
  %2 = ptrtoint ptr %hratio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 true) #7, !range !142
  %vratio = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 5
  %5 = ptrtoint ptr %vratio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i61 = icmp eq i32 %6, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 true) #7, !range !142
  %sub.i62.op = xor i32 %7, 31
  %sub5 = select i1 %tobool.not.i61, i32 -1, i32 %sub.i62.op
  %.neg = mul nsw i32 %4, -4
  %sub.i.op.op = add nsw i32 %.neg, 124
  %shl = select i1 %tobool.not.i, i32 -4, i32 %sub.i.op.op
  %or = or i32 %shl, %sub5
  %call.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 13, i32 noundef -769, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp = icmp slt i32 %call.i64, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %crop1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crop1, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 1, i32 noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %top = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %top, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 2, i32 noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %width = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 4, i32 noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %height = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %call22 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 3, i32 noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %model.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 15
  %16 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %model.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %min_hblank2.i = getelementptr inbounds %struct.mt9v032_model_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %min_hblank2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %min_hblank2.i, align 4
  %version.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 16
  %22 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %version.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4900, i32 %25)
  %cmp.i = icmp eq i32 %25, 4900
  br i1 %cmp.i, label %if.then.i, label %if.end25.mt9v032_update_hblank.exit_crit_edge

if.end25.mt9v032_update_hblank.exit_crit_edge:    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v032_update_hblank.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %hratio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hratio, align 4
  %28 = mul i32 %27, 10
  %mul.i = add i32 %21, -10
  %add.i = add i32 %mul.i, %28
  br label %mt9v032_update_hblank.exit

mt9v032_update_hblank.exit:                       ; preds = %if.then.i, %if.end25.mt9v032_update_hblank.exit_crit_edge
  %min_hblank.0.i = phi i32 [ %add.i, %if.then.i ], [ %21, %if.end25.mt9v032_update_hblank.exit_crit_edge ]
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %19, align 4
  %31 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %width, align 4
  %sub6.i = sub i32 %30, %32
  %33 = tail call i32 @llvm.smax.i32(i32 %sub6.i, i32 %min_hblank.0.i) #7
  %hblank8.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 19
  %34 = ptrtoint ptr %hblank8.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hblank8.i, align 2
  %conv.i = zext i16 %35 to i32
  %36 = tail call i32 @llvm.umax.i32(i32 %33, i32 %conv.i) #7
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call.i65 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 5, i32 noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp27 = icmp slt i32 %call.i65, 0
  br i1 %cmp27, label %mt9v032_update_hblank.exit.cleanup_crit_edge, label %mt9v032_update_hblank.exit.cleanup.sink.split_crit_edge

mt9v032_update_hblank.exit.cleanup.sink.split_crit_edge: ; preds = %mt9v032_update_hblank.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

mt9v032_update_hblank.exit.cleanup_crit_edge:     ; preds = %mt9v032_update_hblank.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %mt9v032_update_hblank.exit.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %entry.cleanup.sink.split_crit_edge ], [ 384, %mt9v032_update_hblank.exit.cleanup.sink.split_crit_edge ]
  %call.i66 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 7, i32 noundef 384, i32 noundef %.sink, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %mt9v032_update_hblank.exit.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i64, %if.end.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call.i65, %mt9v032_update_hblank.exit.cleanup_crit_edge ], [ %call.i66, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9v032_enum_mbus_code(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %code1 = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code1, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %code2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9v032_enum_frame_size(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  %code1 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.not = icmp eq i32 %3, %5
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div20 = lshr i32 752, %1
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %6 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div20, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %7 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div20, ptr %max_width, align 4
  %div921 = lshr i32 480, %1
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %8 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div921, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %9 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div921, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v032_get_format(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %1, label %entry.__mt9v032_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__mt9v032_get_pad_format.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9v032_get_pad_format.exit

sw.bb.i:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %4, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !143

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i
  br label %__mt9v032_get_pad_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %format.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 2
  br label %__mt9v032_get_pad_format.exit

__mt9v032_get_pad_format.exit:                    ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %entry.__mt9v032_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %format.i, %sw.bb1.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %entry.__mt9v032_get_pad_format.exit_crit_edge ]
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %format1, ptr %retval.0.i, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v032_set_format(ptr nocapture noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %1, label %entry.__mt9v032_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__mt9v032_get_pad_crop.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9v032_get_pad_crop.exit

sw.bb.i:                                          ; preds = %entry
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %4, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !143

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i, i32 1
  br label %__mt9v032_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %crop.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 3
  br label %__mt9v032_get_pad_crop.exit

__mt9v032_get_pad_crop.exit:                      ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %entry.__mt9v032_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %entry.__mt9v032_get_pad_crop.exit_crit_edge ]
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %9 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format2, align 4
  %add = add i32 %10, 1
  %and = and i32 %add, -2
  %width4 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp = icmp ugt i32 %12, 7
  %div97 = lshr i32 %12, 2
  %cond = select i1 %cmp, i32 %div97, i32 1
  %13 = tail call i32 @llvm.umax.i32(i32 %and, i32 %cond)
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %12)
  %height19 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %height19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height19, align 4
  %add20 = add i32 %16, 1
  %and21 = and i32 %add20, -2
  %height22 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %cmp25 = icmp ugt i32 %18, 7
  %div2398 = lshr i32 %18, 2
  %cond29 = select i1 %cmp25, i32 %div2398, i32 1
  %19 = tail call i32 @llvm.umax.i32(i32 %and21, i32 %cond29)
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %18)
  %mul.i = mul i32 %14, 3
  %mul1.i = shl i32 %12, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul1.i)
  %cmp.i = icmp ugt i32 %mul.i, %mul1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %12)
  %cmp3.i = icmp ugt i32 %mul.i, %12
  %..i = select i1 %cmp3.i, i32 2, i32 4
  %retval.0.i99 = select i1 %cmp.i, i32 1, i32 %..i
  %mul.i100 = mul i32 %20, 3
  %mul1.i101 = shl i32 %18, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i100, i32 %mul1.i101)
  %cmp.i102 = icmp ugt i32 %mul.i100, %mul1.i101
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i100, i32 %18)
  %cmp3.i103 = icmp ugt i32 %mul.i100, %18
  %..i104 = select i1 %cmp3.i103, i32 2, i32 4
  %retval.0.i105 = select i1 %cmp.i102, i32 1, i32 %..i104
  %21 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %format, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %22, label %__mt9v032_get_pad_crop.exit.__mt9v032_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i109
    i32 1, label %sw.bb1.i112
  ]

__mt9v032_get_pad_crop.exit.__mt9v032_get_pad_format.exit_crit_edge: ; preds = %__mt9v032_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9v032_get_pad_format.exit

sw.bb.i109:                                       ; preds = %__mt9v032_get_pad_crop.exit
  %24 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pad, align 4
  %num_pads.i.i106 = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %26 = ptrtoint ptr %num_pads.i.i106 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_pads.i.i106, align 4
  %conv.i.i107 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv.i.i107)
  %cmp.not.i.i108 = icmp ult i32 %25, %conv.i.i107
  br i1 %cmp.not.i.i108, label %sw.bb.i109.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i110, !prof !143

sw.bb.i109.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i110:                                    ; preds = %sw.bb.i109
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i110, %sw.bb.i109.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i111 = phi i32 [ 0, %do.end.i.i110 ], [ %25, %sw.bb.i109.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %28 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %29, i32 %spec.select.i.i111
  br label %__mt9v032_get_pad_format.exit

sw.bb1.i112:                                      ; preds = %__mt9v032_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  %format.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 2
  br label %__mt9v032_get_pad_format.exit

__mt9v032_get_pad_format.exit:                    ; preds = %sw.bb1.i112, %v4l2_subdev_get_try_format.exit.i, %__mt9v032_get_pad_crop.exit.__mt9v032_get_pad_format.exit_crit_edge
  %retval.0.i113 = phi ptr [ %format.i, %sw.bb1.i112 ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %__mt9v032_get_pad_crop.exit.__mt9v032_get_pad_format.exit_crit_edge ]
  %30 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width4, align 4
  %32 = select i1 %cmp3.i, i32 1, i32 2
  %33 = select i1 %cmp.i, i32 0, i32 %32
  %div51115 = lshr i32 %31, %33
  %34 = ptrtoint ptr %retval.0.i113 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div51115, ptr %retval.0.i113, align 4
  %35 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height22, align 4
  %37 = select i1 %cmp3.i103, i32 1, i32 2
  %38 = select i1 %cmp.i102, i32 0, i32 %37
  %div54116 = lshr i32 %36, %38
  %height55 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i113, i32 0, i32 1
  %39 = ptrtoint ptr %height55 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div54116, ptr %height55, align 4
  %40 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp57 = icmp eq i32 %41, 1
  br i1 %cmp57, label %if.then, label %__mt9v032_get_pad_format.exit.if.end_crit_edge

__mt9v032_get_pad_format.exit.if.end_crit_edge:   ; preds = %__mt9v032_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %__mt9v032_get_pad_format.exit
  %hratio58 = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 4
  %42 = ptrtoint ptr %hratio58 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i99, ptr %hratio58, align 4
  %vratio59 = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 5
  %43 = ptrtoint ptr %vratio59 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i105, ptr %vratio59, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %44 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i, align 4
  %pixel_rate.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pixel_rate.i, align 4
  %sysclk.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 17
  %48 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sysclk.i, align 4
  %div.i117 = lshr i32 %49, %33
  %conv.i = zext i32 %div.i117 to i64
  %handler.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lock.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %53, i32 noundef 0) #7
  %call.i.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %47, i64 noundef %conv.i) #7
  %54 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i4.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %lock.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lock.i4.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i114 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i114, label %do.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %call.i.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %__mt9v032_get_pad_format.exit.if.end_crit_edge
  %58 = call ptr @memcpy(ptr %format2, ptr %retval.0.i113, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v032_get_selection(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %3, label %if.end.__mt9v032_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.__mt9v032_get_pad_crop.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9v032_get_pad_crop.exit

sw.bb.i:                                          ; preds = %if.end
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %7 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %6, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !143

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %6, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %10, i32 %spec.select.i.i, i32 1
  br label %__mt9v032_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %crop.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 3
  br label %__mt9v032_get_pad_crop.exit

__mt9v032_get_pad_crop.exit:                      ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %if.end.__mt9v032_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %if.end.__mt9v032_get_pad_crop.exit_crit_edge ]
  %11 = call ptr @memcpy(ptr %r, ptr %retval.0.i, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %__mt9v032_get_pad_crop.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__mt9v032_get_pad_crop.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v032_set_selection(ptr nocapture noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r, align 4
  %add1 = add i32 %3, 2
  %and = and i32 %add1, -2
  %sub = add i32 %and, -1
  %4 = tail call i32 @llvm.smax.i32(i32 %sub, i32 1)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 752)
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %top, align 4
  %add12 = add i32 %7, 2
  %and13 = and i32 %add12, -2
  %sub14 = add i32 %and13, -1
  %8 = tail call i32 @llvm.smax.i32(i32 %sub14, i32 4)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 482)
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  %add29 = add i32 %11, 1
  %and30 = and i32 %add29, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %cmp32.not = icmp eq i32 %and30, 0
  %12 = tail call i32 @llvm.umin.i32(i32 %and30, i32 752)
  %13 = select i1 %cmp32.not, i32 1, i32 %12
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %add45 = add i32 %15, 1
  %and46 = and i32 %add45, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %cmp48.not = icmp eq i32 %and46, 0
  %16 = tail call i32 @llvm.umin.i32(i32 %and46, i32 480)
  %17 = select i1 %cmp48.not, i32 1, i32 %16
  %sub62 = sub nuw nsw i32 753, %5
  %18 = tail call i32 @llvm.umin.i32(i32 %13, i32 %sub62)
  %sub72 = sub nuw nsw i32 485, %9
  %19 = tail call i32 @llvm.umin.i32(i32 %17, i32 %sub72)
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %20 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sel, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %21, label %if.end.__mt9v032_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.__mt9v032_get_pad_crop.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9v032_get_pad_crop.exit

sw.bb.i:                                          ; preds = %if.end
  %23 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %25 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %24, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !143

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %24, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %27 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %28, i32 %spec.select.i.i, i32 1
  br label %__mt9v032_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %crop.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 3
  br label %__mt9v032_get_pad_crop.exit

__mt9v032_get_pad_crop.exit:                      ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %if.end.__mt9v032_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %if.end.__mt9v032_get_pad_crop.exit_crit_edge ]
  %width82 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %29 = ptrtoint ptr %width82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %width82, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %30)
  %cmp83.not = icmp eq i32 %18, %30
  br i1 %cmp83.not, label %lor.lhs.false, label %__mt9v032_get_pad_crop.exit.if.then87_crit_edge

__mt9v032_get_pad_crop.exit.if.then87_crit_edge:  ; preds = %__mt9v032_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

lor.lhs.false:                                    ; preds = %__mt9v032_get_pad_crop.exit
  %height85 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %31 = ptrtoint ptr %height85 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %32)
  %cmp86.not = icmp eq i32 %19, %32
  br i1 %cmp86.not, label %lor.lhs.false.if.end99_crit_edge, label %lor.lhs.false.if.then87_crit_edge

lor.lhs.false.if.then87_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

lor.lhs.false.if.end99_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then87:                                        ; preds = %lor.lhs.false.if.then87_crit_edge, %__mt9v032_get_pad_crop.exit.if.then87_crit_edge
  %33 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sel, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %34, label %if.then87.__mt9v032_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i153
    i32 1, label %sw.bb1.i156
  ]

if.then87.__mt9v032_get_pad_format.exit_crit_edge: ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9v032_get_pad_format.exit

sw.bb.i153:                                       ; preds = %if.then87
  %36 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pad, align 4
  %num_pads.i.i150 = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %38 = ptrtoint ptr %num_pads.i.i150 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_pads.i.i150, align 4
  %conv.i.i151 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.i.i151)
  %cmp.not.i.i152 = icmp ult i32 %37, %conv.i.i151
  br i1 %cmp.not.i.i152, label %sw.bb.i153.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i154, !prof !143

sw.bb.i153.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i153
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i154:                                    ; preds = %sw.bb.i153
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i154, %sw.bb.i153.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i155 = phi i32 [ 0, %do.end.i.i154 ], [ %37, %sw.bb.i153.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %40 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %41, i32 %spec.select.i.i155
  br label %__mt9v032_get_pad_format.exit

sw.bb1.i156:                                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %format.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 2
  br label %__mt9v032_get_pad_format.exit

__mt9v032_get_pad_format.exit:                    ; preds = %sw.bb1.i156, %v4l2_subdev_get_try_format.exit.i, %if.then87.__mt9v032_get_pad_format.exit_crit_edge
  %retval.0.i157 = phi ptr [ %format.i, %sw.bb1.i156 ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %if.then87.__mt9v032_get_pad_format.exit_crit_edge ]
  %42 = ptrtoint ptr %retval.0.i157 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %18, ptr %retval.0.i157, align 4
  %height94 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i157, i32 0, i32 1
  %43 = ptrtoint ptr %height94 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %19, ptr %height94, align 4
  %44 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp96 = icmp eq i32 %45, 1
  br i1 %cmp96, label %if.then97, label %__mt9v032_get_pad_format.exit.if.end99_crit_edge

__mt9v032_get_pad_format.exit.if.end99_crit_edge: ; preds = %__mt9v032_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then97:                                        ; preds = %__mt9v032_get_pad_format.exit
  %hratio = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 4
  %46 = ptrtoint ptr %hratio to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %hratio, align 4
  %vratio = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 5
  %47 = ptrtoint ptr %vratio to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %vratio, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %48 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i.i, align 4
  %pixel_rate.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 7, i32 1
  %50 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pixel_rate.i, align 4
  %sysclk.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 17
  %52 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sysclk.i, align 4
  %conv.i = zext i32 %53 to i64
  %handler.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %51, i32 0, i32 2
  %54 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lock.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %57, i32 noundef 0) #7
  %call.i.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %51, i64 noundef %conv.i) #7
  %58 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i4.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %lock.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lock.i4.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then97.if.end99_crit_edge

if.then97.if.end99_crit_edge:                     ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

do.end.i:                                         ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %call.i.i) #10
  br label %if.end99

if.end99:                                         ; preds = %do.end.i, %if.then97.if.end99_crit_edge, %__mt9v032_get_pad_format.exit.if.end99_crit_edge, %lor.lhs.false.if.end99_crit_edge
  %62 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %5, ptr %retval.0.i, align 4
  %rect.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %retval.0.i, i32 4
  %63 = ptrtoint ptr %rect.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %9, ptr %rect.sroa.7.0..sroa_idx, align 4
  %64 = ptrtoint ptr %width82 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %18, ptr %width82, align 4
  %rect.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %retval.0.i, i32 12
  %65 = ptrtoint ptr %rect.sroa.16.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %19, ptr %rect.sroa.16.0..sroa_idx, align 4
  %66 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %5, ptr %r, align 4
  %67 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %9, ptr %top, align 4
  %68 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %18, ptr %width, align 4
  %69 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %19, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end99 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v032_registered(ptr nocapture noundef %subdev) #2 align 64 {
entry:
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #7
  %2 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %version, align 4, !annotation !144
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr, align 2
  %conv = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %conv) #10
  %call2 = tail call fastcc i32 @mt9v032_power_on(ptr noundef %subdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end6, label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 10
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call8 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %version) #7
  %clk.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 11
  %7 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk.i, align 4
  call void @clk_disable(ptr noundef %8) #7
  call void @clk_unprepare(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end14, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %9 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %version, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %10, label %for.cond.preheader.for.end_crit_edge [
    i32 4881, label %for.cond.preheader.if.then22_crit_edge
    i32 4883, label %if.then22.fold.split
    i32 4900, label %if.then22.fold.split68
  ]

for.cond.preheader.if.then22_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.then22.fold.split:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.then22.fold.split68:                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.then22:                                        ; preds = %if.then22.fold.split68, %if.then22.fold.split, %for.cond.preheader.if.then22_crit_edge
  %arrayidx.lcssa = phi ptr [ @mt9v032_versions, %for.cond.preheader.if.then22_crit_edge ], [ getelementptr inbounds ([3 x %struct.mt9v032_model_version], ptr @mt9v032_versions, i32 0, i32 1), %if.then22.fold.split ], [ getelementptr inbounds ([3 x %struct.mt9v032_model_version], ptr @mt9v032_versions, i32 0, i32 2), %if.then22.fold.split68 ]
  %version24 = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 16
  %12 = ptrtoint ptr %version24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.lcssa, ptr %version24, align 4
  br label %for.end

for.end:                                          ; preds = %if.then22, %for.cond.preheader.for.end_crit_edge
  %version26 = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 16
  %13 = ptrtoint ptr %version26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %version26, align 4
  %cmp27 = icmp eq ptr %14, null
  br i1 %cmp27, label %do.end32, label %do.end37

do.end32:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %version, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %16) #10
  br label %cleanup

do.end37:                                         ; preds = %for.end
  %name = getelementptr inbounds %struct.mt9v032_model_version, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr, align 2
  %conv41 = zext i16 %20 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef %18, i32 noundef %conv41) #10
  %21 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_priv.i, align 4
  %pixel_rate.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pixel_rate.i, align 4
  %sysclk.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 17
  %25 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sysclk.i, align 4
  %hratio.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 4
  %27 = ptrtoint ptr %hratio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hratio.i, align 4
  %div.i = udiv i32 %26, %28
  %conv.i = zext i32 %div.i to i64
  %handler.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 2
  %29 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lock.i.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %32, i32 noundef 0) #7
  %call.i.i = call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %24, i64 noundef %conv.i) #7
  %33 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i4.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %lock.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lock.i4.i.i, align 4
  call void @mutex_unlock(ptr noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %do.end37.cleanup_crit_edge

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %do.end37.cleanup_crit_edge, %do.end32, %do.end14, %do.end6
  %retval.0 = phi i32 [ %call2, %do.end6 ], [ %call8, %do.end14 ], [ -19, %do.end32 ], [ %call8, %do.end37.cleanup_crit_edge ], [ %call8, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v032_open(ptr noundef %subdev, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i.not = icmp eq i16 %3, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_crop.exit_crit_edge, !prof !141

entry.v4l2_subdev_get_try_crop.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i, %entry.v4l2_subdev_get_try_crop.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %try_crop.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %try_crop.i, align 4
  %top = getelementptr %struct.v4l2_subdev_pad_config, ptr %5, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %top, align 4
  %width = getelementptr %struct.v4l2_subdev_pad_config, ptr %5, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 752, ptr %width, align 4
  %height = getelementptr %struct.v4l2_subdev_pad_config, ptr %5, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 480, ptr %height, align 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %12 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not.i22.not = icmp eq i16 %13, 0
  br i1 %cmp.not.i22.not, label %do.end.i23, label %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit_crit_edge, !prof !141

v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i23:                                       ; preds = %v4l2_subdev_get_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i23, %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit_crit_edge
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %model = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 15
  %16 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %model, align 4
  %color = getelementptr inbounds %struct.mt9v032_model_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %color to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %color, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  %spec.select = select i1 %tobool.not, i32 8202, i32 12298
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %15, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %20, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 752, ptr %15, align 4
  %height6 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 480, ptr %height6, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %15, i32 0, i32 3
  %24 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %15, i32 0, i32 4
  %25 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %colorspace, align 4
  %call7 = tail call i32 @mt9v032_set_power(ptr noundef %subdev, i32 noundef 1)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9v032_close(ptr noundef %subdev, ptr nocapture noundef readnone %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %power_lock.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %power_lock.i, i32 noundef 0) #7
  %power_count.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 9
  %0 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end9.i_crit_edge

entry.if.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clk.i.i.i = getelementptr inbounds %struct.mt9v032, ptr %subdev, i32 0, i32 11
  %2 = ptrtoint ptr %clk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i.i.i, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i, %entry.if.end9.i_crit_edge
  %4 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_count.i, align 4
  %add.i = add i32 %5, -1
  store i32 %add.i, ptr %power_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp13.i = icmp slt i32 %add.i, 0
  br i1 %cmp13.i, label %do.end.i, label %if.end9.i.mt9v032_set_power.exit_crit_edge, !prof !141

if.end9.i.mt9v032_set_power.exit_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v032_set_power.exit

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 868, i32 noundef 9, ptr noundef null) #7
  br label %mt9v032_set_power.exit

mt9v032_set_power.exit:                           ; preds = %do.end.i, %if.end9.i.mt9v032_set_power.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %power_lock.i) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !26, !27, !29, !30, !31, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !85, !87, !89, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__initcall__kmod_mt9v032__328_1306_mt9v032_driver_init6, !1, !"__initcall__kmod_mt9v032__328_1306_mt9v032_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/mt9v032.c", i32 1306, i32 1}
!2 = !{ptr @__exitcall_mt9v032_driver_exit, !1, !"__exitcall_mt9v032_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description329, !4, !"__UNIQUE_ID_description329", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/mt9v032.c", i32 1308, i32 1}
!5 = !{ptr @__UNIQUE_ID_author330, !6, !"__UNIQUE_ID_author330", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/mt9v032.c", i32 1309, i32 1}
!7 = !{ptr @__UNIQUE_ID_file331, !8, !"__UNIQUE_ID_file331", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/mt9v032.c", i32 1310, i32 1}
!9 = !{ptr @__UNIQUE_ID_license332, !8, !"__UNIQUE_ID_license332", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/mt9v032.c", i32 1298, i32 11}
!12 = !{ptr @mt9v032_driver, !13, !"mt9v032_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/mt9v032.c", i32 1296, i32 26}
!14 = !{ptr @mt9v032_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/mt9v032.c", i32 1059, i32 20}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/mt9v032.c", i32 1067, i32 62}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/mt9v032.c", i32 1072, i32 64}
!21 = !{ptr @mt9v032_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/media/i2c/mt9v032.c", i32 1077, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mt9v032_probe._key.5, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/mt9v032.c", i32 1081, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/mt9v032.c", i32 1144, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mt9v032_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @mt9v032_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/mt9v032.c", i32 1021, i32 30}
!37 = !{ptr @mt9v032_regmap_config, !38, !"mt9v032_regmap_config", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/mt9v032.c", i32 988, i32 35}
!39 = !{ptr @mt9v032_ctrl_ops, !40, !"mt9v032_ctrl_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/mt9v032.c", i32 744, i32 35}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/mt9v032.c", i32 749, i32 2}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/mt9v032.c", i32 750, i32 2}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/mt9v032.c", i32 751, i32 2}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/mt9v032.c", i32 752, i32 2}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/mt9v032.c", i32 753, i32 2}
!51 = !{ptr @mt9v032_test_pattern_menu, !52, !"mt9v032_test_pattern_menu", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/mt9v032.c", i32 748, i32 27}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/mt9v032.c", i32 760, i32 11}
!55 = !{ptr @mt9v032_test_pattern_color, !56, !"mt9v032_test_pattern_color", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/mt9v032.c", i32 756, i32 38}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/mt9v032.c", i32 773, i32 12}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/mt9v032.c", i32 783, i32 12}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/mt9v032.c", i32 793, i32 12}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/mt9v032.c", i32 803, i32 12}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/mt9v032.c", i32 813, i32 12}
!67 = !{ptr @mt9v032_aegc_controls, !68, !"mt9v032_aegc_controls", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/mt9v032.c", i32 768, i32 38}
!69 = !{ptr @mt9v032_subdev_ops, !70, !"mt9v032_subdev_ops", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/mt9v032.c", i32 976, i32 37}
!71 = !{ptr @mt9v032_subdev_core_ops, !72, !"mt9v032_subdev_core_ops", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/mt9v032.c", i32 959, i32 42}
!73 = !{ptr @mt9v032_subdev_video_ops, !74, !"mt9v032_subdev_video_ops", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/mt9v032.c", i32 963, i32 43}
!75 = !{ptr @mt9v032_subdev_pad_ops, !76, !"mt9v032_subdev_pad_ops", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/mt9v032.c", i32 967, i32 41}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/mt9v032.c", i32 483, i32 3}
!81 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mt9v032_configure_pixel_rate._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @mt9v032_configure_pixel_rate._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @mt9v032_subdev_internal_ops, !86, !"mt9v032_subdev_internal_ops", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/mt9v032.c", i32 982, i32 46}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/mt9v032.c", i32 887, i32 2}
!89 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @mt9v032_registered._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @mt9v032_registered._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/mt9v032.c", i32 892, i32 3}
!95 = !{ptr @mt9v032_registered._entry.31, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @mt9v032_registered._entry_ptr.33, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/mt9v032.c", i32 902, i32 3}
!99 = !{ptr @mt9v032_registered._entry.34, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @mt9v032_registered._entry_ptr.36, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/mt9v032.c", i32 914, i32 3}
!103 = !{ptr @mt9v032_registered._entry.37, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @mt9v032_registered._entry_ptr.39, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/mt9v032.c", i32 919, i32 2}
!107 = !{ptr @mt9v032_registered._entry.40, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @mt9v032_registered._entry_ptr.42, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/mt9v032.c", i32 179, i32 26}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/mt9v032.c", i32 180, i32 26}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/mt9v032.c", i32 181, i32 26}
!115 = !{ptr @mt9v032_versions, !116, !"mt9v032_versions", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/mt9v032.c", i32 178, i32 43}
!117 = !{ptr @mt9v032_of_match, !118, !"mt9v032_of_match", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/mt9v032.c", i32 1282, i32 34}
!119 = !{ptr @mt9v032_id, !120, !"mt9v032_id", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/mt9v032.c", i32 1268, i32 35}
!121 = !{ptr @mt9v032_models, !122, !"mt9v032_models", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/mt9v032.c", i32 1233, i32 40}
!123 = !{ptr @mt9v032_model_data, !124, !"mt9v032_model_data", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/mt9v032.c", i32 1207, i32 40}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/mt9v032.c", i32 826, i32 11}
!127 = !{ptr @mt9v032_aec_max_shutter_width, !128, !"mt9v032_aec_max_shutter_width", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/mt9v032.c", i32 822, i32 38}
!129 = !{ptr @mt9v034_aec_max_shutter_width, !130, !"mt9v034_aec_max_shutter_width", i1 false, i1 false}
!130 = !{!"../drivers/media/i2c/mt9v032.c", i32 834, i32 38}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i8 0, i8 2}
!141 = !{!"branch_weights", i32 1, i32 2000}
!142 = !{i32 0, i32 33}
!143 = !{!"branch_weights", i32 2000, i32 1}
!144 = !{!"auto-init"}
