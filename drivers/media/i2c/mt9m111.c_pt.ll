; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/mt9m111.c_pt.bc'
source_filename = "../drivers/media/i2c/mt9m111.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mt9m111_context = type { i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.mt9m111_mode_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mt9m111_datafmt = type { i32, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.mt9m111 = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.v4l2_rect, ptr, i32, i32, %struct.v4l2_fract, ptr, %struct.mutex, i32, ptr, i32, ptr, i8, i8, %struct.media_pad }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_mbus_config = type { i32, i32 }

@__initcall__kmod_mt9m111__309_1393_mt9m111_i2c_driver_init6 = internal global ptr @mt9m111_i2c_driver_init, section ".initcall6.init", align 4
@mt9m111_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @mt9m111_remove, ptr @mt9m111_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt9m111_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mt9m111_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mt9m111_i2c_driver_exit = internal global ptr @mt9m111_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description310 = internal constant [72 x i8] c"mt9m111.description=Micron/Aptina MT9M111/MT9M112/MT9M131 Camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [30 x i8] c"mt9m111.author=Robert Jarzmik\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [39 x i8] c"mt9m111.file=drivers/media/i2c/mt9m111\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [20 x i8] c"mt9m111.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt9m111\00", [24 x i8] zeroinitializer }, align 32
@mt9m111_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"micron,mt9m111\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt9m111_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mt9m111\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt9m111_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt9m111_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/mt9m111.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt9m111_probe._entry_ptr = internal global ptr @mt9m111_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@mt9m111_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1276, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regulator not found: %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mt9m111_probe._entry_ptr.11 = internal global ptr @mt9m111_probe._entry.8, section ".printk_index", align 4
@context_b = internal global { %struct.mt9m111_context, [46 x i8] } { %struct.mt9m111_context { i16 32, i16 5, i16 6, i16 416, i16 419, i16 417, i16 420, i16 411, i16 -26869 }, [46 x i8] zeroinitializer }, align 32
@mt9m111_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @mt9m111_subdev_core_ops, ptr null, ptr null, ptr @mt9m111_subdev_video_ops, ptr null, ptr null, ptr null, ptr @mt9m111_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@mt9m111_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mt9m111:1287:(&mt9m111->hdl)->_lock\00", [60 x i8] zeroinitializer }, align 32
@mt9m111_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @mt9m111_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@mt9m111_test_pattern_menu = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@mt9m111_mode_data = internal constant { [3 x %struct.mt9m111_mode_info], [44 x i8] } { [3 x %struct.mt9m111_mode_info] [%struct.mt9m111_mode_info { i32 1280, i32 1024, i32 1280, i32 1024, i32 8, i32 1024, i32 1036 }, %struct.mt9m111_mode_info { i32 1280, i32 1024, i32 1280, i32 1024, i32 15, i32 0, i32 1036 }, %struct.mt9m111_mode_info { i32 1280, i32 1024, i32 640, i32 512, i32 30, i32 1036, i32 1036 }], [44 x i8] zeroinitializer }, align 32
@mt9m111_colour_fmts = internal constant { [12 x %struct.mt9m111_datafmt], [32 x i8] } { [12 x %struct.mt9m111_datafmt] [%struct.mt9m111_datafmt { i32 8200, i32 8 }, %struct.mt9m111_datafmt { i32 8201, i32 8 }, %struct.mt9m111_datafmt { i32 8198, i32 8 }, %struct.mt9m111_datafmt { i32 8199, i32 8 }, %struct.mt9m111_datafmt { i32 4100, i32 8 }, %struct.mt9m111_datafmt { i32 4099, i32 8 }, %struct.mt9m111_datafmt { i32 4104, i32 8 }, %struct.mt9m111_datafmt { i32 4103, i32 8 }, %struct.mt9m111_datafmt { i32 4102, i32 8 }, %struct.mt9m111_datafmt { i32 4101, i32 8 }, %struct.mt9m111_datafmt { i32 12289, i32 8 }, %struct.mt9m111_datafmt { i32 12292, i32 8 }], [32 x i8] zeroinitializer }, align 32
@mt9m111_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&mt9m111->power_lock\00", [43 x i8] zeroinitializer }, align 32
@mt9m111_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9m111_g_register, ptr @mt9m111_s_register, ptr @mt9m111_s_power, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@mt9m111_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9m111_s_stream, ptr null, ptr @mt9m111_g_frame_interval, ptr @mt9m111_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mt9m111_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @mt9m111_init_cfg, ptr @mt9m111_enum_mbus_code, ptr null, ptr null, ptr @mt9m111_get_fmt, ptr @mt9m111_set_fmt, ptr @mt9m111_get_selection, ptr @mt9m111_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9m111_get_mbus_config, ptr null }, [60 x i8] zeroinitializer }, align 32
@mt9m111_reg_read.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt9m111_reg_read\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"read  reg.%03x -> %04x\0A\00", [40 x i8] zeroinitializer }, align 32
@mt9m111_reg_write.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt9m111_reg_write\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"write reg.%03x = %04x -> %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mt9m111_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 1000, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to resume the sensor: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt9m111_power_on\00", [47 x i8] zeroinitializer }, align 32
@mt9m111_power_on._entry_ptr = internal global ptr @mt9m111_power_on._entry, section ".printk_index", align 4
@mt9m111_set_pixfmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 609, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Pixel format not handled: %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt9m111_set_pixfmt\00", [45 x i8] zeroinitializer }, align 32
@mt9m111_set_pixfmt._entry_ptr = internal global ptr @mt9m111_set_pixfmt._entry, section ".printk_index", align 4
@context_a = internal global { %struct.mt9m111_context, [46 x i8] } { %struct.mt9m111_context { i16 33, i16 7, i16 8, i16 422, i16 425, i16 423, i16 426, i16 314, i16 -32768 }, [46 x i8] zeroinitializer }, align 32
@mt9m111_setup_geometry.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt9m111_setup_geometry\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(%x): %ux%u@%u:%u -> %ux%u = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mt9m111_find_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 716, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Framerate selection is not supported for cropped images\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt9m111_find_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt9m111_find_mode._entry_ptr = internal global ptr @mt9m111_find_mode._entry, section ".printk_index", align 4
@mt9m111_find_mode.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Framerates > 15fps are supported only for images not exceeding 640x512\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@mt9m111_set_fmt.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt9m111_set_fmt\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(): %ux%u, code=%x\0A\00", [42 x i8] zeroinitializer }, align 32
@mt9m111_set_colorfx.colorfx = internal constant { [5 x %struct.v4l2_control], [56 x i8] } { [5 x %struct.v4l2_control] [%struct.v4l2_control zeroinitializer, %struct.v4l2_control { i32 1, i32 1 }, %struct.v4l2_control { i32 2, i32 2 }, %struct.v4l2_control { i32 3, i32 3 }, %struct.v4l2_control { i32 13, i32 4 }], [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Vertical monochrome gradient\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Flat color type 1\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Flat color type 2\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Flat color type 3\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Flat color type 4\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Flat color type 5\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Color bar\00", [22 x i8] zeroinitializer }, align 32
@mt9m111_video_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 1199, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Detected a MT9M111/MT9M131 chip ID %x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt9m111_video_probe\00", [44 x i8] zeroinitializer }, align 32
@mt9m111_video_probe._entry_ptr = internal global ptr @mt9m111_video_probe._entry, section ".printk_index", align 4
@mt9m111_video_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 1202, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Detected a MT9M112 chip ID %x\0A\00", [33 x i8] zeroinitializer }, align 32
@mt9m111_video_probe._entry_ptr.43 = internal global ptr @mt9m111_video_probe._entry.41, section ".printk_index", align 4
@mt9m111_video_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.3, i32 1207, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"No MT9M111/MT9M112/MT9M131 chip detected register read %x\0A\00", [37 x i8] zeroinitializer }, align 32
@mt9m111_video_probe._entry_ptr.46 = internal global ptr @mt9m111_video_probe._entry.44, section ".printk_index", align 4
@mt9m111_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 971, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt9m111 init failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt9m111_init\00", [19 x i8] zeroinitializer }, align 32
@mt9m111_init._entry_ptr = internal global ptr @mt9m111_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5178, i64 5260]
@__sancov_gen_cov_switch_values.49 = internal global [14 x i64] [i64 12, i64 32, i64 4099, i64 4100, i64 4101, i64 4102, i64 4103, i64 4104, i64 8198, i64 8199, i64 8200, i64 8201, i64 12289, i64 12292]
@__sancov_gen_cov_switch_values.50 = internal global [14 x i64] [i64 12, i64 32, i64 4099, i64 4100, i64 4101, i64 4102, i64 4103, i64 4104, i64 8198, i64 8199, i64 8200, i64 8201, i64 12289, i64 12292]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 12289, i64 12292]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [9 x i64] [i64 7, i64 32, i64 9963788, i64 9963795, i64 9963796, i64 9963797, i64 9963807, i64 10094849, i64 10422531]
@__sancov_gen_cov_switch_values.54 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 13]
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"mt9m111_i2c_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1383, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1385, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"mt9m111_of_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1371, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"mt9m111_id\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1377, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1254, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1269, i32 44 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1273, i32 56 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1275, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [10 x i8] c"context_b\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 175, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"mt9m111_subdev_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1174, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1287, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"mt9m111_ctrl_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1040, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant [26 x i8] c"mt9m111_test_pattern_menu\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 848, i32 27 }
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"mt9m111_mode_data\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 253, i32 39 }
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c"mt9m111_colour_fmts\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 197, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1338, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [24 x i8] c"mt9m111_subdev_core_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1044, i32 42 }
@___asan_gen_.133 = private unnamed_addr constant [25 x i8] c"mt9m111_subdev_video_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1158, i32 43 }
@___asan_gen_.136 = private unnamed_addr constant [23 x i8] c"mt9m111_subdev_pad_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1164, i32 41 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 327, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 339, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1000, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 609, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [10 x i8] c"context_a\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 163, i32 31 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 423, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 714, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 722, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 998, i32 6 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 670, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [8 x i8] c"colorfx\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 870, i32 35 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 849, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 850, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 851, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 852, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 853, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 854, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 855, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 856, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1198, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1202, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1205, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [31 x i8] c"../drivers/media/i2c/mt9m111.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 971, i32 3 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_mt9m111_i2c_driver_exit, ptr @__initcall__kmod_mt9m111__309_1393_mt9m111_i2c_driver_init6, ptr @mt9m111_find_mode._entry, ptr @mt9m111_find_mode._entry_ptr, ptr @mt9m111_i2c_driver_exit, ptr @mt9m111_init._entry, ptr @mt9m111_init._entry_ptr, ptr @mt9m111_power_on._entry, ptr @mt9m111_power_on._entry_ptr, ptr @mt9m111_probe._entry, ptr @mt9m111_probe._entry.8, ptr @mt9m111_probe._entry_ptr, ptr @mt9m111_probe._entry_ptr.11, ptr @mt9m111_set_pixfmt._entry, ptr @mt9m111_set_pixfmt._entry_ptr, ptr @mt9m111_video_probe._entry, ptr @mt9m111_video_probe._entry.41, ptr @mt9m111_video_probe._entry.44, ptr @mt9m111_video_probe._entry_ptr, ptr @mt9m111_video_probe._entry_ptr.43, ptr @mt9m111_video_probe._entry_ptr.46, ptr @mt9m111_i2c_driver, ptr @.str, ptr @mt9m111_of_match, ptr @mt9m111_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @context_b, ptr @mt9m111_subdev_ops, ptr @mt9m111_probe._key, ptr @.str.12, ptr @mt9m111_ctrl_ops, ptr @mt9m111_test_pattern_menu, ptr @mt9m111_mode_data, ptr @mt9m111_colour_fmts, ptr @mt9m111_probe.__key, ptr @.str.13, ptr @mt9m111_subdev_core_ops, ptr @mt9m111_subdev_video_ops, ptr @mt9m111_subdev_pad_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @context_a, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @mt9m111_set_colorfx.colorfx, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_b to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_test_pattern_menu to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_mode_data to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_colour_fmts to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_set_pixfmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_a to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_find_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_set_colorfx.colorfx to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_video_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_video_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_video_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m111_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mt9m111_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt9m111_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @mt9m111_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m111_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #9
  %hdl = getelementptr inbounds %struct.mt9m111, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m111_probe(ptr noundef %client) #2 align 64 {
entry:
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 6291456
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 572, i32 noundef 3520) #9
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @dev_fwnode(ptr noundef %dev2) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.if.end15_crit_edge, label %if.then10

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10:                                        ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #9
  %6 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %7 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %bus_cfg.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %7, align 4
  %call.i164 = tail call ptr @dev_fwnode(ptr noundef %dev2) #9
  %call1.i = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %call.i164, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %mt9m111_probe_fw.exit.thread, label %if.end.i

mt9m111_probe_fw.exit.thread:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then10
  %call2.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call1.i, ptr noundef nonnull %bus_cfg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %mt9m111_probe_fw.exit.thread169, label %mt9m111_probe_fw.exit

mt9m111_probe_fw.exit.thread169:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %bus.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 2
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bus.i, align 4
  %pclk_sample.i = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 16
  %11 = trunc i32 %10 to i8
  %12 = ptrtoint ptr %pclk_sample.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %pclk_sample.i, align 1
  %13 = shl i8 %11, 1
  %bf.shl.i = and i8 %13, -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  store i8 %bf.set.i, ptr %pclk_sample.i, align 1
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #9
  br label %if.end15

mt9m111_probe_fw.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #9
  br label %cleanup

