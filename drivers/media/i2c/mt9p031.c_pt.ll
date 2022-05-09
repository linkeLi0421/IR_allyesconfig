; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/mt9p031.c_pt.bc'
source_filename = "../drivers/media/i2c/mt9p031.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aptina_pll_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
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
%struct.mt9p031_platform_data = type { i8, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt9p031 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_rect, %struct.v4l2_mbus_framefmt, ptr, %struct.mutex, i32, ptr, [3 x %struct.regulator_bulk_data], i32, %struct.aptina_pll, i32, i8, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, i16, i16 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.aptina_pll = type { i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
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

@__initcall__kmod_mt9p031__330_1242_mt9p031_i2c_driver_init6 = internal global ptr @mt9p031_i2c_driver_init, section ".initcall6.init", align 4
@mt9p031_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mt9p031_probe, ptr @mt9p031_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt9p031_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mt9p031_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mt9p031_i2c_driver_exit = internal global ptr @mt9p031_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description331 = internal constant [49 x i8] c"mt9p031.description=Aptina MT9P031 Camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author332 = internal constant [48 x i8] c"mt9p031.author=Bastian Hecht <hechtb@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file333 = internal constant [39 x i8] c"mt9p031.file=drivers/media/i2c/mt9p031\00", section ".modinfo", align 1
@__UNIQUE_ID_license334 = internal constant [23 x i8] c"mt9p031.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt9p031\00", [24 x i8] zeroinitializer }, align 32
@mt9p031_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aptina,mt9p031\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aptina,mt9p031m\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mt9p031_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mt9p031\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"mt9p031m\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@mt9p031_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1090, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt9p031_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/mt9p031.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt9p031_probe._entry_ptr = internal global ptr @mt9p031_probe._entry, section ".printk_index", align 4
@mt9p031_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1096, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt9p031_probe._entry_ptr.9 = internal global ptr @mt9p031_probe._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_io\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vaa\00", [28 x i8] zeroinitializer }, align 32
@mt9p031_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@mt9p031_probe._entry_ptr.15 = internal global ptr @mt9p031_probe._entry.13, section ".printk_index", align 4
@mt9p031_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&mt9p031->power_lock\00", [43 x i8] zeroinitializer }, align 32
@mt9p031_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mt9p031:1121:(&mt9p031->ctrls)->_lock\00", [58 x i8] zeroinitializer }, align 32
@mt9p031_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @mt9p031_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@mt9p031_test_pattern_menu = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [56 x i8] zeroinitializer }, align 32
@mt9p031_ctrls = internal constant { [4 x %struct.v4l2_ctrl_config], [96 x i8] } { [4 x %struct.v4l2_ctrl_config] [%struct.v4l2_ctrl_config { ptr @mt9p031_ctrl_ops, ptr null, i32 9967874, ptr @.str.34, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @mt9p031_ctrl_ops, ptr null, i32 9967875, ptr @.str.35, i32 1, i64 0, i64 4095, i64 1, i64 168, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @mt9p031_ctrl_ops, ptr null, i32 9967876, ptr @.str.36, i32 1, i64 -255, i64 255, i64 1, i64 32, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @mt9p031_ctrl_ops, ptr null, i32 9967877, ptr @.str.37, i32 1, i64 -2048, i64 2047, i64 1, i64 40, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }], [96 x i8] zeroinitializer }, align 32
@mt9p031_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: control initialization error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mt9p031_probe._entry_ptr.20 = internal global ptr @mt9p031_probe._entry.18, section ".printk_index", align 4
@mt9p031_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @mt9p031_subdev_core_ops, ptr null, ptr null, ptr @mt9p031_subdev_video_ops, ptr null, ptr null, ptr null, ptr @mt9p031_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@mt9p031_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @mt9p031_registered, ptr null, ptr @mt9p031_open, ptr @mt9p031_close, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"input-clock-frequency\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pixel-clock-frequency\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Color Field\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Horizontal Gradient\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Vertical Gradient\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Diagonal Gradient\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Classic Test Pattern\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Walking 1s\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Monochrome Horizontal Bars\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Monochrome Vertical Bars\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Vertical Color Bars\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BLC, Auto\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BLC Target Level\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BLC Analog Offset\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BLC Digital Offset\00", [45 x i8] zeroinitializer }, align 32
@mt9p031_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9p031_set_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt9p031_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9p031_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mt9p031_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @mt9p031_enum_mbus_code, ptr @mt9p031_enum_frame_size, ptr null, ptr @mt9p031_get_format, ptr @mt9p031_set_format, ptr @mt9p031_get_selection, ptr @mt9p031_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__mt9p031_set_power._entry = internal constant %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 372, ptr @.str.4, ptr @.str.5 }, align 1
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to reset the camera\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mt9p031_set_power\00", [44 x i8] zeroinitializer }, align 32
@__mt9p031_set_power._entry_ptr = internal global ptr @__mt9p031_set_power._entry, section ".printk_index", align 4
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@mt9p031_registered._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 961, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MT9P031 power up failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt9p031_registered\00", [45 x i8] zeroinitializer }, align 32
@mt9p031_registered._entry_ptr = internal global ptr @mt9p031_registered._entry, section ".printk_index", align 4
@mt9p031_registered._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 971, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MT9P031 not detected, wrong version 0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@mt9p031_registered._entry_ptr.45 = internal global ptr @mt9p031_registered._entry.43, section ".printk_index", align 4
@mt9p031_registered._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 976, ptr @.str.48, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MT9P031 detected at address 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt9p031_registered._entry_ptr.49 = internal global ptr @mt9p031_registered._entry.46, section ".printk_index", align 4
@mt9p031_clk_setup.limits = internal constant { %struct.aptina_pll_limits, [44 x i8] } { %struct.aptina_pll_limits { i32 6000000, i32 27000000, i32 2000000, i32 13500000, i32 180000000, i32 360000000, i32 96000000, i32 1, i32 64, i32 16, i32 255, i32 1, i32 128 }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 9963793, i64 9963795, i64 9963796, i64 9963797, i64 9967874, i64 9967875, i64 9967876, i64 9967877, i64 10422531]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"mt9p031_i2c_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1232, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1235, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"mt9p031_of_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1224, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"mt9p031_id\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1216, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1090, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1095, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1109, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1110, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1111, i32 34 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1115, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1119, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1121, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"mt9p031_ctrl_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 858, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant [26 x i8] c"mt9p031_test_pattern_menu\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 862, i32 27 }
@___asan_gen_.128 = private unnamed_addr constant [14 x i8] c"mt9p031_ctrls\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 875, i32 38 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1148, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [19 x i8] c"mt9p031_subdev_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1030, i32 37 }
@___asan_gen_.140 = private unnamed_addr constant [28 x i8] c"mt9p031_subdev_internal_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1036, i32 46 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1184, i32 57 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1069, i32 27 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1070, i32 27 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 863, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 864, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 865, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 866, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 867, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 868, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 869, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 870, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 871, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 872, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 880, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 890, i32 12 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 900, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 910, i32 12 }
@___asan_gen_.194 = private unnamed_addr constant [24 x i8] c"mt9p031_subdev_core_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1013, i32 42 }
@___asan_gen_.197 = private unnamed_addr constant [25 x i8] c"mt9p031_subdev_video_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1017, i32 43 }
@___asan_gen_.200 = private unnamed_addr constant [23 x i8] c"mt9p031_subdev_pad_ops\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1021, i32 41 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 372, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 998, i32 6 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 961, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 970, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 975, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [7 x i8] c"limits\00", align 1
@___asan_gen_.237 = private constant [31 x i8] c"../drivers/media/i2c/mt9p031.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 215, i32 40 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author332, ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file333, ptr @__UNIQUE_ID_license334, ptr @__exitcall_mt9p031_i2c_driver_exit, ptr @__initcall__kmod_mt9p031__330_1242_mt9p031_i2c_driver_init6, ptr @__mt9p031_set_power._entry, ptr @__mt9p031_set_power._entry_ptr, ptr @mt9p031_i2c_driver_exit, ptr @mt9p031_probe._entry, ptr @mt9p031_probe._entry.13, ptr @mt9p031_probe._entry.18, ptr @mt9p031_probe._entry.6, ptr @mt9p031_probe._entry_ptr, ptr @mt9p031_probe._entry_ptr.15, ptr @mt9p031_probe._entry_ptr.20, ptr @mt9p031_probe._entry_ptr.9, ptr @mt9p031_registered._entry, ptr @mt9p031_registered._entry.43, ptr @mt9p031_registered._entry.46, ptr @mt9p031_registered._entry_ptr, ptr @mt9p031_registered._entry_ptr.45, ptr @mt9p031_registered._entry_ptr.49, ptr @mt9p031_i2c_driver, ptr @.str, ptr @mt9p031_of_match, ptr @mt9p031_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @mt9p031_probe.__key, ptr @.str.16, ptr @mt9p031_probe._key, ptr @.str.17, ptr @mt9p031_ctrl_ops, ptr @mt9p031_test_pattern_menu, ptr @mt9p031_ctrls, ptr @.str.19, ptr @mt9p031_subdev_ops, ptr @mt9p031_subdev_internal_ops, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @mt9p031_subdev_core_ops, ptr @mt9p031_subdev_video_ops, ptr @mt9p031_subdev_pad_ops, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @mt9p031_clk_setup.limits], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_test_pattern_menu to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_ctrls to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_registered._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_registered._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_registered._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9p031_clk_setup.limits to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9p031_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mt9p031_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt9p031_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @mt9p031_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9p031_probe(ptr noundef %client, ptr nocapture noundef readonly %did) #2 align 64 {
entry:
  %endpoint.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %endpoint.i) #7
  %0 = call ptr @memset(ptr %endpoint.i, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %endpoint.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 8
  br label %mt9p031_get_pdata.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @of_graph_get_next_endpoint(ptr noundef nonnull %4, ptr noundef null) #7
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %mt9p031_get_pdata.exit.thread, label %cond.end.i

mt9p031_get_pdata.exit.thread:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %endpoint.i) #7
  br label %do.end

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
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 12, i32 noundef 3520) #7
  %tobool13.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool13.not.i, label %if.end10.i.done.i_crit_edge, label %if.end15.i