if.end15:                                         ; preds = %mt9m111_probe_fw.exit.thread169, %if.end6.if.end15_crit_edge
  %call17 = call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef nonnull @.str.6) #9
  %clk = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call17, ptr %clk, align 4
  %cmp.i165 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %call25 = call ptr @devm_regulator_get(ptr noundef %dev2, ptr noundef nonnull @.str.7) #9
  %regulator = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 14
  %16 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call25, ptr %regulator, align 4
  %cmp.i166 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %do.end31, label %if.end37

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.9, i32 noundef %17) #12
  %18 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regulator, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end23
  %ctx = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @context_b, ptr %ctx, align 4
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @mt9m111_subdev_ops) #9
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %or = or i32 %23, 12
  store i32 %or, ptr %flags, align 4
  %hdl = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 1
  %call39 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 7, ptr noundef nonnull @mt9m111_probe._key, ptr noundef nonnull @.str.12) #9
  %call41 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @mt9m111_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #9
  %call43 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @mt9m111_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #9
  %call45 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @mt9m111_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #9
  %call47 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @mt9m111_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 252, i64 noundef 1, i64 noundef 32) #9
  %gain = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call47, ptr %gain, align 4
  %call49 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl, ptr noundef nonnull @mt9m111_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #9
  %call51 = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %hdl, ptr noundef nonnull @mt9m111_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 7, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @mt9m111_test_pattern_menu) #9
  %call53 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl, ptr noundef nonnull @mt9m111_ctrl_ops, i32 noundef 9963807, i8 noundef zeroext 13, i64 noundef 4294959088, i8 noundef zeroext 0) #9
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %25 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 1, i32 9
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool57.not = icmp eq i32 %27, 0
  br i1 %tobool57.not, label %if.end61, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end61:                                         ; preds = %if.end37
  %pad = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 17
  %flags62 = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 17, i32 4
  %28 = ptrtoint ptr %flags62 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %flags62, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 131073, ptr %function, align 4
  %call67 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp = icmp slt i32 %call67, 0
  br i1 %cmp, label %if.end61.out_hdlfree_crit_edge, label %if.end69

if.end61.out_hdlfree_crit_edge:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_hdlfree

if.end69:                                         ; preds = %if.end61
  %current_mode = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 9
  %30 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr getelementptr inbounds ([3 x %struct.mt9m111_mode_info], ptr @mt9m111_mode_data, i32 0, i32 1), ptr %current_mode, align 4
  %frame_interval = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 8
  %31 = ptrtoint ptr %frame_interval to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %frame_interval, align 4
  %denominator = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 15, ptr %denominator, align 4
  %rect = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 4
  %33 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 26, ptr %rect, align 4
  %top = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %top, align 4
  %width = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1280, ptr %width, align 4
  %height = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1024, ptr %height, align 4
  %width77 = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %width77 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1280, ptr %width77, align 4
  %height80 = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 7
  %38 = ptrtoint ptr %height80 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1024, ptr %height80, align 4
  %fmt = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 12
  %39 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @mt9m111_colour_fmts, ptr %fmt, align 4
  %lastpage = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 13
  %40 = ptrtoint ptr %lastpage to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %lastpage, align 4
  %power_lock = getelementptr inbounds %struct.mt9m111, ptr %call.i, i32 0, i32 10
  call void @__mutex_init(ptr noundef %power_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @mt9m111_probe.__key) #9
  %call84 = call fastcc i32 @mt9m111_video_probe(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.end69.out_hdlfree_crit_edge, label %if.end87

if.end69.out_hdlfree_crit_edge:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_hdlfree

if.end87:                                         ; preds = %if.end69
  %dev90 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 14
  %41 = ptrtoint ptr %dev90 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev2, ptr %dev90, align 4
  %call92 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.end87.out_hdlfree_crit_edge, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end87.out_hdlfree_crit_edge:                   ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_hdlfree

out_hdlfree:                                      ; preds = %if.end87.out_hdlfree_crit_edge, %if.end69.out_hdlfree_crit_edge, %if.end61.out_hdlfree_crit_edge
  %ret.1 = phi i32 [ %call67, %if.end61.out_hdlfree_crit_edge ], [ %call84, %if.end69.out_hdlfree_crit_edge ], [ %call92, %if.end87.out_hdlfree_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  br label %cleanup

cleanup:                                          ; preds = %out_hdlfree, %if.end87.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %do.end31, %if.then20, %mt9m111_probe_fw.exit, %mt9m111_probe_fw.exit.thread, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %15, %if.then20 ], [ %20, %do.end31 ], [ %ret.1, %out_hdlfree ], [ -5, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call2.i, %mt9m111_probe_fw.exit ], [ %27, %if.end37.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ], [ -22, %mt9m111_probe_fw.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m111_video_probe(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @mt9m111_s_power(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %lastpage.i.i = getelementptr inbounds %struct.mt9m111, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lastpage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %if.end.if.then.i_crit_edge, label %if.end.i.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.end
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext -16, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then10.i.i, label %if.end.i.i.do.body.i_crit_edge

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %lastpage.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then10.i.i, %if.end.if.then.i_crit_edge
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i17.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #9
  %conv1.i.i = zext i16 %7 to i32
  %cond.i.i = select i1 %cmp.i17.i, i32 %call.i.i, i32 %conv1.i.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end.i.i.do.body.i_crit_edge
  %ret.0.i = phi i32 [ %cond.i.i, %if.then.i ], [ %call.i.i.i, %if.end.i.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_video_probe, %if.then7.i)) #9
          to label %mt9m111_reg_read.exit [label %if.then7.i], !srcloc !143

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef %ret.0.i) #9
  br label %mt9m111_reg_read.exit

mt9m111_reg_read.exit:                            ; preds = %if.then7.i, %do.body.i
  %8 = zext i32 %ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.0.i, label %do.end10 [
    i32 5178, label %do.end
    i32 5260, label %do.end6
  ]

do.end:                                           ; preds = %mt9m111_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef 5178) #12
  br label %sw.epilog

do.end6:                                          ; preds = %mt9m111_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.42, i32 noundef 5260) #12
  br label %sw.epilog

do.end10:                                         ; preds = %mt9m111_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.45, i32 noundef %ret.0.i) #12
  br label %done

sw.epilog:                                        ; preds = %do.end6, %do.end
  %call12 = tail call fastcc i32 @mt9m111_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %sw.epilog.done_crit_edge

sw.epilog.done_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end14:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %hdl = getelementptr inbounds %struct.mt9m111, ptr %1, i32 0, i32 1
  %call15 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #9
  br label %done

done:                                             ; preds = %if.end14, %sw.epilog.done_crit_edge, %do.end10
  %ret.0 = phi i32 [ -19, %do.end10 ], [ %call12, %sw.epilog.done_crit_edge ], [ %call15, %if.end14 ]
  %call17 = tail call i32 @mt9m111_s_power(ptr noundef %1, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m111_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 767, i64 %3)
  %cmp = icmp ugt i64 %3, 767
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %3 to i16
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %6 = lshr i16 %conv, 8
  %conv2.i.i = zext i16 %6 to i32
  %lastpage.i.i = getelementptr inbounds %struct.mt9m111, ptr %5, i32 0, i32 13
  %7 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lastpage.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv2.i.i)
  %cmp.i.i = icmp eq i32 %8, %conv2.i.i
  br i1 %cmp.i.i, label %if.end.if.then.i_crit_edge, label %if.end8.i.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end8.i.i:                                      ; preds = %if.end
  %9 = and i16 %conv, -256
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -16, i16 noundef zeroext %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then10.i.i, label %if.end8.i.i.do.body.i_crit_edge

if.end8.i.i.do.body.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv2.i.i, ptr %lastpage.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then10.i.i, %if.end.if.then.i_crit_edge
  %conv1.i = trunc i64 %3 to i8
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext %conv1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i17.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #9
  %conv1.i.i = zext i16 %11 to i32
  %cond.i.i = select i1 %cmp.i17.i, i32 %call.i.i, i32 %conv1.i.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end8.i.i.do.body.i_crit_edge
  %ret.0.i = phi i32 [ %cond.i.i, %if.then.i ], [ %call.i.i.i, %if.end8.i.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_g_register, %if.then7.i)) #9
          to label %mt9m111_reg_read.exit [label %if.then7.i], !srcloc !143

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %12 = trunc i64 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef %12, i32 noundef %ret.0.i) #9
  br label %mt9m111_reg_read.exit

mt9m111_reg_read.exit:                            ; preds = %if.then7.i, %do.body.i
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %13 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 2, ptr %size, align 1
  %conv4 = sext i32 %ret.0.i to i64
  %val5 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %14 = ptrtoint ptr %val5 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %conv4, ptr %val5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %ret.0.i)
  %cmp7 = icmp ugt i32 %ret.0.i, 65535
  %. = select i1 %cmp7, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %mt9m111_reg_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %mt9m111_reg_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m111_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 767, i64 %3)
  %cmp = icmp ugt i64 %3, 767
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %3 to i16
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %val, align 1
  %conv3 = trunc i64 %5 to i16
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %8 = lshr i16 %conv, 8
  %conv2.i.i = zext i16 %8 to i32
  %lastpage.i.i = getelementptr inbounds %struct.mt9m111, ptr %7, i32 0, i32 13
  %9 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lastpage.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv2.i.i)
  %cmp.i.i = icmp eq i32 %10, %conv2.i.i
  br i1 %cmp.i.i, label %if.end.if.then.i_crit_edge, label %if.end8.i.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end8.i.i:                                      ; preds = %if.end
  %11 = and i16 %conv, -256
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -16, i16 noundef zeroext %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then10.i.i, label %if.end8.i.i.do.body.i_crit_edge

if.end8.i.i.do.body.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv2.i.i, ptr %lastpage.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then10.i.i, %if.end.if.then.i_crit_edge
  %conv1.i = trunc i64 %3 to i8
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv3) #9
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext %conv1.i, i16 noundef zeroext %13) #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end8.i.i.do.body.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %if.then.i ], [ %call.i.i.i, %if.end8.i.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_s_register, %if.then7.i)) #9
          to label %mt9m111_reg_write.exit [label %if.then7.i], !srcloc !143

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %14 = trunc i64 %3 to i32
  %15 = trunc i64 %5 to i32
  %conv9.i = and i32 %15, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef %14, i32 noundef %conv9.i, i32 noundef %ret.0.i) #9
  br label %mt9m111_reg_write.exit

mt9m111_reg_write.exit:                           ; preds = %if.then7.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp5 = icmp slt i32 %ret.0.i, 0
  %. = select i1 %cmp5, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %mt9m111_reg_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %mt9m111_reg_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m111_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %power_lock = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %power_lock, i32 noundef 0) #9
  %power_count = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %lnot.ext)
  %cmp = icmp eq i32 %1, %lnot.ext
  br i1 %cmp, label %if.then, label %entry.if.then5_crit_edge

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then:                                          ; preds = %entry
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i.i, align 4
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %clk.i = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then2.clk_prepare_enable.exit.i_crit_edge

if.then2.clk_prepare_enable.exit.i_crit_edge:     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.then2
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.then2.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then2.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %clk_prepare_enable.exit.i.if.end35_crit_edge, label %clk_prepare_enable.exit.i.if.end.i_crit_edge

clk_prepare_enable.exit.i.if.end.i_crit_edge:     ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

clk_prepare_enable.exit.i.if.end35_crit_edge:     ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end.i:                                         ; preds = %clk_prepare_enable.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %regulator.i = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 14
  %6 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regulator.i, align 4
  %call2.i = tail call i32 @regulator_enable(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.out_clk_disable.i_crit_edge, label %if.end5.i

if.end.i.out_clk_disable.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clk_disable.i

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call fastcc i32 @mt9m111_resume(ptr noundef %sd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %out_regulator_disable.i, label %if.end5.i.if.then5_crit_edge

if.end5.i.if.then5_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

out_regulator_disable.i:                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regulator.i, align 4
  %call11.i = tail call i32 @regulator_disable(ptr noundef %9) #9
  br label %out_clk_disable.i

out_clk_disable.i:                                ; preds = %out_regulator_disable.i, %if.end.i.out_clk_disable.i_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.end.i.out_clk_disable.i_crit_edge ], [ %call6.i, %out_regulator_disable.i ]
  %10 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18, i32 noundef %ret.0.i) #12
  br label %if.end35

if.else:                                          ; preds = %if.then
  %gain.i.i = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 2
  %12 = ptrtoint ptr %gain.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gain.i.i, align 4
  %call1.i.i47 = tail call fastcc i32 @mt9m111_get_global_gain(ptr noundef %sd) #9
  %handler.i.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %handler.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handler.i.i.i.i, align 8
  %lock.i.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %lock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock.i.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %17, i32 noundef 0) #9
  %call.i.i.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %13, i32 noundef %call1.i.i47) #9
  %18 = ptrtoint ptr %handler.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handler.i.i.i.i, align 8
  %lock.i2.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %lock.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock.i2.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %21) #9
  %call3.i.i = tail call fastcc i32 @mt9m111_reg_set(ptr noundef %3, i16 noundef zeroext 13, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i48 = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i48, label %if.end.i.i49, label %if.else.mt9m111_power_off.exit_crit_edge

if.else.mt9m111_power_off.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt9m111_power_off.exit

if.end.i.i49:                                     ; preds = %if.else
  %call4.i.i = tail call fastcc i32 @mt9m111_reg_set(ptr noundef %3, i16 noundef zeroext 13, i16 noundef zeroext 52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then6.i.i, label %if.end.i.i49.mt9m111_power_off.exit_crit_edge

if.end.i.i49.mt9m111_power_off.exit_crit_edge:    ; preds = %if.end.i.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt9m111_power_off.exit

if.then6.i.i:                                     ; preds = %if.end.i.i49
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i.i = tail call fastcc i32 @mt9m111_reg_clear(ptr noundef %3, i16 noundef zeroext 13, i16 noundef zeroext 8) #9
  br label %mt9m111_power_off.exit

mt9m111_power_off.exit:                           ; preds = %if.then6.i.i, %if.end.i.i49.mt9m111_power_off.exit_crit_edge, %if.else.mt9m111_power_off.exit_crit_edge
  %regulator.i50 = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 14
  %22 = ptrtoint ptr %regulator.i50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regulator.i50, align 4
  %call1.i = tail call i32 @regulator_disable(ptr noundef %23) #9
  %clk.i51 = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 5
  %24 = ptrtoint ptr %clk.i51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk.i51, align 4
  tail call void @clk_disable(ptr noundef %25) #9
  tail call void @clk_unprepare(ptr noundef %25) #9
  br label %if.then5

if.then5:                                         ; preds = %mt9m111_power_off.exit, %if.end5.i.if.then5_crit_edge, %entry.if.then5_crit_edge
  %cond = select i1 %tobool.not, i32 -1, i32 1
  %26 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %power_count, align 4
  %add = add i32 %27, %cond
  store i32 %add, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9 = icmp slt i32 %add, 0
  br i1 %cmp9, label %do.end, label %if.then5.if.end35_crit_edge, !prof !144

if.then5.if.end35_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1033, i32 noundef 9, ptr noundef null) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.then5.if.end35_crit_edge, %out_clk_disable.i, %clk_prepare_enable.exit.i.if.end35_crit_edge
  %ret.054 = phi i32 [ 0, %if.then5.if.end35_crit_edge ], [ 0, %do.end ], [ %ret.0.i, %out_clk_disable.i ], [ %retval.0.i.i, %clk_prepare_enable.exit.i.if.end35_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %power_lock) #9
  ret i32 %ret.054
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m111_resume(ptr noundef %mt9m111) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %mt9m111, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %driver_data.i.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i.i.i.i, align 4
  %lastpage.i.i.i = getelementptr inbounds %struct.mt9m111, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %lastpage.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lastpage.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i.i, label %entry.if.then.i.i_crit_edge, label %if.end.i.i.i

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end.i.i.i:                                     ; preds = %entry
  %call.i.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -16, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then10.i.i.i, label %if.end.i.i.i.do.body.i.i_crit_edge

if.end.i.i.i.do.body.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %lastpage.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %lastpage.i.i.i, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then10.i.i.i, %entry.if.then.i.i_crit_edge
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 13, i16 noundef zeroext 2048) #9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i, %if.end.i.i.i.do.body.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i.i, %if.then.i.i ], [ %call.i.i.i.i, %if.end.i.i.i.do.body.i.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_resume, %if.then7.i.i)) #9
          to label %mt9m111_enable.exit [label %if.then7.i.i], !srcloc !143

if.then7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, i32 noundef 13, i32 noundef 8, i32 noundef %ret.0.i.i) #9
  br label %mt9m111_enable.exit

mt9m111_enable.exit:                              ; preds = %if.then7.i.i, %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool.not = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool.not, label %if.then, label %mt9m111_enable.exit.if.end4_crit_edge

mt9m111_enable.exit.if.end4_crit_edge:            ; preds = %mt9m111_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %mt9m111_enable.exit
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call fastcc i32 @mt9m111_reg_set(ptr noundef %8, i16 noundef zeroext 13, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end.i:                                         ; preds = %if.then
  %call2.i = tail call fastcc i32 @mt9m111_reg_set(ptr noundef %8, i16 noundef zeroext 13, i16 noundef zeroext 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end, label %if.end.i.if.end4_crit_edge

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end:                                           ; preds = %if.end.i
  %call5.i = tail call fastcc i32 @mt9m111_reg_clear(ptr noundef %8, i16 noundef zeroext 13, i16 noundef zeroext 33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool2.not = icmp eq i32 %call5.i, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mt9m111_restore_state(ptr noundef %mt9m111)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge, %if.end.i.if.end4_crit_edge, %if.then.if.end4_crit_edge, %mt9m111_enable.exit.if.end4_crit_edge
  %ret.012 = phi i32 [ 0, %if.then3 ], [ %call5.i, %if.end.if.end4_crit_edge ], [ %call1.i, %if.then.if.end4_crit_edge ], [ %call2.i, %if.end.i.if.end4_crit_edge ], [ %ret.0.i.i, %mt9m111_enable.exit.if.end4_crit_edge ]
  ret i32 %ret.012
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt9m111_restore_state(ptr noundef %mt9m111) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %mt9m111, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %ctx = getelementptr inbounds %struct.mt9m111, ptr %mt9m111, i32 0, i32 3
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %control.i = getelementptr inbounds %struct.mt9m111_context, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %control.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %control.i, align 2
  %driver_data.i.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i.i.i.i, align 4
  %lastpage.i.i.i = getelementptr inbounds %struct.mt9m111, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %lastpage.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lastpage.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i.i, label %entry.if.then.i.i_crit_edge, label %if.end.i.i.i

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end.i.i.i:                                     ; preds = %entry
  %call.i.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -16, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then10.i.i.i, label %if.end.i.i.i.do.body.i.i_crit_edge

if.end.i.i.i.do.body.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %lastpage.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %lastpage.i.i.i, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then10.i.i.i, %entry.if.then.i.i_crit_edge
  %11 = tail call i16 @llvm.bswap.i16(i16 %5) #9
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -56, i16 noundef zeroext %11) #9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i, %if.end.i.i.i.do.body.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i.i, %if.then.i.i ], [ %call.i.i.i.i, %if.end.i.i.i.do.body.i.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_restore_state, %if.then7.i.i)) #9
          to label %mt9m111_set_context.exit [label %if.then7.i.i], !srcloc !143

if.then7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv9.i.i = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, i32 noundef 200, i32 noundef %conv9.i.i, i32 noundef %ret.0.i.i) #9
  br label %mt9m111_set_context.exit

mt9m111_set_context.exit:                         ; preds = %if.then7.i.i, %do.body.i.i
  %fmt = getelementptr inbounds %struct.mt9m111, ptr %mt9m111, i32 0, i32 12
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %call2 = tail call fastcc i32 @mt9m111_set_pixfmt(ptr noundef %mt9m111, i32 noundef %15)
  %rect = getelementptr inbounds %struct.mt9m111, ptr %mt9m111, i32 0, i32 4
  %width = getelementptr inbounds %struct.mt9m111, ptr %mt9m111, i32 0, i32 6
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.mt9m111, ptr %mt9m111, i32 0, i32 7
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fmt, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %call5 = tail call fastcc i32 @mt9m111_setup_geometry(ptr noundef %mt9m111, ptr noundef %rect, i32 noundef %17, i32 noundef %19, i32 noundef %23)
  %hdl = getelementptr inbounds %struct.mt9m111, ptr %mt9m111, i32 0, i32 1
  %call6 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #9
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 2
  %current_mode = getelementptr inbounds %struct.mt9m111, ptr %mt9m111, i32 0, i32 9
  %28 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %current_mode, align 4
  %reg_val = getelementptr inbounds %struct.mt9m111_mode_info, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_val, align 4
  %conv = trunc i32 %31 to i16
  %reg_mask = getelementptr inbounds %struct.mt9m111_mode_info, ptr %29, i32 0, i32 6
  %32 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_mask, align 4
  %conv9 = trunc i32 %33 to i16
  %call10 = tail call fastcc i32 @mt9m111_reg_mask(ptr noundef %1, i16 noundef zeroext %27, i16 noundef zeroext %conv, i16 noundef zeroext %conv9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m111_reg_set(ptr noundef %client, i16 noundef zeroext %reg, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %2 = lshr i16 %reg, 8
  %conv2.i.i = zext i16 %2 to i32
  %lastpage.i.i = getelementptr inbounds %struct.mt9m111, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lastpage.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv2.i.i)
  %cmp.i.i = icmp eq i32 %4, %conv2.i.i
  br i1 %cmp.i.i, label %entry.if.then.i_crit_edge, label %if.end.i.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %reg)
  %cmp5.i.i = icmp ugt i16 %reg, 767
  br i1 %cmp5.i.i, label %if.end.i.i.do.body.i_crit_edge, label %if.end8.i.i

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %5 = and i16 %reg, -256
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext -16, i16 noundef zeroext %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then10.i.i, label %if.end8.i.i.do.body.i_crit_edge

if.end8.i.i.do.body.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv2.i.i, ptr %lastpage.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then10.i.i, %entry.if.then.i_crit_edge
  %conv1.i = trunc i16 %reg to i8
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext %conv1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i17.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #9
  %conv1.i.i = zext i16 %7 to i32
  %cond.i.i = select i1 %cmp.i17.i, i32 %call.i.i, i32 %conv1.i.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end8.i.i.do.body.i_crit_edge, %if.end.i.i.do.body.i_crit_edge
  %ret.0.i = phi i32 [ %cond.i.i, %if.then.i ], [ -22, %if.end.i.i.do.body.i_crit_edge ], [ %call.i.i.i, %if.end8.i.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_reg_set, %if.then7.i)) #9
          to label %mt9m111_reg_read.exit [label %if.then7.i], !srcloc !143

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv8.i = zext i16 %reg to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef %conv8.i, i32 noundef %ret.0.i) #9
  br label %mt9m111_reg_read.exit

mt9m111_reg_read.exit:                            ; preds = %if.then7.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp = icmp sgt i32 %ret.0.i, -1
  br i1 %cmp, label %if.then, label %mt9m111_reg_read.exit.if.end_crit_edge

mt9m111_reg_read.exit.if.end_crit_edge:           ; preds = %mt9m111_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mt9m111_reg_read.exit
  %8 = trunc i32 %ret.0.i to i16
  %conv1 = or i16 %8, %data
  %9 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %lastpage.i.i9 = getelementptr inbounds %struct.mt9m111, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %lastpage.i.i9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lastpage.i.i9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv2.i.i)
  %cmp.i.i10 = icmp eq i32 %12, %conv2.i.i
  br i1 %cmp.i.i10, label %if.then.if.then.i19_crit_edge, label %if.end.i.i12

if.then.if.then.i19_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i19

if.end.i.i12:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %reg)
  %cmp5.i.i11 = icmp ugt i16 %reg, 767
  br i1 %cmp5.i.i11, label %if.end.i.i12.do.body.i21_crit_edge, label %if.end8.i.i15

if.end.i.i12.do.body.i21_crit_edge:               ; preds = %if.end.i.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i21

if.end8.i.i15:                                    ; preds = %if.end.i.i12
  %13 = and i16 %reg, -256
  %call.i.i.i13 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext -16, i16 noundef zeroext %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i13)
  %tobool.not.i.i14 = icmp eq i32 %call.i.i.i13, 0
  br i1 %tobool.not.i.i14, label %if.then10.i.i16, label %if.end8.i.i15.do.body.i21_crit_edge

if.end8.i.i15.do.body.i21_crit_edge:              ; preds = %if.end8.i.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i21

if.then10.i.i16:                                  ; preds = %if.end8.i.i15
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %lastpage.i.i9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv2.i.i, ptr %lastpage.i.i9, align 4
  br label %if.then.i19

if.then.i19:                                      ; preds = %if.then10.i.i16, %if.then.if.then.i19_crit_edge
  %conv1.i17 = trunc i16 %reg to i8
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv1) #9
  %call.i.i18 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext %conv1.i17, i16 noundef zeroext %15) #9
  br label %do.body.i21

do.body.i21:                                      ; preds = %if.then.i19, %if.end8.i.i15.do.body.i21_crit_edge, %if.end.i.i12.do.body.i21_crit_edge
  %ret.0.i20 = phi i32 [ %call.i.i18, %if.then.i19 ], [ -22, %if.end.i.i12.do.body.i21_crit_edge ], [ %call.i.i.i13, %if.end8.i.i15.do.body.i21_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_reg_set, %if.then7.i24)) #9
          to label %if.end [label %if.then7.i24], !srcloc !143

if.then7.i24:                                     ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i22 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv8.i23 = zext i16 %reg to i32
  %conv9.i = zext i16 %conv1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i22, ptr noundef nonnull @.str.17, i32 noundef %conv8.i23, i32 noundef %conv9.i, i32 noundef %ret.0.i20) #9
  br label %if.end

if.end:                                           ; preds = %if.then7.i24, %do.body.i21, %mt9m111_reg_read.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %ret.0.i, %mt9m111_reg_read.exit.if.end_crit_edge ], [ %ret.0.i20, %do.body.i21 ], [ %ret.0.i20, %if.then7.i24 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m111_reg_clear(ptr noundef %client, i16 noundef zeroext %reg, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %2 = lshr i16 %reg, 8
  %conv2.i.i = zext i16 %2 to i32
  %lastpage.i.i = getelementptr inbounds %struct.mt9m111, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lastpage.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv2.i.i)
  %cmp.i.i = icmp eq i32 %4, %conv2.i.i
  br i1 %cmp.i.i, label %entry.if.then.i_crit_edge, label %if.end.i.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %reg)
  %cmp5.i.i = icmp ugt i16 %reg, 767
  br i1 %cmp5.i.i, label %if.end.i.i.do.body.i_crit_edge, label %if.end8.i.i

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %5 = and i16 %reg, -256
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext -16, i16 noundef zeroext %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then10.i.i, label %if.end8.i.i.do.body.i_crit_edge

if.end8.i.i.do.body.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv2.i.i, ptr %lastpage.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then10.i.i, %entry.if.then.i_crit_edge
  %conv1.i = trunc i16 %reg to i8
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext %conv1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i17.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #9
  %conv1.i.i = zext i16 %7 to i32
  %cond.i.i = select i1 %cmp.i17.i, i32 %call.i.i, i32 %conv1.i.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end8.i.i.do.body.i_crit_edge, %if.end.i.i.do.body.i_crit_edge
  %ret.0.i = phi i32 [ %cond.i.i, %if.then.i ], [ -22, %if.end.i.i.do.body.i_crit_edge ], [ %call.i.i.i, %if.end8.i.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_reg_clear, %if.then7.i)) #9
          to label %mt9m111_reg_read.exit [label %if.then7.i], !srcloc !143

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv8.i = zext i16 %reg to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef %conv8.i, i32 noundef %ret.0.i) #9
  br label %mt9m111_reg_read.exit

mt9m111_reg_read.exit:                            ; preds = %if.then7.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp = icmp sgt i32 %ret.0.i, -1
  br i1 %cmp, label %if.then, label %mt9m111_reg_read.exit.if.end_crit_edge