if.end10.i.done.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %ext_freq.i = getelementptr inbounds %struct.mt9p031_platform_data, ptr %call.i.i, i32 0, i32 1
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.22, ptr noundef %ext_freq.i, i32 noundef 1, i32 noundef 0) #7
  %target_freq.i = getelementptr inbounds %struct.mt9p031_platform_data, ptr %call.i.i, i32 0, i32 2
  %call.i.i34.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.23, ptr noundef %target_freq.i, i32 noundef 1, i32 noundef 0) #7
  %bus.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %endpoint.i, i32 0, i32 2
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus.i, align 4
  %9 = trunc i32 %8 to i8
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %call.i.i, align 4
  %11 = shl i8 %9, 1
  %bf.shl.i = and i8 %11, -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  store i8 %bf.set.i, ptr %call.i.i, align 4
  br label %done.i

done.i:                                           ; preds = %if.end15.i, %if.end10.i.done.i_crit_edge, %cond.end.i.done.i_crit_edge
  %pdata.0.i = phi ptr [ null, %cond.end.i.done.i_crit_edge ], [ %call.i.i, %if.end15.i ], [ null, %if.end10.i.done.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call.i) #7
  br label %mt9p031_get_pdata.exit

mt9p031_get_pdata.exit:                           ; preds = %done.i, %if.then.i
  %retval.0.i = phi ptr [ %pdata.0.i, %done.i ], [ %6, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %endpoint.i) #7
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %mt9p031_get_pdata.exit.do.end_crit_edge, label %if.end

mt9p031_get_pdata.exit.do.end_crit_edge:          ; preds = %mt9p031_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %mt9p031_get_pdata.exit.do.end_crit_edge, %mt9p031_get_pdata.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %mt9p031_get_pdata.exit
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %12 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i192 = call i32 %17(ptr noundef %13) #7
  %and.i = and i32 %call.i.i192, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i)
  %cmp.i193.not = icmp eq i32 %and.i, 6291456
  br i1 %cmp.i193.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i194 = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 664, i32 noundef 3520) #7
  %cmp11 = icmp eq ptr %call.i194, null
  br i1 %cmp11, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %pdata14 = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 4
  %18 = ptrtoint ptr %pdata14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i, ptr %pdata14, align 4
  %output_control = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 17
  %19 = ptrtoint ptr %output_control to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 8066, ptr %output_control, align 4
  %mode2 = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 18
  %20 = ptrtoint ptr %mode2 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 64, ptr %mode2, align 2
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %did, i32 0, i32 1
  %21 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %driver_data, align 4
  %model = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 9
  %23 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %model, align 4
  %regulators = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 8
  %24 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.10, ptr %regulators, align 4
  %arrayidx16 = getelementptr %struct.mt9p031, ptr %call.i194, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.11, ptr %arrayidx16, align 4
  %arrayidx19 = getelementptr %struct.mt9p031, ptr %call.i194, i32 0, i32 8, i32 2
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.12, ptr %arrayidx19, align 4
  %call23 = call i32 @devm_regulator_bulk_get(ptr noundef %dev.i, i32 noundef 3, ptr noundef %regulators) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end28, label %do.body31

do.end28:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14) #10
  br label %cleanup

do.body31:                                        ; preds = %if.end13
  %power_lock = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 5
  call void @__mutex_init(ptr noundef %power_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @mt9p031_probe.__key) #7
  %ctrls = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 14
  %call34 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 10, ptr noundef nonnull @mt9p031_probe._key, ptr noundef nonnull @.str.17) #7
  %call36 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9p031_ctrl_ops, i32 noundef 9963793, i64 noundef 1, i64 noundef 1048575, i64 noundef 1, i64 noundef 1943) #7
  %call38 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9p031_ctrl_ops, i32 noundef 9963795, i64 noundef 8, i64 noundef 1024, i64 noundef 1, i64 noundef 8) #7
  %call40 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9p031_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %call42 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9p031_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %target_freq = getelementptr inbounds %struct.mt9p031_platform_data, ptr %retval.0.i, i32 0, i32 2
  %27 = ptrtoint ptr %target_freq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %target_freq, align 4
  %conv = sext i32 %28 to i64
  %call48 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9p031_ctrl_ops, i32 noundef 10422530, i64 noundef %conv, i64 noundef %conv, i64 noundef 1, i64 noundef %conv) #7
  %call50 = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrls, ptr noundef nonnull @mt9p031_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 9, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @mt9p031_test_pattern_menu) #7
  %call55 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef nonnull @mt9p031_ctrls, ptr noundef null) #7
  %call55.1 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef getelementptr inbounds ([4 x %struct.v4l2_ctrl_config], ptr @mt9p031_ctrls, i32 0, i32 1), ptr noundef null) #7
  %call55.2 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef getelementptr inbounds ([4 x %struct.v4l2_ctrl_config], ptr @mt9p031_ctrls, i32 0, i32 2), ptr noundef null) #7
  %call55.3 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef getelementptr inbounds ([4 x %struct.v4l2_ctrl_config], ptr @mt9p031_ctrls, i32 0, i32 3), ptr noundef null) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i194, i32 0, i32 8
  %29 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 14, i32 9
  %30 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool58.not = icmp eq i32 %31, 0
  br i1 %tobool58.not, label %if.end69, label %do.end62

do.end62:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef %31) #10
  %32 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %error, align 4
  br label %done

if.end69:                                         ; preds = %do.body31
  %call71 = call ptr @v4l2_ctrl_find(ptr noundef %ctrls, i32 noundef 9967874) #7
  %blc_auto = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 15
  %34 = ptrtoint ptr %blc_auto to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call71, ptr %blc_auto, align 4
  %call73 = call ptr @v4l2_ctrl_find(ptr noundef %ctrls, i32 noundef 9967877) #7
  %blc_offset = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 16
  %35 = ptrtoint ptr %blc_offset to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call73, ptr %blc_offset, align 4
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i194, ptr noundef %client, ptr noundef nonnull @mt9p031_subdev_ops) #7
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i194, i32 0, i32 7
  %36 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @mt9p031_subdev_internal_ops, ptr %internal_ops, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i194, i32 0, i32 3
  %37 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 1
  %flags = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 1, i32 4
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %flags, align 4
  %call80 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i194, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.end69.if.then113_crit_edge, label %if.end84

if.end69.if.then113_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then113

if.end84:                                         ; preds = %if.end69
  %flags86 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i194, i32 0, i32 4
  %39 = ptrtoint ptr %flags86 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags86, align 4
  %or = or i32 %40, 4
  store i32 %or, ptr %flags86, align 4
  %crop = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 2
  %width = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2592, ptr %width, align 4
  %height = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1944, ptr %height, align 4
  %43 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16, ptr %crop, align 4
  %top = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 54, ptr %top, align 4
  %45 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp91 = icmp eq i32 %46, 1
  %spec.select = select i1 %cmp91, i32 8211, i32 12305
  %47 = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 3, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %spec.select, ptr %47, align 4
  %format97 = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 3
  %49 = ptrtoint ptr %format97 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2592, ptr %format97, align 4
  %height100 = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %height100 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1944, ptr %height100, align 4
  %field = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 3, i32 4
  %52 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 8, ptr %colorspace, align 4
  %call104 = call ptr @devm_gpiod_get_optional(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 7) #7
  %reset = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 13
  %53 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call104, ptr %reset, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i194, i32 0, i32 11
  %54 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i.i, align 4
  %56 = ptrtoint ptr %pdata14 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdata14, align 4
  %dev.i195 = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 4
  %call2.i = call ptr @devm_clk_get(ptr noundef %dev.i195, ptr noundef null) #7
  %clk.i = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 7
  %58 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call2.i, ptr %clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i196, label %if.end.i198

if.then.i196:                                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %call2.i to i32
  br label %mt9p031_clk_setup.exit

if.end.i198:                                      ; preds = %if.end84
  %ext_freq8.i = getelementptr inbounds %struct.mt9p031_platform_data, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %ext_freq8.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ext_freq8.i, align 4
  %call9.i = call i32 @clk_set_rate(ptr noundef %call2.i, i32 noundef %61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i197 = icmp slt i32 %call9.i, 0
  br i1 %cmp.i197, label %if.end.i198.if.then113_crit_edge, label %if.end11.i

if.end.i198.if.then113_crit_edge:                 ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then113

if.end11.i:                                       ; preds = %if.end.i198
  %62 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk.i, align 4
  %call13.i = call i32 @clk_get_rate(ptr noundef %63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000000, i32 %call13.i)
  %cmp14.i = icmp ugt i32 %call13.i, 27000000
  br i1 %cmp14.i, label %cond.false36.i, label %if.end47.i

cond.false36.i:                                   ; preds = %if.end11.i
  %add.i = add i32 %call13.i, -1
  %target_freq.i199 = getelementptr inbounds %struct.mt9p031_platform_data, ptr %57, i32 0, i32 2
  %64 = ptrtoint ptr %target_freq.i199 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %target_freq.i199, align 4
  %sub.i = add i32 %add.i, %65
  %div17.i = udiv i32 %sub.i, %65
  %sub.i86.i = add i32 %div17.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i86.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i86.i, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false36.i.cond.end38.thread.i_crit_edge, label %cond.end38.i

cond.false36.i.cond.end38.thread.i_crit_edge:     ; preds = %cond.false36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end38.thread.i

cond.end38.i:                                     ; preds = %cond.false36.i
  %66 = call i32 @llvm.ctlz.i32(i32 %sub.i86.i, i1 true) #7, !range !133
  %sub.i.i.i.i = sub nuw nsw i32 32, %66
  %cond39.i = shl nuw i32 1, %sub.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i86.i)
  %cmp41.i = icmp ult i32 %sub.i86.i, 64
  %div4085.i = lshr i32 %cond39.i, 1
  br i1 %cmp41.i, label %cond.end38.i.cond.end38.thread.i_crit_edge, label %cond.end38.i.mt9p031_clk_setup.exit.thread_crit_edge

cond.end38.i.mt9p031_clk_setup.exit.thread_crit_edge: ; preds = %cond.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9p031_clk_setup.exit.thread

cond.end38.i.cond.end38.thread.i_crit_edge:       ; preds = %cond.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end38.thread.i

cond.end38.thread.i:                              ; preds = %cond.end38.i.cond.end38.thread.i_crit_edge, %cond.false36.i.cond.end38.thread.i_crit_edge
  %div408590.i = phi i32 [ %div4085.i, %cond.end38.i.cond.end38.thread.i_crit_edge ], [ 0, %cond.false36.i.cond.end38.thread.i_crit_edge ]
  br label %mt9p031_clk_setup.exit.thread

mt9p031_clk_setup.exit.thread:                    ; preds = %cond.end38.thread.i, %cond.end38.i.mt9p031_clk_setup.exit.thread_crit_edge
  %67 = phi i32 [ %div408590.i, %cond.end38.thread.i ], [ 64, %cond.end38.i.mt9p031_clk_setup.exit.thread_crit_edge ]
  %clk_div.i = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 11
  %68 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %clk_div.i, align 4
  %use_pll.i = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 12
  %69 = ptrtoint ptr %use_pll.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %use_pll.i, align 4
  br label %if.end108

if.end47.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %pll.i = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 10
  %70 = ptrtoint ptr %pll.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call13.i, ptr %pll.i, align 4
  %target_freq48.i = getelementptr inbounds %struct.mt9p031_platform_data, ptr %57, i32 0, i32 2
  %71 = ptrtoint ptr %target_freq48.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %target_freq48.i, align 4
  %pix_clock.i = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 10, i32 1
  %73 = ptrtoint ptr %pix_clock.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %pix_clock.i, align 4
  %use_pll50.i = getelementptr inbounds %struct.mt9p031, ptr %call.i194, i32 0, i32 12
  %74 = ptrtoint ptr %use_pll50.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %use_pll50.i, align 4
  %call53.i = call i32 @aptina_pll_calculate(ptr noundef %dev.i195, ptr noundef nonnull @mt9p031_clk_setup.limits, ptr noundef %pll.i) #7
  br label %mt9p031_clk_setup.exit

mt9p031_clk_setup.exit:                           ; preds = %if.end47.i, %if.then.i196
  %retval.0.i200 = phi i32 [ %59, %if.then.i196 ], [ %call53.i, %if.end47.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i200)
  %tobool106.not = icmp eq i32 %retval.0.i200, 0
  br i1 %tobool106.not, label %mt9p031_clk_setup.exit.if.end108_crit_edge, label %mt9p031_clk_setup.exit.done_crit_edge

mt9p031_clk_setup.exit.done_crit_edge:            ; preds = %mt9p031_clk_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

mt9p031_clk_setup.exit.if.end108_crit_edge:       ; preds = %mt9p031_clk_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

if.end108:                                        ; preds = %mt9p031_clk_setup.exit.if.end108_crit_edge, %mt9p031_clk_setup.exit.thread
  %call110 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i194) #7
  br label %done

done:                                             ; preds = %if.end108, %mt9p031_clk_setup.exit.done_crit_edge, %do.end62
  %ret.0 = phi i32 [ %33, %do.end62 ], [ %retval.0.i200, %mt9p031_clk_setup.exit.done_crit_edge ], [ %call110, %if.end108 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp111 = icmp slt i32 %ret.0, 0
  br i1 %cmp111, label %done.if.then113_crit_edge, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

done.if.then113_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then113

if.then113:                                       ; preds = %done.if.then113_crit_edge, %if.end.i198.if.then113_crit_edge, %if.end69.if.then113_crit_edge
  %ret.0210 = phi i32 [ %ret.0, %done.if.then113_crit_edge ], [ %call80, %if.end69.if.then113_crit_edge ], [ %call9.i, %if.end.i198.if.then113_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  call void @mutex_destroy(ptr noundef %power_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %done.cleanup_crit_edge, %do.end28, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call23, %do.end28 ], [ -5, %do.end6 ], [ -12, %if.end8.cleanup_crit_edge ], [ %ret.0210, %if.then113 ], [ %ret.0, %done.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9p031_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrls = getelementptr inbounds %struct.mt9p031, ptr %1, i32 0, i32 14
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %power_lock = getelementptr inbounds %struct.mt9p031, ptr %1, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %power_lock) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9p031_s_ctrl(ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -468
  %dev_priv.i = getelementptr i8, ptr %1, i32 -316
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 20
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 9963793, label %sw.bb
    i32 9963795, label %sw.bb10
    i32 9963796, label %sw.bb36
    i32 9963797, label %sw.bb43
    i32 10422531, label %sw.bb50
    i32 9967874, label %sw.bb98
    i32 9967875, label %sw.bb116
    i32 9967876, label %sw.bb120
    i32 9967877, label %sw.bb140
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = lshr i32 %10, 16
  %conv = trunc i32 %11 to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv) #7
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 8, i16 noundef zeroext %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end5

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %conv8 = trunc i32 %14 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv8) #7
  %call.i.i220 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 9, i16 noundef zeroext %15) #7
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %17)
  %cmp12 = icmp slt i32 %17, 33
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %conv16 = trunc i32 %17 to i16
  br label %if.end34

if.else:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %17)
  %cmp18 = icmp ult i32 %17, 65
  br i1 %cmp18, label %if.then20, label %if.else26

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and22 = and i32 %17, -2
  %18 = ptrtoint ptr %val11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and22, ptr %val11, align 4
  %19 = lshr i32 %17, 1
  %20 = trunc i32 %19 to i16
  %conv25 = or i16 %20, 64
  br label %if.end34

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and28 = and i32 %17, -8
  %21 = ptrtoint ptr %val11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and28, ptr %val11, align 4
  %and28.tr = trunc i32 %and28 to i16
  %22 = shl i16 %and28.tr, 5
  %conv32 = add i16 %22, -1952
  br label %if.end34

if.end34:                                         ; preds = %if.else26, %if.then20, %if.then14
  %data.0 = phi i16 [ %conv16, %if.then14 ], [ %conv25, %if.then20 ], [ %conv32, %if.else26 ]
  %23 = tail call i16 @llvm.bswap.i16(i16 %data.0) #7
  %call.i.i221 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 53, i16 noundef zeroext %23) #7
  br label %cleanup

sw.bb36:                                          ; preds = %if.end
  %val37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %24 = ptrtoint ptr %val37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool38.not = icmp eq i32 %25, 0
  %mode2.i223 = getelementptr i8, ptr %1, i32 194
  %26 = ptrtoint ptr %mode2.i223 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mode2.i223, align 2
  br i1 %tobool38.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %sw.bb36
  %or.i = or i16 %27, 16384
  %28 = tail call i16 @llvm.bswap.i16(i16 %or.i) #7
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 32, i16 noundef zeroext %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.then39.cleanup_crit_edge, label %if.end.i

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %mode2.i223 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %or.i, ptr %mode2.i223, align 2
  br label %cleanup

if.else41:                                        ; preds = %sw.bb36
  %and.i = and i16 %27, -16385
  %30 = tail call i16 @llvm.bswap.i16(i16 %and.i) #7
  %call.i.i.i224 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 32, i16 noundef zeroext %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i224)
  %cmp.i225 = icmp slt i32 %call.i.i.i224, 0
  br i1 %cmp.i225, label %if.else41.cleanup_crit_edge, label %if.end.i226

if.else41.cleanup_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i226:                                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %mode2.i223 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %and.i, ptr %mode2.i223, align 2
  br label %cleanup

sw.bb43:                                          ; preds = %if.end
  %val44 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool45.not = icmp eq i32 %33, 0
  %mode2.i238 = getelementptr i8, ptr %1, i32 194
  %34 = ptrtoint ptr %mode2.i238 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %mode2.i238, align 2
  br i1 %tobool45.not, label %if.else48, label %if.then46