mt9m111_reg_read.exit.if.end_crit_edge:           ; preds = %mt9m111_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mt9m111_reg_read.exit
  %conv = zext i16 %data to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %ret.0.i, %neg
  %conv1 = trunc i32 %and to i16
  %8 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %lastpage.i.i9 = getelementptr inbounds %struct.mt9m111, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %lastpage.i.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lastpage.i.i9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv2.i.i)
  %cmp.i.i10 = icmp eq i32 %11, %conv2.i.i
  br i1 %cmp.i.i10, label %if.then.if.then.i19_crit_edge, label %if.end.i.i12

if.then.if.then.i19_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i19

if.end.i.i12:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %reg)
  %cmp5.i.i11 = icmp ugt i16 %reg, 767
  br i1 %cmp5.i.i11, label %if.end.i.i12.do.body.i21_crit_edge, label %if.end8.i.i15

if.end.i.i12.do.body.i21_crit_edge:               ; preds = %if.end.i.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i21

if.end8.i.i15:                                    ; preds = %if.end.i.i12
  %12 = and i16 %reg, -256
  %call.i.i.i13 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext -16, i16 noundef zeroext %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i13)
  %tobool.not.i.i14 = icmp eq i32 %call.i.i.i13, 0
  br i1 %tobool.not.i.i14, label %if.then10.i.i16, label %if.end8.i.i15.do.body.i21_crit_edge

if.end8.i.i15.do.body.i21_crit_edge:              ; preds = %if.end8.i.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i21

if.then10.i.i16:                                  ; preds = %if.end8.i.i15
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %lastpage.i.i9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv2.i.i, ptr %lastpage.i.i9, align 4
  br label %if.then.i19

if.then.i19:                                      ; preds = %if.then10.i.i16, %if.then.if.then.i19_crit_edge
  %conv1.i17 = trunc i16 %reg to i8
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv1) #9
  %call.i.i18 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext %conv1.i17, i16 noundef zeroext %14) #9
  br label %do.body.i21

do.body.i21:                                      ; preds = %if.then.i19, %if.end8.i.i15.do.body.i21_crit_edge, %if.end.i.i12.do.body.i21_crit_edge
  %ret.0.i20 = phi i32 [ %call.i.i18, %if.then.i19 ], [ -22, %if.end.i.i12.do.body.i21_crit_edge ], [ %call.i.i.i13, %if.end8.i.i15.do.body.i21_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_reg_clear, %if.then7.i24)) #9
          to label %if.end [label %if.then7.i24], !srcloc !143

if.then7.i24:                                     ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i22 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv8.i23 = zext i16 %reg to i32
  %conv9.i = and i32 %and, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i22, ptr noundef nonnull @.str.17, i32 noundef %conv8.i23, i32 noundef %conv9.i, i32 noundef %ret.0.i20) #9
  br label %if.end

if.end:                                           ; preds = %if.then7.i24, %do.body.i21, %mt9m111_reg_read.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %ret.0.i, %mt9m111_reg_read.exit.if.end_crit_edge ], [ %ret.0.i20, %do.body.i21 ], [ %ret.0.i20, %if.then7.i24 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m111_set_pixfmt(ptr nocapture noundef readonly %mt9m111, i32 noundef %code) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %mt9m111, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %code, label %do.end [
    i32 12289, label %entry.sw.epilog_crit_edge
    i32 12292, label %sw.bb1
    i32 4100, label %sw.bb2
    i32 4099, label %sw.bb3
    i32 4104, label %sw.bb4
    i32 4103, label %sw.bb5
    i32 4101, label %sw.bb6
    i32 4102, label %sw.bb7
    i32 8198, label %sw.bb8
    i32 8199, label %sw.bb9
    i32 8200, label %sw.bb10
    i32 8201, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %code) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %data_outfmt2.0 = phi i16 [ 3, %sw.bb11 ], [ 2, %sw.bb10 ], [ 1, %sw.bb9 ], [ 0, %sw.bb8 ], [ 259, %sw.bb7 ], [ 257, %sw.bb6 ], [ 256, %sw.bb5 ], [ 258, %sw.bb4 ], [ 320, %sw.bb3 ], [ 322, %sw.bb2 ], [ 1280, %sw.bb1 ], [ 16640, %entry.sw.epilog_crit_edge ]
  %pclk_sample = getelementptr inbounds %struct.mt9m111, ptr %mt9m111, i32 0, i32 16
  %3 = ptrtoint ptr %pclk_sample to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %pclk_sample, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp = icmp sgt i8 %bf.load, -1
  %spec.select = select i1 %cmp, i16 18371, i16 17859
  %4 = load i16, ptr getelementptr inbounds (%struct.mt9m111_context, ptr @context_a, i32 0, i32 7), align 2
  %call13 = tail call fastcc i32 @mt9m111_reg_mask(ptr noundef %1, i16 noundef zeroext %4, i16 noundef zeroext %data_outfmt2.0, i16 noundef zeroext %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then14, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %5 = load i16, ptr getelementptr inbounds (%struct.mt9m111_context, ptr @context_b, i32 0, i32 7), align 2
  %call15 = tail call fastcc i32 @mt9m111_reg_mask(ptr noundef %1, i16 noundef zeroext %5, i16 noundef zeroext %data_outfmt2.0, i16 noundef zeroext %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call13, %sw.epilog.cleanup_crit_edge ], [ %call15, %if.then14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m111_setup_geometry(ptr nocapture noundef readonly %mt9m111, ptr nocapture noundef readonly %rect, i32 noundef %width, i32 noundef %height, i32 noundef %code) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %mt9m111, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rect, align 4
  %conv = trunc i32 %3 to i16
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %lastpage.i.i = getelementptr inbounds %struct.mt9m111, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lastpage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i, label %entry.if.then.i_crit_edge, label %if.end.i.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -16, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then10.i.i, label %if.end.i.i.do.body.i_crit_edge

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %lastpage.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then10.i.i, %entry.if.then.i_crit_edge
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv) #9
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext %9) #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end.i.i.do.body.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %if.then.i ], [ %call.i.i.i, %if.end.i.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_setup_geometry, %if.then7.i)) #9
          to label %mt9m111_reg_write.exit [label %if.then7.i], !srcloc !143

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv9.i = and i32 %3, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef 2, i32 noundef %conv9.i, i32 noundef %ret.0.i) #9
  br label %mt9m111_reg_write.exit

mt9m111_reg_write.exit:                           ; preds = %if.then7.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %if.then, label %mt9m111_reg_write.exit.do.body_crit_edge

mt9m111_reg_write.exit.do.body_crit_edge:         ; preds = %mt9m111_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %mt9m111_reg_write.exit
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %top, align 4
  %conv2 = trunc i32 %11 to i16
  %12 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %lastpage.i.i64 = getelementptr inbounds %struct.mt9m111, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %lastpage.i.i64 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lastpage.i.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i65 = icmp eq i32 %15, 0
  br i1 %cmp.i.i65, label %if.then.if.then.i71_crit_edge, label %if.end.i.i66

if.then.if.then.i71_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i71

if.end.i.i66:                                     ; preds = %if.then
  %call.i.i.i67 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -16, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i67)
  %tobool.not.i.i68 = icmp eq i32 %call.i.i.i67, 0
  br i1 %tobool.not.i.i68, label %if.then10.i.i69, label %if.end.i.i66.do.body.i73_crit_edge

if.end.i.i66.do.body.i73_crit_edge:               ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i73

if.then10.i.i69:                                  ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %lastpage.i.i64 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %lastpage.i.i64, align 4
  br label %if.then.i71

if.then.i71:                                      ; preds = %if.then10.i.i69, %if.then.if.then.i71_crit_edge
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv2) #9
  %call.i.i70 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext %17) #9
  br label %do.body.i73

do.body.i73:                                      ; preds = %if.then.i71, %if.end.i.i66.do.body.i73_crit_edge
  %ret.0.i72 = phi i32 [ %call.i.i70, %if.then.i71 ], [ %call.i.i.i67, %if.end.i.i66.do.body.i73_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_setup_geometry, %if.then7.i76)) #9
          to label %if.end [label %if.then7.i76], !srcloc !143

if.then7.i76:                                     ; preds = %do.body.i73
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i74 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv9.i75 = and i32 %11, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i74, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef %conv9.i75, i32 noundef %ret.0.i72) #9
  br label %if.end

if.end:                                           ; preds = %if.then7.i76, %do.body.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i72)
  %tobool4.not = icmp eq i32 %ret.0.i72, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then5:                                         ; preds = %if.end
  %width6 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 2
  %18 = ptrtoint ptr %width6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width6, align 4
  %conv7 = trunc i32 %19 to i16
  %20 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %lastpage.i.i79 = getelementptr inbounds %struct.mt9m111, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %lastpage.i.i79 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lastpage.i.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i80 = icmp eq i32 %23, 0
  br i1 %cmp.i.i80, label %if.then5.if.then.i86_crit_edge, label %if.end.i.i81

if.then5.if.then.i86_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i86

if.end.i.i81:                                     ; preds = %if.then5
  %call.i.i.i82 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -16, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i82)
  %tobool.not.i.i83 = icmp eq i32 %call.i.i.i82, 0
  br i1 %tobool.not.i.i83, label %if.then10.i.i84, label %if.end.i.i81.do.body.i88_crit_edge

if.end.i.i81.do.body.i88_crit_edge:               ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i88

if.then10.i.i84:                                  ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %lastpage.i.i79 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %lastpage.i.i79, align 4
  br label %if.then.i86

if.then.i86:                                      ; preds = %if.then10.i.i84, %if.then5.if.then.i86_crit_edge
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv7) #9
  %call.i.i85 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 4, i16 noundef zeroext %25) #9
  br label %do.body.i88

do.body.i88:                                      ; preds = %if.then.i86, %if.end.i.i81.do.body.i88_crit_edge
  %ret.0.i87 = phi i32 [ %call.i.i85, %if.then.i86 ], [ %call.i.i.i82, %if.end.i.i81.do.body.i88_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_setup_geometry, %if.then7.i91)) #9
          to label %if.end9 [label %if.then7.i91], !srcloc !143

if.then7.i91:                                     ; preds = %do.body.i88
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i89 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv9.i90 = and i32 %19, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i89, ptr noundef nonnull @.str.17, i32 noundef 4, i32 noundef %conv9.i90, i32 noundef %ret.0.i87) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7.i91, %do.body.i88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i87)
  %tobool10.not = icmp eq i32 %ret.0.i87, 0
  br i1 %tobool10.not, label %if.then11, label %if.end9.do.body_crit_edge

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then11:                                        ; preds = %if.end9
  %height12 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 3
  %26 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height12, align 4
  %conv13 = trunc i32 %27 to i16
  %28 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %lastpage.i.i94 = getelementptr inbounds %struct.mt9m111, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %lastpage.i.i94 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lastpage.i.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i95 = icmp eq i32 %31, 0
  br i1 %cmp.i.i95, label %if.then11.if.then.i101_crit_edge, label %if.end.i.i96

if.then11.if.then.i101_crit_edge:                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i101

if.end.i.i96:                                     ; preds = %if.then11
  %call.i.i.i97 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -16, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i97)
  %tobool.not.i.i98 = icmp eq i32 %call.i.i.i97, 0
  br i1 %tobool.not.i.i98, label %if.then10.i.i99, label %if.end.i.i96.do.body.i103_crit_edge

if.end.i.i96.do.body.i103_crit_edge:              ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i103

if.then10.i.i99:                                  ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %lastpage.i.i94 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %lastpage.i.i94, align 4
  br label %if.then.i101

if.then.i101:                                     ; preds = %if.then10.i.i99, %if.then11.if.then.i101_crit_edge
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv13) #9
  %call.i.i100 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 3, i16 noundef zeroext %33) #9
  br label %do.body.i103

do.body.i103:                                     ; preds = %if.then.i101, %if.end.i.i96.do.body.i103_crit_edge
  %ret.0.i102 = phi i32 [ %call.i.i100, %if.then.i101 ], [ %call.i.i.i97, %if.end.i.i96.do.body.i103_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_setup_geometry, %if.then7.i106)) #9
          to label %if.end15 [label %if.then7.i106], !srcloc !143

if.then7.i106:                                    ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i104 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv9.i105 = and i32 %27, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i104, ptr noundef nonnull @.str.17, i32 noundef 3, i32 noundef %conv9.i105, i32 noundef %ret.0.i102) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then7.i106, %do.body.i103
  call void @__sanitizer_cov_trace_const_cmp4(i32 12292, i32 %code)
  %cmp.not = icmp ne i32 %code, 12292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i102)
  %tobool18.not = icmp eq i32 %ret.0.i102, 0
  %or.cond = select i1 %cmp.not, i1 %tobool18.not, i1 false
  br i1 %or.cond, label %if.end21, label %if.end15.do.body_crit_edge

if.end15.do.body_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end21:                                         ; preds = %if.end15
  %call20 = tail call fastcc i32 @mt9m111_setup_rect_ctx(ptr noundef %mt9m111, ptr noundef nonnull @context_b, ptr noundef %rect, i32 noundef %width, i32 noundef %height)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool22.not = icmp eq i32 %call20, 0
  br i1 %tobool22.not, label %if.then23, label %if.end21.do.body_crit_edge

if.end21.do.body_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call fastcc i32 @mt9m111_setup_rect_ctx(ptr noundef %mt9m111, ptr noundef nonnull @context_a, ptr noundef %rect, i32 noundef %width, i32 noundef %height)
  br label %do.body