if.then46:                                        ; preds = %sw.bb43
  %or.i231 = or i16 %35, -32768
  %36 = tail call i16 @llvm.bswap.i16(i16 %or.i231) #7
  %call.i.i.i232 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 32, i16 noundef zeroext %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i232)
  %cmp.i233 = icmp slt i32 %call.i.i.i232, 0
  br i1 %cmp.i233, label %if.then46.cleanup_crit_edge, label %if.end.i234

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i234:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %mode2.i238 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %or.i231, ptr %mode2.i238, align 2
  br label %cleanup

if.else48:                                        ; preds = %sw.bb43
  %and.i239 = and i16 %35, 32767
  %38 = tail call i16 @llvm.bswap.i16(i16 %and.i239) #7
  %call.i.i.i240 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 32, i16 noundef zeroext %38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i240)
  %cmp.i241 = icmp slt i32 %call.i.i.i240, 0
  br i1 %cmp.i241, label %if.else48.cleanup_crit_edge, label %if.end.i242

if.else48.cleanup_crit_edge:                      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i242:                                      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %mode2.i238 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %and.i239, ptr %mode2.i238, align 2
  br label %cleanup

sw.bb50:                                          ; preds = %if.end
  %blc_auto = getelementptr i8, ptr %1, i32 184
  %40 = ptrtoint ptr %blc_auto to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %blc_auto, align 4
  %val51 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %42 = ptrtoint ptr %val51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp52 = icmp eq i32 %43, 0
  tail call void @v4l2_ctrl_activate(ptr noundef %41, i1 noundef zeroext %cmp52) #7
  %blc_offset = getelementptr i8, ptr %1, i32 188
  %44 = ptrtoint ptr %blc_offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %blc_offset, align 4
  %46 = ptrtoint ptr %val51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp55 = icmp eq i32 %47, 0
  tail call void @v4l2_ctrl_activate(ptr noundef %45, i1 noundef zeroext %cmp55) #7
  %48 = ptrtoint ptr %val51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool58.not = icmp eq i32 %49, 0
  br i1 %tobool58.not, label %if.then59, label %if.end66

if.then59:                                        ; preds = %sw.bb50
  %call60 = tail call fastcc i32 @mt9p031_restore_blc(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then59.cleanup_crit_edge, label %if.end64

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end64:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i245 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -96, i16 noundef zeroext 0) #7
  br label %cleanup

if.end66:                                         ; preds = %sw.bb50
  %call.i.i246 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -95, i16 noundef zeroext -24571) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i246)
  %cmp68 = icmp slt i32 %call.i.i246, 0
  br i1 %cmp68, label %if.end66.cleanup_crit_edge, label %if.end71

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end71:                                         ; preds = %if.end66
  %call.i.i247 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -94, i16 noundef zeroext 20490) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i247)
  %cmp73 = icmp slt i32 %call.i.i247, 0
  br i1 %cmp73, label %if.end71.cleanup_crit_edge, label %if.end76

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76:                                         ; preds = %if.end71
  %call.i.i248 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -93, i16 noundef zeroext -24566) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i248)
  %cmp78 = icmp slt i32 %call.i.i248, 0
  br i1 %cmp78, label %if.end76.cleanup_crit_edge, label %if.end81

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end81:                                         ; preds = %if.end76
  %50 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_priv.i, align 4
  %mode2.i250 = getelementptr i8, ptr %1, i32 194
  %52 = ptrtoint ptr %mode2.i250 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mode2.i250, align 2
  %and.i251 = and i16 %53, -65
  %54 = tail call i16 @llvm.bswap.i16(i16 %and.i251) #7
  %call.i.i.i252 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %51, i8 noundef zeroext 32, i16 noundef zeroext %54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i252)
  %cmp.i253 = icmp slt i32 %call.i.i.i252, 0
  br i1 %cmp.i253, label %if.end81.cleanup_crit_edge, label %if.end86

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end86:                                         ; preds = %if.end81
  %55 = ptrtoint ptr %mode2.i250 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %and.i251, ptr %mode2.i250, align 2
  %call.i.i257 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 75, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i257)
  %cmp88 = icmp slt i32 %call.i.i257, 0
  br i1 %cmp88, label %if.end86.cleanup_crit_edge, label %if.end91

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end91:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %val51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val51, align 4
  %.tr = trunc i32 %57 to i16
  %58 = shl i16 %.tr, 3
  %conv96 = add i16 %58, -7
  %59 = tail call i16 @llvm.bswap.i16(i16 %conv96) #7
  %call.i.i258 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -96, i16 noundef zeroext %59) #7
  br label %cleanup

sw.bb98:                                          ; preds = %if.end
  %val99 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %60 = ptrtoint ptr %val99 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool100.not = icmp eq i32 %61, 0
  %conv105 = select i1 %tobool100.not, i16 0, i16 64
  %mode2.i260 = getelementptr i8, ptr %1, i32 194
  %62 = ptrtoint ptr %mode2.i260 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %mode2.i260, align 2
  %neg.i = select i1 %tobool100.not, i16 -65, i16 -1
  %and.i261 = and i16 %neg.i, %63
  %or.i262 = or i16 %and.i261, %conv105
  %64 = tail call i16 @llvm.bswap.i16(i16 %or.i262) #7
  %call.i.i.i263 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 32, i16 noundef zeroext %64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i263)
  %cmp.i264 = icmp slt i32 %call.i.i.i263, 0
  br i1 %cmp.i264, label %sw.bb98.cleanup_crit_edge, label %if.end110

sw.bb98.cleanup_crit_edge:                        ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end110:                                        ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %mode2.i260 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %or.i262, ptr %mode2.i260, align 2
  %66 = ptrtoint ptr %val99 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool112.not = icmp eq i32 %67, 0
  %68 = select i1 %tobool112.not, i16 256, i16 0
  %call.i.i268 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 98, i16 noundef zeroext %68) #7
  br label %cleanup

sw.bb116:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val117 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %69 = ptrtoint ptr %val117 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val117, align 4
  %conv118 = trunc i32 %70 to i16
  %71 = tail call i16 @llvm.bswap.i16(i16 %conv118) #7
  %call.i.i269 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 73, i16 noundef zeroext %71) #7
  br label %cleanup

sw.bb120:                                         ; preds = %if.end
  %val121 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %72 = ptrtoint ptr %val121 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val121, align 4
  %74 = trunc i32 %73 to i16
  %conv123 = and i16 %74, 511
  %75 = tail call i16 @llvm.bswap.i16(i16 %conv123) #7
  %call.i.i270 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 96, i16 noundef zeroext %75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i270)
  %cmp125 = icmp slt i32 %call.i.i270, 0
  br i1 %cmp125, label %sw.bb120.cleanup_crit_edge, label %if.end128

sw.bb120.cleanup_crit_edge:                       ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end128:                                        ; preds = %sw.bb120
  %call.i.i271 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 97, i16 noundef zeroext %75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i271)
  %cmp130 = icmp slt i32 %call.i.i271, 0
  br i1 %cmp130, label %if.end128.cleanup_crit_edge, label %if.end133

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end133:                                        ; preds = %if.end128
  %call.i.i272 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 99, i16 noundef zeroext %75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i272)
  %cmp135 = icmp slt i32 %call.i.i272, 0
  br i1 %cmp135, label %if.end133.cleanup_crit_edge, label %if.end138

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end138:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i273 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 100, i16 noundef zeroext %75) #7
  br label %cleanup

sw.bb140:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val141 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %76 = ptrtoint ptr %val141 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val141, align 4
  %78 = trunc i32 %77 to i16
  %conv143 = and i16 %78, 4095
  %79 = tail call i16 @llvm.bswap.i16(i16 %conv143) #7
  %call.i.i274 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 75, i16 noundef zeroext %79) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb140, %if.end138, %if.end133.cleanup_crit_edge, %if.end128.cleanup_crit_edge, %sw.bb120.cleanup_crit_edge, %sw.bb116, %if.end110, %sw.bb98.cleanup_crit_edge, %if.end91, %if.end86.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.end64, %if.then59.cleanup_crit_edge, %if.end.i242, %if.else48.cleanup_crit_edge, %if.end.i234, %if.then46.cleanup_crit_edge, %if.end.i226, %if.else41.cleanup_crit_edge, %if.end.i, %if.then39.cleanup_crit_edge, %if.end34, %if.end5, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i274, %sw.bb140 ], [ %call.i.i273, %if.end138 ], [ %call.i.i269, %sw.bb116 ], [ %call.i.i268, %if.end110 ], [ %call.i.i258, %if.end91 ], [ %call.i.i245, %if.end64 ], [ %call.i.i221, %if.end34 ], [ %call.i.i220, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %sw.bb.cleanup_crit_edge ], [ %call60, %if.then59.cleanup_crit_edge ], [ %call.i.i246, %if.end66.cleanup_crit_edge ], [ %call.i.i247, %if.end71.cleanup_crit_edge ], [ %call.i.i248, %if.end76.cleanup_crit_edge ], [ %call.i.i257, %if.end86.cleanup_crit_edge ], [ %call.i.i270, %sw.bb120.cleanup_crit_edge ], [ %call.i.i271, %if.end128.cleanup_crit_edge ], [ %call.i.i272, %if.end133.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i ], [ %call.i.i.i, %if.then39.cleanup_crit_edge ], [ 0, %if.end.i226 ], [ %call.i.i.i224, %if.else41.cleanup_crit_edge ], [ 0, %if.end.i234 ], [ %call.i.i.i232, %if.then46.cleanup_crit_edge ], [ 0, %if.end.i242 ], [ %call.i.i.i240, %if.else48.cleanup_crit_edge ], [ %call.i.i.i252, %if.end81.cleanup_crit_edge ], [ %call.i.i.i263, %sw.bb98.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9p031_restore_blc(ptr nocapture noundef %mt9p031) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %mt9p031, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %blc_auto = getelementptr inbounds %struct.mt9p031, ptr %mt9p031, i32 0, i32 15
  %2 = ptrtoint ptr %blc_auto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %blc_auto, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %mode2.i = getelementptr inbounds %struct.mt9p031, ptr %mt9p031, i32 0, i32 18
  %6 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode2.i, align 2
  %or.i = or i16 %7, 64
  %8 = tail call i16 @llvm.bswap.i16(i16 %or.i) #7
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 32, i16 noundef zeroext %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %mt9p031_set_mode2.exit

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mt9p031_set_mode2.exit:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %mode2.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %or.i, ptr %mode2.i, align 2
  br label %if.end4

if.end4:                                          ; preds = %mt9p031_set_mode2.exit, %entry.if.end4_crit_edge
  %blc_offset = getelementptr inbounds %struct.mt9p031, ptr %mt9p031, i32 0, i32 16
  %10 = ptrtoint ptr %blc_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %blc_offset, align 4
  %cur5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %cur5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7.not = icmp eq i32 %13, 0
  br i1 %cmp7.not, label %if.end4.if.end17_crit_edge, label %if.then8

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then8:                                         ; preds = %if.end4
  %conv = trunc i32 %13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv) #7
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 73, i16 noundef zeroext %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp13 = icmp slt i32 %call.i.i, 0
  br i1 %cmp13, label %if.then8.cleanup_crit_edge, label %if.then8.if.end17_crit_edge

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.then8.if.end17_crit_edge, %if.end4.if.end17_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call.i.i, %if.then8.cleanup_crit_edge ], [ %call.i.i.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9p031_set_power(ptr noundef %subdev, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %power_lock = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_lock, i32 noundef 0) #7
  %power_count = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 6
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
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  br i1 %tobool.not, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  %reset.i.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 13
  %4 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i.__mt9p031_set_power.exit.thread50_crit_edge, label %if.then.i.i

if.then.i.__mt9p031_set_power.exit.thread50_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9p031_set_power.exit.thread50

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %__mt9p031_set_power.exit.thread50

__mt9p031_set_power.exit.thread50:                ; preds = %if.then.i.i, %if.then.i.__mt9p031_set_power.exit.thread50_crit_edge
  %regulators.i.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 8
  %call.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %regulators.i.i) #7
  %clk.i.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 7
  %6 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %if.end9

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call fastcc i32 @mt9p031_power_on(ptr noundef %subdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.out_crit_edge, label %if.end3.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end3.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i, align 4
  %call.i.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext 13, i16 noundef zeroext 256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end3.i.do.end.i_crit_edge, label %if.end.i.i

if.end3.i.do.end.i_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end3.i
  %call.i.i22.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext 13, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i22.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.do.end.i_crit_edge, label %if.end5.i.i

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %clk_div.i.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 11
  %10 = ptrtoint ptr %clk_div.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_div.i.i, align 4
  %conv.i.i = trunc i32 %11 to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #7
  %call.i.i23.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext 10, i16 noundef zeroext %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i23.i.i)
  %cmp7.i.i = icmp slt i32 %call.i.i23.i.i, 0
  br i1 %cmp7.i.i, label %if.end5.i.i.do.end.i_crit_edge, label %if.end10.i.i

if.end5.i.i.do.end.i_crit_edge:                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end10.i.i:                                     ; preds = %if.end5.i.i
  %13 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i, align 4
  %output_control.i.i.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 17
  %15 = ptrtoint ptr %output_control.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %output_control.i.i.i, align 4
  %and.i.i.i = and i16 %16, -3
  %17 = tail call i16 @llvm.bswap.i16(i16 %and.i.i.i) #7
  %call.i.i.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %14, i8 noundef zeroext 7, i16 noundef zeroext %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end10.i.i.do.end.i_crit_edge, label %if.end7.i

if.end10.i.i.do.end.i_crit_edge:                  ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.end10.i.i.do.end.i_crit_edge, %if.end5.i.i.do.end.i_crit_edge, %if.end.i.i.do.end.i_crit_edge, %if.end3.i.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i.i.i.i, %if.end10.i.i.do.end.i_crit_edge ], [ %call.i.i23.i.i, %if.end5.i.i.do.end.i_crit_edge ], [ %call.i.i22.i.i, %if.end.i.i.do.end.i_crit_edge ], [ %call.i.i.i.i, %if.end3.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38) #10
  br label %out

if.end7.i:                                        ; preds = %if.end10.i.i
  %18 = ptrtoint ptr %output_control.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %and.i.i.i, ptr %output_control.i.i.i, align 4
  %pdata.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 4
  %19 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata.i, align 4
  %tobool8.not.i = icmp eq ptr %20, null
  br i1 %tobool8.not.i, label %if.end7.i.__mt9p031_set_power.exit_crit_edge, label %land.lhs.true.i

if.end7.i.__mt9p031_set_power.exit_crit_edge:     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9p031_set_power.exit

land.lhs.true.i:                                  ; preds = %if.end7.i
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool10.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool10.not.i, label %land.lhs.true.i.__mt9p031_set_power.exit_crit_edge, label %if.then11.i

land.lhs.true.i.__mt9p031_set_power.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9p031_set_power.exit

if.then11.i:                                      ; preds = %land.lhs.true.i
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 10, i16 noundef zeroext 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp13.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp13.i, label %if.then11.i.out_crit_edge, label %if.then11.i.__mt9p031_set_power.exit_crit_edge

if.then11.i.__mt9p031_set_power.exit_crit_edge:   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9p031_set_power.exit

if.then11.i.out_crit_edge:                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

__mt9p031_set_power.exit:                         ; preds = %if.then11.i.__mt9p031_set_power.exit_crit_edge, %land.lhs.true.i.__mt9p031_set_power.exit_crit_edge, %if.end7.i.__mt9p031_set_power.exit_crit_edge
  %ctrls.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 14
  %call17.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp7 = icmp slt i32 %call17.i, 0
  br i1 %cmp7, label %__mt9p031_set_power.exit.out_crit_edge, label %__mt9p031_set_power.exit.if.end9_crit_edge

__mt9p031_set_power.exit.if.end9_crit_edge:       ; preds = %__mt9p031_set_power.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

__mt9p031_set_power.exit.out_crit_edge:           ; preds = %__mt9p031_set_power.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9:                                          ; preds = %__mt9p031_set_power.exit.if.end9_crit_edge, %__mt9p031_set_power.exit.thread50, %entry.if.end9_crit_edge
  %ret.0 = phi i32 [ %call17.i, %__mt9p031_set_power.exit.if.end9_crit_edge ], [ 0, %entry.if.end9_crit_edge ], [ 0, %__mt9p031_set_power.exit.thread50 ]
  %cond = select i1 %tobool.not, i32 -1, i32 1
  %22 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %power_count, align 4
  %add = add i32 %23, %cond
  store i32 %add, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp13 = icmp slt i32 %add, 0
  br i1 %cmp13, label %do.end, label %if.end9.out_crit_edge, !prof !134

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 941, i32 noundef 9, ptr noundef null) #7
  br label %out

out:                                              ; preds = %do.end, %if.end9.out_crit_edge, %__mt9p031_set_power.exit.out_crit_edge, %if.then11.i.out_crit_edge, %do.end.i, %if.end.i.out_crit_edge
  %ret.1 = phi i32 [ %call17.i, %__mt9p031_set_power.exit.out_crit_edge ], [ %ret.0, %do.end ], [ %ret.0, %if.end9.out_crit_edge ], [ %call.i.i.i, %if.then11.i.out_crit_edge ], [ %call1.i, %if.end.i.out_crit_edge ], [ %retval.0.i.ph.i, %do.end.i ]
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
define internal fastcc i32 @mt9p031_power_on(ptr noundef %mt9p031) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.mt9p031, ptr %mt9p031, i32 0, i32 13
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %1, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regulators = getelementptr inbounds %struct.mt9p031, ptr %mt9p031, i32 0, i32 8
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %regulators) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %clk = getelementptr inbounds %struct.mt9p031, ptr %mt9p031, i32 0, i32 7
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end3.if.end14_crit_edge, label %if.then5

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then5:                                         ; preds = %if.end3
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.if.then9_crit_edge

if.then5.if.then9_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.end.i:                                         ; preds = %if.then5
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end14_crit_edge, label %if.then3.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef nonnull %3) #7
  br label %if.then9

if.then9:                                         ; preds = %if.then3.i, %if.then5.if.then9_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then5.if.then9_crit_edge ]
  %call12 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %regulators) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end.i.if.end14_crit_edge, %if.end3.if.end14_crit_edge
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  %tobool16.not = icmp eq ptr %5, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.then17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end14.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then9 ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9p031_s_stream(ptr nocapture noundef %subdev, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 11, i16 noundef zeroext 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call.i.i59 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 11, i16 noundef zeroext 768) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59)
  %cmp7 = icmp slt i32 %call.i.i59, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %output_control.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 17
  %4 = ptrtoint ptr %output_control.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %output_control.i, align 4
  %and.i = and i16 %5, -3
  %6 = tail call i16 @llvm.bswap.i16(i16 %and.i) #7
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 7, i16 noundef zeroext %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %7 = ptrtoint ptr %output_control.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %and.i, ptr %output_control.i, align 4
  %use_pll.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 12
  %8 = ptrtoint ptr %use_pll.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_pll.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end15.cleanup_crit_edge, label %if.end.i62

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i62:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i, align 4
  %call.i.i.i61 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %11, i8 noundef zeroext 16, i16 noundef zeroext 20480) #7
  br label %cleanup