do.body:                                          ; preds = %if.then23, %if.end21.do.body_crit_edge, %if.end15.do.body_crit_edge, %if.end9.do.body_crit_edge, %if.end.do.body_crit_edge, %mt9m111_reg_write.exit.do.body_crit_edge
  %ret.4 = phi i32 [ %call20, %if.end21.do.body_crit_edge ], [ %call24, %if.then23 ], [ %ret.0.i102, %if.end15.do.body_crit_edge ], [ %ret.0.i, %mt9m111_reg_write.exit.do.body_crit_edge ], [ %ret.0.i72, %if.end.do.body_crit_edge ], [ %ret.0.i87, %if.end9.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_setup_geometry.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_setup_geometry, %if.then31)) #9
          to label %do.end [label %if.then31], !srcloc !143

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %width32 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 2
  %34 = ptrtoint ptr %width32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width32, align 4
  %height33 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 3
  %36 = ptrtoint ptr %height33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height33, align 4
  %38 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rect, align 4
  %top35 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 1
  %40 = ptrtoint ptr %top35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %top35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_setup_geometry.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %code, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %width, i32 noundef %height, i32 noundef %ret.4) #9
  br label %do.end

do.end:                                           ; preds = %if.then31, %do.body
  ret i32 %ret.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m111_reg_mask(ptr noundef %client, i16 noundef zeroext %reg, i16 noundef zeroext %data, i16 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %2 = lshr i16 %reg, 8
  %conv2.i.i = zext i16 %2 to i32
  %lastpage.i.i = getelementptr inbounds %struct.mt9m111, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lastpage.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv2.i.i)
  %cmp.i.i = icmp eq i32 %4, %conv2.i.i
  br i1 %cmp.i.i, label %entry.if.then.i_crit_edge, label %if.end.i.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %reg)
  %cmp5.i.i = icmp ugt i16 %reg, 767
  br i1 %cmp5.i.i, label %if.end.i.i.do.body.i_crit_edge, label %if.end8.i.i

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %5 = and i16 %reg, -256
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext -16, i16 noundef zeroext %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then10.i.i, label %if.end8.i.i.do.body.i_crit_edge

if.end8.i.i.do.body.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv2.i.i, ptr %lastpage.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then10.i.i, %entry.if.then.i_crit_edge
  %conv1.i = trunc i16 %reg to i8
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext %conv1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i17.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #9
  %conv1.i.i = zext i16 %7 to i32
  %cond.i.i = select i1 %cmp.i17.i, i32 %call.i.i, i32 %conv1.i.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end8.i.i.do.body.i_crit_edge, %if.end.i.i.do.body.i_crit_edge
  %ret.0.i = phi i32 [ %cond.i.i, %if.then.i ], [ -22, %if.end.i.i.do.body.i_crit_edge ], [ %call.i.i.i, %if.end8.i.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_reg_mask, %if.then7.i)) #9
          to label %mt9m111_reg_read.exit [label %if.then7.i], !srcloc !143

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv8.i = zext i16 %reg to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef %conv8.i, i32 noundef %ret.0.i) #9
  br label %mt9m111_reg_read.exit

mt9m111_reg_read.exit:                            ; preds = %if.then7.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp = icmp sgt i32 %ret.0.i, -1
  br i1 %cmp, label %if.then, label %mt9m111_reg_read.exit.if.end_crit_edge

mt9m111_reg_read.exit.if.end_crit_edge:           ; preds = %mt9m111_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mt9m111_reg_read.exit
  %conv = zext i16 %mask to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %ret.0.i, %neg
  %8 = trunc i32 %and to i16
  %conv2 = or i16 %8, %data
  %9 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %lastpage.i.i10 = getelementptr inbounds %struct.mt9m111, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %lastpage.i.i10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lastpage.i.i10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv2.i.i)
  %cmp.i.i11 = icmp eq i32 %12, %conv2.i.i
  br i1 %cmp.i.i11, label %if.then.if.then.i20_crit_edge, label %if.end.i.i13

if.then.if.then.i20_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i20

if.end.i.i13:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %reg)
  %cmp5.i.i12 = icmp ugt i16 %reg, 767
  br i1 %cmp5.i.i12, label %if.end.i.i13.do.body.i22_crit_edge, label %if.end8.i.i16

if.end.i.i13.do.body.i22_crit_edge:               ; preds = %if.end.i.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i22

if.end8.i.i16:                                    ; preds = %if.end.i.i13
  %13 = and i16 %reg, -256
  %call.i.i.i14 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext -16, i16 noundef zeroext %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i14)
  %tobool.not.i.i15 = icmp eq i32 %call.i.i.i14, 0
  br i1 %tobool.not.i.i15, label %if.then10.i.i17, label %if.end8.i.i16.do.body.i22_crit_edge

if.end8.i.i16.do.body.i22_crit_edge:              ; preds = %if.end8.i.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i22

if.then10.i.i17:                                  ; preds = %if.end8.i.i16
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %lastpage.i.i10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv2.i.i, ptr %lastpage.i.i10, align 4
  br label %if.then.i20

if.then.i20:                                      ; preds = %if.then10.i.i17, %if.then.if.then.i20_crit_edge
  %conv1.i18 = trunc i16 %reg to i8
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv2) #9
  %call.i.i19 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext %conv1.i18, i16 noundef zeroext %15) #9
  br label %do.body.i22

do.body.i22:                                      ; preds = %if.then.i20, %if.end8.i.i16.do.body.i22_crit_edge, %if.end.i.i13.do.body.i22_crit_edge
  %ret.0.i21 = phi i32 [ %call.i.i19, %if.then.i20 ], [ -22, %if.end.i.i13.do.body.i22_crit_edge ], [ %call.i.i.i14, %if.end8.i.i16.do.body.i22_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_reg_mask, %if.then7.i25)) #9
          to label %if.end [label %if.then7.i25], !srcloc !143

if.then7.i25:                                     ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i23 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv8.i24 = zext i16 %reg to i32
  %conv9.i = zext i16 %conv2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i23, ptr noundef nonnull @.str.17, i32 noundef %conv8.i24, i32 noundef %conv9.i, i32 noundef %ret.0.i21) #9
  br label %if.end

if.end:                                           ; preds = %if.then7.i25, %do.body.i22, %mt9m111_reg_read.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %ret.0.i, %mt9m111_reg_read.exit.if.end_crit_edge ], [ %ret.0.i21, %do.body.i22 ], [ %ret.0.i21, %if.then7.i25 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m111_setup_rect_ctx(ptr nocapture noundef readonly %mt9m111, ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %rect, i32 noundef %width, i32 noundef %height) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %mt9m111, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %reducer_xzoom = getelementptr inbounds %struct.mt9m111_context, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %reducer_xzoom to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reducer_xzoom, align 2
  %width1 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 2
  %4 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width1, align 4
  %conv = trunc i32 %5 to i16
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %8 = lshr i16 %3, 8
  %conv2.i.i = zext i16 %8 to i32
  %lastpage.i.i = getelementptr inbounds %struct.mt9m111, ptr %7, i32 0, i32 13
  %9 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lastpage.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv2.i.i)
  %cmp.i.i = icmp eq i32 %10, %conv2.i.i
  br i1 %cmp.i.i, label %entry.if.then.i_crit_edge, label %if.end.i.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %3)
  %cmp5.i.i = icmp ugt i16 %3, 767
  br i1 %cmp5.i.i, label %if.end.i.i.do.body.i_crit_edge, label %if.end8.i.i

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %11 = and i16 %3, -256
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -16, i16 noundef zeroext %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then10.i.i, label %if.end8.i.i.do.body.i_crit_edge

if.end8.i.i.do.body.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv2.i.i, ptr %lastpage.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then10.i.i, %entry.if.then.i_crit_edge
  %conv1.i = trunc i16 %3 to i8
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv) #9
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext %conv1.i, i16 noundef zeroext %13) #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end8.i.i.do.body.i_crit_edge, %if.end.i.i.do.body.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %if.then.i ], [ -22, %if.end.i.i.do.body.i_crit_edge ], [ %call.i.i.i, %if.end8.i.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_setup_rect_ctx, %if.then7.i)) #9
          to label %mt9m111_reg_write.exit [label %if.then7.i], !srcloc !143

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv8.i = zext i16 %3 to i32
  %conv9.i = and i32 %5, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef %conv8.i, i32 noundef %conv9.i, i32 noundef %ret.0.i) #9
  br label %mt9m111_reg_write.exit

mt9m111_reg_write.exit:                           ; preds = %if.then7.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %if.then, label %mt9m111_reg_write.exit.if.end15_crit_edge

mt9m111_reg_write.exit.if.end15_crit_edge:        ; preds = %mt9m111_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then:                                          ; preds = %mt9m111_reg_write.exit
  %reducer_yzoom = getelementptr inbounds %struct.mt9m111_context, ptr %ctx, i32 0, i32 4
  %14 = ptrtoint ptr %reducer_yzoom to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reducer_yzoom, align 2
  %height3 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 3
  %16 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height3, align 4
  %conv4 = trunc i32 %17 to i16
  %18 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %20 = lshr i16 %15, 8
  %conv2.i.i27 = zext i16 %20 to i32
  %lastpage.i.i28 = getelementptr inbounds %struct.mt9m111, ptr %19, i32 0, i32 13
  %21 = ptrtoint ptr %lastpage.i.i28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lastpage.i.i28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv2.i.i27)
  %cmp.i.i29 = icmp eq i32 %22, %conv2.i.i27
  br i1 %cmp.i.i29, label %if.then.if.then.i38_crit_edge, label %if.end.i.i31

if.then.if.then.i38_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i38

if.end.i.i31:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %15)
  %cmp5.i.i30 = icmp ugt i16 %15, 767
  br i1 %cmp5.i.i30, label %if.end.i.i31.do.body.i40_crit_edge, label %if.end8.i.i34

if.end.i.i31.do.body.i40_crit_edge:               ; preds = %if.end.i.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i40

if.end8.i.i34:                                    ; preds = %if.end.i.i31
  %23 = and i16 %15, -256
  %call.i.i.i32 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -16, i16 noundef zeroext %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i32)
  %tobool.not.i.i33 = icmp eq i32 %call.i.i.i32, 0
  br i1 %tobool.not.i.i33, label %if.then10.i.i35, label %if.end8.i.i34.do.body.i40_crit_edge

if.end8.i.i34.do.body.i40_crit_edge:              ; preds = %if.end8.i.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i40

if.then10.i.i35:                                  ; preds = %if.end8.i.i34
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %lastpage.i.i28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv2.i.i27, ptr %lastpage.i.i28, align 4
  br label %if.then.i38

if.then.i38:                                      ; preds = %if.then10.i.i35, %if.then.if.then.i38_crit_edge
  %conv1.i36 = trunc i16 %15 to i8
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv4) #9
  %call.i.i37 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext %conv1.i36, i16 noundef zeroext %25) #9
  br label %do.body.i40

do.body.i40:                                      ; preds = %if.then.i38, %if.end8.i.i34.do.body.i40_crit_edge, %if.end.i.i31.do.body.i40_crit_edge
  %ret.0.i39 = phi i32 [ %call.i.i37, %if.then.i38 ], [ -22, %if.end.i.i31.do.body.i40_crit_edge ], [ %call.i.i.i32, %if.end8.i.i34.do.body.i40_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_setup_rect_ctx, %if.then7.i44)) #9
          to label %if.end [label %if.then7.i44], !srcloc !143

if.then7.i44:                                     ; preds = %do.body.i40
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i41 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv8.i42 = zext i16 %15 to i32
  %conv9.i43 = and i32 %17, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i41, ptr noundef nonnull @.str.17, i32 noundef %conv8.i42, i32 noundef %conv9.i43, i32 noundef %ret.0.i39) #9
  br label %if.end

if.end:                                           ; preds = %if.then7.i44, %do.body.i40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i39)
  %tobool6.not = icmp eq i32 %ret.0.i39, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then7:                                         ; preds = %if.end
  %reducer_xsize = getelementptr inbounds %struct.mt9m111_context, ptr %ctx, i32 0, i32 5
  %26 = ptrtoint ptr %reducer_xsize to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %reducer_xsize, align 2
  %conv8 = trunc i32 %width to i16
  %28 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %30 = lshr i16 %27, 8
  %conv2.i.i47 = zext i16 %30 to i32
  %lastpage.i.i48 = getelementptr inbounds %struct.mt9m111, ptr %29, i32 0, i32 13
  %31 = ptrtoint ptr %lastpage.i.i48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lastpage.i.i48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv2.i.i47)
  %cmp.i.i49 = icmp eq i32 %32, %conv2.i.i47
  br i1 %cmp.i.i49, label %if.then7.if.then.i58_crit_edge, label %if.end.i.i51

if.then7.if.then.i58_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i58

if.end.i.i51:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %27)
  %cmp5.i.i50 = icmp ugt i16 %27, 767
  br i1 %cmp5.i.i50, label %if.end.i.i51.do.body.i60_crit_edge, label %if.end8.i.i54

if.end.i.i51.do.body.i60_crit_edge:               ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i60

if.end8.i.i54:                                    ; preds = %if.end.i.i51
  %33 = and i16 %27, -256
  %call.i.i.i52 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -16, i16 noundef zeroext %33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i52)
  %tobool.not.i.i53 = icmp eq i32 %call.i.i.i52, 0
  br i1 %tobool.not.i.i53, label %if.then10.i.i55, label %if.end8.i.i54.do.body.i60_crit_edge

if.end8.i.i54.do.body.i60_crit_edge:              ; preds = %if.end8.i.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i60

if.then10.i.i55:                                  ; preds = %if.end8.i.i54
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %lastpage.i.i48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv2.i.i47, ptr %lastpage.i.i48, align 4
  br label %if.then.i58

if.then.i58:                                      ; preds = %if.then10.i.i55, %if.then7.if.then.i58_crit_edge
  %conv1.i56 = trunc i16 %27 to i8
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv8) #9
  %call.i.i57 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext %conv1.i56, i16 noundef zeroext %35) #9
  br label %do.body.i60