if.end17:                                         ; preds = %entry
  %format1.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 3
  %crop2.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 2
  %12 = ptrtoint ptr %crop2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crop2.i, align 4
  %conv.i = trunc i32 %13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %call.i.i.i65 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i65)
  %cmp.i66 = icmp slt i32 %call.i.i.i65, 0
  br i1 %cmp.i66, label %if.end17.cleanup_crit_edge, label %if.end.i67

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i67:                                       ; preds = %if.end17
  %top.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %top.i, align 4
  %conv5.i = trunc i32 %16 to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv5.i) #7
  %call.i.i129.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i129.i)
  %cmp7.i = icmp slt i32 %call.i.i129.i, 0
  br i1 %cmp7.i, label %if.end.i67.cleanup_crit_edge, label %if.end10.i

if.end.i67.cleanup_crit_edge:                     ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i67
  %width.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width.i, align 4
  %20 = trunc i32 %19 to i16
  %conv11.i = add i16 %20, -1
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv11.i) #7
  %call.i.i130.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 4, i16 noundef zeroext %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i130.i)
  %cmp13.i = icmp slt i32 %call.i.i130.i, 0
  br i1 %cmp13.i, label %if.end10.i.cleanup_crit_edge, label %if.end16.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16.i:                                       ; preds = %if.end10.i
  %height.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height.i, align 4
  %24 = trunc i32 %23 to i16
  %conv18.i = add i16 %24, -1
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv18.i) #7
  %call.i.i131.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 3, i16 noundef zeroext %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i131.i)
  %cmp20.i = icmp slt i32 %call.i.i131.i, 0
  br i1 %cmp20.i, label %if.end16.i.cleanup_crit_edge, label %if.end23.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23.i:                                       ; preds = %if.end16.i
  %26 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width.i, align 4
  %28 = ptrtoint ptr %format1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %format1.i, align 4
  %div126.i = lshr i32 %29, 1
  %add.i = add i32 %div126.i, %27
  %div26.i = udiv i32 %add.i, %29
  %30 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height.i, align 4
  %height30.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %height30.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height30.i, align 4
  %div32127.i = lshr i32 %33, 1
  %add33.i = add i32 %div32127.i, %31
  %div34.i = udiv i32 %add33.i, %33
  %34 = tail call i32 @llvm.cttz.i32(i32 %div26.i, i1 true) #7, !range !133
  %.op.i = shl nuw i32 1, %34
  %35 = tail call i32 @llvm.cttz.i32(i32 %div34.i, i1 true) #7, !range !133
  %sub40.i = shl i32 %.op.i, 4
  %shl41.i = add i32 %sub40.i, 65520
  %sub42.i = add i32 %div26.i, 65535
  %or.i = or i32 %shl41.i, %sub42.i
  %conv43.i = trunc i32 %or.i to i16
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv43.i) #7
  %call.i.i132.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 35, i16 noundef zeroext %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i132.i)
  %cmp45.i = icmp slt i32 %call.i.i132.i, 0
  br i1 %cmp45.i, label %if.end23.i.cleanup_crit_edge, label %if.end48.i

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48.i:                                       ; preds = %if.end23.i
  %sub49.i = shl i32 16, %35
  %shl50.i = add i32 %sub49.i, 65520
  %sub51.i = add i32 %div34.i, 65535
  %or52.i = or i32 %shl50.i, %sub51.i
  %conv53.i = trunc i32 %or52.i to i16
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv53.i) #7
  %call.i.i133.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 34, i16 noundef zeroext %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i133.i)
  %cmp55.i = icmp slt i32 %call.i.i133.i, 0
  br i1 %cmp55.i, label %if.end48.i.cleanup_crit_edge, label %if.end58.i

if.end48.i.cleanup_crit_edge:                     ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end58.i:                                       ; preds = %if.end48.i
  %mul.i = shl i32 346, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp61.i = icmp ult i32 %34, 2
  %.op.op.i = lshr i32 80, %.op.i
  %.op.op.op.i = add nuw nsw i32 %.op.op.i, 64
  %add59.i = select i1 %cmp61.i, i32 %.op.op.op.i, i32 74
  %add63.i = add i32 %add59.i, %mul.i
  %38 = trunc i32 %add63.i to i16
  %conv65.i = add i16 %38, -1
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv65.i) #7
  %call.i.i134.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 5, i16 noundef zeroext %39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i134.i)
  %cmp67.i = icmp slt i32 %call.i.i134.i, 0
  br i1 %cmp67.i, label %if.end58.i.cleanup_crit_edge, label %mt9p031_set_params.exit

if.end58.i.cleanup_crit_edge:                     ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mt9p031_set_params.exit:                          ; preds = %if.end58.i
  %call.i.i135.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 6, i16 noundef zeroext 6400) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i135.i)
  %cmp19 = icmp slt i32 %call.i.i135.i, 0
  br i1 %cmp19, label %mt9p031_set_params.exit.cleanup_crit_edge, label %if.end22

mt9p031_set_params.exit.cleanup_crit_edge:        ; preds = %mt9p031_set_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %mt9p031_set_params.exit
  %40 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i, align 4
  %output_control.i70 = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 17
  %42 = ptrtoint ptr %output_control.i70 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %output_control.i70, align 4
  %or.i71 = or i16 %43, 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %or.i71) #7
  %call.i.i.i72 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %41, i8 noundef zeroext 7, i16 noundef zeroext %44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i72)
  %cmp.i73 = icmp slt i32 %call.i.i.i72, 0
  br i1 %cmp.i73, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %45 = ptrtoint ptr %output_control.i70 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %or.i71, ptr %output_control.i70, align 4
  %call.i.i77 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 11, i16 noundef zeroext 256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %cmp30 = icmp slt i32 %call.i.i77, 0
  br i1 %cmp30, label %if.end27.cleanup_crit_edge, label %if.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %46 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i, align 4
  %use_pll.i79 = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 12
  %48 = ptrtoint ptr %use_pll.i79 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %use_pll.i79, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i80 = icmp eq i8 %49, 0
  br i1 %tobool.not.i80, label %if.end33.cleanup_crit_edge, label %if.end.i83

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i83:                                       ; preds = %if.end33
  %call.i.i.i81 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %47, i8 noundef zeroext 16, i16 noundef zeroext 20736) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i81)
  %cmp.i82 = icmp slt i32 %call.i.i.i81, 0
  br i1 %cmp.i82, label %if.end.i83.cleanup_crit_edge, label %if.end3.i

if.end.i83.cleanup_crit_edge:                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i83
  %m.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 10, i32 3
  %50 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %m.i, align 4
  %shl.i = shl i32 %51, 8
  %n.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 10, i32 2
  %52 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %n.i, align 4
  %sub.i = add i32 %53, 65535
  %or.i84 = or i32 %sub.i, %shl.i
  %conv.i85 = trunc i32 %or.i84 to i16
  %54 = tail call i16 @llvm.bswap.i16(i16 %conv.i85) #7
  %call.i.i33.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %47, i8 noundef zeroext 17, i16 noundef zeroext %54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33.i)
  %cmp6.i = icmp slt i32 %call.i.i33.i, 0
  br i1 %cmp6.i, label %if.end3.i.cleanup_crit_edge, label %if.end9.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %if.end3.i
  %p1.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 10, i32 4
  %55 = ptrtoint ptr %p1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %p1.i, align 4
  %57 = trunc i32 %56 to i16
  %conv12.i = add i16 %57, -1
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv12.i) #7
  %call.i.i34.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %47, i8 noundef zeroext 18, i16 noundef zeroext %58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34.i)
  %cmp14.i = icmp slt i32 %call.i.i34.i, 0
  br i1 %cmp14.i, label %if.end9.i.cleanup_crit_edge, label %if.end17.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call.i.i35.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %47, i8 noundef zeroext 16, i16 noundef zeroext 21248) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17.i, %if.end9.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i83.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %mt9p031_set_params.exit.cleanup_crit_edge, %if.end58.i.cleanup_crit_edge, %if.end48.i.cleanup_crit_edge, %if.end23.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.end.i67.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.i62, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.then.cleanup_crit_edge ], [ %call.i.i59, %if.end.cleanup_crit_edge ], [ %call.i.i135.i, %mt9p031_set_params.exit.cleanup_crit_edge ], [ %call.i.i77, %if.end27.cleanup_crit_edge ], [ %call.i.i.i61, %if.end.i62 ], [ 0, %if.end15.cleanup_crit_edge ], [ %call.i.i35.i, %if.end17.i ], [ 0, %if.end33.cleanup_crit_edge ], [ %call.i.i.i81, %if.end.i83.cleanup_crit_edge ], [ %call.i.i33.i, %if.end3.i.cleanup_crit_edge ], [ %call.i.i34.i, %if.end9.i.cleanup_crit_edge ], [ %call.i.i.i, %if.end10.cleanup_crit_edge ], [ %call.i.i134.i, %if.end58.i.cleanup_crit_edge ], [ %call.i.i133.i, %if.end48.i.cleanup_crit_edge ], [ %call.i.i132.i, %if.end23.i.cleanup_crit_edge ], [ %call.i.i131.i, %if.end16.i.cleanup_crit_edge ], [ %call.i.i130.i, %if.end10.i.cleanup_crit_edge ], [ %call.i.i129.i, %if.end.i67.cleanup_crit_edge ], [ %call.i.i.i65, %if.end17.cleanup_crit_edge ], [ %call.i.i.i72, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9p031_enum_mbus_code(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %code2 = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %code2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code2, align 4
  %code3 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9p031_enum_frame_size(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp ugt i32 %1, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  %code1 = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.not = icmp eq i32 %3, %5
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %1, 1
  %6 = tail call i32 @llvm.umin.i32(i32 %add, i32 7)
  %div.rhs.trunc = trunc i32 %6 to i16
  %div21 = udiv i16 2592, %div.rhs.trunc
  %div.zext = zext i16 %div21 to i32
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %7 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div.zext, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %8 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div.zext, ptr %max_width, align 4
  %div8.rhs.trunc = trunc i32 %add to i16
  %div822 = udiv i16 1944, %div8.rhs.trunc
  %div8.zext = zext i16 %div822 to i32
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %9 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div8.zext, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %10 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div8.zext, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9p031_get_format(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %1, label %entry.__mt9p031_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__mt9p031_get_pad_format.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9p031_get_pad_format.exit

sw.bb.i:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
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
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !136

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i
  br label %__mt9p031_get_pad_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %format.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 3
  br label %__mt9p031_get_pad_format.exit

__mt9p031_get_pad_format.exit:                    ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %entry.__mt9p031_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %format.i, %sw.bb1.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %entry.__mt9p031_get_pad_format.exit_crit_edge ]
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9p031_set_format(ptr nocapture noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %1, label %entry.__mt9p031_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__mt9p031_get_pad_crop.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9p031_get_pad_crop.exit

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
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !136

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i, i32 1
  br label %__mt9p031_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %crop.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 2
  br label %__mt9p031_get_pad_crop.exit

__mt9p031_get_pad_crop.exit:                      ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %entry.__mt9p031_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %entry.__mt9p031_get_pad_crop.exit_crit_edge ]
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %9 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format2, align 4
  %width4 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width4, align 4
  %height19 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %height19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height19, align 4
  %height22 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height22, align 4
  %17 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %format, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %18, label %__mt9p031_get_pad_crop.exit.__mt9p031_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i103
    i32 1, label %sw.bb1.i106
  ]

__mt9p031_get_pad_crop.exit.__mt9p031_get_pad_format.exit_crit_edge: ; preds = %__mt9p031_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9p031_get_pad_format.exit

sw.bb.i103:                                       ; preds = %__mt9p031_get_pad_crop.exit
  %20 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pad, align 4
  %num_pads.i.i100 = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %22 = ptrtoint ptr %num_pads.i.i100 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_pads.i.i100, align 4
  %conv.i.i101 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv.i.i101)
  %cmp.not.i.i102 = icmp ult i32 %21, %conv.i.i101
  br i1 %cmp.not.i.i102, label %sw.bb.i103.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i104, !prof !136

sw.bb.i103.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i104:                                    ; preds = %sw.bb.i103
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i104, %sw.bb.i103.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i105 = phi i32 [ 0, %do.end.i.i104 ], [ %21, %sw.bb.i103.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %24 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %25, i32 %spec.select.i.i105
  br label %__mt9p031_get_pad_format.exit

sw.bb1.i106:                                      ; preds = %__mt9p031_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  %format.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 3
  br label %__mt9p031_get_pad_format.exit

__mt9p031_get_pad_format.exit:                    ; preds = %sw.bb1.i106, %v4l2_subdev_get_try_format.exit.i, %__mt9p031_get_pad_crop.exit.__mt9p031_get_pad_format.exit_crit_edge
  %retval.0.i107 = phi ptr [ %format.i, %sw.bb1.i106 ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %__mt9p031_get_pad_crop.exit.__mt9p031_get_pad_format.exit_crit_edge ]
  %add20 = add i32 %14, 1
  %and21 = and i32 %add20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %16)
  %cmp25 = icmp ugt i32 %16, 23
  %div2397 = lshr i32 %16, 3
  %cond29 = select i1 %cmp25, i32 %div2397, i32 2
  %26 = tail call i32 @llvm.umax.i32(i32 %and21, i32 %cond29)
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %16)
  %div5299 = lshr i32 %27, 1
  %add53 = add i32 %div5299, %16
  %div54 = udiv i32 %add53, %27
  %add = add i32 %10, 1
  %and = and i32 %add, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %12)
  %cmp = icmp ugt i32 %12, 20
  %div = udiv i32 %12, 7
  %cond = select i1 %cmp, i32 %div, i32 2
  %28 = tail call i32 @llvm.umax.i32(i32 %and, i32 %cond)
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 %12)
  %div4598 = lshr i32 %29, 1
  %add46 = add i32 %div4598, %12
  %div47 = udiv i32 %add46, %29
  %30 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width4, align 4
  %div59 = udiv i32 %31, %div47
  %32 = ptrtoint ptr %retval.0.i107 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div59, ptr %retval.0.i107, align 4
  %33 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height22, align 4
  %div62 = udiv i32 %34, %div54
  %height63 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i107, i32 0, i32 1
  %35 = ptrtoint ptr %height63 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div62, ptr %height63, align 4
  %36 = call ptr @memcpy(ptr %format2, ptr %retval.0.i107, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9p031_get_selection(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %3, label %if.end.__mt9p031_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.__mt9p031_get_pad_crop.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9p031_get_pad_crop.exit

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
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !136

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %6, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %10, i32 %spec.select.i.i, i32 1
  br label %__mt9p031_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %crop.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 2
  br label %__mt9p031_get_pad_crop.exit

__mt9p031_get_pad_crop.exit:                      ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %if.end.__mt9p031_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %if.end.__mt9p031_get_pad_crop.exit_crit_edge ]
  %11 = call ptr @memcpy(ptr %r, ptr %retval.0.i, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %__mt9p031_get_pad_crop.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__mt9p031_get_pad_crop.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9p031_set_selection(ptr nocapture noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
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
  %add = add i32 %3, 1
  %and = and i32 %add, -2
  %4 = tail call i32 @llvm.smax.i32(i32 %and, i32 0)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 2750)
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %top, align 4
  %add10 = add i32 %7, 1
  %and11 = and i32 %add10, -2
  %8 = tail call i32 @llvm.smax.i32(i32 %and11, i32 0)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 2004)
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  %add26 = add i32 %11, 1
  %and27 = and i32 %add26, -2
  %12 = tail call i32 @llvm.umax.i32(i32 %and27, i32 2)
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %add42 = add i32 %14, 1
  %and43 = and i32 %add42, -2
  %15 = tail call i32 @llvm.umax.i32(i32 %and43, i32 2)
  %sub = sub nuw nsw i32 2752, %5
  %16 = tail call i32 @llvm.umin.i32(i32 %12, i32 %sub)
  %sub68 = sub nuw nsw i32 2004, %9
  %17 = tail call i32 @llvm.umin.i32(i32 %15, i32 %sub68)
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %18 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sel, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %19, label %if.end.__mt9p031_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.__mt9p031_get_pad_crop.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9p031_get_pad_crop.exit

sw.bb.i:                                          ; preds = %if.end
  %21 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %23 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %22, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !136

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %22, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %25 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %26, i32 %spec.select.i.i, i32 1
  br label %__mt9p031_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %crop.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 2
  br label %__mt9p031_get_pad_crop.exit

__mt9p031_get_pad_crop.exit:                      ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %if.end.__mt9p031_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %if.end.__mt9p031_get_pad_crop.exit_crit_edge ]
  %width78 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %27 = ptrtoint ptr %width78 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %28)
  %cmp79.not = icmp eq i32 %16, %28
  br i1 %cmp79.not, label %lor.lhs.false, label %__mt9p031_get_pad_crop.exit.if.then83_crit_edge

__mt9p031_get_pad_crop.exit.if.then83_crit_edge:  ; preds = %__mt9p031_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

lor.lhs.false:                                    ; preds = %__mt9p031_get_pad_crop.exit
  %height81 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %29 = ptrtoint ptr %height81 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %30)
  %cmp82.not = icmp eq i32 %17, %30
  br i1 %cmp82.not, label %lor.lhs.false.if.end91_crit_edge, label %lor.lhs.false.if.then83_crit_edge

lor.lhs.false.if.then83_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

lor.lhs.false.if.end91_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then83:                                        ; preds = %lor.lhs.false.if.then83_crit_edge, %__mt9p031_get_pad_crop.exit.if.then83_crit_edge
  %31 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sel, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %32, label %if.then83.__mt9p031_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i141
    i32 1, label %sw.bb1.i144
  ]

if.then83.__mt9p031_get_pad_format.exit_crit_edge: ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9p031_get_pad_format.exit

sw.bb.i141:                                       ; preds = %if.then83
  %34 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pad, align 4
  %num_pads.i.i138 = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %36 = ptrtoint ptr %num_pads.i.i138 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_pads.i.i138, align 4
  %conv.i.i139 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv.i.i139)
  %cmp.not.i.i140 = icmp ult i32 %35, %conv.i.i139
  br i1 %cmp.not.i.i140, label %sw.bb.i141.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i142, !prof !136