do.body.i60:                                      ; preds = %if.then.i58, %if.end8.i.i54.do.body.i60_crit_edge, %if.end.i.i51.do.body.i60_crit_edge
  %ret.0.i59 = phi i32 [ %call.i.i57, %if.then.i58 ], [ -22, %if.end.i.i51.do.body.i60_crit_edge ], [ %call.i.i.i52, %if.end8.i.i54.do.body.i60_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_setup_rect_ctx, %if.then7.i64)) #9
          to label %if.end10 [label %if.then7.i64], !srcloc !143

if.then7.i64:                                     ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i61 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv8.i62 = zext i16 %27 to i32
  %conv9.i63 = and i32 %width, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i61, ptr noundef nonnull @.str.17, i32 noundef %conv8.i62, i32 noundef %conv9.i63, i32 noundef %ret.0.i59) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then7.i64, %do.body.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i59)
  %tobool11.not = icmp eq i32 %ret.0.i59, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  %reducer_ysize = getelementptr inbounds %struct.mt9m111_context, ptr %ctx, i32 0, i32 6
  %36 = ptrtoint ptr %reducer_ysize to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %reducer_ysize, align 2
  %conv13 = trunc i32 %height to i16
  %38 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %40 = lshr i16 %37, 8
  %conv2.i.i67 = zext i16 %40 to i32
  %lastpage.i.i68 = getelementptr inbounds %struct.mt9m111, ptr %39, i32 0, i32 13
  %41 = ptrtoint ptr %lastpage.i.i68 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lastpage.i.i68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv2.i.i67)
  %cmp.i.i69 = icmp eq i32 %42, %conv2.i.i67
  br i1 %cmp.i.i69, label %if.then12.if.then.i78_crit_edge, label %if.end.i.i71

if.then12.if.then.i78_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i78

if.end.i.i71:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %37)
  %cmp5.i.i70 = icmp ugt i16 %37, 767
  br i1 %cmp5.i.i70, label %if.end.i.i71.do.body.i80_crit_edge, label %if.end8.i.i74

if.end.i.i71.do.body.i80_crit_edge:               ; preds = %if.end.i.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i80

if.end8.i.i74:                                    ; preds = %if.end.i.i71
  %43 = and i16 %37, -256
  %call.i.i.i72 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -16, i16 noundef zeroext %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i72)
  %tobool.not.i.i73 = icmp eq i32 %call.i.i.i72, 0
  br i1 %tobool.not.i.i73, label %if.then10.i.i75, label %if.end8.i.i74.do.body.i80_crit_edge

if.end8.i.i74.do.body.i80_crit_edge:              ; preds = %if.end8.i.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i80

if.then10.i.i75:                                  ; preds = %if.end8.i.i74
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %lastpage.i.i68 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv2.i.i67, ptr %lastpage.i.i68, align 4
  br label %if.then.i78

if.then.i78:                                      ; preds = %if.then10.i.i75, %if.then12.if.then.i78_crit_edge
  %conv1.i76 = trunc i16 %37 to i8
  %45 = tail call i16 @llvm.bswap.i16(i16 %conv13) #9
  %call.i.i77 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext %conv1.i76, i16 noundef zeroext %45) #9
  br label %do.body.i80

do.body.i80:                                      ; preds = %if.then.i78, %if.end8.i.i74.do.body.i80_crit_edge, %if.end.i.i71.do.body.i80_crit_edge
  %ret.0.i79 = phi i32 [ %call.i.i77, %if.then.i78 ], [ -22, %if.end.i.i71.do.body.i80_crit_edge ], [ %call.i.i.i72, %if.end8.i.i74.do.body.i80_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_setup_rect_ctx, %if.then7.i84)) #9
          to label %if.end15 [label %if.then7.i84], !srcloc !143

if.then7.i84:                                     ; preds = %do.body.i80
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i81 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv8.i82 = zext i16 %37 to i32
  %conv9.i83 = and i32 %height, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i81, ptr noundef nonnull @.str.17, i32 noundef %conv8.i82, i32 noundef %conv9.i83, i32 noundef %ret.0.i79) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then7.i84, %do.body.i80, %if.end10.if.end15_crit_edge, %if.end.if.end15_crit_edge, %mt9m111_reg_write.exit.if.end15_crit_edge
  %ret.2 = phi i32 [ %ret.0.i59, %if.end10.if.end15_crit_edge ], [ %ret.0.i79, %do.body.i80 ], [ %ret.0.i79, %if.then7.i84 ], [ %ret.0.i39, %if.end.if.end15_crit_edge ], [ %ret.0.i, %mt9m111_reg_write.exit.if.end15_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m111_get_global_gain(ptr nocapture noundef readonly %mt9m111) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %mt9m111, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %lastpage.i.i = getelementptr inbounds %struct.mt9m111, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lastpage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %entry.if.then.i_crit_edge, label %if.end.i.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -16, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then10.i.i, label %if.end.i.i.do.body.i_crit_edge

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %lastpage.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then10.i.i, %entry.if.then.i_crit_edge
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i17.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #9
  %conv1.i.i = zext i16 %7 to i32
  %cond.i.i = select i1 %cmp.i17.i, i32 %call.i.i, i32 %conv1.i.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end.i.i.do.body.i_crit_edge
  %ret.0.i = phi i32 [ %cond.i.i, %if.then.i ], [ %call.i.i.i, %if.end.i.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_get_global_gain, %if.then7.i)) #9
          to label %mt9m111_reg_read.exit [label %if.then7.i], !srcloc !143

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_read.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef 47, i32 noundef %ret.0.i) #9
  br label %mt9m111_reg_read.exit

mt9m111_reg_read.exit:                            ; preds = %if.then7.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp = icmp sgt i32 %ret.0.i, -1
  br i1 %cmp, label %if.then, label %mt9m111_reg_read.exit.cleanup_crit_edge

mt9m111_reg_read.exit.cleanup_crit_edge:          ; preds = %mt9m111_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %mt9m111_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %ret.0.i, 47
  %shr12 = lshr i32 %ret.0.i, 10
  %and2 = and i32 %shr12, 1
  %mul = shl nuw nsw i32 %and, %and2
  %shr313 = lshr i32 %ret.0.i, 9
  %and4 = and i32 %shr313, 1
  %mul6 = shl nuw nsw i32 %mul, %and4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %mt9m111_reg_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul6, %if.then ], [ %ret.0.i, %mt9m111_reg_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mt9m111_s_stream(ptr nocapture noundef writeonly %sd, i32 noundef %enable) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool = icmp ne i32 %enable, 0
  %is_streaming = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 15
  %frombool = zext i1 %tobool to i8
  %0 = ptrtoint ptr %is_streaming to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %is_streaming, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9m111_g_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %fi) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %frame_interval = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 8
  %0 = ptrtoint ptr %frame_interval to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %frame_interval, align 4
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %interval, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m111_s_frame_interval(ptr nocapture noundef %sd, ptr nocapture noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %is_streaming = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 15
  %0 = ptrtoint ptr %is_streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_streaming, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end2.if.end6_crit_edge

if.end2.if.end6_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 30, ptr %denominator, align 4
  %7 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %interval, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end2.if.end6_crit_edge
  %denominator7 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %denominator7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %denominator7, align 4
  %10 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interval, align 4
  %div42 = lshr i32 %11, 1
  %add = add i32 %div42, %9
  %div10 = udiv i32 %add, %11
  %width = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 6
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 7
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %width1.i = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 1280
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end6.mt9m111_find_mode.exit.thread_crit_edge

if.end6.mt9m111_find_mode.exit.thread_crit_edge:  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt9m111_find_mode.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end6
  %height2.i = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %19)
  %cmp3.not.i = icmp eq i32 %19, 1024
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.mt9m111_find_mode.exit.thread_crit_edge

lor.lhs.false.i.mt9m111_find_mode.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt9m111_find_mode.exit.thread

mt9m111_find_mode.exit.thread:                    ; preds = %lor.lhs.false.i.mt9m111_find_mode.exit.thread_crit_edge, %if.end6.mt9m111_find_mode.exit.thread_crit_edge
  %dev.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.24) #12
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %13)
  %cmp4.i = icmp ugt i32 %13, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %15)
  %cmp6.i = icmp ugt i32 %15, 512
  %or.cond.i = or i1 %cmp4.i, %cmp6.i
  br i1 %or.cond.i, label %do.body8.i, label %if.end.i.cleanup.1.i_crit_edge

if.end.i.cleanup.1.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1.i

do.body8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_find_mode.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_s_frame_interval, %if.then11.i)) #9
          to label %cleanup.1.i [label %if.then11.i], !srcloc !143

if.then11.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev13.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %22 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev13.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_find_mode.__UNIQUE_ID_ddebug308, ptr noundef %23, ptr noundef nonnull @.str.27) #9
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.then11.i, %do.body8.i, %if.end.i.cleanup.1.i_crit_edge
  %sub.i = sub i32 8, %div10
  %24 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #9
  %sub.1.i = sub i32 15, %div10
  %25 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %24)
  %cmp26.1.i = icmp ult i32 %25, %24
  %best_gap_idx.1.1.i = zext i1 %cmp26.1.i to i32
  br i1 %or.cond.i, label %cleanup.1.i.mt9m111_find_mode.exit_crit_edge, label %if.end22.2.i

cleanup.1.i.mt9m111_find_mode.exit_crit_edge:     ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt9m111_find_mode.exit

if.end22.2.i:                                     ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %24) #9
  %sub.2.i = sub i32 30, %div10
  %27 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %26)
  %cmp26.2.i = icmp ult i32 %27, %26
  %best_gap_idx.1.2.i = select i1 %cmp26.2.i, i32 2, i32 %best_gap_idx.1.1.i
  br label %mt9m111_find_mode.exit

mt9m111_find_mode.exit:                           ; preds = %if.end22.2.i, %cleanup.1.i.mt9m111_find_mode.exit_crit_edge
  %best_gap_idx.2.2.i = phi i32 [ %best_gap_idx.1.2.i, %if.end22.2.i ], [ %best_gap_idx.1.1.i, %cleanup.1.i.mt9m111_find_mode.exit_crit_edge ]
  %arrayidx29.i = getelementptr [3 x %struct.mt9m111_mode_info], ptr @mt9m111_mode_data, i32 0, i32 %best_gap_idx.2.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %best_gap_idx.2.2.i)
  %cmp30.i = icmp eq i32 %best_gap_idx.2.2.i, 2
  %cond31.i = select i1 %cmp30.i, ptr @context_a, ptr @context_b
  %ctx.i = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 3
  %28 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cond31.i, ptr %ctx.i, align 4
  %tobool11.not = icmp eq ptr %arrayidx29.i, null
  br i1 %tobool11.not, label %mt9m111_find_mode.exit.cleanup_crit_edge, label %if.end13

mt9m111_find_mode.exit.cleanup_crit_edge:         ; preds = %mt9m111_find_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %mt9m111_find_mode.exit
  %max_fps = getelementptr [3 x %struct.mt9m111_mode_info], ptr @mt9m111_mode_data, i32 0, i32 %best_gap_idx.2.2.i, i32 4
  %29 = ptrtoint ptr %max_fps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_fps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %div10)
  %cmp14.not = icmp eq i32 %30, %div10
  br i1 %cmp14.not, label %if.end13.if.end19_crit_edge, label %if.then15

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %denominator7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %denominator7, align 4
  %32 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %interval, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13.if.end19_crit_edge
  %current_mode = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 9
  %33 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx29.i, ptr %current_mode, align 4
  %frame_interval = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 8
  %34 = ptrtoint ptr %interval to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %interval, align 4
  %36 = ptrtoint ptr %frame_interval to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %frame_interval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %mt9m111_find_mode.exit.cleanup_crit_edge, %mt9m111_find_mode.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %mt9m111_find_mode.exit.cleanup_crit_edge ], [ 0, %mt9m111_find_mode.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m111_init_cfg(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp eq i16 %1, 0
  br i1 %cmp.i, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !144

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1280, ptr %3, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1024, ptr %height, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8200, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %field, align 4
  %9 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %9, align 4
  %quantization = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %xfer_func, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9m111_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %3)
  %cmp = icmp ugt i32 %3, 11
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [12 x %struct.mt9m111_datafmt], ptr @mt9m111_colour_fmts, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %code3 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code3, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m111_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i = icmp eq i16 %5, 0
  br i1 %cmp.i, label %do.end.i, label %if.then2.v4l2_subdev_get_try_format.exit_crit_edge, !prof !144

if.then2.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then2.v4l2_subdev_get_try_format.exit_crit_edge
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %8 = call ptr @memcpy(ptr %format1, ptr %7, i32 48)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %width = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 6
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %11 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %format1, align 4
  %height = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 7
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height7, align 4
  %fmt = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 12
  %15 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fmt, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %code8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %code8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %code8, align 4
  %20 = load ptr, ptr %fmt, align 4
  %colorspace = getelementptr inbounds %struct.mt9m111_datafmt, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %colorspace, align 4
  %colorspace10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %colorspace10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %colorspace10, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %field, align 4
  %25 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %25, align 4
  %quantization = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %27 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %28 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %xfer_func, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %v4l2_subdev_get_try_format.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m111_set_fmt(ptr nocapture noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %rect2 = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 4
  %is_streaming = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 15
  %2 = ptrtoint ptr %is_streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_streaming, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %7, label %for.inc.11.i [
    i32 8200, label %if.end5.if.then.i_crit_edge
    i32 8201, label %if.then.fold.split.i
    i32 8198, label %if.then.fold.split9.i
    i32 8199, label %if.then.fold.split10.i
    i32 4100, label %if.then.fold.split11.i
    i32 4099, label %if.then.fold.split12.i
    i32 4104, label %if.then.fold.split13.i
    i32 4103, label %if.then.fold.split14.i
    i32 4102, label %if.then.fold.split15.i
    i32 4101, label %if.then.fold.split16.i
    i32 12289, label %if.then.fold.split17.i
    i32 12292, label %if.then.fold.split18.i
  ]

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split.i:                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split9.i:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split10.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split11.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split12.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split13.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split14.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split15.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split16.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split17.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split18.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split18.i, %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %if.end5.if.then.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %if.end5.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ], [ 9, %if.then.fold.split16.i ], [ 10, %if.then.fold.split17.i ], [ 11, %if.then.fold.split18.i ]
  %add.ptr.i = getelementptr %struct.mt9m111_datafmt, ptr @mt9m111_colour_fmts, i32 %i.07.lcssa.i
  br label %mt9m111_find_datafmt.exit

for.inc.11.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %fmt.i = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 12
  %9 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fmt.i, align 4
  br label %mt9m111_find_datafmt.exit

mt9m111_find_datafmt.exit:                        ; preds = %for.inc.11.i, %if.then.i
  %retval.0.i130 = phi ptr [ %add.ptr.i, %if.then.i ], [ %10, %for.inc.11.i ]
  %11 = ptrtoint ptr %retval.0.i130 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %retval.0.i130, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %12, label %mt9m111_find_datafmt.exit.if.end16_crit_edge [
    i32 12292, label %mt9m111_find_datafmt.exit.if.then11_crit_edge
    i32 12289, label %mt9m111_find_datafmt.exit.if.then11_crit_edge134
  ]

mt9m111_find_datafmt.exit.if.then11_crit_edge134: ; preds = %mt9m111_find_datafmt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

mt9m111_find_datafmt.exit.if.then11_crit_edge:    ; preds = %mt9m111_find_datafmt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

mt9m111_find_datafmt.exit.if.end16_crit_edge:     ; preds = %mt9m111_find_datafmt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then11:                                        ; preds = %mt9m111_find_datafmt.exit.if.then11_crit_edge, %mt9m111_find_datafmt.exit.if.then11_crit_edge134
  %width = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %add = add i32 %15, 1
  %and = and i32 %add, -2
  store i32 %and, ptr %width, align 4
  %height = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %add13 = add i32 %17, 1
  %and14 = and i32 %add13, -2
  store i32 %and14, ptr %height, align 4
  %18 = ptrtoint ptr %retval.0.i130 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %retval.0.i130, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %mt9m111_find_datafmt.exit.if.end16_crit_edge
  %19 = phi i32 [ %12, %mt9m111_find_datafmt.exit.if.end16_crit_edge ], [ %.pr, %if.then11 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12292, i32 %19)
  %cmp18 = icmp eq i32 %19, 12292
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %width20 = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %width20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width20, align 4
  %22 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %format1, align 4
  %height22 = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height22, align 4
  %height23 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %height23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %height23, align 4
  br label %do.body

if.else:                                          ; preds = %if.end16
  %26 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %format1, align 4
  %width25 = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %width25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp26 = icmp ugt i32 %27, %29
  br i1 %cmp26, label %if.then27, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %format1, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.else.if.end30_crit_edge
  %height31 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %height31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height31, align 4
  %height32 = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %height32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp33 = icmp ugt i32 %32, %34
  br i1 %cmp33, label %if.then34, label %if.end30.do.body_crit_edge

if.end30.do.body_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %height31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %height31, align 4
  br label %do.body

do.body:                                          ; preds = %if.then34, %if.end30.do.body_crit_edge, %if.then19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_set_fmt.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_set_fmt, %if.then45)) #9
          to label %do.end [label %if.then45], !srcloc !143