sw.bb.i141.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i142:                                    ; preds = %sw.bb.i141
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i142, %sw.bb.i141.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i143 = phi i32 [ 0, %do.end.i.i142 ], [ %35, %sw.bb.i141.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %38 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %39, i32 %spec.select.i.i143
  br label %__mt9p031_get_pad_format.exit

sw.bb1.i144:                                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  %format.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 3
  br label %__mt9p031_get_pad_format.exit

__mt9p031_get_pad_format.exit:                    ; preds = %sw.bb1.i144, %v4l2_subdev_get_try_format.exit.i, %if.then83.__mt9p031_get_pad_format.exit_crit_edge
  %retval.0.i145 = phi ptr [ %format.i, %sw.bb1.i144 ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %if.then83.__mt9p031_get_pad_format.exit_crit_edge ]
  %40 = ptrtoint ptr %retval.0.i145 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %16, ptr %retval.0.i145, align 4
  %height90 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i145, i32 0, i32 1
  %41 = ptrtoint ptr %height90 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %17, ptr %height90, align 4
  br label %if.end91

if.end91:                                         ; preds = %__mt9p031_get_pad_format.exit, %lor.lhs.false.if.end91_crit_edge
  %42 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %5, ptr %retval.0.i, align 4
  %rect.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %retval.0.i, i32 4
  %43 = ptrtoint ptr %rect.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %9, ptr %rect.sroa.7.0..sroa_idx, align 4
  %44 = ptrtoint ptr %width78 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %16, ptr %width78, align 4
  %rect.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %retval.0.i, i32 12
  %45 = ptrtoint ptr %rect.sroa.16.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %17, ptr %rect.sroa.16.0..sroa_idx, align 4
  %46 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %5, ptr %r, align 4
  %47 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %9, ptr %top, align 4
  %48 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %16, ptr %width, align 4
  %49 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %17, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end91 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9p031_registered(ptr noundef %subdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %call2 = tail call fastcc i32 @mt9p031_power_on(ptr noundef %subdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #7
  %conv1.i.i = zext i16 %2 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %conv1.i.i
  %reset.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 13
  %3 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reset.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.mt9p031_power_off.exit_crit_edge, label %if.then.i

if.end.mt9p031_power_off.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9p031_power_off.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %4, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %mt9p031_power_off.exit

mt9p031_power_off.exit:                           ; preds = %if.then.i, %if.end.mt9p031_power_off.exit_crit_edge
  %regulators.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 8
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %regulators.i) #7
  %clk.i = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 7
  %5 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %6) #7
  tail call void @clk_unprepare(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6145, i32 %cond.i.i)
  %cmp4.not = icmp eq i32 %cond.i.i, 6145
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br i1 %cmp4.not, label %do.end13, label %do.end8

do.end8:                                          ; preds = %mt9p031_power_off.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.44, i32 noundef %cond.i.i) #10
  br label %cleanup

do.end13:                                         ; preds = %mt9p031_power_off.exit
  call void @__sanitizer_cov_trace_pc() #9
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.47, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end8, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %do.end8 ], [ 0, %do.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9p031_open(ptr noundef %subdev, ptr nocapture noundef readonly %fh) #2 align 64 {
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_crop.exit_crit_edge, !prof !134

entry.v4l2_subdev_get_try_crop.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i, %entry.v4l2_subdev_get_try_crop.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %try_crop.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %try_crop.i, align 4
  %top = getelementptr %struct.v4l2_subdev_pad_config, ptr %5, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 54, ptr %top, align 4
  %width = getelementptr %struct.v4l2_subdev_pad_config, ptr %5, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2592, ptr %width, align 4
  %height = getelementptr %struct.v4l2_subdev_pad_config, ptr %5, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1944, ptr %height, align 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %12 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not.i22.not = icmp eq i16 %13, 0
  br i1 %cmp.not.i22.not, label %do.end.i23, label %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit_crit_edge, !prof !134

v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i23:                                       ; preds = %v4l2_subdev_get_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i23, %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit_crit_edge
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %model = getelementptr inbounds %struct.mt9p031, ptr %subdev, i32 0, i32 9
  %16 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp eq i32 %17, 1
  %spec.select = select i1 %cmp, i32 8211, i32 12305
  %18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select, ptr %18, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2592, ptr %15, align 4
  %height6 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %15, i32 0, i32 1
  %21 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1944, ptr %height6, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %15, i32 0, i32 3
  %22 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %15, i32 0, i32 4
  %23 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %colorspace, align 4
  %call7 = tail call i32 @mt9p031_set_power(ptr noundef %subdev, i32 noundef 1)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9p031_close(ptr noundef %subdev, ptr nocapture noundef readnone %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt9p031_set_power(ptr noundef %subdev, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aptina_pll_calculate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

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

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_mt9p031__330_1242_mt9p031_i2c_driver_init6, !1, !"__initcall__kmod_mt9p031__330_1242_mt9p031_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/mt9p031.c", i32 1242, i32 1}
!2 = !{ptr @__exitcall_mt9p031_i2c_driver_exit, !1, !"__exitcall_mt9p031_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description331, !4, !"__UNIQUE_ID_description331", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/mt9p031.c", i32 1244, i32 1}
!5 = !{ptr @__UNIQUE_ID_author332, !6, !"__UNIQUE_ID_author332", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/mt9p031.c", i32 1245, i32 1}
!7 = !{ptr @__UNIQUE_ID_file333, !8, !"__UNIQUE_ID_file333", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/mt9p031.c", i32 1246, i32 1}
!9 = !{ptr @__UNIQUE_ID_license334, !8, !"__UNIQUE_ID_license334", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/mt9p031.c", i32 1235, i32 11}
!12 = !{ptr @mt9p031_i2c_driver, !13, !"mt9p031_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/mt9p031.c", i32 1232, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/mt9p031.c", i32 1090, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt9p031_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mt9p031_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/mt9p031.c", i32 1095, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mt9p031_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mt9p031_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/mt9p031.c", i32 1109, i32 34}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/mt9p031.c", i32 1110, i32 34}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/mt9p031.c", i32 1111, i32 34}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/mt9p031.c", i32 1115, i32 3}
!35 = !{ptr @mt9p031_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mt9p031_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @mt9p031_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/mt9p031.c", i32 1119, i32 2}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mt9p031_probe._key, !41, !"_key", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/mt9p031.c", i32 1121, i32 2}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/mt9p031.c", i32 1148, i32 3}
!45 = !{ptr @mt9p031_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mt9p031_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/mt9p031.c", i32 1184, i32 57}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/mt9p031.c", i32 1069, i32 27}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/mt9p031.c", i32 1070, i32 27}
!53 = !{ptr @mt9p031_ctrl_ops, !54, !"mt9p031_ctrl_ops", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/mt9p031.c", i32 858, i32 35}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/mt9p031.c", i32 863, i32 2}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/mt9p031.c", i32 864, i32 2}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/mt9p031.c", i32 865, i32 2}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/mt9p031.c", i32 866, i32 2}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/mt9p031.c", i32 867, i32 2}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/mt9p031.c", i32 868, i32 2}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/mt9p031.c", i32 869, i32 2}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/mt9p031.c", i32 870, i32 2}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/mt9p031.c", i32 871, i32 2}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/mt9p031.c", i32 872, i32 2}
!75 = !{ptr @mt9p031_test_pattern_menu, !76, !"mt9p031_test_pattern_menu", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/mt9p031.c", i32 862, i32 27}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/mt9p031.c", i32 880, i32 12}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/mt9p031.c", i32 890, i32 12}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/mt9p031.c", i32 900, i32 12}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/mt9p031.c", i32 910, i32 12}
!85 = !{ptr @mt9p031_ctrls, !86, !"mt9p031_ctrls", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/mt9p031.c", i32 875, i32 38}
!87 = !{ptr @mt9p031_subdev_ops, !88, !"mt9p031_subdev_ops", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/mt9p031.c", i32 1030, i32 37}
!89 = !{ptr @mt9p031_subdev_core_ops, !90, !"mt9p031_subdev_core_ops", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/mt9p031.c", i32 1013, i32 42}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/mt9p031.c", i32 372, i32 3}
!93 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @__mt9p031_set_power._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @__mt9p031_set_power._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @mt9p031_subdev_video_ops, !97, !"mt9p031_subdev_video_ops", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/mt9p031.c", i32 1017, i32 43}
!98 = !{ptr @mt9p031_subdev_pad_ops, !99, !"mt9p031_subdev_pad_ops", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/mt9p031.c", i32 1021, i32 41}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!102 = !{ptr @mt9p031_subdev_internal_ops, !103, !"mt9p031_subdev_internal_ops", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/mt9p031.c", i32 1036, i32 46}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/mt9p031.c", i32 961, i32 3}
!106 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @mt9p031_registered._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @mt9p031_registered._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/mt9p031.c", i32 970, i32 3}
!111 = !{ptr @mt9p031_registered._entry.43, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @mt9p031_registered._entry_ptr.45, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/mt9p031.c", i32 975, i32 2}
!115 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @mt9p031_registered._entry.46, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @mt9p031_registered._entry_ptr.49, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @mt9p031_clk_setup.limits, !119, !"limits", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/mt9p031.c", i32 215, i32 40}
!120 = !{ptr @mt9p031_of_match, !121, !"mt9p031_of_match", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/mt9p031.c", i32 1224, i32 34}
!122 = !{ptr @mt9p031_id, !123, !"mt9p031_id", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/mt9p031.c", i32 1216, i32 35}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i32 0, i32 33}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{i8 0, i8 2}
!136 = !{!"branch_weights", i32 2000, i32 1}