if.then45:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %format1, align 4
  %height47 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %height47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height47, align 4
  %40 = ptrtoint ptr %retval.0.i130 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %retval.0.i130, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_set_fmt.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef %37, i32 noundef %39, i32 noundef %41) #9
  br label %do.end

do.end:                                           ; preds = %if.then45, %do.body
  %42 = ptrtoint ptr %retval.0.i130 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %retval.0.i130, align 4
  %44 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.mt9m111_datafmt, ptr %retval.0.i130, i32 0, i32 1
  %45 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %colorspace, align 4
  %colorspace52 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %47 = ptrtoint ptr %colorspace52 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %colorspace52, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %48 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %field, align 4
  %49 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %49, align 4
  %quantization = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %51 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %52 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %xfer_func, align 4
  %53 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp53 = icmp eq i32 %54, 0
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sd_state, align 4
  %57 = call ptr @memcpy(ptr %56, ptr %format1, i32 48)
  br label %cleanup

if.end55:                                         ; preds = %do.end
  %58 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %format1, align 4
  %height57 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %height57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %height57, align 4
  %call59 = tail call fastcc i32 @mt9m111_setup_geometry(ptr noundef %sd, ptr noundef %rect2, i32 noundef %59, i32 noundef %61, i32 noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end64, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end64:                                         ; preds = %if.end55
  %62 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %code, align 4
  %call63 = tail call fastcc i32 @mt9m111_set_pixfmt(ptr noundef %sd, i32 noundef %63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool65.not = icmp eq i32 %call63, 0
  br i1 %tobool65.not, label %if.then66, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %format1, align 4
  %width68 = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 6
  %66 = ptrtoint ptr %width68 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %width68, align 4
  %67 = ptrtoint ptr %height57 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %height57, align 4
  %height70 = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 7
  %69 = ptrtoint ptr %height70 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %height70, align 4
  %fmt71 = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 12
  %70 = ptrtoint ptr %fmt71 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %retval.0.i130, ptr %fmt71, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %if.end64.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.then54, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then54 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then66 ], [ %call63, %if.end64.cleanup_crit_edge ], [ %call59, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9m111_get_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %sel) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %9 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 26, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1280, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %height, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %r6 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %rect = getelementptr inbounds %struct.mt9m111, ptr %3, i32 0, i32 4
  %13 = call ptr @memcpy(ptr %r6, ptr %rect, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m111_set_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef readonly %sel) #2 align 64 {
entry:
  %rect = alloca %struct.v4l2_rect, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rect) #9
  %4 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 1
  %5 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 2
  %6 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 3
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %7 = call ptr @memcpy(ptr %rect, ptr %r, i32 16)
  %8 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %10 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.not = icmp eq i32 %11, 0
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %fmt = getelementptr inbounds %struct.mt9m111, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12289, i32 %15)
  %switch.selectcmp.case1 = icmp eq i32 %15, 12289
  call void @__sanitizer_cov_trace_const_cmp4(i32 12292, i32 %15)
  %switch.selectcmp.case2 = icmp eq i32 %15, 12292
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %16 = zext i1 %switch.selectcmp to i32
  call void @v4l_bound_align_image(ptr noundef %5, i32 noundef 2, i32 noundef 1280, i32 noundef %16, ptr noundef %6, i32 noundef 2, i32 noundef 1024, i32 noundef %16, i32 noundef 0) #9
  %17 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rect, align 4
  %19 = call i32 @llvm.smax.i32(i32 %18, i32 26)
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %5, align 4
  %sub = sub i32 1306, %21
  %22 = call i32 @llvm.smin.i32(i32 %19, i32 %sub)
  %23 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rect, align 4
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %4, align 4
  %26 = call i32 @llvm.smax.i32(i32 %25, i32 8)
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %6, align 4
  %sub28 = sub i32 1032, %28
  %29 = call i32 @llvm.smin.i32(i32 %26, i32 %sub28)
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %4, align 4
  %width36 = getelementptr inbounds %struct.mt9m111, ptr %3, i32 0, i32 6
  %31 = ptrtoint ptr %width36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %width36, align 4
  %33 = call i32 @llvm.umin.i32(i32 %32, i32 %21)
  %height44 = getelementptr inbounds %struct.mt9m111, ptr %3, i32 0, i32 7
  %34 = ptrtoint ptr %height44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height44, align 4
  %36 = call i32 @llvm.umin.i32(i32 %35, i32 %28)
  %37 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fmt, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %call54 = call fastcc i32 @mt9m111_setup_geometry(ptr noundef %3, ptr noundef nonnull %rect, i32 noundef %33, i32 noundef %36, i32 noundef %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool.not = icmp eq i32 %call54, 0
  br i1 %tobool.not, label %if.then55, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then55:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rect56 = getelementptr inbounds %struct.mt9m111, ptr %3, i32 0, i32 4
  %41 = call ptr @memcpy(ptr %rect56, ptr %rect, i32 16)
  %42 = ptrtoint ptr %width36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %33, ptr %width36, align 4
  %43 = ptrtoint ptr %height44 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %36, ptr %height44, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then55 ], [ %call54, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rect) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9m111_get_mbus_config(ptr nocapture noundef readonly %sd, i32 noundef %pad, ptr nocapture noundef writeonly %cfg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.v4l2_mbus_config, ptr %cfg, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 277, ptr %flags, align 4
  %pclk_sample = getelementptr inbounds %struct.mt9m111, ptr %sd, i32 0, i32 16
  %1 = ptrtoint ptr %pclk_sample to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %pclk_sample, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %or = select i1 %tobool.not, i32 405, i32 341
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %flags, align 4
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %cfg, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m111_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963797, label %sw.bb
    i32 9963796, label %sw.bb1
    i32 9963795, label %sw.bb4
    i32 10094849, label %sw.bb7
    i32 9963788, label %sw.bb10
    i32 10422531, label %sw.bb13
    i32 9963807, label %sw.bb16
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -44
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %ctx2.i = getelementptr i8, ptr %1, i32 188
  %9 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx2.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 2
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call fastcc i32 @mt9m111_reg_set(ptr noundef %8, i16 noundef zeroext %12, i16 noundef zeroext 1) #9
  br label %cleanup

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = tail call fastcc i32 @mt9m111_reg_clear(ptr noundef %8, i16 noundef zeroext %12, i16 noundef zeroext 1) #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val2, align 4
  %dev_priv.i.i33 = getelementptr i8, ptr %1, i32 -44
  %15 = ptrtoint ptr %dev_priv.i.i33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i34 = icmp eq i32 %14, 0
  %ctx2.i35 = getelementptr i8, ptr %1, i32 188
  %17 = ptrtoint ptr %ctx2.i35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx2.i35, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 2
  br i1 %tobool.not.i34, label %if.else.i39, label %if.then.i37

if.then.i37:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i36 = tail call fastcc i32 @mt9m111_reg_set(ptr noundef %16, i16 noundef zeroext %20, i16 noundef zeroext 2) #9
  br label %cleanup

if.else.i39:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i38 = tail call fastcc i32 @mt9m111_reg_clear(ptr noundef %16, i16 noundef zeroext %20, i16 noundef zeroext 2) #9
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %1, i32 -196
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val5, align 4
  %call6 = tail call fastcc i32 @mt9m111_set_global_gain(ptr noundef %add.ptr, i32 noundef %22)
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val8, align 4
  %dev_priv.i.i42 = getelementptr i8, ptr %1, i32 -44
  %25 = ptrtoint ptr %dev_priv.i.i42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i = icmp eq i32 %24, 0
  br i1 %cmp.i, label %if.then.i44, label %if.end.i

if.then.i44:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i43 = tail call fastcc i32 @mt9m111_reg_set(ptr noundef %26, i16 noundef zeroext 262, i16 noundef zeroext 16384) #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call fastcc i32 @mt9m111_reg_clear(ptr noundef %26, i16 noundef zeroext 262, i16 noundef zeroext 16384) #9
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %27 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val11, align 4
  %dev_priv.i.i45 = getelementptr i8, ptr %1, i32 -44
  %29 = ptrtoint ptr %dev_priv.i.i45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_priv.i.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i46 = icmp eq i32 %28, 0
  br i1 %tobool.not.i46, label %if.end.i50, label %if.then.i48

if.then.i48:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i47 = tail call fastcc i32 @mt9m111_reg_set(ptr noundef %30, i16 noundef zeroext 262, i16 noundef zeroext 2) #9
  br label %cleanup

if.end.i50:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i49 = tail call fastcc i32 @mt9m111_reg_clear(ptr noundef %30, i16 noundef zeroext 262, i16 noundef zeroext 2) #9
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %31 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val14, align 4
  %dev_priv.i.i52 = getelementptr i8, ptr %1, i32 -44
  %33 = ptrtoint ptr %dev_priv.i.i52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i.i52, align 4
  %conv.i = trunc i32 %32 to i16
  %call1.i53 = tail call fastcc i32 @mt9m111_reg_mask(ptr noundef %34, i16 noundef zeroext 328, i16 noundef zeroext %conv.i, i16 noundef zeroext 7) #9
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %35 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val17, align 4
  %dev_priv.i.i54 = getelementptr i8, ptr %1, i32 -44
  %37 = ptrtoint ptr %dev_priv.i.i54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i.i54, align 4
  %39 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %36, label %sw.bb16.cleanup_crit_edge [
    i32 0, label %sw.bb16.if.then.i56_crit_edge
    i32 1, label %sw.bb16.if.then.i56_crit_edge58
    i32 2, label %sw.bb16.if.then.i56_crit_edge59
    i32 3, label %sw.bb16.if.then.i56_crit_edge60
    i32 13, label %if.then.fold.split13.i
  ]

sw.bb16.if.then.i56_crit_edge60:                  ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i56

sw.bb16.if.then.i56_crit_edge59:                  ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i56

sw.bb16.if.then.i56_crit_edge58:                  ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i56

sw.bb16.if.then.i56_crit_edge:                    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i56

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.fold.split13.i:                           ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i56

if.then.i56:                                      ; preds = %if.then.fold.split13.i, %sw.bb16.if.then.i56_crit_edge, %sw.bb16.if.then.i56_crit_edge58, %sw.bb16.if.then.i56_crit_edge59, %sw.bb16.if.then.i56_crit_edge60
  %i.09.lcssa.i = phi i32 [ %36, %sw.bb16.if.then.i56_crit_edge ], [ 4, %if.then.fold.split13.i ], [ %36, %sw.bb16.if.then.i56_crit_edge58 ], [ %36, %sw.bb16.if.then.i56_crit_edge59 ], [ %36, %sw.bb16.if.then.i56_crit_edge60 ]
  %value.i = getelementptr [5 x %struct.v4l2_control], ptr @mt9m111_set_colorfx.colorfx, i32 0, i32 %i.09.lcssa.i, i32 1
  %40 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %value.i, align 4
  %conv.i55 = trunc i32 %41 to i16
  %call3.i = tail call fastcc i32 @mt9m111_reg_mask(ptr noundef %38, i16 noundef zeroext 482, i16 noundef zeroext %conv.i55, i16 noundef zeroext 7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i56, %sw.bb16.cleanup_crit_edge, %sw.bb13, %if.end.i50, %if.then.i48, %if.end.i, %if.then.i44, %sw.bb4, %if.else.i39, %if.then.i37, %if.else.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i53, %sw.bb13 ], [ %call6, %sw.bb4 ], [ -22, %entry.cleanup_crit_edge ], [ %call1.i, %if.then.i ], [ %call5.i, %if.else.i ], [ %call1.i36, %if.then.i37 ], [ %call5.i38, %if.else.i39 ], [ %call1.i43, %if.then.i44 ], [ %call2.i, %if.end.i ], [ %call1.i47, %if.then.i48 ], [ %call2.i49, %if.end.i50 ], [ %call3.i, %if.then.i56 ], [ -22, %sw.bb16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m111_set_global_gain(ptr nocapture noundef readonly %mt9m111, i32 noundef %gain) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %mt9m111, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %gain)
  %cmp = icmp sgt i32 %gain, 252
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %gain)
  %cmp1 = icmp sgt i32 %gain, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %gain)
  %cmp2 = icmp ne i32 %gain, 252
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div272832 = lshr i32 %gain, 2
  %or = or i32 %div272832, 1536
  br label %if.end16

if.else:                                          ; preds = %if.end
  %2 = and i32 %gain, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2)
  %3 = icmp eq i32 %2, 64
  br i1 %3, label %if.then9, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %div10293031 = lshr i32 %gain, 1
  %or11 = or i32 %div10293031, 512
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.else.if.end16_crit_edge, %if.then3
  %val.0.in = phi i32 [ %or, %if.then3 ], [ %or11, %if.then9 ], [ %gain, %if.else.if.end16_crit_edge ]
  %val.0 = trunc i32 %val.0.in to i16
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %lastpage.i.i = getelementptr inbounds %struct.mt9m111, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lastpage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i, label %if.end16.if.then.i_crit_edge, label %if.end.i.i

if.end16.if.then.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.end16
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -16, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then10.i.i, label %if.end.i.i.do.body.i_crit_edge

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %lastpage.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %lastpage.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then10.i.i, %if.end16.if.then.i_crit_edge
  %9 = tail call i16 @llvm.bswap.i16(i16 %val.0) #9
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 47, i16 noundef zeroext %9) #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end.i.i.do.body.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %if.then.i ], [ %call.i.i.i, %if.end.i.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_set_global_gain, %if.then7.i)) #9
          to label %cleanup [label %if.then7.i], !srcloc !143

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv9.i = and i32 %val.0.in, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef 47, i32 noundef %conv9.i, i32 noundef %ret.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i, %do.body.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i, %do.body.i ], [ %ret.0.i, %if.then7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m111_init(ptr nocapture noundef readonly %mt9m111) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %mt9m111, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i.i.i.i, align 4
  %lastpage.i.i.i = getelementptr inbounds %struct.mt9m111, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %lastpage.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lastpage.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i.i, label %entry.if.then.i.i_crit_edge, label %if.end.i.i.i

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end.i.i.i:                                     ; preds = %entry
  %call.i.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -16, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then10.i.i.i, label %if.end.i.i.i.do.body.i.i_crit_edge

if.end.i.i.i.do.body.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %lastpage.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %lastpage.i.i.i, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then10.i.i.i, %entry.if.then.i.i_crit_edge
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 13, i16 noundef zeroext 2048) #9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i, %if.end.i.i.i.do.body.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i.i, %if.then.i.i ], [ %call.i.i.i.i, %if.end.i.i.i.do.body.i.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_init, %if.then7.i.i)) #9
          to label %mt9m111_enable.exit [label %if.then7.i.i], !srcloc !143

if.then7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, i32 noundef 13, i32 noundef 8, i32 noundef %ret.0.i.i) #9
  br label %mt9m111_enable.exit

mt9m111_enable.exit:                              ; preds = %if.then7.i.i, %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool.not = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool.not, label %if.then, label %mt9m111_enable.exit.do.end_crit_edge

mt9m111_enable.exit.do.end_crit_edge:             ; preds = %mt9m111_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %mt9m111_enable.exit
  %7 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i, align 4
  %call1.i = tail call fastcc i32 @mt9m111_reg_set(ptr noundef %8, i16 noundef zeroext 13, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call2.i = tail call fastcc i32 @mt9m111_reg_set(ptr noundef %8, i16 noundef zeroext 13, i16 noundef zeroext 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %if.end.i
  %call5.i = tail call fastcc i32 @mt9m111_reg_clear(ptr noundef %8, i16 noundef zeroext 13, i16 noundef zeroext 33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool3.not = icmp eq i32 %call5.i, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then4:                                         ; preds = %if.end
  %ctx = getelementptr inbounds %struct.mt9m111, ptr %mt9m111, i32 0, i32 3
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 4
  %11 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i, align 4
  %control.i = getelementptr inbounds %struct.mt9m111_context, ptr %10, i32 0, i32 8
  %13 = ptrtoint ptr %control.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %control.i, align 2
  %driver_data.i.i.i.i.i.i20 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i.i.i.i20, align 4
  %lastpage.i.i.i21 = getelementptr inbounds %struct.mt9m111, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %lastpage.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lastpage.i.i.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i.i22 = icmp eq i32 %18, 0
  br i1 %cmp.i.i.i22, label %if.then4.if.then.i.i28_crit_edge, label %if.end.i.i.i25

if.then4.if.then.i.i28_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i28

if.end.i.i.i25:                                   ; preds = %if.then4
  %call.i.i.i.i23 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %12, i8 noundef zeroext -16, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i23)
  %tobool.not.i.i.i24 = icmp eq i32 %call.i.i.i.i23, 0
  br i1 %tobool.not.i.i.i24, label %if.then10.i.i.i26, label %if.end.i.i.i25.do.body.i.i30_crit_edge

if.end.i.i.i25.do.body.i.i30_crit_edge:           ; preds = %if.end.i.i.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i30

if.then10.i.i.i26:                                ; preds = %if.end.i.i.i25
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %lastpage.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %lastpage.i.i.i21, align 4
  br label %if.then.i.i28

if.then.i.i28:                                    ; preds = %if.then10.i.i.i26, %if.then4.if.then.i.i28_crit_edge
  %20 = tail call i16 @llvm.bswap.i16(i16 %14) #9
  %call.i.i.i27 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %12, i8 noundef zeroext -56, i16 noundef zeroext %20) #9
  br label %do.body.i.i30

do.body.i.i30:                                    ; preds = %if.then.i.i28, %if.end.i.i.i25.do.body.i.i30_crit_edge
  %ret.0.i.i29 = phi i32 [ %call.i.i.i27, %if.then.i.i28 ], [ %call.i.i.i.i23, %if.end.i.i.i25.do.body.i.i30_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m111_init, %if.then7.i.i32)) #9
          to label %if.end6 [label %if.then7.i.i32], !srcloc !143

if.then7.i.i32:                                   ; preds = %do.body.i.i30
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i31 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %conv9.i.i = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m111_reg_write.__UNIQUE_ID_ddebug293, ptr noundef %dev.i.i31, ptr noundef nonnull @.str.17, i32 noundef 200, i32 noundef %conv9.i.i, i32 noundef %ret.0.i.i29) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then7.i.i32, %do.body.i.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i29)
  %tobool7.not = icmp eq i32 %ret.0.i.i29, 0
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.end6.do.end_crit_edge

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.end:                                           ; preds = %if.end6.do.end_crit_edge, %if.end.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.then.do.end_crit_edge, %mt9m111_enable.exit.do.end_crit_edge
  %ret.137 = phi i32 [ %ret.0.i.i29, %if.end6.do.end_crit_edge ], [ %call5.i, %if.end.do.end_crit_edge ], [ %call1.i, %if.then.do.end_crit_edge ], [ %call2.i, %if.end.i.do.end_crit_edge ], [ %ret.0.i.i, %mt9m111_enable.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %ret.137) #12
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end6.if.end9_crit_edge
  %ret.138 = phi i32 [ %ret.137, %do.end ], [ 0, %if.end6.if.end9_crit_edge ]
  ret i32 %ret.138
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !31, !33, !34, !36, !37, !39, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !65, !66, !67, !69, !71, !72, !73, !74, !75, !77, !78, !80, !82, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__initcall__kmod_mt9m111__309_1393_mt9m111_i2c_driver_init6, !1, !"__initcall__kmod_mt9m111__309_1393_mt9m111_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/mt9m111.c", i32 1393, i32 1}
!2 = !{ptr @__exitcall_mt9m111_i2c_driver_exit, !1, !"__exitcall_mt9m111_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description310, !4, !"__UNIQUE_ID_description310", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/mt9m111.c", i32 1395, i32 1}
!5 = !{ptr @__UNIQUE_ID_author311, !6, !"__UNIQUE_ID_author311", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/mt9m111.c", i32 1396, i32 1}
!7 = !{ptr @__UNIQUE_ID_file312, !8, !"__UNIQUE_ID_file312", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/mt9m111.c", i32 1397, i32 1}
!9 = !{ptr @__UNIQUE_ID_license313, !8, !"__UNIQUE_ID_license313", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/mt9m111.c", i32 1385, i32 11}
!12 = !{ptr @mt9m111_i2c_driver, !13, !"mt9m111_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/mt9m111.c", i32 1383, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/mt9m111.c", i32 1254, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt9m111_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mt9m111_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/mt9m111.c", i32 1269, i32 44}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/mt9m111.c", i32 1273, i32 56}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/mt9m111.c", i32 1275, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mt9m111_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @mt9m111_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @mt9m111_probe._key, !32, !"_key", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/mt9m111.c", i32 1287, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mt9m111_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/mt9m111.c", i32 1338, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @context_b, !38, !"context_b", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/mt9m111.c", i32 175, i32 31}
!39 = !{ptr @mt9m111_subdev_ops, !40, !"mt9m111_subdev_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/mt9m111.c", i32 1174, i32 37}
!41 = !{ptr @mt9m111_subdev_core_ops, !42, !"mt9m111_subdev_core_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/mt9m111.c", i32 1044, i32 42}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/mt9m111.c", i32 327, i32 2}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mt9m111_reg_read.__UNIQUE_ID_ddebug292, !44, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/mt9m111.c", i32 339, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mt9m111_reg_write.__UNIQUE_ID_ddebug293, !48, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/mt9m111.c", i32 1000, i32 2}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mt9m111_power_on._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mt9m111_power_on._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/mt9m111.c", i32 609, i32 3}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mt9m111_set_pixfmt._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mt9m111_set_pixfmt._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @context_a, !62, !"context_a", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/mt9m111.c", i32 163, i32 31}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/mt9m111.c", i32 423, i32 2}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mt9m111_setup_geometry.__UNIQUE_ID_ddebug294, !64, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!67 = !{ptr @mt9m111_subdev_video_ops, !68, !"mt9m111_subdev_video_ops", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/mt9m111.c", i32 1158, i32 43}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/mt9m111.c", i32 714, i32 3}
!71 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mt9m111_find_mode._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @mt9m111_find_mode._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/mt9m111.c", i32 722, i32 3}
!77 = !{ptr @mt9m111_find_mode.__UNIQUE_ID_ddebug308, !76, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!78 = !{ptr @mt9m111_subdev_pad_ops, !79, !"mt9m111_subdev_pad_ops", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/mt9m111.c", i32 1164, i32 41}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/mt9m111.c", i32 670, i32 2}
!84 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mt9m111_set_fmt.__UNIQUE_ID_ddebug307, !83, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!86 = !{ptr @mt9m111_ctrl_ops, !87, !"mt9m111_ctrl_ops", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/mt9m111.c", i32 1040, i32 35}
!88 = !{ptr @mt9m111_set_colorfx.colorfx, !89, !"colorfx", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/mt9m111.c", i32 870, i32 35}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/mt9m111.c", i32 849, i32 2}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/mt9m111.c", i32 850, i32 2}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/mt9m111.c", i32 851, i32 2}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/mt9m111.c", i32 852, i32 2}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/mt9m111.c", i32 853, i32 2}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/mt9m111.c", i32 854, i32 2}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/mt9m111.c", i32 855, i32 2}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/mt9m111.c", i32 856, i32 2}
!106 = !{ptr @mt9m111_test_pattern_menu, !107, !"mt9m111_test_pattern_menu", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/mt9m111.c", i32 848, i32 27}
!108 = !{ptr @mt9m111_mode_data, !109, !"mt9m111_mode_data", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/mt9m111.c", i32 253, i32 39}
!110 = !{ptr @mt9m111_colour_fmts, !111, !"mt9m111_colour_fmts", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/mt9m111.c", i32 197, i32 37}
!112 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/mt9m111.c", i32 1198, i32 3}
!114 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mt9m111_video_probe._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @mt9m111_video_probe._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/mt9m111.c", i32 1202, i32 3}
!119 = !{ptr @mt9m111_video_probe._entry.41, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @mt9m111_video_probe._entry_ptr.43, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/mt9m111.c", i32 1205, i32 3}
!123 = !{ptr @mt9m111_video_probe._entry.44, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @mt9m111_video_probe._entry_ptr.46, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/mt9m111.c", i32 971, i32 3}
!127 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @mt9m111_init._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @mt9m111_init._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @mt9m111_of_match, !131, !"mt9m111_of_match", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/mt9m111.c", i32 1371, i32 34}
!132 = !{ptr @mt9m111_id, !133, !"mt9m111_id", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/mt9m111.c", i32 1377, i32 35}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 2148758677, i64 2148758682, i64 2148758695, i64 2148758739, i64 2148758773, i64 2148758794}
!144 = !{!"branch_weights", i32 1, i32 2000}
!145 = !{i8 0, i8 2}
